uint64_t sub_1C8CF2CEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_365();
    OUTLINED_FUNCTION_305();
    sub_1C906478C();

    OUTLINED_FUNCTION_30_0();
    v3 = OUTLINED_FUNCTION_134();
    MEMORY[0x1CCA7F9E0](v3);
    sub_1C9064BDC();
    OUTLINED_FUNCTION_414();

    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_412();
    OUTLINED_FUNCTION_345();

    OUTLINED_FUNCTION_340();
  }

  return OUTLINED_FUNCTION_134();
}

uint64_t sub_1C8CF2DB0()
{
  v0 = type metadata accessor for DisplayRepresentation.Image(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v11 - v4);
  sub_1C8CC1D3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C8D04DE8();
    v6 = DisplayRepresentation.Image.debugDescription.getter();
    sub_1C8D02958();
  }

  else
  {
    v7 = *v5;
    v8 = v5[1];
    v14 = 0x28797A616CLL;
    v15 = 0xE500000000000000;
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1C906478C();

    v12 = 0x28656761726F7453;
    v13 = 0xE800000000000000;
    v11[1] = MEMORY[0x1CCA7F9E0](v7, v8);
    v9 = sub_1C9064BDC();
    MEMORY[0x1CCA81A90](v9);

    MEMORY[0x1CCA81A90](0x29736574796220, 0xE700000000000000);
    MEMORY[0x1CCA81A90](v12, v13);

    MEMORY[0x1CCA81A90](41, 0xE100000000000000);
    sub_1C8CE7B78(v7, v8);
    return v14;
  }

  return v6;
}

uint64_t DisplayRepresentation.DisplayValue.debugDescription.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_16_3();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  v10 = OUTLINED_FUNCTION_11(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_322();
  v16(v15);
  OUTLINED_FUNCTION_119();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v5 + 32);
    v18 = OUTLINED_FUNCTION_249();
    v19(v18);
    v20 = *(*(a1 + 24) + 8);
    sub_1C9064C3C();
    v21 = *(v5 + 8);
    v22 = OUTLINED_FUNCTION_134();
    v23(v22);
  }

  else
  {
    v24 = *v1;
    v25 = v1[1];
    OUTLINED_FUNCTION_365();
    sub_1C906478C();

    OUTLINED_FUNCTION_30_0();
    v34 = v26;
    v35 = v27;
    v28 = OUTLINED_FUNCTION_145();
    MEMORY[0x1CCA7F9E0](v28);
    v29 = sub_1C9064BDC();
    MEMORY[0x1CCA81A90](v29);

    v30 = OUTLINED_FUNCTION_61_1();
    MEMORY[0x1CCA81A90](v30, 0xE700000000000000);
    MEMORY[0x1CCA81A90](v34, v35);

    OUTLINED_FUNCTION_340();
    v31 = OUTLINED_FUNCTION_145();
    sub_1C8CE7B78(v31, v32);
  }

  return OUTLINED_FUNCTION_181();
}

uint64_t DisplayRepresentation.DisplayValueEnum.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  v2 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v2);
  return sub_1C9064DBC();
}

uint64_t DisplayRepresentation.Storage.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_305();
  sub_1C906478C();

  OUTLINED_FUNCTION_30_0();
  v6 = v3;
  v4 = OUTLINED_FUNCTION_145();
  MEMORY[0x1CCA7F9E0](v4);
  sub_1C9064BDC();
  OUTLINED_FUNCTION_414();

  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_412();
  return v6;
}

uint64_t sub_1C8CF32F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_223();
  if ((v11 & 1) == 0)
  {
    v27 = OUTLINED_FUNCTION_95_0();
    sub_1C8CE9D94(v27, v28, 0);
    v29 = OUTLINED_FUNCTION_100();
    if ((a6 & 1) == 0)
    {
      sub_1C8CE9D94(v29, v30, 0);
      v43 = OUTLINED_FUNCTION_95_0();
      sub_1C8CE9D94(v43, v44, 0);
      OUTLINED_FUNCTION_85();
      v45 = MEMORY[0x1CCA7F9A0]();
      v46 = OUTLINED_FUNCTION_100();
      sub_1C8CF6A10(v46, v47, 0);
      v48 = OUTLINED_FUNCTION_95_0();
      sub_1C8CF6A10(v48, v49, 0);
      v50 = OUTLINED_FUNCTION_95_0();
      sub_1C8CF6A10(v50, v51, 0);
      return v45 & 1;
    }

    sub_1C8CE9D94(v29, v30, 1);
    goto LABEL_12;
  }

  if ((a6 & 1) == 0)
  {
    v31 = OUTLINED_FUNCTION_56_1();
    sub_1C8CE9D94(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_100();
    sub_1C8CE9D94(v34, v35, 0);
    v36 = OUTLINED_FUNCTION_56_1();
    sub_1C8CE9D94(v36, v37, v38);

LABEL_12:
    v39 = OUTLINED_FUNCTION_95_0();
    sub_1C8CF6A10(v39, v40, v41);
    v24 = OUTLINED_FUNCTION_100();
    goto LABEL_13;
  }

  if (v7 == a4 && v6 == a5)
  {
    sub_1C8CE9D94(v7, v6, 1);
    v53 = OUTLINED_FUNCTION_56_1();
    sub_1C8CE9D94(v53, v54, v55);
    v56 = OUTLINED_FUNCTION_56_1();
    sub_1C8CE9D94(v56, v57, v58);
    v59 = OUTLINED_FUNCTION_56_1();
    sub_1C8CF6A10(v59, v60, v61);
    goto LABEL_16;
  }

  v13 = sub_1C9064C2C();
  v14 = OUTLINED_FUNCTION_56_1();
  sub_1C8CE9D94(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_100();
  sub_1C8CE9D94(v17, v18, 1);
  v19 = OUTLINED_FUNCTION_56_1();
  sub_1C8CE9D94(v19, v20, v21);
  v22 = OUTLINED_FUNCTION_100();
  sub_1C8CF6A10(v22, v23, 1);
  if (v13)
  {
LABEL_16:

    v42 = 1;
    v62 = OUTLINED_FUNCTION_56_1();
    sub_1C8CF6A10(v62, v63, v64);
    return v42;
  }

  v24 = OUTLINED_FUNCTION_56_1();
LABEL_13:
  sub_1C8CF6A10(v24, v25, v26);
  return 0;
}

uint64_t sub_1C8CF3488()
{
  v0 = type metadata accessor for DisplayRepresentation.Image(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v20 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312BF8, &qword_1C9068F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v12 = (&v20 + *(v11 + 56) - v9);
  sub_1C8CC1D3C();
  sub_1C8CC1D3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C8CC1D3C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D04DE8();
      static DisplayRepresentation.Image.== infix(_:_:)();
      v14 = v13;
      sub_1C8D02958();
      sub_1C8D02958();
LABEL_9:
      sub_1C8CBE41C(v10, &qword_1EC312530);
      return v14 & 1;
    }

    sub_1C8D02958();
  }

  else
  {
    sub_1C8CC1D3C();
    v15 = *v6;
    v16 = v6[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v17 = *v12;
      v18 = v12[1];
      v14 = MEMORY[0x1CCA7F9A0](v15, v16, v17, v18);
      sub_1C8CE7B78(v17, v18);
      sub_1C8CE7B78(v15, v16);
      goto LABEL_9;
    }

    sub_1C8CE7B78(v15, v16);
  }

  sub_1C8CBE41C(v10, &qword_1EC312BF8);
  v14 = 0;
  return v14 & 1;
}

void static DisplayRepresentation.DisplayValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v56 = v4;
  v57 = v5;
  OUTLINED_FUNCTION_16_3();
  v55 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_0();
  v52 = v11;
  v53 = v10;
  OUTLINED_FUNCTION_111();
  v12 = type metadata accessor for DisplayRepresentation.DisplayValue();
  v13 = OUTLINED_FUNCTION_11(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_229();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_11(TupleTypeMetadata2);
  v54 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_201();
  v28 = (v0 + *(v27 + 48));
  v29 = *(v15 + 16);
  v29(v0, v56, v12);
  v29(v28, v57, v12);
  OUTLINED_FUNCTION_134();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = OUTLINED_FUNCTION_100();
    (v29)(v36);
    v37 = *v1;
    v38 = v1[1];
    OUTLINED_FUNCTION_155_1();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v43 = *v28;
      v44 = v28[1];
      OUTLINED_FUNCTION_250();
      MEMORY[0x1CCA7F9A0]();
      v45 = OUTLINED_FUNCTION_127();
      sub_1C8CE7B78(v45, v46);
      v47 = OUTLINED_FUNCTION_276();
      sub_1C8CE7B78(v47, v48);
      goto LABEL_9;
    }

    v39 = OUTLINED_FUNCTION_276();
    sub_1C8CE7B78(v39, v40);
    goto LABEL_7;
  }

  v30 = OUTLINED_FUNCTION_398();
  (v29)(v30);
  OUTLINED_FUNCTION_155_1();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v41 = OUTLINED_FUNCTION_241();
    v42(v41, v3);
LABEL_7:
    v15 = v54;
    goto LABEL_9;
  }

  v31 = *(v55 + 32);
  v32 = OUTLINED_FUNCTION_107();
  v33(v32);
  v34 = *(*(v53 + 32) + 8);
  OUTLINED_FUNCTION_300();
  sub_1C9063EAC();
  v35 = *(v55 + 8);
  v35(v52, v3);
  v35(v20, v3);
LABEL_9:
  v49 = *(v15 + 8);
  v50 = OUTLINED_FUNCTION_134();
  v51(v50);
  OUTLINED_FUNCTION_163();
}

void static DisplayRepresentation.Storage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  JUMPOUT(0x1CCA7F9A0);
}

uint64_t sub_1C8CF3A90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2038063468 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974617473 && a2 == 0xE600000000000000)
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

uint64_t sub_1C8CF3B5C(char a1)
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a1 & 1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF3BA4(char a1)
{
  if (a1)
  {
    return 0x636974617473;
  }

  else
  {
    return 2038063468;
  }
}

uint64_t sub_1C8CF3BD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_420();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8CF3C30()
{
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](0);
  return sub_1C9064DBC();
}

BOOL sub_1C8CF3C6C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1C8CE5318(*a1, *a2);
}

uint64_t sub_1C8CF3C80(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1C8CF3B5C(*v1);
}

uint64_t sub_1C8CF3C90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1C8CA7B20(a1, *v2);
}

uint64_t sub_1C8CF3CA0(uint64_t a1, uint64_t a2)
{
  sub_1C9064D7C();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1C8CA7B20(v7, *v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF3CE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1C8CF3BA4(*v1);
}

uint64_t sub_1C8CF3CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1C8CF3A90(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1C8CF3D28(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1C8CE568C();
}

uint64_t sub_1C8CF3D50@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_1C8CF3B54();
  *a2 = result;
  return result;
}

uint64_t sub_1C8CF3D80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8CF3DD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C8CF3E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return OUTLINED_FUNCTION_2_3();
}

uint64_t sub_1C8CF3E48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1C8CA49E0();
}

uint64_t sub_1C8CF3E6C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = OUTLINED_FUNCTION_2_3();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C8CF3EA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8CF3EF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C8CF3F48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void))
{
  sub_1C9064D7C();
  a4(v7, *(a2 + 16), *(a2 + 24));
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF3FBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8CF4010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void DisplayRepresentation.DisplayValue.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v63 = v0;
  v2 = v1;
  v4 = v3;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_160();
  type metadata accessor for DisplayRepresentation.DisplayValue.StaticCodingKeys();
  OUTLINED_FUNCTION_185();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  v7 = sub_1C9064BBC();
  v8 = OUTLINED_FUNCTION_11(v7);
  v60 = v9;
  v61 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v58 = v13;
  OUTLINED_FUNCTION_16_3();
  v59 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_160();
  type metadata accessor for DisplayRepresentation.DisplayValue.LazyCodingKeys();
  OUTLINED_FUNCTION_184();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  v18 = sub_1C9064BBC();
  OUTLINED_FUNCTION_11(v18);
  v57 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_16_3();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v30 = (v29 - v28);
  v62 = v6;
  OUTLINED_FUNCTION_160();
  type metadata accessor for DisplayRepresentation.DisplayValue.CodingKeys();
  OUTLINED_FUNCTION_182_0();
  swift_getWitnessTable();
  v31 = sub_1C9064BBC();
  v64 = OUTLINED_FUNCTION_11(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_73();
  v35 = *(v4 + 24);
  v36 = *(v4 + 32);
  v37 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_217(v37, v38);
  sub_1C9064E1C();
  (*(v24 + 16))(v30, v63, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *(v59 + 32);
    v40 = OUTLINED_FUNCTION_124_0();
    v41(v40);
    OUTLINED_FUNCTION_385();
    sub_1C9064ACC();
    v42 = *(v62 + 24);
    sub_1C9064B8C();
    (*(v60 + 8))(v58, v61);
    v43 = *(v59 + 8);
    v44 = OUTLINED_FUNCTION_130_1();
    v45(v44);
    v46 = OUTLINED_FUNCTION_241();
    v47(v46, v64);
  }

  else
  {
    v48 = *v30;
    v49 = v30[1];
    sub_1C9064ACC();
    sub_1C8D02804();
    sub_1C9064B8C();
    v50 = *(v57 + 8);
    v51 = OUTLINED_FUNCTION_114();
    v52(v51);
    v53 = OUTLINED_FUNCTION_241();
    v54(v53, v64);
    v55 = OUTLINED_FUNCTION_288();
    sub_1C8CE7B78(v55, v56);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF44A4()
{
  v0 = type metadata accessor for DisplayRepresentation.Image(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - v4);
  sub_1C8CC1D3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C8D04DE8();
    MEMORY[0x1CCA82810](1);
    DisplayRepresentation.Image.hash(into:)();
    return sub_1C8D02958();
  }

  else
  {
    v7 = *v5;
    v8 = v5[1];
    MEMORY[0x1CCA82810](0);
    sub_1C9061F4C();
    return sub_1C8CE7B78(v7, v8);
  }
}

uint64_t DisplayRepresentation.DisplayValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_84_0(a1, a2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v14, v3, v10);
  OUTLINED_FUNCTION_212();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_388();
    v15 = OUTLINED_FUNCTION_288();
    v16(v15);
    MEMORY[0x1CCA82810](1);
    v17 = *(*(v3 + 24) + 32);
    sub_1C9063E7C();
    v18 = *(v4 + 8);
    v19 = OUTLINED_FUNCTION_93();
    return v20(v19);
  }

  else
  {
    v22 = *v12;
    v23 = v12[1];
    MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_95_0();
    sub_1C9061F4C();
    v24 = OUTLINED_FUNCTION_145();
    return sub_1C8CE7B78(v24, v25);
  }
}

uint64_t DisplayRepresentation.DisplayValue.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_298();
  DisplayRepresentation.DisplayValue.hash(into:)(v3, a1);
  return sub_1C9064DBC();
}

void DisplayRepresentation.DisplayValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v117 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v112 = v30;
  v31 = type metadata accessor for DisplayRepresentation.DisplayValue.StaticCodingKeys();
  OUTLINED_FUNCTION_185();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  v108 = v32;
  v109 = v31;
  v103 = sub_1C9064ABC();
  OUTLINED_FUNCTION_11(v103);
  v102 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v110 = v37;
  OUTLINED_FUNCTION_364();
  v38 = type metadata accessor for DisplayRepresentation.DisplayValue.LazyCodingKeys();
  OUTLINED_FUNCTION_184();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  v106 = v38;
  v105 = v39;
  v101 = sub_1C9064ABC();
  OUTLINED_FUNCTION_11(v101);
  v100 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  v107 = v44;
  OUTLINED_FUNCTION_364();
  type metadata accessor for DisplayRepresentation.DisplayValue.CodingKeys();
  OUTLINED_FUNCTION_182_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_116();
  v45 = sub_1C9064ABC();
  v46 = OUTLINED_FUNCTION_11(v45);
  v113 = v47;
  v114 = v46;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_233();
  v115 = v27;
  v104 = v25;
  v51 = type metadata accessor for DisplayRepresentation.DisplayValue();
  v52 = OUTLINED_FUNCTION_11(v51);
  v111 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_25();
  v58 = v56 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v96 - v60;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_229();
  v63 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v116 = v21;
  OUTLINED_FUNCTION_116();
  v64 = v117;
  sub_1C9064DEC();
  if (!v64)
  {
    v99 = v58;
    v97 = v61;
    v98 = v25;
    v65 = v114;
    v66 = v113;
    v117 = 0;
    v67 = v116;
    *&v118 = sub_1C9064A9C();
    sub_1C906423C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_116();
    *&v120 = sub_1C90646AC();
    *(&v120 + 1) = v68;
    *&v121 = v69;
    *(&v121 + 1) = v70;
    sub_1C906469C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_227();
    sub_1C90643CC();
    v71 = v118;
    if (v118 == 2 || (v96 = v120, v118 = v120, v119 = v121, OUTLINED_FUNCTION_227(), (sub_1C90643DC() & 1) == 0))
    {
      v76 = sub_1C90647DC();
      swift_allocError();
      v78 = v77;
      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
      *v78 = v51;
      sub_1C906499C();
      OUTLINED_FUNCTION_411();
      v80 = *MEMORY[0x1E69E6AF8];
      OUTLINED_FUNCTION_10_0(v76);
      (*(v81 + 104))(v78);
      swift_willThrow();
      v82 = *(v66 + 8);
      v83 = OUTLINED_FUNCTION_208_0();
      v84(v83);
LABEL_13:
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    if (v71)
    {
      LOBYTE(v118) = 1;
      v72 = v110;
      v73 = v117;
      sub_1C906498C();
      v74 = v67;
      v75 = v112;
      if (v73)
      {
        (*(v66 + 8))(v74, v65);
LABEL_12:
        OUTLINED_FUNCTION_315();
        goto LABEL_13;
      }

      v88 = *(v104 + 16);
      sub_1C9064A6C();
      OUTLINED_FUNCTION_296(&a15);
      v92 = OUTLINED_FUNCTION_117();
      v93(v92);
      (*(v66 + 8))(v116, v65);
      OUTLINED_FUNCTION_315();
      swift_unknownObjectRelease();
      v94 = v99;
      OUTLINED_FUNCTION_245();
      swift_storeEnumTagMultiPayload();
      v95 = OUTLINED_FUNCTION_294(v111);
      v72(v95, v94, v51);
    }

    else
    {
      LOBYTE(v118) = 0;
      v85 = v107;
      v86 = v117;
      sub_1C906498C();
      v72 = v111;
      if (v86)
      {
        (*(v66 + 8))(v67, v65);
        goto LABEL_12;
      }

      sub_1C8D02858();
      v87 = v101;
      sub_1C9064A6C();
      OUTLINED_FUNCTION_296(&a13);
      v89(v85, v87);
      (*(v66 + 8))(v67, v65);
      OUTLINED_FUNCTION_315();
      swift_unknownObjectRelease();
      v90 = v97;
      *v97 = v118;
      swift_storeEnumTagMultiPayload();
      v91 = OUTLINED_FUNCTION_294(v72);
      v72(v91, v90, v51);
      v75 = v112;
    }

    v72(v75, v65, v51);
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_198();
}

void sub_1C8CF4F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  static DisplayRepresentation.DisplayValue.== infix(_:_:)();
}

uint64_t sub_1C8CF4F28(uint64_t a1, uint64_t a2)
{
  sub_1C9064D7C();
  DisplayRepresentation.DisplayValue.hash(into:)(v4, a2);
  return sub_1C9064DBC();
}

uint64_t DisplayRepresentation.Symbol.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

double DisplayRepresentation.Symbol.init(image:)@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 representationType] == 4 && (v4 = sub_1C8D021F8(a1), v5))
  {
    v6 = v4;
    v7 = v5;
    v8 = [a1 tintColor];
    v9 = [a1 symbolConfiguration];

    *a2 = v6;
    a2[1] = v7;
    a2[2] = v8;
    a2[3] = v9;
  }

  else
  {

    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

uint64_t DisplayRepresentation.Symbol.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_305();
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0x6E286C6F626D7953, 0xED0000203A656D61);
  v5 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v5);
  MEMORY[0x1CCA81A90](0x6F43746E6974202CLL, 0xED0000203A726F6CLL);
  if (v3)
  {
    v6 = [v3 hexValue];
    sub_1C9063EEC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312580, &qword_1C9073EA0);
  OUTLINED_FUNCTION_408();

  MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90C9610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312588, &qword_1C90669B0);
  OUTLINED_FUNCTION_408();
  OUTLINED_FUNCTION_340();
  return v8;
}

