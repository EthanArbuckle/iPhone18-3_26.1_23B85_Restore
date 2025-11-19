unint64_t sub_1C8EED020(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x7365736163;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x72506D6574737973;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EED0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EECE20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EED114(uint64_t a1)
{
  v2 = sub_1C8EF8A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EED150(uint64_t a1)
{
  v2 = sub_1C8EF8A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EnumerationDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319488, &unk_1C909F390);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_72();
  v10 = *v0;
  v27 = *(v0 + 16);
  v25 = v0[3];
  v26 = v0[1];
  v20 = v0[5];
  v21 = v0[6];
  v22 = v0[7];
  v23 = v0[8];
  v24 = v0[4];
  v11 = v0[9];
  v13 = v3[3];
  v12 = v3[4];
  v14 = v3;
  v16 = v15;
  OUTLINED_FUNCTION_217(v14, v13);
  v17 = sub_1C8EF8A14();

  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  sub_1C8C9FB9C();
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  if (v17)
  {
    OUTLINED_FUNCTION_226();
    v18 = OUTLINED_FUNCTION_174_4();
    v19(v18, v16);
  }

  else
  {
    OUTLINED_FUNCTION_226();
    OUTLINED_FUNCTION_275();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DE8, &qword_1C9090C08);
    sub_1C8EF8A68();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_119_1();
    sub_1C8E0532C();
    OUTLINED_FUNCTION_20_23();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319460, &qword_1C909F360);
    sub_1C8EF8654();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
    sub_1C8E959E8();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_219_1();
    sub_1C8E2F488();

    OUTLINED_FUNCTION_20_23();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_225_4();

    (*(v6 + 8))(v1, v16);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t EnumerationDefinition.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[8];
  v17 = v1[7];
  v18 = *v1;
  v8 = v1[9];
  v9 = *(v1 + 16);
  TypeIdentifier.hash(into:)(a1);
  sub_1C8D0225C();
  sub_1C8D2FEF0();
  v10 = OUTLINED_FUNCTION_118();
  sub_1C8D030C8(v10, v11);
  v12 = OUTLINED_FUNCTION_210();
  sub_1C8D02E34(v12, v13);
  sub_1C9063FBC();
  if (v7)
  {
    OUTLINED_FUNCTION_284();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  v14 = OUTLINED_FUNCTION_145();

  return sub_1C8CC1590(v14, v15);
}

uint64_t EnumerationDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[8];
  v11 = v0[7];
  v8 = v0[9];
  v9 = *(v0 + 16);
  sub_1C9064D7C();
  TypeIdentifier.hash(into:)(v12);
  sub_1C8D0225C();
  sub_1C8D2FEF0();
  sub_1C8D030C8(v12, v3);
  sub_1C8D02E34(v12, v4);
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v7)
  {
    sub_1C9063FBC();
  }

  sub_1C8CC1590(v12, v8);
  return sub_1C9064DBC();
}

void EnumerationDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319490, &qword_1C909F3A0);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_233();
  v9 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8EF8A14();
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1C8CB892C();
    OUTLINED_FUNCTION_181_5();
    OUTLINED_FUNCTION_8_37();
    sub_1C9064A6C();
    v10 = v22[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DE8, &qword_1C9090C08);
    OUTLINED_FUNCTION_91_4(1);
    sub_1C8EF8B1C();
    OUTLINED_FUNCTION_181_5();
    OUTLINED_FUNCTION_178_3();
    OUTLINED_FUNCTION_36_17();
    sub_1C9064A6C();
    v20 = v22[0];
    OUTLINED_FUNCTION_91_4(2);
    sub_1C8E053D4();
    OUTLINED_FUNCTION_181_5();
    OUTLINED_FUNCTION_8_37();
    sub_1C9064A6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319460, &qword_1C909F360);
    OUTLINED_FUNCTION_91_4(3);
    sub_1C8EF8834();
    OUTLINED_FUNCTION_181_5();
    OUTLINED_FUNCTION_178_3();
    OUTLINED_FUNCTION_36_17();
    sub_1C9064A6C();
    v19 = v22[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
    OUTLINED_FUNCTION_91_4(4);
    sub_1C8E95FEC();
    OUTLINED_FUNCTION_181_5();
    OUTLINED_FUNCTION_178_3();
    OUTLINED_FUNCTION_36_17();
    sub_1C9064A6C();
    v36 = v22[0];
    v11 = v22[0];
    OUTLINED_FUNCTION_219_1();
    sub_1C8E2FB84();
    OUTLINED_FUNCTION_8_37();
    sub_1C9064A6C();
    v12 = OUTLINED_FUNCTION_5_9();
    v13(v12);
    v18 = v31;
    v17 = v32;
    v14 = v34;
    v16 = v33;
    v15 = v35;
    v21[0] = v22[0];
    v21[1] = v22[0];
    LOBYTE(v21[2]) = v22[0];
    v21[3] = v22[0];
    v21[4] = v22[0];
    v21[5] = v31;
    v21[6] = v32;
    v21[7] = v33;
    v21[8] = v34;
    v21[9] = v35;
    memcpy(v4, v21, 0x50uLL);
    sub_1C8EF7CBC(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v22[0] = v10;
    v22[1] = v20;
    v23 = v36;
    v24 = v19;
    v25 = v11;
    v26 = v18;
    v27 = v17;
    v28 = v16;
    v29 = v14;
    v30 = v15;
    sub_1C8EF8C18(v22);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EEDA8C()
{
  sub_1C9064D7C();
  EnumerationDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t EnumerationCaseDefinition.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_143_3();

  return sub_1C8DF0C88(v1 + v3, a1);
}

uint64_t EnumerationCaseDefinition.displayName.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_143_3();
  sub_1C8DF0C88(v1 + v6, v0);
  v7 = type metadata accessor for DisplayRepresentation(0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
  }

  else
  {
    v8 = *v0;
    v9 = v0[1];

    OUTLINED_FUNCTION_7_38();
    sub_1C8EF8C9C(v0, v10);
  }

  return OUTLINED_FUNCTION_209();
}

uint64_t EnumerationCaseDefinition.init(id:displayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  OUTLINED_FUNCTION_143_3();
  v11 = a5 + v10;
  v12 = type metadata accessor for DisplayRepresentation(0);
  v13 = v12[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  __swift_storeEnumTagSinglePayload(v11 + v13, 1, 1, v14);
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = -1;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = -1;
  v15 = (v11 + v12[8]);
  *v15 = 0u;
  v15[1] = 0u;
  *(v11 + v12[9]) = MEMORY[0x1E69E7CC0];
  result = __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  *a5 = a1;
  a5[1] = a2;
  return result;
}

uint64_t static EnumerationCaseDefinition.== infix(_:_:)(void *a1, void *a2)
{
  v7 = type metadata accessor for DisplayRepresentation(0);
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_109_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_201();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_51();
  v19 = *a1 == *a2 && a1[1] == a2[1];
  if (v19 || (sub_1C9064C2C(), result = OUTLINED_FUNCTION_274(), (v21 & 1) != 0))
  {
    v22 = *(type metadata accessor for EnumerationCaseDefinition(0) + 20);
    v23 = *(v15 + 48);
    sub_1C8DF0C88(a1 + v22, v3);
    sub_1C8DF0C88(a2 + v22, v3 + v23);
    if (OUTLINED_FUNCTION_229_3(v3) == 1)
    {
      if (OUTLINED_FUNCTION_229_3(v3 + v23) == 1)
      {
        sub_1C8D16D78(v3, &qword_1EC312788, &unk_1C906A3A0);
        return 1;
      }
    }

    else
    {
      v24 = OUTLINED_FUNCTION_209();
      sub_1C8DF0C88(v24, v25);
      if (OUTLINED_FUNCTION_229_3(v3 + v23) != 1)
      {
        OUTLINED_FUNCTION_28_19();
        sub_1C8CCEBBC(v3 + v23, v2, v27);
        static DisplayRepresentation.== infix(_:_:)();
        v29 = v28;
        sub_1C8EF8C9C(v2, type metadata accessor for DisplayRepresentation);
        sub_1C8EF8C9C(v4, type metadata accessor for DisplayRepresentation);
        sub_1C8D16D78(v3, &qword_1EC312788, &unk_1C906A3A0);
        return (v29 & 1) != 0;
      }

      OUTLINED_FUNCTION_7_38();
      sub_1C8EF8C9C(v4, v26);
    }

    sub_1C8D16D78(v3, &qword_1EC312A20, &qword_1C9068E00);
    return 0;
  }

  return result;
}

uint64_t sub_1C8EEDF04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
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

uint64_t sub_1C8EEDFCC(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1C8EEE004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EEDF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EEE02C(uint64_t a1)
{
  v2 = sub_1C8EF8C48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EEE068(uint64_t a1)
{
  v2 = sub_1C8EF8C48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EnumerationCaseDefinition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319498, &qword_1C909F3A8);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38();
  v11 = a1[4];
  OUTLINED_FUNCTION_217(a1, a1[3]);
  sub_1C8EF8C48();
  sub_1C9064E1C();
  v12 = *v3;
  v13 = v3[1];
  sub_1C9064B2C();
  if (!v2)
  {
    v14 = *(type metadata accessor for EnumerationCaseDefinition(0) + 20);
    OUTLINED_FUNCTION_223_0();
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_88_3();
    sub_1C8EF8BD0(v15, v16);
    sub_1C9064B0C();
  }

  v17 = *(v7 + 8);
  v18 = OUTLINED_FUNCTION_148();
  return v19(v18);
}

uint64_t EnumerationCaseDefinition.hash(into:)()
{
  v3 = type metadata accessor for DisplayRepresentation(0);
  v4 = OUTLINED_FUNCTION_13_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_109_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_201();
  v11 = *v1;
  v12 = v1[1];
  sub_1C9063FBC();
  OUTLINED_FUNCTION_143_3();
  sub_1C8DF0C88(v1 + v13, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_1C9064D9C();
  }

  OUTLINED_FUNCTION_28_19();
  sub_1C8CCEBBC(v2, v0, v15);
  sub_1C9064D9C();
  DisplayRepresentation.hash(into:)();
  OUTLINED_FUNCTION_7_38();
  return sub_1C8EF8C9C(v0, v16);
}

void EnumerationCaseDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v34 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194A0, &qword_1C909F3B0);
  v11 = OUTLINED_FUNCTION_11(v10);
  v35 = v12;
  v36 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_233();
  v16 = type metadata accessor for EnumerationCaseDefinition(0);
  v17 = OUTLINED_FUNCTION_13_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v22 = (v21 - v20);
  v23 = v2[3];
  v24 = v2[4];
  v25 = OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_217(v25, v26);
  sub_1C8EF8C48();
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_203_4();
    *v22 = sub_1C9064A0C();
    v22[1] = v27;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_88_3();
    sub_1C8EF8BD0(v28, v29);
    sub_1C90649EC();
    v30 = OUTLINED_FUNCTION_109();
    v31(v30);
    sub_1C8D60F48(v9, v22 + *(v16 + 20));
    sub_1C8EF92B4(v22, v34, type metadata accessor for EnumerationCaseDefinition);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_87_6();
    sub_1C8EF8C9C(v22, v32);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t EnumerationCaseDefinition.debugDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_51();
  v6 = type metadata accessor for DisplayRepresentation(0);
  v7 = OUTLINED_FUNCTION_13_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_143_3();
  sub_1C8DF0C88(v0 + v10, v0);
  if (OUTLINED_FUNCTION_229_3(v0) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
    sub_1C906478C();

    MEMORY[0x1CCA81A90](*v0, v0[1]);
    MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  }

  else
  {
    OUTLINED_FUNCTION_28_19();
    v11 = OUTLINED_FUNCTION_209();
    sub_1C8CCEBBC(v11, v12, v13);
    sub_1C906478C();

    MEMORY[0x1CCA81A90](*v0, v0[1]);
    MEMORY[0x1CCA81A90](0x616C70736964202CLL, 0xEF203A7270655279);
    DisplayRepresentation.debugDescription.getter();
    MEMORY[0x1CCA81A90]();

    MEMORY[0x1CCA81A90](41, 0xE100000000000000);
    OUTLINED_FUNCTION_7_38();
    sub_1C8EF8C9C(v1, v14);
  }

  return OUTLINED_FUNCTION_94();
}

uint64_t QueryDefinition.PredicateTemplates.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1C8D16DD0(v2, v3);
}

uint64_t QueryDefinition.PredicateTemplates.valueSearch.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1C8CD1784(v2);
}

uint64_t QueryDefinition.PredicateTemplates.sampleInvocations.getter()
{
  if (!v0[3])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = [objc_opt_self() sharedProvider];
  v5 = sub_1C9063EBC();
  v6 = [v4 examplePhrasesForBundleIdentifier:v5 useCache:1];

  sub_1C8D72FC8();
  sub_1C906419C();

  OUTLINED_FUNCTION_147_2();
  static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v7, v8, v9, v10, v11);
  v13 = v12;

  return v13;
}

ToolKit::QueryDefinition::PredicateTemplates::PredicateMetadata __swiftcall QueryDefinition.PredicateTemplates.PredicateMetadata.init(queryIdentifier:bundleIdentifier:)(Swift::String queryIdentifier, Swift::String bundleIdentifier)
{
  *v2 = queryIdentifier;
  v2[1] = bundleIdentifier;
  result.bundleIdentifier = bundleIdentifier;
  result.queryIdentifier = queryIdentifier;
  return result;
}

uint64_t static QueryDefinition.PredicateTemplates.PredicateMetadata.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (sub_1C9064C2C(), result = OUTLINED_FUNCTION_274(), (v10 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_164_5();

      return sub_1C9064C2C();
    }
  }

  return result;
}

uint64_t sub_1C8EEEA20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564497972657571 && a2 == 0xEF7265696669746ELL;
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

uint64_t sub_1C8EEEAF8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6564497972657571;
  }
}

uint64_t sub_1C8EEEB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EEEA20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EEEB70(uint64_t a1)
{
  v2 = sub_1C8EF8CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EEEBAC(uint64_t a1)
{
  v2 = sub_1C8EF8CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void QueryDefinition.PredicateTemplates.PredicateMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194A8, &qword_1C909F3B8);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  v8 = *v0;
  v9 = v0[1];
  v16 = v0[3];
  v17 = v0[2];
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_217(v12, v13);
  sub_1C8EF8CF4();
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_102_6();
  OUTLINED_FUNCTION_205();
  sub_1C9064B2C();
  if (!v1)
  {
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
  }

  v14 = OUTLINED_FUNCTION_30();
  v15(v14, v4);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t QueryDefinition.PredicateTemplates.PredicateMetadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C9063FBC();
  OUTLINED_FUNCTION_145();

  return sub_1C9063FBC();
}

uint64_t QueryDefinition.PredicateTemplates.PredicateMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_18_20(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  sub_1C9063FBC();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void QueryDefinition.PredicateTemplates.PredicateMetadata.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194B0, &qword_1C909F3C0);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_0();
  v10 = v0[3];
  v11 = v0[4];
  v12 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_217(v12, v13);
  sub_1C8EF8CF4();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_203_4();
    v14 = sub_1C9064A0C();
    v16 = v15;
    OUTLINED_FUNCTION_223_0();
    v17 = sub_1C9064A0C();
    v19 = v18;
    v20 = v17;
    (*(v6 + 8))(v3, v4);
    *v2 = v14;
    v2[1] = v16;
    v2[2] = v20;
    v2[3] = v19;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

void QueryDefinition.PredicateTemplates.init(comparison:stringSearch:idSearch:searchableItem:all:suggested:valueSearch:metadata:)(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a7;
  *a9 = a1;
  *(a9 + 8) = (a2 & 1) == 0;
  *(a9 + 9) = (a3 & 1) == 0;
  *(a9 + 10) = (a4 & 1) == 0;
  *(a9 + 11) = (a5 & 1) == 0;
  *(a9 + 12) = 1;
  *(a9 + 13) = (a6 & 1) == 0;
  v10 = a8[1];
  *(a9 + 16) = *a8;
  *(a9 + 32) = v10;
  *(a9 + 48) = v9;
  OUTLINED_FUNCTION_101_5();
}

double static QueryDefinition.PredicateTemplates.all.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 257;
  *(a1 + 10) = 16842753;
  return OUTLINED_FUNCTION_38_19(a1);
}

double static QueryDefinition.PredicateTemplates.valid.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 257;
  *(a1 + 10) = 16777473;
  return OUTLINED_FUNCTION_38_19(a1);
}

double sub_1C8EEF0C8@<D0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = MEMORY[0x1E69E7CC0];
  *(a5 + 8) = a1;
  *(a5 + 9) = a2;
  *(a5 + 10) = a3;
  *(a5 + 11) = 257;
  *(a5 + 13) = a4;
  return OUTLINED_FUNCTION_38_19(a5);
}

