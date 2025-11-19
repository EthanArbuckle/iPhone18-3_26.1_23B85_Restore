uint64_t OUTLINED_FUNCTION_11_0(unint64_t *a1)
{

  return sub_1C8D07450(a1, v1);
}

uint64_t OUTLINED_FUNCTION_342(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

void OUTLINED_FUNCTION_11_2(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *(v4 + 393) = a4;
  *(v4 + 368) = a2;
  *(v4 + 384) = a3;
  *(v4 + 352) = a1;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C8D64C20(v8, v7, v6, v5, a5);
}

void OUTLINED_FUNCTION_11_12()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[6];
}

uint64_t OUTLINED_FUNCTION_11_13()
{

  return sub_1C8D85364(v0, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_18()
{
  *(v0 + 576) = 0;
  *(v0 + 544) = 0u;
  *(v0 + 560) = 0u;
  *(v0 + 512) = 0u;
  *(v0 + 528) = 0u;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0u;

  return sub_1C8D07294(v0 + 704, v0 + 336);
}

uint64_t OUTLINED_FUNCTION_11_21()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return swift_once();
}

void OUTLINED_FUNCTION_11_26()
{
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
}

uint64_t OUTLINED_FUNCTION_11_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_37()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_39()
{
  v2 = *(v0 - 528);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_11_43()
{

  return swift_once();
}

uint64_t sub_1C8C9D7B0(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit23RuntimeDeviceCapabilityO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C8C9D7F0@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1C8D0EA58(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void TypeInstance.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134A8, &qword_1C906BAF0);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134B0, &qword_1C906BAF8);
  OUTLINED_FUNCTION_11(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134B8, &qword_1C906BB00);
  OUTLINED_FUNCTION_11(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134C0, &qword_1C906BB08);
  OUTLINED_FUNCTION_11(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134C8, &qword_1C906BB10);
  OUTLINED_FUNCTION_11(v64);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134D0, &qword_1C906BB18);
  OUTLINED_FUNCTION_11(v63);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_110();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134D8, &qword_1C906BB20);
  OUTLINED_FUNCTION_11(v21);
  v62 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_142();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134E0, &qword_1C906BB28);
  OUTLINED_FUNCTION_11(v25);
  v65 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_15_0();
  v29 = *v1;
  v30 = *(v4 + 24);
  v31 = *(v4 + 32);
  v32 = OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_217(v32, v33);
  sub_1C8C9F5F8();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  switch(v29 >> 61)
  {
    case 1uLL:
      v47 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1C8CA6D3C();

      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      sub_1C8CA6D90();
      sub_1C9064B8C();
      v48 = OUTLINED_FUNCTION_68_0();
      v49(v48);
      v50 = *(v65 + 8);
      v51 = OUTLINED_FUNCTION_125();
      goto LABEL_16;
    case 2uLL:
      v41 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1C8D38158();
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      sub_1C8CA6D90();
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_167_0();
      sub_1C9064B8C();
      if (!v2)
      {
        OUTLINED_FUNCTION_124_1();
        sub_1C8D381AC();
        OUTLINED_FUNCTION_102_0();
        OUTLINED_FUNCTION_167_0();
        sub_1C9064B0C();
      }

      goto LABEL_13;
    case 3uLL:
      v42 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1C8D38094();
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134F8, &qword_1C906BB38);
      sub_1C8D380E8(&unk_1EDA66718);
      sub_1C9064B8C();
      v43 = OUTLINED_FUNCTION_36_3();
      v44(v43);
      v45 = OUTLINED_FUNCTION_17_3();
      goto LABEL_14;
    case 4uLL:
      v38 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1C8CA5614();
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      sub_1C8C9FB9C();
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_167_0();
      sub_1C9064B8C();
      if (!v2)
      {
        OUTLINED_FUNCTION_124_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134F0, &qword_1C906BB30);
        OUTLINED_FUNCTION_51_2();
        sub_1C8CA5CAC(v39);
        OUTLINED_FUNCTION_102_0();
        OUTLINED_FUNCTION_189_0();
      }

      goto LABEL_13;
    case 5uLL:
      v54 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1C8D37FEC();
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      sub_1C8CA6D90();
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_167_0();
      sub_1C9064B8C();
      if (!v2)
      {
        OUTLINED_FUNCTION_124_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134F0, &qword_1C906BB30);
        OUTLINED_FUNCTION_51_2();
        sub_1C8CA5CAC(v55);
        OUTLINED_FUNCTION_102_0();
        OUTLINED_FUNCTION_189_0();
      }

LABEL_13:
      v56 = OUTLINED_FUNCTION_125_1();
      v57(v56);
      v58 = *(v65 + 8);
      v45 = OUTLINED_FUNCTION_125();
LABEL_14:
      v46(v45);
      goto LABEL_18;
    case 6uLL:
      v59 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1C8D37F98();

      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      sub_1C8CA6D90();
      sub_1C9064B8C();
      v60 = OUTLINED_FUNCTION_36_3();
      v61(v60);
      v51 = OUTLINED_FUNCTION_17_3();
LABEL_16:
      v52(v51);
      goto LABEL_17;
    default:
      v34 = *(v29 + 16);
      sub_1C8C9F5A4();

      sub_1C9064ACC();
      sub_1C8C9FB9C();
      sub_1C9064B8C();
      (*(v62 + 8))(v0, v21);
      v35 = OUTLINED_FUNCTION_36_3();
      v36(v35);
LABEL_17:

LABEL_18:
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return sub_1C9062BFC();
}

id OUTLINED_FUNCTION_10_3()
{

  return sub_1C8D13FA0(0xD000000000000017, v0 | 0x8000000000000000, v1);
}

__n128 OUTLINED_FUNCTION_10_4()
{
  v2 = *(v1 - 144);
  *(v0 + 496) = *(v1 - 160);
  *(v0 + 512) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 528) = result;
  *(v0 + 544) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7()
{

  return sub_1C9064B0C();
}