uint64_t static DisplayRepresentation.Symbol.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v4)
    {
      return 0;
    }

    sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
    v7 = v2;
    v8 = v4;
    OUTLINED_FUNCTION_145();
    v9 = sub_1C90645BC();

    if ((v9 & 1) == 0)
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
    if (v5)
    {
      sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
      v10 = v3;
      v11 = v5;
      OUTLINED_FUNCTION_145();
      v12 = sub_1C90645BC();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1C8CF52D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6C6F43746E6974 && a2 == 0xE900000000000072;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
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

uint64_t sub_1C8CF5400(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6F6C6F43746E6974;
  }

  return 0x72756769666E6F63;
}

uint64_t sub_1C8CF5468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF52D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF5490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8CF53F8();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CF54B8(uint64_t a1)
{
  v2 = sub_1C8D028AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF54F4(uint64_t a1)
{
  v2 = sub_1C8D028AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DisplayRepresentation.Symbol.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312590, &qword_1C90669B8);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_72();
  v11 = *v0;
  v10 = v0[1];
  v25 = v0[3];
  v26 = v0[2];
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_217(v14, v15);
  sub_1C8D028AC();
  sub_1C9064E1C();
  sub_1C9064B2C();
  if (!v1)
  {
    v16 = v26;
    v17 = OUTLINED_FUNCTION_136();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_195(&qword_1EDA60CE8);
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();

    v19 = v25;
    v20 = OUTLINED_FUNCTION_136();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_195(&qword_1EDA60D08);
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
  }

  v22 = *(v6 + 8);
  v23 = OUTLINED_FUNCTION_268();
  v24(v23);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.Symbol.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C9063FBC();
  if (v4)
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_390();
    sub_1C90645CC();
    if (v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_284();
      return sub_1C90645CC();
    }
  }

  else
  {
    OUTLINED_FUNCTION_283();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_283();
}

uint64_t DisplayRepresentation.Symbol.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_298();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v4)
  {
    sub_1C90645CC();
  }

  sub_1C9064D9C();
  if (v3)
  {
    sub_1C90645CC();
  }

  return sub_1C9064DBC();
}

void DisplayRepresentation.Symbol.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_196();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3125A8, &qword_1C90669D0);
  OUTLINED_FUNCTION_11(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_233();
  v22 = v13[3];
  v23 = v13[4];
  v24 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_217(v24, v25);
  sub_1C8D028AC();
  sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    LOBYTE(a10) = 0;
    v40 = sub_1C9064A0C();
    v41 = v26;
    v27 = OUTLINED_FUNCTION_226_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_158_0();
    sub_1C8D07450(v29, v30);
    OUTLINED_FUNCTION_151();
    sub_1C90649EC();
    v31 = OUTLINED_FUNCTION_136();
    __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
    OUTLINED_FUNCTION_158_0();
    sub_1C8D07450(v33, v34);
    OUTLINED_FUNCTION_151();
    sub_1C90649EC();
    v35 = *(v18 + 8);
    v36 = OUTLINED_FUNCTION_200_0();
    v37(v36);
    *v15 = v40;
    v15[1] = v41;
    v15[2] = a10;
    v15[3] = a10;
    v38 = a10;
    OUTLINED_FUNCTION_256();

    v39 = a10;
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF5AF8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_1C9064D7C();
  DisplayRepresentation.Symbol.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t DisplayRepresentation.Image.debugDescription.getter()
{
  v1 = sub_1C9061EBC();
  v2 = OUTLINED_FUNCTION_11(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  v7 = type metadata accessor for DisplayRepresentation.Image(0);
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_119();
  sub_1C8D02900();
  OUTLINED_FUNCTION_276();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = v0[2];
      v13 = v0[3];
      v31 = *v0;
      v32 = v0[1];
      v14 = DisplayRepresentation.Symbol.debugDescription.getter();
      MEMORY[0x1CCA81A90](v14);

      OUTLINED_FUNCTION_340();
    }

    else
    {
      OUTLINED_FUNCTION_388();
      v22 = OUTLINED_FUNCTION_206();
      v23(v22);
      OUTLINED_FUNCTION_365();
      OUTLINED_FUNCTION_21_3();
      sub_1C8CD23F0(v24, v25);
      v26 = sub_1C9064BDC();
      MEMORY[0x1CCA81A90](v26);

      OUTLINED_FUNCTION_340();
      v27 = *(v4 + 8);
      v28 = OUTLINED_FUNCTION_134();
      v29(v28);
    }
  }

  else
  {
    v15 = *v0;
    v16 = v0[1];
    OUTLINED_FUNCTION_365();
    v17 = OUTLINED_FUNCTION_145();
    MEMORY[0x1CCA7F9E0](v17);
    v18 = sub_1C9064BDC();
    MEMORY[0x1CCA81A90](v18);

    v19 = OUTLINED_FUNCTION_61_1();
    MEMORY[0x1CCA81A90](v19, 0xE700000000000000);
    v20 = OUTLINED_FUNCTION_145();
    sub_1C8CE7B78(v20, v21);
  }

  return OUTLINED_FUNCTION_181();
}

void static DisplayRepresentation.Image.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = sub_1C9061EBC();
  v5 = OUTLINED_FUNCTION_11(v4);
  v45 = v6;
  v46 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  v9 = type metadata accessor for DisplayRepresentation.Image(0);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_228();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3125B0, &qword_1C90669D8);
  OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_142();
  v23 = (v0 + *(v22 + 56));
  sub_1C8D02900();
  OUTLINED_FUNCTION_203();
  sub_1C8D02900();
  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_252();
      sub_1C8D02900();
      v25 = v2[1];
      v26 = v2[2];
      v27 = v2[3];
      OUTLINED_FUNCTION_278();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *v23;
        v29 = v23[1];
        v31 = v23[2];
        v30 = v23[3];
        v48[0] = *v2;
        v48[1] = v25;
        v48[2] = v26;
        v48[3] = v27;
        v47[0] = v28;
        v47[1] = v29;
        v47[2] = v31;
        v47[3] = v30;
        static DisplayRepresentation.Symbol.== infix(_:_:)(v48, v47);

LABEL_13:
        OUTLINED_FUNCTION_54_0();
        sub_1C8D02958();
        goto LABEL_14;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_117();
      sub_1C8D02900();
      OUTLINED_FUNCTION_278();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        (*(v45 + 32))(v1, v23, v46);
        OUTLINED_FUNCTION_212();
        sub_1C9061E1C();
        v36 = *(v45 + 8);
        v36(v1, v46);
        v37 = OUTLINED_FUNCTION_211();
        (v36)(v37);
        goto LABEL_13;
      }

      (*(v45 + 8))(v15, v46);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    sub_1C8D02900();
    v32 = *v3;
    v33 = v3[1];
    OUTLINED_FUNCTION_278();
    if (!swift_getEnumCaseMultiPayload())
    {
      v38 = *v23;
      v39 = v23[1];
      v40 = OUTLINED_FUNCTION_209();
      MEMORY[0x1CCA7F9A0](v40);
      v41 = OUTLINED_FUNCTION_211();
      sub_1C8CE7B78(v41, v42);
      v43 = OUTLINED_FUNCTION_209();
      sub_1C8CE7B78(v43, v44);
      goto LABEL_13;
    }

    v34 = OUTLINED_FUNCTION_209();
    sub_1C8CE7B78(v34, v35);
  }

  sub_1C8CBE41C(v0, &qword_1EC3125B0);
LABEL_14:
  OUTLINED_FUNCTION_163();
}

void DisplayRepresentation.Image.hash(into:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_258();
  v1 = sub_1C9061EBC();
  v2 = OUTLINED_FUNCTION_11(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v7 = type metadata accessor for DisplayRepresentation.Image(0);
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_254();
  sub_1C8D02900();
  OUTLINED_FUNCTION_136();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v0;
      v12 = v0[1];
      v14 = v0[2];
      v15 = v0[3];
      OUTLINED_FUNCTION_341();
      OUTLINED_FUNCTION_227();
      sub_1C9063FBC();
      if (v14)
      {
        OUTLINED_FUNCTION_284();
        sub_1C90645CC();
        if (v15)
        {
LABEL_5:
          OUTLINED_FUNCTION_284();
          sub_1C90645CC();

LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        OUTLINED_FUNCTION_283();
        if (v15)
        {
          goto LABEL_5;
        }
      }

      OUTLINED_FUNCTION_283();
      goto LABEL_10;
    }

    v20 = *(v4 + 32);
    v21 = OUTLINED_FUNCTION_119();
    v22(v21);
    MEMORY[0x1CCA82810](2);
    OUTLINED_FUNCTION_21_3();
    sub_1C8CD23F0(v23, v24);
    OUTLINED_FUNCTION_390();
    sub_1C9063E7C();
    v25 = *(v4 + 8);
    v26 = OUTLINED_FUNCTION_100();
    v27(v26);
  }

  else
  {
    v16 = *v0;
    v17 = v0[1];
    OUTLINED_FUNCTION_359();
    OUTLINED_FUNCTION_145();
    sub_1C9061F4C();
    v18 = OUTLINED_FUNCTION_249();
    sub_1C8CE7B78(v18, v19);
  }

LABEL_11:
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8CF62BC(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_298();
  a1(v3);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF6338(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C9064D7C();
  a4(v6);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF63A4(uint64_t a1)
{
  v2 = sub_1C8D029AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF63E0(uint64_t a1)
{
  v2 = sub_1C8D029AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DisplayRepresentation.AltText.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t sub_1C8CF6508(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_2_3();
  }

  else
  {
    return sub_1C9064C2C();
  }
}

uint64_t sub_1C8CF6534(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_420();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8CF6598(uint64_t a1)
{
  v2 = sub_1C8D02A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF65D4(uint64_t a1)
{
  v2 = sub_1C8D02A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C8CF6644()
{
  OUTLINED_FUNCTION_196();
  v23 = v1;
  v3 = v2;
  v5 = OUTLINED_FUNCTION_387(v2, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_11(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_233();
  v13 = v0[1];
  v22 = *v0;
  v15 = *(v3 + 24);
  v14 = *(v3 + 32);
  v16 = OUTLINED_FUNCTION_125();
  v18 = OUTLINED_FUNCTION_217(v16, v17);
  v23(v18);
  sub_1C9064E1C();
  sub_1C9064B2C();
  v19 = *(v9 + 8);
  v20 = OUTLINED_FUNCTION_114();
  v21(v20);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.AltText.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C9063FBC();
}

void sub_1C8CF67A4()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v26 = v5;
  v7 = OUTLINED_FUNCTION_387(v3, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_11(v9);
  v25 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_73();
  v14 = v4[3];
  v15 = v4[4];
  v16 = OUTLINED_FUNCTION_252();
  v18 = OUTLINED_FUNCTION_217(v16, v17);
  v2(v18);
  sub_1C9064DEC();
  if (!v0)
  {
    v19 = sub_1C9064A0C();
    v21 = v20;
    v22 = *(v25 + 8);
    v23 = OUTLINED_FUNCTION_125();
    v24(v23);
    *v26 = v19;
    v26[1] = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.PluginModelData.value.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v3, v4);
  return OUTLINED_FUNCTION_94();
}

uint64_t DisplayRepresentation.PluginModelData.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t static DisplayRepresentation.PluginModelData.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((MEMORY[0x1CCA7F9A0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_368();

  return sub_1C9064C2C();
}

uint64_t sub_1C8CF6A10(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return OUTLINED_FUNCTION_265();
  }

  else
  {
    return sub_1C8CE7B78(a1, a2);
  }
}

uint64_t sub_1C8CF6A1C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C8CE7B78(result, a2);
  }

  return result;
}

unint64_t sub_1C8CF6A5C()
{
  result = qword_1EDA6CCB0;
  if (!qword_1EDA6CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CCB0);
  }

  return result;
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

unint64_t sub_1C8CF6AF8()
{
  result = qword_1EDA668E8;
  if (!qword_1EDA668E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA668E8);
  }

  return result;
}

uint64_t sub_1C8CF6B4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
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

uint64_t sub_1C8CF6C18(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1C8CF6C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF6B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF6C80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8CF3B54();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CF6CA8(uint64_t a1)
{
  v2 = sub_1C8D02A54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF6CE4(uint64_t a1)
{
  v2 = sub_1C8D02A54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DisplayRepresentation.PluginModelData.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3125E0, &qword_1C9066A00);
  OUTLINED_FUNCTION_11(v4);
  v19 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72();
  v9 = *v0;
  v10 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v11 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  v12 = OUTLINED_FUNCTION_325();
  sub_1C8CE9144(v12, v13);
  sub_1C8D02A54();
  sub_1C9064E1C();
  sub_1C8D02AA8();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  sub_1C8CE7B78(v9, v10);
  if (!v1)
  {
    OUTLINED_FUNCTION_385();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
  }

  v14 = *(v19 + 8);
  v15 = OUTLINED_FUNCTION_93();
  v16(v15);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.PluginModelData.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C9061F4C();
  OUTLINED_FUNCTION_145();

  return sub_1C9063FBC();
}

uint64_t DisplayRepresentation.PluginModelData.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_298();
  sub_1C9061F4C();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void DisplayRepresentation.PluginModelData.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3125F0, &qword_1C9066A08);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v2[3];
  v12 = v2[4];
  v13 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_217(v13, v14);
  sub_1C8D02A54();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1C8D02AFC();
    OUTLINED_FUNCTION_132();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_385();
    v15 = sub_1C9064A0C();
    v17 = v16;
    v18 = *(v7 + 8);
    v19 = OUTLINED_FUNCTION_203();
    v20(v19);
    *v4 = v25;
    v4[1] = v26;
    v4[2] = v15;
    v4[3] = v17;
    v21 = OUTLINED_FUNCTION_224();
    sub_1C8CE9144(v21, v22);

    __swift_destroy_boxed_opaque_existential_1(v2);
    v23 = OUTLINED_FUNCTION_224();
    sub_1C8CE7B78(v23, v24);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF7148()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C9064D7C();
  sub_1C9061F4C();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

uint64_t DisplayRepresentation.Storage.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v3, v4);
  return OUTLINED_FUNCTION_94();
}

uint64_t DisplayRepresentation.Storage.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C8CF71E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1C8CF726C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF71E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8CF7298(uint64_t a1)
{
  v2 = sub_1C8D02B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF72D4(uint64_t a1)
{
  v2 = sub_1C8D02B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DisplayRepresentation.Storage.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3125F8, &qword_1C9066A10);
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38();
  v9 = *v0;
  v10 = v0[1];
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_217(v13, v14);
  sub_1C8CE9144(v9, v10);
  sub_1C8D02B50();
  sub_1C9064E1C();
  sub_1C8D02AA8();
  sub_1C9064B8C();
  sub_1C8CE7B78(v9, v10);
  v15 = *(v5 + 8);
  v16 = OUTLINED_FUNCTION_148();
  v17(v16);
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.Storage.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C9061F4C();
}

uint64_t sub_1C8CF7460(void (*a1)(void))
{
  v4 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_149();
  a1();
  return sub_1C9064DBC();
}

void DisplayRepresentation.Storage.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312608, &qword_1C9066A18);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  v11 = v2[3];
  v12 = v2[4];
  v13 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_217(v13, v14);
  sub_1C8D02B50();
  OUTLINED_FUNCTION_355();
  if (!v0)
  {
    sub_1C8D02AFC();
    sub_1C9064A6C();
    v15 = *(v7 + 8);
    v16 = OUTLINED_FUNCTION_125();
    v17(v16);
    *v4 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF7628(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *v4;
  v6 = v4[1];
  sub_1C9064D7C();
  OUTLINED_FUNCTION_149();
  a4();
  return sub_1C9064DBC();
}

uint64_t DisplayRepresentation.ResolvingRequest.storage.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  if (((v3 >> 60) & 3) != 0)
  {
    v6 = v3 & 0xCFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v1[1];
  }

  *a1 = v2;
  a1[1] = v6;
  return sub_1C8D02BA4(v2, v3, v4, v5, sub_1C8CE9144);
}

uint64_t DisplayRepresentation.ResolvingRequest.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = (v2 >> 60) & 3;
  if (v3)
  {
    if (v3 != 1)
    {
      v8 = v0[2];
      v7 = v0[3];
      OUTLINED_FUNCTION_302();
      sub_1C906478C();
      MEMORY[0x1CCA81A90](0x7266286567616D69, 0xEC000000203A6D6FLL);
      OUTLINED_FUNCTION_344_0();

      OUTLINED_FUNCTION_30_0();
      MEMORY[0x1CCA7F9E0](v1, v2 & 0xCFFFFFFFFFFFFFFFLL);
      sub_1C9064BDC();
      OUTLINED_FUNCTION_414();

      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_412();
      OUTLINED_FUNCTION_345();

      MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90C9630);
      type metadata accessor for CGSize(0);
      sub_1C90648BC();
      return v10[0];
    }

    OUTLINED_FUNCTION_302();
    sub_1C906478C();

    strcpy(v10, "altText(from: ");
    HIBYTE(v10[1]) = -18;
    OUTLINED_FUNCTION_344_0();

    OUTLINED_FUNCTION_30_0();
    v4 = v2 & 0xCFFFFFFFFFFFFFFFLL;
    v5 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_302();
    sub_1C906478C();

    OUTLINED_FUNCTION_372();
    v10[0] = v6;
    v10[1] = 0xEF203A6D6F726628;
    OUTLINED_FUNCTION_344_0();

    OUTLINED_FUNCTION_30_0();
    v5 = OUTLINED_FUNCTION_145();
  }

  MEMORY[0x1CCA7F9E0](v5, v4);
  sub_1C9064BDC();
  OUTLINED_FUNCTION_414();

  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_412();
  OUTLINED_FUNCTION_345();

  OUTLINED_FUNCTION_340();
  return v10[0];
}

BOOL static DisplayRepresentation.ResolvingRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = (v4 >> 60) & 3;
  if (!v12)
  {
    if ((v8 & 0x3000000000000000) == 0)
    {
      OUTLINED_FUNCTION_18();
      sub_1C8D02BA4(v9, v8, v10, v11, v27);
      v28 = OUTLINED_FUNCTION_34_1();
      sub_1C8D02BA4(v28, v29, v30, v31, v2);
      v32 = OUTLINED_FUNCTION_34_1();
      sub_1C8D02BA4(v32, v33, v34, v35, v2);
      v36 = OUTLINED_FUNCTION_26();
      sub_1C8D02BA4(v36, v37, v38, v39, v2);
      v26 = OUTLINED_FUNCTION_100();
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (v12 == 1)
  {
    if ((v8 & 0x3000000000000000) == 0x1000000000000000)
    {
      OUTLINED_FUNCTION_18();
      sub_1C8D02BA4(v9, v8, v10, v11, v13);
      v14 = OUTLINED_FUNCTION_34_1();
      sub_1C8D02BA4(v14, v15, v16, v17, v2);
      v18 = OUTLINED_FUNCTION_34_1();
      sub_1C8D02BA4(v18, v19, v20, v21, v2);
      v22 = OUTLINED_FUNCTION_26();
      sub_1C8D02BA4(v22, v23, v24, v25, v2);
      v26 = OUTLINED_FUNCTION_362();
LABEL_7:
      MEMORY[0x1CCA7F9A0](v26);
      OUTLINED_FUNCTION_161();
      sub_1C8D02BA4(v5, v4, v7, v6, v40);
      v41 = OUTLINED_FUNCTION_26();
      sub_1C8D02BA4(v41, v42, v43, v44, v3);
      v45 = OUTLINED_FUNCTION_26();
      sub_1C8D02BA4(v45, v46, v47, v48, v3);
      v49 = OUTLINED_FUNCTION_34_1();
      sub_1C8D02BA4(v49, v50, v51, v52, v3);
      return v2 & 1;
    }

    goto LABEL_14;
  }

  if ((v8 & 0x3000000000000000) != 0x2000000000000000)
  {
LABEL_14:
    OUTLINED_FUNCTION_18();
    sub_1C8D02BA4(v5, v4, v7, v6, v84);
    v85 = OUTLINED_FUNCTION_26();
    sub_1C8D02BA4(v85, v86, v87, v88, v2);
    sub_1C8D02BA4(v5, v4, v7, v6, sub_1C8CE7B78);
    v89 = OUTLINED_FUNCTION_26();
    sub_1C8D02BA4(v89, v90, v91, v92, sub_1C8CE7B78);
    return 0;
  }

  v54 = *(a1 + 16);
  v55 = *(a1 + 24);
  OUTLINED_FUNCTION_18();
  sub_1C8D02BA4(v9, v8, v10, v11, v56);
  v57 = OUTLINED_FUNCTION_34_1();
  sub_1C8D02BA4(v57, v58, v59, v60, v2);
  v61 = OUTLINED_FUNCTION_34_1();
  sub_1C8D02BA4(v61, v62, v63, v64, v2);
  v65 = OUTLINED_FUNCTION_26();
  sub_1C8D02BA4(v65, v66, v67, v68, v2);
  v69 = OUTLINED_FUNCTION_362();
  MEMORY[0x1CCA7F9A0](v69);
  OUTLINED_FUNCTION_161();
  sub_1C8D02BA4(v5, v4, v7, v6, v70);
  v71 = OUTLINED_FUNCTION_26();
  sub_1C8D02BA4(v71, v72, v73, v74, v3);
  v75 = OUTLINED_FUNCTION_26();
  sub_1C8D02BA4(v75, v76, v77, v78, v3);
  v79 = OUTLINED_FUNCTION_34_1();
  sub_1C8D02BA4(v79, v80, v81, v82, v3);
  v83 = *&v7 == *&v10;
  if (*&v6 != *&v11)
  {
    v83 = 0;
  }

  return (v2 & 1) != 0 && v83;
}

uint64_t sub_1C8CF7B84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74786554746C61 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
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

uint64_t sub_1C8CF7C90(char a1)
{
  if (!a1)
  {
    return 0x656C746974627573;
  }

  if (a1 == 1)
  {
    return 0x74786554746C61;
  }

  return 0x6567616D69;
}

uint64_t sub_1C8CF7CE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656761726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xED0000657A695364)
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

uint64_t sub_1C8CF7DB4(char a1)
{
  if (a1)
  {
    return 0x6572726566657270;
  }

  else
  {
    return 0x656761726F7473;
  }
}

uint64_t sub_1C8CF7DF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_420();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8CF7E64(uint64_t a1)
{
  v2 = sub_1C8D02CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF7EA0(uint64_t a1)
{
  v2 = sub_1C8D02CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8CF7EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF7B84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF7F0C(uint64_t a1)
{
  v2 = sub_1C8D02BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF7F48(uint64_t a1)
{
  v2 = sub_1C8D02BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8CF7F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF7CE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF7FB4(uint64_t a1)
{
  v2 = sub_1C8D02C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF7FF0(uint64_t a1)
{
  v2 = sub_1C8D02C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8CF802C()
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](0);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF806C(uint64_t a1)
{
  v2 = sub_1C8D02D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF80A8(uint64_t a1)
{
  v2 = sub_1C8D02D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DisplayRepresentation.ResolvingRequest.encode(to:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312610, &qword_1C9066A20);
  v5 = OUTLINED_FUNCTION_11(v4);
  v42 = v6;
  v43 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v41 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312618, &qword_1C9066A28);
  v40 = OUTLINED_FUNCTION_11(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_86();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312620, &qword_1C9066A30);
  OUTLINED_FUNCTION_11(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_73();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312628, &qword_1C9066A38);
  OUTLINED_FUNCTION_11(v46);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_38();
  v22 = v1[1];
  v44 = *v1;
  v23 = v1[2];
  v24 = v1[3];
  v25 = *(a1 + 24);
  v26 = *(a1 + 32);
  v27 = OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_217(v27, v28);
  sub_1C8D02BD8();
  sub_1C9064E1C();
  v29 = (v22 >> 60) & 3;
  if (v29)
  {
    if (v29 == 1)
    {
      sub_1C8D02CD4();
      v30 = v46;
      OUTLINED_FUNCTION_380();
      sub_1C9064ACC();
      sub_1C8D02804();
      v31 = v40;
      sub_1C9064B8C();
      OUTLINED_FUNCTION_396();
      v33 = v2;
    }

    else
    {
      sub_1C8D02C2C();
      v30 = v46;
      OUTLINED_FUNCTION_380();
      sub_1C9064ACC();
      sub_1C8D02804();
      v31 = v43;
      sub_1C9064B8C();
      if (!v45)
      {
        OUTLINED_FUNCTION_275();
        sub_1C8D02C80();
        OUTLINED_FUNCTION_133_0();
        sub_1C9064B8C();
      }

      v32 = *(v42 + 8);
      v33 = v41;
    }

    v32(v33, v31);
    v36 = OUTLINED_FUNCTION_129();
    v38 = v30;
  }

  else
  {
    sub_1C8D02D28();
    OUTLINED_FUNCTION_380();
    sub_1C9064ACC();
    sub_1C8D02804();
    sub_1C9064B8C();
    v34 = OUTLINED_FUNCTION_241();
    v35(v34, v15);
    v36 = OUTLINED_FUNCTION_129();
    v38 = v46;
  }

  return v37(v36, v38);
}

uint64_t DisplayRepresentation.ResolvingRequest.hash(into:)()
{
  v1 = *v0;
  v2 = (v0[1] >> 60) & 3;
  if (!v2)
  {
    MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_93();
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_93();
LABEL_5:

    return sub_1C9061F4C();
  }

  v5 = v0[2];
  v4 = v0[3];
  MEMORY[0x1CCA82810](2);
  OUTLINED_FUNCTION_93();
  sub_1C9061F4C();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1CCA82830](v6);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x1CCA82830](v7);
}

uint64_t DisplayRepresentation.ResolvingRequest.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_298();
  DisplayRepresentation.ResolvingRequest.hash(into:)();
  return sub_1C9064DBC();
}

void DisplayRepresentation.ResolvingRequest.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v89 = v0;
  v3 = v2;
  v87 = v4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312658, &qword_1C9066A40);
  OUTLINED_FUNCTION_11(v85);
  v82 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_320(v9);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312660, &qword_1C9066A48);
  OUTLINED_FUNCTION_11(v84);
  v86 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_38();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312668, &qword_1C9066A50);
  OUTLINED_FUNCTION_11(v14);
  v83 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_86();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312670, &qword_1C9066A58);
  OUTLINED_FUNCTION_11(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v79 - v25;
  v28 = v3[3];
  v27 = v3[4];
  v88 = v3;
  v29 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_217(v29, v30);
  sub_1C8D02BD8();
  v31 = v89;
  sub_1C9064DEC();
  if (v31)
  {
    goto LABEL_10;
  }

  v81 = v1;
  v89 = v21;
  v32 = sub_1C9064A9C();
  sub_1C8D021C0(v32, 0);
  if (v35 == v36 >> 1)
  {
    goto LABEL_9;
  }

  v79 = 0;
  v80 = v26;
  if (v35 < (v36 >> 1))
  {
    v37 = *(v34 + v35);
    sub_1C8CACD24(v35 + 1, v36 >> 1, v33, v34, v35, v36);
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    if (v39 == v41 >> 1)
    {
      if (v37)
      {
        if (v37 == 1)
        {
          OUTLINED_FUNCTION_385();
          sub_1C8D02CD4();
          v42 = v79;
          sub_1C906498C();
          v43 = v87;
          if (v42)
          {
            v44 = OUTLINED_FUNCTION_241();
LABEL_15:
            v45(v44, v19);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          sub_1C8D02858();
          OUTLINED_FUNCTION_380();
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          v64 = *(v86 + 8);
          v65 = OUTLINED_FUNCTION_148();
          v66(v65);
          v67 = OUTLINED_FUNCTION_241();
          v68(v67, v19);
          v69 = v91;
          v70 = v92 | 0x1000000000000000;
          v71 = 0uLL;
        }

        else
        {
          LOBYTE(v91) = 2;
          sub_1C8D02C2C();
          v58 = v79;
          sub_1C906498C();
          v43 = v87;
          if (v58)
          {
            v59 = *(v89 + 8);
            v60 = OUTLINED_FUNCTION_334();
            v61(v60);
            swift_unknownObjectRelease();
            v55 = v88;
            goto LABEL_11;
          }

          LOBYTE(v90) = 0;
          sub_1C8D02858();
          sub_1C9064A6C();
          v63 = v89;
          v69 = v91;
          v76 = v92;
          OUTLINED_FUNCTION_275();
          sub_1C8D04C24();
          OUTLINED_FUNCTION_132();
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_396();
          v77 = OUTLINED_FUNCTION_136();
          v78(v77);
          (*(v63 + 8))(v80, v19);
          v71 = v90;
          v70 = v76 | 0x2000000000000000;
        }

        v75 = v88;
      }

      else
      {
        LOBYTE(v91) = 0;
        sub_1C8D02D28();
        v56 = v80;
        v57 = v79;
        sub_1C906498C();
        if (v57)
        {
          v45 = *(v89 + 8);
          v44 = v56;
          goto LABEL_15;
        }

        sub_1C8D02858();
        sub_1C9064A6C();
        v62 = v89;
        swift_unknownObjectRelease();
        v72 = *(v83 + 8);
        v73 = OUTLINED_FUNCTION_125();
        v74(v73);
        (*(v62 + 8))(v56, v19);
        v69 = v91;
        v70 = v92;
        v71 = 0uLL;
        v75 = v88;
        v43 = v87;
      }

      *v43 = v69;
      *(v43 + 8) = v70;
      *(v43 + 16) = v71;
      __swift_destroy_boxed_opaque_existential_1(v75);
      goto LABEL_12;
    }

LABEL_9:
    v46 = sub_1C90647DC();
    swift_allocError();
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v48 = &type metadata for DisplayRepresentation.ResolvingRequest;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v50 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v46);
    (*(v51 + 104))(v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v52 = *(v89 + 8);
    v53 = OUTLINED_FUNCTION_136();
    v54(v53);
LABEL_10:
    v55 = v88;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v55);
LABEL_12:
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_198();
    return;
  }

  __break(1u);
}