uint64_t static QueryDefinition.PredicateTemplates.valueSearch(input:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 257;
  *(a2 + 10) = 16843009;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = v2;
}

uint64_t QueryDefinition.PredicateTemplates.merging(with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v25 = *(a1 + 9);
  v26 = *(a1 + 10);
  v27 = *(a1 + 11);
  v23 = *(a1 + 8);
  v24 = *(a1 + 12);
  v5 = a1[6];
  v19 = *(v2 + 9);
  v20 = *(v2 + 10);
  v21 = *(v2 + 11);
  v22 = *(a1 + 13);
  v17 = *(v2 + 8);
  v18 = *(v2 + 12);
  v6 = *(v2 + 13);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v28 = *v2;

  sub_1C8D37D9C(v12);
  v13 = v11;
  if ((~v11 & 0xF000000000000007) == 0)
  {
    sub_1C8CD1784(v5);
    v13 = v5;
  }

  *a2 = v28;
  *(a2 + 8) = v17 & v23;
  *(a2 + 9) = v19 & v25;
  *(a2 + 10) = v20 & v26;
  *(a2 + 11) = v21 & v27;
  *(a2 + 12) = v18 & v24;
  *(a2 + 13) = v6 & v22;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v13;
  sub_1C8CD1784(v11);
  v14 = OUTLINED_FUNCTION_249();

  return sub_1C8D16DD0(v14, v15);
}

uint64_t QueryDefinition.PredicateTemplates.fetchSampleInvocations()()
{
  if (!v0[3])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = [objc_opt_self() sharedProvider];
  v5 = sub_1C9063EBC();
  v6 = OUTLINED_FUNCTION_178_3();
  v8 = [v6 v7];

  sub_1C8D72FC8();
  sub_1C906419C();

  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_147_2();
  static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_228_4();
  return v3;
}

uint64_t sub_1C8EEF3BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6553676E69727473 && a2 == 0xEC00000068637261;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6863726165536469 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6261686372616573 && a2 == 0xEE006D657449656CLL;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7105633 && a2 == 0xE300000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6574736567677573 && a2 == 0xE900000000000064;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x61655365756C6176 && a2 == 0xEB00000000686372)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9064C2C();

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

uint64_t sub_1C8EEF698(char a1)
{
  result = 0x73697261706D6F63;
  switch(a1)
  {
    case 1:
      result = 0x6553676E69727473;
      break;
    case 2:
      result = 0x6863726165536469;
      break;
    case 3:
      result = 0x6261686372616573;
      break;
    case 4:
      result = 7105633;
      break;
    case 5:
      result = 0x64696C6176;
      break;
    case 6:
      result = 0x6574736567677573;
      break;
    case 7:
      result = 0x617461646174656DLL;
      break;
    case 8:
      result = 0x61655365756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EEF7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EEF3BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EEF7DC(uint64_t a1)
{
  v2 = sub_1C8EF8D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EEF818(uint64_t a1)
{
  v2 = sub_1C8EF8D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void QueryDefinition.PredicateTemplates.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194B8, &qword_1C909F3C8);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_72();
  v10 = *v0;
  v27 = *(v0 + 8);
  v25 = *(v0 + 10);
  v26 = *(v0 + 9);
  v23 = *(v0 + 12);
  v24 = *(v0 + 11);
  v22 = *(v0 + 13);
  v18 = v0[2];
  v19 = v0[3];
  v20 = v0[5];
  v21 = v0[4];
  v11 = v0[6];
  v12 = v3[3];
  v13 = v3[4];
  v14 = v3;
  v16 = v15;
  OUTLINED_FUNCTION_217(v14, v12);
  v17 = sub_1C8EF8D48();

  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194C0, &qword_1C909F3D0);
  sub_1C8EF8D9C();
  OUTLINED_FUNCTION_35_18();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  if (v17)
  {

    (*(v6 + 8))(v1, v16);
  }

  else
  {

    OUTLINED_FUNCTION_275();
    sub_1C8DCE1D8();
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    OUTLINED_FUNCTION_119_1();
    sub_1C8D0BDD4();
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    sub_1C8EF8E50();
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    sub_1C8DCDA34();
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    OUTLINED_FUNCTION_219_1();
    sub_1C8DCD98C();
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    sub_1C8D94414();
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    sub_1C8D16DD0(v18, v19);
    sub_1C8EF8EA4();
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    sub_1C8D16E14(v18, v19);
    sub_1C8CD1784(v11);
    sub_1C8E2E5F0();
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    sub_1C8CD0FB0(v11);
    (*(v6 + 8))(v1, v16);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t QueryDefinition.PredicateTemplates.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 10);
  v7 = *(v1 + 11);
  v8 = *(v1 + 12);
  v9 = *(v1 + 13);
  v10 = v1[3];
  v12 = v1[2];
  v13 = v1[5];
  v14 = v1[4];
  v15 = v1[6];
  sub_1C8D03E64();
  sub_1C9064D9C();
  sub_1C9064D9C();
  sub_1C9064D9C();
  sub_1C9064D9C();
  sub_1C9064D9C();
  sub_1C9064D9C();
  if (v10)
  {
    OUTLINED_FUNCTION_284();
    sub_1C9063FBC();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  if ((~v15 & 0xF000000000000007) == 0)
  {
    return OUTLINED_FUNCTION_283();
  }

  OUTLINED_FUNCTION_284();
  return TypeInstance.hash(into:)(a1);
}

uint64_t QueryDefinition.PredicateTemplates.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  QueryDefinition.PredicateTemplates.hash(into:)(v1);
  return sub_1C9064DBC();
}

void QueryDefinition.PredicateTemplates.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194C8, &qword_1C909F3D8);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_233();
  v9 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8EF8D48();
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194C0, &qword_1C909F3D0);
    sub_1C8EF8EF8();
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_178_3();
    OUTLINED_FUNCTION_36_17();
    sub_1C9064A6C();
    v18 = v21;
    sub_1C8DCE280();
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    sub_1C90649EC();
    v26 = v21;
    sub_1C8D0BD80();
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    sub_1C90649EC();
    v31 = v21;
    sub_1C8EF8FAC();
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    sub_1C90649EC();
    v30 = v21;
    sub_1C8DCDE28();
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    sub_1C90649EC();
    v29 = v21;
    sub_1C8DCDDD4();
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    sub_1C90649EC();
    v28 = v21;
    sub_1C8D943C0();
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    sub_1C90649EC();
    v27 = v21;
    sub_1C8EF9000();
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    sub_1C90649EC();
    v10 = v21;
    v17 = v22;
    sub_1C8E2E59C();
    OUTLINED_FUNCTION_8_37();
    sub_1C90649EC();
    v11 = OUTLINED_FUNCTION_5_9();
    v12(v11);
    v13 = v25;
    *&v19[0] = v21;
    BYTE8(v19[0]) = v21;
    BYTE9(v19[0]) = v21;
    BYTE10(v19[0]) = v21;
    BYTE11(v19[0]) = v21;
    BYTE12(v19[0]) = v21;
    BYTE13(v19[0]) = v21;
    v19[1] = v21;
    v19[2] = v22;
    v20 = v25;
    v14 = v19[0];
    v15 = v21;
    v16 = v22;
    *(v4 + 48) = v25;
    *(v4 + 16) = v15;
    *(v4 + 32) = v16;
    *v4 = v14;
    sub_1C8D3A7FC(v19, &v21);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *&v21 = v18;
    WORD4(v21) = __PAIR16__(v31, v26);
    WORD5(v21) = __PAIR16__(v29, v30);
    BYTE12(v21) = v28;
    BYTE13(v21) = v27;
    v22 = v10;
    v23 = v17;
    v24 = v13;
    sub_1C8D3ABC4(&v21);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF0160()
{
  sub_1C9064D7C();
  QueryDefinition.PredicateTemplates.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t QueryDefinition.templates.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v8 = *(v1 + 40);
  v3 = v8;
  v9 = *(v1 + 56);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1C8D3A7FC(v7, v6);
}

void QueryDefinition.init(identifier:predicates:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = 257;
  *(a3 + 18) = 16843009;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0xF000000000000007;
  *(a3 + 64) = a2;
  OUTLINED_FUNCTION_101_5();
}

uint64_t sub_1C8EF024C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574616C706D6574 && a2 == 0xE900000000000073;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7461636964657270 && a2 == 0xEA00000000007365)
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

uint64_t sub_1C8EF0370(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x6574616C706D6574;
  }

  return 0x7461636964657270;
}

uint64_t sub_1C8EF03D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF024C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF0400(uint64_t a1)
{
  v2 = sub_1C8EF9054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF043C(uint64_t a1)
{
  v2 = sub_1C8EF9054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void QueryDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194D0, &qword_1C909F3E0);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  v8 = *v0;
  v9 = *(v0 + 3);
  v19 = *(v0 + 1);
  v20 = v9;
  v21 = *(v0 + 5);
  v13 = v0[8];
  v22 = v0[7];
  v10 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8EF9054();

  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  *&v15 = v8;
  v14[0] = 0;
  sub_1C8C9FB9C();
  sub_1C9064B8C();
  if (v1)
  {
  }

  else
  {

    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v14[63] = 1;
    sub_1C8D3A7FC(&v19, v14);
    sub_1C8D3DD18();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_112_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194D8, &qword_1C909F3E8);
    sub_1C8EF90A8();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v11 = OUTLINED_FUNCTION_174_4();
  v12(v11, v4);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void QueryDefinition.hash(into:)(uint64_t a1)
{
  v3 = v1[8];
  v4 = *v1;
  TypeIdentifier.hash(into:)(a1);
  QueryDefinition.PredicateTemplates.hash(into:)(a1);
  OUTLINED_FUNCTION_249();

  sub_1C8D03AE4();
}

uint64_t QueryDefinition.hashValue.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[8];
  v4 = OUTLINED_FUNCTION_298();
  v12 = OUTLINED_FUNCTION_252_1(v4, v5, v6, v7, v8, v9, v10, v11, v2, v14[0]);
  TypeIdentifier.hash(into:)(v12);
  QueryDefinition.PredicateTemplates.hash(into:)(v14);
  sub_1C8D03AE4();
  return sub_1C9064DBC();
}

void QueryDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194E0, &unk_1C909F3F0);
  OUTLINED_FUNCTION_11(v31);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_233();
  v8 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8EF9054();
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v13[0]) = 0;
    sub_1C8CB892C();
    OUTLINED_FUNCTION_153_0();
    sub_1C9064A6C();
    v12 = v14;
    v22 = 1;
    sub_1C8D3DDC0();
    OUTLINED_FUNCTION_153_0();
    sub_1C9064A6C();
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194D8, &qword_1C909F3E8);
    v20 = 2;
    sub_1C8EF917C();
    sub_1C9064A6C();
    v9 = OUTLINED_FUNCTION_52_14();
    v10(v9, v31);
    v11 = v21;
    v13[0] = v12;
    *&v13[1] = v27;
    *&v13[3] = v28;
    *&v13[5] = v29;
    v13[7] = v30;
    v13[8] = v21;
    memcpy(v4, v13, 0x48uLL);
    sub_1C8EF7C84(v13, &v14);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v14 = v12;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v11;
    sub_1C8EF9230(&v14);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF0AA8()
{
  sub_1C9064D7C();
  QueryDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

void TypeDefinition.debugDescription.getter()
{
  OUTLINED_FUNCTION_164();
  v2 = type metadata accessor for EnumerationCaseDefinition(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_109_3();
  v5 = v1[1];
  switch(*(v1 + 96))
  {
    case 1:
      v7 = v1[3];
      v8 = v1[4];
      goto LABEL_5;
    case 2:
      v9 = *(v5 + 16);
      if (v9)
      {
        v24 = MEMORY[0x1E69E7CC0];
        sub_1C8CA6480();
        v10 = v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v11 = *(v3 + 72);
        do
        {
          v12 = OUTLINED_FUNCTION_148();
          sub_1C8EF92B4(v12, v13, v14);
          v16 = *v0;
          v15 = v0[1];

          OUTLINED_FUNCTION_87_6();
          sub_1C8EF8C9C(v0, v17);
          v18 = *(v24 + 16);
          if (v18 >= *(v24 + 24) >> 1)
          {
            sub_1C8CA6480();
          }

          *(v24 + 16) = v18 + 1;
          v19 = v24 + 16 * v18;
          *(v19 + 32) = v16;
          *(v19 + 40) = v15;
          v10 += v11;
          --v9;
        }

        while (v9);
      }

      v20 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
      OUTLINED_FUNCTION_0_0();
      sub_1C8D28184(v22, &qword_1EC312558, &qword_1C9066990);
      sub_1C9063E9C();

      v23 = OUTLINED_FUNCTION_253();
      MEMORY[0x1CCA81A90](v23);
      goto LABEL_12;
    case 3:
    case 5:
      goto LABEL_14;
    case 4:
      v7 = *v1;
      v8 = v1[1];
LABEL_5:
      MEMORY[0x1CCA81A90](v7, v8);
      goto LABEL_13;
    default:
      v6 = TypeIdentifier.PrimitiveTypeIdentifier.debugDescription.getter();
      MEMORY[0x1CCA81A90](v6);
LABEL_12:

LABEL_13:
      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
LABEL_14:
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t DynamicEnumerationDefinition.init(toolIdentifier:parameterKey:typeIdentifier:enumeratedTypeIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v7 = *a5;
  v8 = *a6;
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = v7;
  a7[5] = v8;
  return result;
}

uint64_t sub_1C8EF0E30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564496C6F6F74 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEC00000079654B72;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000018 && 0x80000001C90CCB30 == a2)
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

unint64_t sub_1C8EF0FA4(char a1)
{
  result = 0x6E6564496C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 0x6E65644965707974;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EF1044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF0E30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF106C(uint64_t a1)
{
  v2 = sub_1C8EF9260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF10A8(uint64_t a1)
{
  v2 = sub_1C8EF9260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DynamicEnumerationDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194E8, &qword_1C909F400);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_171_5();
  v14 = *(v0 + 40);
  v15 = *(v0 + 32);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_217(v10, v11);
  sub_1C8EF9260();
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_187_7();
  if (!v1)
  {
    OUTLINED_FUNCTION_277_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
    sub_1C8C9FB9C();

    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_193_4();

    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_193_4();
  }

  v12 = OUTLINED_FUNCTION_174_4();
  v13(v12, v4);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t DynamicEnumerationDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_161_5();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1C9063FBC();
  OUTLINED_FUNCTION_145();
  sub_1C9063FBC();
  v3 = OUTLINED_FUNCTION_297();
  TypeIdentifier.hash(into:)(v3);
  v4 = OUTLINED_FUNCTION_297();
  return TypeIdentifier.hash(into:)(v4);
}

uint64_t DynamicEnumerationDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_18_20(v7, v8, v9, v10, v11, v12, v13, v14, v34, v35);
  sub_1C9063FBC();
  OUTLINED_FUNCTION_104_2();
  v15 = sub_1C9063FBC();
  v23 = OUTLINED_FUNCTION_252_1(v15, v16, v17, v18, v19, v20, v21, v22, v5, v36);
  v24 = TypeIdentifier.hash(into:)(v23);
  v32 = OUTLINED_FUNCTION_252_1(v24, v25, v26, v27, v28, v29, v30, v31, v6, v37);
  TypeIdentifier.hash(into:)(v32);
  return sub_1C9064DBC();
}

void DynamicEnumerationDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194F0, &unk_1C909F408);
  OUTLINED_FUNCTION_11(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_86();
  v19 = v12[3];
  v20 = v12[4];
  v21 = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_217(v21, v22);
  sub_1C8EF9260();
  sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    LOBYTE(a10) = 0;
    v23 = OUTLINED_FUNCTION_223_3();
    v31 = v24;
    OUTLINED_FUNCTION_277_0();
    v25 = OUTLINED_FUNCTION_223_3();
    v30 = v26;
    v29 = v25;
    sub_1C8CB892C();
    OUTLINED_FUNCTION_63_12();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_63_12();
    sub_1C9064A6C();
    v27 = OUTLINED_FUNCTION_12_2();
    v28(v27);
    *v14 = v23;
    v14[1] = v31;
    v14[2] = v29;
    v14[3] = v30;
    v14[4] = a10;
    v14[5] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF1658()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[2];
  sub_1C9064D7C();
  DynamicEnumerationDefinition.hash(into:)();
  return sub_1C9064DBC();
}

void static ComparisonPredicateTypeOrPredicate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for ComparisonPredicate(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = type metadata accessor for ComparisonPredicateTypeOrPredicate(0);
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v47 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129C0, &qword_1C9068DA0);
  OUTLINED_FUNCTION_9(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_51();
  v27 = (v0 + *(v26 + 56));
  sub_1C8EF92B4(v4, v0, type metadata accessor for ComparisonPredicateTypeOrPredicate);
  sub_1C8EF92B4(v2, v27, type metadata accessor for ComparisonPredicateTypeOrPredicate);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_36();
    sub_1C8EF92B4(v0, v18, v28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_85_5();
      v29 = OUTLINED_FUNCTION_249();
      sub_1C8CCEBBC(v29, v30, v31);
      v32 = OUTLINED_FUNCTION_278();
      static ComparisonPredicate.== infix(_:_:)(v32, v33);
      sub_1C8EF8C9C(v11, type metadata accessor for ComparisonPredicate);
      sub_1C8EF8C9C(v18, type metadata accessor for ComparisonPredicate);
LABEL_9:
      sub_1C8EF8C9C(v0, type metadata accessor for ComparisonPredicateTypeOrPredicate);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_27_16();
    sub_1C8EF8C9C(v18, v39);
  }

  else
  {
    OUTLINED_FUNCTION_6_36();
    v34 = OUTLINED_FUNCTION_276();
    sub_1C8EF92B4(v34, v35, v36);
    v37 = v21[1];
    v50[0] = *v21;
    v50[1] = v37;
    v38 = v21[3];
    v50[2] = v21[2];
    v50[3] = v38;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v40 = v27[1];
      v49[0] = *v27;
      v49[1] = v40;
      v41 = v27[3];
      v43 = *v27;
      v42 = v27[1];
      v49[2] = v27[2];
      v49[3] = v41;
      v44 = v21[1];
      v48[0] = *v21;
      v48[1] = v44;
      v45 = v21[3];
      v48[2] = v21[2];
      v48[3] = v45;
      v47[0] = v43;
      v47[1] = v42;
      v46 = v27[3];
      v47[2] = v27[2];
      v47[3] = v46;
      static ComparisonPredicateType.== infix(_:_:)(v48);
      sub_1C8D07050(v49);
      sub_1C8D07050(v50);
      goto LABEL_9;
    }

    sub_1C8D07050(v50);
  }

  sub_1C8D16D78(v0, &qword_1EC3129C0, &qword_1C9068DA0);
LABEL_10:
  OUTLINED_FUNCTION_163();
}

uint64_t static ComparisonPredicateType.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  v10 = v3[7];
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  v14 = v2[5];
  v15 = v1 == *v2 && v4 == v2[1];
  v16 = v2[6];
  v20 = v2[7];
  v21 = v10;
  if (!v15 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_8;
  }

  v23[0] = v5;
  v23[1] = v6;
  v23[2] = v7;
  v23[3] = v8;
  v23[4] = v9;
  v22[0] = v11;
  v22[1] = v12;
  v22[2] = v13;
  v22[3] = v14;
  v22[4] = v16;

  v17 = static EntityPropertyDefinition.== infix(_:_:)(v23);

  if (v17)
  {
    v23[0] = v21;
    v22[0] = v20;
    sub_1C8D076FC(v21);
    sub_1C8D076FC(v20);
    v18 = static ComparisonPredicateType.ComparisonType.== infix(_:_:)(v23, v22);
    sub_1C8D07700(v20);
    sub_1C8D07700(v21);
  }

  else
  {
LABEL_8:
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1C8EF1AAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7461636964657270 && a2 == 0xED00006570795465;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
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

uint64_t sub_1C8EF1BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF1AAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF1BE8(uint64_t a1)
{
  v2 = sub_1C8EF9310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF1C24(uint64_t a1)
{
  v2 = sub_1C8EF9310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF1C60(uint64_t a1)
{
  v2 = sub_1C8EF9364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF1C9C(uint64_t a1)
{
  v2 = sub_1C8EF9364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF1CD8(uint64_t a1)
{
  v2 = sub_1C8EF93B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF1D14(uint64_t a1)
{
  v2 = sub_1C8EF93B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ComparisonPredicateTypeOrPredicate.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v66 = v20;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194F8, &qword_1C909F418);
  v65 = OUTLINED_FUNCTION_11(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  v63 = type metadata accessor for ComparisonPredicate(0);
  v30 = OUTLINED_FUNCTION_13_1(v63);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_0(v34 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319500, &qword_1C909F420);
  OUTLINED_FUNCTION_4_22(v35, &a16);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_142();
  v39 = type metadata accessor for ComparisonPredicateTypeOrPredicate(0);
  v40 = OUTLINED_FUNCTION_13_1(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  v45 = (v44 - v43);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319508, &qword_1C909F428);
  OUTLINED_FUNCTION_11(v46);
  v48 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_15_0();
  v52 = v25[4];
  OUTLINED_FUNCTION_217(v25, v25[3]);
  sub_1C8EF9310();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_6_36();
  sub_1C8EF92B4(v66, v45, v53);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C8CCEBBC(v45, v64, type metadata accessor for ComparisonPredicate);
    LOBYTE(v67[0]) = 1;
    sub_1C8EF9364();
    OUTLINED_FUNCTION_23_23();
    sub_1C9064ACC();
    OUTLINED_FUNCTION_83_6();
    sub_1C8EF8BD0(v54, v55);
    sub_1C9064B8C();
    v56 = OUTLINED_FUNCTION_30();
    v57(v56, v65);
    OUTLINED_FUNCTION_27_16();
    sub_1C8EF8C9C(v64, v58);
    (*(v48 + 8))(v21, v46);
  }

  else
  {
    v59 = v45[1];
    v67[0] = *v45;
    v67[1] = v59;
    v60 = v45[3];
    v67[2] = v45[2];
    v67[3] = v60;
    sub_1C8EF93B8();
    OUTLINED_FUNCTION_23_23();
    sub_1C9064ACC();
    sub_1C8EF940C();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_296(&a15);
    v61 = OUTLINED_FUNCTION_253();
    v62(v61);
    (*(v48 + 8))(v21, v46);
    sub_1C8D07050(v67);
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void ComparisonPredicateTypeOrPredicate.hash(into:)()
{
  OUTLINED_FUNCTION_164();
  v2 = v0;
  v3 = type metadata accessor for ComparisonPredicate(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  v7 = type metadata accessor for ComparisonPredicateTypeOrPredicate(0);
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_6_36();
  sub_1C8EF92B4(v2, v13, v14);
  OUTLINED_FUNCTION_276();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_85_5();
    v15 = OUTLINED_FUNCTION_209();
    sub_1C8CCEBBC(v15, v16, v17);
    MEMORY[0x1CCA82810](1);
    ComparisonPredicate.hash(into:)();
    OUTLINED_FUNCTION_27_16();
    sub_1C8EF8C9C(v1, v18);
  }

  else
  {
    v19 = *v13;
    v20 = v13[1];
    v21 = v13[2];
    v22 = v13[3];
    v23 = v13[4];
    v24 = v13[5];
    v26 = v13[6];
    v25 = v13[7];
    MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_145();
    sub_1C9063FBC();
    OUTLINED_FUNCTION_117();
    sub_1C9063FBC();
    OUTLINED_FUNCTION_118();
    sub_1C9063FBC();
    TypeInstance.hash(into:)();
    ComparisonPredicateType.ComparisonType.hash(into:)();

    sub_1C8D07700(v25);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8EF22CC(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_298();
  a1(v3);
  return sub_1C9064DBC();
}

void ComparisonPredicateTypeOrPredicate.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v90 = v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319528, &qword_1C909F430);
  OUTLINED_FUNCTION_11(v93);
  v95 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97();
  v98 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319530, &qword_1C909F438);
  v10 = OUTLINED_FUNCTION_11(v9);
  v91 = v11;
  v92 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  v94 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319538, &qword_1C909F440);
  v17 = OUTLINED_FUNCTION_11(v16);
  v96 = v18;
  v97 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_38();
  v22 = type metadata accessor for ComparisonPredicateTypeOrPredicate(0);
  v23 = OUTLINED_FUNCTION_13_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v86 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v86 - v33;
  v35 = v2[3];
  v36 = v2[4];
  v37 = OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_217(v37, v38);
  sub_1C8EF9310();
  sub_1C9064DEC();
  if (!v0)
  {
    v86 = v31;
    v87 = v34;
    v88 = v28;
    v89 = v22;
    v39 = v97;
    v103 = v2;
    v40 = sub_1C9064A9C();
    sub_1C8CB8914(v40, 0);
    if (v42 != v41 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v45 == v46)
      {
        __break(1u);
        return;
      }

      v47 = *(v44 + v43);
      sub_1C8CB891C(v43 + 1);
      v49 = v48;
      v51 = v50;
      swift_unknownObjectRelease();
      v52 = v49 == v51 >> 1;
      v53 = v95;
      if (v52)
      {
        if (v47)
        {
          LOBYTE(v99) = 1;
          sub_1C8EF9364();
          OUTLINED_FUNCTION_98_4();
          sub_1C906498C();
          type metadata accessor for ComparisonPredicate(0);
          OUTLINED_FUNCTION_83_6();
          sub_1C8EF8BD0(v65, v66);
          v67 = v88;
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          v70 = *(v53 + 8);
          v71 = OUTLINED_FUNCTION_117();
          v72(v71);
          v73 = OUTLINED_FUNCTION_54_10();
          v74(v73, v39);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_29_19();
          v76 = v67;
        }

        else
        {
          LOBYTE(v99) = 0;
          sub_1C8EF93B8();
          v63 = v94;
          OUTLINED_FUNCTION_98_4();
          sub_1C906498C();
          v64 = v96;
          sub_1C8EF9460();
          v68 = v92;
          sub_1C9064A6C();
          v69 = (v91 + 8);
          swift_unknownObjectRelease();
          (*v69)(v63, v68);
          v77 = *(v64 + 8);
          v78 = OUTLINED_FUNCTION_114_0();
          v79(v78);
          v80 = v100;
          v81 = v86;
          *v86 = v99;
          v81[1] = v80;
          v82 = v102;
          v81[2] = v101;
          v81[3] = v82;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_29_19();
          v76 = v81;
        }

        v83 = v87;
        sub_1C8CCEBBC(v76, v87, v75);
        OUTLINED_FUNCTION_29_19();
        sub_1C8CCEBBC(v83, v84, v85);
        __swift_destroy_boxed_opaque_existential_1(v2);
        goto LABEL_12;
      }
    }

    v54 = v89;
    v55 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v57 = v56;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v57 = v54;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v59 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v55);
    (*(v60 + 104))(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = OUTLINED_FUNCTION_54_10();
    v62(v61, v39);
    v2 = v103;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_12:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF2998(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C9064D7C();
  a4(v6);
  return sub_1C9064DBC();
}

uint64_t ComparisonPredicateType.ComparisonType.description.getter()
{
  v1 = *v0;
  switch((*v0 >> 57) & 8 | *v0 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 2112801;
      goto LABEL_13;
    case 2uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 8254;
      goto LABEL_8;
    case 3uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 2112830;
      goto LABEL_13;
    case 4uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 8252;
LABEL_8:
      v4 = 0xE200000000000000;
      goto LABEL_24;
    case 5uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 2112828;
      goto LABEL_13;
    case 6uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x534E4941544E4F43;
      v4 = 0xE900000000000020;
      goto LABEL_24;
    case 7uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x544E4F4320544F4ELL;
      v4 = 0xED000020534E4941;
      goto LABEL_24;
    case 8uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x5720534E49474542;
      v3 = 541611081;
      goto LABEL_23;
    case 9uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x5449572053444E45;
      v4 = 0xEA00000000002048;
      goto LABEL_24;
    case 0xAuLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x4E20454854204E49;
      v4 = 0xEC00000020545845;
      goto LABEL_24;
    case 0xBuLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x4C20454854204E49;
      v3 = 542397249;
LABEL_23:
      v4 = v3 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      goto LABEL_24;
    case 0xCuLL:
      OUTLINED_FUNCTION_5_1();
      sub_1C906478C();
      MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CCAF0);
      sub_1C90648BC();
      MEMORY[0x1CCA81A90](29536, 0xE200000000000000);
      return v7;
    case 0xDuLL:
      v5 = 0x56204F4E20534148;
      if (v1 != 0x100000000000000DLL)
      {
        v5 = 0x5941444F54205349;
      }

      if (v1 == 0x1000000000000005)
      {
        return 0x554C415620534148;
      }

      else
      {
        return v5;
      }

    default:
      v7 = 0;
      v2 = 2112829;
LABEL_13:
      v4 = 0xE300000000000000;
LABEL_24:
      MEMORY[0x1CCA81A90](v2, v4);
      sub_1C90648BC();
      return v7;
  }
}

uint64_t static ComparisonPredicateType.ComparisonType.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch((*a1 >> 57) & 8 | *a1 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_14_1();
      if (v12 == 1)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    case 2uLL:
      OUTLINED_FUNCTION_14_1();
      if (v9 != 2)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 3uLL:
      OUTLINED_FUNCTION_14_1();
      if (v10 != 3)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 4uLL:
      OUTLINED_FUNCTION_14_1();
      if (v6 != 4)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 5uLL:
      OUTLINED_FUNCTION_14_1();
      if (v13 != 5)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 6uLL:
      OUTLINED_FUNCTION_14_1();
      if (v17 != 6)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 7uLL:
      OUTLINED_FUNCTION_14_1();
      if (v11 != 7)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 8uLL:
      OUTLINED_FUNCTION_14_1();
      if (v19 == 8)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    case 9uLL:
      OUTLINED_FUNCTION_14_1();
      if (v8 != 9)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 0xAuLL:
      OUTLINED_FUNCTION_14_1();
      if (v18 != 10)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 0xBuLL:
      OUTLINED_FUNCTION_14_1();
      if (v5 != 11)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 0xCuLL:
      OUTLINED_FUNCTION_14_1();
      if (v7 != 12)
      {
        goto LABEL_47;
      }

LABEL_35:
      v35 = v3 & 0xEFFFFFFFFFFFFFF8;
      v36 = v2 & 0xF8;
      goto LABEL_36;
    case 0xDuLL:
      if (v2 == 0x1000000000000005)
      {
        if (((v3 >> 57) & 8 | v3 & 7) != 0xD || v3 != 0x1000000000000005)
        {
          goto LABEL_47;
        }

        sub_1C8D07700(0x1000000000000005uLL);
        v16 = 0x1000000000000005;
      }

      else if (v2 == 0x100000000000000DLL)
      {
        OUTLINED_FUNCTION_14_1();
        if (v14 != 13 || v3 != 0x100000000000000DLL)
        {
LABEL_47:
          sub_1C8D076FC(v2);
          sub_1C8D076FC(v3);
          sub_1C8D07700(v2);
          sub_1C8D07700(v3);
          v30 = 0;
          return v30 & 1;
        }

        sub_1C8D07700(0x100000000000000DuLL);
        v16 = 0x100000000000000DLL;
      }

      else
      {
        OUTLINED_FUNCTION_14_1();
        if (v32 != 13 || v3 != 0x1000000000000015)
        {
          goto LABEL_47;
        }

        sub_1C8D07700(0x1000000000000015uLL);
        v16 = 0x1000000000000015;
      }

      sub_1C8D07700(v16);
      v30 = 1;
      return v30 & 1;
    default:
      OUTLINED_FUNCTION_14_1();
      if (v4)
      {
        goto LABEL_47;
      }

      v35 = v3;
      v36 = v2;
LABEL_36:
      sub_1C8D076FC(v3);
      sub_1C8D076FC(v2);
      sub_1C8D076FC(v2);
      v20 = sub_1C8D076FC(v3);
      v28 = OUTLINED_FUNCTION_106(v20, v21, v22, v23, v24, v25, v26, v27, v35, v36);
      v30 = static TypeIdentifier.== infix(_:_:)(v28, v29);
      sub_1C8D07700(v2);
      sub_1C8D07700(v3);
      sub_1C8D07700(v3);
      sub_1C8D07700(v2);
      return v30 & 1;
  }
}

uint64_t sub_1C8EF2F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F546C61757165 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61757145746F6ELL && a2 == 0xEA00000000006F54;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C6156736168 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C61566F4E736168 && a2 == 0xEA00000000006575;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000001C90CCB50 == a2;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001C90CCB70 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x736E6961746E6F63 && a2 == 0xE800000000000000;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x61746E6F43746F6ELL && a2 == 0xEB00000000736E69;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6957736E69676562 && a2 == 0xEA00000000006874;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6874695773646E65 && a2 == 0xE800000000000000;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x78654E6568546E69 && a2 == 0xE900000000000074;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x73614C6568546E69 && a2 == 0xE900000000000074;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7961646F547369 && a2 == 0xE700000000000000;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x6565777465427369 && a2 == 0xE90000000000006ELL)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1C9064C2C();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

unint64_t sub_1C8EF33E4(char a1)
{
  result = 0x6F546C61757165;
  switch(a1)
  {
    case 1:
      result = 0x6C61757145746F6ELL;
      break;
    case 2:
      result = 0x65756C6156736168;
      break;
    case 3:
      result = 0x6C61566F4E736168;
      break;
    case 4:
      result = 0x5472657461657267;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6E6168547373656CLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x736E6961746E6F63;
      break;
    case 9:
      result = 0x61746E6F43746F6ELL;
      break;
    case 10:
      result = 0x6957736E69676562;
      break;
    case 11:
      result = 0x6874695773646E65;
      break;
    case 12:
      result = 0x78654E6568546E69;
      break;
    case 13:
      result = 0x73614C6568546E69;
      break;
    case 14:
      result = 0x7961646F547369;
      break;
    case 15:
      result = 0x6565777465427369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EF35BC(uint64_t a1)
{
  v2 = sub_1C8EF96AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF35F8(uint64_t a1)
{
  v2 = sub_1C8EF96AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF363C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF2F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF3664@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8EF33DC();
  *a1 = result;
  return result;
}

uint64_t sub_1C8EF368C(uint64_t a1)
{
  v2 = sub_1C8EF94B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF36C8(uint64_t a1)
{
  v2 = sub_1C8EF94B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF3704(uint64_t a1)
{
  v2 = sub_1C8EF9754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3740(uint64_t a1)
{
  v2 = sub_1C8EF9754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF377C(uint64_t a1)
{
  v2 = sub_1C8EF9658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF37B8(uint64_t a1)
{
  v2 = sub_1C8EF9658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF37F4(uint64_t a1)
{
  v2 = sub_1C8EF99F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3830(uint64_t a1)
{
  v2 = sub_1C8EF99F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF386C(uint64_t a1)
{
  v2 = sub_1C8EF98A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF38A8(uint64_t a1)
{
  v2 = sub_1C8EF98A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF38E4(uint64_t a1)
{
  v2 = sub_1C8EF9850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3920(uint64_t a1)
{
  v2 = sub_1C8EF9850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF395C(uint64_t a1)
{
  v2 = sub_1C8EF98F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3998(uint64_t a1)
{
  v2 = sub_1C8EF98F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF39D4(uint64_t a1)
{
  v2 = sub_1C8EF994C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3A10(uint64_t a1)
{
  v2 = sub_1C8EF994C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF3A4C(uint64_t a1)
{
  v2 = sub_1C8EF95B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3A88(uint64_t a1)
{
  v2 = sub_1C8EF95B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF3AC4(uint64_t a1)
{
  v2 = sub_1C8EF9604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3B00(uint64_t a1)
{
  v2 = sub_1C8EF9604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF3B3C(uint64_t a1)
{
  v2 = sub_1C8EF9508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3B78(uint64_t a1)
{
  v2 = sub_1C8EF9508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF3BB4(uint64_t a1)
{
  v2 = sub_1C8EF955C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3BF0(uint64_t a1)
{
  v2 = sub_1C8EF955C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF3C2C(uint64_t a1)
{
  v2 = sub_1C8EF97FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3C68(uint64_t a1)
{
  v2 = sub_1C8EF97FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF3CA4(uint64_t a1)
{
  v2 = sub_1C8EF97A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3CE0(uint64_t a1)
{
  v2 = sub_1C8EF97A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF3D1C(uint64_t a1)
{
  v2 = sub_1C8EF9700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3D58(uint64_t a1)
{
  v2 = sub_1C8EF9700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EF3D94(uint64_t a1)
{
  v2 = sub_1C8EF99A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF3DD0(uint64_t a1)
{
  v2 = sub_1C8EF99A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ComparisonPredicateType.ComparisonType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  v179 = v21;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319540, &qword_1C909F448);
  v28 = OUTLINED_FUNCTION_11(v27);
  v174 = v29;
  v175 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  v173 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319548, &qword_1C909F450);
  OUTLINED_FUNCTION_4_22(v34, &v172);
  v146 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319550, &qword_1C909F458);
  v41 = OUTLINED_FUNCTION_11(v40);
  v171 = v42;
  v172 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  v170 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319558, &qword_1C909F460);
  v48 = OUTLINED_FUNCTION_11(v47);
  v168 = v49;
  v169 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_97();
  v167 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319560, &qword_1C909F468);
  v55 = OUTLINED_FUNCTION_11(v54);
  v165 = v56;
  v166 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_97();
  v164 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319568, &qword_1C909F470);
  v62 = OUTLINED_FUNCTION_11(v61);
  v162 = v63;
  v163 = v62;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_97();
  v161 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319570, &qword_1C909F478);
  v69 = OUTLINED_FUNCTION_11(v68);
  v159 = v70;
  v160 = v69;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319578, &qword_1C909F480);
  OUTLINED_FUNCTION_4_22(v75, &a17);
  v157 = v76;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319580, &qword_1C909F488);
  OUTLINED_FUNCTION_4_22(v81, &a14);
  v155 = v82;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319588, &qword_1C909F490);
  OUTLINED_FUNCTION_4_22(v87, &a11);
  v153 = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319590, &qword_1C909F498);
  OUTLINED_FUNCTION_4_22(v93, &v180);
  v151 = v94;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319598, &qword_1C909F4A0);
  OUTLINED_FUNCTION_4_22(v99, &v177);
  v149 = v100;
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3195A0, &qword_1C909F4A8);
  OUTLINED_FUNCTION_4_22(v105, &v169);
  v145 = v106;
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3195A8, &qword_1C909F4B0);
  OUTLINED_FUNCTION_4_22(v111, &v166);
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3195B0, &qword_1C909F4B8);
  OUTLINED_FUNCTION_11(v116);
  v148 = v117;
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3195B8, &qword_1C909F4C0);
  OUTLINED_FUNCTION_11(v121);
  v147 = v122;
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_15_0();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3195C0, &qword_1C909F4C8);
  v177 = OUTLINED_FUNCTION_11(v126);
  v178 = v127;
  v129 = *(v128 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_38();
  v131 = *v20;
  v132 = v26;
  v133 = v26[3];
  v134 = v132[4];
  OUTLINED_FUNCTION_217(v132, v133);
  sub_1C8EF94B4();
  v176 = v22;
  sub_1C9064E1C();
  switch((v131 >> 57) & 8 | v131 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_277_0();
      sub_1C8EF99A0();
      OUTLINED_FUNCTION_75_3();
      a10 = v121;
      sub_1C8C9FB9C();
      sub_1C9064B8C();
      v135 = OUTLINED_FUNCTION_37_18(&v174);
      goto LABEL_19;
    case 2uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 4;
      sub_1C8EF98A4();
      OUTLINED_FUNCTION_16_0();
      a10 = v121;
      sub_1C8C9FB9C();
      v121 = v150;
      OUTLINED_FUNCTION_67();
      v137 = &v176;
      goto LABEL_16;
    case 3uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 5;
      sub_1C8EF9850();
      OUTLINED_FUNCTION_16_0();
      a10 = v121;
      sub_1C8C9FB9C();
      v121 = v152;
      OUTLINED_FUNCTION_67();
      v137 = &v179;
      goto LABEL_16;
    case 4uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 6;
      sub_1C8EF97FC();
      OUTLINED_FUNCTION_16_0();
      a10 = v121;
      sub_1C8C9FB9C();
      v121 = v154;
      OUTLINED_FUNCTION_67();
      v137 = &a10;
      goto LABEL_16;
    case 5uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 7;
      sub_1C8EF97A8();
      OUTLINED_FUNCTION_16_0();
      a10 = v121;
      sub_1C8C9FB9C();
      v121 = v156;
      OUTLINED_FUNCTION_67();
      v137 = &a13;
      goto LABEL_16;
    case 6uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 8;
      sub_1C8EF9754();
      OUTLINED_FUNCTION_16_0();
      a10 = v121;
      sub_1C8C9FB9C();
      v121 = v158;
      OUTLINED_FUNCTION_67();
      v137 = &a16;
LABEL_16:
      v142 = *(v137 - 32);
      goto LABEL_17;
    case 7uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 9;
      sub_1C8EF9700();
      OUTLINED_FUNCTION_16_0();
      a10 = v121;
      sub_1C8C9FB9C();
      v121 = v160;
      OUTLINED_FUNCTION_67();
      goto LABEL_17;
    case 8uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 10;
      sub_1C8EF96AC();
      OUTLINED_FUNCTION_16_0();
      a10 = v121;
      sub_1C8C9FB9C();
      v121 = v163;
      OUTLINED_FUNCTION_67();
      goto LABEL_17;
    case 9uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 11;
      sub_1C8EF9658();
      OUTLINED_FUNCTION_16_0();
      a10 = v121;
      sub_1C8C9FB9C();
      v121 = v166;
      OUTLINED_FUNCTION_67();
      goto LABEL_17;
    case 0xAuLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 12;
      sub_1C8EF9604();
      OUTLINED_FUNCTION_16_0();
      a10 = v121;
      sub_1C8C9FB9C();
      v121 = v169;
      OUTLINED_FUNCTION_67();
      goto LABEL_17;
    case 0xBuLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 13;
      sub_1C8EF95B0();
      OUTLINED_FUNCTION_16_0();
      a10 = v121;
      sub_1C8C9FB9C();
      v121 = v172;
      OUTLINED_FUNCTION_67();
      goto LABEL_17;
    case 0xCuLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 15;
      sub_1C8EF9508();
      OUTLINED_FUNCTION_16_0();
      a10 = v121;
      sub_1C8C9FB9C();
      v121 = v175;
      OUTLINED_FUNCTION_67();
LABEL_17:
      v135 = OUTLINED_FUNCTION_241();
      goto LABEL_18;
    case 0xDuLL:
      if (v131 == 0x1000000000000005)
      {
        LOBYTE(a10) = 2;
        sub_1C8EF994C();
        OUTLINED_FUNCTION_99(&v164);
        OUTLINED_FUNCTION_296(&v165);
        v140 = v133;
        v141 = &v166;
      }

      else if (v131 == 0x100000000000000DLL)
      {
        LOBYTE(a10) = 3;
        sub_1C8EF98F8();
        OUTLINED_FUNCTION_99(&v167);
        OUTLINED_FUNCTION_296(&v168);
        v140 = v133;
        v141 = &v169;
      }

      else
      {
        LOBYTE(a10) = 14;
        sub_1C8EF955C();
        OUTLINED_FUNCTION_99(&v170);
        OUTLINED_FUNCTION_296(&v171);
        v140 = v133;
        v141 = &v172;
      }

      v139(v140, *(v141 - 32));
      (*(v178 + 8))(v20, v121);
      goto LABEL_20;
    default:
      LOBYTE(a10) = 0;
      sub_1C8EF99F4();
      OUTLINED_FUNCTION_75_3();
      a10 = v131;
      sub_1C8C9FB9C();
      sub_1C9064B8C();
      v135 = OUTLINED_FUNCTION_45(&v173);
LABEL_18:
      v138 = v121;
LABEL_19:
      v136(v135, v138);
      v143 = OUTLINED_FUNCTION_47_3();
      v144(v143, v133);
LABEL_20:
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t ComparisonPredicateType.ComparisonType.hash(into:)()
{
  v1 = *v0;
  switch((*v0 >> 57) & 8 | *v0 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_79();
      v2 = 1;
      goto LABEL_18;
    case 2uLL:
      OUTLINED_FUNCTION_79();
      v2 = 4;
      goto LABEL_18;
    case 3uLL:
      OUTLINED_FUNCTION_79();
      v2 = 5;
      goto LABEL_18;
    case 4uLL:
      OUTLINED_FUNCTION_79();
      v2 = 6;
      goto LABEL_18;
    case 5uLL:
      OUTLINED_FUNCTION_79();
      v2 = 7;
      goto LABEL_18;
    case 6uLL:
      OUTLINED_FUNCTION_79();
      v2 = 8;
      goto LABEL_18;
    case 7uLL:
      OUTLINED_FUNCTION_79();
      v2 = 9;
      goto LABEL_18;
    case 8uLL:
      OUTLINED_FUNCTION_79();
      v2 = 10;
      goto LABEL_18;
    case 9uLL:
      OUTLINED_FUNCTION_79();
      v2 = 11;
      goto LABEL_18;
    case 0xAuLL:
      OUTLINED_FUNCTION_79();
      v2 = 12;
      goto LABEL_18;
    case 0xBuLL:
      OUTLINED_FUNCTION_79();
      v2 = 13;
      goto LABEL_18;
    case 0xCuLL:
      OUTLINED_FUNCTION_79();
      v2 = 15;
      goto LABEL_18;
    case 0xDuLL:
      if (v1 == 0x1000000000000005)
      {
        v3 = 2;
      }

      else if (v1 == 0x100000000000000DLL)
      {
        v3 = 3;
      }

      else
      {
        v3 = 14;
      }

      return MEMORY[0x1CCA82810](v3);
    default:
      v2 = 0;
LABEL_18:
      MEMORY[0x1CCA82810](v2);
      v4 = OUTLINED_FUNCTION_297();
      return TypeIdentifier.hash(into:)(v4);
  }
}

uint64_t ComparisonPredicateType.ComparisonType.hashValue.getter()
{
  v2 = *v0;
  sub_1C9064D7C();
  ComparisonPredicateType.ComparisonType.hash(into:)();
  return sub_1C9064DBC();
}

void ComparisonPredicateType.ComparisonType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v262 = v20;
  v24 = v23;
  v257 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319650, &qword_1C909F4D0);
  v27 = OUTLINED_FUNCTION_11(v26);
  v244 = v28;
  v245 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97();
  v256 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319658, &qword_1C909F4D8);
  OUTLINED_FUNCTION_4_22(v33, &a18);
  v240 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  v254 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319660, &qword_1C909F4E0);
  v40 = OUTLINED_FUNCTION_11(v39);
  v242 = v41;
  v243 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_97();
  v255 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319668, &qword_1C909F4E8);
  OUTLINED_FUNCTION_4_22(v46, &a16);
  v239 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_97();
  v253 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319670, &qword_1C909F4F0);
  OUTLINED_FUNCTION_4_22(v52, &a14);
  v238 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_97();
  v252 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319678, &qword_1C909F4F8);
  OUTLINED_FUNCTION_4_22(v58, &a12);
  v237 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_97();
  v251 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319680, &qword_1C909F500);
  OUTLINED_FUNCTION_4_22(v64, &a10);
  v236 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_97();
  v260 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319688, &qword_1C909F508);
  OUTLINED_FUNCTION_4_22(v70, &v262);
  v235 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_97();
  v247 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319690, &qword_1C909F510);
  OUTLINED_FUNCTION_4_22(v76, &v261);
  v233 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_97();
  v259 = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319698, &qword_1C909F518);
  OUTLINED_FUNCTION_4_22(v82, &v259);
  v232 = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_97();
  v250 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196A0, &qword_1C909F520);
  OUTLINED_FUNCTION_4_22(v88, &v257);
  v231 = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_97();
  v249 = v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196A8, &qword_1C909F528);
  OUTLINED_FUNCTION_4_22(v94, &v255);
  v230 = v95;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_97();
  v248 = v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196B0, &qword_1C909F530);
  OUTLINED_FUNCTION_4_22(v100, &v253);
  v228 = v101;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_97();
  v258 = v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196B8, &qword_1C909F538);
  OUTLINED_FUNCTION_4_22(v106, &v249);
  v224 = v107;
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_97();
  v246 = v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196C0, &qword_1C909F540);
  OUTLINED_FUNCTION_4_22(v112, &v251);
  v226 = v113;
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_86();
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196C8, &qword_1C909F548);
  OUTLINED_FUNCTION_11(v117);
  v223 = v118;
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_72();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196D0, &qword_1C909F550);
  OUTLINED_FUNCTION_11(v122);
  v124 = v123;
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_73();
  v129 = v24[3];
  v128 = v24[4];
  v261 = v24;
  OUTLINED_FUNCTION_217(v24, v129);
  sub_1C8EF94B4();
  v130 = v262;
  sub_1C9064DEC();
  if (!v130)
  {
    v262 = v124;
    v131 = sub_1C9064A9C();
    sub_1C8CB8914(v131, 0);
    if (v133 != v132 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v136 == v137)
      {
        __break(1u);
        return;
      }

      v222 = *(v135 + v134);
      sub_1C8CB891C(v134 + 1);
      v139 = v138;
      v141 = v140;
      swift_unknownObjectRelease();
      if (v139 == v141 >> 1)
      {
        switch(v222)
        {
          case 1:
            OUTLINED_FUNCTION_277_0();
            sub_1C8EF99A0();
            OUTLINED_FUNCTION_15_1();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_98_4();
            sub_1C9064A6C();
            swift_unknownObjectRelease();
            v197 = OUTLINED_FUNCTION_45(&v250);
            v198(v197, v227);
            v199 = OUTLINED_FUNCTION_30_21();
            v200(v199);
            v196 = a10 | 1;
            break;
          case 2:
            LOBYTE(a10) = 2;
            sub_1C8EF994C();
            OUTLINED_FUNCTION_32_17();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296(&v248);
            v155(v246, v225);
            v156 = OUTLINED_FUNCTION_30_21();
            v157(v156);
            v158 = 0x1000000000000001;
            goto LABEL_28;
          case 3:
            LOBYTE(a10) = 3;
            sub_1C8EF98F8();
            OUTLINED_FUNCTION_15_1();
            swift_unknownObjectRelease();
            v159 = OUTLINED_FUNCTION_45(&v252);
            v160(v159, v229);
            v161 = OUTLINED_FUNCTION_30_21();
            v162(v161);
            v196 = 0x100000000000000DLL;
            break;
          case 4:
            LOBYTE(a10) = 4;
            sub_1C8EF98A4();
            OUTLINED_FUNCTION_15_1();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v169 = OUTLINED_FUNCTION_10_34(&v254);
            v170(v169);
            v171 = OUTLINED_FUNCTION_86_4();
            v172(v171);
            v173 = a10;
            goto LABEL_27;
          case 5:
            LOBYTE(a10) = 5;
            sub_1C8EF9850();
            OUTLINED_FUNCTION_15_1();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v201 = OUTLINED_FUNCTION_10_34(&v256);
            v202(v201);
            v203 = OUTLINED_FUNCTION_86_4();
            v204(v203);
            v196 = a10 | 3;
            break;
          case 6:
            LOBYTE(a10) = 6;
            sub_1C8EF97FC();
            OUTLINED_FUNCTION_15_1();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v211 = OUTLINED_FUNCTION_10_34(&v258);
            v212(v211);
            v213 = OUTLINED_FUNCTION_86_4();
            v214(v213);
            v158 = a10;
LABEL_28:
            v196 = v158 | 4;
            break;
          case 7:
            LOBYTE(a10) = 7;
            sub_1C8EF97A8();
            OUTLINED_FUNCTION_32_17();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v188 = OUTLINED_FUNCTION_10_34(&v260);
            v189(v188);
            v190 = OUTLINED_FUNCTION_86_4();
            v191(v190);
            v167 = a10;
            v168 = 5;
            goto LABEL_26;
          case 8:
            LOBYTE(a10) = 8;
            sub_1C8EF9754();
            OUTLINED_FUNCTION_32_17();
            sub_1C8CB892C();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296(&v263);
            v219(v247, v234);
            v220 = OUTLINED_FUNCTION_86_4();
            v221(v220);
            v196 = a10 | 6;
            break;
          case 9:
            LOBYTE(a10) = 9;
            sub_1C8EF9700();
            OUTLINED_FUNCTION_32_17();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v179 = OUTLINED_FUNCTION_10_34(&a9);
            v180(v179);
            v181 = OUTLINED_FUNCTION_86_4();
            v182(v181);
            v196 = a10 | 7;
            break;
          case 10:
            LOBYTE(a10) = 10;
            sub_1C8EF96AC();
            OUTLINED_FUNCTION_15_1();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v215 = OUTLINED_FUNCTION_10_34(&a11);
            v216(v215);
            v217 = OUTLINED_FUNCTION_86_4();
            v218(v217);
            v196 = a10 | 0x1000000000000000;
            break;
          case 11:
            LOBYTE(a10) = 11;
            sub_1C8EF9658();
            OUTLINED_FUNCTION_15_1();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v163 = OUTLINED_FUNCTION_10_34(&a13);
            v164(v163);
            v165 = OUTLINED_FUNCTION_86_4();
            v166(v165);
            OUTLINED_FUNCTION_103();
            goto LABEL_26;
          case 12:
            LOBYTE(a10) = 12;
            sub_1C8EF9604();
            OUTLINED_FUNCTION_15_1();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v174 = OUTLINED_FUNCTION_10_34(&a15);
            v175(v174);
            v176 = OUTLINED_FUNCTION_86_4();
            v177(v176);
            OUTLINED_FUNCTION_103();
            v168 = v178 + 1;
            goto LABEL_26;
          case 13:
            LOBYTE(a10) = 13;
            sub_1C8EF95B0();
            OUTLINED_FUNCTION_15_1();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v205 = OUTLINED_FUNCTION_54_10();
            v206(v205, v243);
            v207 = OUTLINED_FUNCTION_86_4();
            v208(v207);
            OUTLINED_FUNCTION_103();
            v173 = v209 | v210;
LABEL_27:
            v196 = v173 | 2;
            break;
          case 14:
            LOBYTE(a10) = 14;
            sub_1C8EF955C();
            v151 = v254;
            OUTLINED_FUNCTION_32_17();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296(&a17);
            v152(v151, v241);
            v153 = OUTLINED_FUNCTION_30_21();
            v154(v153);
            v196 = 0x1000000000000015;
            break;
          case 15:
            LOBYTE(a10) = 15;
            sub_1C8EF9508();
            OUTLINED_FUNCTION_15_1();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v183 = OUTLINED_FUNCTION_54_10();
            v184(v183, v245);
            v185 = OUTLINED_FUNCTION_86_4();
            v186(v185);
            OUTLINED_FUNCTION_103();
            v168 = v187 + 3;
LABEL_26:
            v196 = v167 | v168;
            break;
          default:
            LOBYTE(a10) = 0;
            sub_1C8EF99F4();
            OUTLINED_FUNCTION_15_1();
            sub_1C8CB892C();
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v192 = OUTLINED_FUNCTION_10_34(&v247);
            v193(v192);
            v194 = OUTLINED_FUNCTION_86_4();
            v195(v194);
            v196 = a10;
            break;
        }

        v150 = v261;
        *v257 = v196;
        goto LABEL_10;
      }
    }

    v142 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v144 = v143;
    v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v144 = &type metadata for ComparisonPredicateType.ComparisonType;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v146 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v142);
    (*(v147 + 104))(v144);
    swift_willThrow();
    swift_unknownObjectRelease();
    v148 = OUTLINED_FUNCTION_30_21();
    v149(v148);
  }

  v150 = v261;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v150);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF6104()
{
  v2 = *v0;
  sub_1C9064D7C();
  ComparisonPredicateType.ComparisonType.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t ComparisonPredicateType.property.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

__n128 ComparisonPredicateType.init(contentItemClass:property:comparisonType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  result = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = *a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = result;
  *(a5 + 32) = v6;
  *(a5 + 48) = v7;
  *(a5 + 56) = v8;
  return result;
}

void ComparisonPredicateType.instantiate(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v15 = v14;
  v16 = v10[2];
  v17 = v10[3];
  v19 = v10[4];
  v18 = v10[5];
  v21 = v10[6];
  v20 = v10[7];
  switch((v20 >> 57) & 8 | v20 & 7)
  {
    case 1uLL:
      v32 = OUTLINED_FUNCTION_77_6(v13);
      if (!v24)
      {
        goto LABEL_47;
      }

      a10 = v33;
      v25 = 0;
      v11 = *(v32 + 32);
      goto LABEL_44;
    case 2uLL:
      v29 = OUTLINED_FUNCTION_77_6(v13);
      if (!v24)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_93_5(v29);
      v25 = 1;
      goto LABEL_44;
    case 3uLL:
      v30 = OUTLINED_FUNCTION_77_6(v13);
      if (!v24)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_72_6(v30);
      v25 = 1;
      goto LABEL_45;
    case 4uLL:
      v27 = OUTLINED_FUNCTION_77_6(v13);
      if (!v24)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_93_5(v27);
      v25 = 2;
      goto LABEL_44;
    case 5uLL:
      v34 = OUTLINED_FUNCTION_77_6(v13);
      if (!v24)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_72_6(v34);
      v25 = 2;
      goto LABEL_45;
    case 6uLL:
      v35 = OUTLINED_FUNCTION_77_6(v13);
      if (!v24)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_93_5(v35);
      v25 = 3;
      goto LABEL_44;
    case 7uLL:
      v31 = OUTLINED_FUNCTION_77_6(v13);
      if (!v24)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_72_6(v31);
      v25 = 3;
      goto LABEL_45;
    case 8uLL:
      v37 = OUTLINED_FUNCTION_77_6(v13);
      if (!v24)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_93_5(v37);
      v25 = 4;
      goto LABEL_44;
    case 9uLL:
      v28 = OUTLINED_FUNCTION_77_6(v13);
      if (!v24)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_72_6(v28);
      v25 = 4;
      goto LABEL_45;
    case 0xAuLL:
      v36 = OUTLINED_FUNCTION_77_6(v13);
      if (!v24)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_93_5(v36);
      v25 = 5;
      goto LABEL_44;
    case 0xBuLL:
      v26 = OUTLINED_FUNCTION_77_6(v13);
      if (!v24)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_72_6(v26);
      v25 = 5;
      goto LABEL_45;
    case 0xCuLL:
      v10 = v13[2];
      if (v10 != 2)
      {
        v41 = 2;
        goto LABEL_48;
      }

      a10 = v16;
      v11 = v13[4];
      v25 = v13[5] | 6;

LABEL_44:
      v12 = v11;
      goto LABEL_45;
    case 0xDuLL:
      if (v20 == 0x1000000000000005 || v20 == 0x100000000000000DLL)
      {
        v10 = v13[2];
        if (!v10)
        {
          a10 = v16;
          v25 = 6;
          v12 = 4;
          goto LABEL_46;
        }

        goto LABEL_52;
      }

      v10 = v13[2];
      if (v10)
      {
LABEL_52:
        v41 = 0;
        goto LABEL_48;
      }

      a10 = v16;
      v25 = 6;
      v12 = 20;
LABEL_46:
      v38 = type metadata accessor for ComparisonPredicate(0);
      v39 = *(v38 + 24);

      _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
      v40 = v15 + *(v38 + 28);
      *v40 = xmmword_1C909F260;
      *(v40 + 2) = 0;
      *(v40 + 3) = 0;
      v40[32] = 0;
      *v15 = a10;
      v15[1] = v17;
      v15[2] = v19;
      v15[3] = v18;
      v15[4] = v21;
      v15[5] = v12;
      v15[6] = v25;
LABEL_49:
      OUTLINED_FUNCTION_198();
      return;
    default:
      v22 = OUTLINED_FUNCTION_77_6(v13);
      if (v24)
      {
        a10 = v23;
        v25 = 0;
        v12 = *(v22 + 32) | 4;
LABEL_45:

        goto LABEL_46;
      }

LABEL_47:
      v41 = 1;
LABEL_48:
      sub_1C8EF9A48();
      OUTLINED_FUNCTION_6_3();
      *v42 = v41;
      v42[1] = v10;
      swift_willThrow();
      goto LABEL_49;
  }
}

uint64_t ComparisonPredicateType.description.getter()
{
  v1 = v0[7];
  v4 = v0[4];
  v5 = v0[5];

  MEMORY[0x1CCA81A90](32, 0xE100000000000000);
  v2 = ComparisonPredicateType.ComparisonType.description.getter();
  MEMORY[0x1CCA81A90](v2);

  return v4;
}

uint64_t sub_1C8EF651C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C9C40 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79747265706F7270 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73697261706D6F63 && a2 == 0xEE00657079546E6FLL)
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

uint64_t sub_1C8EF663C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x79747265706F7270;
  }

  return 0x73697261706D6F63;
}

uint64_t sub_1C8EF66AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF651C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF66D4(uint64_t a1)
{
  v2 = sub_1C8EF9A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF6710(uint64_t a1)
{
  v2 = sub_1C8EF9A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ComparisonPredicateType.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196E0, &qword_1C909F558);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_202_4();
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v10 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8EF9A9C();
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_146_5();
  if (v1)
  {
    v11 = *(v6 + 8);
    v12 = OUTLINED_FUNCTION_93();
    v13(v12);
  }

  else
  {
    OUTLINED_FUNCTION_275();
    v14 = sub_1C8E2F434();

    OUTLINED_FUNCTION_168_5();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();

    if (!v14)
    {
      OUTLINED_FUNCTION_119_1();
      sub_1C8D076FC(v15);
      sub_1C8EF9AF0();
      OUTLINED_FUNCTION_168_5();
      OUTLINED_FUNCTION_205();
      sub_1C9064B8C();
      sub_1C8D07700(v19);
    }

    v16 = *(v6 + 8);
    v17 = OUTLINED_FUNCTION_93();
    v18(v17);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ComparisonPredicateType.hash(into:)()
{
  OUTLINED_FUNCTION_161_5();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  sub_1C9063FBC();
  OUTLINED_FUNCTION_145();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_117();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_297();
  TypeInstance.hash(into:)();
  OUTLINED_FUNCTION_297();
  return ComparisonPredicateType.ComparisonType.hash(into:)();
}

uint64_t ComparisonPredicateType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_18_20(v9, v10, v11, v12, v13, v14, v15, v16, v34, v35);
  sub_1C9063FBC();
  OUTLINED_FUNCTION_104_2();
  sub_1C9063FBC();
  v17 = sub_1C9063FBC();
  OUTLINED_FUNCTION_252_1(v17, v18, v19, v20, v21, v22, v23, v24, v7, v36);
  TypeInstance.hash(into:)();
  OUTLINED_FUNCTION_252_1(v25, v26, v27, v28, v29, v30, v31, v32, v8, v37);
  ComparisonPredicateType.ComparisonType.hash(into:)();
  return sub_1C9064DBC();
}

void ComparisonPredicateType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196F0, &qword_1C909F560);
  OUTLINED_FUNCTION_11(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_233();
  v17 = v10[3];
  v18 = v10[4];
  v19 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_217(v19, v20);
  sub_1C8EF9A9C();
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    LOBYTE(v34) = 0;
    v21 = sub_1C9064A0C();
    v30 = v22;
    sub_1C8E2FB30();
    OUTLINED_FUNCTION_21_21();
    sub_1C9064A6C();
    v23 = v34;
    v24 = v35;
    v29 = v36;
    v39 = 2;
    sub_1C8EF9B44();
    OUTLINED_FUNCTION_21_21();
    sub_1C9064A6C();
    v25 = OUTLINED_FUNCTION_5_9();
    v26(v25);
    *&v31[0] = v21;
    *(&v31[0] + 1) = v30;
    v31[1] = v34;
    v32 = v35;
    *&v33 = v36;
    *(&v33 + 1) = a10;
    v27 = v34;
    *v12 = v31[0];
    v12[1] = v27;
    v28 = v33;
    v12[2] = v32;
    v12[3] = v28;
    sub_1C8EF9B98(v31, &v34);
    __swift_destroy_boxed_opaque_existential_1(v10);
    *&v34 = v21;
    *(&v34 + 1) = v30;
    v35 = v23;
    v36 = v24;
    v37 = v29;
    v38 = a10;
    sub_1C8D07050(&v34);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF6CE4()
{
  sub_1C9064D7C();
  ComparisonPredicateType.hash(into:)();
  return sub_1C9064DBC();
}

void QueryDefinition.PredicateTemplates.debugDescription.getter()
{
  OUTLINED_FUNCTION_301_0();
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 11);
  v4 = *(v0 + 13);
  v5 = *(v0 + 48);
  v6 = *(*v0 + 16);
  if (!v6)
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (*(v0 + 8))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1C906478C();
  v7 = sub_1C9064BDC();
  v9 = v8;

  v36 = v9;
  MEMORY[0x1CCA81A90](0xD000000000000015, 0x80000001C90CCB10);
  v6 = v7;
  sub_1C8D00CA4();
  v11 = v10;
  v12 = *(v10 + 16);
  v0 = v12 + 1;
  if (v12 >= *(v10 + 24) >> 1)
  {
    OUTLINED_FUNCTION_90();
    v11 = v27;
  }

  *(v11 + 16) = v0;
  v13 = v11 + 16 * v12;
  *(v13 + 32) = v6;
  *(v13 + 40) = v36;
  if ((v1 & 1) == 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v11 = v28;
    }

    OUTLINED_FUNCTION_162_6();
    if (v14)
    {
      OUTLINED_FUNCTION_90();
      v11 = v29;
    }

    *(v11 + 16) = v0;
    v15 = v11 + 16 * v6;
    strcpy((v15 + 32), "string search");
    *(v15 + 46) = -4864;
  }

LABEL_12:
  if ((v2 & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v11 = v30;
    }

    v16 = *(v11 + 16);
    if (v16 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v11 = v31;
    }

    *(v11 + 16) = v16 + 1;
    v17 = v11 + 16 * v16;
    *(v17 + 32) = 0x7962207972657571;
    *(v17 + 40) = 0xEB00000000646920;
  }

  if ((~v5 & 0xF000000000000007) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v11 = v32;
    }

    v18 = *(v11 + 16);
    if (v18 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v11 = v33;
    }

    *(v11 + 16) = v18 + 1;
    v19 = v11 + 16 * v18;
    strcpy((v19 + 32), "query by value");
    *(v19 + 47) = -18;
    if (v3)
    {
LABEL_20:
      if (v4)
      {
        goto LABEL_21;
      }

LABEL_33:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_16_2();
      }

      OUTLINED_FUNCTION_162_6();
      if (v14)
      {
        OUTLINED_FUNCTION_90();
      }

      OUTLINED_FUNCTION_173_6();
      *(v23 + 32) = v22 & 0xFFFFFFFFFFFFLL | 0x7573000000000000;
      *(v23 + 40) = 0xEF64657473656767;
      goto LABEL_38;
    }
  }

  else if (v3)
  {
    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2();
    v11 = v34;
  }

  OUTLINED_FUNCTION_162_6();
  if (v14)
  {
    OUTLINED_FUNCTION_90();
    v11 = v35;
  }

  OUTLINED_FUNCTION_173_6();
  *(v21 + 32) = v20 & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
  *(v21 + 40) = 0xE90000000000006CLL;
  if ((v4 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  if (*(v11 + 16))
  {
LABEL_38:
    v24 = OUTLINED_FUNCTION_209();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_0_0();
    sub_1C8D28184(v26, &qword_1EC312558, &qword_1C9066990);
    sub_1C9063E9C();

    goto LABEL_39;
  }

LABEL_39:
  OUTLINED_FUNCTION_183_0();
}

void QueryDefinition.PredicateTemplates.map<A>(_:)()
{
  OUTLINED_FUNCTION_196();
  v42 = v3;
  v43 = v4;
  v41 = v5;
  v45 = type metadata accessor for ComparisonPredicate.Template(0);
  v6 = OUTLINED_FUNCTION_11(v45);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_109_3();
  v11 = type metadata accessor for AnyPredicateTemplate(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_25();
  v40 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37[-v17];
  v19 = *v1;
  v20 = v1[8];
  v21 = *(*v1 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v38 = v1[8];
    v39 = v2;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C8D09FAC(0, v21, 0);
    v22 = v49;
    v23 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v44 = *(v8 + 72);
    do
    {
      sub_1C8EF92B4(v23, v0, type metadata accessor for ComparisonPredicate.Template);
      v47 = v45;
      v48 = sub_1C8EF8BD0(&qword_1EC314FE8, type metadata accessor for ComparisonPredicate.Template);
      v24 = __swift_allocate_boxed_opaque_existential_1(&v46);
      sub_1C8EF92B4(v0, v24, type metadata accessor for ComparisonPredicate.Template);
      AnyPredicateTemplate.init(predicateTemplate:)(&v46, v18);
      sub_1C8EF8C9C(v0, type metadata accessor for ComparisonPredicate.Template);
      v26 = *(v49 + 16);
      v25 = *(v49 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C8D09FAC(v25 > 1, v26 + 1, 1);
      }

      *(v49 + 16) = v26 + 1;
      OUTLINED_FUNCTION_182_5();
      OUTLINED_FUNCTION_90_2();
      v16 = sub_1C8CCEBBC(v18, v27, v28);
      v23 += v44;
      --v21;
    }

    while (v21);
    v20 = v38;
  }

  if ((v20 & 1) == 0)
  {
    v47 = &type metadata for StringSearchPredicate.Template;
    v48 = sub_1C8DCE088();
    AnyPredicateTemplate.init(predicateTemplate:)(&v46, v40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = *(v22 + 16);
      sub_1C8D0193C();
      v22 = v35;
    }

    v29 = *(v22 + 16);
    if (v29 >= *(v22 + 24) >> 1)
    {
      sub_1C8D0193C();
      v22 = v36;
    }

    *(v22 + 16) = v29 + 1;
    OUTLINED_FUNCTION_182_5();
    OUTLINED_FUNCTION_90_2();
    v16 = sub_1C8CCEBBC(v40, v30, v31);
  }

  v46 = v22;
  MEMORY[0x1EEE9AC00](v16);
  *&v37[-32] = v43;
  *&v37[-24] = v32;
  *&v37[-16] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196F8, &unk_1C909F568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  sub_1C8D28184(&qword_1EC319700, &qword_1EC3196F8, &unk_1C909F568);
  sub_1C8EE564C();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF7504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x46636972656D756ELL && a2 == 0xED000074616D726FLL;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
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

uint64_t sub_1C8EF761C(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x46636972656D756ELL;
  }

  return 0x736D796E6F6E7973;
}

uint64_t sub_1C8EF7680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF7504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF76A8(uint64_t a1)
{
  v2 = sub_1C8EF9C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EF76E4(uint64_t a1)
{
  v2 = sub_1C8EF9C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypeDisplayRepresentation.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319708, &qword_1C909F578);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_171_5();
  v14 = *(v0 + 32);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_217(v10, v11);
  sub_1C8EF9C08();
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_102_6();
  OUTLINED_FUNCTION_187_7();
  if (!v1)
  {
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064ADC();
    OUTLINED_FUNCTION_177_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    sub_1C8CA669C(&qword_1EDA6B530);
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v12 = OUTLINED_FUNCTION_174_4();
  v13(v12, v4);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t TypeDisplayRepresentation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v4)
  {
    OUTLINED_FUNCTION_172_2();
  }

  v6 = OUTLINED_FUNCTION_148();

  return sub_1C8CC1590(v6, v7);
}

uint64_t TypeDisplayRepresentation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_298();
  sub_1C9063FBC();
  if (v4)
  {
    sub_1C9064D9C();
    v6 = OUTLINED_FUNCTION_172_2();
  }

  else
  {
    v6 = sub_1C9064D9C();
  }

  v14 = OUTLINED_FUNCTION_18_20(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18);
  sub_1C8CC1590(v14, v15);
  return sub_1C9064DBC();
}

void TypeDisplayRepresentation.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319710, &qword_1C909F580);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_0();
  v7 = v2[3];
  v8 = v2[4];
  v9 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_217(v9, v10);
  sub_1C8EF9C08();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_203_4();
    OUTLINED_FUNCTION_108();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_108();
    sub_1C90649AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_177_4();
    sub_1C8CA669C(&unk_1EDA6B520);
    sub_1C9064A6C();
    v11 = OUTLINED_FUNCTION_3_21();
    v12(v11);
    OUTLINED_FUNCTION_183_5();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF7C2C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = v0[4];
  sub_1C9064D7C();
  TypeDisplayRepresentation.hash(into:)();
  return sub_1C9064DBC();
}