uint64_t OUTLINED_FUNCTION_10_10()
{

  return sub_1C8D73304(v0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return sub_1C8D75C28(v0, type metadata accessor for TypedValue.ID);
}

uint64_t OUTLINED_FUNCTION_10_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return sub_1C8D85364(v0, type metadata accessor for ToolKitProtoTypeInstance.Optional);
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_18()
{
  v2 = *(v0 - 456);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_22()
{

  return sub_1C9064BDC();
}

char *OUTLINED_FUNCTION_10_23()
{

  return sub_1C8D096FC(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_10_24(sqlite3_stmt *a1)
{

  return sqlite3_column_type(a1, v1);
}

uint64_t OUTLINED_FUNCTION_37()
{
}

uint64_t OUTLINED_FUNCTION_10_28()
{

  return sub_1C9064C2C();
}

void OUTLINED_FUNCTION_10_30()
{
  v0[8] = 0;
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
}

uint64_t OUTLINED_FUNCTION_10_31()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_16_0()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_10_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_39()
{

  return sub_1C8F16490(v0, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
}

uint64_t OUTLINED_FUNCTION_10_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_43()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);

  return _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
}

uint64_t OUTLINED_FUNCTION_10_51()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6()
{

  return sub_1C9062BFC();
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_1()
{
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return sub_1C9062BFC();
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_6_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_14()
{
  v2 = *(v1 + 8);
  v4 = *(v0 + 16);
  return *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_6_19()
{

  return TypeIdentifier.asSourced(from:attribution:)((v0 - 296), (v0 - 304));
}

uint64_t OUTLINED_FUNCTION_6_23(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);

  return sub_1C9062E5C();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_74()
{
  v2 = *(v0 - 184);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_6_29()
{
  v2 = *(v0 - 104);

  return sub_1C9064ACC();
}

void OUTLINED_FUNCTION_6_31()
{
  *(v0 + 12) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
}

uint64_t OUTLINED_FUNCTION_6_32@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_6_33(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_6_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{

  return sub_1C8ED3E6C(&a49, &a35);
}

uint64_t OUTLINED_FUNCTION_6_37()
{

  return sub_1C8F07110();
}

uint64_t OUTLINED_FUNCTION_6_38()
{

  return sub_1C9062BFC();
}

uint64_t OUTLINED_FUNCTION_6_42()
{
  v2 = *(v0 - 336);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_6_47()
{

  return sub_1C9062BFC();
}

uint64_t OUTLINED_FUNCTION_6_49()
{

  return sub_1C9064B2C();
}

uint64_t OUTLINED_FUNCTION_6_51()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_52()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_164_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_167_2()
{

  return sub_1C906461C();
}

uint64_t OUTLINED_FUNCTION_167_3()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_214()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_19_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return sub_1C8CD0D98(v0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_9()
{

  return sub_1C8D7AE88();
}

uint64_t OUTLINED_FUNCTION_19_10()
{

  return sub_1C8D85364(v0, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
}

uint64_t OUTLINED_FUNCTION_19_14()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 936);

  return sub_1C906498C();
}

void OUTLINED_FUNCTION_19_15()
{

  TypeInstance.asSourced(from:attribution:)((v0 + 592), (v0 + 336));
}

uint64_t OUTLINED_FUNCTION_19_17()
{
  v2 = *(v0 - 96);

  return sub_1C9064B2C();
}

uint64_t OUTLINED_FUNCTION_19_21(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 24);
}

void OUTLINED_FUNCTION_19_22()
{
  v2 = (v0 + *(v1 + 96));
  *v2 = 0;
  v2[1] = 0;
  v3 = *(v1 + 100);
}

void OUTLINED_FUNCTION_19_27()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_19_29()
{
  v2 = *(v0 - 96);

  return sub_1C906498C();
}

char *OUTLINED_FUNCTION_19_34()
{
  v2 = *(v0 + 16) + 1;

  return sub_1C8D0A094(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_126(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

__n128 OUTLINED_FUNCTION_126_1()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 208);
  return *(v0 + 224);
}

void OUTLINED_FUNCTION_126_2()
{
  *(v4 - 128) = v1;
  *(v4 - 120) = v2;
  *(v4 - 112) = v3;
  *(v4 - 104) = v0;
}

uint64_t OUTLINED_FUNCTION_126_3()
{

  return sub_1C9064A6C();
}

void OUTLINED_FUNCTION_126_5(__n128 a1, __n128 a2)
{
  v2->n128_u64[0] = v4;
  v2->n128_u64[1] = v5;
  v2[1] = a2;
  v2[2] = a1;
  v2[3].n128_u64[0] = v6;
  v7 = *(v3 + 56);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C8C9F5A4()
{
  result = qword_1EDA6CE28[0];
  if (!qword_1EDA6CE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6CE28);
  }

  return result;
}

unint64_t sub_1C8C9F5F8()
{
  result = qword_1EDA6CE10;
  if (!qword_1EDA6CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CE10);
  }

  return result;
}

void OUTLINED_FUNCTION_151_0()
{

  TypedValue.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_151_2()
{
  v2 = *(v0 - 96);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_151_5()
{
  v2 = *(v0 - 96);
  *(v0 - 104) = *(v0 - 104);
  *(v0 - 96) = v2;
}

uint64_t sub_1C8C9F73C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x697463656C6C6F63;
      break;
    case 2:
      result = 0x6C616E6F6974706FLL;
      break;
    case 3:
      result = 0x6E6F696E75;
      break;
    case 4:
      result = 0x7463697274736572;
      break;
    case 5:
      result = 0x69617274736E6F63;
      break;
    case 6:
      result = 0x6465727265666564;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_1C8C9F830(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C8C9F8ECLL);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8C9F914(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_80(v8);
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_task_alloc();
}

__n128 OUTLINED_FUNCTION_74_7(uint64_t a1)
{
  v4 = v2 + *(a1 + 28);
  result = *v1;
  v6 = *(v1 + 16);
  *v4 = *v1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

void OUTLINED_FUNCTION_74_8()
{

  JUMPOUT(0x1CCA81A90);
}

_BYTE *sub_1C8C9FAD0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C8C9FB6CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C8C9FB9C()
{
  result = qword_1EDA6D558;
  if (!qword_1EDA6D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D558);
  }

  return result;
}

uint64_t sub_1C8C9FC0C(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_190(a1);
}

void TypeIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DC98, &qword_1C90BC7D0);
  OUTLINED_FUNCTION_11(v56);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DCA0, &qword_1C90BC7D8);
  OUTLINED_FUNCTION_11(v55);
  v54 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  v53 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DCA8, &qword_1C90BC7E0);
  OUTLINED_FUNCTION_11(v11);
  v52 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DCB0, &qword_1C90BC7E8);
  v51 = OUTLINED_FUNCTION_11(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DCB8, &qword_1C90BC7F0);
  OUTLINED_FUNCTION_11(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DCC0, &qword_1C90BC7F8);
  v57 = OUTLINED_FUNCTION_11(v21);
  v58 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_72();
  v25 = *v0;
  v26 = v4[4];
  OUTLINED_FUNCTION_217(v4, v4[3]);
  sub_1C8CA2A24();
  v27 = v2;
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  switch(v25 >> 61)
  {
    case 1uLL:
      v46 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1C8D3F120(v46);
      sub_1C9019164();
      sub_1C9064ACC();
      v60[0] = v46;
      sub_1C90191B8();
      sub_1C9064B8C();
      v47 = OUTLINED_FUNCTION_107_3();
      v48(v47, v51);
      v49 = OUTLINED_FUNCTION_30();
      v50(v49, v57);
      sub_1C8D3F130(v46);
      break;
    case 2uLL:
      v35 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v37 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v38 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      sub_1C9019110();
      sub_1C9064ACC();
      LOBYTE(v60[0]) = 0;
      sub_1C9064B2C();
      if (!v1)
      {
        LOBYTE(v60[0]) = 1;
        sub_1C9064B2C();
      }

      v39 = *(v52 + 8);
      v40 = OUTLINED_FUNCTION_136();
      v41(v40);
      v42 = OUTLINED_FUNCTION_107_3();
      v43(v42, v57);
      break;
    case 3uLL:
      memcpy(v60, ((v25 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0xE0uLL);
      OUTLINED_FUNCTION_44_23();
      sub_1C8D3EFB8(v60, v59);
      sub_1C9019068();
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      memcpy(v59, v60, sizeof(v59));
      sub_1C90190BC();
      sub_1C9064B8C();
      (*(v54 + 8))(v53, v55);
      v44 = OUTLINED_FUNCTION_17_3();
      v45(v44);
      sub_1C8D3F014(v60);
      break;
    case 4uLL:
      v31 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v60[0]) = 4;
      sub_1C9019014();
      OUTLINED_FUNCTION_63_12();
      sub_1C9064ACC();
      sub_1C9064B2C();
      v33 = OUTLINED_FUNCTION_107_3();
      v34(v33, v56);
      (*(v58 + 8))(v27, v57);
      break;
    default:
      v28 = *(v25 + 16);
      sub_1C8CA0D3C();
      sub_1C9064ACC();
      LOBYTE(v60[0]) = v28;
      sub_1C8CA0FC8();
      sub_1C9064B8C();
      v29 = OUTLINED_FUNCTION_184_3();
      v30(v29, v18);
      (*(v58 + 8))(v27, v57);
      break;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_10()
{
  v2 = *(v0 - 104);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_4_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_1C9062BFC();
}

uint64_t OUTLINED_FUNCTION_4_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_4_19()
{
  __swift_project_value_buffer(v0, v1);

  return sub_1C90623FC();
}

uint64_t OUTLINED_FUNCTION_4_20()
{
  v2 = *(v0 - 184);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_4_22@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t *OUTLINED_FUNCTION_4_27(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = result[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_28()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_4_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_31@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 176);
  v4 = *(v1 - 168);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_4_33()
{
  v2 = *(v0 + 136);

  return sub_1C8E59658(v2, type metadata accessor for ConcreteResolvable);
}

void OUTLINED_FUNCTION_4_34()
{
  v1 = *(v0 - 416);
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
}

uint64_t OUTLINED_FUNCTION_4_38()
{
  v2 = *(v0 - 304);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_99@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 120);
  v4 = *(v1 - 112);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_4_46()
{

  return sub_1C8F11F04(v0, type metadata accessor for ToolIcon);
}

uint64_t OUTLINED_FUNCTION_4_47(uint64_t a1)
{
  *(a1 + 8) = sub_1C8F12BF8;
  v2 = v1[21];
  v3 = v1[5];
  return v1[4];
}

uint64_t OUTLINED_FUNCTION_4_50()
{

  return sub_1C8F22C30(v0, type metadata accessor for ToolKitProtoTypeIdentifier.Attributed);
}

uint64_t OUTLINED_FUNCTION_4_51()
{

  return sub_1C9062BFC();
}

uint64_t OUTLINED_FUNCTION_4_52()
{
  v2 = *(v0 - 336);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_4_53()
{

  return sub_1C8F38134(v0, type metadata accessor for ConcreteResolvable);
}

uint64_t OUTLINED_FUNCTION_4_54()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 1;
  return v0 - 208;
}

uint64_t OUTLINED_FUNCTION_4_62()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_63()
{

  return sub_1C9062CBC();
}

uint64_t OUTLINED_FUNCTION_4_64()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_65()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_4()
{

  return sub_1C8CD0D98(v0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday);
}

uint64_t OUTLINED_FUNCTION_42_7()
{
  v2 = *(v0 - 72);

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_42_12(uint64_t a1, unint64_t a2)
{

  return sub_1C8CACE04(a1, a2, (v2 - 72));
}

uint64_t OUTLINED_FUNCTION_42_14(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_42_15(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v12 = *a1;
  v13 = a1[2];
  v6 = a2[1];
  v7 = a2[3];
  v9 = *a2;
  v10 = a2[2];
  v11 = a2[4];
}

unint64_t sub_1C8CA0D3C()
{
  result = qword_1EDA6CCF8;
  if (!qword_1EDA6CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CCF8);
  }

  return result;
}

uint64_t sub_1C8CA0D98(char a1)
{
  result = 0x766974696D697270;
  switch(a1)
  {
    case 1:
      result = 0x6E69746C697562;
      break;
    case 2:
      result = 0x6D6F74737563;
      break;
    case 3:
      result = 0x7475626972747461;
      break;
    case 4:
      result = 0x656C6261646F63;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypeIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C8CA0F18);
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

uint64_t getEnumTagSinglePayload for TypeDisplayRepresentationRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1C8CA0FC8()
{
  result = qword_1EDA6CD00;
  if (!qword_1EDA6CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD00);
  }

  return result;
}

_BYTE *sub_1C8CA1024(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C8CA10C0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8CA10F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DCC448(a1, a2);
  *a3 = result & 1;
  return result;
}

void TypeIdentifier.PrimitiveTypeIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  v223 = v21;
  v25 = v20;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE40, &qword_1C90BC958);
  v29 = OUTLINED_FUNCTION_11(v28);
  v218 = v30;
  v219 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_20_32(v33, v181[0]);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE48, &qword_1C90BC960);
  v35 = OUTLINED_FUNCTION_11(v34);
  v215 = v36;
  v216 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_17_35(v39, v181[0]);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE50, &qword_1C90BC968);
  v41 = OUTLINED_FUNCTION_11(v40);
  v212 = v42;
  v213 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_19_32(v45, v181[0]);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE58, &qword_1C90BC970);
  v47 = OUTLINED_FUNCTION_11(v46);
  v210[0] = v48;
  v210[1] = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_16_32(v51, v181[0]);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE60, &qword_1C90BC978);
  v53 = OUTLINED_FUNCTION_11(v52);
  v207 = v54;
  v208 = v53;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_18_33(v57, v181[0]);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE68, &qword_1C90BC980);
  v59 = OUTLINED_FUNCTION_11(v58);
  v204 = v60;
  v205 = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_13_34(v63, v181[0]);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE70, &qword_1C90BC988);
  OUTLINED_FUNCTION_4_22(v64, &a17);
  v201 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_21_28(v68, v181[0]);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE78, &qword_1C90BC990);
  OUTLINED_FUNCTION_4_22(v69, &a14);
  v198 = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE80, &qword_1C90BC998);
  OUTLINED_FUNCTION_4_22(v74, &a11);
  v195 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE88, &qword_1C90BC9A0);
  OUTLINED_FUNCTION_4_22(v79, &v224);
  v192 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE90, &qword_1C90BC9A8);
  OUTLINED_FUNCTION_4_22(v84, &v221);
  v189 = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE98, &qword_1C90BC9B0);
  OUTLINED_FUNCTION_4_22(v89, &v218);
  v186 = v90;
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DEA0, &qword_1C90BC9B8);
  OUTLINED_FUNCTION_4_22(v94, &v215);
  v183 = v95;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DEA8, &qword_1C90BC9C0);
  OUTLINED_FUNCTION_4_22(v99, &v213);
  v181[31] = v100;
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DEB0, &qword_1C90BC9C8);
  OUTLINED_FUNCTION_4_22(v104, v210);
  v181[27] = v105;
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DEB8, &qword_1C90BC9D0);
  OUTLINED_FUNCTION_4_22(v109, &v207);
  v181[24] = v110;
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DEC0, &qword_1C90BC9D8);
  OUTLINED_FUNCTION_4_22(v114, &v204);
  v181[21] = v115;
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DEC8, &qword_1C90BC9E0);
  OUTLINED_FUNCTION_4_22(v119, &v201);
  v181[18] = v120;
  v122 = *(v121 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DED0, &qword_1C90BC9E8);
  OUTLINED_FUNCTION_4_22(v124, &v198);
  v181[15] = v125;
  v127 = *(v126 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DED8, &qword_1C90BC9F0);
  OUTLINED_FUNCTION_4_22(v129, &v195);
  v181[12] = v130;
  v132 = *(v131 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DEE0, &qword_1C90BC9F8);
  OUTLINED_FUNCTION_4_22(v134, &v192);
  v181[9] = v135;
  v137 = *(v136 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v138);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DEE8, &qword_1C90BCA00);
  OUTLINED_FUNCTION_4_22(v139, &v189);
  v181[6] = v140;
  v142 = *(v141 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v143);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DEF0, &qword_1C90BCA08);
  OUTLINED_FUNCTION_4_22(v144, &v186);
  v181[3] = v145;
  v147 = *(v146 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v148);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DEF8, &qword_1C90BCA10);
  OUTLINED_FUNCTION_11(v149);
  v181[1] = v150;
  v152 = *(v151 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  v154 = v181 - v153;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF00, &qword_1C90BCA18);
  OUTLINED_FUNCTION_11(v155);
  v181[0] = v156;
  v158 = *(v157 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_233();
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF08, &qword_1C90BCA20);
  v221 = OUTLINED_FUNCTION_11(v159);
  v222 = v160;
  v162 = *(v161 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_72();
  v163 = *v25;
  v164 = v27[4];
  OUTLINED_FUNCTION_217(v27, v27[3]);
  sub_1C8CA2AA0();
  v220 = v22;
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  switch(v163)
  {
    case 23:
      HIBYTE(a10) = 0;
      sub_1C8CA4D9C();
      OUTLINED_FUNCTION_25_23();
      OUTLINED_FUNCTION_296(&v182);
      v165 = OUTLINED_FUNCTION_114();
      goto LABEL_28;
    case 24:
      OUTLINED_FUNCTION_275();
      sub_1C8CA4D48();
      v169 = v221;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      v170 = OUTLINED_FUNCTION_23(&v183);
      v171(v170, v149);
      v172 = OUTLINED_FUNCTION_33_18();
      v174 = v169;
      goto LABEL_29;
    case 25:
      OUTLINED_FUNCTION_119_1();
      sub_1C9019DDC();
      OUTLINED_FUNCTION_99(&v184);
      v165 = OUTLINED_FUNCTION_6_26(&v185);
      v168 = &v186;
      goto LABEL_23;
    case 26:
      OUTLINED_FUNCTION_44_23();
      sub_1C9019D88();
      OUTLINED_FUNCTION_99(&v187);
      v165 = OUTLINED_FUNCTION_6_26(&v188);
      v168 = &v189;
      goto LABEL_23;
    case 27:
      OUTLINED_FUNCTION_231_2();
      sub_1C9019D34();
      OUTLINED_FUNCTION_99(&v190);
      v165 = OUTLINED_FUNCTION_6_26(&v191);
      v168 = &v192;
      goto LABEL_23;
    case 28:
      OUTLINED_FUNCTION_219_1();
      sub_1C8CA2E68();
      OUTLINED_FUNCTION_99(&v193);
      v165 = OUTLINED_FUNCTION_6_26(&v194);
      v168 = &v195;
      goto LABEL_23;
    case 29:
      OUTLINED_FUNCTION_270();
      sub_1C8CA6AB8();
      OUTLINED_FUNCTION_99(&v196);
      v165 = OUTLINED_FUNCTION_6_26(&v197);
      v168 = &v198;
      goto LABEL_23;
    case 30:
      OUTLINED_FUNCTION_269();
      sub_1C8CA6770();
      OUTLINED_FUNCTION_99(&v199);
      v165 = OUTLINED_FUNCTION_6_26(&v200);
      v168 = &v201;
      goto LABEL_23;
    case 31:
      OUTLINED_FUNCTION_53_16();
      sub_1C9019CE0();
      OUTLINED_FUNCTION_99(&v202);
      v165 = OUTLINED_FUNCTION_6_26(&v203);
      v168 = &v204;
      goto LABEL_23;
    case 32:
      OUTLINED_FUNCTION_60_15();
      sub_1C9019C8C();
      OUTLINED_FUNCTION_99(&v205);
      v165 = OUTLINED_FUNCTION_6_26(&v206);
      v168 = &v207;
      goto LABEL_23;
    case 33:
      OUTLINED_FUNCTION_54_16();
      sub_1C9019C38();
      OUTLINED_FUNCTION_99(&v208);
      v165 = OUTLINED_FUNCTION_6_26(&v209);
      v168 = v210;
      goto LABEL_23;
    case 34:
      OUTLINED_FUNCTION_61_17();
      sub_1C9019B3C();
      OUTLINED_FUNCTION_99(&v211);
      v165 = OUTLINED_FUNCTION_6_26(&v214);
      v168 = &v215;
      goto LABEL_23;
    case 35:
      OUTLINED_FUNCTION_56_14();
      sub_1C9019AE8();
      OUTLINED_FUNCTION_99(&v216);
      v165 = OUTLINED_FUNCTION_6_26(&v217);
      v168 = &v218;
      goto LABEL_23;
    case 36:
      OUTLINED_FUNCTION_63_15();
      sub_1C8CA6CE8();
      OUTLINED_FUNCTION_99(&v219);
      v165 = OUTLINED_FUNCTION_6_26(&v220);
      v168 = &v221;
      goto LABEL_23;
    case 37:
      OUTLINED_FUNCTION_71_10();
      sub_1C8CA6DE4();
      OUTLINED_FUNCTION_99(&v222);
      v165 = OUTLINED_FUNCTION_6_26(&v223);
      v168 = &v224;
      goto LABEL_23;
    case 38:
      OUTLINED_FUNCTION_59_15();
      sub_1C8CA5B78();
      OUTLINED_FUNCTION_99(&a9);
      v165 = OUTLINED_FUNCTION_6_26(&a10);
      v168 = &a11;
      goto LABEL_23;
    case 39:
      OUTLINED_FUNCTION_80_8();
      sub_1C8CA4C80();
      OUTLINED_FUNCTION_99(&a12);
      v165 = OUTLINED_FUNCTION_6_26(&a13);
      v168 = &a14;
      goto LABEL_23;
    case 40:
      OUTLINED_FUNCTION_78_10();
      sub_1C9019A94();
      OUTLINED_FUNCTION_99(&a15);
      v165 = OUTLINED_FUNCTION_6_26(&a16);
      v168 = &a17;
LABEL_23:
      v166 = *(v168 - 32);
      goto LABEL_28;
    case 41:
      OUTLINED_FUNCTION_76_10();
      sub_1C9019A40();
      OUTLINED_FUNCTION_84_7();
      OUTLINED_FUNCTION_99(v175);
      goto LABEL_27;
    case 42:
      OUTLINED_FUNCTION_75_6();
      sub_1C90199EC();
      OUTLINED_FUNCTION_12_38();
      goto LABEL_27;
    case 43:
      OUTLINED_FUNCTION_77_9();
      sub_1C9019998();
      OUTLINED_FUNCTION_12_38();
      goto LABEL_27;
    case 44:
      HIBYTE(a10) = 22;
      sub_1C9019944();
      OUTLINED_FUNCTION_12_38();
      goto LABEL_27;
    case 45:
      HIBYTE(a10) = 23;
      sub_1C90198F0();
      OUTLINED_FUNCTION_12_38();
      goto LABEL_27;
    case 46:
      HIBYTE(a10) = 24;
      sub_1C901989C();
      OUTLINED_FUNCTION_12_38();
LABEL_27:
      v165 = OUTLINED_FUNCTION_30();
LABEL_28:
      v167(v165, v166);
      v172 = OUTLINED_FUNCTION_33_18();
      v174 = v154;
LABEL_29:
      v173(v172, v174);
      break;
    default:
      OUTLINED_FUNCTION_62_14();
      sub_1C9019B90();
      v176 = v181[29];
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      HIBYTE(a10) = v163;
      sub_1C9019BE4();
      v177 = v182;
      sub_1C9064B0C();
      OUTLINED_FUNCTION_296(&v212);
      v178(v176, v177);
      v179 = OUTLINED_FUNCTION_17_3();
      v180(v179);
      break;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return sub_1C8D9913C();
}

uint64_t OUTLINED_FUNCTION_208()
{

  return sub_1C9064DEC();
}

void OUTLINED_FUNCTION_86_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void OUTLINED_FUNCTION_86_6(uint64_t a1)
{
  v5 = *(v3 + 128);
  v6 = *(v3 + 64);

  sub_1C8D01AAC(a1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_228_1()
{
  *v0 = *(v1 - 72);
  *(v1 - 82) = 1;

  return sub_1C9064A0C();
}

uint64_t OUTLINED_FUNCTION_228_2()
{
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];

  return sub_1C906371C();
}

uint64_t OUTLINED_FUNCTION_228_4()
{
}

void OUTLINED_FUNCTION_90()
{

  sub_1C8D00CA4();
}

uint64_t OUTLINED_FUNCTION_44_2()
{
  v2 = *(v0 - 208);

  return sub_1C906292C();
}

uint64_t OUTLINED_FUNCTION_44_3()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t OUTLINED_FUNCTION_44_4()
{
  v3 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v4 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v5 = v0 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *(v5 + 24);
  v8 = *(v5 + 16);
}

uint64_t OUTLINED_FUNCTION_44_7@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v2 - 176);
  v5 = *(v2 - 224);
  return v1 + 1;
}

uint64_t OUTLINED_FUNCTION_44_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = v1;
  *(v2 - 88) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_44_13()
{
}