uint64_t sub_1C8CF8D3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_319() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_319() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701603686 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_319();
      OUTLINED_FUNCTION_420();
      if (a1)
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

uint64_t sub_1C8CF8E28(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](a1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF8E68(char a1)
{
  if (!a1)
  {
    return 1635017060;
  }

  if (a1 == 1)
  {
    return 0x6C6F626D7973;
  }

  return 1701603686;
}

uint64_t sub_1C8CF8EE8()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1C9064D7C();
  DisplayRepresentation.ResolvingRequest.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF8F34()
{
  v1 = *v0;
  sub_1C9064D7C();
  v2 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF8F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF8D3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF8FB0(uint64_t a1)
{
  v2 = sub_1C8D04C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF8FEC(uint64_t a1)
{
  v2 = sub_1C8D04C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8CF9028(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000)
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

uint64_t sub_1C8CF90F0(char a1)
{
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](a1 & 1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF9130(char a1)
{
  if (a1)
  {
    return 0x6B72616D6B6F6F62;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1C8CF9160(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3128C0, &qword_1C9068CA8);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = OUTLINED_FUNCTION_208_0();
  OUTLINED_FUNCTION_217(v13, v14);
  sub_1C8D06D8C();
  OUTLINED_FUNCTION_358();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_21_3();
  sub_1C8CD23F0(v15, v16);
  sub_1C9064B8C();
  if (!v2)
  {
    v17 = (v3 + *(type metadata accessor for DisplayRepresentation.Image.SecurityScopedURL(0) + 20));
    v22 = *v17;
    v23 = v17[1];
    sub_1C8D04F90(*v17, v23);
    sub_1C8D02AA8();
    sub_1C9064B0C();
    sub_1C8CE7BD0(v22, v23);
  }

  v18 = *(v7 + 8);
  v19 = OUTLINED_FUNCTION_93();
  return v20(v19);
}

void sub_1C8CF9300()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v25 = sub_1C9061EBC();
  v4 = OUTLINED_FUNCTION_11(v25);
  v24 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3128B8, &qword_1C9068CA0);
  OUTLINED_FUNCTION_11(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_86();
  v12 = type metadata accessor for DisplayRepresentation.Image.SecurityScopedURL(0);
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v16 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8D06D8C();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    LOBYTE(v26) = 0;
    OUTLINED_FUNCTION_21_3();
    sub_1C8CD23F0(v17, v18);
    sub_1C9064A6C();
    v19 = *(v24 + 32);
    v20 = OUTLINED_FUNCTION_200_0();
    v21(v20);
    OUTLINED_FUNCTION_275();
    sub_1C8D02AFC();
    OUTLINED_FUNCTION_132();
    sub_1C90649EC();
    v22 = OUTLINED_FUNCTION_222();
    v23(v22);
    *(v1 + *(v12 + 20)) = v26;
    OUTLINED_FUNCTION_152();
    sub_1C8D02900();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_55();
    sub_1C8D02958();
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF95D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF9028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF9600(uint64_t a1)
{
  v2 = sub_1C8D06D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF963C(uint64_t a1)
{
  v2 = sub_1C8D06D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DisplayRepresentation.Image.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v58 = type metadata accessor for DisplayRepresentation.Image.SecurityScopedURL(0);
  v3 = OUTLINED_FUNCTION_13_1(v58);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312680, &qword_1C9066A60);
  OUTLINED_FUNCTION_11(v9);
  v60 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_102();
  v15 = type metadata accessor for DisplayRepresentation.Image(v14);
  v16 = OUTLINED_FUNCTION_13_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v21 = (v20 - v19);
  v22 = v2[3];
  v23 = v2[4];
  v24 = OUTLINED_FUNCTION_293();
  OUTLINED_FUNCTION_217(v24, v25);
  sub_1C8D04C98();
  sub_1C9064DEC();
  if (v0)
  {
    goto LABEL_9;
  }

  v26 = v8;
  v57 = v21;
  v27 = sub_1C9064A9C();
  if (!*(v27 + 16))
  {

    v33 = sub_1C90647DC();
    swift_allocError();
    v35 = v34;
    sub_1C906499C();
    sub_1C90647CC();
    v36 = *MEMORY[0x1E69E6B00];
    OUTLINED_FUNCTION_10_0(v33);
    (*(v37 + 104))(v35);
    swift_willThrow();
    v38 = *(v60 + 8);
    v39 = OUTLINED_FUNCTION_203();
    v40(v39);
LABEL_9:
    v46 = v2;
    goto LABEL_10;
  }

  v28 = *(v27 + 32);

  v29 = v60;
  if (v28)
  {
    if (v28 == 1)
    {
      OUTLINED_FUNCTION_275();
      sub_1C8D04CEC();
      OUTLINED_FUNCTION_132();
      sub_1C9064A6C();
      v30 = *(v60 + 8);
      v31 = OUTLINED_FUNCTION_203();
      v32(v31);
      *v21 = v61;
      v21[1] = v62;
    }

    else
    {
      OUTLINED_FUNCTION_180();
      sub_1C8CD23F0(v44, v45);
      sub_1C9064A6C();
      v47 = (v26 + *(v58 + 20));
      v48 = v47[1];
      if (v48 >> 60 != 15)
      {
        v59 = *v47;
        sub_1C8CE9144(*v47, v48);
        v49 = sub_1C9061DDC();
        OUTLINED_FUNCTION_93();
        v50 = sub_1C9061EFC();
        v51 = OUTLINED_FUNCTION_181();
        MEMORY[0x1CCA82A40](v51);

        v29 = v60;
        sub_1C8CE7BD0(v59, v48);
      }

      v52 = *(v29 + 8);
      v53 = OUTLINED_FUNCTION_203();
      v54(v53);
      v55 = sub_1C9061EBC();
      OUTLINED_FUNCTION_13_1(v55);
      (*(v56 + 16))(v57, v26);
      OUTLINED_FUNCTION_55();
      sub_1C8D02958();
    }
  }

  else
  {
    sub_1C8D02AFC();
    OUTLINED_FUNCTION_132();
    sub_1C9064A6C();
    v41 = *(v60 + 8);
    v42 = OUTLINED_FUNCTION_203();
    v43(v42);
    *v21 = v61;
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_181();
  sub_1C8D04DE8();
  v46 = v2;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v46);
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.Image.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = OUTLINED_FUNCTION_257();
  v58 = type metadata accessor for DisplayRepresentation.Image.SecurityScopedURL(v2);
  v3 = OUTLINED_FUNCTION_13_1(v58);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_0();
  v61 = v6;
  OUTLINED_FUNCTION_111();
  v7 = sub_1C9061EBC();
  v8 = OUTLINED_FUNCTION_11(v7);
  v59 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_147();
  v60 = v16;
  v17 = OUTLINED_FUNCTION_111();
  v18 = type metadata accessor for DisplayRepresentation.Image(v17);
  v19 = OUTLINED_FUNCTION_13_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312688, &qword_1C9066A68);
  v62 = OUTLINED_FUNCTION_11(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_38();
  v27 = *(v0 + 24);
  v26 = *(v0 + 32);
  v28 = OUTLINED_FUNCTION_208_0();
  OUTLINED_FUNCTION_217(v28, v29);
  sub_1C8D04C98();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_210();
  sub_1C8D02900();
  OUTLINED_FUNCTION_245();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v1[1];
      v32 = v1[2];
      v33 = v1[3];
      v63 = *v1;
      OUTLINED_FUNCTION_275();
      sub_1C8D04D40();
      sub_1C9064B8C();
      v34 = OUTLINED_FUNCTION_129();
      v35(v34, v62);
    }

    else
    {
      v42 = v59[4];
      v43 = OUTLINED_FUNCTION_268();
      v44(v43);
      v45 = v59[2];
      v46 = OUTLINED_FUNCTION_292();
      v45(v46);
      (v45)(v61, v14, v7);
      v47 = sub_1C9061DDC();
      v48 = MEMORY[0x1CCA82A50]();

      if (v48)
      {
        v49 = sub_1C9061F3C();
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0xF000000000000000;
      }

      v52 = v59[1];
      v52(v14, v7);
      v53 = (v61 + *(v58 + 20));
      *v53 = v49;
      v53[1] = v51;
      OUTLINED_FUNCTION_180();
      sub_1C8CD23F0(v54, v55);
      sub_1C9064B8C();
      OUTLINED_FUNCTION_55();
      sub_1C8D02958();
      v52(v60, v7);
      v56 = OUTLINED_FUNCTION_129();
      v57(v56, v62);
    }
  }

  else
  {
    v36 = *v1;
    v37 = v1[1];
    sub_1C8D02AA8();
    sub_1C9064B8C();
    v38 = OUTLINED_FUNCTION_129();
    v39(v38, v62);
    v40 = OUTLINED_FUNCTION_287();
    sub_1C8CE7B78(v40, v41);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312690, &qword_1C9066A70);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312698, &qword_1C9066A78);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_290();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A0, &unk_1C9066A80);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_86();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A8, &unk_1C9074CA0);
  OUTLINED_FUNCTION_9(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_142();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_233();
  v25 = v2[1];
  *v4 = *v2;
  *(v4 + 8) = v25;
  v26 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v27 = v26[8];
  sub_1C8CC1D3C();

  DisplayRepresentation.DisplayValue<>.init(optionalProtobuf:)();
  if (v0)
  {
    OUTLINED_FUNCTION_49_0();
    sub_1C8D02958();
  }

  else
  {
    v28 = type metadata accessor for DisplayRepresentation(0);
    v39 = *(v28 + 28);
    sub_1C8CB21A0();
    v29 = v26[6];
    sub_1C8CC1D3C();
    DisplayRepresentation.DisplayValue<>.init(optionalProtobuf:)();
    *(v4 + 16) = OUTLINED_FUNCTION_374();
    *(v4 + 32) = v30;
    v31 = v26[7];
    sub_1C8CC1D3C();
    DisplayRepresentation.DisplayValue<>.init(optionalProtobuf:)();
    *(v4 + 40) = OUTLINED_FUNCTION_374();
    *(v4 + 56) = v32;
    v33 = v26[9];
    sub_1C8CC1D3C();
    sub_1C8D04D94();
    sub_1C906350C();
    v34 = v28;
    v35 = (v4 + *(v28 + 32));
    *v35 = v37;
    v35[1] = v38;
    v36 = v2[2];

    OUTLINED_FUNCTION_49_0();
    sub_1C8D02958();
    *(v4 + *(v34 + 36)) = v36;
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.DisplayValue<>.init(optionalProtobuf:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v67 = v4;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_147();
  v10 = OUTLINED_FUNCTION_111();
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(v10);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126B0, &qword_1C9066A90);
  OUTLINED_FUNCTION_9(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_102();
  v21 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(v20);
  v22 = OUTLINED_FUNCTION_13_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_147();
  v26 = OUTLINED_FUNCTION_325();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_9(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_35();
  v33 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(v32);
  v34 = OUTLINED_FUNCTION_13_1(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  v37 = OUTLINED_FUNCTION_13_1(v66);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_269_0(v41);
  OUTLINED_FUNCTION_366();
  sub_1C8CC1D3C();
  v42 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_108_2(v42, v43, v33);
  if (v51)
  {
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v44, v45);
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v46, v47);
    v48 = 1;
    v50 = v66;
    v49 = v67;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v49, v48, 1, v50);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_211();
  sub_1C8D04DE8();
  OUTLINED_FUNCTION_127();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_108_2(v1, 1, v21);
  if (v51)
  {
    sub_1C8CBE41C(v1, &qword_1EC3126B0);
    v52 = OUTLINED_FUNCTION_181();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
    OUTLINED_FUNCTION_4_3();
    sub_1C8D07450(v55, &unk_1EC3126B8);
    OUTLINED_FUNCTION_213();
    *v56 = v21;
    v57 = *MEMORY[0x1E69E08A8];
    OUTLINED_FUNCTION_10_0(v54);
    (*(v58 + 104))();
    swift_willThrow();
    sub_1C8CBE41C(v3, &qword_1EC3126A8);
    OUTLINED_FUNCTION_76();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_112();
    sub_1C8D02900();
    OUTLINED_FUNCTION_93();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      sub_1C8CBE41C(v3, &qword_1EC3126A8);
      OUTLINED_FUNCTION_75();
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_22_2();
      sub_1C8D04DE8();
      v60 = *v64;
      v61 = v64[1];
      v62 = OUTLINED_FUNCTION_94();
      sub_1C8CE9144(v62, v63);
      OUTLINED_FUNCTION_9_3();
      sub_1C8D02958();
      *v65 = v60;
      v65[1] = v61;
      v50 = v66;
      swift_storeEnumTagMultiPayload();
      goto LABEL_11;
    }

    sub_1C8D04DE8();
    OUTLINED_FUNCTION_159();
    sub_1C8D02900();
    DisplayRepresentation.Image.init(protobuf:)();
    sub_1C8CBE41C(v3, &qword_1EC3126A8);
    OUTLINED_FUNCTION_10_1();
    sub_1C8D02958();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_76();
    if (!v0)
    {
      v50 = v66;
      swift_storeEnumTagMultiPayload();
      sub_1C8CB21A0();
LABEL_11:
      v49 = v67;
      sub_1C8CB21A0();
      v48 = 0;
      goto LABEL_12;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_196();
  v3 = OUTLINED_FUNCTION_399();
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(v3);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v60 = v8;
  v9 = OUTLINED_FUNCTION_111();
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(v9);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_269_0(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126C8, &qword_1C9066AA0);
  OUTLINED_FUNCTION_9(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_86();
  v61 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v19 = OUTLINED_FUNCTION_13_1(v61);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_181();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_9(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_35();
  v30 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(v29);
  v31 = OUTLINED_FUNCTION_13_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_402();
  v34 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_108_2(v34, v35, v30);
  if (v43)
  {
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v36, v37);
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v38, v39);
    *v0 = 0;
    *(v0 + 8) = 0;
    v40 = -1;
  }

  else
  {
    OUTLINED_FUNCTION_334();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_327();
    sub_1C8CC1D3C();
    v41 = OUTLINED_FUNCTION_326();
    OUTLINED_FUNCTION_108_2(v41, v42, v61);
    if (v43)
    {
      sub_1C8CBE41C(v2, &qword_1EC3126C8);
      v44 = OUTLINED_FUNCTION_94();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_116();
      sub_1C8D07450(v47, v48);
      OUTLINED_FUNCTION_89();
      *v49 = v61;
      v50 = *MEMORY[0x1E69E08A8];
      OUTLINED_FUNCTION_10_0(v46);
      (*(v51 + 104))();
      swift_willThrow();
      sub_1C8CBE41C(v1, &qword_1EC3126A0);
      OUTLINED_FUNCTION_153_1();
      sub_1C8D02958();
      goto LABEL_8;
    }

    sub_1C8CBE41C(v1, &qword_1EC3126A0);
    OUTLINED_FUNCTION_153_1();
    sub_1C8D02958();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_116();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_117();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_22_2();
      sub_1C8D04DE8();
      v55 = *v59;
      v56 = v59[1];
      v57 = OUTLINED_FUNCTION_94();
      sub_1C8CE9144(v57, v58);
      OUTLINED_FUNCTION_9_3();
      sub_1C8D02958();
      *v0 = v55;
      *(v0 + 8) = v56;
      *(v0 + 16) = 0;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_159();
    sub_1C8D04DE8();
    v54 = *v60;
    v53 = v60[1];

    OUTLINED_FUNCTION_174();
    sub_1C8D02958();
    *v0 = v54;
    *(v0 + 8) = v53;
    v40 = 1;
  }

  *(v0 + 16) = v40;
LABEL_8:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_196();
  v3 = OUTLINED_FUNCTION_399();
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(v3);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v60 = v8;
  v9 = OUTLINED_FUNCTION_111();
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(v9);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_269_0(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126E0, &qword_1C9066AB0);
  OUTLINED_FUNCTION_9(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_86();
  v61 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v19 = OUTLINED_FUNCTION_13_1(v61);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_181();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_9(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_35();
  v30 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(v29);
  v31 = OUTLINED_FUNCTION_13_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_402();
  v34 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_108_2(v34, v35, v30);
  if (v43)
  {
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v36, v37);
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v38, v39);
    *v0 = 0;
    *(v0 + 8) = 0;
    v40 = -1;
  }

  else
  {
    OUTLINED_FUNCTION_334();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_327();
    sub_1C8CC1D3C();
    v41 = OUTLINED_FUNCTION_326();
    OUTLINED_FUNCTION_108_2(v41, v42, v61);
    if (v43)
    {
      sub_1C8CBE41C(v2, &qword_1EC3126E0);
      v44 = OUTLINED_FUNCTION_94();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_116();
      sub_1C8D07450(v47, v48);
      OUTLINED_FUNCTION_89();
      *v49 = v61;
      v50 = *MEMORY[0x1E69E08A8];
      OUTLINED_FUNCTION_10_0(v46);
      (*(v51 + 104))();
      swift_willThrow();
      sub_1C8CBE41C(v1, &qword_1EC312698);
      OUTLINED_FUNCTION_153_1();
      sub_1C8D02958();
      goto LABEL_8;
    }

    sub_1C8CBE41C(v1, &qword_1EC312698);
    OUTLINED_FUNCTION_153_1();
    sub_1C8D02958();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_116();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_117();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_22_2();
      sub_1C8D04DE8();
      v55 = *v59;
      v56 = v59[1];
      v57 = OUTLINED_FUNCTION_94();
      sub_1C8CE9144(v57, v58);
      OUTLINED_FUNCTION_9_3();
      sub_1C8D02958();
      *v0 = v55;
      *(v0 + 8) = v56;
      *(v0 + 16) = 0;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_159();
    sub_1C8D04DE8();
    v54 = *v60;
    v53 = v60[1];

    OUTLINED_FUNCTION_173();
    sub_1C8D02958();
    *v0 = v54;
    *(v0 + 8) = v53;
    v40 = 1;
  }

  *(v0 + 16) = v40;
LABEL_8:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v245 = v1;
  v4 = v0;
  v6 = v5;
  v236 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_269_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312690, &qword_1C9066A70);
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v232 = v17;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_147();
  v234 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A8, &unk_1C9074CA0);
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12();
  v233 = v24;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_147();
  v243 = v26;
  v27 = OUTLINED_FUNCTION_111();
  v235 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(v27);
  v28 = OUTLINED_FUNCTION_13_1(v235);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  v231 = v31;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_229();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312698, &qword_1C9066A78);
  v34 = OUTLINED_FUNCTION_9(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12();
  v240 = v37;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_147();
  v242 = v39;
  v40 = OUTLINED_FUNCTION_111();
  v41 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(v40);
  v42 = OUTLINED_FUNCTION_13_1(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_25();
  v47 = (v45 - v46);
  MEMORY[0x1EEE9AC00](v48);
  v50 = (v230 - v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A0, &unk_1C9066A80);
  v52 = OUTLINED_FUNCTION_9(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_12();
  v238 = v55;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_147();
  v239 = v57;
  OUTLINED_FUNCTION_111();
  v58 = sub_1C906348C();
  v59 = OUTLINED_FUNCTION_11(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  (*(v61 + 104))(v3, *MEMORY[0x1E69E0758], v58);
  v230[1] = v6;
  LOBYTE(v6) = sub_1C906347C();
  v64 = *(v61 + 8);
  v65 = OUTLINED_FUNCTION_336();
  v66(v65);
  v67 = v0[1];
  v237 = *v0;
  v244 = v67;
  v69 = v0[2];
  v68 = v0[3];
  v70 = *(v0 + 32);
  if (v6)
  {
    if (v70 == 255)
    {
      type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);

      v89 = v243;
    }

    else
    {
      v241 = v2;
      if (v70)
      {
        v71 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0) + 20);
      }

      else
      {
        v94 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0) + 20);
      }

      v72 = OUTLINED_FUNCTION_65();
      sub_1C8CD1ABC(v72, v73, v74);
      v75 = OUTLINED_FUNCTION_65();
      sub_1C8CD1ABC(v75, v76, v77);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v50 = v69;
      v50[1] = v68;
      swift_storeEnumTagMultiPayload();
      v95 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
      MEMORY[0x1EEE9AC00](v95);
      v230[-2] = v50;
      OUTLINED_FUNCTION_51_0();
      sub_1C8CD23F0(v96, v97);
      sub_1C9063ACC();
      OUTLINED_FUNCTION_50_4();
      sub_1C8D02958();
      v98 = OUTLINED_FUNCTION_65();
      sub_1C8CD32C0(v98, v99, v100);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v95);
      v89 = v243;
      v2 = v241;
    }

    v104 = *(v4 + 56);
    if (v104 == 255)
    {
      type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
    }

    else
    {
      v105 = v4[5];
      v106 = v4[6];
      if (v104)
      {
        v107 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0) + 20);
        v108 = OUTLINED_FUNCTION_127();
        sub_1C8CE9D94(v108, v109, 1);
      }

      else
      {
        v137 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0) + 20);
        v138 = OUTLINED_FUNCTION_127();
        sub_1C8CE9D94(v138, v139, 0);
        v140 = OUTLINED_FUNCTION_127();
        sub_1C8CE9144(v140, v141);
      }

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      OUTLINED_FUNCTION_401();
      v142 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
      MEMORY[0x1EEE9AC00](v142);
      OUTLINED_FUNCTION_317();
      *(v143 - 16) = v2;
      OUTLINED_FUNCTION_48();
      sub_1C8CD23F0(v144, v145);
      OUTLINED_FUNCTION_356();
      OUTLINED_FUNCTION_47_0();
      sub_1C8D02958();
      v146 = OUTLINED_FUNCTION_127();
      sub_1C8CD32C0(v146, v147, v104);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v142);
      v89 = v243;
    }

    v151 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v152, v153, v154, v151);
    v155 = type metadata accessor for DisplayRepresentation(0);
    v156 = *(v155 + 32);
    OUTLINED_FUNCTION_367(*(v155 + 36));
    if (v89)
    {
      v158 = v157[1];
      v159 = v157[2];
      v160 = *v157;
      v161 = type metadata accessor for ToolKitProtoPluginModelData(0);
      v162 = *(v161 + 24);

      v163 = OUTLINED_FUNCTION_114();
      sub_1C8CE9144(v163, v164);

      v165 = v234;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v165 = v160;
      v165[1] = v158;
      v165[2] = v159;
      v165[3] = v89;
      v166 = OUTLINED_FUNCTION_137();
      __swift_storeEnumTagSinglePayload(v166, v167, v168, v161);
    }

    else
    {
      v161 = type metadata accessor for ToolKitProtoPluginModelData(0);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v169, v170, v171, v161);
    }

    goto LABEL_38;
  }

  if (v70 == 255)
  {
    type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  }

  else
  {
    if (v70)
    {
      v78 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0) + 20);
    }

    else
    {
      v114 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0) + 20);
    }

    v79 = OUTLINED_FUNCTION_65();
    sub_1C8CD1ABC(v79, v80, v81);
    v82 = OUTLINED_FUNCTION_65();
    sub_1C8CD1ABC(v82, v83, v84);

    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v47 = v69;
    v47[1] = v68;
    OUTLINED_FUNCTION_378();
    swift_storeEnumTagMultiPayload();
    v115 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
    MEMORY[0x1EEE9AC00](v115);
    OUTLINED_FUNCTION_317();
    *(v116 - 16) = v47;
    OUTLINED_FUNCTION_51_0();
    sub_1C8CD23F0(v117, v118);
    OUTLINED_FUNCTION_356();
    v245 = v1;
    OUTLINED_FUNCTION_50_4();
    sub_1C8D02958();
    v119 = OUTLINED_FUNCTION_65();
    sub_1C8CD32C0(v119, v120, v121);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v115);
  }

  v125 = *(v4 + 56);
  if (v125 == 255)
  {
    type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
    v136 = v245;
  }

  else
  {
    v126 = v4[5];
    v127 = v4[6];
    if (v125)
    {
      v128 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0) + 20);
      v129 = OUTLINED_FUNCTION_127();
      sub_1C8CE9D94(v129, v130, 1);
    }

    else
    {
      v172 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0) + 20);
      v173 = OUTLINED_FUNCTION_127();
      sub_1C8CE9D94(v173, v174, 0);
      v175 = OUTLINED_FUNCTION_127();
      sub_1C8CE9144(v175, v176);
    }

    v131 = v231;
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    OUTLINED_FUNCTION_401();
    v177 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
    MEMORY[0x1EEE9AC00](v177);
    OUTLINED_FUNCTION_317();
    *(v178 - 16) = v131;
    OUTLINED_FUNCTION_48();
    sub_1C8CD23F0(v179, v180);
    OUTLINED_FUNCTION_356();
    v136 = v1;
    OUTLINED_FUNCTION_47_0();
    sub_1C8D02958();
    v181 = OUTLINED_FUNCTION_127();
    sub_1C8CD32C0(v181, v182, v125);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v183, v184, v185, v177);
  }

  v186 = type metadata accessor for DisplayRepresentation(0);
  v187 = v186[7];
  v188 = v241;
  sub_1C8CC1D3C();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_108_2(v188, 1, v189);
  v190 = v233;
  if (v191)
  {
    sub_1C8CBE41C(v241, &qword_1EC312528);
    v192 = 1;
    goto LABEL_35;
  }

  DisplayRepresentation.DisplayValue<>.protobuf(useCase:)();
  if (!v136)
  {
    sub_1C8CBE41C(v241, &qword_1EC312530);
    v192 = 0;
LABEL_35:
    v151 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
    __swift_storeEnumTagSinglePayload(v190, v192, 1, v151);
    v193 = v186[8];
    OUTLINED_FUNCTION_367(v186[9]);
    if (v192)
    {
      v195 = v194[1];
      v243 = v194[2];
      v196 = v190;
      v197 = *v194;
      v161 = type metadata accessor for ToolKitProtoPluginModelData(0);
      v198 = *(v161 + 24);

      v199 = OUTLINED_FUNCTION_114();
      sub_1C8CE9144(v199, v200);

      v201 = v232;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v201 = v197;
      v201[1] = v195;
      v201[2] = v243;
      v201[3] = v192;
      v202 = OUTLINED_FUNCTION_137();
      __swift_storeEnumTagSinglePayload(v202, v203, v204, v161);
      v242 = v240;
      v243 = v196;
    }

    else
    {
      v161 = type metadata accessor for ToolKitProtoPluginModelData(0);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v205, v206, v207, v161);

      v242 = v240;
      v243 = v190;
    }