unint64_t sub_1C8EF7D2C()
{
  result = qword_1EDA69F68;
  if (!qword_1EDA69F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F68);
  }

  return result;
}

unint64_t sub_1C8EF7D80()
{
  result = qword_1EDA63838;
  if (!qword_1EDA63838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63838);
  }

  return result;
}

unint64_t sub_1C8EF7DD4()
{
  result = qword_1EDA60738;
  if (!qword_1EDA60738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60738);
  }

  return result;
}

unint64_t sub_1C8EF7E28()
{
  result = qword_1EC3193B0;
  if (!qword_1EC3193B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3193B0);
  }

  return result;
}

unint64_t sub_1C8EF7E7C()
{
  result = qword_1EC3193B8;
  if (!qword_1EC3193B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3193B8);
  }

  return result;
}

unint64_t sub_1C8EF7ED0()
{
  result = qword_1EDA69F50;
  if (!qword_1EDA69F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F50);
  }

  return result;
}

unint64_t sub_1C8EF7F24()
{
  result = qword_1EDA63720;
  if (!qword_1EDA63720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63720);
  }

  return result;
}

unint64_t sub_1C8EF7F78()
{
  result = qword_1EDA69F08;
  if (!qword_1EDA69F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F08);
  }

  return result;
}

unint64_t sub_1C8EF7FCC()
{
  result = qword_1EDA63268;
  if (!qword_1EDA63268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63268);
  }

  return result;
}