void OUTLINED_FUNCTION_43_2()
{
  *(v3 - 140) = v0;
  *(v3 - 136) = v2;
  *(v3 - 128) = v1;
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_43_4()
{

  return sub_1C90647CC();
}

uint64_t OUTLINED_FUNCTION_43_9()
{
  v2 = *(v0 - 88);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_43_16()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_18()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_22(unint64_t *a1)
{

  return sub_1C8D28184(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_75()
{

  return sub_1C8D02958();
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_75_3()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_1C9064ACC();
}

void OUTLINED_FUNCTION_75_7()
{
  v2 = (v0 + *(v1 + 28));
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(v2 + 32);
}

uint64_t OUTLINED_FUNCTION_75_8()
{
  v2 = *(v0 - 232);

  return swift_allocObject();
}

unint64_t sub_1C8CA2A24()
{
  result = qword_1EDA6D158;
  if (!qword_1EDA6D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D158);
  }

  return result;
}

unint64_t sub_1C8CA2AA0()
{
  result = qword_1EDA6CDB8;
  if (!qword_1EDA6CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDB8);
  }

  return result;
}

unint64_t sub_1C8CA2AFC(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 1819242338;
      break;
    case 2:
      result = 7630441;
      break;
    case 3:
      result = 0x7265626D756ELL;
      break;
    case 4:
      result = 0x6C616D69636564;
      break;
    case 5:
      result = 0x676E69727473;
      break;
    case 6:
      result = 1702125924;
      break;
    case 7:
      result = 0x706D6F4365746164;
      break;
    case 8:
      result = 7107189;
      break;
    case 9:
      result = 0x616E6F6974636964;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6D6572757361656DLL;
      break;
    case 12:
      result = 0x79636E6572727563;
      break;
    case 13:
      result = 0x4D746E656D796170;
      break;
    case 14:
      result = 0x72616D6563616C70;
      break;
    case 15:
      result = 0x6E6F73726570;
      break;
    case 16:
      result = 1701603686;
      break;
    case 17:
      result = 7368801;
      break;
    case 18:
      result = 0x6261686372616573;
      break;
    case 19:
      result = 0x6E65727275636572;
      break;
    case 20:
      result = 0x4673746E65746E69;
      break;
    case 21:
      result = 0x74756374726F6873;
      break;
    case 22:
      result = 0x65746E4965746164;
      break;
    case 23:
      result = 0x6E6F697461727564;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_308()
{

  return sub_1C9064D9C();
}

uint64_t OUTLINED_FUNCTION_218_1()
{

  return sub_1C8D63FCC();
}

unint64_t sub_1C8CA2E68()
{
  result = qword_1EDA6CD38;
  if (!qword_1EDA6CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_132_2()
{
  *(v2 - 104) = v1;
  *(v2 - 96) = v0;
  return 255;
}

uint64_t OUTLINED_FUNCTION_213()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_414()
{

  JUMPOUT(0x1CCA81A90);
}

void OUTLINED_FUNCTION_81()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_81_1()
{
  v2 = *(v0 - 72);
  v3 = *(v0 - 152);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_81_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_81_3()
{

  return sub_1C8E4DA34(v0, type metadata accessor for ToolExecutionResult);
}

void OUTLINED_FUNCTION_81_6()
{

  JUMPOUT(0x1CCA7FF80);
}

uint64_t OUTLINED_FUNCTION_81_7@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  a6 = a1;

  return sub_1C8F405C8(&a6);
}

uint64_t OUTLINED_FUNCTION_81_10()
{
  v2 = *(v0 - 256);

  return sub_1C9064A6C();
}

void *OUTLINED_FUNCTION_81_11()
{

  return memcpy((v0 + 264), (v1 - 176), 0x52uLL);
}

uint64_t sub_1C8CA30FC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_109()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_165_3()
{
  result = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_165_6(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *a1 = a2;
  a1[1] = a3;
  v4 = *(v3 + 80);
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_20_6()
{
  v2 = *v0;

  return sub_1C8CAE064();
}

uint64_t OUTLINED_FUNCTION_20_7()
{
  sub_1C8D6E118(*(v2 - 264), v0, *(v2 - 196));
  sub_1C8CE5404(*(v2 - 176), v1);

  return sub_1C9063FBC();
}

uint64_t OUTLINED_FUNCTION_20_9()
{

  return sub_1C8D7AE88();
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return sub_1C8D85364(v0, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
}

void OUTLINED_FUNCTION_20_13()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_20_15()
{

  return sub_1C9062B6C();
}

uint64_t OUTLINED_FUNCTION_20_20()
{

  return sub_1C8E797E8();
}

uint64_t OUTLINED_FUNCTION_20_25()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_20_27()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_89()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_17_8()
{
  v2 = *(v0 - 224);
  v1 = *(v0 - 216);
  v3 = *(v0 - 208);
  v4 = *(v0 - 200);
  result = *(v0 - 192);
  v6 = *(v0 - 176);
  v7 = *(v0 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_15()
{
  v1 = v0[32];
  v2 = v0[29];
  v4 = v0[27];
  v3 = v0[28];
  v12 = v0[24];
  v13 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[16];
  v10 = *(v0[30] + 8);
  return v0[31];
}

uint64_t OUTLINED_FUNCTION_21_2(unint64_t *a1)
{

  return sub_1C8CA669C(a1);
}

uint64_t OUTLINED_FUNCTION_17_17(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_17_18()
{

  return sub_1C9063EEC();
}

uint64_t OUTLINED_FUNCTION_17_21()
{
  *(v1 - 168) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_24()
{
  v3 = *(v0 - 160);
  v2 = *(v0 - 152);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_17_26(uint64_t result)
{
  *(result + 64) = sub_1C8E1AA88;
  *(result + 72) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_27()
{
  v2 = *(v0 - 72);

  return sub_1C906437C();
}

uint64_t OUTLINED_FUNCTION_17_29()
{

  return MEMORY[0x1EEE692D0](v1, v0);
}

uint64_t OUTLINED_FUNCTION_17_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_32()
{
  result = v0[4];
  v2 = v0[2];
  v3 = *(v0[3] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_33()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_17_36()
{
  v2 = *(v0 - 144);

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_17_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_4@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1C8CE925C(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_26()
{
  v2 = *(v0 - 96);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_5_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_5_31(uint64_t a1)
{
  *(a1 + 8) = sub_1C8E54E34;
  v2 = v1[14];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[9];
  return v1[8];
}

void OUTLINED_FUNCTION_5_35()
{
  v0[8] = 0;
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
}

uint64_t OUTLINED_FUNCTION_5_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{

  return sub_1C8ED3E6C(&a63, &a35);
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_5_42()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_46()
{
  result = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[21];
  v7 = v0[18];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_54()
{
}

uint64_t OUTLINED_FUNCTION_5_55()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_5_60()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_61()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_5()
{
  v2 = *(v1 - 128);
  v3 = *(v1 - 140);
  v4 = *(v1 - 104);
  v5 = *(*(v1 - 112) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_9_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return sub_1C8D85364(v0, type metadata accessor for ToolKitProtoTypeInstance.Constrained);
}

uint64_t OUTLINED_FUNCTION_9_16()
{
  v2 = *(v0 - 456);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_9_22()
{

  return sub_1C9064ACC();
}

void OUTLINED_FUNCTION_16_2()
{
  v2 = *(v0 + 16) + 1;

  sub_1C8D00CA4();
}

uint64_t OUTLINED_FUNCTION_9_26()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_9_27()
{
  v2 = *(v0 + 16);

  return sub_1C9062C2C();
}

void OUTLINED_FUNCTION_9_30()
{
  v1 = *(v0 - 256);
  v2 = *(v0 - 248);
  *(v0 - 184) = *(v0 - 216);
  *(v0 - 176) = v1;
  v3 = *(v0 - 240);
  v4 = *(v0 - 232);
  *(v0 - 168) = v2;
  *(v0 - 160) = v3;
  v5 = *(v0 - 224);
  *(v0 - 152) = v4;
  *(v0 - 144) = v5;
}

uint64_t OUTLINED_FUNCTION_9_31()
{

  return sub_1C8F07110();
}

uint64_t OUTLINED_FUNCTION_9_33()
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_34(void *a1, uint64_t a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v7, a3, a4, a5, a6, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_9_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_41()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_9_44(unint64_t *a1)
{

  return sub_1C9059124(a1, v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_9_46()
{

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_77_2()
{
  v3 = *(v0 - 184);
  v2 = *(v0 - 176);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_77_10()
{
  v2 = *(v0 - 256);

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_419()
{

  return sub_1C9064D9C();
}

uint64_t OUTLINED_FUNCTION_298()
{

  return sub_1C9064D7C();
}

uint64_t OUTLINED_FUNCTION_89_0()
{
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[19];
}

_BYTE *sub_1C8CA4860(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
        JUMPOUT(0x1C8CA492CLL);
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8CA4954(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t OUTLINED_FUNCTION_28_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_28_11()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_28_12()
{
  v2 = *(v0 - 344);

  JUMPOUT(0x1CCA833A0);
}

uint64_t OUTLINED_FUNCTION_28_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_17@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C9064ACC();
}

unint64_t sub_1C8CA4C80()
{
  result = qword_1EDA69D08;
  if (!qword_1EDA69D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_344()
{
}

uint64_t OUTLINED_FUNCTION_227_1()
{
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];

  return swift_willThrow();
}

unint64_t sub_1C8CA4D48()
{
  result = qword_1EDA6CD90;
  if (!qword_1EDA6CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD90);
  }

  return result;
}

unint64_t sub_1C8CA4D9C()
{
  result = qword_1EDA6B858;
  if (!qword_1EDA6B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B858);
  }

  return result;
}

void OUTLINED_FUNCTION_250_1()
{
  v2 = v0[2];
  *(v1 - 120) = v0[3];
  *(v1 - 112) = v2;
  v3 = v0[4];
  *(v1 - 136) = v0[5];
  *(v1 - 128) = v3;
}

uint64_t OUTLINED_FUNCTION_48_2()
{
  v2 = (v0 + 32 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void OUTLINED_FUNCTION_48_5()
{
  v1 = *(v0 - 240);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
}

void OUTLINED_FUNCTION_48_8()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_48_10()
{

  return sub_1C90648EC();
}

uint64_t OUTLINED_FUNCTION_48_14()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 2, v1);
}

uint64_t sub_1C8CA503C(char a1)
{
  result = 0x7465536E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = OUTLINED_FUNCTION_146_1();
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = OUTLINED_FUNCTION_145_1();
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_18_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, unint64_t a10, unsigned __int8 a11)
{
  result = a9;
  *v11 = a9;
  v11[1].n128_u64[0] = a10;
  v11[1].n128_u8[8] = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 80);
  v4 = *(v2 + 56);
  return v2 + 16;
}

void OUTLINED_FUNCTION_18_7()
{

  sub_1C8D7C7C8();
}

uint64_t OUTLINED_FUNCTION_18_8()
{

  return sub_1C8D85364(v0, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t OUTLINED_FUNCTION_18_10@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_18_12()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_18_19()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_21()
{

  return sub_1C8E797E8();
}

uint64_t OUTLINED_FUNCTION_18_22()
{
  v3 = *(v0 - 168);
  v2 = *(v0 - 160);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_18_28()
{
  v1 = v0[15];
  v2 = v0[11];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = *(v0[12] + 32);
  return v0[14];
}

void OUTLINED_FUNCTION_18_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_18_31()
{

  return sub_1C90620BC();
}

uint64_t OUTLINED_FUNCTION_18_34(uint64_t result)
{
  *(v2 - 72) = v1;
  v3 = *(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_411()
{

  return sub_1C90647CC();
}

uint64_t OUTLINED_FUNCTION_143_3()
{
  result = type metadata accessor for EnumerationCaseDefinition(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_143_4()
{
}

unint64_t sub_1C8CA5614()
{
  result = qword_1EDA6A038;
  if (!qword_1EDA6A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A038);
  }

  return result;
}

_BYTE *sub_1C8CA5708(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C8CA57C4);
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

uint64_t sub_1C8CA57F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_80(v8);
}

uint64_t OUTLINED_FUNCTION_87_2()
{

  return sub_1C8D9913C();
}

void OUTLINED_FUNCTION_87_7()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 256);
  v4 = *(v0 - 248);
  v5 = *(v0 - 240);
  v6 = *(v0 - 232);
  v7 = *(v0 - 220);

  sub_1C8E1B758(v2, v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_157()
{
  v2 = *(v0 - 72) & 0x1FFFFFFFFFFFFFFFLL;
}

uint64_t OUTLINED_FUNCTION_55_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24)
{

  return sub_1C8D3ED20(v24, a24, a23, v25, a22);
}

uint64_t OUTLINED_FUNCTION_55_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_1C8D070A4(v14 - 224, va);
}

void OUTLINED_FUNCTION_55_7()
{

  sub_1C8D00CA4();
}

uint64_t OUTLINED_FUNCTION_55_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{

  return sub_1C8D07344(&a53, &a27);
}

char *OUTLINED_FUNCTION_55_13@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = a1;

  return sub_1C8D0A0D4(0, v1, 0);
}

unint64_t sub_1C8CA5B78()
{
  result = qword_1EDA69CF0;
  if (!qword_1EDA69CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CF0);
  }

  return result;
}

uint64_t sub_1C8CA5BD0(char a1)
{
  if (a1)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 12383;
  }
}

void OUTLINED_FUNCTION_114_1()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_114_4()
{

  return sub_1C906371C();
}

uint64_t OUTLINED_FUNCTION_114_6()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);
  v4 = *(v0 - 88);
  v5 = *(v0 - 80);
  v6 = *(v0 - 72);

  return sub_1C8D06FF4(v2, v3, v4, v5, v6);
}

uint64_t *OUTLINED_FUNCTION_114_7@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 264) = a1;
  *(v4 - 256) = v1;
  *(v4 - 200) = v2;
  *(v4 - 192) = v3;

  return __swift_allocate_boxed_opaque_existential_1((v4 - 224));
}

unint64_t sub_1C8CA5CAC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3134F0, &qword_1C906BB30);
    v4();
    OUTLINED_FUNCTION_181();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void RestrictionContext.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v0;
  v4 = v3;
  v63 = sub_1C9063C4C();
  v5 = OUTLINED_FUNCTION_11(v63);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v58 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313640, &qword_1C906BC40);
  OUTLINED_FUNCTION_11(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_110();
  v18 = *(v4 + 24);
  v19 = *(v4 + 32);
  v20 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_217(v20, v21);
  sub_1C8CA6338();
  sub_1C9064E1C();
  memcpy(v62, v2, 0x88uLL);
  switch(sub_1C8CA638C(v62))
  {
    case 1u:
      *v61 = *sub_1C8CA62B8(v62);
      v60[0] = 3;
      sub_1C8D3A7A8();
      goto LABEL_14;
    case 2u:
      v54 = v1;
      v25 = sub_1C8CA62B8(v62);
      v26 = *v25;
      v27 = *(*v25 + 16);
      v28 = MEMORY[0x1E69E7CC0];
      if (v27)
      {
        v53 = v12;
        *v61 = MEMORY[0x1E69E7CC0];
        sub_1C8CA6480();
        v28 = *v61;
        v29 = *(v7 + 16);
        v30 = *(v7 + 80);
        OUTLINED_FUNCTION_139();
        v32 = v26 + v31;
        v56 = *(v33 + 56);
        v57 = v34;
        v55 = (v33 - 8);
        do
        {
          v35 = OUTLINED_FUNCTION_136();
          v57(v35);
          v36 = sub_1C9063C1C();
          v38 = v37;
          (*v55)(v58, v63);
          *v61 = v28;
          v40 = *(v28 + 16);
          v39 = *(v28 + 24);
          if (v40 >= v39 >> 1)
          {
            OUTLINED_FUNCTION_176(v39);
            sub_1C8CA6480();
            v28 = *v61;
          }

          *(v28 + 16) = v40 + 1;
          v41 = v28 + 16 * v40;
          *(v41 + 32) = v36;
          *(v41 + 40) = v38;
          v32 += v56;
          --v27;
        }

        while (v27);
        v12 = v53;
      }

      *v61 = v28;
      v60[0] = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      sub_1C8CA6708(&unk_1EDA6B530);
      sub_1C9064B8C();
      (*(v14 + 8))(v54, v12);

      break;
    case 3u:
      v61[0] = *sub_1C8CA62B8(v62);
      v60[0] = 5;
      sub_1C8D3A754();
      goto LABEL_14;
    case 4u:
      v61[0] = *sub_1C8CA62B8(v62);
      v60[0] = 0;
      sub_1C8D3A700();
      goto LABEL_14;
    case 5u:
      v42 = sub_1C8CA62B8(v62);
      v43 = *(v42 + 8);
      v44 = *(v42 + 9);
      *v61 = *v42;
      v61[8] = v43;
      v61[9] = v44;
      v60[0] = 1;
      sub_1C8D3A6AC();
      goto LABEL_14;
    case 6u:
      v45 = sub_1C8CA62B8(v62);
      OUTLINED_FUNCTION_128_1(v45);
      *v61 = v46;
      v61[2] = v47;
      v61[3] = v48;
      v61[4] = v49;
      v61[5] = v50;
      v60[0] = 6;
      sub_1C8D3A658();
LABEL_14:
      sub_1C9064B8C();
      v51 = OUTLINED_FUNCTION_160_0();
      v52(v51);
      break;
    default:
      v22 = sub_1C8CA62B8(v62);
      memcpy(v60, v22, sizeof(v60));
      memcpy(v61, v60, sizeof(v61));
      memcpy(v60, v61, sizeof(v60));
      v59[87] = 2;
      sub_1C8D3A298(v22, v59);
      sub_1C8D3A7FC(v22 + 80, v59);
      sub_1C8D3A858();
      sub_1C9064B8C();
      v23 = OUTLINED_FUNCTION_160_0();
      v24(v23);
      sub_1C8D3A8AC(v61);
      break;
  }

  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8CA6338()
{
  result = qword_1EDA63648;
  if (!qword_1EDA63648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63648);
  }

  return result;
}

void sub_1C8CA6398()
{
  OUTLINED_FUNCTION_202_0();
  if (v3)
  {
    OUTLINED_FUNCTION_37_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_123_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_36_0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
    v9 = OUTLINED_FUNCTION_343();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C8CA6480()
{
  v1 = *v0;
  sub_1C8CA6398();
  *v0 = v2;
}

uint64_t OUTLINED_FUNCTION_184_1()
{
  result = *(v0 - 144);
  v2 = *(v0 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_184_4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_1C8CACE04(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_184_5()
{

  return sub_1C8D63FCC();
}

void OUTLINED_FUNCTION_111_3(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 2;
}

void OUTLINED_FUNCTION_111_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

unint64_t OUTLINED_FUNCTION_111_6()
{
  *(v2 - 184) = v0;
  *(v2 - 176) = v1;
  v4 = *(v2 - 160);
  v5 = *(v2 - 152);
  *(v2 - 65) = 0;

  return sub_1C8E2FB30();
}

uint64_t OUTLINED_FUNCTION_111_7(uint64_t a1)
{
  *(v1 + 384) = a1;
  *v2 = *(v1 + 32);
  return v1 + 488;
}

uint64_t OUTLINED_FUNCTION_231_3()
{
  sub_1C8CD1784(v0);
  sub_1C8CD1784(v1);
  sub_1C8CD1784(v0);
  return v0 & 0x1FFFFFFFFFFFFFFFLL;
}

uint64_t sub_1C8CA669C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312558, &qword_1C9066990);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8CA6708(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312558, &qword_1C9066990);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C8CA6770()
{
  result = qword_1EDA669D8;
  if (!qword_1EDA669D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA669D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_232_0()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

void OUTLINED_FUNCTION_232_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

size_t OUTLINED_FUNCTION_33_0(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return type metadata accessor for ToolDatabase.Transaction();
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_9@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  return j__swift_bridgeObjectRetain();
}

void OUTLINED_FUNCTION_33_10()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];
}

uint64_t OUTLINED_FUNCTION_171(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33_12()
{
}

void OUTLINED_FUNCTION_33_13(unint64_t a1@<X8>, __n128 a2@<Q1>)
{
  v3[2] = a2;
  v3[3].n128_u64[0] = a1;
  v3[3].n128_u8[8] = v2;
}

uint64_t OUTLINED_FUNCTION_33_15()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_33_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_33_17()
{

  JUMPOUT(0x1CCA833A0);
}

uint64_t OUTLINED_FUNCTION_233_2()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = v2;

  return sub_1C906462C();
}

uint64_t OUTLINED_FUNCTION_233_3()
{

  return sub_1C9063FBC();
}

unint64_t sub_1C8CA6AB8()
{
  result = qword_1EDA69CF8;
  if (!qword_1EDA69CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CF8);
  }

  return result;
}

id OUTLINED_FUNCTION_59_0(void *a1)
{

  return [a1 currentProcess];
}

uint64_t OUTLINED_FUNCTION_59_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_59_9()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v7 = v0[24];
  v8 = v0[25];
  v10 = v0[21];
  v9 = v0[22];
}

uint64_t OUTLINED_FUNCTION_59_12(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_1C8D16D78(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_59_13()
{

  return sub_1C8ECC488();
}

uint64_t OUTLINED_FUNCTION_59_14()
{
  *(v1 - 65) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;

  return type metadata accessor for ToolDefinitionQueryRequest();
}

void OUTLINED_FUNCTION_32_0()
{

  JUMPOUT(0x1CCA833A0);
}

__n128 OUTLINED_FUNCTION_59_16()
{
  result = *(v1 - 128);
  v3 = *(v1 - 112);
  v4 = *(v1 - 96);
  *v0 = result;
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  *(v1 - 65) = 1;
  return result;
}

unint64_t sub_1C8CA6CE8()
{
  result = qword_1EDA69CD0;
  if (!qword_1EDA69CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CD0);
  }

  return result;
}

unint64_t sub_1C8CA6D3C()
{
  result = qword_1EDA6CDD0;
  if (!qword_1EDA6CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDD0);
  }

  return result;
}

unint64_t sub_1C8CA6D90()
{
  result = qword_1EDA6B9C8;
  if (!qword_1EDA6B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9C8);
  }

  return result;
}

unint64_t sub_1C8CA6DE4()
{
  result = qword_1EDA69CE8;
  if (!qword_1EDA69CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CE8);
  }

  return result;
}

void OUTLINED_FUNCTION_161_5()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
}

uint64_t OUTLINED_FUNCTION_125_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_125_2()
{
  result = *(v0 - 152);
  v2 = *(v0 - 120);
  return result;
}

__n128 OUTLINED_FUNCTION_125_8(__n128 *a1)
{
  result = *(v1 - 256);
  a1[1] = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_47_4()
{
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];

  return type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
}

uint64_t OUTLINED_FUNCTION_47_13()
{

  return sub_1C8ECA488();
}

void OUTLINED_FUNCTION_47_14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_47_19()
{
  v3 = *(v1 - 184);
  v4 = *(v1 - 144);
  *(v1 - 192) = v0;

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_47_20()
{
  v3 = *(v1 - 152);

  return MEMORY[0x1EEE09BC8](v1 - 128, v0);
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return sub_1C9061D7C();
}

uint64_t OUTLINED_FUNCTION_60_3()
{

  return sub_1C9064D9C();
}

uint64_t OUTLINED_FUNCTION_295()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_60_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void *OUTLINED_FUNCTION_60_11()
{

  return memcpy((v1 - 200), v0, 0x70uLL);
}

void OUTLINED_FUNCTION_60_12()
{
}

void OUTLINED_FUNCTION_60_13()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_60_17()
{
  v2 = *(v0 - 112);

  return sub_1C90355BC();
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_100_3()
{

  return sub_1C9064E1C();
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_207()
{
  v2 = *(v0 - 128);

  return sub_1C8D04DE8();
}

uint64_t OUTLINED_FUNCTION_30_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 32) = v3;
  *(a1 - 24) = v4;
  *(a1 - 16) = v2;
  *(a1 - 8) = v1;
  result = *(v5 - 136);
  v8 = *(v5 - 120);
  v7 = *(v5 - 112);
  v9 = *(v5 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_3()
{

  return sub_1C8D27F8C(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_30_5()
{
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return sub_1C8D64D9C();
}

uint64_t OUTLINED_FUNCTION_30_9()
{
  v2 = *(v0 - 72);

  return sub_1C906351C();
}

void OUTLINED_FUNCTION_30_11(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_30_14()
{

  return swift_once();
}

void OUTLINED_FUNCTION_30_16()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_30_17(uint64_t a1)
{

  return MEMORY[0x1EEE09C08](a1, v1, a1);
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_30_20()
{

  return sub_1C8ECA488();
}

uint64_t OUTLINED_FUNCTION_30_23@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_30_28()
{

  return sub_1C90627DC();
}

uint64_t OUTLINED_FUNCTION_30_29(int *a1)
{
  v6 = *(v4 - 152);
  __swift_storeEnumTagSinglePayload(v6 + a1[5], 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v6 + a1[6], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v6 + a1[7], 1, 1, v2);
  v7 = v6 + a1[8];

  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t sub_1C8CA78D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F696E75 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7463697274736572 && a2 == 0xEA00000000006465;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x69617274736E6F63 && a2 == 0xEB0000000064656ELL;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6465727265666564 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9064C2C();

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

uint64_t OUTLINED_FUNCTION_109_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{

  return sub_1C8D06FF4(a9, a10, a11, a12, a13);
}

void TypeIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_49_19(v3);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DCE0, &qword_1C90BC800);
  OUTLINED_FUNCTION_11(v122);
  v119 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_32(v8, v108[0]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DCE8, &qword_1C90BC808);
  v10 = OUTLINED_FUNCTION_11(v9);
  v116 = v11;
  v117 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_74_6(v15);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DCF0, &qword_1C90BC810);
  OUTLINED_FUNCTION_11(v115);
  v118 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_243(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DCF8, &qword_1C90BC818);
  v22 = OUTLINED_FUNCTION_11(v21);
  v113 = v23;
  v114 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v108 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD00, &qword_1C90BC820);
  OUTLINED_FUNCTION_11(v29);
  v112 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_86();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD08, &unk_1C90BC828);
  OUTLINED_FUNCTION_11(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_72();
  v41 = v0[3];
  v40 = v0[4];
  v123 = v0;
  OUTLINED_FUNCTION_217(v0, v41);
  sub_1C8CA2A24();
  OUTLINED_FUNCTION_200();
  v42 = v124;
  sub_1C9064DEC();
  if (v42)
  {
    goto LABEL_10;
  }

  v109 = v29;
  v110 = v2;
  v111 = v28;
  v124 = v36;
  v43 = sub_1C9064A9C();
  sub_1C8CB8914(v43, 0);
  if (v45 == v44 >> 1)
  {
    v46 = v1;
LABEL_9:
    sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v64 = v63;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v64 = &type metadata for TypeIdentifier;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    v66 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_42_13();
    v68 = *(v67 + 104);
    v69 = OUTLINED_FUNCTION_81_9();
    v70(v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v124 + 8))(v46, v34);
LABEL_10:
    v71 = v123;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_119_0();
  v108[2] = 0;
  if (v50 >= (v49 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1C8CA85E4);
  }

  v51 = v34;
  v52 = *(v48 + v47);
  v53 = sub_1C8CB891C(v47 + 1);
  v55 = v54;
  v57 = v56;
  swift_unknownObjectRelease();
  v58 = v55 == v57 >> 1;
  v59 = v120;
  if (!v58)
  {
    v46 = v1;
    v34 = v51;
    goto LABEL_9;
  }

  v108[1] = v53;
  switch(v52)
  {
    case 1:
      sub_1C9019164();
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_50();
      v79 = swift_allocObject();
      sub_1C9019260();
      v80 = v114;
      OUTLINED_FUNCTION_63_12();
      sub_1C9064A6C();
      swift_unknownObjectRelease();
      v96 = OUTLINED_FUNCTION_107_3();
      v97(v96, v80);
      v98 = OUTLINED_FUNCTION_30();
      v99(v98, v51);
      v60 = v79 | 0x2000000000000000;
      goto LABEL_16;
    case 2:
      sub_1C9019110();
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_72_9();
      v73 = swift_allocObject();
      v74 = sub_1C9064A0C();
      v121 = v1;
      *(v73 + 16) = v74;
      *(v73 + 24) = v89;
      v90 = sub_1C9064A0C();
      v91 = v118;
      v100 = v90;
      v102 = v101;
      swift_unknownObjectRelease();
      v103 = *(v91 + 8);
      v104 = OUTLINED_FUNCTION_136();
      v105(v104);
      v106 = OUTLINED_FUNCTION_35_24();
      v107(v106);
      *(v73 + 32) = v100;
      *(v73 + 40) = v102;
      v60 = v73 | 0x4000000000000000;
      goto LABEL_17;
    case 3:
      sub_1C9019068();
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_72_9();
      v75 = v1;
      v76 = swift_allocObject();
      sub_1C901920C();
      v77 = v117;
      OUTLINED_FUNCTION_63_12();
      sub_1C9064A6C();
      v78 = v124;
      swift_unknownObjectRelease();
      v92 = OUTLINED_FUNCTION_184_3();
      v93(v92, v77);
      (*(v78 + 8))(v75, v51);
      v60 = v76 | 0x6000000000000000;
      goto LABEL_16;
    case 4:
      OUTLINED_FUNCTION_231_2();
      sub_1C9019014();
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_72_9();
      v121 = v1;
      v72 = swift_allocObject();
      v81 = sub_1C9064A0C();
      v83 = v82;
      swift_unknownObjectRelease();
      v84 = *(v119 + 8);
      v85 = OUTLINED_FUNCTION_77_3();
      v86(v85);
      v87 = OUTLINED_FUNCTION_35_24();
      v88(v87);
      *(v72 + 16) = v81;
      *(v72 + 24) = v83;
      v60 = v72 | 0x8000000000000000;
LABEL_17:
      v71 = v123;
      v59 = v120;
      break;
    default:
      sub_1C8CA0D3C();
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_72_9();
      v60 = swift_allocObject();
      sub_1C8CB8A20();
      v61 = v109;
      OUTLINED_FUNCTION_63_12();
      sub_1C9064A6C();
      v62 = v124;
      swift_unknownObjectRelease();
      v94 = OUTLINED_FUNCTION_107_3();
      v95(v94, v61);
      (*(v62 + 8))(v1, v51);
LABEL_16:
      v71 = v123;
      break;
  }

  *v59 = v60;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v71);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CA85F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CA8630()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[13];

  if (v0[16])
  {

    v7 = v0[17];

    v8 = v0[19];

    v9 = v0[21];

    v10 = v0[24];

    v11 = v0[26];
  }

  v12 = v0[29];

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_1C8CA86CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C8CA870C()
{
  if (*(v0 + 16) >= 0x10uLL)
  {
  }

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_155_4(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(result + 20);
  v4 = *(v1 + 48);
  return result;
}

uint64_t sub_1C8CA87A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766974696D697270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E69746C697562 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7475626972747461 && a2 == 0xEA00000000006465;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656C6261646F63 && a2 == 0xE700000000000000)
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

uint64_t OUTLINED_FUNCTION_36_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36_5()
{
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[171];
  v5 = v0[168];
}

uint64_t OUTLINED_FUNCTION_36_20(uint64_t a1)
{
  *(a1 + 8) = sub_1C8F41F4C;
  v2 = *(v1 + 136);
  return v1 + 289;
}

uint64_t OUTLINED_FUNCTION_36_22(uint64_t a1, uint64_t a2)
{
  *(v4 - 144) = a2;
  *(v4 - 136) = a1;
  v6 = v3 + *(v2 + 28);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  *(v4 - 120) = *v6;
  *(v4 - 112) = v8;
  *(v4 - 104) = v9;
  *(v4 - 96) = v10;
  *(v4 - 88) = v11;

  return sub_1C8D06F98(v7, v8, v9, v10, v11);
}

void TypeInstance.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v112 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313500, &qword_1C906BB40);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v111 = v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313508, &qword_1C906BB48);
  OUTLINED_FUNCTION_11(v105);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313510, &qword_1C906BB50);
  OUTLINED_FUNCTION_11(v108);
  v109 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313518, &qword_1C906BB58);
  OUTLINED_FUNCTION_11(v107);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_97();
  v110 = v20;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313520, &qword_1C906BB60);
  OUTLINED_FUNCTION_11(v106);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_97();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313528, &qword_1C906BB68);
  OUTLINED_FUNCTION_11(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_142();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313530, &qword_1C906BB70);
  OUTLINED_FUNCTION_11(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_38();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313538, &qword_1C906BB78);
  OUTLINED_FUNCTION_11(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15_0();
  v36 = v3[3];
  v37 = v3[4];
  v113 = v3;
  v38 = OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_217(v38, v39);
  sub_1C8C9F5F8();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064DEC();
  if (v1)
  {
    goto LABEL_8;
  }

  v103 = v28;
  v104 = v0;
  v40 = sub_1C9064A9C();
  sub_1C8CB8914(v40, 0);
  if (v42 == v41 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_119_0();
  if (v46 >= (v45 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1C8CA98CCLL);
  }

  v47 = *(v44 + v43);
  sub_1C8CB891C(v43 + 1);
  v49 = v48;
  v51 = v50;
  swift_unknownObjectRelease();
  if (v49 != v51 >> 1)
  {
LABEL_7:
    v54 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v56 = &type metadata for TypeInstance;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    v58 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v54);
    (*(v59 + 104))(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_24_6();
    v61(v60);
LABEL_8:
    v62 = v113;
    goto LABEL_9;
  }

  v52 = v112;
  switch(v47)
  {
    case 1:
      sub_1C8CA6D3C();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_50();
      v66 = swift_allocObject();
      sub_1C8CAC450();
      OUTLINED_FUNCTION_41_4();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_120_0();
      swift_unknownObjectRelease();
      v79 = OUTLINED_FUNCTION_17_3();
      v80(v79);
      v81 = *(v104 + 8);
      v82 = OUTLINED_FUNCTION_32_3();
      v83(v82);
      v53 = v66 | 0x2000000000000000;
      goto LABEL_16;
    case 2:
      sub_1C8D38158();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_2();
      v64 = swift_allocObject();
      sub_1C8CAC450();
      OUTLINED_FUNCTION_34();
      sub_1C9064A6C();
      sub_1C8D39E40();
      OUTLINED_FUNCTION_34();
      sub_1C90649EC();
      swift_unknownObjectRelease();
      v95 = OUTLINED_FUNCTION_35_3();
      v96(v95);
      v97 = OUTLINED_FUNCTION_12_5();
      v98(v97);
      v53 = v64 | 0x4000000000000000;
      goto LABEL_16;
    case 3:
      sub_1C8D38094();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_50();
      v65 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134F8, &qword_1C906BB38);
      sub_1C8D380E8(&unk_1EDA62D78);
      sub_1C9064A6C();
      OUTLINED_FUNCTION_120_0();
      swift_unknownObjectRelease();
      v70 = OUTLINED_FUNCTION_17_3();
      v71(v70);
      v72 = *(v110 + 8);
      v73 = OUTLINED_FUNCTION_32_3();
      v74(v73);
      v53 = v65 | 0x6000000000000000;
      goto LABEL_16;
    case 4:
      sub_1C8CA5614();
      OUTLINED_FUNCTION_42_0();
      sub_1C906498C();
      OUTLINED_FUNCTION_2();
      v63 = swift_allocObject();
      sub_1C8CB892C();
      OUTLINED_FUNCTION_34();
      sub_1C9064A6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134F0, &qword_1C906BB30);
      OUTLINED_FUNCTION_49_3();
      sub_1C8CA5CAC(v69);
      sub_1C9064A6C();
      swift_unknownObjectRelease();
      v90 = *(v109 + 8);
      v91 = OUTLINED_FUNCTION_276();
      v92(v91);
      v93 = OUTLINED_FUNCTION_12_5();
      v94(v93);
      v53 = v63 | 0x8000000000000000;
      v62 = v113;
      v52 = v112;
      goto LABEL_17;
    case 5:
      sub_1C8D37FEC();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_2();
      v67 = swift_allocObject();
      sub_1C8CAC450();
      OUTLINED_FUNCTION_34();
      sub_1C9064A6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3134F0, &qword_1C906BB30);
      OUTLINED_FUNCTION_141_0();
      OUTLINED_FUNCTION_49_3();
      sub_1C8CA5CAC(v84);
      OUTLINED_FUNCTION_34();
      sub_1C9064A6C();
      swift_unknownObjectRelease();
      v99 = OUTLINED_FUNCTION_35_3();
      v100(v99);
      v101 = OUTLINED_FUNCTION_12_5();
      v102(v101);
      v53 = v67 | 0xA000000000000000;
      goto LABEL_16;
    case 6:
      sub_1C8D37F98();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_50();
      v68 = swift_allocObject();
      sub_1C8CAC450();
      OUTLINED_FUNCTION_41_4();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_120_0();
      swift_unknownObjectRelease();
      v85 = OUTLINED_FUNCTION_17_3();
      v86(v85);
      v87 = *(v111 + 8);
      v88 = OUTLINED_FUNCTION_32_3();
      v89(v88);
      v53 = v68 | 0xC000000000000000;
      goto LABEL_16;
    default:
      sub_1C8C9F5A4();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_50();
      v53 = swift_allocObject();
      sub_1C8CB892C();
      OUTLINED_FUNCTION_380();
      sub_1C9064A6C();
      swift_unknownObjectRelease();
      v75 = OUTLINED_FUNCTION_47_3();
      v76(v75, v103);
      v77 = OUTLINED_FUNCTION_24_6();
      v78(v77);
LABEL_16:
      v62 = v113;
LABEL_17:
      *v52 = v53;
      break;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v62);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CA98F0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CA9924()
{
  v1 = *(v0 + 16);

  if ((~*(v0 + 24) & 0xF000000000000007) != 0)
  {
  }

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_27_3()
{
  v4 = *(*(v1 + 48) + 8 * v0);
}

uint64_t OUTLINED_FUNCTION_27_6@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_27_7()
{

  return sub_1C8D73304(v0, type metadata accessor for DisplayRepresentation);
}

uint64_t OUTLINED_FUNCTION_62_1()
{

  return sub_1C8D3ED20(v0, v1, v2, v3, 0);
}

uint64_t OUTLINED_FUNCTION_27_14()
{
  v2 = *(v0 - 296);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_27_15()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_27_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  *a1 = a11.n128_u32[0];
  *(a1 + 4) = v11;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_20(uint64_t a1)
{
  v2 = *(a1 + 56);

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_351()
{
}

void TypeIdentifier.PrimitiveTypeIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_49_19(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF50, &qword_1C90BCA28);
  OUTLINED_FUNCTION_4_22(v25, &a13);
  v315 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_32(v30, v292);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF58, &qword_1C90BCA30);
  OUTLINED_FUNCTION_4_22(v31, &a11);
  v313 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_97();
  v335 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF60, &qword_1C90BCA38);
  OUTLINED_FUNCTION_4_22(v37, &a9);
  v311 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_87_8(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF68, &qword_1C90BCA40);
  OUTLINED_FUNCTION_4_22(v43, &v342);
  v309 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_17_35(v48, v293);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF70, &qword_1C90BCA48);
  OUTLINED_FUNCTION_4_22(v49, &v340);
  v307 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_97();
  v332 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF78, &qword_1C90BCA50);
  OUTLINED_FUNCTION_4_22(v55, &v338);
  v305 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_97();
  v331 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF80, &qword_1C90BCA58);
  OUTLINED_FUNCTION_4_22(v61, &v336);
  v303 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_19_32(v66, v294);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF88, &qword_1C90BCA60);
  OUTLINED_FUNCTION_4_22(v67, &v334);
  v301 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_97();
  v329 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF90, &qword_1C90BCA68);
  OUTLINED_FUNCTION_4_22(v73, &v332);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_97();
  v328 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DF98, &qword_1C90BCA70);
  OUTLINED_FUNCTION_4_22(v78, &v330);
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_16_32(v82, v295);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFA0, &qword_1C90BCA78);
  OUTLINED_FUNCTION_4_22(v83, &v328);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_97();
  v326 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFA8, &qword_1C90BCA80);
  OUTLINED_FUNCTION_4_22(v88, &v326);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_97();
  v325 = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFB0, &qword_1C90BCA88);
  OUTLINED_FUNCTION_4_22(v93, &v323);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_97();
  v323 = v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFB8, &qword_1C90BCA90);
  OUTLINED_FUNCTION_4_22(v98, &v324);
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_18_33(v102, v296);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFC0, &qword_1C90BCA98);
  OUTLINED_FUNCTION_4_22(v103, &v321);
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_97();
  v322 = v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFC8, &qword_1C90BCAA0);
  OUTLINED_FUNCTION_4_22(v108, &v319);
  v110 = *(v109 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_97();
  v340 = v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFD0, &qword_1C90BCAA8);
  OUTLINED_FUNCTION_4_22(v113, &v316);
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_74_6(v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFD8, &qword_1C90BCAB0);
  OUTLINED_FUNCTION_4_22(v118, &v315);
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_243(v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFE0, &qword_1C90BCAB8);
  OUTLINED_FUNCTION_4_22(v123, &v313);
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_13_34(v127, v297);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFE8, &qword_1C90BCAC0);
  OUTLINED_FUNCTION_4_22(v128, &v311);
  v130 = *(v129 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFF0, &qword_1C90BCAC8);
  OUTLINED_FUNCTION_4_22(v133, &v309);
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v137);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DFF8, &qword_1C90BCAD0);
  OUTLINED_FUNCTION_4_22(v138, &v307);
  v140 = *(v139 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_21_28(v142, v298);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E000, &qword_1C90BCAD8);
  OUTLINED_FUNCTION_4_22(v143, &v305);
  v145 = *(v144 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v147);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E008, &qword_1C90BCAE0);
  OUTLINED_FUNCTION_4_22(v148, &v303);
  v150 = *(v149 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_72();
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E010, &qword_1C90BCAE8);
  OUTLINED_FUNCTION_11(v152);
  v154 = *(v153 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_233();
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E018, &qword_1C90BCAF0);
  OUTLINED_FUNCTION_11(v156);
  v158 = v157;
  v160 = *(v159 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_86();
  v163 = v20[3];
  v162 = v20[4];
  v341 = v20;
  v164 = OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_217(v164, v165);
  sub_1C8CA2AA0();
  v166 = v342;
  sub_1C9064DEC();
  if (v166)
  {
    goto LABEL_9;
  }

  v167 = v339;
  v342 = v158;
  v168 = sub_1C9064A9C();
  sub_1C8CB8914(v168, 0);
  if (v170 == v169 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_52_18();
  if (v173 == v174)
  {
    __break(1u);
    JUMPOUT(0x1C8CAB3CCLL);
  }

  v299 = *(v172 + v171);
  sub_1C8CB891C(v171 + 1);
  v176 = v175;
  v178 = v177;
  swift_unknownObjectRelease();
  if (v176 != v178 >> 1)
  {
LABEL_8:
    sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v186 = v185;
    v187 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v186 = &type metadata for TypeIdentifier.PrimitiveTypeIdentifier;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    v188 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_42_13();
    v190 = *(v189 + 104);
    v191 = OUTLINED_FUNCTION_81_9();
    v192(v191);
    swift_willThrow();
    swift_unknownObjectRelease();
    v193 = OUTLINED_FUNCTION_2_71();
    v194(v193);
LABEL_9:
    v195 = v341;
    goto LABEL_10;
  }

  v179 = v337;
  switch(v299)
  {
    case 1:
      OUTLINED_FUNCTION_275();
      sub_1C8CA4D48();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v238 = OUTLINED_FUNCTION_23(&v302);
      v239(v238);
      v240 = OUTLINED_FUNCTION_2_71();
      v241(v240);
      v184 = 24;
      break;
    case 2:
      OUTLINED_FUNCTION_119_1();
      sub_1C9019DDC();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v222 = OUTLINED_FUNCTION_23(&v304);
      v223(v222);
      v224 = OUTLINED_FUNCTION_2_71();
      v225(v224);
      v184 = 25;
      break;
    case 3:
      OUTLINED_FUNCTION_44_23();
      sub_1C9019D88();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v230 = OUTLINED_FUNCTION_23(&v306);
      v231(v230);
      v232 = OUTLINED_FUNCTION_2_71();
      v233(v232);
      v184 = 26;
      break;
    case 4:
      OUTLINED_FUNCTION_231_2();
      sub_1C9019D34();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v206 = OUTLINED_FUNCTION_23(&v308);
      v207(v206);
      v208 = OUTLINED_FUNCTION_2_71();
      v209(v208);
      v184 = 27;
      break;
    case 5:
      OUTLINED_FUNCTION_219_1();
      sub_1C8CA2E68();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v250 = OUTLINED_FUNCTION_23(&v310);
      v251(v250);
      v252 = OUTLINED_FUNCTION_2_71();
      v253(v252);
      v184 = 28;
      break;
    case 6:
      OUTLINED_FUNCTION_270();
      sub_1C8CA6AB8();
      OUTLINED_FUNCTION_84_7();
      v263 = *(v262 - 256);
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v264 = OUTLINED_FUNCTION_23(&v312);
      v265(v264);
      v266 = OUTLINED_FUNCTION_2_71();
      v267(v266);
      v184 = 29;
      break;
    case 7:
      OUTLINED_FUNCTION_269();
      sub_1C8CA6770();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v234 = OUTLINED_FUNCTION_23(&v314);
      v235(v234);
      v236 = OUTLINED_FUNCTION_2_71();
      v237(v236);
      v184 = 30;
      break;
    case 8:
      OUTLINED_FUNCTION_53_16();
      sub_1C9019CE0();
      OUTLINED_FUNCTION_14_39();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_296(&v317);
      v276(v167);
      v277 = OUTLINED_FUNCTION_2_71();
      v278(v277);
      v184 = 31;
      break;
    case 9:
      OUTLINED_FUNCTION_60_15();
      sub_1C9019C8C();
      OUTLINED_FUNCTION_14_39();
      swift_unknownObjectRelease();
      v214 = OUTLINED_FUNCTION_23(&v318);
      v215(v214);
      v216 = OUTLINED_FUNCTION_2_71();
      v217(v216);
      v184 = 32;
      break;
    case 10:
      OUTLINED_FUNCTION_54_16();
      sub_1C9019C38();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v272 = OUTLINED_FUNCTION_23(&v320);
      v273(v272);
      v274 = OUTLINED_FUNCTION_2_71();
      v275(v274);
      v184 = 33;
      break;
    case 11:
      OUTLINED_FUNCTION_62_14();
      sub_1C9019B90();
      v204 = v324;
      OUTLINED_FUNCTION_14_39();
      sub_1C9019E30();
      OUTLINED_FUNCTION_10_45();
      sub_1C90649EC();
      v205 = v342;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_296(&v300);
      v291(v204);
      (*(v205 + 8))(v21, v156);
      v184 = HIBYTE(a10);
      break;
    case 12:
      OUTLINED_FUNCTION_61_17();
      sub_1C9019B3C();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v210 = OUTLINED_FUNCTION_23(&v322);
      v211(v210);
      v212 = OUTLINED_FUNCTION_2_71();
      v213(v212);
      v184 = 34;
      break;
    case 13:
      OUTLINED_FUNCTION_56_14();
      sub_1C9019AE8();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v258 = OUTLINED_FUNCTION_23(&v325);
      v259(v258);
      v260 = OUTLINED_FUNCTION_2_71();
      v261(v260);
      v184 = 35;
      break;
    case 14:
      OUTLINED_FUNCTION_63_15();
      sub_1C8CA6CE8();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v200 = OUTLINED_FUNCTION_23(&v327);
      v201(v200);
      v202 = OUTLINED_FUNCTION_2_71();
      v203(v202);
      v184 = 36;
      break;
    case 15:
      OUTLINED_FUNCTION_71_10();
      sub_1C8CA6DE4();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v226 = OUTLINED_FUNCTION_23(&v329);
      v227(v226);
      v228 = OUTLINED_FUNCTION_2_71();
      v229(v228);
      v184 = 37;
      break;
    case 16:
      OUTLINED_FUNCTION_59_15();
      sub_1C8CA5B78();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v196 = OUTLINED_FUNCTION_23(&v331);
      v197(v196, v300);
      v198 = OUTLINED_FUNCTION_2_71();
      v199(v198);
      v184 = 38;
      break;
    case 17:
      OUTLINED_FUNCTION_80_8();
      sub_1C8CA4C80();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v242 = OUTLINED_FUNCTION_23(&v333);
      v243(v242, v302);
      v244 = OUTLINED_FUNCTION_2_71();
      v245(v244);
      v184 = 39;
      break;
    case 18:
      OUTLINED_FUNCTION_78_10();
      sub_1C9019A94();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v268 = OUTLINED_FUNCTION_23(&v335);
      v269(v268, v304);
      v270 = OUTLINED_FUNCTION_2_71();
      v271(v270);
      v184 = 40;
      break;
    case 19:
      OUTLINED_FUNCTION_76_10();
      sub_1C9019A40();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v283 = OUTLINED_FUNCTION_23(&v337);
      v284(v283, v306);
      v285 = OUTLINED_FUNCTION_2_71();
      v286(v285);
      v184 = 41;
      break;
    case 20:
      OUTLINED_FUNCTION_75_6();
      sub_1C90199EC();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v246 = OUTLINED_FUNCTION_23(&v339);
      v247(v246, v308);
      v248 = OUTLINED_FUNCTION_2_71();
      v249(v248);
      v184 = 42;
      break;
    case 21:
      OUTLINED_FUNCTION_77_9();
      sub_1C9019998();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v254 = OUTLINED_FUNCTION_23(&v341);
      v255(v254, v310);
      v256 = OUTLINED_FUNCTION_2_71();
      v257(v256);
      v184 = 43;
      break;
    case 22:
      HIBYTE(a10) = 22;
      sub_1C9019944();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v279 = OUTLINED_FUNCTION_23(&v343);
      v280(v279, v312);
      v281 = OUTLINED_FUNCTION_2_71();
      v282(v281);
      v184 = 44;
      break;
    case 23:
      HIBYTE(a10) = 23;
      sub_1C90198F0();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v287 = OUTLINED_FUNCTION_23(&a10);
      v288(v287, v314);
      v289 = OUTLINED_FUNCTION_2_71();
      v290(v289);
      v184 = 45;
      break;
    case 24:
      HIBYTE(a10) = 24;
      sub_1C901989C();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v218 = OUTLINED_FUNCTION_23(&a12);
      v219(v218, v316);
      v220 = OUTLINED_FUNCTION_2_71();
      v221(v220);
      v184 = 46;
      break;
    default:
      HIBYTE(a10) = 0;
      sub_1C8CA4D9C();
      OUTLINED_FUNCTION_8_48();
      swift_unknownObjectRelease();
      v180 = OUTLINED_FUNCTION_23(&v301);
      v181(v180, v152);
      v182 = OUTLINED_FUNCTION_2_71();
      v183(v182);
      v184 = 23;
      break;
  }

  v195 = v341;
  *v179 = v184;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v195);
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CAB448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CAB470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CAB470(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1819242338 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7630441 && a2 == 0xE300000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C616D69636564 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1702125924 && a2 == 0xE400000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x706D6F4365746164 && a2 == 0xEE0073746E656E6FLL;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 7107189 && a2 == 0xE300000000000000;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000001C90CAAE0 == a2;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x79636E6572727563 && a2 == 0xEE00746E756F6D41;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x4D746E656D796170 && a2 == 0xED0000646F687465;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
                                if (v20 || (sub_1C9064C2C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 1701603686 && a2 == 0xE400000000000000;
                                  if (v21 || (sub_1C9064C2C() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 7368801 && a2 == 0xE300000000000000;
                                    if (v22 || (sub_1C9064C2C() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6261686372616573 && a2 == 0xEE006D657449656CLL;
                                      if (v23 || (sub_1C9064C2C() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6E65727275636572 && a2 == 0xEE00656C75526563;
                                        if (v24 || (sub_1C9064C2C() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x4673746E65746E69 && a2 == 0xEB00000000656C69;
                                          if (v25 || (sub_1C9064C2C() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x74756374726F6873 && a2 == 0xE800000000000000;
                                            if (v26 || (sub_1C9064C2C() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672;
                                              if (v27 || (sub_1C9064C2C() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                                                if (v28 || (sub_1C9064C2C() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (a1 == 0xD000000000000014 && 0x80000001C90CA7D0 == a2)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v30 = sub_1C9064C2C();

                                                  if (v30)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 25;
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
            }
          }
        }
      }
    }
  }
}

void RestrictionContext.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v79 = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313668, &qword_1C906BC48) - 8) + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_73();
  v8 = sub_1C9063C4C();
  v9 = OUTLINED_FUNCTION_11(v8);
  v80 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313670, &qword_1C906BC50);
  OUTLINED_FUNCTION_11(v16);
  v81 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_86();
  v21 = v4[4];
  v82 = v4;
  OUTLINED_FUNCTION_217(v4, v4[3]);
  sub_1C8CA6338();
  sub_1C9064DEC();
  v22 = v0;
  if (v0)
  {
    goto LABEL_8;
  }

  v89 = v15;
  v23 = *(sub_1C9064A9C() + 16);

  if (v23 != 1)
  {
LABEL_7:
    v30 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v32 = &type metadata for RestrictionContext;
    sub_1C906499C();
    sub_1C90647CC();
    v34 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v30);
    (*(v35 + 104))(v32);
    swift_willThrow();
    v36 = *(v81 + 8);
    v37 = OUTLINED_FUNCTION_332();
    v38(v37);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v82);
    goto LABEL_9;
  }

  v24 = sub_1C9064A9C();
  if (!*(v24 + 16))
  {

    goto LABEL_7;
  }

  v78 = v16;
  v25 = *(v24 + 32);

  switch(v25)
  {
    case 1:
      v26 = v79;
      v84[0] = 1;
      sub_1C8D3A958();
      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_179_0();
      v40 = OUTLINED_FUNCTION_39_5(v39);
      v41(v40);
      *v87 = *v85;
      v87[8] = v85[8];
      v87[9] = v85[9];
      sub_1C8D3A9AC(v87);
      goto LABEL_26;
    case 2:
      v86 = 2;
      sub_1C8D3AB4C();
      sub_1C9064A6C();
      v64 = *(v81 + 8);
      v65 = OUTLINED_FUNCTION_136();
      v66(v65);
      memcpy(v83, v87, sizeof(v83));
      sub_1C8D3A298(v83, v85);
      sub_1C8D3A7FC(&v83[80], v85);
      sub_1C8D3A8AC(v83);
      memcpy(v84, v83, 0x50uLL);
      *&v84[80] = *&v83[80];
      *&v84[96] = *&v83[96];
      *&v84[112] = *&v83[112];
      *&v84[128] = *&v83[128];
      memcpy(v85, v84, sizeof(v85));
      sub_1C8D3ABA0(v85);
      memcpy(v88, v85, sizeof(v88));
      v67 = v82;
      v68 = v79;
      goto LABEL_27;
    case 3:
      v26 = v79;
      v84[0] = 3;
      sub_1C8D3AAD0();
      OUTLINED_FUNCTION_11_7();
      v69 = *(v81 + 8);
      v70 = OUTLINED_FUNCTION_181();
      v71(v70);
      *v87 = *v85;
      sub_1C8D3AB24(v87);
      goto LABEL_26;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      v85[0] = 4;
      sub_1C8CA6708(&unk_1EDA6B520);
      sub_1C9064A6C();
      v77 = *(*v87 + 16);
      v45 = *v87;
      v46 = *v87 + 40;
      v76 = MEMORY[0x1E69E7CC0];
      break;
    case 5:
      v26 = v79;
      v84[0] = 5;
      sub_1C8D3AA54();
      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_179_0();
      v43 = OUTLINED_FUNCTION_39_5(v42);
      v44(v43);
      v87[0] = v85[0];
      sub_1C8D3AAA8(v87);
      goto LABEL_26;
    case 6:
      v26 = v79;
      v84[0] = 6;
      sub_1C8D3A8DC();
      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_179_0();
      v73 = OUTLINED_FUNCTION_39_5(v72);
      v74(v73);
      *v87 = *v85;
      v87[2] = v85[2];
      v87[3] = v85[3];
      v87[4] = v85[4];
      v87[5] = v85[5];
      sub_1C8D3A930(v87);
      goto LABEL_26;
    default:
      v26 = v79;
      v84[0] = 0;
      sub_1C8D3A9D8();
      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_179_0();
      v28 = OUTLINED_FUNCTION_39_5(v27);
      v29(v28);
      v87[0] = v85[0];
      sub_1C8D3AA2C(v87);
LABEL_26:
      memcpy(v88, v87, sizeof(v88));
      v67 = v82;
      v68 = v26;
      goto LABEL_27;
  }

LABEL_16:
  v47 = v46;
  v48 = (v46 + 16 * v22);
  while (v77 != v22)
  {
    if (v22 >= *(v45 + 16))
    {
      __break(1u);
      JUMPOUT(0x1C8CAC434);
    }

    v50 = *(v48 - 1);
    v49 = *v48;

    OUTLINED_FUNCTION_100();
    sub_1C9063C2C();
    if (__swift_getEnumTagSinglePayload(v1, 1, v8) != 1)
    {
      v51 = *(v80 + 32);
      v52 = OUTLINED_FUNCTION_125();
      v51(v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = *(v76 + 16);
        sub_1C8CACA10();
        v76 = v61;
      }

      v54 = *(v76 + 16);
      v53 = *(v76 + 24);
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_176(v53);
        v75 = v62;
        sub_1C8CACA10();
        v55 = v75;
        v76 = v63;
      }

      ++v22;
      *(v76 + 16) = v55;
      v56 = *(v80 + 80);
      OUTLINED_FUNCTION_139();
      (v51)(v58 + v57 + *(v59 + 72) * v54, v89, v8);
      v46 = v47;
      goto LABEL_16;
    }

    sub_1C8D3F0C4(v1, &qword_1EC313668, &qword_1C906BC48);
    v48 += 2;
    ++v22;
  }

  (*(v81 + 8))(v2, v78);
  *v87 = v76;
  sub_1C8CACBF4(v87);
  memcpy(v88, v87, sizeof(v88));
  v67 = v82;
  v68 = v79;
LABEL_27:
  memcpy(v68, v88, 0x88uLL);
  __swift_destroy_boxed_opaque_existential_1(v67);
LABEL_9:
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8CAC450()
{
  result = qword_1EDA6A018;
  if (!qword_1EDA6A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A018);
  }

  return result;
}

void OUTLINED_FUNCTION_16_7(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(a1 + 72) = a17;
  *(a1 + 80) = a16;
  *(a1 + 88) = a15;
  *(a1 + 96) = a22;
}

void OUTLINED_FUNCTION_16_8()
{

  sub_1C8D09E14(0, v0, 0);
}

void *OUTLINED_FUNCTION_16_16(void *a1)
{

  return memcpy(a1, v1, 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_16_20()
{

  return sub_1C90646CC();
}

uint64_t OUTLINED_FUNCTION_16_22@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 168);
  v4 = *(v1 - 160);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_16_27()
{

  return MEMORY[0x1EEE692D0](v1, v0);
}

uint64_t OUTLINED_FUNCTION_16_28(uint64_t a1)
{
  *(v2 - 72) = a1;
  v4 = *(*v1 + 40);

  return sub_1C9064D7C();
}

uint64_t OUTLINED_FUNCTION_16_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_30()
{
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = v0[4];
}

uint64_t OUTLINED_FUNCTION_16_33()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_16_36()
{

  return sub_1C9042FCC(v0, type metadata accessor for EnumerationCaseRecord);
}

uint64_t OUTLINED_FUNCTION_16_37()
{

  return swift_once();
}

uint64_t sub_1C8CAC860(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C90C9980 == a2;
  if (v3 || (OUTLINED_FUNCTION_31_0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001C90C9960 == a2;
    if (v6 || (OUTLINED_FUNCTION_31_0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7465536E69 && a2 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_31_0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C90C9D00 == a2;
        if (v8 || (OUTLINED_FUNCTION_31_0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == OUTLINED_FUNCTION_146_1() && a2 == v9;
          if (v10 || (OUTLINED_FUNCTION_31_0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = a1 == 0xD000000000000011 && 0x80000001C90C99A0 == a2;
            if (v11 || (OUTLINED_FUNCTION_31_0() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == OUTLINED_FUNCTION_145_1() && a2 == v12)
            {

              return 6;
            }

            else
            {
              OUTLINED_FUNCTION_31_0();
              OUTLINED_FUNCTION_420();
              if (a1)
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

void sub_1C8CACA10()
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
  OUTLINED_FUNCTION_303(v2, v5, &unk_1EC312B88, &unk_1C9068F20);
  OUTLINED_FUNCTION_143();
  v9 = sub_1C9063C4C();
  OUTLINED_FUNCTION_179(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_139();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_70(v12);
    sub_1C8D09214(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }
}

size_t sub_1C8CACAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = OUTLINED_FUNCTION_321(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = *(a5(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if (result - v12 != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_332_1()
{
  result = *(v1 + 48);
  v3 = *(v0 + 48);
  return result;
}

uint64_t sub_1C8CACBF4(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101 | 0x4000000000000000;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

void OUTLINED_FUNCTION_91(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x1CCA82810);
}

__n128 OUTLINED_FUNCTION_130()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

void *OUTLINED_FUNCTION_91_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{

  return memcpy(&a51, (v51 + 16), 0x51uLL);
}

uint64_t sub_1C8CACD24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C8CACDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CAC860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CACE04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C8CB867C(v11, 0, 0, 1, a1, a2);
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
    sub_1C8CB795C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_212_4()
{

  return sub_1C8D63FCC();
}

uint64_t type metadata accessor for ToolDatabaseLocaleOptions()
{
  result = qword_1EDA662E8;
  if (!qword_1EDA662E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C8CACFA0()
{
  result = qword_1EDA62D30;
  if (!qword_1EDA62D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA62D30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_138()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_138_2()
{
  result = v0;
  v3 = *(v1 - 184);
  return result;
}

void OUTLINED_FUNCTION_138_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_138_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *v2 = result;
  v2[1] = a2;
  v2[2] = a2;
  v2[3] = 0;
  v2[4] = 0xE000000000000000;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = a2;
  v2[8] = a2;
  v2[9] = a2;
  v2[10] = 0;
  v2[11] = 0;
  return result;
}

void sub_1C8CAD098()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v3 = v2;
  v60 = v4;
  v5 = sub_1C906310C();
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  v11 = *(v3 + 16);
  if (v11)
  {
    v58 = v9;
    v67 = MEMORY[0x1E69E7CC0];
    v59 = v10;
    v12 = OUTLINED_FUNCTION_30_4();
    v14 = v13;
    sub_1C8CC0258(v12, v15, v16);
    v17 = v59;
    v18 = sub_1C8CC0278(v3);
    v20 = v14;
    v21 = v18;
    v22 = 0;
    v63 = v3 + 64;
    v55 = v3 + 72;
    v23 = v3;
    v57 = v14;
    v61 = v3;
    v56 = v11;
    if ((v18 & 0x8000000000000000) == 0)
    {
      while (v21 < 1 << *(v23 + 32))
      {
        v24 = v21 >> 6;
        if ((*(v63 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v23 + 36) != v19)
        {
          goto LABEL_26;
        }

        v25 = v19;
        v62 = v22;
        (*(v17 + 16))(v58, *(v23 + 56) + *(v17 + 72) * v21, v20);
        v60(v66, v58, &v65);
        if (v1)
        {
          v53 = OUTLINED_FUNCTION_159_2();
          v54(v53);

          goto LABEL_23;
        }

        v26 = OUTLINED_FUNCTION_159_2();
        v27(v26);
        memcpy(v64, v66, sizeof(v64));
        v29 = *(v67 + 16);
        v28 = *(v67 + 24);
        OUTLINED_FUNCTION_177_1();
        if (v30)
        {
          OUTLINED_FUNCTION_186_1();
          sub_1C8CC0258(v50, v51, v52);
        }

        *(v67 + 16) = v67;
        memcpy((v67 + 112 * v29 + 32), v64, 0x70uLL);
        v23 = v61;
        v31 = 1 << *(v61 + 32);
        if (v21 >= v31)
        {
          goto LABEL_27;
        }

        v32 = *(v63 + 8 * v24);
        if ((v32 & (1 << v21)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v61 + 36) != v25)
        {
          goto LABEL_29;
        }

        v33 = v32 & (-2 << (v21 & 0x3F));
        if (v33)
        {
          v31 = __clz(__rbit64(v33)) | v21 & 0x7FFFFFFFFFFFFFC0;
          v20 = v57;
          v34 = v56;
        }

        else
        {
          v35 = v24 << 6;
          v36 = v24 + 1;
          v37 = (v55 + 8 * v24);
          v34 = v56;
          while (v36 < (v31 + 63) >> 6)
          {
            v39 = *v37++;
            v38 = v39;
            v35 += 64;
            ++v36;
            if (v39)
            {
              v40 = OUTLINED_FUNCTION_112();
              v42 = v41;
              sub_1C8CAF698(v40, v43, v44);
              v20 = v42;
              v23 = v61;
              v31 = __clz(__rbit64(v38)) + v35;
              goto LABEL_19;
            }
          }

          v45 = OUTLINED_FUNCTION_112();
          v47 = v46;
          sub_1C8CAF698(v45, v48, v49);
          v20 = v47;
          v23 = v61;
        }

LABEL_19:
        v22 = v62 + 1;
        v1 = 0;
        if (v62 + 1 == v34)
        {
          goto LABEL_23;
        }

        v19 = *(v23 + 36);
        v21 = v31;
        v17 = v59;
        if (v21 < 0)
        {
          break;
        }
      }
    }

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
  }

  else
  {
LABEL_23:
    OUTLINED_FUNCTION_198();
  }
}

uint64_t sub_1C8CAD494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1C90620BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C906310C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, a1, v16);
  (*(v10 + 16))(v13, a2, v9);
  v22 = *(a2 + *(type metadata accessor for ToolDatabaseLocaleOptions() + 20));
  result = sub_1C8CB2E28(v18, v13, &v22, a4);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_6()
{
  v2 = *(v0 + 152);

  return type metadata accessor for SageWorkflowRunnerClientToolExecutionSession();
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_34_10()
{
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[72];
  v11 = v0[71];
  v12 = v0[70];
  v9 = v0[69];
  v13 = v0[67];

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_19@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 104);

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_34_20@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 + a1);
  *v4 = v3;
  v4[1] = v1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_343()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_5@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;
  result = v1 - 88;
  v3 = *(v1 - 112);
  return result;
}

uint64_t *OUTLINED_FUNCTION_45_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 120));
}

uint64_t OUTLINED_FUNCTION_13_7()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_13_8()
{

  return sub_1C9064C2C();
}

__n128 OUTLINED_FUNCTION_13_11@<Q0>(uint64_t a1@<X8>)
{
  *(v8 - 176) = a1;
  *(v8 - 168) = v1;
  *(v8 - 160) = v7;
  *(v8 - 152) = v5;
  *(v8 - 144) = v2;
  *(v8 - 136) = v3;
  *(v8 - 128) = v6;
  result = *(v4 + 56);
  *(v8 - 120) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_17(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AE70](a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_13_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_19()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_13_23()
{

  return sub_1C90637CC();
}

uint64_t OUTLINED_FUNCTION_13_24()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_26()
{

  return swift_once();
}

void OUTLINED_FUNCTION_13_27()
{
  v2 = *(v0 - 72);

  JUMPOUT(0x1CCA833A0);
}

uint64_t OUTLINED_FUNCTION_13_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_29(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_13_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_32()
{
  *(v1 + 16) = 0xF000000000000007;
  result = v0 + 152;
  v3 = *(v0 + 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_35()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 120);

  return sub_1C9064ACC();
}

void OUTLINED_FUNCTION_13_36(uint64_t a1@<X8>)
{
  v4 = v1 + a1;
  *v4 = v3;
  v4[8] = v2 & 1;
  v5 = *v1;
}

uint64_t OUTLINED_FUNCTION_13_38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C8D28184(a1, a2, a3);
}

__n128 *OUTLINED_FUNCTION_13_40(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *(v5 + 41) = a4;
  v4[74] = a3;
  v4[73] = a2;
  v4[72] = a1;
  return v4 + 72;
}

uint64_t OUTLINED_FUNCTION_13_41()
{

  return swift_once();
}

uint64_t sub_1C8CADD20(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C906492C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1C8CADD44(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C9063EEC();

  return v3;
}

char *sub_1C8CADDE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[136 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_193_0()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_193_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C8CCEB64();
}

uint64_t OUTLINED_FUNCTION_193_3()
{
}

uint64_t OUTLINED_FUNCTION_193_4()
{
  v2 = *(v0 - 72) & 0x1FFFFFFFFFFFFFFFLL;
}

uint64_t OUTLINED_FUNCTION_193_5()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_282()
{
  v2 = *(v0 - 200);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_282_2()
{

  return sub_1C9064B2C();
}

void OUTLINED_FUNCTION_98_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_98_8()
{
  sub_1C8D04F90(v1, v0);
  sub_1C8D04F90(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_357()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_357_1@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 24);

  return sub_1C90637EC();
}

unint64_t sub_1C8CAE064()
{
  v1 = *(v0 + 40);
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C9064DBC();
  v2 = OUTLINED_FUNCTION_100();

  return sub_1C8CAE0D8(v2, v3, v4);
}

unint64_t sub_1C8CAE0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C9064C2C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t WFMeasurementUnitType.toolkitUnitType.getter(void *a1)
{
  v4 = sub_1C9063D3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x1E69E11C0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_2_31();
  v11 = v11 && v1 == v10;
  if (v11)
  {

    return 0;
  }

  OUTLINED_FUNCTION_0_45();
  OUTLINED_FUNCTION_3_28();

  result = 0;
  if ((v2 & 1) == 0)
  {
    v13 = *MEMORY[0x1E69E11C8];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_1_40();
    OUTLINED_FUNCTION_2_31();
    if (v11 && v1 == v14)
    {
    }

    else
    {
      OUTLINED_FUNCTION_0_45();
      OUTLINED_FUNCTION_3_28();

      if ((v2 & 1) == 0)
      {
        v16 = *MEMORY[0x1E69E11E8];
        sub_1C9063EEC();
        OUTLINED_FUNCTION_1_40();
        OUTLINED_FUNCTION_2_31();
        if (v11 && v1 == v17)
        {
        }

        else
        {
          OUTLINED_FUNCTION_0_45();
          OUTLINED_FUNCTION_3_28();

          if ((v2 & 1) == 0)
          {
            v19 = *MEMORY[0x1E69E11F0];
            sub_1C9063EEC();
            OUTLINED_FUNCTION_1_40();
            OUTLINED_FUNCTION_2_31();
            if (v11 && v1 == v20)
            {
            }

            else
            {
              OUTLINED_FUNCTION_0_45();
              OUTLINED_FUNCTION_3_28();

              if ((v2 & 1) == 0)
              {
                v22 = *MEMORY[0x1E69E11E0];
                sub_1C9063EEC();
                OUTLINED_FUNCTION_1_40();
                OUTLINED_FUNCTION_2_31();
                if (v11 && v1 == v23)
                {
                }

                else
                {
                  OUTLINED_FUNCTION_0_45();
                  OUTLINED_FUNCTION_3_28();

                  if ((v2 & 1) == 0)
                  {
                    v25 = *MEMORY[0x1E69E1198];
                    sub_1C9063EEC();
                    OUTLINED_FUNCTION_1_40();
                    OUTLINED_FUNCTION_2_31();
                    if (v11 && v1 == v26)
                    {
                    }

                    else
                    {
                      OUTLINED_FUNCTION_0_45();
                      OUTLINED_FUNCTION_3_28();

                      if ((v2 & 1) == 0)
                      {
                        v28 = *MEMORY[0x1E69E1170];
                        sub_1C9063EEC();
                        OUTLINED_FUNCTION_1_40();
                        OUTLINED_FUNCTION_2_31();
                        if (v11 && v1 == v29)
                        {
                        }

                        else
                        {
                          OUTLINED_FUNCTION_0_45();
                          OUTLINED_FUNCTION_3_28();

                          if ((v2 & 1) == 0)
                          {
                            v31 = *MEMORY[0x1E69E1148];
                            sub_1C9063EEC();
                            OUTLINED_FUNCTION_1_40();
                            OUTLINED_FUNCTION_2_31();
                            if (v11 && v1 == v32)
                            {
                            }

                            else
                            {
                              OUTLINED_FUNCTION_0_45();
                              OUTLINED_FUNCTION_3_28();

                              if ((v2 & 1) == 0)
                              {
                                v34 = *MEMORY[0x1E69E1150];
                                sub_1C9063EEC();
                                OUTLINED_FUNCTION_1_40();
                                OUTLINED_FUNCTION_2_31();
                                if (v11 && v1 == v35)
                                {
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_0_45();
                                  OUTLINED_FUNCTION_3_28();

                                  if ((v2 & 1) == 0)
                                  {
                                    v37 = *MEMORY[0x1E69E1158];
                                    sub_1C9063EEC();
                                    OUTLINED_FUNCTION_1_40();
                                    OUTLINED_FUNCTION_2_31();
                                    if (v11 && v1 == v38)
                                    {
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_0_45();
                                      OUTLINED_FUNCTION_3_28();

                                      if ((v2 & 1) == 0)
                                      {
                                        v40 = *MEMORY[0x1E69E1160];
                                        sub_1C9063EEC();
                                        OUTLINED_FUNCTION_1_40();
                                        OUTLINED_FUNCTION_2_31();
                                        if (v11 && v1 == v41)
                                        {
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_0_45();
                                          OUTLINED_FUNCTION_3_28();

                                          if ((v2 & 1) == 0)
                                          {
                                            v43 = *MEMORY[0x1E69E1168];
                                            sub_1C9063EEC();
                                            OUTLINED_FUNCTION_1_40();
                                            OUTLINED_FUNCTION_2_31();
                                            if (v11 && v1 == v44)
                                            {
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_0_45();
                                              OUTLINED_FUNCTION_3_28();

                                              if ((v2 & 1) == 0)
                                              {
                                                v46 = *MEMORY[0x1E69E1178];
                                                sub_1C9063EEC();
                                                OUTLINED_FUNCTION_1_40();
                                                OUTLINED_FUNCTION_2_31();
                                                if (v11 && v1 == v47)
                                                {
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_0_45();
                                                  OUTLINED_FUNCTION_3_28();

                                                  if ((v2 & 1) == 0)
                                                  {
                                                    v49 = *MEMORY[0x1E69E1180];
                                                    sub_1C9063EEC();
                                                    OUTLINED_FUNCTION_1_40();
                                                    OUTLINED_FUNCTION_2_31();
                                                    if (v11 && v1 == v50)
                                                    {
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_0_45();
                                                      OUTLINED_FUNCTION_3_28();

                                                      if ((v2 & 1) == 0)
                                                      {
                                                        v52 = *MEMORY[0x1E69E1188];
                                                        sub_1C9063EEC();
                                                        OUTLINED_FUNCTION_1_40();
                                                        OUTLINED_FUNCTION_2_31();
                                                        if (v11 && v1 == v53)
                                                        {
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_0_45();
                                                          OUTLINED_FUNCTION_3_28();

                                                          if ((v2 & 1) == 0)
                                                          {
                                                            v55 = *MEMORY[0x1E69E1190];
                                                            sub_1C9063EEC();
                                                            OUTLINED_FUNCTION_1_40();
                                                            OUTLINED_FUNCTION_2_31();
                                                            if (v11 && v1 == v56)
                                                            {
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_0_45();
                                                              OUTLINED_FUNCTION_3_28();

                                                              if ((v2 & 1) == 0)
                                                              {
                                                                v58 = *MEMORY[0x1E69E11A0];
                                                                sub_1C9063EEC();
                                                                OUTLINED_FUNCTION_1_40();
                                                                OUTLINED_FUNCTION_2_31();
                                                                if (v11 && v1 == v59)
                                                                {
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_0_45();
                                                                  OUTLINED_FUNCTION_3_28();

                                                                  if ((v2 & 1) == 0)
                                                                  {
                                                                    v61 = *MEMORY[0x1E69E11A8];
                                                                    sub_1C9063EEC();
                                                                    OUTLINED_FUNCTION_1_40();
                                                                    OUTLINED_FUNCTION_2_31();
                                                                    if (v11 && v1 == v62)
                                                                    {
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_0_45();
                                                                      OUTLINED_FUNCTION_3_28();

                                                                      if ((v2 & 1) == 0)
                                                                      {
                                                                        v64 = *MEMORY[0x1E69E11B0];
                                                                        sub_1C9063EEC();
                                                                        OUTLINED_FUNCTION_1_40();
                                                                        OUTLINED_FUNCTION_2_31();
                                                                        if (v11 && v1 == v65)
                                                                        {
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_0_45();
                                                                          OUTLINED_FUNCTION_3_28();

                                                                          if ((v2 & 1) == 0)
                                                                          {
                                                                            v67 = *MEMORY[0x1E69E11B8];
                                                                            sub_1C9063EEC();
                                                                            OUTLINED_FUNCTION_1_40();
                                                                            OUTLINED_FUNCTION_2_31();
                                                                            if (v11 && v1 == v68)
                                                                            {
                                                                            }

                                                                            else
                                                                            {
                                                                              OUTLINED_FUNCTION_0_45();
                                                                              OUTLINED_FUNCTION_3_28();

                                                                              if ((v2 & 1) == 0)
                                                                              {
                                                                                v70 = *MEMORY[0x1E69E11D0];
                                                                                sub_1C9063EEC();
                                                                                OUTLINED_FUNCTION_1_40();
                                                                                OUTLINED_FUNCTION_2_31();
                                                                                if (v11 && v1 == v71)
                                                                                {
                                                                                }

                                                                                else
                                                                                {
                                                                                  OUTLINED_FUNCTION_0_45();
                                                                                  OUTLINED_FUNCTION_3_28();

                                                                                  if ((v2 & 1) == 0)
                                                                                  {
                                                                                    v73 = *MEMORY[0x1E69E11D8];
                                                                                    sub_1C9063EEC();
                                                                                    OUTLINED_FUNCTION_1_40();
                                                                                    OUTLINED_FUNCTION_2_31();
                                                                                    if (v11 && v1 == v74)
                                                                                    {
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      OUTLINED_FUNCTION_0_45();
                                                                                      OUTLINED_FUNCTION_3_28();

                                                                                      if ((v2 & 1) == 0)
                                                                                      {
                                                                                        v76 = *MEMORY[0x1E69E1110];
                                                                                        sub_1C906371C();
                                                                                        v77 = a1;
                                                                                        v78 = sub_1C9063D1C();
                                                                                        v79 = sub_1C906444C();

                                                                                        if (os_log_type_enabled(v78, v79))
                                                                                        {
                                                                                          v80 = swift_slowAlloc();
                                                                                          v81 = swift_slowAlloc();
                                                                                          v86 = v77;
                                                                                          v87 = v81;
                                                                                          *v80 = 136315138;
                                                                                          type metadata accessor for WFMeasurementUnitType(0);
                                                                                          v82 = v77;
                                                                                          v83 = sub_1C9063F4C();
                                                                                          v85 = sub_1C8CACE04(v83, v84, &v87);

                                                                                          *(v80 + 4) = v85;
                                                                                          _os_log_impl(&dword_1C8C9B000, v78, v79, "Unknown measurement unit type: %s", v80, 0xCu);
                                                                                          __swift_destroy_boxed_opaque_existential_1(v81);
                                                                                          MEMORY[0x1CCA833A0](v81, -1, -1);
                                                                                          MEMORY[0x1CCA833A0](v80, -1, -1);
                                                                                        }

                                                                                        (*(v5 + 8))(v8, v4);
                                                                                        return 22;
                                                                                      }
                                                                                    }

                                                                                    return 21;
                                                                                  }
                                                                                }

                                                                                return 20;
                                                                              }
                                                                            }

                                                                            return 19;
                                                                          }
                                                                        }

                                                                        return 18;
                                                                      }
                                                                    }

                                                                    return 17;
                                                                  }
                                                                }

                                                                return 16;
                                                              }
                                                            }

                                                            return 15;
                                                          }
                                                        }

                                                        return 14;
                                                      }
                                                    }

                                                    return 13;
                                                  }
                                                }

                                                return 12;
                                              }
                                            }

                                            return 11;
                                          }
                                        }

                                        return 10;
                                      }
                                    }

                                    return 9;
                                  }
                                }

                                return 8;
                              }
                            }

                            return 7;
                          }
                        }

                        return 6;
                      }
                    }

                    return 5;
                  }
                }

                return 4;
              }
            }

            return 3;
          }
        }

        return 2;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1C8CAE9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1C8CAEAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C8CAE064();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void sub_1C8CAEAFC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C8CAEA94(v4, 1);
  OUTLINED_FUNCTION_136_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_9();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_118_0(v3 + 32 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_137_1();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void static TypeInstance.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v4 >> 61 == 1)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    case 2uLL:
      if (v4 >> 61 != 2)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_44_4();

      v33 = OUTLINED_FUNCTION_106(v25, v26, v27, v28, v29, v30, v31, v32, v69, v72);
      if ((static TypeInstance.== infix(_:_:)(v33, v34) & 1) == 0)
      {
        goto LABEL_25;
      }

      if ((~v3 & 0xF000000000000007) != 0)
      {
        if ((~v2 & 0xF000000000000007) != 0)
        {
          sub_1C8D2B0FC(v3);
          sub_1C8D2B0FC(v2);
          v61 = sub_1C8D2B0FC(v3);
          OUTLINED_FUNCTION_106(v61, v62, v63, v64, v65, v66, v67, v68, v2, v3);
          static TypedValue.== infix(_:_:)();

          sub_1C8D2B114(v3);

          goto LABEL_26;
        }

        sub_1C8D2B0FC(v3);
        sub_1C8D2B0FC(v2);
        sub_1C8D2B0FC(v3);

LABEL_24:
        sub_1C8D2B114(v3);
        sub_1C8D2B114(v2);
        goto LABEL_25;
      }

      sub_1C8D2B0FC(v3);
      sub_1C8D2B0FC(v2);
      if ((~v2 & 0xF000000000000007) != 0)
      {
        goto LABEL_24;
      }

      sub_1C8D2B114(v3);

LABEL_26:
      OUTLINED_FUNCTION_199_0();
      return;
    case 3uLL:
      if (v4 >> 61 != 3)
      {
        goto LABEL_26;
      }

      v35 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v37 = OUTLINED_FUNCTION_249();
      sub_1C8D2AF4C(v37, v38);
      goto LABEL_25;
    case 4uLL:
      if (v4 >> 61 != 4)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_44_4();

      v23 = OUTLINED_FUNCTION_106(v15, v16, v17, v18, v19, v20, v21, v22, v69, v72);
      if ((static TypeIdentifier.== infix(_:_:)(v23, v24) & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    case 5uLL:
      if (v4 >> 61 != 5)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_44_4();

      v47 = OUTLINED_FUNCTION_106(v39, v40, v41, v42, v43, v44, v45, v46, v69, v72);
      if (static TypeInstance.== infix(_:_:)(v47, v48))
      {
LABEL_18:
        v49 = OUTLINED_FUNCTION_249();
        sub_1C8CF19B4(v49, v50);
      }

LABEL_25:

      goto LABEL_26;
    case 6uLL:
      if (v4 >> 61 != 6)
      {
        goto LABEL_26;
      }

LABEL_20:
      v71 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v74 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v59 = OUTLINED_FUNCTION_106(v51, v52, v53, v54, v55, v56, v57, v58, v71, v74);
      static TypeInstance.== infix(_:_:)(v59, v60);

      goto LABEL_21;
    default:
      if (v4 >> 61)
      {
        goto LABEL_26;
      }

      v70 = *(v4 + 16);
      v73 = *(v3 + 16);

      v13 = OUTLINED_FUNCTION_106(v5, v6, v7, v8, v9, v10, v11, v12, v70, v73);
      static TypeIdentifier.== infix(_:_:)(v13, v14);

LABEL_21:

      goto LABEL_26;
  }
}

void *OUTLINED_FUNCTION_239(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v2;
  return result;
}

id OUTLINED_FUNCTION_239_1()
{
  *(v2 + 14) = v0;
  *(v2 + 22) = 2112;

  return v1;
}

uint64_t OUTLINED_FUNCTION_163_7()
{

  return sub_1C8CD20B4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_283()
{

  return sub_1C9064D9C();
}

uint64_t OUTLINED_FUNCTION_284()
{

  return sub_1C9064D9C();
}

void sub_1C8CAEFD0()
{
  OUTLINED_FUNCTION_7_2();
  if (v3)
  {
    OUTLINED_FUNCTION_37_2();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_123_0();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_36_0();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_342(v6, v7, v8, v9, v10, v11);
    v15 = OUTLINED_FUNCTION_343();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_235();
    *(v15 + 2) = v2;
    *(v15 + 3) = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = v15 + 32;
  v18 = v0 + 32;
  if (v1)
  {
    if (v15 != v0 || &v18[8 * v2] <= v17)
    {
      memmove(v17, v18, 8 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C8CAF09C()
{
  v1 = *v0;
  sub_1C8CAEFD0();
  *v0 = v2;
}

uint64_t OUTLINED_FUNCTION_160_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  return sub_1C8D90D54(&a41, &a28);
}

uint64_t OUTLINED_FUNCTION_175_4()
{
  v2 = *(v0 - 72);
  *(v0 - 89) = 1;

  return sub_1C9064A1C();
}

uint64_t static TypeIdentifier.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v3 >> 61 != 1)
      {
        return 0;
      }

      v20 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __dst[0] = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21[0] = v20;

      v19 = static TypeIdentifier.BuiltInTypeIdentifier.== infix(_:_:)(__dst, v21);
      goto LABEL_29;
    case 2uLL:
      if (v3 >> 61 != 2)
      {
        return 0;
      }

      v9 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
      v10 = v9[4];
      v11 = v9[5];
      v12 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
      v13 = v12[4];
      v14 = v12[5];
      v15 = v9[2] == v12[2] && v9[3] == v12[3];
      if (!v15 && (sub_1C9064C2C() & 1) == 0)
      {
        return 0;
      }

      if (v10 == v13 && v11 == v14)
      {
        return 1;
      }

      OUTLINED_FUNCTION_94();
LABEL_22:

      return sub_1C9064C2C();
    case 3uLL:
      if (v3 >> 61 != 3)
      {
        return 0;
      }

      v18 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      memcpy(v21, ((v3 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(v21));
      memcpy(__dst, (v18 + 16), sizeof(__dst));

      v19 = static TypeIdentifier.AttributedTypeIdentifier.== infix(_:_:)(__dst, v21);
LABEL_29:
      v5 = v19;

      return v5;
    case 4uLL:
      if (v3 >> 61 != 4)
      {
        return 0;
      }

      v6 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v7 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      if (*(v6 + 16) != *(v7 + 16) || *(v6 + 24) != *(v7 + 24))
      {
        goto LABEL_22;
      }

      return 1;
    default:
      if (v3 >> 61)
      {
        return 0;
      }

      else
      {
        v4 = *(v3 + 16);
        LOBYTE(__dst[0]) = *(v2 + 16);
        LOBYTE(v21[0]) = v4;
        return static TypeIdentifier.PrimitiveTypeIdentifier.== infix(_:_:)(__dst, v21);
      }
  }
}

void *OUTLINED_FUNCTION_101_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t __dst, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_101_4()
{

  return swift_dynamicCastObjCClass();
}

void sub_1C8CAF4E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = [v3 valueType];
  LNValueType.toTypeInstance(source:isOptional:)(a1, a2, [v3 isOptional], a3);
}

void sub_1C8CAF570()
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

uint64_t sub_1C8CAF698(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_93_2()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

void sub_1C8CAF750(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void *, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  v9 = MEMORY[0x1CCA81DD0](v7, a3, v8);
  v10 = 0;
  v14[1] = v9;
  v11 = *(a1 + 16);
  while (1)
  {
    if (v11 == v10)
    {

      OUTLINED_FUNCTION_199_0();
      return;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v12 = v10 + 1;
    v13 = *(a1 + 8 * v10 + 32);

    a4(v14, v13);

    v10 = v12;
  }

  __break(1u);
}

unint64_t sub_1C8CAF814()
{
  result = qword_1EDA63888;
  if (!qword_1EDA63888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63888);
  }

  return result;
}

void sub_1C8CAF868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_184_0();
  a31 = v33;
  a32 = v34;
  v36 = v35;
  v55 = v37;
  v39 = v38;
  v40 = v32;
  v42 = v41;
  a19 = v43;
  a20 = v43;
  v44 = *v32;
  v45 = *(*v32 + 40);
  sub_1C9064D7C();
  v39(&a10);
  sub_1C9064DBC();
  v46 = *(v44 + 32);
  OUTLINED_FUNCTION_13_12();
  v49 = ~v48;
  while (1)
  {
    v50 = v47 & v49;
    if (((1 << (v47 & v49)) & *(v44 + 56 + (((v47 & v49) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v52 = *v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = a20;
      a10 = *v40;

      v55(v54, v50, isUniquelyReferenced_nonNull_native);
      *v40 = a10;
      *v42 = v54;
      goto LABEL_7;
    }

    a10 = *(*(v44 + 48) + 8 * v50);

    v51 = v36(&a10, &a20);

    if (v51)
    {
      break;
    }

    v47 = v50 + 1;
  }

  *v42 = *(*(v44 + 48) + 8 * v50);

LABEL_7:
  OUTLINED_FUNCTION_182();
}

uint64_t OUTLINED_FUNCTION_176_5@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

void TypeInstance.hash(into:)()
{
  OUTLINED_FUNCTION_135_1();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_134_0(v0);
      v14 = 1;
      goto LABEL_15;
    case 2:
      v8 = v0 & 0x1FFFFFFFFFFFFFFFLL;
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      MEMORY[0x1CCA82810](2);
      v11 = OUTLINED_FUNCTION_297();
      TypeInstance.hash(into:)(v11);
      if ((~v9 & 0xF000000000000007) != 0)
      {
        OUTLINED_FUNCTION_284();

        OUTLINED_FUNCTION_297();
        TypedValue.hash(into:)();
      }

      else
      {
        OUTLINED_FUNCTION_73_0();
        sub_1C9064D9C();
      }

      return;
    case 3:
      OUTLINED_FUNCTION_134_0(v0);
      MEMORY[0x1CCA82810](3);
      v12 = OUTLINED_FUNCTION_145();

      sub_1C8D398B8(v12, v13);
      return;
    case 4:
      v4 = v0 & 0x1FFFFFFFFFFFFFFFLL;
      v6 = *(v4 + 16);
      v5 = *(v4 + 24);
      MEMORY[0x1CCA82810](4);
      v7 = OUTLINED_FUNCTION_297();
      TypeIdentifier.hash(into:)(v7);
      goto LABEL_11;
    case 5:
      v15 = v0 & 0x1FFFFFFFFFFFFFFFLL;
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      MEMORY[0x1CCA82810](5);
      v18 = OUTLINED_FUNCTION_297();
      TypeInstance.hash(into:)(v18);
LABEL_11:
      OUTLINED_FUNCTION_145();

      sub_1C8D0404C();
      break;
    case 6:
      OUTLINED_FUNCTION_134_0(v0);
      v14 = 6;
LABEL_15:
      MEMORY[0x1CCA82810](v14);
      v19 = OUTLINED_FUNCTION_297();
      TypeInstance.hash(into:)(v19);
      break;
    default:
      v2 = *(v0 + 16);
      MEMORY[0x1CCA82810](0);
      v3 = OUTLINED_FUNCTION_297();
      TypeIdentifier.hash(into:)(v3);
      break;
  }
}

uint64_t TypeIdentifier.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v19 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1CCA82810](1);
      __dst[0] = v19;
      result = TypeIdentifier.BuiltInTypeIdentifier.hash(into:)(a1);
      break;
    case 2uLL:
      v9 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
      v10 = v9[2];
      v11 = v9[3];
      v12 = v9[4];
      v13 = v9[5];
      MEMORY[0x1CCA82810](2);
      OUTLINED_FUNCTION_37_21();
      sub_1C9063FBC();
      goto LABEL_5;
    case 3uLL:
      v14 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
      memcpy(__dst, ((v2 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
      v15 = v14[15];
      v16 = v14[16];
      memcpy(__src, v14 + 17, sizeof(__src));
      v17 = v14[28];
      v18 = v14[29];
      MEMORY[0x1CCA82810](3);
      ContainerDefinition.hash(into:)(a1);
      if (v16)
      {
        v21[0] = v15;
        v21[1] = v16;
        memcpy(&v21[2], __src, 0x51uLL);
        memcpy(v20, v21, sizeof(v20));
        sub_1C9064D9C();
        sub_1C8CC1340(v21, __dst);
        ContainerDefinition.hash(into:)(a1);
        memcpy(__dst, v20, 0x61uLL);
        sub_1C8CC15FC(__dst);
      }

      else
      {
        sub_1C9064D9C();
      }

      OUTLINED_FUNCTION_37_21();
      result = sub_1C9063FBC();
      break;
    case 4uLL:
      v6 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      MEMORY[0x1CCA82810](4);
      OUTLINED_FUNCTION_37_21();
LABEL_5:

      result = sub_1C9063FBC();
      break;
    default:
      v4 = *(v2 + 16);
      MEMORY[0x1CCA82810](0);
      LOBYTE(__dst[0]) = v4;
      result = TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_1C8D02958();
}

void OUTLINED_FUNCTION_25_0()
{

  JUMPOUT(0x1CCA833A0);
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_61@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 176) = a1;
  *(v4 - 168) = v1;
  *(v4 - 200) = v3;
  *(v4 - 192) = v2;

  return sub_1C90627EC();
}

uint64_t OUTLINED_FUNCTION_32_4@<X0>(uint64_t a1@<X8>)
{
  v2[2] = v1;
  v2[3] = a1;
  v2[4] = v4;
  return v3;
}

void OUTLINED_FUNCTION_32_9(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, uint64_t a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, v8, a6, v9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_32_10()
{
  v2 = *(v0 - 184);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_32_13()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_32_15()
{
  *(v1 - 1712) = v0;

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_32_17()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_67()
{
  v2 = *(v0 - 96);

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_32_18()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[9];
}

uint64_t OUTLINED_FUNCTION_32_21()
{
  v2 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
}

uint64_t OUTLINED_FUNCTION_32_23()
{

  return sub_1C9064C2C();
}

void OUTLINED_FUNCTION_190_1()
{

  JUMPOUT(0x1CCA82810);
}

uint64_t OUTLINED_FUNCTION_190_5()
{
  *(v0 + 14) = v1;
  *(v0 + 22) = v2;

  return ToolInvocation.debugDescription.getter();
}

uint64_t OUTLINED_FUNCTION_190_6()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)()
{
  v1 = *v0;
  switch(*v0)
  {
    case 0x17:
      v2 = 0;
      return MEMORY[0x1CCA82810](v2);
    case 0x18:
      v2 = 1;
      return MEMORY[0x1CCA82810](v2);
    case 0x19:
      v2 = 2;
      return MEMORY[0x1CCA82810](v2);
    case 0x1A:
      v2 = 3;
      return MEMORY[0x1CCA82810](v2);
    case 0x1B:
      v2 = 4;
      return MEMORY[0x1CCA82810](v2);
    case 0x1C:
      v2 = 5;
      return MEMORY[0x1CCA82810](v2);
    case 0x1D:
      v2 = 6;
      return MEMORY[0x1CCA82810](v2);
    case 0x1E:
      v2 = 7;
      return MEMORY[0x1CCA82810](v2);
    case 0x1F:
      v2 = 8;
      return MEMORY[0x1CCA82810](v2);
    case 0x20:
      v2 = 9;
      return MEMORY[0x1CCA82810](v2);
    case 0x21:
      v2 = 10;
      return MEMORY[0x1CCA82810](v2);
    case 0x22:
      v2 = 12;
      return MEMORY[0x1CCA82810](v2);
    case 0x23:
      v2 = 13;
      return MEMORY[0x1CCA82810](v2);
    case 0x24:
      v2 = 14;
      return MEMORY[0x1CCA82810](v2);
    case 0x25:
      v2 = 15;
      return MEMORY[0x1CCA82810](v2);
    case 0x26:
      v2 = 16;
      return MEMORY[0x1CCA82810](v2);
    case 0x27:
      v2 = 17;
      return MEMORY[0x1CCA82810](v2);
    case 0x28:
      v2 = 18;
      return MEMORY[0x1CCA82810](v2);
    case 0x29:
      v2 = 19;
      return MEMORY[0x1CCA82810](v2);
    case 0x2A:
      v2 = 20;
      return MEMORY[0x1CCA82810](v2);
    case 0x2B:
      v2 = 21;
      return MEMORY[0x1CCA82810](v2);
    case 0x2C:
      v2 = 22;
      return MEMORY[0x1CCA82810](v2);
    case 0x2D:
      v2 = 23;
      return MEMORY[0x1CCA82810](v2);
    case 0x2E:
      v2 = 24;
      return MEMORY[0x1CCA82810](v2);
    default:
      MEMORY[0x1CCA82810](11);
      if (v1 == 22)
      {
        return sub_1C9064D9C();
      }

      sub_1C9064D9C();
      v2 = v1;
      return MEMORY[0x1CCA82810](v2);
  }
}

unint64_t sub_1C8CB0474(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(void *__return_ptr, char *))
{
  v56 = a4;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    return v15;
  }

  v54 = &v44 - v12;
  v60 = v4;
  v63 = MEMORY[0x1E69E7CC0];
  v45 = a3;
  (a3)(0, v14, 0, v13);
  v15 = v63;
  result = sub_1C8CBFAC8(a1);
  v19 = 0;
  v20 = a1 + 64;
  v52 = v8 + 16;
  v53 = v8 + 8;
  v46 = a1 + 72;
  v21 = v8;
  v47 = v7;
  v49 = v8;
  v48 = v14;
  v50 = a1 + 64;
  v51 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v22 = result >> 6;
      v23 = 1 << result;
      if ((*(v20 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v17)
      {
        goto LABEL_26;
      }

      v57 = v18;
      v59 = v17;
      v58 = v19;
      v24 = v15;
      v25 = result;
      v26 = *(a1 + 56) + *(v21 + 72) * result;
      v27 = *(v21 + 16);
      v28 = v54;
      v27(v54, v26, v7);
      v15 = v55;
      v27(v55, v28, v7);
      v29 = v60;
      v56(__src, v15);
      v60 = v29;
      if (v29)
      {
        v42 = OUTLINED_FUNCTION_13_25(&__src[11]);
        v43(v42);

        return v15;
      }

      v30 = OUTLINED_FUNCTION_13_25(&__src[11]);
      v31(v30);
      memcpy(__dst, __src, sizeof(__dst));
      v15 = v24;
      v63 = v24;
      v33 = *(v24 + 2);
      v32 = *(v24 + 3);
      if (v33 >= v32 >> 1)
      {
        v45(v32 > 1, v33 + 1, 1);
        v15 = v63;
      }

      *(v15 + 2) = v33 + 1;
      result = memcpy(&v15[104 * v33 + 32], __dst, 0x68uLL);
      a1 = v51;
      v34 = 1 << *(v51 + 32);
      if (v25 >= v34)
      {
        goto LABEL_27;
      }

      result = v25;
      v20 = v50;
      v35 = *(v50 + 8 * v22);
      if ((v35 & v23) == 0)
      {
        goto LABEL_28;
      }

      if (*(v51 + 36) != v59)
      {
        goto LABEL_29;
      }

      v36 = v35 & (-2 << (result & 0x3F));
      if (v36)
      {
        v34 = __clz(__rbit64(v36)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v22 << 6;
        v38 = v22 + 1;
        v39 = (v46 + 8 * v22);
        while (v38 < (v34 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            sub_1C8CAF698(result, v59, v57 & 1);
            v34 = __clz(__rbit64(v40)) + v37;
            goto LABEL_19;
          }
        }

        sub_1C8CAF698(result, v59, v57 & 1);
      }

LABEL_19:
      v19 = v58 + 1;
      v21 = v49;
      if (v58 + 1 == v48)
      {
        return v15;
      }

      v18 = 0;
      v17 = *(a1 + 36);
      result = v34;
      v7 = v47;
      if ((result & 0x8000000000000000) != 0)
      {
        break;
      }
    }
  }

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

void sub_1C8CB08D0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v75 = a2;
  v5 = sub_1C90620BC();
  v6 = OUTLINED_FUNCTION_11(v5);
  v84 = v7;
  v85 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C906308C();
  v12 = OUTLINED_FUNCTION_11(v11);
  v81 = v13;
  v82 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C90631AC();
  v19 = OUTLINED_FUNCTION_11(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - v27;
  sub_1C906309C();
  v74 = sub_1C906317C();
  v80 = v29;
  v30 = *(v21 + 8);
  v30(v28, v18);
  sub_1C906309C();
  sub_1C906319C();
  v30(v25, v18);
  v73 = sub_1C906305C();
  v72 = sub_1C906306C();
  v71 = sub_1C906307C();
  (*(v81 + 8))(v17, v82);
  sub_1C906309C();
  v70 = sub_1C906318C();
  v79 = v31;
  v30(v25, v18);
  v32 = sub_1C90630AC();
  v33 = [v32 displayRepresentation];

  v34 = v83;
  sub_1C90620AC();
  v35 = sub_1C906206C();
  v37 = v36;
  (*(v84 + 8))(v34, v85);
  TypeDisplayRepresentation.init(from:localeIdentifier:)(v33, v35, v37, &v86);
  v69 = v86;
  v77 = v87;
  v68 = v88;
  v78 = v89;
  v76 = v90;
  v81 = a1;
  v38 = sub_1C90630AC();
  v39 = [v38 properties];

  sub_1C8CB11D4();
  v40 = sub_1C906419C();

  v41 = sub_1C8CAD8AC(v40);
  v42 = 0;
  v83 = (v40 & 0xC000000000000001);
  v84 = v41;
  v85 = v40;
  v82 = v40 & 0xFFFFFFFFFFFFFF8;
  v43 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v84 == v42)
    {

      v58 = sub_1C90630BC();
      OUTLINED_FUNCTION_38_2(v58);
      (*(v59 + 8))(v81);
      v60 = v75;
      v61 = v80;
      *v75 = v74;
      v60[1] = v61;
      v62 = v72;
      v60[2] = v73;
      v60[3] = v62;
      v63 = v70;
      v60[4] = v71;
      v60[5] = v63;
      v60[6] = v79;
      v60[7] = v43;
      v64 = v77;
      v60[8] = v69;
      v60[9] = v64;
      v65 = v78;
      v60[10] = v68;
      v60[11] = v65;
      v60[12] = v76;
      return;
    }

    if (v83)
    {
      v44 = MEMORY[0x1CCA82230](v42, v85);
    }

    else
    {
      if (v42 >= *(v82 + 16))
      {
        goto LABEL_20;
      }

      v44 = *(v85 + 8 * v42 + 32);
    }

    v45 = v44;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    v91 = v44;
    v46 = v3;
    sub_1C8CB1218(&v91, &v86);
    if (v3)
    {

      v66 = sub_1C90630BC();
      OUTLINED_FUNCTION_38_2(v66);
      (*(v67 + 8))(v81);

      return;
    }

    v47 = v86;
    v48 = v87;
    v49 = v88;
    v50 = v89;
    v51 = v90;
    if (v87)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = *(v43 + 16);
        sub_1C8CAF618();
        v43 = v56;
      }

      v52 = *(v43 + 16);
      v53 = v43;
      if (v52 >= *(v43 + 24) >> 1)
      {
        sub_1C8CAF618();
        v53 = v57;
      }

      *(v53 + 16) = v52 + 1;
      v43 = v53;
      v54 = (v53 + 40 * v52);
      v54[4] = v47;
      v54[5] = v48;
      v54[6] = v49;
      v54[7] = v50;
      v54[8] = v51;
      v3 = v46;
    }

    else
    {
      sub_1C8E2FE54(v86, 0);
    }

    ++v42;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void TypeDisplayRepresentation.init(from:localeIdentifier:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = [a1 name];
  sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
  v9 = sub_1C90645AC();
  v10 = sub_1C9063EBC();
  v11 = [v8 localizedStringWithPluralizationNumber:v9 forLocaleIdentifier:v10];

  v12 = sub_1C9063EEC();
  v44 = v13;

  v14 = [a1 numericFormat];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1C9063EBC();
    v17 = [v15 localizedStringForLocaleIdentifier_];

    v18 = sub_1C9063EEC();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = sub_1C8CB1164(a1);
  if (!v21)
  {

LABEL_17:

    v26 = MEMORY[0x1E69E7CC0];
LABEL_18:
    *a4 = v12;
    a4[1] = v44;
    a4[2] = v18;
    a4[3] = v20;
    a4[4] = v26;
    return;
  }

  v22 = v21;
  v23 = sub_1C8CB217C();
  if (!v23)
  {

    goto LABEL_17;
  }

  v24 = v23;
  v47 = MEMORY[0x1E69E7CC0];
  sub_1C8CA6480();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v39 = v20;
    v40 = v18;
    v41 = v12;
    v42 = a1;
    v43 = a4;
    v25 = 0;
    v26 = v47;
    v45 = v22 & 0xC000000000000001;
    v46 = v24;
    v27 = v22;
    do
    {
      if (v45)
      {
        v28 = MEMORY[0x1CCA82230](v25, v22);
      }

      else
      {
        v28 = *(v22 + 8 * v25 + 32);
      }

      v29 = v28;
      v30 = a2;
      v31 = a3;
      v32 = sub_1C9063EBC();
      v33 = [v29 localizedStringForLocaleIdentifier_];

      v34 = sub_1C9063EEC();
      v36 = v35;

      v37 = *(v47 + 16);
      if (v37 >= *(v47 + 24) >> 1)
      {
        sub_1C8CA6480();
      }

      ++v25;
      *(v47 + 16) = v37 + 1;
      v38 = v47 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      a3 = v31;
      a2 = v30;
      v22 = v27;
    }

    while (v46 != v25);

    a4 = v43;
    v18 = v40;
    v12 = v41;
    v20 = v39;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_1C8CB1164(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C8CB78AC(0, &qword_1EDA60468, 0x1E69AC9E8);
  v3 = sub_1C906419C();

  return v3;
}

unint64_t sub_1C8CB11D4()
{
  result = qword_1EDA62D50;
  if (!qword_1EDA62D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA62D50);
  }

  return result;
}

void sub_1C8CB1218(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C90620BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_1C8CB1550(v10);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = [v10 title];
    if (v15)
    {
      v16 = v15;
      v34 = v13;
      sub_1C90620AC();
      sub_1C906206C();
      v35 = v2;
      (*(v6 + 8))(v9, v5);
      v17 = sub_1C9063EBC();

      v18 = [v16 localizedStringForLocaleIdentifier_];

      v19 = sub_1C9063EEC();
      v21 = v20;

      v22 = v35;
      sub_1C8CAF4E0(0xD00000000000001BLL, 0x80000001C90CB600, v36);
      if (v22)
      {
      }

      else
      {
        v33 = v36[0];
        *a2 = v34;
        a2[1] = v14;
        a2[2] = v19;
        a2[3] = v21;
        a2[4] = v33;
      }

      return;
    }
  }

  if (qword_1EC311410 != -1)
  {
    swift_once();
  }

  v23 = sub_1C9063D3C();
  __swift_project_value_buffer(v23, qword_1EC316C30);
  v24 = v10;
  v25 = sub_1C9063D1C();
  v26 = sub_1C906444C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136446210;
    v36[0] = sub_1C8CB1550(v24);
    v36[1] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312580, &qword_1C9073EA0);
    v30 = sub_1C9063F4C();
    v32 = sub_1C8CACE04(v30, v31, &v37);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_1C8C9B000, v25, v26, "Ignoring property %{public}s because either identifier or name is missing", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1CCA833A0](v28, -1, -1);
    MEMORY[0x1CCA833A0](v27, -1, -1);
  }

  a2[4] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
}

uint64_t sub_1C8CB1550(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C9063EEC();

  return v3;
}

char *sub_1C8CB15B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

void sub_1C8CB15DC(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v61 - v7;
  v78 = sub_1C90620BC();
  v75 = *(v78 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317E18, &unk_1C9090E70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v73 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v16 = *(*(v15 - 8) + 64);
  *&v17 = MEMORY[0x1EEE9AC00](v15 - 8).n128_u64[0];
  v19 = &v61 - v18;
  v20 = *a1;
  v21 = [v20 displayRepresentation];
  v22 = [v20 identifier];
  v23 = sub_1C9063EEC();
  v25 = v24;

  v26 = [v21 title];
  v27 = sub_1C8CB22A4(v26);
  v70 = v28;
  v71 = v27;

  v29 = [v21 subtitle];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1C8CB22A4(v30);
    v68 = v32;
    v69 = v31;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  v67 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v73, 1, 1, v67);
  v33 = sub_1C8CB1164(v21);
  v72 = v25;
  if (!v33)
  {

    goto LABEL_19;
  }

  v34 = v33;
  v35 = sub_1C8CB217C();
  if (!v35)
  {

LABEL_19:
    v37 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v48 = v73;
    if (__swift_getEnumTagSinglePayload(v73, 1, v67) == 1)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
      v50 = v8;
      v51 = 1;
    }

    else
    {
      sub_1C8CB25D8(v48, v8, type metadata accessor for DisplayRepresentation.Image);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
      swift_storeEnumTagMultiPayload();
      v50 = v8;
      v51 = 0;
      v49 = v52;
    }

    __swift_storeEnumTagSinglePayload(v50, v51, 1, v49);
    v53 = v68;
    if (v68)
    {
      v54 = 1;
    }

    else
    {
      v54 = -1;
    }

    v55 = v70;
    *v19 = v71;
    *(v19 + 1) = v55;
    v56 = v69;
    if (!v53)
    {
      v56 = 0;
    }

    *(v19 + 2) = v56;
    *(v19 + 3) = v53;
    v19[32] = v54;
    *(v19 + 5) = 0;
    *(v19 + 6) = 0;
    v19[56] = -1;
    v57 = type metadata accessor for DisplayRepresentation(0);
    sub_1C8CB2244(v8, &v19[v57[7]], &qword_1EC312528, &unk_1C9066960);
    v58 = &v19[v57[8]];
    *v58 = 0u;
    *(v58 + 1) = 0u;
    *&v19[v57[9]] = v37;
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v57);
    v59 = v72;
    *a2 = v23;
    a2[1] = v59;
    v60 = type metadata accessor for EnumerationCaseDefinition(0);
    sub_1C8CB2244(v19, a2 + *(v60 + 20), &qword_1EC312788, &unk_1C906A3A0);
    return;
  }

  v66 = v21;
  v79 = MEMORY[0x1E69E7CC0];
  v77 = v35;
  sub_1C8CA6480();
  if (v77 < 0)
  {
    goto LABEL_31;
  }

  v61 = v23;
  v62 = v19;
  v63 = v8;
  v64 = a2;
  v65 = v2;
  v36 = 0;
  v37 = v79;
  v74 = v34 & 0xFFFFFFFFFFFFFF8;
  v38 = (v75 + 8);
  v75 = v34;
  v76 = v34 & 0xC000000000000001;
  while (1)
  {
    if (v76)
    {
      v39 = MEMORY[0x1CCA82230](v36, v34);
      goto LABEL_13;
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v36 >= *(v74 + 16))
    {
      goto LABEL_30;
    }

    v39 = *(v34 + 8 * v36 + 32);
LABEL_13:
    v40 = v39;
    sub_1C90620AC();
    sub_1C906206C();
    (*v38)(v11, v78);
    v41 = sub_1C9063EBC();

    v42 = [v40 localizedStringForLocaleIdentifier_];

    v43 = sub_1C9063EEC();
    v45 = v44;

    v79 = v37;
    v46 = *(v37 + 16);
    if (v46 >= *(v37 + 24) >> 1)
    {
      sub_1C8CA6480();
      v37 = v79;
    }

    ++v36;
    *(v37 + 16) = v46 + 1;
    v47 = v37 + 16 * v46;
    *(v47 + 32) = v43;
    *(v47 + 40) = v45;
    v34 = v75;
    if (v77 == v36)
    {

      a2 = v64;
      v19 = v62;
      v8 = v63;
      v23 = v61;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}