LABEL_38:
    v208 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
    v209 = v208[6];
    type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
    v210 = v236;
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v211, v212, v213, v214);
    v215 = v208[7];
    type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v216, v217, v218, v219);
    v220 = v208[8];
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v221, v222, v223, v151);
    v224 = v208[9];
    type metadata accessor for ToolKitProtoPluginModelData(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v225, v226, v227, v161);
    v228 = v210 + v208[10];
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    v229 = v244;
    *v210 = v237;
    v210[1] = v229;
    sub_1C8D05020();
    sub_1C8D05020();
    sub_1C8D05020();
    v210[2] = v241;
    sub_1C8D05020();
    goto LABEL_39;
  }

  sub_1C8CBE41C(v240, &qword_1EC312698);
  sub_1C8CBE41C(v238, &qword_1EC3126A0);
  sub_1C8CBE41C(v241, &qword_1EC312530);
LABEL_39:
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.DisplayValue<>.protobuf(useCase:)()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(v2);
  v4 = OUTLINED_FUNCTION_13_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v8 = *v0;
  v7 = v0[1];
  if (*(v0 + 16) == 1)
  {
    v9 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0) + 20);
  }

  else
  {
    v10 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0) + 20);
    v11 = OUTLINED_FUNCTION_212();
    sub_1C8CE9144(v11, v12);
  }

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = v8;
  v1[1] = v7;
  OUTLINED_FUNCTION_287();
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_392();
  OUTLINED_FUNCTION_51_0();
  sub_1C8CD23F0(v14, v15);
  OUTLINED_FUNCTION_149();
  sub_1C9063ACC();
  OUTLINED_FUNCTION_50_4();
  return sub_1C8D02958();
}

{
  v2 = OUTLINED_FUNCTION_386();
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(v2);
  v4 = OUTLINED_FUNCTION_13_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v8 = *v0;
  v7 = v0[1];
  if (*(v0 + 16) == 1)
  {
    v9 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0) + 20);
  }

  else
  {
    v10 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0) + 20);
    v11 = OUTLINED_FUNCTION_212();
    sub_1C8CE9144(v11, v12);
  }

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = v8;
  v1[1] = v7;
  OUTLINED_FUNCTION_287();
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_392();
  OUTLINED_FUNCTION_48();
  sub_1C8CD23F0(v14, v15);
  OUTLINED_FUNCTION_149();
  sub_1C9063ACC();
  OUTLINED_FUNCTION_47_0();
  return sub_1C8D02958();
}

uint64_t DisplayRepresentation.PluginModelData.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(type metadata accessor for ToolKitProtoPluginModelData(0) + 24);
  v8 = OUTLINED_FUNCTION_249();
  sub_1C8CE9144(v8, v9);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return result;
}