unint64_t sub_1C8EF8020()
{
  result = qword_1EDA69F38;
  if (!qword_1EDA69F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F38);
  }

  return result;
}

unint64_t sub_1C8EF8074()
{
  result = qword_1EDA636F8;
  if (!qword_1EDA636F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636F8);
  }

  return result;
}

unint64_t sub_1C8EF80C8()
{
  result = qword_1EDA69F20;
  if (!qword_1EDA69F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F20);
  }

  return result;
}

unint64_t sub_1C8EF811C()
{
  result = qword_1EDA60730;
  if (!qword_1EDA60730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60730);
  }

  return result;
}

unint64_t sub_1C8EF8170()
{
  result = qword_1EC3193F8;
  if (!qword_1EC3193F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3193F8);
  }

  return result;
}

unint64_t sub_1C8EF81C4()
{
  result = qword_1EDA63718;
  if (!qword_1EDA63718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63718);
  }

  return result;
}

unint64_t sub_1C8EF8218()
{
  result = qword_1EDA63260;
  if (!qword_1EDA63260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63260);
  }

  return result;
}

unint64_t sub_1C8EF826C()
{
  result = qword_1EDA636F0;
  if (!qword_1EDA636F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636F0);
  }

  return result;
}

unint64_t sub_1C8EF82C0()
{
  result = qword_1EDA63698;
  if (!qword_1EDA63698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63698);
  }

  return result;
}

unint64_t sub_1C8EF8314()
{
  result = qword_1EDA63680;
  if (!qword_1EDA63680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63680);
  }

  return result;
}

unint64_t sub_1C8EF8368()
{
  result = qword_1EDA63668;
  if (!qword_1EDA63668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63668);
  }

  return result;
}

unint64_t sub_1C8EF83BC()
{
  result = qword_1EDA636B0;
  if (!qword_1EDA636B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636B0);
  }

  return result;
}

unint64_t sub_1C8EF8410()
{
  result = qword_1EDA60AB0;
  if (!qword_1EDA60AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AB0);
  }

  return result;
}

unint64_t sub_1C8EF8464()
{
  result = qword_1EDA60AA8;
  if (!qword_1EDA60AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AA8);
  }

  return result;
}

unint64_t sub_1C8EF84B8()
{
  result = qword_1EC319448;
  if (!qword_1EC319448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319448);
  }

  return result;
}

uint64_t sub_1C8EF850C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 != 2 && a8 != 1)
  {
    if (a8)
    {
      return result;
    }
  }
}

unint64_t sub_1C8EF857C()
{
  result = qword_1EDA69BB8;
  if (!qword_1EDA69BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BB8);
  }

  return result;
}

unint64_t sub_1C8EF85D0()
{
  result = qword_1EDA62DA8;
  if (!qword_1EDA62DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316C58, &unk_1C909F350);
    sub_1C8E2F434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DA8);
  }

  return result;
}

unint64_t sub_1C8EF8654()
{
  result = qword_1EDA604F8;
  if (!qword_1EDA604F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319460, &qword_1C909F360);
    sub_1C8E2D21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA604F8);
  }

  return result;
}

unint64_t sub_1C8EF86D8()
{
  result = qword_1EDA60508;
  if (!qword_1EDA60508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319468, &unk_1C909F368);
    sub_1C8E7710C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60508);
  }

  return result;
}

unint64_t sub_1C8EF875C()
{
  result = qword_1EDA60AE0[0];
  if (!qword_1EDA60AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA60AE0);
  }

  return result;
}

unint64_t sub_1C8EF87B0()
{
  result = qword_1EDA62DA0;
  if (!qword_1EDA62DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316C58, &unk_1C909F350);
    sub_1C8E2FB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DA0);
  }

  return result;
}

unint64_t sub_1C8EF8834()
{
  result = qword_1EDA604F0;
  if (!qword_1EDA604F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319460, &qword_1C909F360);
    sub_1C8E2D1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA604F0);
  }

  return result;
}

unint64_t sub_1C8EF88B8()
{
  result = qword_1EDA60500;
  if (!qword_1EDA60500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319468, &unk_1C909F368);
    sub_1C8E770B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60500);
  }

  return result;
}

unint64_t sub_1C8EF893C()
{
  result = qword_1EDA60AD0;
  if (!qword_1EDA60AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AD0);
  }

  return result;
}

unint64_t sub_1C8EF89C0()
{
  result = qword_1EDA6B600;
  if (!qword_1EDA6B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B600);
  }

  return result;
}

unint64_t sub_1C8EF8A14()
{
  result = qword_1EDA696D0;
  if (!qword_1EDA696D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696D0);
  }

  return result;
}

unint64_t sub_1C8EF8A68()
{
  result = qword_1EDA62D98;
  if (!qword_1EDA62D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317DE8, &qword_1C9090C08);
    sub_1C8EF8BD0(&qword_1EDA63050, type metadata accessor for EnumerationCaseDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62D98);
  }

  return result;
}

unint64_t sub_1C8EF8B1C()
{
  result = qword_1EDA62D90;
  if (!qword_1EDA62D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317DE8, &qword_1C9090C08);
    sub_1C8EF8BD0(&qword_1EDA63048, type metadata accessor for EnumerationCaseDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62D90);
  }

  return result;
}

uint64_t sub_1C8EF8BD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C8EF8C48()
{
  result = qword_1EDA695C8;
  if (!qword_1EDA695C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695C8);
  }

  return result;
}

uint64_t sub_1C8EF8C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8EF8CF4()
{
  result = qword_1EDA63748;
  if (!qword_1EDA63748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63748);
  }

  return result;
}

unint64_t sub_1C8EF8D48()
{
  result = qword_1EDA69C78;
  if (!qword_1EDA69C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C78);
  }

  return result;
}

unint64_t sub_1C8EF8D9C()
{
  result = qword_1EDA62DD8;
  if (!qword_1EDA62DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3194C0, &qword_1C909F3D0);
    sub_1C8EF8BD0(&qword_1EDA633C0, type metadata accessor for ComparisonPredicate.Template);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DD8);
  }

  return result;
}

unint64_t sub_1C8EF8E50()
{
  result = qword_1EDA63088;
  if (!qword_1EDA63088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63088);
  }

  return result;
}

unint64_t sub_1C8EF8EA4()
{
  result = qword_1EDA60BB8;
  if (!qword_1EDA60BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BB8);
  }

  return result;
}

unint64_t sub_1C8EF8EF8()
{
  result = qword_1EDA62DD0;
  if (!qword_1EDA62DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3194C0, &qword_1C909F3D0);
    sub_1C8EF8BD0(&qword_1EDA633B8, type metadata accessor for ComparisonPredicate.Template);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DD0);
  }

  return result;
}

unint64_t sub_1C8EF8FAC()
{
  result = qword_1EDA63080;
  if (!qword_1EDA63080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63080);
  }

  return result;
}

unint64_t sub_1C8EF9000()
{
  result = qword_1EDA60BB0;
  if (!qword_1EDA60BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BB0);
  }

  return result;
}

unint64_t sub_1C8EF9054()
{
  result = qword_1EDA69C90;
  if (!qword_1EDA69C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C90);
  }

  return result;
}

unint64_t sub_1C8EF90A8()
{
  result = qword_1EDA62E68;
  if (!qword_1EDA62E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3194D8, &qword_1C909F3E8);
    sub_1C8EF8BD0(&unk_1EDA66660, type metadata accessor for ComparisonPredicateTypeOrPredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62E68);
  }

  return result;
}

unint64_t sub_1C8EF917C()
{
  result = qword_1EDA62E60;
  if (!qword_1EDA62E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3194D8, &qword_1C909F3E8);
    sub_1C8EF8BD0(&qword_1EDA66658, type metadata accessor for ComparisonPredicateTypeOrPredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62E60);
  }

  return result;
}

unint64_t sub_1C8EF9260()
{
  result = qword_1EDA62F28;
  if (!qword_1EDA62F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F28);
  }

  return result;
}

uint64_t sub_1C8EF92B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

unint64_t sub_1C8EF9310()
{
  result = qword_1EC319510;
  if (!qword_1EC319510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319510);
  }

  return result;
}

unint64_t sub_1C8EF9364()
{
  result = qword_1EC319518;
  if (!qword_1EC319518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319518);
  }

  return result;
}

unint64_t sub_1C8EF93B8()
{
  result = qword_1EC319520;
  if (!qword_1EC319520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319520);
  }

  return result;
}

unint64_t sub_1C8EF940C()
{
  result = qword_1EDA60840;
  if (!qword_1EDA60840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60840);
  }

  return result;
}

unint64_t sub_1C8EF9460()
{
  result = qword_1EDA60838;
  if (!qword_1EDA60838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60838);
  }

  return result;
}

unint64_t sub_1C8EF94B4()
{
  result = qword_1EC3195C8;
  if (!qword_1EC3195C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195C8);
  }

  return result;
}

unint64_t sub_1C8EF9508()
{
  result = qword_1EC3195D0;
  if (!qword_1EC3195D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195D0);
  }

  return result;
}

unint64_t sub_1C8EF955C()
{
  result = qword_1EC3195D8;
  if (!qword_1EC3195D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195D8);
  }

  return result;
}

unint64_t sub_1C8EF95B0()
{
  result = qword_1EC3195E0;
  if (!qword_1EC3195E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195E0);
  }

  return result;
}