void DisplayRepresentation.DisplayValue<>.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v23[1] = v2;
  v3 = type metadata accessor for DisplayRepresentation.Image(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_13_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_109_0();
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(v11);
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v23 - v17);
  sub_1C8CC1D3C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v19 = *v1;
    v20 = v1[1];
    v21 = v18 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0) + 20);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v18 = v19;
    v18[1] = v20;
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3_8();
  sub_1C8D04DE8();
  DisplayRepresentation.Image.protobuf(useCase:)();
  OUTLINED_FUNCTION_54_0();
  sub_1C8D02958();
  if (!v0)
  {
    OUTLINED_FUNCTION_124_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_246();
    sub_1C8D04DE8();
LABEL_5:
    v22 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
    MEMORY[0x1EEE9AC00](v22);
    OUTLINED_FUNCTION_393();
    sub_1C8CD23F0(qword_1EDA642C8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
    sub_1C9063ACC();
    OUTLINED_FUNCTION_75();
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.Storage.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = OUTLINED_FUNCTION_211();
  sub_1C8CE9144(v5, v6);
  OUTLINED_FUNCTION_9_3();
  result = sub_1C8D02958();
  *a2 = v3;
  a2[1] = v4;
  return result;
}

void DisplayRepresentation.Image.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v54 = v3;
  v4 = sub_1C9061D9C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v51 = v6;
  v52 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v50 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  v14 = OUTLINED_FUNCTION_111();
  v53 = type metadata accessor for DisplayRepresentation.Image(v14);
  v15 = OUTLINED_FUNCTION_13_1(v53);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  v49 = v18;
  v19 = OUTLINED_FUNCTION_111();
  v20 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(v19);
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312708, &qword_1C9066AC8);
  OUTLINED_FUNCTION_9(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_73();
  v29 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v30 = OUTLINED_FUNCTION_13_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_224();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_108_2(v2, 1, v29);
  if (v34)
  {
    sub_1C8CBE41C(v2, &qword_1EC312708);
    v35 = OUTLINED_FUNCTION_181();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    OUTLINED_FUNCTION_4_3();
    sub_1C8D07450(v38, &unk_1EC312710);
    OUTLINED_FUNCTION_213();
    *v39 = v29;
    v40 = *MEMORY[0x1E69E08A8];
    OUTLINED_FUNCTION_10_0(v37);
    (*(v41 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_10_1();
    sub_1C8D02958();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_193();
  sub_1C8D04DE8();
  OUTLINED_FUNCTION_292();
  sub_1C8D02900();
  OUTLINED_FUNCTION_93();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_10_1();
    sub_1C8D02958();
    OUTLINED_FUNCTION_23_1();
    sub_1C8D02958();
    *v54 = *v1;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v43 = *v1;
    v44 = v1[1];
    sub_1C9061EBC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    (*(v51 + 104))(v50, *MEMORY[0x1E6968F70], v52);
    OUTLINED_FUNCTION_94();
    sub_1C9061E8C();
    OUTLINED_FUNCTION_10_1();
    sub_1C8D02958();
    OUTLINED_FUNCTION_23_1();
    sub_1C8D02958();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_119();
  sub_1C8D04DE8();
  OUTLINED_FUNCTION_152();
  sub_1C8D02900();
  DisplayRepresentation.Symbol.init(protobuf:)();
  OUTLINED_FUNCTION_10_1();
  sub_1C8D02958();
  OUTLINED_FUNCTION_60();
  sub_1C8D02958();
  OUTLINED_FUNCTION_23_1();
  sub_1C8D02958();
  if (!v0)
  {
    *v49 = v55;
    *(v49 + 8) = v56;
    *(v49 + 16) = v57;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_8();
    sub_1C8D04DE8();
  }

LABEL_11:
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.Storage.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0) + 20);
  v6 = OUTLINED_FUNCTION_206();
  sub_1C8CE9144(v6, v7);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v4;
  a1[1] = v3;
  return result;
}

void DisplayRepresentation.Image.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v37[1] = v3;
  v4 = sub_1C9061EBC();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  v10 = type metadata accessor for DisplayRepresentation.Image(0);
  v11 = OUTLINED_FUNCTION_13_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v14 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v15 = OUTLINED_FUNCTION_13_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v37 - v19;
  OUTLINED_FUNCTION_2_4();
  sub_1C8D02900();
  OUTLINED_FUNCTION_292();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v20 = *v2;
    OUTLINED_FUNCTION_211();
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v25 = *(v7 + 32);
    v26 = OUTLINED_FUNCTION_332();
    v27(v26);
    v28 = sub_1C9061E6C();
    v30 = v29;
    v31 = *(v7 + 8);
    v32 = OUTLINED_FUNCTION_208_0();
    v33(v32);
    *v20 = v28;
    *(v20 + 1) = v30;
    OUTLINED_FUNCTION_211();
    goto LABEL_7;
  }

  v22 = *(v2 + 8);
  v23 = *(v2 + 16);
  v24 = *(v2 + 24);
  v37[2] = *v2;
  v37[3] = v22;
  v37[4] = v23;
  v37[5] = v24;
  DisplayRepresentation.Symbol.protobuf(useCase:)(v1);

  if (!v0)
  {
    OUTLINED_FUNCTION_224();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_246();
    sub_1C8D04DE8();
LABEL_8:
    v34 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
    MEMORY[0x1EEE9AC00](v34);
    OUTLINED_FUNCTION_393();
    OUTLINED_FUNCTION_186();
    sub_1C8CD23F0(v35, v36);
    sub_1C9063ACC();
    OUTLINED_FUNCTION_23_1();
    sub_1C8D02958();
  }

  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.Symbol.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];

  if (v8 >> 60 == 15)
  {
    v1 = 0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_114();
    v12 = sub_1C8D04F90(v10, v11);
    v13 = MEMORY[0x1CCA82A80](v12);
    v14 = OUTLINED_FUNCTION_114();
    v16 = sub_1C8CFFB70(v14, v15);
    if (v0)
    {
      objc_autoreleasePoolPop(v13);
      v17 = OUTLINED_FUNCTION_114();
      sub_1C8CE7BD0(v17, v18);
      v19 = 0;
      goto LABEL_10;
    }

    v1 = v16;
    objc_autoreleasePoolPop(v13);
    v20 = OUTLINED_FUNCTION_114();
    sub_1C8CE7BD0(v20, v21);
  }

  if (v3[5] >> 60 == 15)
  {
    v22 = 0;
LABEL_13:
    OUTLINED_FUNCTION_60();
    sub_1C8D02958();
    *v5 = v7;
    v5[1] = v6;
    v5[2] = v1;
    v5[3] = v22;
    goto LABEL_14;
  }

  v35 = v7;
  v23 = v3[4];
  v24 = OUTLINED_FUNCTION_114();
  v26 = sub_1C8CE9144(v24, v25);
  v27 = MEMORY[0x1CCA82A80](v26);
  v28 = OUTLINED_FUNCTION_114();
  v30 = sub_1C8CFF8A4(v28, v29);
  if (!v0)
  {
    v22 = v30;
    objc_autoreleasePoolPop(v27);
    v33 = OUTLINED_FUNCTION_114();
    sub_1C8CE7BD0(v33, v34);
    v7 = v35;
    goto LABEL_13;
  }

  objc_autoreleasePoolPop(v27);
  v31 = OUTLINED_FUNCTION_114();
  sub_1C8CE7BD0(v31, v32);
  v19 = 1;
LABEL_10:
  OUTLINED_FUNCTION_60();
  sub_1C8D02958();

  if (v19)
  {
  }

LABEL_14:
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.Symbol.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = v1[1];
  v25 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  if (v4)
  {

    v7 = MEMORY[0x1CCA82A80](v6);
    v26[0] = 0;
    v8 = [objc_opt_self() archivedDataWithRootObject:v4 requiringSecureCoding:1 error:v26];
    v9 = v26[0];
    if (!v8)
    {
      v20 = v9;
      sub_1C9061D7C();

      swift_willThrow();
      objc_autoreleasePoolPop(v7);

      goto LABEL_11;
    }

    v4 = sub_1C9061F3C();
    v11 = v10;

    objc_autoreleasePoolPop(v7);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {

    v11 = 0xF000000000000000;
    if (v5)
    {
LABEL_4:
      v12 = MEMORY[0x1CCA82A80]();
      v13 = objc_opt_self();
      v26[0] = 0;
      v14 = [v13 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:v26];
      v15 = v26[0];
      if (!v14)
      {
        v21 = v15;
        sub_1C9061D7C();

        swift_willThrow();
        objc_autoreleasePoolPop(v12);

        v22 = OUTLINED_FUNCTION_254();
        result = sub_1C8CE7BD0(v22, v23);
        goto LABEL_11;
      }

      v5 = sub_1C9061F3C();
      v17 = v16;

      objc_autoreleasePoolPop(v12);
      goto LABEL_8;
    }
  }

  v17 = 0xF000000000000000;
LABEL_8:
  *(a1 + 1) = xmmword_1C9065DB0;
  *(a1 + 2) = xmmword_1C9065DB0;
  v18 = a1 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0) + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v25;
  a1[1] = v3;
  sub_1C8CE7BD0(a1[2], a1[3]);
  a1[2] = v4;
  a1[3] = v11;
  result = sub_1C8CE7BD0(a1[4], a1[5]);
  a1[4] = v5;
  a1[5] = v17;
LABEL_11:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C8CFCDD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  OUTLINED_FUNCTION_134();
  result = sub_1C8D02958();
  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C8CFCE44@<X0>(uint64_t (*a1)(void)@<X1>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1(0) + 20);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C8CFCE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  sub_1C8CBE41C(a1, a3);
  OUTLINED_FUNCTION_211();
  sub_1C8D02900();
  a6(0);
  OUTLINED_FUNCTION_150();
  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

__n128 DisplayRepresentation.PluginModelData.init(protobuf:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *a2 = v4;
  v5 = a1[3];
  v7 = *(a1 + 1);
  sub_1C8CE9144(v4, a1[1]);

  sub_1C8D02958();
  result = v7;
  *(a2 + 8) = v7;
  *(a2 + 24) = v5;
  return result;
}

void DisplayRepresentation.DisplayValue.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v201 = v9;
  v192 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  v10 = OUTLINED_FUNCTION_13_1(v192);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v191 = v13;
  v14 = OUTLINED_FUNCTION_111();
  v190 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(v14);
  v15 = OUTLINED_FUNCTION_13_1(v190);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  v189 = v18;
  OUTLINED_FUNCTION_111();
  v200 = type metadata accessor for DisplayRepresentation.DisplayValue();
  v19 = OUTLINED_FUNCTION_11(v200);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_147();
  v174 = v24;
  v183 = *(v4 + 40);
  v25 = *(v183 + 8);
  v196 = v6;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_258();
  v182 = sub_1C906464C();
  v26 = OUTLINED_FUNCTION_11(v182);
  v181 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_147();
  v178 = v32;
  OUTLINED_FUNCTION_111();
  v33 = sub_1C906387C();
  v34 = OUTLINED_FUNCTION_9(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12();
  v188 = v37;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_216();
  v187 = v39;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_147();
  v185 = v41;
  v42 = OUTLINED_FUNCTION_111();
  v186 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(v42);
  v43 = OUTLINED_FUNCTION_13_1(v186);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_7_0();
  v184 = v46;
  v193 = v4;
  v48 = *(v4 - 8);
  v47 = v4 - 8;
  v194 = v48;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_147();
  v175 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312720, &unk_1C9074CB0);
  OUTLINED_FUNCTION_9(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_102();
  v199 = sub_1C90637AC();
  v61 = OUTLINED_FUNCTION_11(v199);
  v195 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_147();
  v197 = v68;
  v69 = OUTLINED_FUNCTION_111();
  v70 = type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static(v69);
  v71 = OUTLINED_FUNCTION_9(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_7_0();
  v198 = v74;
  v75 = OUTLINED_FUNCTION_111();
  v76 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(v75);
  v77 = OUTLINED_FUNCTION_9(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  v80 = OUTLINED_FUNCTION_211();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(v80, v81);
  OUTLINED_FUNCTION_9(v82);
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_142();
  v86 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
  v87 = OUTLINED_FUNCTION_13_1(v86);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_228();
  v91 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0) + 20);
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_108_2(v47, 1, v86);
  if (v92)
  {
    sub_1C8CBE41C(v47, &unk_1EC312728);
    v93 = OUTLINED_FUNCTION_253();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(v93, v94);
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_160();
    sub_1C8D07450(v96, v97);
    v98 = OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_239(v98, v99);
    v100 = *MEMORY[0x1E69E08A8];
    OUTLINED_FUNCTION_10_0(v95);
    (*(v101 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_1_8();
LABEL_24:
    sub_1C8D02958();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_159();
  sub_1C8D04DE8();
  OUTLINED_FUNCTION_292();
  sub_1C8D02900();
  OUTLINED_FUNCTION_119();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1C8D04DE8();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_108_2(v1, 1, v199);
    if (v92)
    {
      sub_1C8CBE41C(v1, &qword_1EC312720);
      sub_1C90636BC();
      OUTLINED_FUNCTION_29_2();
      v103 = OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_239(v103, v104);
      v105 = *MEMORY[0x1E69E08B0];
      OUTLINED_FUNCTION_10_0(v47);
      (*(v106 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_8();
      sub_1C8D02958();
    }

    else
    {
      OUTLINED_FUNCTION_388();
      v112 = OUTLINED_FUNCTION_118();
      v113(v112);
      v114 = *(v195 + 16);
      if (*v8)
      {
        if (*v8 == 1)
        {
          v115 = OUTLINED_FUNCTION_93();
          v116(v115);
          OUTLINED_FUNCTION_312();
          sub_1C906386C();
          sub_1C8CD23F0(qword_1EDA64218, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
          OUTLINED_FUNCTION_322();
          v117 = v192;
          sub_1C9063A5C();
          if (!v0)
          {
            v118 = v180;
            OUTLINED_FUNCTION_252();
            if (OUTLINED_FUNCTION_282())
            {
              v119 = OUTLINED_FUNCTION_137();
              __swift_storeEnumTagSinglePayload(v119, v120, v121, v192);
              OUTLINED_FUNCTION_391();
              v122 = OUTLINED_FUNCTION_130_1();
              v123(v122);
              v124 = *(v192 + 2);
              v125 = OUTLINED_FUNCTION_252();
              v126(v125);
              OUTLINED_FUNCTION_120();
              OUTLINED_FUNCTION_1_8();
              sub_1C8D02958();
              OUTLINED_FUNCTION_335();
              v158(v177);
              v159 = OUTLINED_FUNCTION_316();
              v160(v159);
              OUTLINED_FUNCTION_32_1();
              OUTLINED_FUNCTION_5_5();
              sub_1C8D02958();
              v161 = &v203;
LABEL_26:
              v173 = *(v161 - 32);
              v166 = v200;
              swift_storeEnumTagMultiPayload();
              v167 = OUTLINED_FUNCTION_383();
              v169 = v173;
              goto LABEL_27;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v131 = OUTLINED_FUNCTION_93();
          v132(v131);
          OUTLINED_FUNCTION_312();
          sub_1C906386C();
          sub_1C8CD23F0(&qword_1EC312740, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
          OUTLINED_FUNCTION_322();
          v117 = v190;
          sub_1C9063A5C();
          if (!v0)
          {
            v118 = v179;
            OUTLINED_FUNCTION_252();
            if (OUTLINED_FUNCTION_282())
            {
              v141 = OUTLINED_FUNCTION_137();
              __swift_storeEnumTagSinglePayload(v141, v142, v143, v190);
              OUTLINED_FUNCTION_391();
              v144 = OUTLINED_FUNCTION_130_1();
              v145(v144);
              v146 = *(v190 + 16);
              v147 = OUTLINED_FUNCTION_252();
              v148(v147);
              OUTLINED_FUNCTION_120();
              OUTLINED_FUNCTION_1_8();
              sub_1C8D02958();
              OUTLINED_FUNCTION_335();
              v170(v176);
              v171 = OUTLINED_FUNCTION_316();
              v172(v171);
              OUTLINED_FUNCTION_32_1();
              OUTLINED_FUNCTION_5_5();
              sub_1C8D02958();
              v161 = &v202;
              goto LABEL_26;
            }

            goto LABEL_22;
          }
        }
      }

      else
      {
        v192 = v8;
        v127 = OUTLINED_FUNCTION_93();
        v128(v127);
        OUTLINED_FUNCTION_312();
        sub_1C906386C();
        OUTLINED_FUNCTION_186();
        sub_1C8CD23F0(v129, v130);
        OUTLINED_FUNCTION_322();
        v117 = v186;
        sub_1C9063A5C();
        if (!v0)
        {
          v118 = v178;
          OUTLINED_FUNCTION_118();
          if (OUTLINED_FUNCTION_282())
          {
            v133 = OUTLINED_FUNCTION_137();
            __swift_storeEnumTagSinglePayload(v133, v134, v135, v186);
            v136 = *(v194 + 32);
            OUTLINED_FUNCTION_116();
            v137();
            v138 = *(v194 + 16);
            v139 = OUTLINED_FUNCTION_118();
            v140(v139);
            OUTLINED_FUNCTION_120();
            OUTLINED_FUNCTION_1_8();
            sub_1C8D02958();
            v162 = OUTLINED_FUNCTION_395();
            v163(v162);
            v164 = OUTLINED_FUNCTION_316();
            v165(v164);
            OUTLINED_FUNCTION_32_1();
            OUTLINED_FUNCTION_5_5();
            sub_1C8D02958();
            v166 = v200;
            swift_storeEnumTagMultiPayload();
            v167 = OUTLINED_FUNCTION_383();
            v169 = v174;
LABEL_27:
            v168(v167, v169, v166);
            goto LABEL_25;
          }

LABEL_22:
          OUTLINED_FUNCTION_115();
          __swift_storeEnumTagSinglePayload(v149, v150, v151, v117);
          v152 = OUTLINED_FUNCTION_285();
          v153(v152);
          sub_1C90636BC();
          OUTLINED_FUNCTION_29_2();
          v154 = OUTLINED_FUNCTION_214();
          OUTLINED_FUNCTION_239(v154, v155);
          v156 = *MEMORY[0x1E69E08B0];
          OUTLINED_FUNCTION_10_0(v118);
          (*(v157 + 104))();
          swift_willThrow();
          OUTLINED_FUNCTION_1_8();
          sub_1C8D02958();
          (*(v195 + 8))(v197, v199);
          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_1_8();
      sub_1C8D02958();
      (*(v195 + 8))(v197, v199);
    }

LABEL_23:
    OUTLINED_FUNCTION_32_1();
    OUTLINED_FUNCTION_5_5();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_1_8();
  sub_1C8D02958();
  OUTLINED_FUNCTION_5_5();
  sub_1C8D02958();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_268();
  sub_1C8D04DE8();
  v107 = *v2;
  v108 = v2[1];
  v109 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v109, v110);
  OUTLINED_FUNCTION_9_3();
  sub_1C8D02958();
  v111 = v201;
  *v201 = v107;
  v111[1] = v108;
  swift_storeEnumTagMultiPayload();
LABEL_25:
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.DisplayValue.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v72 = v3;
  v73 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312720, &unk_1C9074CB0);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v69[1] = v10;
  v11 = *(v5 + 16);
  v12 = *(*(*(v5 + 24) + 40) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_13_1(AssociatedTypeWitness);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_16_3();
  v71 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_16_3();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
  v26 = OUTLINED_FUNCTION_13_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12();
  v69[0] = v29;
  OUTLINED_FUNCTION_98();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = (v69 - v32);
  (*(v21 + 16))(v2, v0, v5, v31);
  OUTLINED_FUNCTION_288();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v2;
    v40 = v2[1];
    v41 = v33 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0) + 20);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v33 = v39;
    v33[1] = v40;
    swift_storeEnumTagMultiPayload();
    v37 = v11;
    goto LABEL_5;
  }

  v73 = v33;
  v34 = v71;
  OUTLINED_FUNCTION_388();
  v35 = OUTLINED_FUNCTION_181();
  v36(v35);
  OUTLINED_FUNCTION_124_0();
  sub_1C90636EC();
  v37 = v11;
  v38 = v0;
  if (!v1)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312748, &qword_1C9066AF0);
    if (!swift_dynamicCast())
    {
      v75 = 0;
      memset(v74, 0, sizeof(v74));
      sub_1C8CBE41C(v74, &unk_1EC312750);
      v46 = OUTLINED_FUNCTION_253();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_160();
      sub_1C8D07450(v49, v50);
      OUTLINED_FUNCTION_213();
      *v51 = v43;
      v52 = *MEMORY[0x1E69E08A8];
      OUTLINED_FUNCTION_10_0(v48);
      (*(v53 + 104))();
      swift_willThrow();
      (*(v34 + 8))(v38, v11);
      goto LABEL_16;
    }

    sub_1C8D04FA4(v74, v76);
    v44 = OUTLINED_FUNCTION_271();
    sub_1C8D04FBC(v44, v45);
    sub_1C906388C();
    sub_1C906379C();
    v39 = sub_1C90637AC();
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v39);
    v58 = v69[0];
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v39);
    v62 = v58 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static(0) + 20);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    __swift_destroy_boxed_opaque_existential_1(v76);
    v63 = *(v34 + 8);
    v64 = OUTLINED_FUNCTION_268();
    v65(v64);
    OUTLINED_FUNCTION_226_1();
    sub_1C8D05020();
    OUTLINED_FUNCTION_325();
    swift_storeEnumTagMultiPayload();
    v33 = v73;
    sub_1C8D04DE8();
LABEL_5:
    type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
    if (swift_dynamicCastMetatype())
    {
      v42 = 2;
    }

    else
    {
      type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
      if (swift_dynamicCastMetatype())
      {
        v42 = 0;
      }

      else
      {
        type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
        if (!swift_dynamicCastMetatype())
        {
          swift_getMetatypeMetadata();
          sub_1C90636BC();
          OUTLINED_FUNCTION_29_2();
          OUTLINED_FUNCTION_214();
          *v66 = v37;
          v67 = *MEMORY[0x1E69E08A8];
          OUTLINED_FUNCTION_10_0(v39);
          (*(v68 + 104))();
          swift_willThrow();
          goto LABEL_15;
        }

        v42 = 1;
      }
    }

    v54 = type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0);
    MEMORY[0x1EEE9AC00](v54);
    v69[-2] = v33;
    LOBYTE(v69[-1]) = v42;
    sub_1C8CD23F0(&qword_1EC312768, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue);
    OUTLINED_FUNCTION_116();
    sub_1C9063ACC();
LABEL_15:
    OUTLINED_FUNCTION_5_5();
    sub_1C8D02958();
    goto LABEL_16;
  }

  (*(v34 + 8))(v0, v11);
LABEL_16:
  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CFE460(_BYTE *a1, uint64_t a2, char a3)
{
  v5 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0) + 20);
  sub_1C8CBE41C(&a1[v5], &unk_1EC312728);
  sub_1C8D02900();
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
  result = __swift_storeEnumTagSinglePayload(&a1[v5], 0, 1, v6);
  *a1 = a3;
  return result;
}