unint64_t sub_1C8EF9604()
{
  result = qword_1EC3195E8;
  if (!qword_1EC3195E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195E8);
  }

  return result;
}

unint64_t sub_1C8EF9658()
{
  result = qword_1EC3195F0;
  if (!qword_1EC3195F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195F0);
  }

  return result;
}

unint64_t sub_1C8EF96AC()
{
  result = qword_1EC3195F8;
  if (!qword_1EC3195F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195F8);
  }

  return result;
}

unint64_t sub_1C8EF9700()
{
  result = qword_1EC319600;
  if (!qword_1EC319600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319600);
  }

  return result;
}

unint64_t sub_1C8EF9754()
{
  result = qword_1EC319608;
  if (!qword_1EC319608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319608);
  }

  return result;
}

unint64_t sub_1C8EF97A8()
{
  result = qword_1EC319610;
  if (!qword_1EC319610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319610);
  }

  return result;
}

unint64_t sub_1C8EF97FC()
{
  result = qword_1EC319618;
  if (!qword_1EC319618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319618);
  }

  return result;
}

unint64_t sub_1C8EF9850()
{
  result = qword_1EC319620;
  if (!qword_1EC319620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319620);
  }

  return result;
}

unint64_t sub_1C8EF98A4()
{
  result = qword_1EC319628;
  if (!qword_1EC319628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319628);
  }

  return result;
}

unint64_t sub_1C8EF98F8()
{
  result = qword_1EC319630;
  if (!qword_1EC319630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319630);
  }

  return result;
}

unint64_t sub_1C8EF994C()
{
  result = qword_1EC319638;
  if (!qword_1EC319638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319638);
  }

  return result;
}

unint64_t sub_1C8EF99A0()
{
  result = qword_1EC319640;
  if (!qword_1EC319640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319640);
  }

  return result;
}

unint64_t sub_1C8EF99F4()
{
  result = qword_1EC319648;
  if (!qword_1EC319648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319648);
  }

  return result;
}

unint64_t sub_1C8EF9A48()
{
  result = qword_1EC3196D8;
  if (!qword_1EC3196D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3196D8);
  }

  return result;
}

unint64_t sub_1C8EF9A9C()
{
  result = qword_1EC3196E8;
  if (!qword_1EC3196E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3196E8);
  }

  return result;
}

unint64_t sub_1C8EF9AF0()
{
  result = qword_1EDA60850;
  if (!qword_1EDA60850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60850);
  }

  return result;
}

unint64_t sub_1C8EF9B44()
{
  result = qword_1EDA60848;
  if (!qword_1EDA60848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60848);
  }

  return result;
}

uint64_t sub_1C8EF9BD0(uint64_t a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t sub_1C8EF9C08()
{
  result = qword_1EDA62FE8;
  if (!qword_1EDA62FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FE8);
  }

  return result;
}

unint64_t sub_1C8EF9C60()
{
  result = qword_1EDA63830;
  if (!qword_1EDA63830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63830);
  }

  return result;
}

unint64_t sub_1C8EF9CB8()
{
  result = qword_1EC319718;
  if (!qword_1EC319718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319718);
  }

  return result;
}

unint64_t sub_1C8EF9D10()
{
  result = qword_1EC319720;
  if (!qword_1EC319720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319720);
  }

  return result;
}

unint64_t sub_1C8EF9D68()
{
  result = qword_1EC319728;
  if (!qword_1EC319728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319728);
  }

  return result;
}

unint64_t sub_1C8EF9DC0()
{
  result = qword_1EDA63700;
  if (!qword_1EDA63700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63700);
  }

  return result;
}

unint64_t sub_1C8EF9E18()
{
  result = qword_1EC319730;
  if (!qword_1EC319730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319730);
  }

  return result;
}

unint64_t sub_1C8EF9E6C()
{
  result = qword_1EDA60AD8;
  if (!qword_1EDA60AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AD8);
  }

  return result;
}

unint64_t sub_1C8EF9EC4()
{
  result = qword_1EDA60AC8;
  if (!qword_1EDA60AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AC8);
  }

  return result;
}

unint64_t sub_1C8EF9F1C()
{
  result = qword_1EC319738;
  if (!qword_1EC319738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319738);
  }

  return result;
}

unint64_t sub_1C8EF9F74()
{
  result = qword_1EC319740;
  if (!qword_1EC319740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319740);
  }

  return result;
}

unint64_t sub_1C8EF9FCC()
{
  result = qword_1EC319748;
  if (!qword_1EC319748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319748);
  }

  return result;
}

unint64_t sub_1C8EFA024()
{
  result = qword_1EC319750;
  if (!qword_1EC319750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319750);
  }

  return result;
}

unint64_t sub_1C8EFA0C4()
{
  result = qword_1EC319760;
  if (!qword_1EC319760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319760);
  }

  return result;
}

unint64_t sub_1C8EFA11C()
{
  result = qword_1EC319768;
  if (!qword_1EC319768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319768);
  }

  return result;
}

unint64_t sub_1C8EFA174()
{
  result = qword_1EC319770;
  if (!qword_1EC319770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319770);
  }

  return result;
}

unint64_t sub_1C8EFA1CC()
{
  result = qword_1EC319778;
  if (!qword_1EC319778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319778);
  }

  return result;
}

unint64_t sub_1C8EFA26C()
{
  result = qword_1EC319788;
  if (!qword_1EC319788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319788);
  }

  return result;
}

unint64_t sub_1C8EFA2C4()
{
  result = qword_1EC319790;
  if (!qword_1EC319790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319790);
  }

  return result;
}

unint64_t sub_1C8EFA31C()
{
  result = qword_1EC319798;
  if (!qword_1EC319798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319798);
  }

  return result;
}

uint64_t sub_1C8EFA37C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 97))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 96);
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

uint64_t sub_1C8EFA3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8EFA434(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t sub_1C8EFA470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C8EFA4EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1C8EFA52C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8EFA5B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C8EFA5F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1C8EFA690()
{
  sub_1C8CD2534();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C8EFA71C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C8EFA75C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8EFA7D8()
{
  result = type metadata accessor for ComparisonPredicate(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit23ComparisonPredicateTypeV0cE0O(void *a1)
{
  v1 = (*a1 >> 57) & 8 | *a1 & 7;
  if (v1 <= 0xC)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 13;
  }
}

uint64_t sub_1C8EFA888(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 8))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((*a1 >> 57) & 8 | *a1 & 7) ^ 0xF;
      if (v2 >= 2)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C8EFA8D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = -a2 & 7 | 0x1000000000000000;
    }
  }

  return result;
}

unint64_t *sub_1C8EFA930(unint64_t *result, unsigned int a2)
{
  if (a2 < 0xD)
  {
    v2 = a2 & 7 | (a2 << 57) & 0x1000000000000007 | *result & 0xEFFFFFFFFFFFFFF8;
  }

  else
  {
    v2 = (8 * (a2 - 13)) | 0x1000000000000005;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ComparisonPredicateType.ComparisonType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ComparisonPredicateType.ComparisonType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8EFAC44(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for QueryDefinition.PredicateTemplates.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8EFAE2C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for EntityDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8EFAFF4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8EFB0E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_80(v8);
}

_BYTE *sub_1C8EFB164(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_349(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8EFB280(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8EFB330()
{
  result = qword_1EC3197A0;
  if (!qword_1EC3197A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197A0);
  }

  return result;
}

unint64_t sub_1C8EFB388()
{
  result = qword_1EC3197A8;
  if (!qword_1EC3197A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197A8);
  }

  return result;
}

unint64_t sub_1C8EFB3E0()
{
  result = qword_1EC3197B0;
  if (!qword_1EC3197B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197B0);
  }

  return result;
}

unint64_t sub_1C8EFB438()
{
  result = qword_1EC3197B8;
  if (!qword_1EC3197B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197B8);
  }

  return result;
}

unint64_t sub_1C8EFB490()
{
  result = qword_1EC3197C0;
  if (!qword_1EC3197C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197C0);
  }

  return result;
}

unint64_t sub_1C8EFB4E8()
{
  result = qword_1EC3197C8;
  if (!qword_1EC3197C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197C8);
  }

  return result;
}

unint64_t sub_1C8EFB540()
{
  result = qword_1EC3197D0;
  if (!qword_1EC3197D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197D0);
  }

  return result;
}

unint64_t sub_1C8EFB598()
{
  result = qword_1EC3197D8;
  if (!qword_1EC3197D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197D8);
  }

  return result;
}

unint64_t sub_1C8EFB5F0()
{
  result = qword_1EC3197E0;
  if (!qword_1EC3197E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197E0);
  }

  return result;
}

unint64_t sub_1C8EFB648()
{
  result = qword_1EC3197E8;
  if (!qword_1EC3197E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197E8);
  }

  return result;
}

unint64_t sub_1C8EFB6A0()
{
  result = qword_1EC3197F0;
  if (!qword_1EC3197F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197F0);
  }

  return result;
}

unint64_t sub_1C8EFB6F8()
{
  result = qword_1EC3197F8;
  if (!qword_1EC3197F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197F8);
  }

  return result;
}

unint64_t sub_1C8EFB750()
{
  result = qword_1EC319800;
  if (!qword_1EC319800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319800);
  }

  return result;
}

unint64_t sub_1C8EFB7A8()
{
  result = qword_1EC319808;
  if (!qword_1EC319808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319808);
  }

  return result;
}

unint64_t sub_1C8EFB800()
{
  result = qword_1EC319810;
  if (!qword_1EC319810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319810);
  }

  return result;
}

unint64_t sub_1C8EFB858()
{
  result = qword_1EC319818;
  if (!qword_1EC319818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319818);
  }

  return result;
}

unint64_t sub_1C8EFB8B0()
{
  result = qword_1EC319820;
  if (!qword_1EC319820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319820);
  }

  return result;
}

unint64_t sub_1C8EFB908()
{
  result = qword_1EC319828;
  if (!qword_1EC319828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319828);
  }

  return result;
}

unint64_t sub_1C8EFB960()
{
  result = qword_1EC319830;
  if (!qword_1EC319830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319830);
  }

  return result;
}

unint64_t sub_1C8EFB9B8()
{
  result = qword_1EC319838;
  if (!qword_1EC319838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319838);
  }

  return result;
}

unint64_t sub_1C8EFBA10()
{
  result = qword_1EC319840;
  if (!qword_1EC319840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319840);
  }

  return result;
}

unint64_t sub_1C8EFBA68()
{
  result = qword_1EC319848;
  if (!qword_1EC319848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319848);
  }

  return result;
}

unint64_t sub_1C8EFBAC0()
{
  result = qword_1EC319850;
  if (!qword_1EC319850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319850);
  }

  return result;
}

unint64_t sub_1C8EFBB18()
{
  result = qword_1EC319858;
  if (!qword_1EC319858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319858);
  }

  return result;
}

unint64_t sub_1C8EFBB70()
{
  result = qword_1EC319860;
  if (!qword_1EC319860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319860);
  }

  return result;
}

unint64_t sub_1C8EFBBC8()
{
  result = qword_1EC319868;
  if (!qword_1EC319868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319868);
  }

  return result;
}

unint64_t sub_1C8EFBC20()
{
  result = qword_1EC319870;
  if (!qword_1EC319870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319870);
  }

  return result;
}

unint64_t sub_1C8EFBC78()
{
  result = qword_1EC319878;
  if (!qword_1EC319878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319878);
  }

  return result;
}

unint64_t sub_1C8EFBCD0()
{
  result = qword_1EC319880;
  if (!qword_1EC319880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319880);
  }

  return result;
}

unint64_t sub_1C8EFBD28()
{
  result = qword_1EC319888;
  if (!qword_1EC319888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319888);
  }

  return result;
}

unint64_t sub_1C8EFBD80()
{
  result = qword_1EC319890;
  if (!qword_1EC319890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319890);
  }

  return result;
}

unint64_t sub_1C8EFBDD8()
{
  result = qword_1EC319898;
  if (!qword_1EC319898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319898);
  }

  return result;
}

unint64_t sub_1C8EFBE30()
{
  result = qword_1EC3198A0;
  if (!qword_1EC3198A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198A0);
  }

  return result;
}

unint64_t sub_1C8EFBE88()
{
  result = qword_1EC3198A8;
  if (!qword_1EC3198A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198A8);
  }

  return result;
}

unint64_t sub_1C8EFBEE0()
{
  result = qword_1EC3198B0;
  if (!qword_1EC3198B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198B0);
  }

  return result;
}

unint64_t sub_1C8EFBF38()
{
  result = qword_1EC3198B8;
  if (!qword_1EC3198B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198B8);
  }

  return result;
}

unint64_t sub_1C8EFBF90()
{
  result = qword_1EC3198C0;
  if (!qword_1EC3198C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198C0);
  }

  return result;
}

unint64_t sub_1C8EFBFE8()
{
  result = qword_1EDA62FD8;
  if (!qword_1EDA62FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FD8);
  }

  return result;
}

unint64_t sub_1C8EFC040()
{
  result = qword_1EDA62FE0;
  if (!qword_1EDA62FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FE0);
  }

  return result;
}

unint64_t sub_1C8EFC098()
{
  result = qword_1EC3198C8;
  if (!qword_1EC3198C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198C8);
  }

  return result;
}

unint64_t sub_1C8EFC0F0()
{
  result = qword_1EC3198D0;
  if (!qword_1EC3198D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198D0);
  }

  return result;
}

unint64_t sub_1C8EFC148()
{
  result = qword_1EC3198D8;
  if (!qword_1EC3198D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198D8);
  }

  return result;
}

unint64_t sub_1C8EFC1A0()
{
  result = qword_1EC3198E0;
  if (!qword_1EC3198E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198E0);
  }

  return result;
}

unint64_t sub_1C8EFC1F8()
{
  result = qword_1EC3198E8;
  if (!qword_1EC3198E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198E8);
  }

  return result;
}

unint64_t sub_1C8EFC250()
{
  result = qword_1EC3198F0;
  if (!qword_1EC3198F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198F0);
  }

  return result;
}

unint64_t sub_1C8EFC2A8()
{
  result = qword_1EC3198F8;
  if (!qword_1EC3198F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198F8);
  }

  return result;
}

unint64_t sub_1C8EFC300()
{
  result = qword_1EC319900;
  if (!qword_1EC319900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319900);
  }

  return result;
}

unint64_t sub_1C8EFC358()
{
  result = qword_1EC319908;
  if (!qword_1EC319908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319908);
  }

  return result;
}

unint64_t sub_1C8EFC3B0()
{
  result = qword_1EC319910;
  if (!qword_1EC319910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319910);
  }

  return result;
}

unint64_t sub_1C8EFC408()
{
  result = qword_1EC319918;
  if (!qword_1EC319918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319918);
  }

  return result;
}

unint64_t sub_1C8EFC460()
{
  result = qword_1EC319920;
  if (!qword_1EC319920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319920);
  }

  return result;
}

unint64_t sub_1C8EFC4B8()
{
  result = qword_1EC319928;
  if (!qword_1EC319928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319928);
  }

  return result;
}

unint64_t sub_1C8EFC510()
{
  result = qword_1EC319930;
  if (!qword_1EC319930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319930);
  }

  return result;
}

unint64_t sub_1C8EFC568()
{
  result = qword_1EC319938;
  if (!qword_1EC319938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319938);
  }

  return result;
}

unint64_t sub_1C8EFC5C0()
{
  result = qword_1EC319940;
  if (!qword_1EC319940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319940);
  }

  return result;
}

unint64_t sub_1C8EFC618()
{
  result = qword_1EC319948;
  if (!qword_1EC319948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319948);
  }

  return result;
}

unint64_t sub_1C8EFC670()
{
  result = qword_1EC319950;
  if (!qword_1EC319950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319950);
  }

  return result;
}

unint64_t sub_1C8EFC6C8()
{
  result = qword_1EC319958;
  if (!qword_1EC319958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319958);
  }

  return result;
}

unint64_t sub_1C8EFC720()
{
  result = qword_1EC319960;
  if (!qword_1EC319960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319960);
  }

  return result;
}

unint64_t sub_1C8EFC778()
{
  result = qword_1EC319968;
  if (!qword_1EC319968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319968);
  }

  return result;
}

unint64_t sub_1C8EFC7D0()
{
  result = qword_1EC319970;
  if (!qword_1EC319970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319970);
  }

  return result;
}

unint64_t sub_1C8EFC828()
{
  result = qword_1EC319978;
  if (!qword_1EC319978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319978);
  }

  return result;
}

unint64_t sub_1C8EFC880()
{
  result = qword_1EC319980;
  if (!qword_1EC319980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319980);
  }

  return result;
}

unint64_t sub_1C8EFC8D8()
{
  result = qword_1EC319988;
  if (!qword_1EC319988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319988);
  }

  return result;
}

unint64_t sub_1C8EFC930()
{
  result = qword_1EC319990;
  if (!qword_1EC319990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319990);
  }

  return result;
}