void sub_1C8CFE504(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  DisplayRepresentation.DisplayValue.init(protobuf:)();
}

uint64_t sub_1C8CFE53C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v12;
  v13 = *(a5 + 128);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 48) = v15;
  *v15 = v6;
  v15[1] = sub_1C8CFE694;

  return v17(a1, v6 + 16, a4, a6, a3, a5);
}

uint64_t sub_1C8CFE694()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_248();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C8CFE7B0, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    return v9();
  }
}

uint64_t sub_1C8CFE7B0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 56);
  return v2();
}

uint64_t DisplayRepresentation.DisplayValue<>.resolve(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  *(v4 + 72) = *v3;
  *(v4 + 104) = *(v3 + 16);
  return OUTLINED_FUNCTION_199();
}

{
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  *(v4 + 72) = *v3;
  *(v4 + 104) = *(v3 + 16);
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8CFE7FC()
{
  if (*(v1 + 104) == 1)
  {
    OUTLINED_FUNCTION_318();

    return v14();
  }

  else
  {
    v4 = *(v1 + 72);
    v5 = *(v1 + 80);
    v6 = *(v1 + 56);
    swift_getObjectType();
    OUTLINED_FUNCTION_375();
    *(v1 + 24) = v5;
    v7 = OUTLINED_FUNCTION_94();
    sub_1C8CE9144(v7, v8);
    v9 = swift_task_alloc();
    *(v1 + 88) = v9;
    v10 = sub_1C8D05094();
    *v9 = v1;
    v9[1] = sub_1C8CFE920;
    v12 = *(v1 + 56);
    v11 = *(v1 + 64);
    v13 = *(v1 + 48);

    return sub_1C8CFE53C(v13, v2, v0, &type metadata for DisplayRepresentation.Subtitle, v11, v10);
  }
}

uint64_t sub_1C8CFE920()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_248();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 96) = v0;

  OUTLINED_FUNCTION_68();
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C8D076E0, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    return v9();
  }
}

uint64_t sub_1C8CFEA68()
{
  if (*(v1 + 104) == 1)
  {
    OUTLINED_FUNCTION_318();

    return v14();
  }

  else
  {
    v4 = *(v1 + 72);
    v5 = *(v1 + 80);
    v6 = *(v1 + 56);
    swift_getObjectType();
    OUTLINED_FUNCTION_375();
    *(v1 + 24) = v5 | 0x1000000000000000;
    v7 = OUTLINED_FUNCTION_94();
    sub_1C8CE9144(v7, v8);
    v9 = swift_task_alloc();
    *(v1 + 88) = v9;
    v10 = sub_1C8D050E8();
    *v9 = v1;
    v9[1] = sub_1C8CFEB90;
    v12 = *(v1 + 56);
    v11 = *(v1 + 64);
    v13 = *(v1 + 48);

    return sub_1C8CFE53C(v13, v2, v0, &type metadata for DisplayRepresentation.AltText, v11, v10);
  }
}

uint64_t sub_1C8CFEB90()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_248();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 96) = v0;

  OUTLINED_FUNCTION_68();
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C8CFECB0, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    return v9();
  }
}

uint64_t sub_1C8CFECB0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 96);
  return v2();
}

uint64_t DisplayRepresentation.DisplayValue<>.resolve(in:preferredSize:)()
{
  OUTLINED_FUNCTION_7();
  v1[11] = v0;
  v1[9] = v2;
  v1[10] = v3;
  v1[7] = v4;
  v1[8] = v5;
  v1[6] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  v1[12] = v7;
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8CFED78, 0, 0);
}

uint64_t sub_1C8CFED78()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_95_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 48);
    OUTLINED_FUNCTION_3_8();
    sub_1C8D04DE8();
    v6 = *(v0 + 104);

    OUTLINED_FUNCTION_6_0();

    return v7();
  }

  else
  {
    v9 = *(v0 + 104);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = *v9;
    *(v0 + 112) = *v9;
    v14 = v9[1];
    *(v0 + 120) = v14;
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v13;
    *(v0 + 24) = v14 | 0x2000000000000000;
    *(v0 + 32) = v11;
    *(v0 + 40) = v10;
    sub_1C8CE9144(v13, v14);
    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    v17 = type metadata accessor for DisplayRepresentation.Image(0);
    v18 = sub_1C8CD23F0(&qword_1EC312780, type metadata accessor for DisplayRepresentation.Image);
    *v16 = v0;
    v16[1] = sub_1C8CFEF40;
    v20 = *(v0 + 56);
    v19 = *(v0 + 64);
    v21 = *(v0 + 48);

    return sub_1C8CFE53C(v21, (v0 + 16), ObjectType, v17, v19, v18);
  }
}

uint64_t sub_1C8CFEF40()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_248();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_68();
  if (v0)
  {
    v9 = sub_1C8CFF0A8;
  }

  else
  {
    v9 = sub_1C8CFF044;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C8CFF044()
{
  OUTLINED_FUNCTION_7();
  sub_1C8CE7B78(v0[14], v0[15]);
  v1 = v0[13];

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t sub_1C8CFF0A8()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[13];
  sub_1C8CE7B78(v0[14], v0[15]);

  OUTLINED_FUNCTION_6_0();
  v3 = v0[17];

  return v2();
}

void TypedValue.PrimitiveValue.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_164();
  v40 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(0);
  v0 = OUTLINED_FUNCTION_13_1(v40);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_7_0();
  v3 = OUTLINED_FUNCTION_111();
  v4 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v3);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v8 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(0);
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = OUTLINED_FUNCTION_102();
  v13 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v12);
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  v17 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
  v18 = OUTLINED_FUNCTION_13_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v21 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
  v22 = OUTLINED_FUNCTION_13_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v25 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v26 = OUTLINED_FUNCTION_13_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_254();
  sub_1C8D02900();
  OUTLINED_FUNCTION_209();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 4u:
    case 0x10u:
    case 0x16u:
      OUTLINED_FUNCTION_53_2();
      sub_1C8D02958();
      goto LABEL_5;
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x15u:
      type metadata accessor for DisplayRepresentation(0);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
      OUTLINED_FUNCTION_53_2();
      goto LABEL_3;
    case 0xAu:
      OUTLINED_FUNCTION_95_0();
      sub_1C8D04DE8();
      v38 = *(v21 + 24);
      sub_1C8CC1D3C();
      goto LABEL_3;
    case 0xBu:
      OUTLINED_FUNCTION_152();
      sub_1C8D04DE8();
      v39 = *(v17 + 24);
      sub_1C8CC1D3C();
      goto LABEL_3;
    case 0xCu:
    case 0xDu:
      OUTLINED_FUNCTION_152();
      sub_1C8D04DE8();
      sub_1C8CC1D3C();
      goto LABEL_3;
    case 0xEu:
      OUTLINED_FUNCTION_136();
      sub_1C8D04DE8();
      sub_1C8CC1D3C();
      goto LABEL_3;
    case 0x11u:
      OUTLINED_FUNCTION_152();
      sub_1C8D04DE8();
      v37 = *(v40 + 20);
      sub_1C8CC1D3C();
LABEL_3:
      sub_1C8D02958();
      break;
    default:
LABEL_5:
      type metadata accessor for DisplayRepresentation(0);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
      break;
  }

  OUTLINED_FUNCTION_163();
}