unint64_t sub_1C8EFC988()
{
  result = qword_1EC319998;
  if (!qword_1EC319998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319998);
  }

  return result;
}

unint64_t sub_1C8EFC9E0()
{
  result = qword_1EC3199A0;
  if (!qword_1EC3199A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199A0);
  }

  return result;
}

unint64_t sub_1C8EFCA38()
{
  result = qword_1EC3199A8;
  if (!qword_1EC3199A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199A8);
  }

  return result;
}

unint64_t sub_1C8EFCA90()
{
  result = qword_1EC3199B0;
  if (!qword_1EC3199B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199B0);
  }

  return result;
}

unint64_t sub_1C8EFCAE8()
{
  result = qword_1EC3199B8;
  if (!qword_1EC3199B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199B8);
  }

  return result;
}

unint64_t sub_1C8EFCB40()
{
  result = qword_1EC3199C0;
  if (!qword_1EC3199C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199C0);
  }

  return result;
}

unint64_t sub_1C8EFCB98()
{
  result = qword_1EC3199C8;
  if (!qword_1EC3199C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199C8);
  }

  return result;
}

unint64_t sub_1C8EFCBF0()
{
  result = qword_1EC3199D0;
  if (!qword_1EC3199D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199D0);
  }

  return result;
}

unint64_t sub_1C8EFCC48()
{
  result = qword_1EC3199D8;
  if (!qword_1EC3199D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199D8);
  }

  return result;
}

unint64_t sub_1C8EFCCA0()
{
  result = qword_1EC3199E0;
  if (!qword_1EC3199E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199E0);
  }

  return result;
}

unint64_t sub_1C8EFCCF8()
{
  result = qword_1EC3199E8;
  if (!qword_1EC3199E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199E8);
  }

  return result;
}

unint64_t sub_1C8EFCD50()
{
  result = qword_1EC3199F0;
  if (!qword_1EC3199F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199F0);
  }

  return result;
}

unint64_t sub_1C8EFCDA8()
{
  result = qword_1EC3199F8;
  if (!qword_1EC3199F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199F8);
  }

  return result;
}

unint64_t sub_1C8EFCE00()
{
  result = qword_1EC319A00;
  if (!qword_1EC319A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A00);
  }

  return result;
}

unint64_t sub_1C8EFCE58()
{
  result = qword_1EC319A08;
  if (!qword_1EC319A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A08);
  }

  return result;
}

unint64_t sub_1C8EFCEB0()
{
  result = qword_1EC319A10;
  if (!qword_1EC319A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A10);
  }

  return result;
}

unint64_t sub_1C8EFCF08()
{
  result = qword_1EDA62F18;
  if (!qword_1EDA62F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F18);
  }

  return result;
}

unint64_t sub_1C8EFCF60()
{
  result = qword_1EDA62F20;
  if (!qword_1EDA62F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F20);
  }

  return result;
}

unint64_t sub_1C8EFCFB8()
{
  result = qword_1EDA69C80;
  if (!qword_1EDA69C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C80);
  }

  return result;
}

unint64_t sub_1C8EFD010()
{
  result = qword_1EDA69C88;
  if (!qword_1EDA69C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C88);
  }

  return result;
}

unint64_t sub_1C8EFD068()
{
  result = qword_1EDA69C68;
  if (!qword_1EDA69C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C68);
  }

  return result;
}

unint64_t sub_1C8EFD0C0()
{
  result = qword_1EDA69C70;
  if (!qword_1EDA69C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C70);
  }

  return result;
}

unint64_t sub_1C8EFD118()
{
  result = qword_1EDA63738;
  if (!qword_1EDA63738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63738);
  }

  return result;
}

unint64_t sub_1C8EFD170()
{
  result = qword_1EDA63740;
  if (!qword_1EDA63740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63740);
  }

  return result;
}

unint64_t sub_1C8EFD1C8()
{
  result = qword_1EDA695B8;
  if (!qword_1EDA695B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695B8);
  }

  return result;
}

unint64_t sub_1C8EFD220()
{
  result = qword_1EDA695C0;
  if (!qword_1EDA695C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695C0);
  }

  return result;
}

unint64_t sub_1C8EFD278()
{
  result = qword_1EDA696C0;
  if (!qword_1EDA696C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696C0);
  }

  return result;
}

unint64_t sub_1C8EFD2D0()
{
  result = qword_1EDA696C8;
  if (!qword_1EDA696C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696C8);
  }

  return result;
}

unint64_t sub_1C8EFD328()
{
  result = qword_1EDA6B5F0;
  if (!qword_1EDA6B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5F0);
  }

  return result;
}

unint64_t sub_1C8EFD380()
{
  result = qword_1EDA6B5F8;
  if (!qword_1EDA6B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5F8);
  }

  return result;
}

unint64_t sub_1C8EFD3D8()
{
  result = qword_1EDA69BA8;
  if (!qword_1EDA69BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BA8);
  }

  return result;
}

unint64_t sub_1C8EFD430()
{
  result = qword_1EDA69BB0;
  if (!qword_1EDA69BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BB0);
  }

  return result;
}

unint64_t sub_1C8EFD488()
{
  result = qword_1EC319A18;
  if (!qword_1EC319A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A18);
  }

  return result;
}

unint64_t sub_1C8EFD4E0()
{
  result = qword_1EC319A20;
  if (!qword_1EC319A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A20);
  }

  return result;
}

unint64_t sub_1C8EFD538()
{
  result = qword_1EDA636A0;
  if (!qword_1EDA636A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636A0);
  }

  return result;
}

unint64_t sub_1C8EFD590()
{
  result = qword_1EDA636A8;
  if (!qword_1EDA636A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636A8);
  }

  return result;
}

unint64_t sub_1C8EFD5E8()
{
  result = qword_1EDA63658;
  if (!qword_1EDA63658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63658);
  }

  return result;
}

unint64_t sub_1C8EFD640()
{
  result = qword_1EDA63660;
  if (!qword_1EDA63660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63660);
  }

  return result;
}

unint64_t sub_1C8EFD698()
{
  result = qword_1EDA63670;
  if (!qword_1EDA63670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63670);
  }

  return result;
}

unint64_t sub_1C8EFD6F0()
{
  result = qword_1EDA63678;
  if (!qword_1EDA63678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63678);
  }

  return result;
}

unint64_t sub_1C8EFD748()
{
  result = qword_1EDA63688;
  if (!qword_1EDA63688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63688);
  }

  return result;
}

unint64_t sub_1C8EFD7A0()
{
  result = qword_1EDA63690;
  if (!qword_1EDA63690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63690);
  }

  return result;
}

unint64_t sub_1C8EFD7F8()
{
  result = qword_1EDA69F10;
  if (!qword_1EDA69F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F10);
  }

  return result;
}

unint64_t sub_1C8EFD850()
{
  result = qword_1EDA69F18;
  if (!qword_1EDA69F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F18);
  }

  return result;
}

unint64_t sub_1C8EFD8A8()
{
  result = qword_1EDA69F28;
  if (!qword_1EDA69F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F28);
  }

  return result;
}

unint64_t sub_1C8EFD900()
{
  result = qword_1EDA69F30;
  if (!qword_1EDA69F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F30);
  }

  return result;
}

unint64_t sub_1C8EFD958()
{
  result = qword_1EDA69EF8;
  if (!qword_1EDA69EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EF8);
  }

  return result;
}

unint64_t sub_1C8EFD9B0()
{
  result = qword_1EDA69F00;
  if (!qword_1EDA69F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F00);
  }

  return result;
}

unint64_t sub_1C8EFDA08()
{
  result = qword_1EDA69F40;
  if (!qword_1EDA69F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F40);
  }

  return result;
}

unint64_t sub_1C8EFDA60()
{
  result = qword_1EDA69F48;
  if (!qword_1EDA69F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F48);
  }

  return result;
}

unint64_t sub_1C8EFDAB8()
{
  result = qword_1EC319A28;
  if (!qword_1EC319A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A28);
  }

  return result;
}

unint64_t sub_1C8EFDB10()
{
  result = qword_1EC319A30;
  if (!qword_1EC319A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A30);
  }

  return result;
}

unint64_t sub_1C8EFDB68()
{
  result = qword_1EDA69EE8;
  if (!qword_1EDA69EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EE8);
  }

  return result;
}

unint64_t sub_1C8EFDBC0()
{
  result = qword_1EDA69EF0;
  if (!qword_1EDA69EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EF0);
  }

  return result;
}

unint64_t sub_1C8EFDC18()
{
  result = qword_1EDA69F58;
  if (!qword_1EDA69F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F58);
  }

  return result;
}

unint64_t sub_1C8EFDC70()
{
  result = qword_1EDA69F60;
  if (!qword_1EDA69F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F60);
  }

  return result;
}

unint64_t sub_1C8EFDCC4()
{
  result = qword_1EDA63270;
  if (!qword_1EDA63270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63270);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_56_9()
{
  v2 = *(v0 - 224);
  v1 = *(v0 - 216);
  v3 = *(v0 - 208);
  v4 = *(v0 - 200);
  result = *(v0 - 192);
  v6 = *(v0 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_70_5()
{
  v3 = *(v0 - 208);
  v2 = *(v0 - 200);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_105_4()
{
  v2 = *(v0 - 256);

  return sub_1C9064A6C();
}

void OUTLINED_FUNCTION_134_2(uint64_t *a1@<X8>)
{
  v1 = *(a1 - 2);
  v2 = *(a1 - 1);
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
}

void OUTLINED_FUNCTION_140_4(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;
  v2[2] = v1;
  v2[3] = 0;
  v2[4] = 0xE000000000000000;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = v1;
  v2[8] = v1;
  v2[9] = v1;
  v2[10] = 0;
  v2[11] = 0;
}

uint64_t OUTLINED_FUNCTION_146_5()
{
  *(v0 - 120) = 0;
  v2 = *(v0 - 128);

  return sub_1C9064B2C();
}

uint64_t OUTLINED_FUNCTION_157_3()
{
}

uint64_t OUTLINED_FUNCTION_159_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{

  return sub_1C8D90D54(&a54, &a28);
}

void OUTLINED_FUNCTION_171_5()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  *(v1 - 112) = v0[3];
  *(v1 - 104) = v4;
}

void OUTLINED_FUNCTION_183_5()
{
  v4 = *(v2 - 96);
  v3 = *(v2 - 88);
  *v0 = v1;
  v0[1] = v4;
  v5 = *(v2 - 104);
  v0[2] = *(v2 - 112);
  v0[3] = v5;
  v0[4] = v3;
}

uint64_t OUTLINED_FUNCTION_187_7()
{
  v2 = *(v0 - 96);

  return sub_1C9064B2C();
}

void *OUTLINED_FUNCTION_194_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char __dst)
{

  return memcpy(&__dst, v28, 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_223_3()
{

  return sub_1C9064A0C();
}

uint64_t OUTLINED_FUNCTION_224_2()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_229_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_230_2()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t sub_1C8EFE138(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000644972;
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
      v7 = a1 == 0x6D796E6F6E7973 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
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

uint64_t sub_1C8EFE28C(char a1)
{
  result = 0x656E6961746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 0x6D796E6F6E7973;
      break;
    case 3:
      result = 0x726564726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EFE310(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319A78, &qword_1C90A58F8);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8EFEF10();
  sub_1C9064E1C();
  v14 = *v3;
  v21[15] = 0;
  OUTLINED_FUNCTION_12_0();
  sub_1C9064B9C();
  if (!v2)
  {
    v15 = v3[1];
    v16 = v3[2];
    v21[14] = 1;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B2C();
    v17 = v3[3];
    v18 = v3[4];
    v21[13] = 2;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B2C();
    v19 = v3[5];
    v21[12] = 3;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B6C();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C8EFE4A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319A70, &qword_1C90A58F0);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8EFEF10();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_1_7();
  v10 = sub_1C9064A7C();
  OUTLINED_FUNCTION_1_7();
  v11 = sub_1C9064A0C();
  v13 = v12;
  v22 = v11;
  v23 = v10;
  OUTLINED_FUNCTION_1_7();
  v14 = sub_1C9064A0C();
  v16 = v15;
  v21 = v14;
  OUTLINED_FUNCTION_1_7();
  v17 = sub_1C9064A4C();
  v18 = OUTLINED_FUNCTION_0();
  v19(v18);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v23;
  a2[1] = v22;
  a2[2] = v13;
  a2[3] = v21;
  a2[4] = v16;
  a2[5] = v17;
  return result;
}

uint64_t sub_1C8EFE6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EFE138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EFE708(uint64_t a1)
{
  v2 = sub_1C8EFEF10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EFE744(uint64_t a1)
{
  v2 = sub_1C8EFEF10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C8EFE780@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C8EFE4A8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

double sub_1C8EFE7DC@<D0>(_OWORD *a1@<X8>)
{
  sub_1C8EFE81C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C8EFE81C@<X0>(void *a1@<X8>)
{
  if (qword_1EC3115A0 != -1)
  {
    OUTLINED_FUNCTION_5_42();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EC390D70);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v4 = v3;

  if (qword_1EDA69518 != -1)
  {
    OUTLINED_FUNCTION_3_46();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6EAC8);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v15 = v5;
  v7 = v6;

  if (qword_1EC3115B0 != -1)
  {
    OUTLINED_FUNCTION_2_57();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390D88);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v9 = v8;
  v11 = v10;

  if (qword_1EC3115B8 != -1)
  {
    OUTLINED_FUNCTION_1_60();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390DA0);
  sub_1C9062E5C();
  sub_1C8E2B088();
  v13 = v12;

  *a1 = v4;
  a1[1] = v7;
  a1[2] = v15;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v13;
  return result;
}

uint64_t sub_1C8EFE9F8()
{
  sub_1C8EFEDBC();

  return sub_1C9062B4C();
}

uint64_t sub_1C8EFEAF0()
{
  if (qword_1EC3115A0 != -1)
  {
    OUTLINED_FUNCTION_5_42();
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EC390D70);
  sub_1C9062E5C();
  v2 = *v0;
  OUTLINED_FUNCTION_6();
  if (qword_1EDA69518 != -1)
  {
    OUTLINED_FUNCTION_3_46();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6EAC8);
  sub_1C9062E5C();
  v5 = v0[1];
  v7 = v0[2];

  OUTLINED_FUNCTION_13_0();
  if (qword_1EC3115B0 != -1)
  {
    OUTLINED_FUNCTION_2_57();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC390D88);
  sub_1C9062E5C();
  v6 = v0[3];
  v8 = v0[4];

  OUTLINED_FUNCTION_13_0();
  if (qword_1EC3115B8 != -1)
  {
    OUTLINED_FUNCTION_1_60();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC390DA0);
  sub_1C9062E5C();
  v3 = v0[5];
  return OUTLINED_FUNCTION_6();
}

uint64_t sub_1C8EFEC94()
{
  v0 = qword_1EC319A38;

  return v0;
}

unint64_t sub_1C8EFECD0()
{
  result = qword_1EC319A48;
  if (!qword_1EC319A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A48);
  }

  return result;
}

unint64_t sub_1C8EFED28(void *a1)
{
  a1[1] = sub_1C8EFED68();
  a1[2] = sub_1C8EFEDBC();
  a1[3] = sub_1C8EFEE10();
  result = sub_1C8EFEE64();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8EFED68()
{
  result = qword_1EC319A50;
  if (!qword_1EC319A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A50);
  }

  return result;
}

unint64_t sub_1C8EFEDBC()
{
  result = qword_1EC319A58;
  if (!qword_1EC319A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A58);
  }

  return result;
}

unint64_t sub_1C8EFEE10()
{
  result = qword_1EDA69500;
  if (!qword_1EDA69500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69500);
  }

  return result;
}

unint64_t sub_1C8EFEE64()
{
  result = qword_1EC319A60;
  if (!qword_1EC319A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A60);
  }

  return result;
}

unint64_t sub_1C8EFEEBC()
{
  result = qword_1EC319A68;
  if (!qword_1EC319A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A68);
  }

  return result;
}

unint64_t sub_1C8EFEF10()
{
  result = qword_1EDA69530;
  if (!qword_1EDA69530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69530);
  }

  return result;
}

uint64_t sub_1C8EFEFA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8EFEF10();
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for ContainerMetadataSynonymRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8EFF0FC()
{
  result = qword_1EC319A80;
  if (!qword_1EC319A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A80);
  }

  return result;
}

unint64_t sub_1C8EFF154()
{
  result = qword_1EDA69520;
  if (!qword_1EDA69520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69520);
  }

  return result;
}

unint64_t sub_1C8EFF1AC()
{
  result = qword_1EDA69528;
  if (!qword_1EDA69528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69528);
  }

  return result;
}

uint64_t sub_1C8EFF210()
{
  sub_1C8EFF63C();
  sub_1C9062E0C();

  return v1;
}