void TypedValue.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_164();
  v1 = type metadata accessor for TypedValue.CodableValue(0);
  v2 = OUTLINED_FUNCTION_13_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v5 = type metadata accessor for TypedValue.EntityIdentifierValue(0);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = OUTLINED_FUNCTION_102();
  v14 = type metadata accessor for TypedValue.EnumerationValue(v13);
  v15 = OUTLINED_FUNCTION_13_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  v18 = type metadata accessor for TypedValue.EntityValue(0);
  v19 = OUTLINED_FUNCTION_13_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  switch(*v0 >> 60)
  {
    case 1:
      swift_projectBox();
      sub_1C8D02900();
      v29 = *(v14 + 24);
      sub_1C8CC1D3C();
      goto LABEL_10;
    case 2:
      swift_projectBox();
      sub_1C8D02900();
      v27 = *(v18 + 28);
      sub_1C8CC1D3C();
      OUTLINED_FUNCTION_153_1();
      goto LABEL_10;
    case 3:
    case 4:
    case 5:
    case 7:
      type metadata accessor for DisplayRepresentation(0);
      OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_163();

      __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      return;
    case 6:
      swift_projectBox();
      sub_1C8D02900();
      v28 = *(v5 + 24);
      sub_1C8CC1D3C();
      goto LABEL_10;
    case 8:
      swift_projectBox();
      sub_1C8D02900();
      v30 = *(v1 + 24);
      sub_1C8CC1D3C();
      goto LABEL_10;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_170_0();
      sub_1C8D02900();
      TypedValue.PrimitiveValue.displayRepresentation.getter();
      OUTLINED_FUNCTION_53_2();
LABEL_10:
      sub_1C8D02958();
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t sub_1C8CFF8A4(uint64_t a1, unint64_t a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  sub_1C8CB78AC(0, &qword_1EC312AD8, 0x1E695DFD8);
  v5 = sub_1C8CB78AC(0, &qword_1EC312BD8, 0x1E69E0B68);
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312BE0, &qword_1C9068F60);
  v19[0] = v5;
  v6 = sub_1C8D009F4(v19);
  v7 = LNValueTypeObjectClassesForCoding();
  sub_1C906432C();

  v8 = sub_1C906431C();

  v9 = [v6 setByAddingObjectsFromSet_];

  sub_1C906432C();
  v10 = sub_1C906431C();

  v11 = sub_1C9061EFC();
  v19[0] = 0;
  v12 = [v4 unarchivedObjectOfClasses:v10 fromData:v11 error:v19];

  if (v12)
  {
    v13 = v19[0];
    sub_1C906468C();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      result = v18;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312BE8, &qword_1C9068F68);
      sub_1C8D07450(&qword_1EC312BF0, &qword_1EC312BE8);
      swift_allocError();
      *v16 = a1;
      v16[1] = a2;
      swift_willThrow();
      result = sub_1C8CE9144(a1, a2);
    }
  }

  else
  {
    v15 = v19[0];
    sub_1C9061D7C();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C8CFFB70(uint64_t a1, unint64_t a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  sub_1C8CB78AC(0, &qword_1EC312AD8, 0x1E695DFD8);
  v5 = sub_1C8CB78AC(0, &qword_1EC312BB8, 0x1E69E09E0);
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312BC0, &qword_1C9068F50);
  v19[0] = v5;
  v6 = sub_1C8D009F4(v19);
  v7 = LNValueTypeObjectClassesForCoding();
  sub_1C906432C();

  v8 = sub_1C906431C();

  v9 = [v6 setByAddingObjectsFromSet_];

  sub_1C906432C();
  v10 = sub_1C906431C();

  v11 = sub_1C9061EFC();
  v19[0] = 0;
  v12 = [v4 unarchivedObjectOfClasses:v10 fromData:v11 error:v19];

  if (v12)
  {
    v13 = v19[0];
    sub_1C906468C();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      result = v18;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312BC8, &qword_1C9068F58);
      sub_1C8D07450(&qword_1EC312BD0, &qword_1EC312BC8);
      swift_allocError();
      *v16 = a1;
      v16[1] = a2;
      swift_willThrow();
      result = sub_1C8CE9144(a1, a2);
    }
  }

  else
  {
    v15 = v19[0];
    sub_1C9061D7C();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1C8D009F4(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_1C9064C0C();
  v3 = [swift_getObjCClassFromMetadata() setWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void sub_1C8D00A6C(void *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  switch(a3 >> 62)
  {
    case 1uLL:
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      goto LABEL_8;
    case 2uLL:
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
LABEL_8:
      v6 = sub_1C8D00BD8();
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    case 3uLL:
      if (__s1)
      {
        v6 = 1;
LABEL_9:
        *a4 = v6 & 1;
        v9 = *MEMORY[0x1E69E9840];
      }

      else
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v11 = a3;
      v12 = BYTE2(a3);
      v13 = BYTE3(a3);
      v14 = BYTE4(a3);
      v15 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_12;
      }

      v6 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_9;
  }
}

uint64_t sub_1C8D00BD8()
{
  result = OUTLINED_FUNCTION_409();
  v4 = result;
  if (result)
  {
    result = sub_1C906197C();
    if (__OFSUB__(v2, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v4 += v2 - result;
  }

  if (__OFSUB__(v1, v2))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C906196C();
  if (!v0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v4)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v4 == v0)
  {
    return 1;
  }

  v5 = OUTLINED_FUNCTION_288();
  return memcmp(v5, v6, v7) == 0;
}

void sub_1C8D00CA4()
{
  OUTLINED_FUNCTION_202_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_0(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
      v9 = OUTLINED_FUNCTION_343();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_237();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_66_0();
        sub_1C8D091D4(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_215();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D00D94()
{
  OUTLINED_FUNCTION_202_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_0(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A38, &qword_1C9068E18);
      v9 = OUTLINED_FUNCTION_343();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_237();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_66_0();
        sub_1C8D091D4(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = OUTLINED_FUNCTION_215();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D00E4C()
{
  OUTLINED_FUNCTION_69_1();
  if (v4)
  {
    OUTLINED_FUNCTION_74_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_240();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_71_1();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_303(v2, v5, &unk_1EC312BB0, &unk_1C9068F48);
  v9 = OUTLINED_FUNCTION_143();
  v10 = type metadata accessor for ToolDatabase.DatabaseFile(v9);
  OUTLINED_FUNCTION_179(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_139();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_70(v13);
    sub_1C8D0922C(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }
}

void sub_1C8D00F14()
{
  OUTLINED_FUNCTION_69_1();
  if (v4)
  {
    OUTLINED_FUNCTION_74_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_240();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_71_1();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_303(v2, v5, &unk_1EC312BA8, &unk_1C9068F40);
  OUTLINED_FUNCTION_143();
  v9 = sub_1C9061EBC();
  OUTLINED_FUNCTION_179(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_139();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_70(v12);
    sub_1C8D09244(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }
}

void sub_1C8D01004()
{
  OUTLINED_FUNCTION_69_1();
  if (v4)
  {
    OUTLINED_FUNCTION_74_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_240();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_71_1();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_303(v2, v5, &unk_1EC312A88, &unk_1C9068E68);
  v9 = OUTLINED_FUNCTION_143();
  v10 = type metadata accessor for ToolKitProtoTypedValue(v9);
  OUTLINED_FUNCTION_179(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_139();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_70(v13);
    sub_1C8D0925C(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }
}

void sub_1C8D0112C()
{
  OUTLINED_FUNCTION_77();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_140_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_342(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_343();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_235();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_141();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_138();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D011D8()
{
  OUTLINED_FUNCTION_202_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AC8, &qword_1C9069710);
      v8 = OUTLINED_FUNCTION_197_0();
      OUTLINED_FUNCTION_33_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_66_0();
        sub_1C8D0C590(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v12 = OUTLINED_FUNCTION_215();
    memcpy(v12, v13, v14);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D01290()
{
  OUTLINED_FUNCTION_202_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AA8, &unk_1C90696E0);
      v8 = OUTLINED_FUNCTION_197_0();
      OUTLINED_FUNCTION_33_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_66_0();
        sub_1C8CB15B4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AB0, &qword_1C9068E90);
    OUTLINED_FUNCTION_131();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D01378()
{
  OUTLINED_FUNCTION_202_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A30, &qword_1C9068E10);
      v8 = OUTLINED_FUNCTION_197_0();
      OUTLINED_FUNCTION_33_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_66_0();
        sub_1C8D09360(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v12 = OUTLINED_FUNCTION_215();
    memcpy(v12, v13, v14);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D01430()
{
  OUTLINED_FUNCTION_202_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_0(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A08, &qword_1C9068DE8);
      v9 = OUTLINED_FUNCTION_343();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_235();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_66_0();
        sub_1C8CD382C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
    OUTLINED_FUNCTION_131();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D014F4()
{
  OUTLINED_FUNCTION_202_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A00, &qword_1C9068DE0);
      v8 = OUTLINED_FUNCTION_197_0();
      OUTLINED_FUNCTION_33_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_66_0();
        sub_1C8D09360(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_215();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D015D8()
{
  OUTLINED_FUNCTION_69_1();
  if (v4)
  {
    OUTLINED_FUNCTION_74_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_240();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_71_1();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_303(v2, v5, &qword_1EC3128C8, &qword_1C9068CB0);
  OUTLINED_FUNCTION_143();
  v9 = sub_1C90627EC();
  OUTLINED_FUNCTION_179(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_139();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_70(v12);
    sub_1C8D093A0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }
}

void sub_1C8D016A0()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_77();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_140_0(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_342(v9, v10, v11, v12, v13, v14);
      v15 = OUTLINED_FUNCTION_357();
      v16 = _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_236(v16);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_141();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        OUTLINED_FUNCTION_421();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_138();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D01778()
{
  OUTLINED_FUNCTION_69_1();
  if (v4)
  {
    OUTLINED_FUNCTION_74_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_240();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_71_1();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_303(v2, v5, &unk_1EC312A18, &unk_1C9068DF8);
  OUTLINED_FUNCTION_143();
  v9 = type metadata accessor for ToolDatabase.RollbackCleanupOperation();
  OUTLINED_FUNCTION_179(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_139();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_70(v12);
    sub_1C8D093DC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }
}

void sub_1C8D01874()
{
  OUTLINED_FUNCTION_69_1();
  if (v4)
  {
    OUTLINED_FUNCTION_74_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_240();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_71_1();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_303(v2, v5, &qword_1EC3129B8, &qword_1C9068D98);
  v9 = OUTLINED_FUNCTION_143();
  v10 = type metadata accessor for ComparisonPredicate.Template(v9);
  OUTLINED_FUNCTION_179(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_139();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_70(v13);
    sub_1C8D09388(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }
}

void sub_1C8D0193C()
{
  OUTLINED_FUNCTION_69_1();
  if (v4)
  {
    OUTLINED_FUNCTION_74_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_240();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_71_1();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_303(v2, v5, &unk_1EC3129B0, &unk_1C9068D90);
  v9 = OUTLINED_FUNCTION_143();
  v10 = type metadata accessor for AnyPredicateTemplate(v9);
  OUTLINED_FUNCTION_179(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_139();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_70(v13);
    sub_1C8D093F4(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }
}

void sub_1C8D01AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_342(a1, a2, a3, a4, a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D01BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_342(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_343();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_235();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D01CA4()
{
  OUTLINED_FUNCTION_202_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3128E0, &qword_1C9068CC8);
      v8 = OUTLINED_FUNCTION_197_0();
      OUTLINED_FUNCTION_33_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_66_0();
        sub_1C8CB15B4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3128E8, &qword_1C9068CD0);
    OUTLINED_FUNCTION_131();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D01D64()
{
  OUTLINED_FUNCTION_202_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3128F0, &qword_1C9068CD8);
      v8 = OUTLINED_FUNCTION_197_0();
      OUTLINED_FUNCTION_33_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_66_0();
        sub_1C8D0940C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3128F8, &unk_1C9068CE0);
    OUTLINED_FUNCTION_131();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D01E54()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_77();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_140_0(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_342(v9, v10, v11, v12, v13, v14);
      v15 = OUTLINED_FUNCTION_357();
      v16 = _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_236(v16);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_141();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        OUTLINED_FUNCTION_421();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_138();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8D01EFC()
{
  OUTLINED_FUNCTION_69_1();
  if (v4)
  {
    OUTLINED_FUNCTION_74_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_240();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_71_1();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_303(v2, v5, &unk_1EC3128D0, &unk_1C9068CB8);
  v9 = OUTLINED_FUNCTION_143();
  v10 = type metadata accessor for ComparisonPredicate(v9);
  OUTLINED_FUNCTION_179(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_139();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_70(v13);
    sub_1C8D09430(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }
}

void *sub_1C8D01FC4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v4 = OUTLINED_FUNCTION_343();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_237();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1C8D0202C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AC8, &qword_1C9069710);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 104);
  return v4;
}

void *sub_1C8D02128(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129C8, &qword_1C9068DA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_1C8D021C0(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_263();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1C8D021F8(void *a1)
{
  v1 = [a1 symbolName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C9063EEC();

  return v3;
}

void sub_1C8D0225C()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_258();
  v6 = type metadata accessor for DisplayRepresentation.Image(v5);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  v10 = OUTLINED_FUNCTION_13_1(v75);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v71 = v13;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_228();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  v74 = v19;
  v20 = OUTLINED_FUNCTION_111();
  v78 = type metadata accessor for DisplayRepresentation(v20);
  v21 = OUTLINED_FUNCTION_13_1(v78);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v26 = (v25 - v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_72();
  v31 = type metadata accessor for EnumerationCaseDefinition(0);
  v32 = OUTLINED_FUNCTION_11(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  v37 = *(v4 + 16);
  MEMORY[0x1CCA82810](v37);
  v77 = v37;
  if (v37)
  {
    v38 = v34;
    v39 = 0;
    v40 = *(v31 + 20);
    v41 = *(v38 + 80);
    OUTLINED_FUNCTION_139();
    v76 = *(v42 + 72);
    v72 = v1;
    v73 = v2;
    do
    {
      sub_1C8D02900();
      v43 = *v0;
      v44 = v0[1];
      sub_1C9063FBC();
      sub_1C8CC1D3C();
      OUTLINED_FUNCTION_24_3(v1);
      if (v45)
      {
        OUTLINED_FUNCTION_283();
      }

      else
      {
        OUTLINED_FUNCTION_192();
        sub_1C8D04DE8();
        OUTLINED_FUNCTION_284();
        v46 = *v26;
        v47 = v26[1];
        sub_1C9063FBC();
        v48 = *(v26 + 32);
        if (v48 == 255)
        {
          OUTLINED_FUNCTION_283();
        }

        else
        {
          v50 = v26[2];
          v49 = v26[3];
          OUTLINED_FUNCTION_284();
          if (v48)
          {
            OUTLINED_FUNCTION_341();
            OUTLINED_FUNCTION_227();
            sub_1C9063FBC();
          }

          else
          {
            OUTLINED_FUNCTION_359();
            OUTLINED_FUNCTION_227();
            sub_1C9061F4C();
          }
        }

        v51 = *(v26 + 56);
        if (v51 == 255)
        {
          OUTLINED_FUNCTION_283();
        }

        else
        {
          v52 = v26[5];
          v53 = v26[6];
          OUTLINED_FUNCTION_284();
          if (v51)
          {
            OUTLINED_FUNCTION_341();
            OUTLINED_FUNCTION_117();
            sub_1C9063FBC();
          }

          else
          {
            OUTLINED_FUNCTION_359();
            OUTLINED_FUNCTION_117();
            sub_1C9061F4C();
          }
        }

        v54 = v78[7];
        sub_1C8CC1D3C();
        OUTLINED_FUNCTION_108_2(v74, 1, v75);
        if (v45)
        {
          OUTLINED_FUNCTION_283();
        }

        else
        {
          OUTLINED_FUNCTION_332();
          sub_1C8CB21A0();
          OUTLINED_FUNCTION_284();
          sub_1C8CC1D3C();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 1)
          {
            OUTLINED_FUNCTION_3_8();
            sub_1C8D04DE8();
            OUTLINED_FUNCTION_341();
            OUTLINED_FUNCTION_390();
            DisplayRepresentation.Image.hash(into:)();
            OUTLINED_FUNCTION_54_0();
            sub_1C8D02958();
            v56 = v2;
            v57 = &qword_1EC312530;
          }

          else
          {
            v58 = *v71;
            v59 = v71[1];
            OUTLINED_FUNCTION_359();
            OUTLINED_FUNCTION_117();
            sub_1C9061F4C();
            v60 = OUTLINED_FUNCTION_211();
            sub_1C8CE7B78(v60, v61);
            v56 = OUTLINED_FUNCTION_292();
          }

          sub_1C8CBE41C(v56, v57);
        }

        v62 = (v26 + v78[8]);
        if (v62[3])
        {
          v63 = v62[1];
          v64 = v62[2];
          v65 = *v62;
          OUTLINED_FUNCTION_284();
          OUTLINED_FUNCTION_118();
          sub_1C9061F4C();
          OUTLINED_FUNCTION_227();
          sub_1C9063FBC();
        }

        else
        {
          OUTLINED_FUNCTION_283();
        }

        v66 = *(v26 + v78[9]);
        MEMORY[0x1CCA82810](*(v66 + 16));
        v67 = *(v66 + 16);
        if (v67)
        {
          v68 = (v66 + 40);
          do
          {
            v69 = *(v68 - 1);
            v70 = *v68;

            OUTLINED_FUNCTION_94();
            sub_1C9063FBC();

            v68 += 2;
            --v67;
          }

          while (v67);
        }

        OUTLINED_FUNCTION_59();
        sub_1C8D02958();
        v1 = v72;
        v2 = v73;
      }

      sub_1C8D02958();
      ++v39;
    }

    while (v39 != v77);
  }

  OUTLINED_FUNCTION_163();
}

unint64_t sub_1C8D02768()
{
  result = qword_1EDA69768;
  if (!qword_1EDA69768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69768);
  }

  return result;
}

unint64_t sub_1C8D02804()
{
  result = qword_1EC312568;
  if (!qword_1EC312568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312568);
  }

  return result;
}

unint64_t sub_1C8D02858()
{
  result = qword_1EC312578;
  if (!qword_1EC312578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312578);
  }

  return result;
}

unint64_t sub_1C8D028AC()
{
  result = qword_1EDA63288[0];
  if (!qword_1EDA63288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA63288);
  }

  return result;
}

uint64_t sub_1C8D02900()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t sub_1C8D02958()
{
  v1 = OUTLINED_FUNCTION_258();
  v3 = v2(v1);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1C8D029AC()
{
  result = qword_1EDA6B618[0];
  if (!qword_1EDA6B618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6B618);
  }

  return result;
}

unint64_t sub_1C8D02A00()
{
  result = qword_1EC3125D0;
  if (!qword_1EC3125D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3125D0);
  }

  return result;
}

unint64_t sub_1C8D02A54()
{
  result = qword_1EC3125E8;
  if (!qword_1EC3125E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3125E8);
  }

  return result;
}

unint64_t sub_1C8D02AA8()
{
  result = qword_1EDA6CBA8;
  if (!qword_1EDA6CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CBA8);
  }

  return result;
}

unint64_t sub_1C8D02AFC()
{
  result = qword_1EDA6CBA0;
  if (!qword_1EDA6CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CBA0);
  }

  return result;
}

unint64_t sub_1C8D02B50()
{
  result = qword_1EC312600;
  if (!qword_1EC312600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312600);
  }

  return result;
}

uint64_t sub_1C8D02BA4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
    case 2uLL:
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
      goto LABEL_3;
    case 3uLL:
      return result;
    default:
LABEL_3:
      result = a5(result, a2);
      break;
  }

  return result;
}

unint64_t sub_1C8D02BD8()
{
  result = qword_1EC312630;
  if (!qword_1EC312630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312630);
  }

  return result;
}

unint64_t sub_1C8D02C2C()
{
  result = qword_1EC312638;
  if (!qword_1EC312638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312638);
  }

  return result;
}

unint64_t sub_1C8D02C80()
{
  result = qword_1EC312640;
  if (!qword_1EC312640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312640);
  }

  return result;
}

unint64_t sub_1C8D02CD4()
{
  result = qword_1EC312648;
  if (!qword_1EC312648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312648);
  }

  return result;
}

unint64_t sub_1C8D02D28()
{
  result = qword_1EC312650;
  if (!qword_1EC312650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312650);
  }

  return result;
}

void sub_1C8D02D7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_91(a1, a2);
  if (v2)
  {
    v4 = (v3 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      v4 += 5;
      swift_retain_n();

      OUTLINED_FUNCTION_94();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_117();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_297();
      TypeInstance.hash(into:)();

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1C8D02E34(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_84_0(a1, a2);
  result = MEMORY[0x1CCA82810](v2);
  if (v2)
  {
    v5 = (v3 + 32);
    do
    {
      memcpy(__dst, v5, 0x61uLL);
      v7 = __dst[0];
      v6 = __dst[1];
      v8 = __dst[3];
      v9 = LOBYTE(__dst[4]);
      v11 = __dst[5];
      v10 = __dst[6];
      v12 = __dst[8];
      switch(__dst[8] >> 62)
      {
        case 1uLL:
          MEMORY[0x1CCA82810](1);
          switch(v6)
          {
            case 0:
              v13 = 1;
              break;
            case 1:
              v13 = 2;
              break;
            case 2:
              v13 = 3;
              break;
            case 3:
              v13 = 4;
              break;
            case 4:
              v13 = 5;
              break;
            case 5:
              v13 = 6;
              break;
            case 6:
              v13 = 7;
              break;
            case 7:
              v13 = 8;
              break;
            default:
              MEMORY[0x1CCA82810](0);
              sub_1C8D07280(__dst[0], __dst[1]);
              OUTLINED_FUNCTION_226_1();
              sub_1C9063FBC();
              goto LABEL_7;
          }

          MEMORY[0x1CCA82810](v13);
          goto LABEL_25;
        case 2uLL:
          MEMORY[0x1CCA82810](2);

          OUTLINED_FUNCTION_226_1();
          sub_1C9063FBC();
          OUTLINED_FUNCTION_136();
          sub_1C9063FBC();
LABEL_7:
          sub_1C9064D9C();
LABEL_25:
          result = sub_1C8D0722C(__dst);
          break;
        case 3uLL:
          MEMORY[0x1CCA82810](3);
          result = MEMORY[0x1CCA82810](v7);
          break;
        default:
          v14 = __dst[7];
          v15 = __dst[2];
          v16 = __dst[9];
          v17 = __dst[10];
          v18 = __dst[11];
          v19 = LOBYTE(__dst[12]);
          MEMORY[0x1CCA82810](0);
          MEMORY[0x1CCA82810](v7);
          if (v9 != 2)
          {
            sub_1C9064D9C();
            MEMORY[0x1CCA82810](v6);
            MEMORY[0x1CCA82810](v15);
            MEMORY[0x1CCA82810](v8);
          }

          sub_1C9064D9C();
          if (v12 != 2)
          {
            sub_1C9064D9C();
            MEMORY[0x1CCA82810](v11);
            MEMORY[0x1CCA82810](v10);
            MEMORY[0x1CCA82810](v14);
          }

          sub_1C9064D9C();
          if (v19 != 2)
          {
            sub_1C9064D9C();
            MEMORY[0x1CCA82810](v16);
            MEMORY[0x1CCA82810](v17);
            MEMORY[0x1CCA82810](v18);
          }

          result = sub_1C9064D9C();
          break;
      }

      v5 += 104;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1C8D030C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_413();
  v35 = v3;
  if (v3)
  {
    v4 = 0;
    v34 = a2 + 32;
    while (2)
    {
      v5 = (v34 + (v4 << 6));
      v7 = *v5;
      v6 = v5[1];
      v8 = v5[2];
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[6];
      switch(*(v5 + 56))
      {
        case 1:
          MEMORY[0x1CCA82810](13);

          OUTLINED_FUNCTION_117();
          sub_1C9063FBC();
          OUTLINED_FUNCTION_112();
          OUTLINED_FUNCTION_339();
          v19 = 1;
          goto LABEL_26;
        case 2:
          v32 = v5[2];
          v33 = v5[5];
          MEMORY[0x1CCA82810](15);
          v20 = *(v7 + 16);
          MEMORY[0x1CCA82810](v20);
          if (!v20)
          {
            goto LABEL_32;
          }

          v21 = sub_1C9063C4C();
          OUTLINED_FUNCTION_363(v21);
          v23 = v7 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
          v25 = *(v24 + 72);
          sub_1C8CD23F0(&qword_1EDA66688, MEMORY[0x1E69E8450]);

          do
          {
            OUTLINED_FUNCTION_210();
            sub_1C9063E7C();
            v23 += v25;
            --v20;
          }

          while (v20);
          v12 = OUTLINED_FUNCTION_112();
          v15 = v9;
          v14 = v32;
          v16 = v10;
          v17 = v33;
          v18 = v11;
          v19 = 2;
LABEL_26:
          sub_1C8D06E10(v12, v13, v14, v15, v16, v17, v18, v19);
LABEL_32:
          if (++v4 == v35)
          {
            return;
          }

          continue;
        case 3:
          v26 = v10 | v5[5] | v11;
          if (v8 | v6 | v7 | v9 | v26)
          {
            v27 = v8 | v6 | v9 | v26;
            if (v7 == 1 && v27 == 0)
            {
              v31 = 2;
            }

            else if (v7 == 2 && v27 == 0)
            {
              v31 = 3;
            }

            else if (v7 == 3 && v27 == 0)
            {
              v31 = 4;
            }

            else if (v7 != 4 || v27)
            {
              if (v7 != 5 || v27)
              {
                if (v7 != 6 || v27)
                {
                  if (v7 != 7 || v27)
                  {
                    if (v7 != 8 || v27)
                    {
                      if (v7 != 9 || v27)
                      {
                        if (v7 != 10 || v27)
                        {
                          if (v7 != 11 || v27)
                          {
                            if (v7 != 12 || v27)
                            {
                              if (v7 != 13 || v27)
                              {
                                v31 = 17;
                              }

                              else
                              {
                                v31 = 16;
                              }
                            }

                            else
                            {
                              v31 = 14;
                            }
                          }

                          else
                          {
                            v31 = 12;
                          }
                        }

                        else
                        {
                          v31 = 11;
                        }
                      }

                      else
                      {
                        v31 = 10;
                      }
                    }

                    else
                    {
                      v31 = 9;
                    }
                  }

                  else
                  {
                    v31 = 8;
                  }
                }

                else
                {
                  v31 = 7;
                }
              }

              else
              {
                v31 = 6;
              }
            }

            else
            {
              v31 = 5;
            }
          }

          else
          {
            v31 = 0;
          }

          MEMORY[0x1CCA82810](v31);
          goto LABEL_32;
        default:
          OUTLINED_FUNCTION_341();

          OUTLINED_FUNCTION_117();
          sub_1C9063FBC();
          MEMORY[0x1CCA82830](v8);
          MEMORY[0x1CCA82830](v9);
          MEMORY[0x1CCA82830](v10);
          OUTLINED_FUNCTION_145();
          sub_1C9063FBC();
          OUTLINED_FUNCTION_112();
          OUTLINED_FUNCTION_339();
          v19 = 0;
          goto LABEL_26;
      }
    }
  }
}

void sub_1C8D03430(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_91(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;

      v6 = OUTLINED_FUNCTION_297();
      TypedValue.hash(into:)(v6);

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1C8D03494(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_84_0(a1, a2);
  result = MEMORY[0x1CCA82810](v2);
  v20 = v2;
  if (v2)
  {
    v5 = 0;
    v19 = v3 + 32;
    do
    {
      v6 = (v19 + 32 * v5);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      MEMORY[0x1CCA82810](*(*v6 + 16));
      v11 = *(v7 + 16);
      if (v11)
      {

        v12 = (v7 + 40);
        do
        {
          v13 = *(v12 - 1);
          v14 = *v12;

          OUTLINED_FUNCTION_208_0();
          sub_1C9063FBC();

          v12 += 2;
          --v11;
        }

        while (v11);
        if (!v9)
        {
LABEL_9:
          sub_1C9064D9C();
          goto LABEL_10;
        }
      }

      else
      {

        if (!v9)
        {
          goto LABEL_9;
        }
      }

      sub_1C9064D9C();
      OUTLINED_FUNCTION_136();
      sub_1C9063FBC();
LABEL_10:
      MEMORY[0x1CCA82810](*(v10 + 16));
      v15 = *(v10 + 16);
      if (v15)
      {
        v16 = (v10 + 40);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;

          OUTLINED_FUNCTION_136();
          sub_1C9063FBC();

          v16 += 2;
          --v15;
        }

        while (v15);
      }

      ++v5;
    }

    while (v5 != v20);
  }

  return result;
}

void sub_1C8D03608()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_84_0(v2, v3);
  MEMORY[0x1CCA82810](v0);
  if (v0)
  {
    v4 = (v1 + 56);
    while (2)
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v9 = *v4;
      v4 += 32;
      v8 = v9;

      sub_1C8D07154(v7, v9);
      OUTLINED_FUNCTION_136();
      sub_1C9063FBC();
      switch(v9 >> 5)
      {
        case 1u:
          v10 = 3;
          goto LABEL_11;
        case 2u:
          v11 = 4;
          goto LABEL_8;
        case 3u:
          v11 = 5;
LABEL_8:
          MEMORY[0x1CCA82810](v11);
          v12 = OUTLINED_FUNCTION_209();
          sub_1C8D3977C(v12, v13);
          sub_1C9064D9C();
          goto LABEL_12;
        case 4u:
          v10 = 6;
          goto LABEL_11;
        case 5u:
          v10 = 7;
          goto LABEL_11;
        case 6u:
          MEMORY[0x1CCA82810]((v7 | v8 ^ 0xC0) != 0);
          goto LABEL_12;
        default:
          v10 = 2;
LABEL_11:
          MEMORY[0x1CCA82810](v10);
          v14 = OUTLINED_FUNCTION_209();
          sub_1C8D3977C(v14, v15);
LABEL_12:

          sub_1C8D07168(v7, v8);
          if (!--v0)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8D03724(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCA82810](v3);
  if (v3)
  {
    v5 = sub_1C9063C4C();
    OUTLINED_FUNCTION_363(v5);
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = *(v8 + 72);
    OUTLINED_FUNCTION_58_0();
    sub_1C8CD23F0(v10, v11);
    do
    {
      OUTLINED_FUNCTION_253();
      result = sub_1C9063E7C();
      v7 += v9;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1C8D03800(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_91(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      memcpy(__src, v4, sizeof(__src));
      sub_1C8D07294(__dst, v6);
      ParameterDefinition.hash(into:)();
      memcpy(v6, __src, sizeof(v6));
      sub_1C8D072F0(v6);
      v4 += 136;
      --v2;
    }

    while (v2);
  }
}

void sub_1C8D0389C()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_258();
  v5 = type metadata accessor for ComparisonPredicate(v4);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  v11 = *(v3 + 16);
  OUTLINED_FUNCTION_413();
  if (v11)
  {
    v24 = *(v5 + 24);
    v12 = (v1 + *(v5 + 28));
    v13 = *(v8 + 80);
    OUTLINED_FUNCTION_139();
    v15 = v3 + v14;
    v23 = *(v8 + 72);
    while (2)
    {
      OUTLINED_FUNCTION_194();
      OUTLINED_FUNCTION_212();
      sub_1C8D02900();
      OUTLINED_FUNCTION_410();
      OUTLINED_FUNCTION_94();
      sub_1C9063FBC();
      TypeInstance.hash(into:)(v0);
      v25 = *(v1 + 40);
      ComparisonPredicate.Comparison.hash(into:)();
      sub_1C906204C();
      OUTLINED_FUNCTION_45_3();
      sub_1C8CD23F0(&qword_1EDA666F0, v16);
      OUTLINED_FUNCTION_118();
      sub_1C9063E7C();
      v18 = *v12;
      v17 = v12[1];
      v19 = v12[2];
      v20 = v12[3];
      switch(*(v12 + 32))
      {
        case 1:
          v22 = 1;
          goto LABEL_9;
        case 2:
          v22 = 2;
LABEL_9:
          MEMORY[0x1CCA82810](v22);
          OUTLINED_FUNCTION_210();
          sub_1C9063FBC();
          OUTLINED_FUNCTION_252();
          goto LABEL_10;
        case 3:
          v21 = 3;
          goto LABEL_7;
        default:
          v21 = 0;
LABEL_7:
          MEMORY[0x1CCA82810](v21);
          OUTLINED_FUNCTION_210();
LABEL_10:
          sub_1C9063FBC();
          OUTLINED_FUNCTION_46_0();
          sub_1C8D02958();
          v15 += v23;
          if (!--v11)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_163();
}

void sub_1C8D03A74(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_91(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v4 += 16;

      OUTLINED_FUNCTION_297();
      TypeInstance.hash(into:)();
      OUTLINED_FUNCTION_413();

      --v2;
    }

    while (v2);
  }
}

void sub_1C8D03AE4()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_257();
  v45 = type metadata accessor for ComparisonPredicate(v3);
  v4 = OUTLINED_FUNCTION_13_1(v45);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v50 = v7;
  v8 = OUTLINED_FUNCTION_111();
  v49 = type metadata accessor for ComparisonPredicateTypeOrPredicate(v8);
  v9 = OUTLINED_FUNCTION_11(v49);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_229();
  v18 = *(v2 + 16);
  MEMORY[0x1CCA82810](v18);
  if (v18)
  {
    v19 = *(v11 + 80);
    OUTLINED_FUNCTION_139();
    v21 = v2 + v20;
    v48 = *(v11 + 72);
    v44 = v16;
    do
    {
      v51 = v18;
      sub_1C8D02900();
      OUTLINED_FUNCTION_287();
      sub_1C8D02900();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = v0;
        sub_1C8D04DE8();
        MEMORY[0x1CCA82810](1);
        v23 = *v50;
        v24 = v50[1];
        v25 = v50[2];
        v26 = v50[3];
        v27 = v50[4];
        sub_1C9063FBC();
        OUTLINED_FUNCTION_94();
        sub_1C9063FBC();
        TypeInstance.hash(into:)();
        v52 = *(v50 + 5);
        ComparisonPredicate.Comparison.hash(into:)();
        v28 = *(v45 + 24);
        sub_1C906204C();
        OUTLINED_FUNCTION_45_3();
        sub_1C8CD23F0(&qword_1EDA666F0, v29);
        OUTLINED_FUNCTION_145();
        sub_1C9063E7C();
        v30 = (v50 + *(v45 + 28));
        v32 = *v30;
        v31 = v30[1];
        v33 = v30[2];
        v34 = v30[3];
        switch(*(v30 + 32))
        {
          case 1:
            v43 = 1;
            goto LABEL_11;
          case 2:
            v43 = 2;
LABEL_11:
            MEMORY[0x1CCA82810](v43);
            OUTLINED_FUNCTION_332();
            sub_1C9063FBC();
            OUTLINED_FUNCTION_276();
            goto LABEL_12;
          case 3:
            v35 = 3;
            goto LABEL_9;
          default:
            v35 = 0;
LABEL_9:
            MEMORY[0x1CCA82810](v35);
            OUTLINED_FUNCTION_332();
LABEL_12:
            sub_1C9063FBC();
            v42 = v51;
            OUTLINED_FUNCTION_19();
            v0 = v22;
            sub_1C8D02958();
            OUTLINED_FUNCTION_46_0();
            sub_1C8D02958();
            break;
        }
      }

      else
      {
        v37 = *v16;
        v36 = v16[1];
        v39 = v16[2];
        v38 = v16[3];
        v40 = v16[5];
        v41 = v16[7];
        v46 = v16[4];
        v47 = v16[6];
        MEMORY[0x1CCA82810](0);
        sub_1C9063FBC();
        OUTLINED_FUNCTION_127();
        sub_1C9063FBC();
        sub_1C9063FBC();
        TypeInstance.hash(into:)();
        v16 = v44;
        ComparisonPredicateType.ComparisonType.hash(into:)();
        OUTLINED_FUNCTION_19();
        sub_1C8D02958();

        sub_1C8CD37D8(v41);
        v42 = v51;
      }

      v21 += v48;
      v18 = v42 - 1;
    }

    while (v18);
  }

  OUTLINED_FUNCTION_163();
}

void sub_1C8D03E64()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_258();
  v5 = type metadata accessor for ComparisonPredicate.Template(v4);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  v11 = *(v3 + 16);
  OUTLINED_FUNCTION_413();
  if (v11)
  {
    v24 = *(v5 + 24);
    v12 = (v1 + *(v5 + 28));
    v13 = *(v8 + 80);
    OUTLINED_FUNCTION_139();
    v15 = v3 + v14;
    v23 = *(v8 + 72);
    while (2)
    {
      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_212();
      sub_1C8D02900();
      OUTLINED_FUNCTION_410();
      OUTLINED_FUNCTION_94();
      sub_1C9063FBC();
      TypeInstance.hash(into:)(v0);
      v25 = *(v1 + 40);
      ComparisonPredicate.Comparison.Template.hash(into:)();
      sub_1C906204C();
      OUTLINED_FUNCTION_45_3();
      sub_1C8CD23F0(&qword_1EDA666F0, v16);
      OUTLINED_FUNCTION_118();
      sub_1C9063E7C();
      v18 = *v12;
      v17 = v12[1];
      v19 = v12[2];
      v20 = v12[3];
      switch(*(v12 + 32))
      {
        case 1:
          v22 = 1;
          goto LABEL_9;
        case 2:
          v22 = 2;
LABEL_9:
          MEMORY[0x1CCA82810](v22);
          OUTLINED_FUNCTION_210();
          sub_1C9063FBC();
          OUTLINED_FUNCTION_252();
          goto LABEL_10;
        case 3:
          v21 = 3;
          goto LABEL_7;
        default:
          v21 = 0;
LABEL_7:
          MEMORY[0x1CCA82810](v21);
          OUTLINED_FUNCTION_210();
LABEL_10:
          sub_1C9063FBC();
          sub_1C8D02958();
          v15 += v23;
          if (!--v11)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_163();
}

void sub_1C8D0404C()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C9063C4C();
  v59 = OUTLINED_FUNCTION_11(v4);
  v60 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_7_0();
  v8 = *(v1 + 16);
  MEMORY[0x1CCA82810](v8);
  if (v8)
  {
    v9 = 0;
    v10 = v60 + 16;
    v61 = v8;
    while (2)
    {
      OUTLINED_FUNCTION_354(v68);
      OUTLINED_FUNCTION_354(v69);
      v11 = sub_1C8CA638C(v69);
      v12 = sub_1C8CA62B8(v69);
      v13 = v12;
      switch(v11)
      {
        case 1:
          v37 = *v12;
          v36 = *(v12 + 1);
          MEMORY[0x1CCA82810](1);
          if (v37)
          {
            OUTLINED_FUNCTION_419();
            sub_1C8D073F4(v68, v66);
            v38 = v37;
            sub_1C90645CC();
          }

          else
          {
            OUTLINED_FUNCTION_369();
            sub_1C9064D9C();
            OUTLINED_FUNCTION_162_0();
            v48 = sub_1C8CA62B8(v66);
            v49 = *v48;
            v50 = *(v48 + 8);
            v51 = v49;
          }

          v8 = v61;
          if (v36)
          {
            OUTLINED_FUNCTION_419();
            v52 = v36;
            sub_1C90645CC();

            goto LABEL_41;
          }

          OUTLINED_FUNCTION_369();
          goto LABEL_24;
        case 2:
          v20 = *v12;
          MEMORY[0x1CCA82810](2);
          MEMORY[0x1CCA82810](*(v20 + 16));
          v21 = *(v20 + 16);
          if (v21)
          {
            v64 = v9;
            v22 = *(v60 + 80);
            OUTLINED_FUNCTION_139();
            v24 = v20 + v23;
            OUTLINED_FUNCTION_162_0();
            v25 = *sub_1C8CA62B8(v66);
            v26 = v3;
            v27 = v10;
            v28 = *(v60 + 72);
            v29 = *(v60 + 16);

            do
            {
              v30 = OUTLINED_FUNCTION_276();
              v29(v30);
              OUTLINED_FUNCTION_58_0();
              sub_1C8CD23F0(&qword_1EDA66688, v31);
              OUTLINED_FUNCTION_292();
              sub_1C9063E7C();
              v32 = *(v60 + 8);
              v33 = OUTLINED_FUNCTION_181();
              v34(v33);
              v24 += v28;
              --v21;
            }

            while (v21);
            sub_1C8D073A0(v68);
            v8 = v61;
            v10 = v27;
            v3 = v26;
            v9 = v64;
          }

          goto LABEL_42;
        case 3:
          v35 = *v12;
          MEMORY[0x1CCA82810](3);
          goto LABEL_7;
        case 4:
          v19 = *v12;
          MEMORY[0x1CCA82810](4);
LABEL_7:
          OUTLINED_FUNCTION_415();

          goto LABEL_42;
        case 5:
          v39 = *v12;
          v40 = v12[8];
          v41 = v12[9];
          MEMORY[0x1CCA82810](5);
          if (v39)
          {
            OUTLINED_FUNCTION_419();
            OUTLINED_FUNCTION_162_0();
            v42 = *sub_1C8CA62B8(v66);
            sub_1C90645CC();
          }

          else
          {
            OUTLINED_FUNCTION_369();
            sub_1C9064D9C();
          }

          v10 = v60 + 16;
          sub_1C9064D9C();
LABEL_24:
          sub_1C9064D9C();
          goto LABEL_41;
        case 6:
          v43 = *v12;
          v44 = v12[1];
          v65 = v12[2];
          v45 = v12[3];
          v46 = v12[4];
          v47 = v12[5];
          MEMORY[0x1CCA82810](6);
          OUTLINED_FUNCTION_415();

          OUTLINED_FUNCTION_415();

          v10 = v60 + 16;
          OUTLINED_FUNCTION_415();

          sub_1C9064D9C();
          sub_1C9064D9C();
          sub_1C9064D9C();
          goto LABEL_42;
        default:
          MEMORY[0x1CCA82810](0);
          v62 = *v13;
          v63 = *(v13 + 1);
          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v17 = *(v13 + 4);
          v16 = *(v13 + 5);
          switch(v13[56])
          {
            case 1u:
              v58 = *(v13 + 5);
              v53 = *(v13 + 6);
              MEMORY[0x1CCA82810](1);
              switch(v17)
              {
                case 1:
                  v55 = 1;
                  goto LABEL_35;
                case 2:
                  v55 = 2;
LABEL_35:
                  MEMORY[0x1CCA82810](v55);
                  OUTLINED_FUNCTION_162_0();
                  OUTLINED_FUNCTION_338();
                  sub_1C8CC1D3C();
                  OUTLINED_FUNCTION_329();
                  sub_1C9063FBC();
                  OUTLINED_FUNCTION_250();
                  goto LABEL_36;
                case 3:
                  v54 = 3;
                  goto LABEL_33;
                default:
                  v54 = 0;
LABEL_33:
                  MEMORY[0x1CCA82810](v54);
                  OUTLINED_FUNCTION_162_0();
                  OUTLINED_FUNCTION_338();
                  sub_1C8CC1D3C();
                  OUTLINED_FUNCTION_329();
LABEL_36:
                  sub_1C9063FBC();
                  break;
              }

              break;
            case 2u:
              MEMORY[0x1CCA82810](2);
              OUTLINED_FUNCTION_162_0();
              OUTLINED_FUNCTION_338();
              sub_1C8CC1D3C();
              OUTLINED_FUNCTION_329();
              break;
            case 3u:
              MEMORY[0x1CCA82810](3);
              OUTLINED_FUNCTION_162_0();
              OUTLINED_FUNCTION_338();
              sub_1C8CC1D3C();
              OUTLINED_FUNCTION_329();
              sub_1C9063FBC();
              OUTLINED_FUNCTION_250();
              sub_1C9063FBC();
              OUTLINED_FUNCTION_382();
              break;
            case 4u:
              v18 = 4;
              goto LABEL_26;
            default:
              v18 = 0;
LABEL_26:
              MEMORY[0x1CCA82810](v18);
              OUTLINED_FUNCTION_162_0();
              OUTLINED_FUNCTION_338();
              sub_1C8CC1D3C();
              OUTLINED_FUNCTION_329();
              sub_1C9063FBC();
              OUTLINED_FUNCTION_250();
              break;
          }

          sub_1C9063FBC();
          if (*(v13 + 9))
          {
            v56 = *(v13 + 8);
            OUTLINED_FUNCTION_419();
            OUTLINED_FUNCTION_382();
            sub_1C9063FBC();
          }

          else
          {
            OUTLINED_FUNCTION_369();
            sub_1C9064D9C();
          }

          v10 = v60 + 16;
          v57 = *(v13 + 6);
          v66[0] = *(v13 + 5);
          v66[1] = v57;
          v66[2] = *(v13 + 7);
          v67 = *(v13 + 16);
          QueryDefinition.PredicateTemplates.hash(into:)(v3);
LABEL_41:
          sub_1C8D073A0(v68);
LABEL_42:
          if (++v9 == v8)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D048FC()
{
  OUTLINED_FUNCTION_223();
  v2 = *(v1 + 16);
  result = MEMORY[0x1CCA82810](v2);
  v18 = v2;
  if (v2)
  {
    v4 = 0;
    v17 = v0 + 32;
    do
    {
      v5 = (v17 + 104 * v4);
      v7 = *v5;
      v6 = v5[1];
      v8 = v5[2];
      v9 = v5[4];
      v10 = v5[6];
      v22 = v5[3];
      v23 = *(v5 + 56);
      v11 = v5[9];
      v19 = v5[5];
      v20 = v5[8];
      v12 = v5[11];
      v21 = v5[10];
      v24 = *(v5 + 96);

      OUTLINED_FUNCTION_226_1();
      sub_1C9063FBC();
      MEMORY[0x1CCA82810](*(v8 + 16));
      v13 = *(v8 + 16);
      if (v13)
      {
        v14 = (v8 + 40);
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;

          OUTLINED_FUNCTION_226_1();
          sub_1C9063FBC();

          v14 += 2;
          --v13;
        }

        while (v13);
      }

      sub_1C9063FBC();
      sub_1C9064D9C();
      if (v10)
      {
        sub_1C9063FBC();
      }

      MEMORY[0x1CCA82810](v23);
      if (v11)
      {
        sub_1C9064D9C();
        sub_1C9063FBC();
        if (!v12)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1C9064D9C();
        if (!v12)
        {
LABEL_12:
          MEMORY[0x1CCA82810](0);
          goto LABEL_13;
        }
      }

      MEMORY[0x1CCA82810](1);
      sub_1C9063FBC();
LABEL_13:
      ++v4;
      MEMORY[0x1CCA82810](v24);
    }

    while (v4 != v18);
  }

  return result;
}

uint64_t sub_1C8D04B00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_84_0(a1, a2);
  result = MEMORY[0x1CCA82810](v2);
  if (v2)
  {
    v5 = (v3 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      MEMORY[0x1CCA82810](v8);

      OUTLINED_FUNCTION_209();
      sub_1C9063FBC();
      v9 = OUTLINED_FUNCTION_249();
      result = j__OUTLINED_FUNCTION_265(v9, v10, v8);
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1C8D04B78(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_91(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = v4[1];
      v7[0] = *v4;
      v7[1] = v5;
      v8[0] = v4[2];
      v6 = v8[0];
      *(v8 + 9) = *(v4 + 41);
      v11 = v7[0];
      v12 = v5;
      v13[0] = v6;
      *(v13 + 9) = *(v8 + 9);
      sub_1C8D0717C(v7, v9);
      SystemToolProtocol.hash(into:)();
      v9[0] = v11;
      v9[1] = v12;
      v10[0] = v13[0];
      *(v10 + 9) = *(v13 + 9);
      sub_1C8D071D8(v9);
      v4 += 4;
      --v2;
    }

    while (v2);
  }
}

unint64_t sub_1C8D04C24()
{
  result = qword_1EC312678;
  if (!qword_1EC312678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312678);
  }

  return result;
}

unint64_t sub_1C8D04C98()
{
  result = qword_1EDA69760;
  if (!qword_1EDA69760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69760);
  }

  return result;
}

unint64_t sub_1C8D04CEC()
{
  result = qword_1EDA60938;
  if (!qword_1EDA60938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60938);
  }

  return result;
}

unint64_t sub_1C8D04D40()
{
  result = qword_1EDA60940;
  if (!qword_1EDA60940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60940);
  }

  return result;
}

unint64_t sub_1C8D04D94()
{
  result = qword_1EDA60958;
  if (!qword_1EDA60958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60958);
  }

  return result;
}

uint64_t sub_1C8D04DE8()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t sub_1C8D04F90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C8CE9144(a1, a2);
  }

  return a1;
}

uint64_t sub_1C8D04FA4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C8D04FBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C8D05020()
{
  OUTLINED_FUNCTION_223();
  v4 = OUTLINED_FUNCTION_321(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_13_1(v6);
  v8 = *(v7 + 40);
  v9 = OUTLINED_FUNCTION_94();
  v10(v9);
  return v0;
}

unint64_t sub_1C8D05094()
{
  result = qword_1EC312770;
  if (!qword_1EC312770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312770);
  }

  return result;
}

unint64_t sub_1C8D050E8()
{
  result = qword_1EC312778;
  if (!qword_1EC312778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312778);
  }

  return result;
}

unint64_t sub_1C8D05140()
{
  result = qword_1EC312790;
  if (!qword_1EC312790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312790);
  }

  return result;
}

unint64_t sub_1C8D051E0()
{
  result = qword_1EC3127A0;
  if (!qword_1EC3127A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127A0);
  }

  return result;
}

unint64_t sub_1C8D05254()
{
  result = qword_1EC3127A8;
  if (!qword_1EC3127A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127A8);
  }

  return result;
}

unint64_t sub_1C8D052AC()
{
  result = qword_1EC3127B0;
  if (!qword_1EC3127B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127B0);
  }

  return result;
}

unint64_t sub_1C8D05304()
{
  result = qword_1EC3127B8;
  if (!qword_1EC3127B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127B8);
  }

  return result;
}

unint64_t sub_1C8D0535C()
{
  result = qword_1EC3127C0;
  if (!qword_1EC3127C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127C0);
  }

  return result;
}

unint64_t sub_1C8D053FC()
{
  result = qword_1EC3127C8;
  if (!qword_1EC3127C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127C8);
  }

  return result;
}

unint64_t sub_1C8D05454()
{
  result = qword_1EDA60950;
  if (!qword_1EDA60950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60950);
  }

  return result;
}

unint64_t sub_1C8D054AC()
{
  result = qword_1EC3127D0;
  if (!qword_1EC3127D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HashableCGSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8D05570(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1C8D05694(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C8D0587C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C8D058BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}