void ConcreteResolvable.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v47 = v1;
  v48 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for TypedValue.ID(0);
  v7 = OUTLINED_FUNCTION_13_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = type metadata accessor for ConcreteResolvable();
  v14 = OUTLINED_FUNCTION_13_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v19 = (v18 - v17);
  v46 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  v20 = OUTLINED_FUNCTION_13_1(v46);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25();
  v25 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v44 - v27;
  sub_1C8D75700();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v50 = *v19;
    v33 = v48;
    TypedValue.protobuf(useCase:)();

    if (v33)
    {
      goto LABEL_8;
    }

LABEL_7:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_13();
    sub_1C8D75C80();
    v42 = type metadata accessor for ToolKitProtoTypedValueResolvable(0);
    MEMORY[0x1EEE9AC00](v42);
    v44[-2] = v28;
    sub_1C8D759B4(&qword_1EC314308, type metadata accessor for ToolKitProtoTypedValueResolvable);
    sub_1C9063ACC();
    OUTLINED_FUNCTION_3_19();
    sub_1C8D75C28(v28, v43);
    goto LABEL_8;
  }

  sub_1C8D75C80();
  v29 = (v12 + *(v6 + 20));
  v31 = *v29;
  v30 = v29[1];
  v49 = *(v12 + *(v6 + 24));
  sub_1C8CE9144(*v29, v30);

  v32 = v48;
  TypeInstance.protobuf(useCase:)();
  if (!v32)
  {

    v34 = type metadata accessor for ToolKitProtoTypeInstance(0);
    OUTLINED_FUNCTION_23_11();
    v48 = sub_1C906200C();
    v45 = v35;
    v36 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
    v44[1] = *(v36 + 24);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v34);
    v40 = v25 + *(v36 + 28);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    OUTLINED_FUNCTION_10_11();
    *v25 = v31;
    v25[1] = v30;
    sub_1C8D7300C();
    v41 = v45;
    v25[2] = v48;
    v25[3] = v41;
    goto LABEL_7;
  }

  sub_1C8CE7B78(v31, v30);
  OUTLINED_FUNCTION_10_11();

LABEL_8:
  OUTLINED_FUNCTION_198();
}

uint64_t ToolInvocationOptions.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v7 = *(v1 + 3);
  v6 = *(v1 + 4);
  v8 = v1[40];
  v9 = v1[41];
  v10 = 11;
  if (v8 != 11)
  {
    ToolInvocationOptions.InterfaceIdiom.protobuf(useCase:)(&v13);
    v10 = v13;
  }

  *a1 = 5;
  *(a1 + 40) = 11;
  v11 = *(type metadata accessor for ToolKitProtoToolInvocationOptions(0) + 36);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = v10;
  *(a1 + 41) = v9;
  return result;
}

uint64_t ToolInvocationOptions.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *a1;
  sub_1C8D75774();
  sub_1C906350C();
  v10 = *(a1 + 40);
  sub_1C8D757C8();
  sub_1C906350C();
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 41);

  result = sub_1C8D75C28(a1, type metadata accessor for ToolKitProtoToolInvocationOptions);
  *a2 = v13;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v11;
  *(a2 + 41) = v8;
  return result;
}

uint64_t sub_1C8D75298(uint64_t a1)
{
  sub_1C8D16D78(a1, &qword_1EC3142F0, &qword_1C9074F30);
  sub_1C8D75700();
  v2 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

unint64_t sub_1C8D7534C()
{
  result = qword_1EC3142E8;
  if (!qword_1EC3142E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3142E8);
  }

  return result;
}

uint64_t sub_1C8D753E8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v4 = type metadata accessor for ToolKitProtoTypedValueResolvable(0);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for ConcreteResolvable();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314350, &qword_1C90732C0);
  result = sub_1C906493C();
  v11 = 0;
  v40 = a3;
  v41 = result;
  v14 = *(a3 + 64);
  v13 = a3 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v35 = result + 64;
  if (v17)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v42 = (v17 - 1) & v17;
LABEL_10:
      v22 = v19 | (v11 << 6);
      v23 = (*(v40 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v40 + 56) + *(v37 + 72) * v22;
      sub_1C8D75700();

      v27 = v43;
      v38(v9);
      v43 = v27;
      if (v27)
      {
        break;
      }

      v28 = v9;
      sub_1C8D75C28(v9, type metadata accessor for ConcreteResolvable);
      *(v35 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v29 = v41;
      v30 = (*(v41 + 48) + 16 * v22);
      *v30 = v24;
      v30[1] = v25;
      v31 = *(v29 + 56) + *(v36 + 72) * v22;
      result = sub_1C8D75C80();
      v32 = *(v29 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_17;
      }

      *(v29 + 16) = v34;
      v9 = v28;
      v17 = v42;
      if (!v42)
      {
        goto LABEL_5;
      }
    }

    sub_1C8D75C28(v9, type metadata accessor for ConcreteResolvable);
    return v41;
  }

  else
  {
LABEL_5:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        return v41;
      }

      v21 = *(v13 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8D75700()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

unint64_t sub_1C8D75774()
{
  result = qword_1EC314310;
  if (!qword_1EC314310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314310);
  }

  return result;
}

unint64_t sub_1C8D757C8()
{
  result = qword_1EC314318;
  if (!qword_1EC314318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314318);
  }

  return result;
}

unint64_t sub_1C8D75868()
{
  result = qword_1EC314328;
  if (!qword_1EC314328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314328);
  }

  return result;
}

unint64_t sub_1C8D758C0()
{
  result = qword_1EC314330;
  if (!qword_1EC314330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314330);
  }

  return result;
}

unint64_t sub_1C8D75918()
{
  result = qword_1EC314338;
  if (!qword_1EC314338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314338);
  }

  return result;
}

uint64_t sub_1C8D759B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C8D759FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v55 = v25;
  v26 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  v27 = OUTLINED_FUNCTION_46(v26);
  v53 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314348, &qword_1C90732B8);
  v31 = sub_1C906493C();
  v32 = 0;
  v56 = v24;
  v35 = *(v24 + 64);
  v34 = v24 + 64;
  v33 = v35;
  v36 = 1 << *(v34 - 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = (v36 + 63) >> 6;
  v52 = v31 + 64;
  v54 = v31;
  if ((v37 & v33) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_22_12();
      v57 = v40;
LABEL_10:
      v43 = v39 | (v32 << 6);
      v44 = (*(v56 + 48) + 16 * v43);
      v45 = *v44;
      v46 = v44[1];
      a10 = *(*(v56 + 56) + 8 * v43);

      v55(&a10);

      if (v20)
      {
        break;
      }

      *(v52 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v47 = (v54[6] + 16 * v43);
      *v47 = v45;
      v47[1] = v46;
      v48 = v54[7] + *(v53 + 72) * v43;
      sub_1C8D75C80();
      v49 = v54[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_17;
      }

      v54[2] = v51;
      if (!v57)
      {
        goto LABEL_5;
      }
    }

LABEL_15:
    OUTLINED_FUNCTION_198();
  }

  else
  {
LABEL_5:
    v41 = v32;
    while (1)
    {
      v32 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v32 >= v38)
      {
        goto LABEL_15;
      }

      ++v41;
      if (*(v34 + 8 * v32))
      {
        OUTLINED_FUNCTION_20_8();
        v57 = v42;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_1C8D75C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8D75C80()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t AssistantSchemaIdentifier.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = *(OUTLINED_FUNCTION_0_28() + 28);

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v10 = OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_1_24(v10);
  *a1 = v4;
  a1[1] = v3;
  result = sub_1C8D75F2C(v2, a1 + v9);
  a1[2] = v5;
  a1[3] = v1;
  return result;
}

double AssistantSchemaIdentifier.init(protobuf:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v10 = *a1;
  v9 = a1[1];
  v11 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_1C8D75F9C(a1 + *(v11 + 24), v8);
  sub_1C8D7600C();

  sub_1C906351C();
  if (v2)
  {
    sub_1C8D76060(a1);
  }

  else
  {
    *v16 = *&v16[3];
    v13 = v16[5];
    v15 = a1[2];
    v14 = a1[3];

    sub_1C8D76060(a1);
    *a2 = v10;
    *(a2 + 8) = v9;
    result = *v16;
    *(a2 + 16) = *v16;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
    *(a2 + 48) = v14;
  }

  return result;
}

uint64_t sub_1C8D75F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D75F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D7600C()
{
  result = qword_1EDA60868;
  if (!qword_1EDA60868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60868);
  }

  return result;
}

uint64_t sub_1C8D76060(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AssistantSchemaIdentifier.protobuf.getter@<X0>(void *a1@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = *(OUTLINED_FUNCTION_0_28() + 28);

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v10 = OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_1_24(v10);
  *a1 = v4;
  a1[1] = v3;
  result = sub_1C8D75F2C(v2, a1 + v9);
  a1[2] = v5;
  a1[3] = v1;
  return result;
}

unint64_t sub_1C8D76188()
{
  result = qword_1EDA607D0;
  if (!qword_1EDA607D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA607D0);
  }

  return result;
}

id ToolIcon.wfIcon(with:)()
{
  v1 = sub_1C9061EBC();
  v2 = OUTLINED_FUNCTION_11(v1);
  v84 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C9063D3C();
  v9 = OUTLINED_FUNCTION_11(v8);
  v83 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v82 - v16;
  v18 = type metadata accessor for ToolIcon(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D76988(v0, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *(v21 + 1);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *v21;
      v25 = *(v21 + 8);
      if (v25 < 0)
      {
        sub_1C8CB78AC(0, &qword_1EC312BB8, 0x1E69E09E0);
        v88 = v25;
        v48 = ToolSymbolIconColor.rawValue.getter();
        v28 = sub_1C8D76A78(v48, v49, &selRef_colorForName_);
        v50 = objc_opt_self();
        v87 = v25;
        ToolSymbolIconColor.rawValue.getter();
        v51 = v28;
        v52 = sub_1C9063EBC();

        v33 = [v50 tintedColorForName_];

        if (!v28)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1C8CB78AC(0, &qword_1EC312BB8, 0x1E69E09E0);
        v86 = v25;
        v26 = ToolSymbolIconColor.rawValue.getter();
        v28 = sub_1C8D76A78(v26, v27, &selRef_colorForName_);
        v85 = BYTE1(v25);
        v29 = ToolSymbolIconColor.rawValue.getter();
        v31 = v30;
        v32 = v28;
        v33 = sub_1C8D76A78(v29, v31, &selRef_colorForName_);
        if (!v28)
        {
          goto LABEL_29;
        }
      }

      if (v33)
      {
        v53 = [objc_allocWithZone(MEMORY[0x1E69E0B48]) initWithColor_];
        v54 = objc_allocWithZone(MEMORY[0x1E69E0D70]);
        v40 = sub_1C8D76ADC(v24, v23, v28, v53);

        return v40;
      }

LABEL_29:

      v69 = *MEMORY[0x1E69E10B0];
      sub_1C906371C();
      v70 = sub_1C9063D1C();
      v71 = sub_1C906444C();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        OUTLINED_FUNCTION_3_20(&dword_1C8C9B000, v73, v74, "Missing symbol color or bakcground color not returning icon");
        MEMORY[0x1CCA833A0](v72, -1, -1);
      }

      else
      {
      }

      v63 = *(v83 + 8);
      v61 = v17;
      v62 = v8;
LABEL_33:
      v63(v61, v62);
      return 0;
    }

    v82 = *v21;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190);
    (*(v84 + 32))(v7, &v21[*(v41 + 48)], v1);
    v42 = objc_opt_self();
    v43 = sub_1C9061DDC();
    v44 = [v42 ln:v43 uniqueBundleWithURL:?];

    if (!v44)
    {

      v55 = *MEMORY[0x1E69E10B0];
      sub_1C906371C();
      v56 = sub_1C9063D1C();
      v57 = sub_1C906444C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        OUTLINED_FUNCTION_3_20(&dword_1C8C9B000, v59, v60, "No external asset not returning icon");
        MEMORY[0x1CCA833A0](v58, -1, -1);
      }

      (*(v83 + 8))(v14, v8);
      v61 = OUTLINED_FUNCTION_1_25();
      goto LABEL_33;
    }

    v46 = sub_1C9061E5C() == 0xD00000000000004ELL && 0x80000001C90CA1D0 == v45;
    if (v46)
    {
    }

    else
    {
      v47 = sub_1C9064C2C();

      if ((v47 & 1) == 0)
      {
        v75 = OUTLINED_FUNCTION_0_29();
        if (v46)
        {
          v77 = v75;
        }

        else
        {
          v77 = v76;
        }

        sub_1C8CB78AC(0, &qword_1EC314358, 0x1E69E0B58);
        v78 = v44;
        v68 = sub_1C8D769F8(v77, v82, v23, v44);
        v40 = [objc_allocWithZone(MEMORY[0x1E69E0B60]) initWithImage_];

        goto LABEL_38;
      }
    }

    sub_1C8CB78AC(0, &qword_1EC314360, 0x1E696AAE8);
    v64 = sub_1C8D76A78(0xD000000000000015, 0x80000001C90CA220, &selRef_bundleWithIdentifier_);
    v65 = OUTLINED_FUNCTION_0_29();
    if (v46)
    {
      v67 = v65;
    }

    else
    {
      v67 = v66;
    }

    sub_1C8CB78AC(0, &qword_1EC314358, 0x1E69E0B58);
    v68 = sub_1C8D769F8(v67, 0xD000000000000012, 0x80000001C90CA240, v64);
    v40 = [objc_allocWithZone(MEMORY[0x1E69E0B60]) initWithImage_];

LABEL_38:
    v79 = OUTLINED_FUNCTION_1_25();
    v80(v79);
    return v40;
  }

  v34 = *v21;
  sub_1C8CB78AC(0, &qword_1EC314360, 0x1E696AAE8);
  v35 = sub_1C8D76A78(0xD000000000000015, 0x80000001C90CA220, &selRef_bundleWithIdentifier_);
  v36 = OUTLINED_FUNCTION_0_29();
  if (v46)
  {
    v38 = v36;
  }

  else
  {
    v38 = v37;
  }

  sub_1C8CB78AC(0, &qword_1EC314358, 0x1E69E0B58);
  v39 = sub_1C8D769F8(v38, v34, v23, v35);
  v40 = [objc_allocWithZone(MEMORY[0x1E69E0B60]) initWithImage_];

  return v40;
}

uint64_t sub_1C8D76988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolIcon(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1C8D769F8(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C9063EBC();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a4 scale:a1];

  return v7;
}

id sub_1C8D76A78(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_1C9063EBC();

  v5 = [swift_getObjCClassFromMetadata() *a3];

  return v5;
}

id sub_1C8D76ADC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1C9063EBC();

  v8 = [v4 initWithSymbolName:v7 symbolColor:a3 background:a4];

  return v8;
}

uint64_t ValueSearchPredicate.Template.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  v11[1] = *v1;

  TypeInstance.protobuf(useCase:)();

  if (!v2)
  {
    v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
    v10 = a1 + *(type metadata accessor for ToolKitProtoValueSearchPredicate.Template(0) + 20);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    return sub_1C8D7732C(v7, a1);
  }

  return result;
}

void ValueSearchPredicate.init(protobuf:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = *a1;
  v14 = *(*a1 + 16);
  if (v14)
  {
    v27 = a2;
    v28 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C8D097CC();
    v15 = 0;
    v16 = v33;
    v29 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    while (v15 < *(v13 + 16))
    {
      sub_1C8D773CC(v29 + *(v7 + 72) * v15, v12);
      sub_1C8D773CC(v12, v30);
      TypedValue.init(protobuf:)();
      if (v3)
      {
        OUTLINED_FUNCTION_1_26();
        sub_1C8CD0DF0(v12, v24);
        OUTLINED_FUNCTION_0_30();
        sub_1C8CD0DF0(v28, v25);

        return;
      }

      v31 = 0;
      v17 = v13;
      v18 = v7;
      OUTLINED_FUNCTION_1_26();
      sub_1C8CD0DF0(v19, v20);
      v21 = v32;
      v33 = v16;
      v22 = *(v16 + 16);
      if (v22 >= *(v16 + 24) >> 1)
      {
        sub_1C8D097CC();
        v16 = v33;
      }

      ++v15;
      *(v16 + 16) = v22 + 1;
      *(v16 + 8 * v22 + 32) = v21;
      v7 = v18;
      v13 = v17;
      v3 = v31;
      if (v14 == v15)
      {
        OUTLINED_FUNCTION_0_30();
        sub_1C8CD0DF0(v28, v26);
        a2 = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_30();
    sub_1C8CD0DF0(a1, v23);
    v16 = MEMORY[0x1E69E7CC0];
LABEL_11:
    *a2 = v16;
  }
}

void ValueSearchPredicate.protobuf(useCase:)(void *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1C906348C();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - v13;
  v38 = type metadata accessor for ToolKitProtoTypedValue(0);
  v15 = OUTLINED_FUNCTION_11(v38);
  v32 = v16;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v34 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = *v2;
  v39 = *(*v2 + 16);
  v37 = v22 + 32;
  v36 = *MEMORY[0x1E69E0760];
  v35 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v39 == v21)
    {
      v29 = type metadata accessor for ToolKitProtoValueSearchPredicate(0);
      v30 = v33;
      v31 = v33 + *(v29 + 20);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v30 = v35;
      return;
    }

    if (v21 >= *(v22 + 16))
    {
      break;
    }

    v40 = *(v37 + 8 * v21);
    (*(v6 + 104))(v10, v36, v3, v19);

    TypedValue.protobuf(useCase:)(v10);
    (*(v6 + 8))(v10, v3);

    __swift_storeEnumTagSinglePayload(v14, 0, 1, v38);
    sub_1C8D77498(v14, v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = *(v35 + 16);
      sub_1C8D01004();
      v35 = v27;
    }

    v23 = *(v35 + 16);
    if (v23 >= *(v35 + 24) >> 1)
    {
      sub_1C8D01004();
      v35 = v28;
    }

    ++v21;
    v24 = v34;
    v25 = v35;
    *(v35 + 16) = v23 + 1;
    sub_1C8D77498(v24, v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v23);
  }

  __break(1u);
}

uint64_t ValueSearchPredicate.Template.init(protobuf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C8D774FC(a1, v9 - v7);
  sub_1C8D1FD40();
  sub_1C906351C();
  result = sub_1C8CD0DF0(a1, type metadata accessor for ToolKitProtoValueSearchPredicate.Template);
  if (!v2)
  {
    *a2 = v9[1];
  }

  return result;
}

uint64_t sub_1C8D7732C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D773CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D77430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8D77498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D774FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D77570()
{
  result = qword_1EC314370;
  if (!qword_1EC314370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314370);
  }

  return result;
}

unint64_t sub_1C8D775C8()
{
  result = qword_1EC314378;
  if (!qword_1EC314378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314378);
  }

  return result;
}

uint64_t sub_1C8D7761C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C8D7765C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C8D776B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74736E4965707974 && a2 == 0xEC00000065636E61)
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

uint64_t sub_1C8D777BC(char a1)
{
  if (!a1)
  {
    return 0x644965707974;
  }

  if (a1 == 1)
  {
    return 25705;
  }

  return 0x74736E4965707974;
}

uint64_t sub_1C8D7780C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3143C8, &qword_1C90736F8);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v20 = v1[3];
  v21 = v13;
  v19 = v1[4];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D783B4();
  sub_1C9064E1C();
  v26 = 0;
  v15 = v22;
  sub_1C9064B2C();
  if (!v15)
  {
    v16 = v19;
    v25 = 1;
    sub_1C9064B2C();
    v23 = v16;
    v24 = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
    sub_1C8D78408(&qword_1EC3131E8);
    sub_1C9064B8C();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_1C8D77A08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3143B8, &unk_1C90736E8);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D783B4();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1C9064A0C();
  v18 = v11;
  v16 = sub_1C9064A0C();
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8D78408(&qword_1EC3131C8);
  sub_1C9064A6C();
  v13 = OUTLINED_FUNCTION_3_21();
  v14(v13);
  *a2 = v10;
  a2[1] = v18;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8D77C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D776B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D77CC4(uint64_t a1)
{
  v2 = sub_1C8D783B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D77D00(uint64_t a1)
{
  v2 = sub_1C8D783B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D77D70@<X0>(void *a1@<X8>)
{
  if (qword_1EC311260 != -1)
  {
    OUTLINED_FUNCTION_4_15();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EC390888);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v4 = v3;
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  if (qword_1EC311268 != -1)
  {
    OUTLINED_FUNCTION_2_20();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC3908A0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v8 = v7;
  v10 = v9;

  a1[2] = v8;
  a1[3] = v10;
  if (qword_1EC311270 != -1)
  {
    OUTLINED_FUNCTION_1_27();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC3908B8);
  sub_1C9062E5C();
  sub_1C8D277DC();

  a1[4] = v12;
  return result;
}

uint64_t sub_1C8D77F0C()
{
  sub_1C8D782B4();

  return sub_1C9062B4C();
}

uint64_t sub_1C8D78004()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = qword_1EC311260;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_4_15();
  }

  v7 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v7, qword_1EC390888);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_0();
  if (qword_1EC311268 != -1)
  {
    OUTLINED_FUNCTION_2_20();
  }

  OUTLINED_FUNCTION_10(v7, qword_1EC3908A0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_0();
  if (qword_1EC311270 != -1)
  {
    OUTLINED_FUNCTION_1_27();
  }

  OUTLINED_FUNCTION_10(v7, qword_1EC3908B8);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8D78680();
  return sub_1C9062BFC();
}

uint64_t sub_1C8D7818C()
{
  v0 = qword_1EC314380;

  return v0;
}

unint64_t sub_1C8D781C8()
{
  result = qword_1EC314390;
  if (!qword_1EC314390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314390);
  }

  return result;
}

unint64_t sub_1C8D78220(void *a1)
{
  a1[1] = sub_1C8D78260();
  a1[2] = sub_1C8D782B4();
  a1[3] = sub_1C8D17478();
  result = sub_1C8D78308();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D78260()
{
  result = qword_1EC314398;
  if (!qword_1EC314398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314398);
  }

  return result;
}

unint64_t sub_1C8D782B4()
{
  result = qword_1EC3143A0;
  if (!qword_1EC3143A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143A0);
  }

  return result;
}

unint64_t sub_1C8D78308()
{
  result = qword_1EC3143A8;
  if (!qword_1EC3143A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143A8);
  }

  return result;
}

unint64_t sub_1C8D78360()
{
  result = qword_1EC3143B0;
  if (!qword_1EC3143B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143B0);
  }

  return result;
}

unint64_t sub_1C8D783B4()
{
  result = qword_1EC3143C0;
  if (!qword_1EC3143C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143C0);
  }

  return result;
}

uint64_t sub_1C8D78408(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131C0, &unk_1C906B4E0);
    sub_1C8CAC450();
    sub_1C8CA6D90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8D784B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8D783B4();
  return sub_1C9062E8C();
}

uint64_t sub_1C8D78528()
{
  v0 = sub_1C9062E6C();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC312100 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EC391010);
  (*(v3 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v0);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  result = (*(v3 + 32))(v9 + v8, v6, v0);
  qword_1EC3908D0 = sub_1C8D786E4;
  *algn_1EC3908D8 = v9;
  return result;
}

unint64_t sub_1C8D78680()
{
  result = qword_1EDA69128;
  if (!qword_1EDA69128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131C0, &unk_1C906B4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69128);
  }

  return result;
}

void sub_1C8D786E4()
{
  v0 = *(*(sub_1C9062E6C() - 8) + 80);

  sub_1C8D240D4();
}

_BYTE *storeEnumTagSinglePayload for EntityPropertyRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D7884C()
{
  result = qword_1EC3143D0;
  if (!qword_1EC3143D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143D0);
  }

  return result;
}

unint64_t sub_1C8D788A4()
{
  result = qword_1EC3143D8;
  if (!qword_1EC3143D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143D8);
  }

  return result;
}

unint64_t sub_1C8D788FC()
{
  result = qword_1EC3143E0;
  if (!qword_1EC3143E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143E0);
  }

  return result;
}

void ToolKitIndexingReason.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v52 = v50 - v10;
  OUTLINED_FUNCTION_111();
  v51 = sub_1C906357C();
  v11 = OUTLINED_FUNCTION_13_1(v51);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v53 = v15 - v14;
  OUTLINED_FUNCTION_111();
  v16 = sub_1C906354C();
  v17 = OUTLINED_FUNCTION_11(v16);
  v50[1] = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B18, &qword_1C906F5B8);
  OUTLINED_FUNCTION_9(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31();
  v25 = sub_1C906204C();
  v26 = OUTLINED_FUNCTION_11(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v50 - v35;
  v37 = *v3;
  v38 = v3[1];
  sub_1C9061FFC();
  if (__swift_getEnumTagSinglePayload(v0, 1, v25) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC313B18, &qword_1C906F5B8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3143E8, &qword_1C9073818);
    sub_1C8D4F674(&qword_1EC3143F0, &qword_1EC3143E8, &qword_1C9073818);
    OUTLINED_FUNCTION_45_8();
    *v40 = v25;
    v41 = *MEMORY[0x1E69E08A8];
    OUTLINED_FUNCTION_10_0(v39);
    (*(v42 + 104))();
    swift_willThrow();
  }

  else
  {
    v50[0] = v5;
    v43 = *(v28 + 32);
    v44 = OUTLINED_FUNCTION_119();
    v45(v44);
    (*(v28 + 16))(v33, v36, v25);
    v46 = v3[3];
    v47 = *(v3 + 32);
    v54 = v3[2];
    v55 = v46;
    v56 = v47;
    sub_1C8D78DBC(v54, v46, v47);
    sub_1C8D7C2E4(&qword_1EC3143F8, MEMORY[0x1E69E07D8]);
    sub_1C906351C();
    if (v1)
    {
      v49 = *(v28 + 8);
      v49(v33, v25);
      v49(v36, v25);
    }

    else
    {
      v48 = type metadata accessor for ToolKitProtoIndexingReason(0);
      sub_1C8D7AE3C(v3 + *(v48 + 24), v52, &qword_1EC3141E0, &unk_1C90729F0);
      sub_1C8D7C2E4(&qword_1EC3141E8, MEMORY[0x1E69E0830]);
      sub_1C906351C();
      sub_1C906353C();
      (*(v28 + 8))(v36, v25);
    }
  }

  sub_1C8D7AE88();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D78DBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C8D78DD0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1C8D78DD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1C8D78DE8(uint64_t a1)
{
  OUTLINED_FUNCTION_41_5(a1);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = OUTLINED_FUNCTION_37_9();
  sub_1C8D02100(v3, v4);
  v5 = OUTLINED_FUNCTION_258();
  v6 = type metadata accessor for IndexingLog.IndexingEvent(v5);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_10_12();
  if (!v9)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1C8D78EB4(uint64_t a1)
{
  OUTLINED_FUNCTION_41_5(a1);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = OUTLINED_FUNCTION_37_9();
  sub_1C8D020D8(v3, v4);
  v5 = OUTLINED_FUNCTION_258();
  v6 = type metadata accessor for IndexingLog.WALEvent(v5);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_10_12();
  if (!v9)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1C8D78F80(uint64_t a1)
{
  OUTLINED_FUNCTION_41_5(a1);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = OUTLINED_FUNCTION_37_9();
  sub_1C8D020B0(v3, v4);
  v5 = OUTLINED_FUNCTION_258();
  v6 = type metadata accessor for IndexingLog.VacuumEvent(v5);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_10_12();
  if (!v9)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1C8D790A4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = OUTLINED_FUNCTION_37_9();
  v8 = v7(v6);
  a3(v11, v8 + 32, v4, a1);
  OUTLINED_FUNCTION_10_12();
  if (!v9)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1C8D7912C(uint64_t a1)
{
  OUTLINED_FUNCTION_41_5(a1);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = OUTLINED_FUNCTION_37_9();
  sub_1C8D02198(v3, v4);
  v5 = OUTLINED_FUNCTION_258();
  v6 = type metadata accessor for ToolKitProtoIndexingLogEntry(v5);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_10_12();
  if (!v9)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t LaunchServicesSnapshot.State.init(protobuf:)(uint64_t *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  sub_1C9061EFC();
  v4 = *a1;
  v5 = a1[1];

  OUTLINED_FUNCTION_211();
  sub_1C906360C();
  return sub_1C8D7AE88();
}

uint64_t LaunchServicesSnapshot.State.protobuf(useCase:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C906361C();
  v4 = v3;
  v5 = sub_1C90635FC();
  v6 = sub_1C9061F3C();
  v8 = v7;

  v9 = a1 + *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State(0) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v8;
  return result;
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.init(protobuf:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B18, &qword_1C906F5B8);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = sub_1C906204C();
  v9 = OUTLINED_FUNCTION_11(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v20 = *a1;
  v21 = a1[1];
  sub_1C9061FFC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C8D16D78(v7, &qword_1EC313B18, &qword_1C906F5B8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3143E8, &qword_1C9073818);
    sub_1C8D4F674(&qword_1EC3143F0, &qword_1EC3143E8, &qword_1C9073818);
    OUTLINED_FUNCTION_45_8();
    *v23 = v8;
    v24 = *MEMORY[0x1E69E08A8];
    OUTLINED_FUNCTION_10_0(v22);
    (*(v25 + 104))();
    swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v19, v7, v8);
    (*(v11 + 16))(v16, v19, v8);
    v26 = a1[2];
    sub_1C90635CC();
    (*(v11 + 8))(v19, v8);
  }

  return sub_1C8D7AE88();
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.protobuf(useCase:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C906204C();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  sub_1C90635BC();
  v12 = sub_1C906200C();
  v14 = v13;
  (*(v6 + 8))(v11, v3);
  sub_1C90635AC();
  v15 = OUTLINED_FUNCTION_257();
  v16 = a1 + *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(v15) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v12;
  a1[1] = v14;
  a1[2] = v1;
  return result;
}

void LaunchServicesSnapshot.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_9(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = sub_1C90635DC();
  v32 = OUTLINED_FUNCTION_11(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  v35 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0);
  sub_1C8D7AE3C(v24 + *(v35 + 20), v30, &qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_15_11();
  sub_1C8D7C2E4(v36, v37);
  sub_1C906351C();
  if (!v20)
  {
    v38 = *v24;
    sub_1C906362C();
    OUTLINED_FUNCTION_7_14();
    sub_1C8D7C2E4(v39, v40);

    sub_1C9063E3C();
    sub_1C906363C();
  }

  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_198();
}

void LaunchServicesSnapshot.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v41 = v1;
  v2 = sub_1C906204C();
  v3 = OUTLINED_FUNCTION_11(v2);
  v39 = v4;
  v40 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = sub_1C90635DC();
  v11 = OUTLINED_FUNCTION_11(v10);
  v38 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v37 - v23);
  MEMORY[0x1CCA81070](v22);
  OUTLINED_FUNCTION_258();
  sub_1C906362C();
  OUTLINED_FUNCTION_7_14();
  sub_1C8D7C2E4(v25, v26);
  v27 = sub_1C9063E4C();

  if (!v0)
  {
    sub_1C906365C();
    sub_1C90635BC();
    v28 = sub_1C906200C();
    v30 = v29;
    (*(v39 + 8))(v9, v40);
    sub_1C90635AC();
    v31 = OUTLINED_FUNCTION_257();
    v32 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(v31);
    v33 = v24 + *(v32 + 24);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    (*(v38 + 8))(v17, v10);
    *v24 = v28;
    v24[1] = v30;
    v24[2] = v17;
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v32);
    v34 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0);
    v35 = *(v34 + 20);
    __swift_storeEnumTagSinglePayload(v41 + v35, 1, 1, v32);
    v36 = v41 + *(v34 + 24);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v41 = v27;
    sub_1C8D7CA88(v24, v41 + v35, &qword_1EC3129D8, &unk_1C909DFC0);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t LinkSnapshot.State.init(protobuf:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];

  sub_1C8CE9144(v3, v4);
  OUTLINED_FUNCTION_211();
  sub_1C906339C();
  return sub_1C8D7AE88();
}

uint64_t LinkSnapshot.State.protobuf(useCase:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C90633AC();
  v4 = v3;
  v5 = sub_1C90633BC();
  v7 = v6;
  v8 = a1 + *(type metadata accessor for ToolKitProtoLinkSnapshot.State(0) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  return result;
}

uint64_t LinkSnapshot.init(protobuf:)(uint64_t *a1)
{
  v2 = *a1;
  sub_1C90633CC();
  OUTLINED_FUNCTION_4_16();
  sub_1C8D7C2E4(v3, v4);

  sub_1C9063E3C();
  if (!v1)
  {
    sub_1C906337C();
  }

  return sub_1C8D7AE88();
}

uint64_t LinkSnapshot.protobuf(useCase:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1C906338C();
  sub_1C90633CC();
  OUTLINED_FUNCTION_4_16();
  sub_1C8D7C2E4(v3, v4);
  OUTLINED_FUNCTION_211();
  v5 = sub_1C9063E4C();

  if (!v1)
  {
    v7 = a1 + *(type metadata accessor for ToolKitProtoLinkSnapshot(0) + 20);
    result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a1 = v5;
  }

  return result;
}

void ToolKitIndexingReason.Changeset.Provenance.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v77 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v71 - v9;
  OUTLINED_FUNCTION_111();
  v75 = sub_1C90635DC();
  v10 = OUTLINED_FUNCTION_11(v75);
  v71 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v76 = v15 - v14;
  v16 = OUTLINED_FUNCTION_111();
  v17 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v16);
  v18 = OUTLINED_FUNCTION_13_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44_8();
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v71 - v22;
  v23 = OUTLINED_FUNCTION_111();
  v24 = type metadata accessor for ToolKitProtoLinkSnapshot(v23);
  v25 = OUTLINED_FUNCTION_9(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25();
  v30 = (v28 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v72 = &v71 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  OUTLINED_FUNCTION_9(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  v37 = OUTLINED_FUNCTION_31();
  v38 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(v37);
  v39 = OUTLINED_FUNCTION_13_1(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v71 - v46;
  sub_1C8D7AE3C(v3, v0, &qword_1EC3129F0, &qword_1C9068DD0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v38) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC3129F0, &qword_1C9068DD0);
    v48 = OUTLINED_FUNCTION_94();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
    sub_1C8D4F674(&qword_1EC314428, &qword_1EC314420, &qword_1C9073820);
    swift_allocError();
    *v51 = v38;
    v52 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v50);
    (*(v53 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_0_31();
LABEL_14:
    sub_1C8D7AE88();
  }

  else
  {
    OUTLINED_FUNCTION_16_11();
    sub_1C8D7CB58(v0, v47);
    sub_1C8D7CB00(v47, v44);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v55 = v78;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v64 = v72;
        sub_1C8D7CB58(v44, v72);
        sub_1C8D7CB00(v64, v30);
        v65 = *v30;
        sub_1C90633CC();
        OUTLINED_FUNCTION_4_16();
        sub_1C8D7C2E4(v66, v67);

        sub_1C9063E3C();
        if (v1)
        {
          OUTLINED_FUNCTION_0_31();
          sub_1C8D7AE88();
          OUTLINED_FUNCTION_17_9();
          sub_1C8D7AE88();
          OUTLINED_FUNCTION_119();
          goto LABEL_13;
        }

        v60 = v77;
        sub_1C906337C();
        OUTLINED_FUNCTION_0_31();
        sub_1C8D7AE88();
        OUTLINED_FUNCTION_17_9();
        sub_1C8D7AE88();
        OUTLINED_FUNCTION_119();
        sub_1C8D7AE88();
        v59 = MEMORY[0x1E69E07E8];
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_0_31();
        sub_1C8D7AE88();
        v59 = MEMORY[0x1E69E07F0];
        goto LABEL_8;
      case 3:
        OUTLINED_FUNCTION_0_31();
        sub_1C8D7AE88();
        v59 = MEMORY[0x1E69E07E0];
LABEL_8:
        v60 = v77;
        goto LABEL_9;
      default:
        sub_1C8D7CB58(v44, v78);
        v56 = v74;
        sub_1C8D7CB00(v55, v74);
        sub_1C8D7AE3C(v56 + *(v17 + 20), v73, &qword_1EC3129D8, &unk_1C909DFC0);
        OUTLINED_FUNCTION_15_11();
        sub_1C8D7C2E4(v57, v58);
        sub_1C906351C();
        if (v1)
        {
          OUTLINED_FUNCTION_0_31();
          sub_1C8D7AE88();
          OUTLINED_FUNCTION_14_14();
          sub_1C8D7AE88();
LABEL_13:
          sub_1C8D7AE88();
          OUTLINED_FUNCTION_8_16();
          goto LABEL_14;
        }

        v68 = *v56;
        sub_1C906362C();
        OUTLINED_FUNCTION_7_14();
        sub_1C8D7C2E4(v69, v70);

        sub_1C9063E3C();
        v60 = v77;
        sub_1C906363C();
        OUTLINED_FUNCTION_0_31();
        sub_1C8D7AE88();
        OUTLINED_FUNCTION_14_14();
        sub_1C8D7AE88();
        sub_1C8D7AE88();
        v59 = MEMORY[0x1E69E07F8];
LABEL_9:
        OUTLINED_FUNCTION_8_16();
        sub_1C8D7AE88();
        v61 = *v59;
        v62 = sub_1C906356C();
        OUTLINED_FUNCTION_13_1(v62);
        (*(v63 + 104))(v60, v61);
        break;
    }
  }

  OUTLINED_FUNCTION_198();
}

void ToolKitIndexingReason.Changeset.Provenance.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v59 = v3;
  v60 = v2;
  v4 = sub_1C906366C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_31();
  v10 = sub_1C90633EC();
  v11 = OUTLINED_FUNCTION_11(v10);
  v55 = v12;
  v56 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  v18 = sub_1C906356C();
  v19 = OUTLINED_FUNCTION_11(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v26 = v25 - v24;
  v57 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
  v27 = OUTLINED_FUNCTION_13_1(v57);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25();
  v32 = (v30 - v31);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v58 = &v55 - v35;
  (*(v21 + 16))(v26, v0, v18, v34);
  v36 = *(v21 + 88);
  v37 = OUTLINED_FUNCTION_224();
  v39 = v38(v37);
  if (v39 == *MEMORY[0x1E69E07F8])
  {
    v40 = *(v21 + 96);
    v41 = OUTLINED_FUNCTION_224();
    v42(v41);
    (*(v7 + 32))(v0, v26, v4);
    LaunchServicesSnapshot.protobuf(useCase:)();
    if (v1)
    {
      (*(v7 + 8))(v0, v4);
LABEL_14:
      OUTLINED_FUNCTION_198();
      return;
    }

    (*(v7 + 8))(v0, v4);
    goto LABEL_13;
  }

  if (v39 == *MEMORY[0x1E69E07E8])
  {
    v43 = *(v21 + 96);
    v44 = OUTLINED_FUNCTION_224();
    v45(v44);
    v47 = v55;
    v46 = v56;
    (*(v55 + 32))(v17, v26, v56);
    sub_1C906338C();
    OUTLINED_FUNCTION_257();
    sub_1C90633CC();
    OUTLINED_FUNCTION_4_16();
    sub_1C8D7C2E4(v48, v49);
    v50 = sub_1C9063E4C();
    if (v1)
    {
      (*(v47 + 8))(v17, v46);

      goto LABEL_14;
    }

    v51 = v50;

    v52 = v32 + *(type metadata accessor for ToolKitProtoLinkSnapshot(0) + 20);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    (*(v47 + 8))(v17, v46);
    *v32 = v51;
LABEL_13:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_16_11();
    v53 = v58;
    sub_1C8D7CB58(v32, v58);
    v54 = type metadata accessor for ToolKitProtoChangeset.Provenance(0);
    MEMORY[0x1EEE9AC00](v54);
    *(&v55 - 2) = v53;
    sub_1C8D7C2E4(qword_1EDA62338, type metadata accessor for ToolKitProtoChangeset.Provenance);
    sub_1C9063ACC();
    OUTLINED_FUNCTION_8_16();
    sub_1C8D7AE88();
    goto LABEL_14;
  }

  if (v39 == *MEMORY[0x1E69E07F0] || v39 == *MEMORY[0x1E69E07E0])
  {
    goto LABEL_13;
  }

  sub_1C9064C1C();
  __break(1u);
}

void ToolKitIndexingReason.Changeset.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v53 = v3;
  v4 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A4C0, &unk_1C909DFD0);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = type metadata accessor for ToolKitProtoChangesetKind(0);
  v18 = OUTLINED_FUNCTION_13_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  sub_1C8D7AE3C(v2, v16, &qword_1EC31A4C0, &unk_1C909DFD0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31A4C0, &unk_1C909DFD0);
    v27 = OUTLINED_FUNCTION_94();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    sub_1C8D4F674(&qword_1EC314438, &qword_1EC314430, &qword_1C9073828);
    swift_allocError();
    *v30 = v17;
    v31 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v29);
    (*(v32 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_2_21();
LABEL_3:
    sub_1C8D7AE88();
    goto LABEL_11;
  }

  sub_1C8D7CB58(v16, v26);
  sub_1C8D7CB00(v26, v23);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 2, v4);
  if (!EnumTagSinglePayload)
  {
    sub_1C8D7CB58(v23, v10);
    v35 = *v10;

    v37 = sub_1C8D2BCE0(v36);
    v38 = v10[1];

    v40 = sub_1C8D2BCE0(v39);
    v41 = v10[2];
    sub_1C906356C();
    v42 = MEMORY[0x1E69E0800];
    sub_1C8D7C2E4(&qword_1EDA62BE8, MEMORY[0x1E69E0800]);
    sub_1C8D7C2E4(&qword_1EC314440, v42);

    v43 = sub_1C906436C();
    if (!v0)
    {
      v47 = v43;
      OUTLINED_FUNCTION_2_21();
      sub_1C8D7AE88();
      OUTLINED_FUNCTION_20_9();
      OUTLINED_FUNCTION_1_28();
      sub_1C8D7AE88();
      v48 = v53;
      *v53 = v37;
      v48[1] = v40;
      v48[2] = v47;
      v49 = *MEMORY[0x1E69E0828];
      v50 = sub_1C906357C();
      OUTLINED_FUNCTION_13_1(v50);
      (*(v51 + 104))(v48, v49);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_2_21();
    sub_1C8D7AE88();
    OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_1_28();
    goto LABEL_3;
  }

  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_2_21();
    sub_1C8D7AE88();
    OUTLINED_FUNCTION_1_28();
    sub_1C8D7AE88();
    v34 = MEMORY[0x1E69E0818];
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    sub_1C8D7AE88();
    OUTLINED_FUNCTION_1_28();
    sub_1C8D7AE88();
    v34 = MEMORY[0x1E69E0820];
  }

  v44 = *v34;
  v45 = sub_1C906357C();
  OUTLINED_FUNCTION_13_1(v45);
  (*(v46 + 104))(v53, v44);
LABEL_11:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D7AE3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_13(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return v4;
}

uint64_t sub_1C8D7AE88()
{
  v1 = OUTLINED_FUNCTION_258();
  v3 = v2(v1);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void ToolKitIndexingReason.Changeset.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C906357C();
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v13 = (v12 - v11);
  v14 = type metadata accessor for ToolKitProtoChangesetKind(0);
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  v20 = (v18 - v19);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v37 - v23;
  (*(v8 + 16))(v13, v2, v5, v22);
  v25 = (*(v8 + 88))(v13, v5);
  if (v25 == *MEMORY[0x1E69E0828])
  {
    v37[1] = v4;
    (*(v8 + 96))(v13, v5);
    v26 = v13[1];
    v27 = v13[2];
    v38 = sub_1C8D790A4(*v13, sub_1C8D01FC4, sub_1C8D7C438);
    v28 = sub_1C8D790A4(v26, sub_1C8D01FC4, sub_1C8D7C438);
    sub_1C906356C();
    v29 = MEMORY[0x1E69E0800];
    sub_1C8D7C2E4(&qword_1EDA62BE8, MEMORY[0x1E69E0800]);
    sub_1C8D7C2E4(&qword_1EDA62BE0, v29);
    v30 = sub_1C906437C();

    if (v1)
    {

LABEL_11:
      OUTLINED_FUNCTION_198();
      return;
    }

    v34 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
    v35 = v20 + *(v34 + 28);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v20 = v38;
    v20[1] = v28;
    v20[2] = v30;
    __swift_storeEnumTagSinglePayload(v20, 0, 2, v34);
LABEL_10:
    sub_1C8D7CB58(v20, v24);
    v36 = type metadata accessor for ToolKitProtoChangeset(0);
    MEMORY[0x1EEE9AC00](v36);
    v37[-2] = v24;
    sub_1C8D7C2E4(&qword_1EDA65F00, type metadata accessor for ToolKitProtoChangeset);
    sub_1C9063ACC();
    OUTLINED_FUNCTION_1_28();
    sub_1C8D7AE88();
    goto LABEL_11;
  }

  if (v25 == *MEMORY[0x1E69E0818])
  {
    v31 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
    v32 = v20;
    v33 = 1;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v32, v33, 2, v31);
    goto LABEL_10;
  }

  if (v25 == *MEMORY[0x1E69E0820])
  {
    v31 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
    v32 = v20;
    v33 = 2;
    goto LABEL_8;
  }

  sub_1C9064C1C();
  __break(1u);
}

uint64_t sub_1C8D7B2C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_1C8D16D78(a1, a3, a4);
  v8 = OUTLINED_FUNCTION_211();
  sub_1C8D7CB00(v8, v9);
  v10 = a6(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
}

uint64_t ToolKitIndexingReason.Trigger.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v4 = a1[1];
      *a2 = v3;
      a2[1] = v4;
      v5 = MEMORY[0x1E69E07D0];
    }

    else
    {
      switch(v3)
      {
        case 1:
          v5 = MEMORY[0x1E69E0790];
          break;
        case 2:
          v5 = MEMORY[0x1E69E07B8];
          break;
        case 3:
          v5 = MEMORY[0x1E69E07B0];
          break;
        case 4:
          v5 = MEMORY[0x1E69E07C0];
          break;
        case 5:
          v5 = MEMORY[0x1E69E0798];
          break;
        case 6:
          v5 = MEMORY[0x1E69E07A8];
          break;
        case 7:
          v5 = MEMORY[0x1E69E07A0];
          break;
        case 8:
          v5 = MEMORY[0x1E69E0780];
          break;
        case 9:
          v5 = MEMORY[0x1E69E0788];
          break;
        default:
          v5 = MEMORY[0x1E69E0778];
          break;
      }
    }
  }

  else
  {
    *a2 = v3 & 1;
    v5 = MEMORY[0x1E69E07C8];
  }

  v6 = *v5;
  v7 = sub_1C906354C();
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v10 = *(v9 + 104);

  return v10(a2, v6, v8);
}

void ToolKitIndexingReason.Trigger.protobuf(useCase:)(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C906354C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  (*(v7 + 16))(v11 - v10, v2, v4);
  v13 = (*(v7 + 88))(v12, v4);
  if (v13 == *MEMORY[0x1E69E07C8])
  {
    (*(v7 + 96))(v12, v4);
    v14 = 0;
    v15 = 0;
    v16 = *v12;
LABEL_12:
    *a1 = v16;
    *(a1 + 8) = v14;
    *(a1 + 16) = v15;
    return;
  }

  if (v13 == *MEMORY[0x1E69E07D0])
  {
    (*(v7 + 96))(v12, v4);
    v16 = *v12;
    v14 = v12[1];
    v15 = 1;
    goto LABEL_12;
  }

  if (v13 == *MEMORY[0x1E69E0778])
  {
    v16 = 0;
    v14 = 0;
LABEL_7:
    v15 = 2;
    goto LABEL_12;
  }

  if (v13 == *MEMORY[0x1E69E0790])
  {
    OUTLINED_FUNCTION_24_11();
    v16 = 1;
    goto LABEL_12;
  }

  if (v13 == *MEMORY[0x1E69E07A0])
  {
    OUTLINED_FUNCTION_24_11();
    v16 = 7;
    goto LABEL_12;
  }

  if (v13 == *MEMORY[0x1E69E07B8])
  {
    v14 = 0;
    v16 = 2;
    goto LABEL_7;
  }

  if (v13 == *MEMORY[0x1E69E07B0])
  {
    OUTLINED_FUNCTION_24_11();
    v16 = 3;
    goto LABEL_12;
  }

  if (v13 == *MEMORY[0x1E69E07C0])
  {
    OUTLINED_FUNCTION_24_11();
    v16 = 4;
    goto LABEL_12;
  }

  if (v13 == *MEMORY[0x1E69E0798])
  {
    OUTLINED_FUNCTION_24_11();
    v16 = 5;
    goto LABEL_12;
  }

  if (v13 == *MEMORY[0x1E69E07A8])
  {
    OUTLINED_FUNCTION_24_11();
    v16 = 6;
    goto LABEL_12;
  }

  if (v13 == *MEMORY[0x1E69E0780])
  {
    OUTLINED_FUNCTION_24_11();
    v16 = 8;
    goto LABEL_12;
  }

  if (v13 == *MEMORY[0x1E69E0788])
  {
    OUTLINED_FUNCTION_24_11();
    v16 = 9;
    goto LABEL_12;
  }

  sub_1C9064C1C();
  __break(1u);
}

uint64_t ToolKitIndexingReason.protobuf(useCase:)()
{
  type metadata accessor for ToolKitProtoIndexingReason(0);
  sub_1C8D7C2E4(qword_1EDA61AF8, type metadata accessor for ToolKitProtoIndexingReason);
  return sub_1C9063ACC();
}

uint64_t sub_1C8D7B8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v4 = sub_1C906354C();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C906357C();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - v13;
  v15 = sub_1C906204C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C906352C();
  v20 = sub_1C906200C();
  v22 = v21;
  (*(v16 + 8))(v19, v15);
  v23 = *(a1 + 8);

  *a1 = v20;
  *(a1 + 8) = v22;
  sub_1C906358C();
  v24 = v41;
  ToolKitIndexingReason.Changeset.protobuf(useCase:)();
  if (v24)
  {
    return (*(v36 + 8))(v10, v37);
  }

  (*(v36 + 8))(v10, v37);
  v26 = type metadata accessor for ToolKitProtoChangeset(0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v26);
  v27 = type metadata accessor for ToolKitProtoIndexingReason(0);
  sub_1C8D7CA88(v14, a1 + *(v27 + 24), &qword_1EC3141E0, &unk_1C90729F0);
  v28 = v33;
  sub_1C906355C();
  ToolKitIndexingReason.Trigger.protobuf(useCase:)(v39);
  (*(v34 + 8))(v28, v35);
  v29 = v39[0];
  v30 = v39[1];
  v31 = v40;
  result = sub_1C8D7CAD4(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  *(a1 + 16) = v29;
  *(a1 + 24) = v30;
  *(a1 + 32) = v31;
  return result;
}

void ToolKitIndexingRequest.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v56 = sub_1C906359C();
  v2 = OUTLINED_FUNCTION_11(v56);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v55 = v8 - v7;
  OUTLINED_FUNCTION_111();
  v9 = sub_1C906204C();
  v10 = OUTLINED_FUNCTION_11(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v52 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  sub_1C906367C();
  v20 = sub_1C906200C();
  v22 = v21;
  v23 = *(v12 + 8);
  v53 = v12 + 8;
  v54 = v9;
  v51 = v23;
  v23(v19, v9);
  v24 = sub_1C906368C();
  v25 = *(v24 + 16);
  if (v25)
  {
    v45 = v22;
    v46 = v20;
    v47 = v1;
    v57 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v26 = v57;
    v28 = *(v4 + 16);
    v27 = v4 + 16;
    v29 = *(v27 + 64);
    OUTLINED_FUNCTION_139();
    v44 = v24;
    v31 = v24 + v30;
    v49 = *(v27 + 56);
    v50 = v32;
    v48 = (v27 - 8);
    do
    {
      v34 = v55;
      v33 = v56;
      v35 = OUTLINED_FUNCTION_224();
      v36 = v27;
      v50(v35);
      v37 = v52;
      sub_1C906352C();
      v38 = sub_1C906200C();
      v40 = v39;
      v51(v37, v54);
      (*v48)(v34, v33);
      v57 = v26;
      v41 = *(v26 + 16);
      if (v41 >= *(v26 + 24) >> 1)
      {
        sub_1C8CA6480();
        v26 = v57;
      }

      *(v26 + 16) = v41 + 1;
      v42 = v26 + 16 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v40;
      v31 += v49;
      --v25;
      v27 = v36;
    }

    while (v25);

    v20 = v46;
    v1 = v47;
    v22 = v45;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v43 = v1 + *(type metadata accessor for ToolKitProtoIndexingRequest(0) + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = v20;
  v1[1] = v22;
  v1[2] = v26;
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitIndexingRequest.Response.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C906369C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  (*(v7 + 16))(v11 - v10, v2, v4);
  v12 = *(v7 + 88);
  v13 = OUTLINED_FUNCTION_119();
  result = v14(v13);
  v16 = 0;
  if (result == *MEMORY[0x1E69E0890])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69E0898])
  {
    v16 = 1;
LABEL_4:
    *a1 = 0;
    a1[1] = v16;
    return result;
  }

  result = sub_1C9064C1C();
  __break(1u);
  return result;
}

uint64_t sub_1C8D7C2E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C8D7C32C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_33_5();
  v7 = *(v3 + 56);
  v6 = v3 + 56;
  v8 = *(v6 - 24);
  OUTLINED_FUNCTION_11_10();
  if (!v10)
  {
    OUTLINED_FUNCTION_43_6();
LABEL_17:
    *v0 = v1;
    v0[1] = v6;
    OUTLINED_FUNCTION_32_4(v12);
    OUTLINED_FUNCTION_163();
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_21_8();
    v15 = (v14 - v4) >> 6;
    while (v13 < v11)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v5 = *(v6 + 8 * v17);
          ++v12;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_12:
      OUTLINED_FUNCTION_22();
      *v2 = *(*(v1 + 48) + ((v17 << 9) | (8 * v18)));
      if (v16 == v11)
      {

        v12 = v17;
        goto LABEL_17;
      }

      ++v2;

      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C8D7C438()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_33_5();
  v7 = *(v3 + 56);
  v6 = v3 + 56;
  v8 = *(v6 - 24);
  OUTLINED_FUNCTION_11_10();
  if (!v10)
  {
    OUTLINED_FUNCTION_43_6();
LABEL_17:
    *v0 = v1;
    v0[1] = v6;
    OUTLINED_FUNCTION_32_4(v12);
    OUTLINED_FUNCTION_163();
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_21_8();
    v15 = (v14 - v4) >> 6;
    while (v13 < v11)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v5 = *(v6 + 8 * v17);
          ++v12;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_12:
      v18 = (*(v1 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v5)))));
      v19 = v18[1];
      v5 &= v5 - 1;
      *v2 = *v18;
      v2[1] = v19;
      if (v16 == v11)
      {

        v12 = v17;
        goto LABEL_17;
      }

      v2 += 2;

      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C8D7C54C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4 + 56;
  v7 = *(a4 + 56);
  v9 = *(a4 + 32);
  OUTLINED_FUNCTION_28_6();
  v14 = v13 & v12;
  if (!v15)
  {
    OUTLINED_FUNCTION_43_6();
LABEL_18:
    *a1 = a4;
    a1[1] = v8;
    a1[2] = ~v11;
    a1[3] = v17;
    a1[4] = v14;
    return;
  }

  v16 = v10;
  if (!v10)
  {
    v17 = 0;
    goto LABEL_18;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_21_8();
    v26 = v19;
    v21 = (v20 - v19) >> 6;
    while (1)
    {
      if (v18 >= v16)
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

          v14 = *(v8 + 8 * v23);
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
      v24 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v25 = (*(a4 + 48) + 136 * (v24 | (v23 << 6)));
      memcpy(__dst, v25, 0x88uLL);
      memmove(v4, v25, 0x88uLL);
      if (v22 == v16)
      {
        break;
      }

      v4 += 136;
      sub_1C8D073F4(__dst, v27);
      v18 = v22;
      v17 = v23;
    }

    sub_1C8D073F4(__dst, v27);
    v17 = v23;
LABEL_16:
    v11 = v26;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1C8D7C6BC()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_33_5();
  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = *(v5 - 32);
  OUTLINED_FUNCTION_11_10();
  if (!v8)
  {
    v13 = 0;
LABEL_17:
    *v0 = v1;
    v0[1] = v5;
    v0[2] = ~v3;
    v0[3] = v13;
    v0[4] = v4;
    OUTLINED_FUNCTION_163();
    return;
  }

  v10 = v9;
  if (!v9)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v8;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_20;
      }

      if (!v4)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v3) >> 6))
          {
            v4 = 0;
            goto LABEL_17;
          }

          v4 = *(v5 + 8 * v15);
          ++v13;
          if (v4)
          {
            v13 = v15;
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

LABEL_12:
      OUTLINED_FUNCTION_22();
      memmove(v11, (*(v1 + 56) + 104 * (v16 | (v13 << 6))), 0x61uLL);
      v11 += 104;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

void sub_1C8D7C7C8()
{
  OUTLINED_FUNCTION_164();
  v37 = v1;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_258();
  v11 = v10(v9);
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44_8();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14;
  v39 = v4;
  v17 = *(v4 + 64);
  v16 = v4 + 64;
  v18 = *(v16 - 32);
  OUTLINED_FUNCTION_28_6();
  v22 = v21 & v20;
  if (!v8)
  {
    OUTLINED_FUNCTION_43_6();
LABEL_17:
    *v0 = v39;
    v0[1] = v16;
    OUTLINED_FUNCTION_32_4(v24);
    OUTLINED_FUNCTION_163();
    return;
  }

  if (!v6)
  {
    v24 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v33[1] = v19;
    v34 = v0;
    v23 = 0;
    v24 = 0;
    v25 = (63 - v19) >> 6;
    while (1)
    {
      if (v23 >= v6)
      {
        goto LABEL_20;
      }

      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_21;
      }

      if (!v22)
      {
        while (1)
        {
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v27 >= v25)
          {
            goto LABEL_15;
          }

          v22 = *(v16 + 8 * v27);
          ++v24;
          if (v22)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v27 = v24;
LABEL_12:
      OUTLINED_FUNCTION_22();
      v29 = v35;
      v30 = *(v36 + 72);
      sub_1C8D7CB00(*(v39 + 56) + v30 * (v28 | (v27 << 6)), v35);
      sub_1C8D7CB58(v29, v15);
      v31 = OUTLINED_FUNCTION_224();
      sub_1C8D7CB58(v31, v32);
      if (v26 == v6)
      {
        break;
      }

      v8 += v30;
      v23 = v26;
      v24 = v27;
    }

    v24 = v27;
LABEL_15:
    v0 = v34;
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
}

void *sub_1C8D7C9A4(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D7CA88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_13(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return v4;
}

uint64_t sub_1C8D7CAD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C8D7CAE8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1C8D7CAE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1C8D7CB00(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v5 = v4(v3);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t sub_1C8D7CB58(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v5 = v4(v3);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t sub_1C8D7CBBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C8D7CBFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8D7CC64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701667182 && a2 == 0xE400000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6972745365757274 && a2 == 0xEA0000000000676ELL;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x72745365736C6166 && a2 == 0xEB00000000676E69)
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

uint64_t sub_1C8D7CE9C(char a1)
{
  result = 0x64496C6F6F74;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0x6972745365757274;
      break;
    case 6:
      result = 0x72745365736C6166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D7CF60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144A8, &qword_1C9073E98);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v28[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D7E094();
  sub_1C9064E1C();
  v14 = *v3;
  v28[15] = 0;
  sub_1C9064B9C();
  if (!v2)
  {
    v15 = v3[1];
    v16 = v3[2];
    v28[14] = 1;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v17 = v3[3];
    v18 = v3[4];
    v28[13] = 2;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v19 = v3[5];
    v20 = v3[6];
    v28[12] = 3;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v21 = v3[7];
    v22 = v3[8];
    v28[11] = 4;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064ADC();
    v23 = v3[9];
    v24 = v3[10];
    v28[10] = 5;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064ADC();
    v25 = v3[11];
    v26 = v3[12];
    v28[9] = 6;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064ADC();
  }

  return (*(v8 + 8))(v12, v5);
}

void *sub_1C8D7D150@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144A0, &qword_1C9073E90);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D7E094();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43[0]) = 0;
  v14 = sub_1C9064A7C();
  OUTLINED_FUNCTION_0_32(1);
  v15 = sub_1C9064A0C();
  v41 = v16;
  OUTLINED_FUNCTION_0_32(2);
  v37 = sub_1C9064A0C();
  v40 = v17;
  OUTLINED_FUNCTION_0_32(3);
  v36 = sub_1C9064A0C();
  v39 = v18;
  OUTLINED_FUNCTION_0_32(4);
  v34 = sub_1C90649AC();
  v35 = v15;
  v38 = v19;
  OUTLINED_FUNCTION_0_32(5);
  v20 = sub_1C90649AC();
  v22 = v21;
  v33 = v20;
  v44 = 6;
  v23 = sub_1C90649AC();
  v24 = *(v8 + 8);
  v25 = v23;
  v32 = v26;
  v24(v12, v5);
  __src[0] = v14;
  __src[1] = v35;
  v27 = v41;
  __src[2] = v41;
  __src[3] = v37;
  __src[4] = v40;
  v28 = v39;
  __src[5] = v36;
  __src[6] = v39;
  __src[7] = v34;
  __src[8] = v38;
  __src[9] = v33;
  __src[10] = v22;
  v29 = v32;
  __src[11] = v25;
  __src[12] = v32;
  sub_1C8D7E0E8(__src, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v43[0] = v14;
  v43[1] = v35;
  v43[2] = v27;
  v43[3] = v37;
  v43[4] = v40;
  v43[5] = v36;
  v43[6] = v28;
  v43[7] = v34;
  v43[8] = v38;
  v43[9] = v33;
  v43[10] = v22;
  v43[11] = v25;
  v43[12] = v29;
  sub_1C8D7E120(v43);
  return memcpy(a2, __src, 0x68uLL);
}

uint64_t sub_1C8D7D5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D7CC64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D7D600(uint64_t a1)
{
  v2 = sub_1C8D7E094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D7D63C(uint64_t a1)
{
  v2 = sub_1C8D7E094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C8D7D678@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8D7D150(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t sub_1C8D7D71C@<X0>(void *a1@<X8>)
{
  if (qword_1EDA62470 != -1)
  {
    OUTLINED_FUNCTION_10_13();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EDA6E618);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_14_15();
  sub_1C8E2B4F8();
  v4 = v3;

  if (qword_1EDA62498 != -1)
  {
    OUTLINED_FUNCTION_9_11();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6E660);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_14_15();
  sub_1C8E2B294();
  v6 = v5;
  v8 = v7;

  if (qword_1EDA62480 != -1)
  {
    OUTLINED_FUNCTION_8_17();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6E630);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_14_15();
  sub_1C8E2B294();
  v26 = v10;
  v27 = v9;

  if (qword_1EDA62488 != -1)
  {
    OUTLINED_FUNCTION_7_15();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6E648);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v24 = v12;
  v25 = v11;
  v28 = v8;
  v29 = v4;

  if (qword_1EDA624A0 != -1)
  {
    OUTLINED_FUNCTION_6_13();
  }

  v13 = v6;
  OUTLINED_FUNCTION_10(v2, qword_1EDA6E678);
  sub_1C9062E5C();
  v14 = sub_1C8E293EC();
  v16 = v15;

  if (qword_1EC311288 != -1)
  {
    OUTLINED_FUNCTION_5_17();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC3908E0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_14_15();
  v17 = sub_1C8E293EC();
  v19 = v18;

  if (qword_1EC311290 != -1)
  {
    OUTLINED_FUNCTION_4_17();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC3908F8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_14_15();
  v20 = sub_1C8E293EC();
  v22 = v21;

  *a1 = v29;
  a1[1] = v13;
  a1[2] = v28;
  a1[3] = v27;
  a1[4] = v26;
  a1[5] = v25;
  a1[6] = v24;
  a1[7] = v14;
  a1[8] = v16;
  a1[9] = v17;
  a1[10] = v19;
  a1[11] = v20;
  a1[12] = v22;
  return result;
}

uint64_t sub_1C8D7D9EC()
{
  sub_1C8D7DF40();

  return sub_1C9062B4C();
}

uint64_t sub_1C8D7DAE4()
{
  if (qword_1EDA62470 != -1)
  {
    OUTLINED_FUNCTION_10_13();
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EDA6E618);
  sub_1C9062E5C();
  v2 = *v0;
  v27 = MEMORY[0x1E69E7360];
  v28 = MEMORY[0x1E69A01D0];
  v25 = v2;
  sub_1C9062BFC();
  if (qword_1EDA62498 != -1)
  {
    OUTLINED_FUNCTION_9_11();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E660);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v4 = v0[1];
  v3 = v0[2];
  v5 = MEMORY[0x1E69E6158];
  v6 = MEMORY[0x1E69A0138];
  v27 = MEMORY[0x1E69E6158];
  v28 = MEMORY[0x1E69A0138];
  v25 = v4;
  v26 = v3;

  OUTLINED_FUNCTION_1_0();
  if (qword_1EDA62480 != -1)
  {
    OUTLINED_FUNCTION_8_17();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E630);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v8 = v0[3];
  v7 = v0[4];
  v27 = v5;
  v28 = v6;
  v25 = v8;
  v26 = v7;

  OUTLINED_FUNCTION_1_0();
  if (qword_1EDA62488 != -1)
  {
    OUTLINED_FUNCTION_7_15();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E648);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v10 = v0[5];
  v9 = v0[6];
  v27 = v5;
  v28 = v6;
  v25 = v10;
  v26 = v9;

  OUTLINED_FUNCTION_1_0();
  if (qword_1EDA624A0 != -1)
  {
    OUTLINED_FUNCTION_6_13();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E678);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v31 = *(v0 + 7);
  v11 = *(&v31 + 1);
  if (*(&v31 + 1))
  {
    v12 = MEMORY[0x1E69A0138];
    v13 = MEMORY[0x1E69E6158];
    v14 = v31;
  }

  else
  {
    OUTLINED_FUNCTION_11_11();
  }

  v25 = v14;
  v26 = v11;
  v27 = v13;
  v28 = v12;
  sub_1C8D29F88(&v31, &v30);
  OUTLINED_FUNCTION_1_0();
  if (qword_1EC311288 != -1)
  {
    OUTLINED_FUNCTION_5_17();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3908E0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v30 = *(v0 + 9);
  v15 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    v16 = MEMORY[0x1E69A0138];
    v17 = MEMORY[0x1E69E6158];
    v18 = v30;
  }

  else
  {
    OUTLINED_FUNCTION_11_11();
  }

  v25 = v18;
  v26 = v15;
  v27 = v17;
  v28 = v16;
  sub_1C8D29F88(&v30, &v29);
  OUTLINED_FUNCTION_1_0();
  if (qword_1EC311290 != -1)
  {
    OUTLINED_FUNCTION_4_17();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3908F8);
  sub_1C9062E5C();
  v29 = *(v0 + 11);
  v19 = *(&v29 + 1);
  if (*(&v29 + 1))
  {
    v20 = MEMORY[0x1E69A0138];
    v21 = MEMORY[0x1E69E6158];
    v22 = v29;
  }

  else
  {
    OUTLINED_FUNCTION_11_11();
  }

  v25 = v22;
  v26 = v19;
  v27 = v21;
  v28 = v20;
  sub_1C8D29F88(&v29, v24);
  return sub_1C9062BFC();
}

uint64_t sub_1C8D7DE18()
{
  v0 = qword_1EC314468;

  return v0;
}

unint64_t sub_1C8D7DE54()
{
  result = qword_1EC314478;
  if (!qword_1EC314478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314478);
  }

  return result;
}

unint64_t sub_1C8D7DEAC(void *a1)
{
  a1[1] = sub_1C8D7DEEC();
  a1[2] = sub_1C8D7DF40();
  a1[3] = sub_1C8D7DF94();
  result = sub_1C8D7DFE8();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D7DEEC()
{
  result = qword_1EC314480;
  if (!qword_1EC314480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314480);
  }

  return result;
}

unint64_t sub_1C8D7DF40()
{
  result = qword_1EC314488;
  if (!qword_1EC314488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314488);
  }

  return result;
}

unint64_t sub_1C8D7DF94()
{
  result = qword_1EDA62458;
  if (!qword_1EDA62458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62458);
  }

  return result;
}

unint64_t sub_1C8D7DFE8()
{
  result = qword_1EC314490;
  if (!qword_1EC314490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314490);
  }

  return result;
}

unint64_t sub_1C8D7E040()
{
  result = qword_1EC314498;
  if (!qword_1EC314498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314498);
  }

  return result;
}

unint64_t sub_1C8D7E094()
{
  result = qword_1EDA624B8;
  if (!qword_1EDA624B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624B8);
  }

  return result;
}

uint64_t sub_1C8D7E1C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8D7E094();
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for ToolParameterLocalizationRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D7E318()
{
  result = qword_1EC3144B0;
  if (!qword_1EC3144B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3144B0);
  }

  return result;
}

unint64_t sub_1C8D7E370()
{
  result = qword_1EDA624A8;
  if (!qword_1EDA624A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624A8);
  }

  return result;
}

unint64_t sub_1C8D7E3C8()
{
  result = qword_1EDA624B0;
  if (!qword_1EDA624B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624B0);
  }

  return result;
}

unint64_t *static TypedValueResolutionCoercion.producing(_:)@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if ((~*result & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v4 = v3 >> 61;
  if (v3 >> 61 == 4)
  {
    result = (v3 & 0x1FFFFFFFFFFFFFFFLL);
    v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (v8 >> 61 || *(v8 + 16) != 38)
    {
LABEL_2:
      *a2 = 0;
      return result;
    }

    v9 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v30 = *(v9 + 16);
    v10 = (v9 + 32);

    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v30 == v11)
      {
        result = sub_1C8D076D8(v3);
        *a2 = v12;
        return result;
      }

      if (v11 >= *(v9 + 16))
      {
        break;
      }

      memcpy(__dst, v10, sizeof(__dst));
      memmove(v33, v10, 0x88uLL);
      if (sub_1C8CA638C(v33) == 2)
      {
        v13 = *sub_1C8CA62B8(v33);
        memcpy(v31, __dst, sizeof(v31));
        v25 = *sub_1C8CA62B8(v31);
      }

      else
      {
        result = sub_1C8CA62B8(v33);
        v13 = MEMORY[0x1E69E7CC0];
      }

      v14 = *(v13 + 16);
      v15 = *(v12 + 16);
      if (__OFADD__(v15, v14))
      {
        goto LABEL_38;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v16 = *(v12 + 24) >> 1, v16 < v15 + v14))
      {
        sub_1C8CACA10();
        v12 = v17;
        v16 = *(v17 + 24) >> 1;
      }

      if (*(v13 + 16))
      {
        v18 = v16 - *(v12 + 16);
        result = sub_1C9063C4C();
        v19 = *(result - 1);
        if (v18 < v14)
        {
          goto LABEL_40;
        }

        v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
        v21 = *(v19 + 72);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v22 = *(v12 + 16);
          v23 = __OFADD__(v22, v14);
          v24 = v22 + v14;
          if (v23)
          {
            goto LABEL_41;
          }

          *(v12 + 16) = v24;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_39;
        }
      }

      v10 += 136;
      ++v11;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    if (v4 == 1)
    {
      v33[0] = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = v33[0];
      sub_1C8CD1784(v3);

      static TypedValueResolutionCoercion.producing(_:)(v33);
      sub_1C8D076D8(v7);
      return sub_1C8D076D8(v3);
    }

    if (v4)
    {
      goto LABEL_2;
    }

    v5 = *(v3 + 16);
    if (v5 >> 61)
    {
      goto LABEL_2;
    }

    switch(*(v5 + 16))
    {
      case 0x19:
        v6 = 2;
        goto LABEL_36;
      case 0x1B:
        v6 = 1;
        goto LABEL_36;
      case 0x1E:
        v6 = 3;
        goto LABEL_36;
      case 0x21:
        v6 = 4;
        goto LABEL_36;
      case 0x25:
        v6 = 5;
LABEL_36:
        *a2 = v6;
        break;
      case 0x26:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312B88, &qword_1C9068F20);
        v26 = *(sub_1C9063C4C() - 8);
        v27 = *(v26 + 72);
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1C906A950;

        sub_1C9063C3C();
        result = sub_1C8D076D8(v3);
        *a2 = v29;
        break;
      default:
        goto LABEL_2;
    }
  }

  return result;
}

uint64_t static TypedValueResolutionCoercion.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 0uLL:
      if (v3)
      {
        goto LABEL_16;
      }

      v2 = 0;
      goto LABEL_12;
    case 1uLL:
      if (v3 != 1)
      {
        goto LABEL_16;
      }

      v2 = 1;
LABEL_12:
      v4 = 1;
      break;
    case 2uLL:
      if (v3 != 2)
      {
        goto LABEL_16;
      }

      v4 = 1;
      v2 = 2;
      break;
    case 3uLL:
      if (v3 != 3)
      {
        goto LABEL_16;
      }

      v4 = 1;
      v2 = 3;
      break;
    case 4uLL:
      if (v3 != 4)
      {
        goto LABEL_16;
      }

      v4 = 1;
      v2 = 4;
      break;
    case 5uLL:
      if (v3 != 5)
      {
        goto LABEL_16;
      }

      v4 = 1;
      v2 = 5;
      break;
    default:
      if (v3 >= 6)
      {
        sub_1C8D7E8F4(*a2);
        sub_1C8D7E8F4(v2);
        sub_1C8CEAF48();
        v4 = v6;
      }

      else
      {
LABEL_16:
        sub_1C8D7E8F4(*a2);
        sub_1C8D7E8F4(v2);
        v4 = 0;
      }

      break;
  }

  sub_1C8D7E904(v2);
  sub_1C8D7E904(v3);
  return v4 & 1;
}

unint64_t sub_1C8D7E8F4(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

unint64_t sub_1C8D7E904(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit28TypedValueResolutionCoercionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8D7E92C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8D7E984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_1C8D7E9D4(void *result, int a2)
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

uint64_t sub_1C8D7EA04@<X0>(void *a1@<X8>)
{
  v86 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v69 - v12;
  v13 = v1[1];
  v84 = *v1;
  v14 = type metadata accessor for FetchedToolDisplayMetadata();
  v15 = *(v14 + 44);
  v16 = v1 + *(v14 + 40);
  v17 = *(v16 + 32);
  v82 = *(v16 + 24);
  v83 = v13;
  v79 = v16;
  v80 = *(v1 + 32);
  v18 = *(v1 + v15);
  v19 = *(v18 + 16);
  v88 = v1;
  v89 = v7;
  v87 = v14;
  v81 = v17;
  if (v19)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];

    v20 = OUTLINED_FUNCTION_3_22();
    sub_1C8D09BC4(v20, v21, v22);
    v23 = __dst[0];
    v24 = (v18 + 64);
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      __dst[0] = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);

      if (v28 >= v27 >> 1)
      {
        v30 = OUTLINED_FUNCTION_8_18();
        sub_1C8D09BC4(v30, v31, v32);
        v23 = __dst[0];
      }

      *(v23 + 16) = v28 + 1;
      v29 = v23 + 16 * v28;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v24 += 5;
      --v19;
    }

    while (v19);
    v1 = v88;
    v7 = v89;
    v33 = v87;
  }

  else
  {
    v33 = v14;

    v23 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v1 + v33[12]);
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_22();
    sub_1C8CA6480();
    v36 = __dst[0];
    v37 = (v34 + 64);
    do
    {
      v39 = *(v37 - 1);
      v38 = *v37;
      __dst[0] = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);

      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_8_18();
        sub_1C8CA6480();
        v36 = __dst[0];
      }

      *(v36 + 16) = v41 + 1;
      v42 = v36 + 16 * v41;
      *(v42 + 32) = v39;
      *(v42 + 40) = v38;
      v37 += 6;
      --v35;
    }

    while (v35);
    v1 = v88;
    v7 = v89;
    v33 = v87;
  }

  v43 = *(v1 + v33[9]);
  v44 = v1[2];
  v76 = v1[3];
  memcpy(__dst, v1 + v33[13], 0x88uLL);
  v78 = v43;

  sub_1C8D50178(__dst, v96);
  sub_1C8F28B4C(__dst, v92);
  v45 = v33[14];
  memcpy(v93, v1 + v45, sizeof(v93));
  memcpy(v94, v1 + v45, sizeof(v94));
  v46 = sub_1C8CE5448(v94);
  v77 = v44;
  if (v46 == 1)
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
  }

  else
  {
    memcpy(v96, v93, sizeof(v96));
    memcpy(v95, v93, sizeof(v95));
    sub_1C8D50178(v95, v90);
    sub_1C8F28B4C(v96, v90);
    v74 = v90[0];
    v72 = v90[1];
    v73 = v90[2];
    v70 = v90[3];
    v71 = v90[5];
    v69 = v90[4];
    v75 = LOBYTE(v90[6]);
  }

  v47 = *(v1 + v33[15]);
  v48 = *(v47 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v91 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_22();
    sub_1C8D09B8C();
    v49 = v91;
    v50 = (v47 + 32);
    do
    {
      memcpy(v95, v50, sizeof(v95));
      sub_1C8D50178(v95, v90);
      sub_1C8F28B4C(v95, v90);
      v91 = v49;
      v51 = *(v49 + 16);
      if (v51 >= *(v49 + 24) >> 1)
      {
        sub_1C8D09B8C();
        v49 = v91;
      }

      *(v49 + 16) = v51 + 1;
      memcpy((v49 + 104 * v51 + 32), v90, 0x61uLL);
      v50 += 136;
      --v48;
    }

    while (v48);
    v1 = v88;
    v7 = v89;
    v33 = v87;
  }

  v52 = *(v79 + 56);
  v53 = *(v79 + 64);
  sub_1C8D24768(v1 + v33[8], v7);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v54);
  v56 = v85;
  if (EnumTagSinglePayload == 1)
  {

    sub_1C8D16D78(v7, &qword_1EC313190, &unk_1C9074070);
    v57 = 1;
  }

  else
  {
    sub_1C8D80B88(v7, v85, type metadata accessor for ToolIcon);

    sub_1C8D16D78(v7, &qword_1EC313198, &unk_1C9074080);
    v57 = 0;
  }

  v58 = v78;
  v59 = v76;
  v60 = type metadata accessor for ToolIcon(0);
  __swift_storeEnumTagSinglePayload(v56, v57, 1, v60);
  v61 = v56;
  v62 = v86;
  v63 = v83;
  *v86 = v84;
  v62[1] = v63;
  v64 = v81;
  v62[2] = v82;
  v62[3] = v64;
  *(v62 + 32) = v80;
  v62[5] = v23;
  v62[6] = v36;
  v65 = v77;
  v62[7] = v58;
  v62[8] = v65;
  v62[9] = v59;
  memcpy(v62 + 10, v92, 0x61uLL);
  *(v62 + 25) = v72;
  *(v62 + 23) = v74;
  v66 = v69;
  *(v62 + 29) = v70;
  *(v62 + 31) = v66;
  *(v62 + 27) = v73;
  *(v62 + 33) = v71;
  *(v62 + 280) = v75;
  v62[36] = v49;
  v62[37] = v52;
  v62[38] = v53;
  v67 = type metadata accessor for ToolDisplayMetadata();
  return sub_1C8D80354(v61, v62 + *(v67 + 64));
}

uint64_t type metadata accessor for FetchedToolDisplayMetadata()
{
  result = qword_1EDA62920;
  if (!qword_1EDA62920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8D7EFD0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for FetchedToolDisplayMetadata();
  v9 = v8[8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  v11 = v8[14];
  sub_1C8D805E4(__src);
  memcpy((a1 + v11), __src, 0x88uLL);
  sub_1C8E2B294();
  *a1 = v12;
  *(a1 + 8) = v13;
  sub_1C8E2B088();
  *(a1 + 16) = v14;
  sub_1C8E2B088();
  *(a1 + 24) = v15;
  sub_1C8E2B294();
  ToolTypeDefinition.init(rawValue:)(v16);
  v17 = v21[0];
  if (LOBYTE(v21[0]) == 5)
  {
    v17 = 3;
  }

  *(a1 + 32) = v17;
  sub_1C905CBB0(v7);
  sub_1C8D805EC(v7, a1 + v9);
  sub_1C8D279AC();
  *(a1 + v8[9]) = v18;
  sub_1C8D8065C();
  sub_1C9062E0C();
  memcpy((a1 + v8[10]), v21, 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144C0, &qword_1C9074120);
  sub_1C8D80758(&qword_1EDA60510, &qword_1EC3144C0, &qword_1C9074120);
  sub_1C8D806B0();
  sub_1C9062E1C();
  *(a1 + v8[11]) = v21[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144C8, &qword_1C9074128);
  sub_1C8D80758(&qword_1EDA604E8, &qword_1EC3144C8, &qword_1C9074128);
  sub_1C8CE6D7C();
  sub_1C9062E1C();
  *(a1 + v8[12]) = v21[0];
  sub_1C8D80704();
  sub_1C9062E0C();
  memcpy((a1 + v8[13]), v21, 0x88uLL);
  sub_1C9062E2C();
  memcpy(v22, v20, sizeof(v22));
  memcpy(v21, (a1 + v11), 0x88uLL);
  sub_1C8D16D78(v21, &qword_1EC3144D0, &qword_1C9074130);
  memcpy((a1 + v11), v22, 0x88uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144D8, &qword_1C9074138);
  sub_1C8D80758(&qword_1EDA604E0, &qword_1EC3144D8, &qword_1C9074138);
  sub_1C9062E1C();

  *(a1 + v8[15]) = v20[0];
  return result;
}

uint64_t sub_1C8D7F468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696C696269736976 && a2 == 0xEF7367616C467974;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657079546C6F6F74 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x63496D6F74737563 && a2 == 0xEA00000000006E6FLL;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x654B686372616573 && a2 == 0xEE007364726F7779;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6F43656372756F73 && a2 == 0xEF72656E6961746ELL;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000014 && 0x80000001C90CA2A0 == a2;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD00000000000001FLL && 0x80000001C90CA2C0 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1C9064C2C();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1C8D7F82C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7367616C66;
      break;
    case 2:
      result = 0x696C696269736976;
      break;
    case 3:
      result = 0x657079546C6F6F74;
      break;
    case 4:
      result = 0x63496D6F74737563;
      break;
    case 5:
      result = 0x6D65726975716572;
      break;
    case 6:
      result = 0x617A696C61636F6CLL;
      break;
    case 7:
      result = 0x69726F6765746163;
      break;
    case 8:
      result = 0x654B686372616573;
      break;
    case 9:
      result = 0x6F43656372756F73;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D7F9B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144E0, &unk_1C9074140);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for FetchedToolDisplayMetadata();
  v15 = OUTLINED_FUNCTION_13_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 32);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  v63 = v21;
  __swift_storeEnumTagSinglePayload(&v19[v21], 1, 1, v22);
  v53 = v14;
  v23 = *(v14 + 56);
  sub_1C8D805E4(__src);
  v50 = v23;
  memcpy(&v19[v23], __src, 0x88uLL);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D807AC();
  v49 = v13;
  v25 = v52;
  sub_1C9064DEC();
  v51 = v19;
  if (v25)
  {
    v52 = v25;
    LODWORD(v49) = 0;
    LODWORD(v48) = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = v51;
    goto LABEL_4;
  }

  LOBYTE(v61[0]) = 0;
  *v19 = sub_1C9064A0C();
  *(v19 + 1) = v26;
  LOBYTE(v59[0]) = 1;
  sub_1C8D21F34();
  OUTLINED_FUNCTION_0_33();
  sub_1C9064A6C();
  *(v19 + 2) = v61[0];
  LOBYTE(v59[0]) = 2;
  sub_1C8D21F88();
  OUTLINED_FUNCTION_0_33();
  sub_1C9064A6C();
  *(v19 + 3) = v61[0];
  LOBYTE(v59[0]) = 3;
  sub_1C8D21EE0();
  OUTLINED_FUNCTION_0_33();
  OUTLINED_FUNCTION_9_12();
  sub_1C9064A6C();
  v19[32] = v61[0];
  LOBYTE(v61[0]) = 4;
  sub_1C8D80854();
  OUTLINED_FUNCTION_9_12();
  sub_1C90649EC();
  sub_1C8D805EC(v8, &v19[v63]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
  LOBYTE(v59[0]) = 5;
  sub_1C8D80984();
  OUTLINED_FUNCTION_9_12();
  sub_1C9064A6C();
  v37 = v53;
  *&v19[v53[9]] = v61[0];
  v60 = 6;
  sub_1C8D80A10();
  OUTLINED_FUNCTION_9_12();
  sub_1C9064A6C();
  memcpy(&v19[v37[10]], v61, 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144C0, &qword_1C9074120);
  v58[0] = 7;
  sub_1C8D80B0C(&qword_1EDA667A8, &qword_1EC3144C0, &qword_1C9074120, sub_1C8D80A64);
  OUTLINED_FUNCTION_2_23();
  *&v19[v37[11]] = v59[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144C8, &qword_1C9074128);
  v58[0] = 8;
  sub_1C8D80B0C(&qword_1EDA66778, &qword_1EC3144C8, &qword_1C9074128, sub_1C8CE6E24);
  OUTLINED_FUNCTION_2_23();
  v52 = 0;
  *&v51[v53[12]] = v59[0];
  v58[143] = 9;
  sub_1C8D80AB8();
  OUTLINED_FUNCTION_11_12();
  sub_1C9064A6C();
  v52 = 0;
  memcpy(&v51[v53[13]], v59, 0x88uLL);
  v57[143] = 10;
  OUTLINED_FUNCTION_11_12();
  sub_1C90649EC();
  v52 = 0;
  memcpy(v56, v58, sizeof(v56));
  v39 = v50;
  v38 = v51;
  memcpy(v57, &v51[v50], 0x88uLL);
  sub_1C8D16D78(v57, &qword_1EC3144D0, &qword_1C9074130);
  memcpy(&v38[v39], v56, 0x88uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144D8, &qword_1C9074138);
  v54 = 11;
  sub_1C8D80B0C(&qword_1EDA66758, &qword_1EC3144D8, &qword_1C9074138, sub_1C8D80AB8);
  v40 = v52;
  sub_1C9064A6C();
  v52 = v40;
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_6_14();
    v42(v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_1_29();
    v30 = v51;
    v31 = *(v51 + 1);

    v27 = 1;
    v28 = 1;
    v29 = 1;
LABEL_4:
    sub_1C8D16D78(&v30[v63], &qword_1EC313190, &unk_1C9074070);
    v32 = v53;
    if (v49)
    {
      v33 = *&v30[v53[9]];
    }

    if (v48)
    {
      memcpy(v61, &v30[v32[10]], sizeof(v61));
      sub_1C8D80800(v61);
      if (!v27)
      {
        goto LABEL_8;
      }
    }

    else if (!v27)
    {
LABEL_8:
      if (v28)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    v35 = *&v30[v32[11]];

    if (v28)
    {
LABEL_9:
      v34 = *&v30[v32[12]];

      if (!v29)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_13:
    if (!v29)
    {
LABEL_15:
      memcpy(v61, &v30[v50], 0x88uLL);
      return sub_1C8D16D78(v61, &qword_1EC3144D0, &qword_1C9074130);
    }

LABEL_14:
    memcpy(v61, &v30[v32[13]], 0x88uLL);
    sub_1C8D501D4(v61);
    goto LABEL_15;
  }

  v43 = OUTLINED_FUNCTION_6_14();
  v44(v43);
  v45 = v51;
  *&v51[v53[15]] = v55;
  sub_1C8D80B88(v45, v46, type metadata accessor for FetchedToolDisplayMetadata);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1C8D80BE8(v45);
}

uint64_t sub_1C8D80270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D7F468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D80298@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D7F824();
  *a1 = result;
  return result;
}

uint64_t sub_1C8D802C0(uint64_t a1)
{
  v2 = sub_1C8D807AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D802FC(uint64_t a1)
{
  v2 = sub_1C8D807AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D80354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C8D803EC()
{
  sub_1C8D1FD94();
  if (v0 <= 0x3F)
  {
    sub_1C8D1FBBC();
    if (v1 <= 0x3F)
    {
      sub_1C8D80594(319, &qword_1EDA667B0, &type metadata for CategoryRecord, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C8D80594(319, &qword_1EDA66780, &type metadata for SearchKeywordRecord, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1C8D80594(319, &qword_1EDA668B8, &type metadata for FetchedContainerMetadata, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C8D80594(319, &qword_1EDA66760, &type metadata for FetchedContainerMetadata, MEMORY[0x1E69E62F8]);
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

void sub_1C8D80594(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C8D805EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D8065C()
{
  result = qword_1EDA624D0;
  if (!qword_1EDA624D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624D0);
  }

  return result;
}

unint64_t sub_1C8D806B0()
{
  result = qword_1EDA60CA8;
  if (!qword_1EDA60CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60CA8);
  }

  return result;
}

unint64_t sub_1C8D80704()
{
  result = qword_1EDA63078;
  if (!qword_1EDA63078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63078);
  }

  return result;
}

uint64_t sub_1C8D80758(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8D807AC()
{
  result = qword_1EC3144E8;
  if (!qword_1EC3144E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3144E8);
  }

  return result;
}

unint64_t sub_1C8D80854()
{
  result = qword_1EC3131D0;
  if (!qword_1EC3131D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313198, &unk_1C9074080);
    sub_1C8D8093C(&qword_1EDA68EC0, type metadata accessor for ToolIcon);
    sub_1C8D8093C(qword_1EDA68EC8, type metadata accessor for ToolIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3131D0);
  }

  return result;
}

uint64_t sub_1C8D8093C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C8D80984()
{
  result = qword_1EDA69140;
  if (!qword_1EDA69140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131B8, &unk_1C906B520);
    sub_1C8D21FDC();
    sub_1C8D22030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69140);
  }

  return result;
}

unint64_t sub_1C8D80A10()
{
  result = qword_1EDA691E0;
  if (!qword_1EDA691E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA691E0);
  }

  return result;
}

unint64_t sub_1C8D80A64()
{
  result = qword_1EDA669F0;
  if (!qword_1EDA669F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA669F0);
  }

  return result;
}

unint64_t sub_1C8D80AB8()
{
  result = qword_1EDA695D0;
  if (!qword_1EDA695D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695D0);
  }

  return result;
}

uint64_t sub_1C8D80B0C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8D80B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8D80BE8(uint64_t a1)
{
  v2 = type metadata accessor for FetchedToolDisplayMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for FetchedToolDisplayMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D80D24()
{
  result = qword_1EC3144F0;
  if (!qword_1EC3144F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3144F0);
  }

  return result;
}

unint64_t sub_1C8D80D7C()
{
  result = qword_1EC3144F8;
  if (!qword_1EC3144F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3144F8);
  }

  return result;
}

unint64_t sub_1C8D80DD4()
{
  result = qword_1EC314500;
  if (!qword_1EC314500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314500);
  }

  return result;
}

uint64_t CompoundPredicate.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v5 = *a1 != 1;
    v6 = *(a1 + 8);
    type metadata accessor for ComparisonPredicate(0);
    sub_1C8D811A8(&dword_1EC314508);

    v7 = sub_1C90641EC();
    if (!v2)
    {
      v8 = v7;
      result = sub_1C8D81014(a1);
      *a2 = v5;
      *(a2 + 8) = v8;
      return result;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC314510, &qword_1C9074268);
    sub_1C8D81070();
    OUTLINED_FUNCTION_29_0();
    *v11 = &type metadata for CompoundPredicate.Operator;
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x1E69E08A8], v10);
    swift_willThrow();
  }

  return sub_1C8D81014(a1);
}

uint64_t sub_1C8D81014(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8D81070()
{
  result = qword_1EC314518;
  if (!qword_1EC314518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&dword_1EC314510, &qword_1C9074268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314518);
  }

  return result;
}

uint64_t CompoundPredicate.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v5 = *(v1 + 1);
  type metadata accessor for ComparisonPredicate(0);
  sub_1C8D811A8(&qword_1EC314520);
  result = sub_1C90641FC();
  if (!v2)
  {
    v7 = result;
    if (v4)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = a1 + *(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24);
    result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a1 = v8;
    *(a1 + 8) = v7;
  }

  return result;
}

void CompoundPredicate.Operator.protobuf(useCase:)(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t sub_1C8D811A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComparisonPredicate(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8D811F0()
{
  result = qword_1EC314528;
  if (!qword_1EC314528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314528);
  }

  return result;
}

unint64_t sub_1C8D81278()
{
  result = qword_1EC314530;
  if (!qword_1EC314530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314530);
  }

  return result;
}

void TypeInstance.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_35_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v112 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v17 = OUTLINED_FUNCTION_9(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v22 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v51 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      type metadata accessor for ToolKitProtoTypeInstance(0);
      v52 = swift_allocBox();
      OUTLINED_FUNCTION_38_8();
      v53 = OUTLINED_FUNCTION_36_7();
      TypeInstance.protobuf(useCase:)(v53);
      if (v2)
      {
        goto LABEL_15;
      }

      v24 = v52 | 0x2000000000000000;
      goto LABEL_23;
    case 2uLL:
      v112[1] = v3;
      v37 = v22 & 0x1FFFFFFFFFFFFFFFLL;
      v38 = *(v37 + 16);
      v39 = *(v37 + 24);
      v40 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
      v41 = swift_allocBox();
      v43 = v42;
      OUTLINED_FUNCTION_38_8();
      v44 = OUTLINED_FUNCTION_36_7();
      TypeInstance.protobuf(useCase:)(v44);
      if (v2)
      {
        goto LABEL_15;
      }

      v112[0] = v41;
      v78 = type metadata accessor for ToolKitProtoTypeInstance(0);
      v79 = 1;
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v78);
      if ((~v39 & 0xF000000000000007) != 0)
      {

        v94 = OUTLINED_FUNCTION_36_7();
        TypedValue.protobuf(useCase:)(v94);
        v83 = v78;

        v79 = 0;
      }

      else
      {
        v83 = v78;
      }

      v101 = v112[0];
      v102 = type metadata accessor for ToolKitProtoTypedValue(0);
      __swift_storeEnumTagSinglePayload(v15, v79, 1, v102);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v83);
      v106 = *(v40 + 20);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v107, v108, v109, v102);
      v110 = v43 + *(v40 + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      sub_1C8D7300C();
      v24 = v101 | 0x4000000000000000;
      goto LABEL_23;
    case 3uLL:
      v45 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v46 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
      v47 = swift_allocBox();
      v49 = v48;
      sub_1C8CAF814();
      sub_1C8D824C4();
      v50 = sub_1C906437C();
      if (v0)
      {
        goto LABEL_15;
      }

      v84 = v50;
      v85 = v49 + *(v46 + 20);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v49 = v84;
      v24 = v47 | 0x6000000000000000;
      goto LABEL_23;
    case 4uLL:
      v25 = v22 & 0x1FFFFFFFFFFFFFFFLL;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      v28 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
      v29 = swift_allocBox();
      v31 = v30;
      OUTLINED_FUNCTION_38_8();
      TypeIdentifier.protobuf(useCase:)(v4);
      v32 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
      sub_1C8D819EC();
      v36 = sub_1C90641FC();
      if (v0)
      {
        sub_1C8CD0CC8(v5, &qword_1EC3139D8);
        goto LABEL_15;
      }

      v72 = v36;
      v73 = *(v28 + 20);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v32);
      v77 = v31 + *(v28 + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      *v31 = v72;
      v24 = v29 | 0x8000000000000000;
      goto LABEL_23;
    case 5uLL:
      v54 = v22 & 0x1FFFFFFFFFFFFFFFLL;
      v55 = *(v54 + 16);
      v56 = *(v54 + 24);
      v57 = type metadata accessor for ToolKitProtoTypeInstance.Constrained(0);
      v58 = swift_allocBox();
      v60 = v59;
      OUTLINED_FUNCTION_38_8();
      v61 = OUTLINED_FUNCTION_36_7();
      TypeInstance.protobuf(useCase:)(v61);
      if (v2)
      {
        goto LABEL_15;
      }

      v62 = type metadata accessor for ToolKitProtoTypeInstance(0);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
      sub_1C8D819EC();
      v95 = sub_1C90641FC();
      v96 = *(v57 + 20);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v62);
      v100 = v60 + *(v57 + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      *v60 = v95;
      v24 = v58 | 0xC000000000000000;
      goto LABEL_23;
    case 6uLL:
      v66 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v67 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
      v68 = swift_allocBox();
      v70 = v69;

      v71 = OUTLINED_FUNCTION_36_7();
      TypeInstance.protobuf(useCase:)(v71);
      if (v2)
      {

LABEL_15:
        swift_deallocBox();
      }

      else
      {
        v86 = type metadata accessor for ToolKitProtoTypeInstance(0);
        OUTLINED_FUNCTION_150();
        __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v90, v91, v92, v86);
        v93 = v70 + *(v67 + 20);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();

        sub_1C8D7300C();
        v24 = v68 | 0xA000000000000000;
LABEL_23:
        v111 = type metadata accessor for ToolKitProtoTypeInstance(0);
        MEMORY[0x1EEE9AC00](v111);
        v112[-2] = v24;
        sub_1C8D852C4(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
        sub_1C9063ACC();
      }

      OUTLINED_FUNCTION_198();
      return;
    default:
      v23 = *(v22 + 16);
      type metadata accessor for ToolKitProtoTypeIdentifier(0);
      v24 = swift_allocBox();
      OUTLINED_FUNCTION_38_8();
      TypeIdentifier.protobuf(useCase:)(v4);
      goto LABEL_23;
  }
}

unint64_t sub_1C8D819EC()
{
  result = qword_1EDA635C0;
  if (!qword_1EDA635C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635C0);
  }

  return result;
}

void TypeInstance.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v13 = OUTLINED_FUNCTION_44_9(v12);
  v134 = type metadata accessor for ToolKitProtoTypeInstance.Constrained(v13);
  v14 = OUTLINED_FUNCTION_13_1(v134);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_0();
  v137 = v17;
  v18 = OUTLINED_FUNCTION_111();
  v19 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(v18);
  v20 = OUTLINED_FUNCTION_9(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_7_0();
  v135 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  v132 = &v127 - v28;
  v29 = OUTLINED_FUNCTION_111();
  v131 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(v29);
  v30 = OUTLINED_FUNCTION_13_1(v131);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7_0();
  v136 = v33;
  v34 = OUTLINED_FUNCTION_111();
  v35 = type metadata accessor for ToolKitProtoTypeInstance.Union(v34);
  v36 = OUTLINED_FUNCTION_9(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_7_0();
  v133 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  OUTLINED_FUNCTION_9(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  v129 = &v127 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v46 = OUTLINED_FUNCTION_9(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v50);
  v128 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v51 = OUTLINED_FUNCTION_13_1(v128);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_7_0();
  v130 = v54;
  v55 = OUTLINED_FUNCTION_111();
  v56 = type metadata accessor for ToolKitProtoTypeInstance(v55);
  v57 = OUTLINED_FUNCTION_9(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_25();
  v62 = v60 - v61;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_32();
  v64 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v65 = OUTLINED_FUNCTION_9(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_25();
  v70 = (v68 - v69);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v127 - v72;
  v74 = v11;
  v75 = *v11;
  if ((~v75 & 0xF000000000000007) != 0)
  {
    v127 = v74;
    switch(v75 >> 61)
    {
      case 1uLL:
        v95 = v75;
        swift_projectBox();
        sub_1C8D85734();
        OUTLINED_FUNCTION_50();
        v104 = swift_allocObject();
        sub_1C8D85734();

        TypeInstance.init(protobuf:)(v62);
        sub_1C8D85364(v127, type metadata accessor for ToolKitProtoTypeInstance);
        sub_1C8D85364(v10, type metadata accessor for ToolKitProtoTypeInstance);
        if (a10)
        {
          goto LABEL_21;
        }

        sub_1C8CD0FB0(v75);
        v86 = v104 | 0x2000000000000000;
        goto LABEL_28;
      case 2uLL:
        v95 = v75;
        swift_projectBox();
        sub_1C8D85734();
        OUTLINED_FUNCTION_2();
        v96 = swift_allocObject();
        sub_1C8D63FCC();
        v97 = sub_1C8D1FD40();

        OUTLINED_FUNCTION_30_9();
        if (v97)
        {
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v127, v98);
          OUTLINED_FUNCTION_10_14();
          goto LABEL_21;
        }

        v116 = *(v128 + 20);
        sub_1C8D63FCC();
        sub_1C8D4F068();
        sub_1C906350C();
        OUTLINED_FUNCTION_0_34();
        sub_1C8D85364(v127, v124);
        OUTLINED_FUNCTION_10_14();
        sub_1C8CD0FB0(v75);
        v86 = v96 | 0x4000000000000000;
        goto LABEL_28;
      case 3uLL:
        v95 = v75;
        swift_projectBox();
        v99 = v133;
        sub_1C8D85734();
        OUTLINED_FUNCTION_50();
        v100 = swift_allocObject();
        v101 = *v99;
        sub_1C8CD1784(v75);
        sub_1C8CAF814();
        sub_1C8D1FD40();

        v102 = sub_1C906436C();
        if (!a10)
        {
          v117 = v102;
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v127, v118);
          OUTLINED_FUNCTION_21_9();
          *(v100 + 16) = v117;
          sub_1C8CD0FB0(v75);
          v86 = v100 | 0x6000000000000000;
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_0_34();
        sub_1C8D85364(v127, v103);
        OUTLINED_FUNCTION_21_9();
LABEL_21:
        swift_deallocUninitializedObject();
        v94 = v95;
        goto LABEL_27;
      case 4uLL:
        v88 = v75;
        swift_projectBox();
        v89 = v136;
        sub_1C8D85734();
        OUTLINED_FUNCTION_2();
        v90 = swift_allocObject();
        v91 = *(v131 + 20);
        sub_1C8D63FCC();
        v92 = sub_1C8D4F014();

        OUTLINED_FUNCTION_30_9();
        if (v92)
        {
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v127, v93);
          OUTLINED_FUNCTION_11_13();
          OUTLINED_FUNCTION_2();
          swift_deallocUninitializedObject();
          v94 = v88;
          goto LABEL_27;
        }

        v113 = v88;
        v114 = *v89;
        sub_1C8D82518();

        v115 = sub_1C90641EC();
        OUTLINED_FUNCTION_0_34();
        sub_1C8D85364(v122, v123);
        OUTLINED_FUNCTION_11_13();
        *(v90 + 24) = v115;
        sub_1C8CD0FB0(v113);
        v86 = v90 | 0x8000000000000000;
        goto LABEL_28;
      case 5uLL:
        swift_projectBox();
        sub_1C8D85734();
        OUTLINED_FUNCTION_50();
        v105 = swift_allocObject();
        sub_1C8D63FCC();
        v106 = sub_1C8D1FD40();

        OUTLINED_FUNCTION_30_9();
        if (v106)
        {
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v127, v107);
          OUTLINED_FUNCTION_20_10();
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_0_34();
        sub_1C8D85364(v127, v119);
        OUTLINED_FUNCTION_20_10();
        sub_1C8CD0FB0(v75);
        v86 = v105 | 0xC000000000000000;
        goto LABEL_28;
      case 6uLL:
        swift_projectBox();
        v108 = v137;
        sub_1C8D85734();
        OUTLINED_FUNCTION_2();
        v109 = swift_allocObject();
        v110 = *(v134 + 20);
        sub_1C8D63FCC();
        v111 = sub_1C8D1FD40();

        OUTLINED_FUNCTION_30_9();
        if (v111)
        {
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v127, v112);
          OUTLINED_FUNCTION_9_13();
LABEL_26:
          swift_deallocUninitializedObject();
          v94 = v75;
LABEL_27:
          sub_1C8CD0FB0(v94);
        }

        else
        {
          v120 = *v108;
          sub_1C8D82518();

          v121 = sub_1C90641EC();
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v125, v126);
          OUTLINED_FUNCTION_9_13();
          *(v109 + 24) = v121;
          sub_1C8CD0FB0(v75);
          v86 = v109 | 0xA000000000000000;
LABEL_28:
          *v138 = v86;
        }

        break;
      default:
        swift_projectBox();
        sub_1C8D85734();
        OUTLINED_FUNCTION_50();
        v86 = swift_allocObject();
        OUTLINED_FUNCTION_211();
        sub_1C8D85734();

        TypeIdentifier.init(protobuf:)(v70, (v86 + 16));
        OUTLINED_FUNCTION_0_34();
        sub_1C8D85364(v127, v87);
        sub_1C8D85364(v73, type metadata accessor for ToolKitProtoTypeIdentifier);
        if (a10)
        {
          goto LABEL_26;
        }

        sub_1C8CD0FB0(v75);
        goto LABEL_28;
    }
  }

  else
  {
    v76 = OUTLINED_FUNCTION_94();
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(v76, v77);
    OUTLINED_FUNCTION_116();
    sub_1C8D4F674(v79, v80, v81);
    OUTLINED_FUNCTION_89();
    *v82 = &type metadata for ToolKitProtoTypeInstanceKind;
    v83 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v78);
    (*(v84 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_0_34();
    sub_1C8D85364(v74, v85);
  }

  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8D824C4()
{
  result = qword_1EDA66A30;
  if (!qword_1EDA66A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A30);
  }

  return result;
}

unint64_t sub_1C8D82518()
{
  result = qword_1EDA635C8;
  if (!qword_1EDA635C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635C8);
  }

  return result;
}

uint64_t TypeInstance.protobuf.getter()
{
  v1 = sub_1C906348C();
  v2 = OUTLINED_FUNCTION_11(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v11 = *v0;
  (*(v4 + 104))(v8 - v7, *MEMORY[0x1E69E0760], v1);
  TypeInstance.protobuf(useCase:)();
  return (*(v4 + 8))(v9, v1);
}

uint64_t RestrictionContext.init(protobuf:)@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v143 = a2;
  v3 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v136 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v138 = &v132 - v10;
  v11 = OUTLINED_FUNCTION_111();
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(v11);
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  v139 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v137 = &v132 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313668, &qword_1C906BC48);
  OUTLINED_FUNCTION_9(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v132 - v24;
  v26 = sub_1C9063C4C();
  v27 = OUTLINED_FUNCTION_11(v26);
  v141 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_0();
  v140 = v31;
  v32 = OUTLINED_FUNCTION_111();
  v33 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(v32);
  v34 = OUTLINED_FUNCTION_9(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_7_0();
  v142 = v37;
  v38 = OUTLINED_FUNCTION_111();
  v39 = type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(v38);
  v40 = OUTLINED_FUNCTION_9(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25();
  v135 = (v43 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v134 = &v132 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314208, &unk_1C9074D30);
  OUTLINED_FUNCTION_9(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314548, &qword_1C9074338);
  OUTLINED_FUNCTION_9(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  v55 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v56 = OUTLINED_FUNCTION_13_1(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_15();
  v59 = a1;
  v60 = *a1;
  if ((~v60 & 0xF000000000000007) != 0)
  {
    v133 = v59;
    switch(v60 >> 61)
    {
      case 1uLL:
        v92 = v60;
        swift_projectBox();
        v93 = v142;
        sub_1C8D85734();
        v94 = *v93;
        v95 = *(*v93 + 16);
        v137 = v92;
        v138 = (v141 + 32);

        v96 = 0;
        v97 = (v94 + 40);
        v139 = MEMORY[0x1E69E7CC0];
        v136 = (v94 + 40);
LABEL_17:
        for (i = &v97[16 * v96]; ; i += 16)
        {
          if (v95 == v96)
          {
            OUTLINED_FUNCTION_1_30();
            sub_1C8D85364(v133, v117);
            sub_1C8D85364(v142, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
            sub_1C8CD0FB0(v137);
            v148[0] = v139;
            sub_1C8CACBF4(v148);
            goto LABEL_47;
          }

          if (v96 >= *(v94 + 16))
          {
            break;
          }

          v100 = *(i - 1);
          v99 = *i;

          sub_1C9063C2C();
          if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
          {
            v135 = *v138;
            v135(v140, v25, v26);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v104 = *(v139 + 16);
              sub_1C8CACA10();
              v139 = v105;
            }

            v101 = *(v139 + 16);
            if (v101 >= *(v139 + 24) >> 1)
            {
              sub_1C8CACA10();
              v139 = v106;
            }

            ++v96;
            v103 = v139;
            v102 = v140;
            *(v139 + 16) = v101 + 1;
            result = (v135)(v103 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v101, v102, v26);
            v97 = v136;
            goto LABEL_17;
          }

          result = sub_1C8CD0CC8(v25, &qword_1EC313668);
          ++v96;
        }

        __break(1u);
        return result;
      case 2uLL:
        v80 = 0;
        v81 = v133;
        switch(*((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          case 1:
            break;
          case 2:
            v80 = 1;
            break;
          case 3:
            v80 = 2;
            break;
          case 4:
            v80 = 3;
            break;
          default:
            v82 = OUTLINED_FUNCTION_181();
            v84 = __swift_instantiateConcreteTypeFromMangledNameV2(v82, v83);
            sub_1C8D4F674(&qword_1EC314578, &qword_1EC314570, &qword_1C9074350);
            OUTLINED_FUNCTION_213();
            v86 = &type metadata for RestrictionContext.PersonRepresentationDefinition;
            goto LABEL_15;
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C8D85364(v81, v130);
        LOBYTE(v148[0]) = v80;
        sub_1C8D3AAA8(v148);
        goto LABEL_47;
      case 3uLL:
        v87 = 0;
        v81 = v133;
        switch(*((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          case 1:
            v87 = 1;
            break;
          case 2:
            break;
          case 3:
            v87 = 2;
            break;
          default:
            v88 = OUTLINED_FUNCTION_181();
            v84 = __swift_instantiateConcreteTypeFromMangledNameV2(v88, v89);
            sub_1C8D4F674(&qword_1EC314568, &qword_1EC314560, &qword_1C9074348);
            OUTLINED_FUNCTION_213();
            v86 = &type metadata for RestrictionContext.DateRepresentationDefinition;
LABEL_15:
            *v85 = v86;
            v90 = *MEMORY[0x1E69E08A8];
            OUTLINED_FUNCTION_10_0(v84);
            (*(v91 + 104))();
            swift_willThrow();
            OUTLINED_FUNCTION_1_30();
            v68 = v81;
            return sub_1C8D85364(v68, v67);
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C8D85364(v81, v129);
        LOBYTE(v148[0]) = v87;
        sub_1C8D3AA2C(v148);
        goto LABEL_47;
      case 4uLL:
        v74 = v60;
        swift_projectBox();
        v75 = v138;
        sub_1C8D85734();
        v76 = v136;
        sub_1C8D85734();

        v77 = v144;
        RestrictionContext.KeyboardTraitsDefinition.init(protobuf:)(v76, v145);
        if (v77)
        {
          OUTLINED_FUNCTION_1_30();
          sub_1C8D85364(v133, v78);
          OUTLINED_FUNCTION_7_16();
          sub_1C8D85364(v75, v79);
          v73 = v74;
          goto LABEL_10;
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C8D85364(v133, v123);
        OUTLINED_FUNCTION_7_16();
        sub_1C8D85364(v75, v124);
        sub_1C8CD0FB0(v74);
        LODWORD(v148[0]) = v145[0];
        WORD2(v148[0]) = WORD2(v145[0]);
        sub_1C8D3A930(v148);
        goto LABEL_47;
      case 5uLL:
        v107 = v60;
        swift_projectBox();
        v108 = v137;
        sub_1C8D85734();
        v109 = v139;
        sub_1C8D85734();
        v110 = *(v109 + 16);
        if (v110)
        {
          v111 = *(v109 + 8);
          sub_1C8CB78AC(0, &qword_1EDA6DAA8, 0x1E696AFD0);
          sub_1C8CD1784(v60);

          v110 = sub_1C8D32334(v111);
        }

        else
        {
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C8D85364(v125, v126);
        sub_1C8D85364(v108, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
        v127 = *v109;
        v128 = *(v109 + 1);
        sub_1C8D85364(v109, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
        sub_1C8CD0FB0(v107);
        v148[0] = v110;
        LOBYTE(v148[1]) = v127;
        BYTE1(v148[1]) = v128;
        sub_1C8D3A9AC(v148);
        goto LABEL_47;
      case 6uLL:
        v112 = v60;
        swift_projectBox();
        v113 = v134;
        sub_1C8D85734();
        v114 = v135;
        sub_1C8D85734();
        if (*(v114 + 8))
        {
          v115 = v112;

          v116 = 0;
        }

        else
        {
          v118 = *v114;
          sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
          v115 = v112;

          v116 = sub_1C906459C();
        }

        v119 = v133;
        if (*(v114 + 24))
        {
          v120 = 0;
        }

        else
        {
          v121 = *(v114 + 16);
          sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
          v120 = sub_1C906459C();
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C8D85364(v119, v122);
        sub_1C8D85364(v114, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);
        sub_1C8D85364(v113, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);
        sub_1C8CD0FB0(v115);
        v148[0] = v116;
        v148[1] = v120;
        sub_1C8D3AB24(v148);
        goto LABEL_47;
      default:
        swift_projectBox();
        sub_1C8D85734();
        sub_1C8D63FCC();
        sub_1C8D851E4();

        v70 = v144;
        sub_1C906351C();
        if (v70)
        {
          OUTLINED_FUNCTION_1_30();
          sub_1C8D85364(v133, v72);
          OUTLINED_FUNCTION_19_10();
          v73 = v60;
LABEL_10:
          result = sub_1C8CD0FB0(v73);
        }

        else
        {
          memcpy(v146, v147, sizeof(v146));
          v71 = *(v55 + 20);
          sub_1C8D63FCC();
          sub_1C8D72E3C();
          sub_1C906351C();
          OUTLINED_FUNCTION_1_30();
          sub_1C8D85364(v133, v131);
          OUTLINED_FUNCTION_19_10();
          sub_1C8CD0FB0(v60);
          *&v145[10] = *&v145[17];
          *&v145[12] = *&v145[19];
          *&v145[14] = *&v145[21];
          v145[16] = v145[23];
          memcpy(v145, v146, 0x50uLL);
          memcpy(v148, v145, sizeof(v148));
          sub_1C8D3ABA0(v148);
LABEL_47:
          memcpy(__dst, v148, sizeof(__dst));
          result = memcpy(v143, __dst, 0x88uLL);
        }

        break;
    }
  }

  else
  {
    v61 = OUTLINED_FUNCTION_181();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(v61, v62);
    sub_1C8D4F674(&qword_1EC314558, &qword_1EC314550, &qword_1C9074340);
    OUTLINED_FUNCTION_213();
    *v64 = &type metadata for ToolKitProtoRestrictionContextKind;
    v65 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v63);
    (*(v66 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_1_30();
    v68 = v59;
    return sub_1C8D85364(v68, v67);
  }

  return result;
}

uint64_t RestrictionContext.NumberInclusiveRangeDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_35_6();
  if (*(v2 + 8))
  {
    v3 = 0;
  }

  else
  {
    v4 = *v1;
    sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
    v3 = sub_1C906459C();
  }

  if (*(v1 + 24))
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v1 + 16);
    sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
    v5 = sub_1C906459C();
  }

  result = sub_1C8D85364(v1, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);
  *v0 = v3;
  v0[1] = v5;
  return result;
}

uint64_t RestrictionContext.MeasurementRepresentationDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_35_6();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v1 + 8);
    sub_1C8CB78AC(0, &qword_1EDA6DAA8, 0x1E696AFD0);

    v3 = sub_1C8D32334(v4);
  }

  v5 = *v1;
  v6 = *(v1 + 1);
  result = sub_1C8D85364(v1, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
  *v0 = v3;
  *(v0 + 8) = v5;
  *(v0 + 9) = v6;
  return result;
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.init(protobuf:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 3);
  v4 = a1[5];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  OUTLINED_FUNCTION_7_16();
  result = sub_1C8D85364(v8, v9);
  *a2 = v3;
  *(a2 + 2) = v4;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  *(a2 + 5) = v7;
  return result;
}

uint64_t RestrictionContext.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v108 = sub_1C9063C4C();
  v4 = OUTLINED_FUNCTION_11(v108);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v105 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314208, &unk_1C9074D30);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314548, &qword_1C9074338);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  memcpy(__dst, v1, sizeof(__dst));
  v18 = sub_1C8CA638C(__dst);
  v19 = sub_1C8CA62B8(__dst);
  v20 = v19;
  v101[1] = a1;
  switch(v18)
  {
    case 1:
      v43 = *v19;
      v44 = *(v19 + 8);
      v45 = 0;
      v46 = 0;
      if (*v19)
      {
        [*v19 doubleValue];
        v46 = v47;
      }

      if (v44)
      {
        [v44 doubleValue];
        v45 = v48;
      }

      v49 = v44 == 0;
      v50 = v43 == 0;
      v51 = type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(0);
      v52 = swift_allocBox();
      v54 = v53;
      *v53 = 0;
      *(v53 + 8) = 1;
      *(v53 + 16) = 0;
      *(v53 + 24) = 1;
      v55 = v53 + *(v51 + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v54 = v46;
      *(v54 + 8) = v50;
      *(v54 + 16) = v45;
      v22 = v52 | 0xC000000000000000;
      *(v54 + 24) = v49;
      goto LABEL_24;
    case 2:
      v26 = *v19;
      v27 = *(*v19 + 16);
      v28 = MEMORY[0x1E69E7CC0];
      if (v27)
      {
        v101[0] = v2;
        *&v106[0] = MEMORY[0x1E69E7CC0];
        sub_1C8CA6480();
        v28 = *&v106[0];
        v30 = *(v6 + 16);
        v29 = v6 + 16;
        v103 = v30;
        v31 = &v26[(*(v29 + 64) + 32) & ~*(v29 + 64)];
        v102 = *(v29 + 56);
        v104 = v29;
        v32 = (v29 - 8);
        do
        {
          v103(v105, v31, v108);
          v33 = sub_1C9063C1C();
          v35 = v34;
          v36 = *v32;
          v37 = OUTLINED_FUNCTION_181();
          v38(v37);
          *&v106[0] = v28;
          v39 = *(v28 + 16);
          if (v39 >= *(v28 + 24) >> 1)
          {
            sub_1C8CA6480();
            v28 = *&v106[0];
          }

          *(v28 + 16) = v39 + 1;
          v40 = v28 + 16 * v39;
          *(v40 + 32) = v33;
          *(v40 + 40) = v35;
          v31 += v102;
          --v27;
        }

        while (v27);
      }

      v70 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
      v71 = swift_allocBox();
      v73 = v72;
      v74 = v72 + *(v70 + 20);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v73 = v28;
      v22 = v71 | 0x2000000000000000;
      goto LABEL_24;
    case 3:
      v41 = *v19;
      v42 = swift_allocObject();
      *(v42 + 16) = v41 + 1;
      v22 = v42 | 0x4000000000000000;
      goto LABEL_24;
    case 4:
      v24 = *v19;
      v25 = swift_allocObject();
      *(v25 + 16) = 0x30102u >> (8 * v24);
      v22 = v25 | 0x6000000000000000;
      goto LABEL_24;
    case 5:
      v56 = *v19;
      v57 = *(v20 + 8);
      v58 = *(v20 + 9);
      if (*v20)
      {
        v59 = [v56 symbol];
        v60 = sub_1C9063EEC();
        v62 = v61;
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      v82 = type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(0);
      v83 = swift_allocBox();
      v85 = v84;
      *(v84 + 8) = 0;
      *(v84 + 16) = 0;
      v86 = v84 + *(v82 + 28);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *(v85 + 8) = v60;
      *(v85 + 16) = v62;
      *v85 = v57;
      *(v85 + 1) = v58;
      v22 = v83 | 0xA000000000000000;
      goto LABEL_24;
    case 6:
      v63 = *v19;
      v64 = *(v19 + 2);
      v65 = *(v19 + 3);
      v66 = *(v19 + 4);
      v67 = *(v19 + 5);
      type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
      v68 = swift_allocBox();
      LOWORD(v106[0]) = v63;
      BYTE2(v106[0]) = v64;
      BYTE3(v106[0]) = v65;
      BYTE4(v106[0]) = v66;
      BYTE5(v106[0]) = v67;
      RestrictionContext.KeyboardTraitsDefinition.protobuf(useCase:)(v69);
      v22 = v68 | 0x8000000000000000;
      goto LABEL_24;
    default:
      v21 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
      v22 = swift_allocBox();
      v108 = v23;
      memcpy(v106, v20, sizeof(v106));
      RestrictionContext.ValueSetDefinition.protobuf(useCase:)();
      if (v2)
      {
        return swift_deallocBox();
      }

      v105 = v21;
      type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
      OUTLINED_FUNCTION_150();
      v76 = v75;
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v75);
      v80 = *(v20 + 96);
      v106[0] = *(v20 + 80);
      v106[1] = v80;
      v106[2] = *(v20 + 112);
      *&v106[3] = *(v20 + 128);
      QueryDefinition.PredicateTemplates.protobuf(useCase:)();
      v88 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v88);
      v92 = v108;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v76);
      v96 = *(v105 + 20);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v88);
      v100 = v92 + *(v105 + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      sub_1C8D7300C();
LABEL_24:
      v87 = type metadata accessor for ToolKitProtoRestrictionContext(0);
      MEMORY[0x1EEE9AC00](v87);
      v101[-2] = v22;
      sub_1C8D852C4(qword_1EDA67CE0, type metadata accessor for ToolKitProtoRestrictionContext);
      sub_1C9063ACC();
  }
}

void RestrictionContext.ValueSetDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v43[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v7 = OUTLINED_FUNCTION_13_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  memcpy(v45, v0, sizeof(v45));
  v14 = v45[0];
  v13 = v45[1];
  v15 = v45[2];
  v16 = v45[3];
  v18 = v45[4];
  v17 = v45[5];
  switch(LOBYTE(v45[7]))
  {
    case 1:
      v43[1] = v6;
      v22 = v45[6];
      v43[3] = v45[0];
      v43[4] = v45[1];
      v43[5] = v45[2];
      v43[6] = v45[3];
      v44 = v45[4];
      v23 = OUTLINED_FUNCTION_41_6();
      sub_1C8D06F98(v23, v24, v25, v26, v18);

      v43[0] = v17;
      ContentItemClassDescriptor.protobuf(useCase:)();
      v27 = OUTLINED_FUNCTION_41_6();
      sub_1C8D06FF4(v27, v28, v29, v30, v18);
      v31 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
      v35 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
      v36 = *(v35 + 20);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v31);
      v40 = v12 + *(v35 + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      *v12 = v43[0];
      v12[1] = v22;
      goto LABEL_7;
    case 2:
      *v12 = v45[0];
      v12[1] = v13;
      OUTLINED_FUNCTION_211();
      swift_storeEnumTagMultiPayload();

      goto LABEL_8;
    case 3:
      v21 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0) + 28);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v12 = v15;
      v12[1] = v16;
      v12[2] = v18;
      v12[3] = v17;
      v12[4] = v14;
      v12[5] = v13;
      OUTLINED_FUNCTION_211();
      goto LABEL_7;
    case 4:
      v20 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(0) + 24);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v12 = v14;
      v12[1] = v13;
      v12[2] = v15;
      v12[3] = v16;
      OUTLINED_FUNCTION_211();
      goto LABEL_7;
    default:
      v19 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0) + 24);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v12 = v14;
      v12[1] = v13;
      v12[2] = v15;
      v12[3] = v16;
      OUTLINED_FUNCTION_211();
LABEL_7:
      swift_storeEnumTagMultiPayload();
LABEL_8:
      v41 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
      MEMORY[0x1EEE9AC00](v41);
      v43[-2] = v45;
      v43[-1] = v12;
      sub_1C8D852C4(qword_1EDA64850, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      OUTLINED_FUNCTION_116();
      sub_1C9063ACC();
      OUTLINED_FUNCTION_2_24();
      sub_1C8D85364(v12, v42);
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t RestrictionContext.NumberInclusiveRangeDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = 0;
  v6 = 0;
  if (*v1)
  {
    [v4 doubleValue];
    v6 = v7;
  }

  if (v3)
  {
    [v3 doubleValue];
    v5 = v8;
  }

  v9 = a1 + *(type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(0) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v6;
  *(a1 + 8) = v4 == 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v3 == 0;
  return result;
}

uint64_t RestrictionContext.MeasurementRepresentationDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  if (*v1)
  {
    v5 = [*v1 symbol];
    v6 = sub_1C9063EEC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1 + *(type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(0) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *a1 = v3;
  *(a1 + 1) = v4;
  return result;
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10 = *v1;
  RestrictionContext.KeyboardTraitsDefinition.KeyboardType.protobuf(useCase:)(&v11);
  v7 = v11;
  v8 = a1 + *(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0) + 40);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v4;
  *(a1 + 1) = v5;
  *(a1 + 2) = v6;
  *(a1 + 3) = v7;
  *(a1 + 4) = v3;
  return result;
}

uint64_t sub_1C8D84258(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a1;

  result = a3(v6);
  *a1 = a2;
  return result;
}

void RestrictionContext.ValueSetDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v88 = v5;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(0);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v86 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v82 - v15;
  v16 = OUTLINED_FUNCTION_111();
  v84 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v16);
  v17 = OUTLINED_FUNCTION_13_1(v84);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_0();
  v87 = v20;
  v21 = OUTLINED_FUNCTION_111();
  v22 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(v21);
  v23 = OUTLINED_FUNCTION_9(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v28 = (v27 - v26);
  v29 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v30 = OUTLINED_FUNCTION_9(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  v35 = (v34 - v33);
  v36 = &qword_1C9074DF0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  OUTLINED_FUNCTION_9(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15_0();
  v41 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v42 = OUTLINED_FUNCTION_13_1(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_25();
  v47 = (v45 - v46);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_32();
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v2, 1, v41) == 1)
  {
    sub_1C8CD0CC8(v2, &qword_1EC314588);
    v49 = OUTLINED_FUNCTION_94();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
    OUTLINED_FUNCTION_116();
    sub_1C8D4F674(v52, v53, v54);
    OUTLINED_FUNCTION_89();
    *v55 = v41;
    v56 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v51);
    (*(v57 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_6_15();
    v59 = v4;
LABEL_3:
    sub_1C8D85364(v59, v58);
  }

  else
  {
    v83 = v4;
    sub_1C8D8530C();
    sub_1C8D85734();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_45_0();
        v68 = v87;
        sub_1C8D8530C();
        v69 = *(v84 + 5);
        sub_1C8D63FCC();
        sub_1C8D85254();
        sub_1C906351C();
        if (v1)
        {
          OUTLINED_FUNCTION_6_15();
          sub_1C8D85364(v83, v70);
          OUTLINED_FUNCTION_22_13();
          OUTLINED_FUNCTION_2_24();
          v59 = v0;
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_2_24();
        sub_1C8D85364(v0, v81);
        v62 = v90;
        v4 = v92;
        v84 = v91;
        v85 = v89;
        LOBYTE(v2) = v93;
        v36 = *v68;
        v0 = *(v68 + 8);

        OUTLINED_FUNCTION_22_13();
        v63 = 0;
        v64 = 1;
        break;
      case 2u:
      case 4u:
        OUTLINED_FUNCTION_2_24();
        sub_1C8D85364(v0, v60);
        OUTLINED_FUNCTION_45_0();
        sub_1C8D8530C();
        v61 = v35[4];
        v62 = v35[5];
        v4 = v35[1];
        v84 = *v35;
        v85 = v61;
        v2 = v35[2];
        v36 = v35[3];

        sub_1C8D85364(v35, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
        v63 = v2 & 0xFFFFFFFFFFFFFF00;
        v64 = 3;
        break;
      case 3u:
        OUTLINED_FUNCTION_2_24();
        sub_1C8D85364(v0, v65);
        v63 = 0;
        v62 = v47[1];
        v85 = *v47;
        v64 = 2;
        break;
      case 5u:
        OUTLINED_FUNCTION_2_24();
        sub_1C8D85364(v0, v71);
        OUTLINED_FUNCTION_45_0();
        v0 = v86;
        sub_1C8D8530C();
        v72 = *v0;
        v62 = v0[1];
        v4 = v0[3];
        v84 = v0[2];
        v85 = v72;

        sub_1C8D85364(v0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);
        v63 = 0;
        v64 = 4;
        break;
      default:
        OUTLINED_FUNCTION_2_24();
        sub_1C8D85364(v0, v66);
        OUTLINED_FUNCTION_45_0();
        sub_1C8D8530C();
        v67 = *v28;
        v62 = v28[1];
        v4 = v28[3];
        v84 = v28[2];
        v85 = v67;

        sub_1C8D85364(v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
        v64 = 0;
        v63 = 0;
        break;
    }

    v73 = v83;
    v74 = (v73 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 20));
    v75 = v73;
    v77 = *v74;
    v76 = v74[1];

    OUTLINED_FUNCTION_6_15();
    sub_1C8D85364(v75, v78);
    v79 = v88;
    v80 = v84;
    *v88 = v85;
    v79[1] = v62;
    v79[2] = v80;
    v79[3] = v4;
    v79[4] = v63 | v2;
    v79[5] = v36;
    v79[6] = v0;
    *(v79 + 56) = v64;
    v79[8] = v77;
    v79[9] = v76;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t ContentItemClassDescriptor.protobuf(useCase:)()
{
  v1 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v2 = OUTLINED_FUNCTION_13_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v7 = (v6 - v5);
  v9 = *v0;
  v8 = v0[1];
  v11 = v0[2];
  v10 = v0[3];
  switch(*(v0 + 32))
  {
    case 1:
      v14 = *(type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0) + 24);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v7 = v11;
      v7[1] = v10;
      v7[2] = v9;
      v7[3] = v8;
      OUTLINED_FUNCTION_287();
      goto LABEL_6;
    case 2:
      v12 = *(type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0) + 24);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v7 = v11;
      v7[1] = v10;
      v7[2] = v9;
      v7[3] = v8;
      OUTLINED_FUNCTION_287();
      goto LABEL_6;
    case 3:
      v13 = *(type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(0) + 20);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v7 = v9;
      v7[1] = v8;
      OUTLINED_FUNCTION_287();
LABEL_6:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      *v7 = v9;
      v7[1] = v8;
      OUTLINED_FUNCTION_287();
      swift_storeEnumTagMultiPayload();

      break;
  }

  v15 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  MEMORY[0x1EEE9AC00](v15);
  *(&v17 - 2) = v7;
  sub_1C8D852C4(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_1C9063ACC();
  return sub_1C8D85364(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
}

uint64_t sub_1C8D84AC4(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 64);
  v3 = a1 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 20);
  v4 = *(v3 + 8);
  sub_1C8D63FCC();

  *v3 = v7;
  sub_1C8CD0CC8(a1, &unk_1EC314588);
  sub_1C8D85734();
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
}

void ContentItemClassDescriptor.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = OUTLINED_FUNCTION_44_9(v1);
  v3 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(v2);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v52 = v7;
  v8 = OUTLINED_FUNCTION_111();
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(v8);
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v15 = (v14 - v13);
  v16 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v17 = OUTLINED_FUNCTION_9(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v22 = (v21 - v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  OUTLINED_FUNCTION_9(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v52 - v27;
  v29 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v30 = OUTLINED_FUNCTION_13_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32();
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_1C8CD0CC8(v28, &qword_1EC3145A0);
    v34 = OUTLINED_FUNCTION_94();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
    OUTLINED_FUNCTION_116();
    sub_1C8D4F674(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_196_0(v40, v41);
    *v42 = v29;
    v43 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v36);
    (*(v44 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_18_8();
  }

  else
  {
    OUTLINED_FUNCTION_18_8();
    sub_1C8D8530C();
    sub_1C8D8530C();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1C8D8530C();
        v48 = v22[2];
        v49 = v22[3];
        v45 = *v22;
        v46 = v22[1];

        sub_1C8D85364(v22, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
        v47 = 1;
        break;
      case 2u:
        sub_1C8D8530C();
        v48 = v15[2];
        v49 = v15[3];
        v45 = *v15;
        v46 = v15[1];

        sub_1C8D85364(v15, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
        v47 = 2;
        break;
      case 3u:
        v50 = v52;
        sub_1C8D8530C();
        v48 = *v50;
        v49 = v50[1];

        sub_1C8D85364(v50, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);
        v45 = 0;
        v46 = 0;
        v47 = 3;
        break;
      default:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = *v0;
        v49 = v0[1];
        break;
    }

    v51 = v53;
    *v53 = v48;
    v51[1] = v49;
    v51[2] = v45;
    v51[3] = v46;
    *(v51 + 32) = v47;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D850D0(uint64_t a1)
{
  sub_1C8CD0CC8(a1, &unk_1EC3145A0);
  sub_1C8D85734();
  v2 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

unint64_t sub_1C8D851E4()
{
  result = qword_1EDA60A78;
  if (!qword_1EDA60A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A78);
  }

  return result;
}

unint64_t sub_1C8D85254()
{
  result = qword_1EDA60758;
  if (!qword_1EDA60758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60758);
  }

  return result;
}

uint64_t sub_1C8D852C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8D8530C()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t sub_1C8D85364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8D853C8()
{
  result = qword_1EDA60A70;
  if (!qword_1EDA60A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A70);
  }

  return result;
}

unint64_t sub_1C8D85420()
{
  result = qword_1EC3145B8;
  if (!qword_1EC3145B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145B8);
  }

  return result;
}

unint64_t sub_1C8D85478()
{
  result = qword_1EC3145C0;
  if (!qword_1EC3145C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145C0);
  }

  return result;
}

unint64_t sub_1C8D854D0()
{
  result = qword_1EC3145C8;
  if (!qword_1EC3145C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145C8);
  }

  return result;
}

unint64_t sub_1C8D85528()
{
  result = qword_1EC3145D0;
  if (!qword_1EC3145D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145D0);
  }

  return result;
}

unint64_t sub_1C8D85580()
{
  result = qword_1EDA60750;
  if (!qword_1EDA60750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60750);
  }

  return result;
}

unint64_t sub_1C8D855D8()
{
  result = qword_1EC3145D8;
  if (!qword_1EC3145D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145D8);
  }

  return result;
}

unint64_t sub_1C8D85630()
{
  result = qword_1EC3145E0;
  if (!qword_1EC3145E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145E0);
  }

  return result;
}

unint64_t sub_1C8D85688()
{
  result = qword_1EC3145E8;
  if (!qword_1EC3145E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145E8);
  }

  return result;
}

unint64_t sub_1C8D856E0()
{
  result = qword_1EC3145F0;
  if (!qword_1EC3145F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145F0);
  }

  return result;
}

uint64_t sub_1C8D85734()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t ToolDatabase.Accessor.containersContainingAppEnums(_:)(uint64_t a1)
{
  v3 = sub_1C90620BC();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v74 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v68 - v11;
  OUTLINED_FUNCTION_2();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  if (a1)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = v14 | 0x2000000000000000;
  }

  else
  {
    v15 = 0xA000000000000000;
  }

  *v85 = 0xA000000000000000;
  *&v85[8] = v15;
  *&v85[16] = vdupq_n_s64(0xA000000000000000);
  *&v85[32] = v13;
  *&v85[40] = 0xA000000000000000;
  v84[0] = 0;
  LOBYTE(v84[1]) = 1;

  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  OUTLINED_FUNCTION_43_7();
  ToolDatabase.Accessor.containers(matching:scope:locale:)();
  v75 = v1;
  if (v1)
  {
    (*(v6 + 8))(v12, v3);
  }

  else
  {
    v72 = v13;
    v73 = v15;
    v18 = *(v6 + 8);
    v70 = v6 + 8;
    v71 = v3;
    v69 = v18;
    v77 = v16;
    v18(v12, v3);

    v19 = sub_1C9063E2C();
    v20 = v77;
    v21 = v19;
    v22 = 0;
    v76 = *(v77 + 16);
    v23 = 32;
    while (v76 != v22)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v87 = v22;
      v24 = v23;
      memcpy(v85, (v20 + v23), sizeof(v85));
      v25 = *&v85[24];
      v26 = *&v85[32];
      v27 = OUTLINED_FUNCTION_43_7();
      sub_1C8CC1340(v27, v28);
      v29 = OUTLINED_FUNCTION_43_7();
      sub_1C8CC1340(v29, v30);
      swift_isUniquelyReferenced_nonNull_native();
      v78[0] = v21;
      v31 = sub_1C8CAE064();
      v33 = v21[2];
      v34 = (v32 & 1) == 0;
      v21 = (v33 + v34);
      if (__OFADD__(v33, v34))
      {
        goto LABEL_36;
      }

      v35 = v31;
      v36 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145F8, &qword_1C90C6400);
      if (sub_1C90648EC())
      {
        v37 = sub_1C8CAE064();
        if ((v36 & 1) != (v38 & 1))
        {
          result = sub_1C9064CBC();
          __break(1u);
          return result;
        }

        v35 = v37;
      }

      if (v36)
      {
        v21 = v78[0];
        v39 = (*(v78[0] + 56) + 104 * v35);
        memcpy(v84, v39, 0x61uLL);
        memcpy(v39, v85, 0x61uLL);
        sub_1C8CC15FC(v84);
        sub_1C8CC15FC(v85);
      }

      else
      {
        v21 = v78[0];
        *(v78[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
        v40 = (v21[6] + 16 * v35);
        *v40 = v25;
        v40[1] = v26;
        memcpy((v21[7] + 104 * v35), v85, 0x61uLL);

        sub_1C8CC15FC(v85);
        v41 = v21[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_37;
        }

        v21[2] = v43;
      }

      v23 = v24 + 104;
      v22 = v87 + 1;
      v20 = v77;
    }

    if (qword_1EC311368 == -1)
    {
      goto LABEL_19;
    }

LABEL_38:
    OUTLINED_FUNCTION_21();
LABEL_19:
    OUTLINED_FUNCTION_2();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    v45 = qword_1EC311370;

    if (v45 != -1)
    {
      OUTLINED_FUNCTION_20();
    }

    v46 = qword_1EC316150;
    v47 = byte_1EC316158;
    v85[0] = 0;
    LOBYTE(v84[0]) = byte_1EC316158;
    j__swift_bridgeObjectRetain_1();
    sub_1C8D39400();
    v49 = v48;

    v50 = swift_allocObject();
    *(v50 + 16) = sub_1C8D2C06C(v77);
    *v83 = vdupq_n_s64(0xA000000000000000);
    *&v83[16] = v49;
    *&v83[24] = v50 | 0x2000000000000000;
    v51 = MEMORY[0x1E69E7CD0];
    *&v83[32] = v44;
    *&v83[40] = MEMORY[0x1E69E7CD0];
    v83[48] = 0;
    *&v83[56] = v46;
    v83[64] = v47;
    *&v83[72] = OUTLINED_FUNCTION_2_3;
    *&v83[80] = 0;
    v81 = 0;
    v82 = 1;
    v52 = v74;
    _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
    v53 = v75;
    ToolDatabase.Accessor.types(matching:scope:locale:)();
    if (v53)
    {

      v69(v52, v71);
      memcpy(v85, v83, 0x58uLL);
      sub_1C8D90D00(v85);
    }

    else
    {
      v55 = v54;
      v69(v52, v71);
      memcpy(v80, v83, sizeof(v80));
      sub_1C8D90D00(v80);
      v79 = v51;
      v56 = *(v55 + 16);
      if (v56)
      {
        v75 = 0;
        v57 = v56 - 1;
        for (i = 32; ; i += 104)
        {
          memcpy(v85, (v55 + i), sizeof(v85));
          v59 = *v85;
          switch(v85[96])
          {
            case 1:
            case 2:
            case 3:
              goto LABEL_27;
            case 5:
              v59 = *&v85[32];
LABEL_27:
              if (v59 >> 61 == 2 && v21[2])
              {
                v60 = v59 & 0x1FFFFFFFFFFFFFFFLL;
                v61 = *(v60 + 16);
                v62 = *(v60 + 24);
                v63 = OUTLINED_FUNCTION_43_7();
                sub_1C8D90D54(v63, v64);

                v65 = sub_1C8CAE064();
                v67 = v66;

                if (v67)
                {
                  memcpy(__dst, (v21[7] + 104 * v65), 0x61uLL);
                  sub_1C8CC1340(__dst, v84);
                  sub_1C8D86CF0();
                  sub_1C8D90DB0(v85);
                  memcpy(v84, v78, 0x61uLL);
                  sub_1C8CC15FC(v84);
                }

                else
                {
                  sub_1C8D90DB0(v85);
                }
              }

              break;
            default:
              break;
          }

          if (!v57)
          {
            break;
          }

          --v57;
        }
      }

      return v79;
    }
  }
}

uint64_t ToolDatabase.Accessor.forEachAppEnumInContainer(_:work:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v30 = sub_1C90620BC();
  v4 = OUTLINED_FUNCTION_11(v30);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  memcpy(__dst, a1, 0x61uLL);
  if (qword_1EC311368 != -1)
  {
    OUTLINED_FUNCTION_21();
  }

  OUTLINED_FUNCTION_2();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = qword_1EC311370;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_20();
  }

  v14 = qword_1EC316150;
  v15 = byte_1EC316158;
  v25[0] = 0;
  v16 = swift_allocObject();
  memcpy((v16 + 16), a1, 0x61uLL);
  OUTLINED_FUNCTION_378();
  j__swift_bridgeObjectRetain_1();
  sub_1C8CC1340(__dst, v28);
  sub_1C8D39400();
  v18 = v17;

  v28[0] = vdupq_n_s64(0xA000000000000000);
  *&v28[1] = v18;
  *(&v28[1] + 1) = v16;
  *&v28[2] = v12;
  *(&v28[2] + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v28[3]) = 0;
  *(&v28[3] + 1) = v14;
  LOBYTE(v28[4]) = v15;
  *(&v28[4] + 1) = OUTLINED_FUNCTION_2_3;
  *&v28[5] = 0;
  MEMORY[0x1EEE9AC00](v19);
  v20 = v24;
  *(&v22 - 2) = v23;
  *(&v22 - 1) = v20;
  v26 = 0;
  v27 = 1;
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  ToolDatabase.Accessor.iterate(over:scope:locale:block:)();
  (*(v6 + 8))(v11, v30);
  memcpy(v25, v28, sizeof(v25));
  return sub_1C8D90D00(v25);
}

uint64_t sub_1C8D861CC(uint64_t a1, void (*a2)(unint64_t *, void *))
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 96);
  switch(v5)
  {
    case 1:
    case 2:
    case 3:

      v8 = v3;
      break;
    case 4:
      v9 = swift_allocObject();
      *(v9 + 16) = v3;
      *(v9 + 24) = v2;
      v8 = v9 | 0x8000000000000000;

      break;
    case 5:

      v8 = v4;
      break;
    default:
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      break;
  }

  v19 = v8;
  v11[0] = v3;
  v11[1] = v2;
  v12 = *(a1 + 16);
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v16 = *(a1 + 72);
  v17 = *(a1 + 88);
  v18 = v5;
  a2(&v19, v11);
}

BOOL sub_1C8D8634C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C9064DBC();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_13_12();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (sub_1C9064C2C() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_1C8D8AD90(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

void sub_1C8D86494()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  memcpy(__dst, v4, sizeof(__dst));
  v5 = *v0;
  v6 = *(*v0 + 40);
  OUTLINED_FUNCTION_354(v21);
  sub_1C9064D7C();
  RestrictionContext.hash(into:)(v19);
  sub_1C9064DBC();
  v7 = *(v5 + 32);
  OUTLINED_FUNCTION_13_12();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    if (((1 << (v8 & v10)) & *(v5 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v13 = *v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      memcpy(v21, __dst, 0x88uLL);
      __src[0] = *v1;
      sub_1C8D073F4(v21, v19);
      sub_1C8D8AEF8(v21, v11, isUniquelyReferenced_nonNull_native);
      *v1 = __src[0];
      memcpy(v3, __dst, 0x88uLL);
      goto LABEL_7;
    }

    v12 = *(v5 + 48) + 136 * v11;
    OUTLINED_FUNCTION_354(v19);
    OUTLINED_FUNCTION_354(__src);
    sub_1C8D073F4(v19, v17);
    LOBYTE(v12) = static RestrictionContext.== infix(_:_:)();
    memcpy(v21, __src, 0x88uLL);
    sub_1C8D073A0(v21);
    if (v12)
    {
      break;
    }

    v8 = v11 + 1;
  }

  memcpy(v17, __dst, sizeof(v17));
  sub_1C8D073A0(v17);
  v15 = *(v5 + 48) + 136 * v11;
  OUTLINED_FUNCTION_354(__src);
  OUTLINED_FUNCTION_354(v3);
  sub_1C8D073F4(__src, v16);
LABEL_7:
  OUTLINED_FUNCTION_163();
}

BOOL sub_1C8D86644(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a2);
  sub_1C9064DBC();
  v7 = *(v5 + 32);
  OUTLINED_FUNCTION_32_5();
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    if (*(*(v5 + 48) + v11) == a2)
    {
      goto LABEL_6;
    }

    v8 = v11 + 1;
  }

  v13 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_4();
  sub_1C8D8B0C4(a2, v11, v14);
  *v2 = v16;
LABEL_6:
  result = v12 == 0;
  *a1 = a2;
  return result;
}

void sub_1C8D86720()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v55 = v3;
  v63 = sub_1C906359C();
  v4 = OUTLINED_FUNCTION_11(v63);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v57 = v10 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314658, &qword_1C9074840);
  v11 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v52 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v14 = OUTLINED_FUNCTION_11(v69);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v64 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v53 = &v52 - v27;
  v54 = v0;
  v28 = *v0;
  v29 = *(*v0 + 40);
  sub_1C9064D7C();
  sub_1C90364BC();
  sub_1C9064DBC();
  v30 = v28 + 56;
  v68 = v28;
  v31 = *(v28 + 32);
  OUTLINED_FUNCTION_13_12();
  v34 = v33 & ~v32;
  if (((*(v30 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
  {
LABEL_19:
    v48 = v54;
    v49 = *v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v53;
    sub_1C8D90EC8(v2, v53);
    v70 = *v48;
    sub_1C8D8B1FC(v51, v34, isUniquelyReferenced_nonNull_native);
    *v48 = v70;
    sub_1C8D6DFF0(v2, v55);
    goto LABEL_22;
  }

  v65 = ~v32;
  v56 = (v6 + 32);
  v66 = *(v16 + 72);
  v61 = (v6 + 8);
  v62 = v30;
  v59 = v2;
  v60 = v22;
  v35 = v64;
  while (1)
  {
    v36 = v66 * v34;
    sub_1C8D90EC8(*(v68 + 48) + v66 * v34, v25);
    v37 = &v13[*(v67 + 48)];
    sub_1C8D90EC8(v25, v13);
    sub_1C8D90EC8(v2, v37);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v42 = v60;
    sub_1C8D90EC8(v13, v60);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v58 = v36;
      v44 = v57;
      v45 = v63;
      (*v56)(v57, v37, v63);
      sub_1C8D90F38(&qword_1EC314660, MEMORY[0x1E69E0838]);
      v46 = sub_1C9063EAC();
      v47 = *v61;
      (*v61)(v44, v45);
      sub_1C8D14208(v25, &qword_1EC312DD0, &qword_1C9072940);
      v47(v42, v45);
      v30 = v62;
      if (v46)
      {
        goto LABEL_21;
      }

      v41 = v13;
      goto LABEL_17;
    }

    sub_1C8D14208(v25, &qword_1EC312DD0, &qword_1C9072940);
    (*v61)(v42, v63);
    v30 = v62;
LABEL_14:
    sub_1C8D14208(v13, &qword_1EC314658, &qword_1C9074840);
LABEL_18:
    v34 = (v34 + 1) & v65;
    if (((*(v30 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_1C8D90EC8(v13, v35);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C8D14208(v25, &qword_1EC312DD0, &qword_1C9072940);
    v43 = v35[1];

    goto LABEL_14;
  }

  v58 = v36;
  if (*v35 != *v37 || v35[1] != *(v37 + 1))
  {
    v39 = v35[1];
    v40 = sub_1C9064C2C();

    sub_1C8D14208(v25, &qword_1EC312DD0, &qword_1C9072940);

    if (v40)
    {
      goto LABEL_21;
    }

    v41 = v13;
LABEL_17:
    sub_1C8D14208(v41, &qword_1EC312DD0, &qword_1C9072940);
    v2 = v59;
    v35 = v64;
    goto LABEL_18;
  }

  sub_1C8D14208(v25, &qword_1EC312DD0, &qword_1C9072940);

LABEL_21:
  sub_1C8D14208(v13, &qword_1EC312DD0, &qword_1C9072940);
  sub_1C8D14208(v59, &qword_1EC312DD0, &qword_1C9072940);
  sub_1C8D90EC8(*(v68 + 48) + v58, v55);
LABEL_22:
  OUTLINED_FUNCTION_163();
}

void sub_1C8D86CF0()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  __dst = v4;
  v36 = v0;
  v5 = *v0;
  v6 = *(*v0 + 40);
  memcpy(v48, v2, 0x61uLL);
  sub_1C9064D7C();
  ContainerDefinition.hash(into:)(v47);
  sub_1C9064DBC();
  v7 = *(v5 + 32);
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_28_7();
  v37 = v3;
  if (((*(v5 + 56 + v9) >> v1) & 1) == 0)
  {
LABEL_59:
    v27 = *v36;
    swift_isUniquelyReferenced_nonNull_native();
    v47[0] = *v36;
    sub_1C8CC1340(v37, v48);
    v28 = OUTLINED_FUNCTION_33_6();
    sub_1C8D8B9B0(v28, v29, v30);
    *v36 = v47[0];
    memcpy(__dst, v37, 0x61uLL);
    goto LABEL_60;
  }

  v45 = ~v8;
  v40 = *(v3 + 56);
  v33 = *(v3 + 96);
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  v43 = v3[4];
  v44 = v3[3];
  v42 = v3[6];
  v39 = v3[9];
  v41 = v3[5];
  v32 = v3[10];
  v34 = v3[11];
  v35 = v3[8];
  while (1)
  {
    v13 = 104 * v1;
    memcpy(v48, (*(v5 + 48) + 104 * v1), 0x61uLL);
    v14 = v48[0] == v10 && v48[1] == v11;
    if (!v14 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_58;
    }

    v15 = *(v48[2] + 16);
    if (v15 != *(v12 + 16))
    {
      goto LABEL_58;
    }

    if (v15 && v48[2] != v12)
    {
      break;
    }

LABEL_21:
    v20 = v48[3] == v44 && v48[4] == v43;
    if (!v20 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_58;
    }

    if (v48[6])
    {
      if (!v42)
      {
        goto LABEL_58;
      }

      v21 = v48[5] == v41 && v48[6] == v42;
      if (!v21 && (sub_1C9064C2C() & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v42)
    {
      goto LABEL_58;
    }

    if (LOBYTE(v48[7]) == v40)
    {
      if (v48[9])
      {
        if (!v39)
        {
          goto LABEL_58;
        }

        v22 = v48[8] == v35 && v48[9] == v39;
        if (!v22 && (sub_1C9064C2C() & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      else if (v39)
      {
        goto LABEL_58;
      }

      if (v48[11])
      {
        if (!v34)
        {
          goto LABEL_54;
        }

        if (v48[10] == v32 && v48[11] == v34)
        {
          sub_1C8CC1340(v48, v47);
        }

        else
        {
          v24 = sub_1C9064C2C();
          sub_1C8CC1340(v48, v47);
          if ((v24 & 1) == 0)
          {
            sub_1C8CC15FC(v48);
            goto LABEL_58;
          }
        }
      }

      else
      {
        if (v34)
        {
LABEL_54:

          goto LABEL_58;
        }

        sub_1C8CC1340(v48, v47);
        swift_bridgeObjectRelease_n();
      }

      v25 = LOBYTE(v48[12]);
      sub_1C8CC15FC(v48);
      if (v25 == v33)
      {
        goto LABEL_62;
      }
    }

LABEL_58:
    v1 = (v1 + 1) & v45;
    OUTLINED_FUNCTION_48_4();
    if (((*(v5 + 56 + v26) >> v1) & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v17 = (v48[2] + 40);
  v18 = (v12 + 40);
  while (v15)
  {
    v19 = *(v17 - 1) == *(v18 - 1) && *v17 == *v18;
    if (!v19 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_58;
    }

    v17 += 2;
    v18 += 2;
    if (!--v15)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_62:
  sub_1C8CC15FC(v37);
  v31 = *(v5 + 48);
  memcpy(v47, (v31 + v13), 0x61uLL);
  memcpy(__dst, (v31 + v13), 0x61uLL);
  sub_1C8CC1340(v47, v46);
LABEL_60:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D87080(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v73[9] = a2;
  v74 = a3;
  sub_1C9064D7C();
  ParameterRelationshipDefinition.Relation.hash(into:)(v73);
  sub_1C9064DBC();
  v8 = *(v6 + 32);
  OUTLINED_FUNCTION_13_12();
  v11 = v10 & ~v9;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_38:
    v57 = *v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73[0] = *v71;
    v59 = OUTLINED_FUNCTION_100();
    sub_1C8D07154(v59, v60);
    v61 = OUTLINED_FUNCTION_100();
    sub_1C8D8BD54(v61, v62, v11, isUniquelyReferenced_nonNull_native);
    *v71 = v73[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }

  v12 = ~v9;
  v13 = a3 & 0xE0;
  v14 = a3 != 192 || a2 != 1;
  v15 = a3 != 192 || a2 != 0;
  v16 = v13 != 192 || v14;
  v17 = v13 != 192 || v15;
  v69 = v17;
  v70 = v16;
  while (2)
  {
    v18 = *(v6 + 48) + 16 * v11;
    v19 = *(v18 + 8);
    switch(v19 >> 5)
    {
      case 1u:
        OUTLINED_FUNCTION_34_7();
        if (v37 != 32)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      case 2u:
        OUTLINED_FUNCTION_34_7();
        if (v21 != 64)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      case 3u:
        OUTLINED_FUNCTION_34_7();
        if (v22 != 96)
        {
          goto LABEL_30;
        }

LABEL_23:
        v23 = OUTLINED_FUNCTION_378();
        sub_1C8D07154(v23, v24);
        v25 = OUTLINED_FUNCTION_100();
        sub_1C8D07154(v25, v26);
        v27 = OUTLINED_FUNCTION_378();
        sub_1C8D07154(v27, v28);
        sub_1C8D2A4D8();
        v30 = v29;
        v31 = OUTLINED_FUNCTION_378();
        sub_1C8D07168(v31, v32);
        v33 = OUTLINED_FUNCTION_378();
        sub_1C8D07168(v33, v34);
        v35 = OUTLINED_FUNCTION_100();
        sub_1C8D07168(v35, v36);
        if ((v30 & 1) != 0 && ((v19 ^ a3) & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      case 4u:
        OUTLINED_FUNCTION_34_7();
        if (v20 != 128)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      case 5u:
        OUTLINED_FUNCTION_34_7();
        if (v50 != 160)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      case 6u:
        if (!(*v18 | v19 ^ 0xC0))
        {
          if ((v69 & 1) == 0)
          {
            OUTLINED_FUNCTION_57_6();
            v65 = 0;
            goto LABEL_41;
          }

LABEL_35:
          v53 = OUTLINED_FUNCTION_100();
LABEL_36:
          sub_1C8D07154(v53, v54);
          OUTLINED_FUNCTION_57_6();
          v55 = OUTLINED_FUNCTION_100();
          sub_1C8D07168(v55, v56);
LABEL_37:
          v11 = (v11 + 1) & v12;
          if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_38;
          }

          continue;
        }

        if (v70)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_57_6();
        v65 = 1;
LABEL_41:
        v64 = -64;
LABEL_42:
        sub_1C8D07168(v65, v64);
        v66 = *(v6 + 48) + 16 * v11;
        v67 = *v66;
        *a1 = *v66;
        v68 = *(v66 + 8);
        *(a1 + 8) = v68;
        sub_1C8D07154(v67, v68);
        return 0;
      default:
        if (a3 >= 0x20u)
        {
LABEL_30:
          v51 = OUTLINED_FUNCTION_100();
          sub_1C8D07154(v51, v52);
          v53 = OUTLINED_FUNCTION_378();
          goto LABEL_36;
        }

LABEL_27:
        v38 = OUTLINED_FUNCTION_378();
        sub_1C8D07154(v38, v39);
        v40 = OUTLINED_FUNCTION_100();
        sub_1C8D07154(v40, v41);
        v42 = OUTLINED_FUNCTION_378();
        sub_1C8D07154(v42, v43);
        sub_1C8D2A4D8();
        v45 = v44;
        v46 = OUTLINED_FUNCTION_378();
        sub_1C8D07168(v46, v47);
        OUTLINED_FUNCTION_57_6();
        v48 = OUTLINED_FUNCTION_100();
        sub_1C8D07168(v48, v49);
        if (v45)
        {
LABEL_39:
          v65 = OUTLINED_FUNCTION_100();
          goto LABEL_42;
        }

        goto LABEL_37;
    }
  }
}

void sub_1C8D87378()
{
  OUTLINED_FUNCTION_184_0();
  v1 = v0;
  v3 = v2;
  v18 = v4;
  v5 = *v0;
  v6 = *(*v0 + 40);
  sub_1C9064D7C();
  TypedValue.hash(into:)();
  sub_1C9064DBC();
  v7 = *(v5 + 32);
  OUTLINED_FUNCTION_13_12();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    if (((1 << (v8 & v10)) & *(v5 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v14 = *v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v1;

      sub_1C8D8C0B8(v18, v11, isUniquelyReferenced_nonNull_native);
      *v1 = v17;
      *v3 = v18;
      goto LABEL_7;
    }

    v16 = *(*(v5 + 48) + 8 * v11);

    static TypedValue.== infix(_:_:)();
    v13 = v12;

    if (v13)
    {
      break;
    }

    v8 = v11 + 1;
  }

  *v3 = *(*(v5 + 48) + 8 * v11);

LABEL_7:
  OUTLINED_FUNCTION_182();
}

uint64_t sub_1C8D874AC(uint64_t a1, uint64_t a2)
{
  v87 = a1;
  v5 = *v2;
  sub_1C8D31238(*(*v2 + 40));
  v6 = *(v5 + 32);
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_28_7();
  if (((*(v5 + 56 + v13) >> v3) & 1) == 0)
  {
LABEL_128:
    v75 = *v86;
    swift_isUniquelyReferenced_nonNull_native();
    v101 = *v86;
    sub_1C8D3EC14(a2, &v99);
    v76 = OUTLINED_FUNCTION_33_6();
    sub_1C8D8C248(v76, v77, v78);
    *v86 = v101;
    v79 = *(a2 + 16);
    *v87 = *a2;
    *(v87 + 16) = v79;
    *(v87 + 32) = *(a2 + 32);
    return 1;
  }

  v14 = ~v12;
  v82 = 0x80000001C90CA2E0;
  v83 = 0x80000001C90CA300;
  v84 = 0x80000001C90CA320;
  v85 = 0x80000001C90CA340;
  v90 = 0x80000001C90CA380;
  v91 = 0x80000001C90CA360;
  while (1)
  {
    v92 = 5 * v3;
    v94 = v3;
    v15 = *(v5 + 48) + 40 * v3;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v97 = v20;
    if (!v20)
    {
      OUTLINED_FUNCTION_16();
      v99 = v23;
      v100 = v90;

      MEMORY[0x1CCA81A90](v17, v16);
      goto LABEL_7;
    }

    if (v20 == 1)
    {
      OUTLINED_FUNCTION_16();
      v99 = v21;
      v100 = v91;

      v22 = OUTLINED_FUNCTION_29_8();
      MEMORY[0x1CCA81A90](v22);

      MEMORY[0x1CCA81A90](46, 0xE100000000000000);

      MEMORY[0x1CCA81A90](v17, v16);

LABEL_7:
      v24 = v99;
      v25 = v100;
      goto LABEL_8;
    }

    if (!(v18 | v16 | v17 | v19))
    {
      v25 = 0xE700000000000000;
      v24 = 0x6E776F6E6B6E75;
      goto LABEL_8;
    }

    v50 = v18 | v16 | v19;
    v51 = v17 == 1 && v50 == 0;
    v24 = 0x6F6363416C69616DLL;
    v25 = 0xEB00000000746E75;
    if (!v51)
    {
      v52 = v17 == 2 && v50 == 0;
      v24 = 0x726464416C69616DLL;
      v25 = 0xED00006565737365;
      if (!v52)
      {
        v53 = v17 == 3 && v50 == 0;
        v24 = 0x7373654D6C69616DLL;
        v25 = 0xEB00000000656761;
        if (!v53)
        {
          if (v17 == 4 && v50 == 0)
          {
            v25 = 0xE700000000000000;
            v24 = 0x786F626C69616DLL;
            goto LABEL_8;
          }

          if (v17 == 5 && v50 == 0)
          {
            v24 = 0x654D746E65746E69;
            v64 = 0x6567617373;
LABEL_67:
            v25 = v64 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            goto LABEL_8;
          }

          if (v17 == 6 && !v50)
          {
            v24 = 0x476567617373656DLL;
            v56 = 1886744434;
LABEL_44:
            v25 = v56 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_8;
          }

          if (v17 != 7 || v50)
          {
            if (v17 != 8 || v50)
            {
              if (v17 == 9 && !v50)
              {
                v24 = 0x6E45657571696E75;
                v56 = 2037672308;
                goto LABEL_44;
              }

              if (v17 != 10 || v50)
              {
                if (v17 == 11 && !v50)
                {
                  v24 = 0x4564657865646E69;
                  v64 = 0x797469746ELL;
                  goto LABEL_67;
                }

                if (v17 != 12 || v50)
                {
                  if (v17 != 13 || (v24 = 0xD000000000000010, v25 = v83, v50))
                  {
                    if (v17 != 14 || v50)
                    {
                      if (v50)
                      {
                        v74 = 0;
                      }

                      else
                      {
                        v74 = v17 == 15;
                      }

                      if (v74)
                      {
                        v25 = 0xEC00000068637261;
                      }

                      else
                      {
                        v25 = 0xEF52434F68637261;
                      }

                      v24 = 0x65536C6175736976;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_16();
                      v24 = v72 + 10;
                      v25 = v82;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_16();
                  v24 = v70 + 5;
                  v25 = v84;
                }
              }

              else
              {
                v24 = 0x6C62617461647075;
                v25 = 0xEF797469746E4565;
              }
            }

            else
            {
              OUTLINED_FUNCTION_42_5();
              v25 = v68 + 15;
              v24 = 0x6E6569736E617274;
            }
          }

          else
          {
            OUTLINED_FUNCTION_16();
            v24 = v66 + 2;
            v25 = v85;
          }
        }
      }
    }

LABEL_8:
    v98 = v18;
    v26 = *a2;
    v27 = *(a2 + 8);
    if (!*(a2 + 32))
    {
      OUTLINED_FUNCTION_16();
      v99 = v33;
      v100 = v90;
      v34 = OUTLINED_FUNCTION_29_8();
      v36 = v35;
      v28 = MEMORY[0x1CCA81A90](v34);
      v24 = v36;
      goto LABEL_12;
    }

    v28 = *(a2 + 16);
    v29 = *(a2 + 24);
    if (*(a2 + 32) == 1)
    {
      OUTLINED_FUNCTION_16();
      v99 = v30;
      v100 = v91;
      v88 = v31;
      MEMORY[0x1CCA81A90]();
      v89 = v25;

      MEMORY[0x1CCA81A90](46, 0xE100000000000000);

      v32 = OUTLINED_FUNCTION_29_8();
      MEMORY[0x1CCA81A90](v32);

      v24 = v88;
LABEL_12:
      v37 = v99;
      v38 = v100;
      goto LABEL_13;
    }

    if (!(v28 | v27 | v26 | v29))
    {
      v38 = 0xE700000000000000;
      v37 = 0x6E776F6E6B6E75;
      goto LABEL_13;
    }

    v57 = v28 | v27 | v29;
    if (v26 != 1 || (OUTLINED_FUNCTION_50_2(), v37 = v58 | 0x6F63634100000000, v38 = 0xEB00000000746E75, v57))
    {
      if (v26 != 2 || (OUTLINED_FUNCTION_50_2(), v37 = v59 | 0x7264644100000000, v38 = 0xED00006565737365, v57))
      {
        if (v26 != 3 || (OUTLINED_FUNCTION_50_2(), v37 = v60 | 0x7373654D00000000, v38 = 0xEB00000000656761, v57))
        {
          if (v26 == 4 && !v57)
          {
            v38 = 0xE700000000000000;
            OUTLINED_FUNCTION_50_2();
            v37 = v61 | 0x786F6200000000;
            goto LABEL_13;
          }

          if (v26 == 5 && !v57)
          {
            v37 = 0x654D746E65746E69;
            v62 = 0x6567617373;
LABEL_60:
            v38 = v62 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            goto LABEL_13;
          }

          if (v26 == 6 && !v57)
          {
            v37 = 0x476567617373656DLL;
            v63 = 1886744434;
LABEL_65:
            v38 = v63 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_13;
          }

          if (v26 != 7 || v57)
          {
            if (v26 != 8 || v57)
            {
              if (v26 == 9 && !v57)
              {
                v37 = 0x6E45657571696E75;
                v63 = 2037672308;
                goto LABEL_65;
              }

              if (v26 != 10 || v57)
              {
                if (v26 == 11 && !v57)
                {
                  v37 = 0x4564657865646E69;
                  v62 = 0x797469746ELL;
                  goto LABEL_60;
                }

                if (v26 != 12 || v57)
                {
                  if (v26 != 13 || (v37 = 0xD000000000000010, v38 = v83, v57))
                  {
                    if (v26 != 14 || v57)
                    {
                      if (v57)
                      {
                        v73 = 0;
                      }

                      else
                      {
                        v73 = v26 == 15;
                      }

                      if (v73)
                      {
                        v38 = 0xEC00000068637261;
                      }

                      else
                      {
                        v38 = 0xEF52434F68637261;
                      }

                      v37 = 0x65536C6175736976;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_16();
                      v37 = v71 + 10;
                      v38 = v82;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_16();
                  v37 = v69 + 5;
                  v38 = v84;
                }
              }

              else
              {
                v37 = 0x6C62617461647075;
                v38 = 0xEF797469746E4565;
              }
            }

            else
            {
              OUTLINED_FUNCTION_42_5();
              v38 = v67 + 15;
              v37 = 0x6E6569736E617274;
            }
          }

          else
          {
            OUTLINED_FUNCTION_16();
            v37 = v65 + 2;
            v38 = v85;
          }
        }
      }
    }

LABEL_13:
    if (v24 == v37 && v25 == v38)
    {
      break;
    }

    v40 = sub_1C9064C2C();
    v41 = v40;
    OUTLINED_FUNCTION_55_2(v40, v42, v43, v44, v45, v46, v47, v48, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v94, v96, v97, v98, v16);

    if (v41)
    {
      goto LABEL_130;
    }

    v3 = (v95 + 1) & v14;
    OUTLINED_FUNCTION_48_4();
    if (((*(v5 + 56 + v49) >> v3) & 1) == 0)
    {
      goto LABEL_128;
    }
  }

  OUTLINED_FUNCTION_55_2(v28, v29, v37, v7, v8, v9, v10, v11, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v94, v96, v97, v98, v16);

LABEL_130:
  v81 = 8 * v93;
  sub_1C8D90E74(a2);
  OUTLINED_FUNCTION_56_5(*(*(v5 + 48) + v81), *(*(v5 + 48) + v81 + 8), *(*(v5 + 48) + v81 + 16), *(*(v5 + 48) + v81 + 24), *(v5 + 48) + v81);
  return 0;
}

uint64_t sub_1C8D87D50(_BYTE *a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v23 = a2 & 1;
  sub_1C8D30F0C();
  v7 = *(v5 + 32);
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_28_7();
  if ((*(v5 + 56 + v9) >> v3))
  {
    v10 = ~v8;
    if (a2)
    {
      v11 = 0x65676175676E616CLL;
    }

    else
    {
      v11 = 0x79616C70736964;
    }

    if (a2)
    {
      v12 = 0xED00006C65646F4DLL;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    while (1)
    {
      v13 = *(*(v5 + 48) + v3) ? 0x65676175676E616CLL : 0x79616C70736964;
      v14 = *(*(v5 + 48) + v3) ? 0xED00006C65646F4DLL : 0xE700000000000000;
      if (v13 == v11 && v14 == v12)
      {
        break;
      }

      v16 = sub_1C9064C2C();

      if (v16)
      {
        goto LABEL_22;
      }

      v3 = (v3 + 1) & v10;
      OUTLINED_FUNCTION_48_4();
      if (((*(v5 + 56 + v17) >> v3) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    result = 0;
    v20 = *(*(v5 + 48) + v3);
  }

  else
  {
LABEL_20:
    v18 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v22;
    v20 = v23;
    sub_1C8D8CBBC(v23, v3, isUniquelyReferenced_nonNull_native);
    *v22 = v25;
    result = 1;
  }

  *a1 = v20;
  return result;
}

BOOL sub_1C8D87EF8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_1C8D307DC(*(*v2 + 40));
  v51 = v3;
  v4 = *(v3 + 32);
  OUTLINED_FUNCTION_13_12();
  v50 = ~v6;
  while (1)
  {
    v7 = v5 & v50;
    OUTLINED_FUNCTION_48_4();
    v10 = *(v9 + v8);
    v11 = (1 << v7) & v10;
    if (!v11)
    {
      v35 = *v47;
      swift_isUniquelyReferenced_nonNull_native();
      v54 = *v47;
      sub_1C8D3ECC4(a2, v57);
      v36 = OUTLINED_FUNCTION_33_6();
      sub_1C8D8CDBC(v36, v37, v38);
      *v47 = v54;
      v39 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v39;
      *(a1 + 32) = *(a2 + 32);
      return v11 == 0;
    }

    v49 = (1 << v7) & v10;
    v12 = *(v51 + 48) + 40 * v7;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    v57[0] = *v12;
    v57[1] = v13;
    v57[2] = v14;
    v57[3] = v15;
    v58 = v16;
    v53 = *a2;
    v55 = *(a2 + 16);
    v56 = *(a2 + 32);
    v17 = OUTLINED_FUNCTION_10_15();
    sub_1C8D54590(v17, v18, v19, v20, v21);
    SystemToolProtocol.Identifier.rawValue.getter();
    v23 = v22;
    v25 = v24;
    SystemToolProtocol.Identifier.rawValue.getter();
    if (v23 == v27 && v25 == v26)
    {
      break;
    }

    v29 = sub_1C9064C2C();
    v30 = OUTLINED_FUNCTION_10_15();
    sub_1C8D3ED20(v30, v31, v32, v33, v34);

    if (v29)
    {
      goto LABEL_11;
    }

    v5 = v7 + 1;
  }

  v40 = OUTLINED_FUNCTION_10_15();
  sub_1C8D3ED20(v40, v41, v42, v43, v44);

LABEL_11:
  sub_1C8D90E20(a2);
  v45 = (*(v51 + 48) + 40 * v7);
  OUTLINED_FUNCTION_56_5(*v45, v45[1], v45[2], v45[3], v45);
  v11 = v49;
  return v11 == 0;
}

BOOL sub_1C8D880F8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = *v4;
  v11 = *(v10 + 40);
  sub_1C9064D6C();
  v12 = *(v10 + 32);
  OUTLINED_FUNCTION_32_5();
  while (1)
  {
    v16 = v13 & v15;
    v17 = (1 << (v13 & v15)) & *(v14 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v17)
    {
      break;
    }

    if (*(*(v10 + 48) + 8 * v16) == a2)
    {
      goto LABEL_6;
    }

    v13 = v16 + 1;
  }

  v18 = *v7;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_4();
  sub_1C8D8D044(a2, v16, v19, a3, a4);
  *v7 = v21;
LABEL_6:
  result = v17 == 0;
  *a1 = a2;
  return result;
}

void sub_1C8D881DC()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v30 = v3;
  v4 = sub_1C906204C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v29 = v0;
  v13 = *v0;
  v14 = *(*v0 + 40);
  OUTLINED_FUNCTION_15_12();
  sub_1C8D90F38(v15, v16);
  sub_1C9063E6C();
  v31 = v13;
  v32 = v13 + 56;
  v17 = *(v13 + 32);
  OUTLINED_FUNCTION_13_12();
  v20 = ~v19;
  while (1)
  {
    v21 = v18 & v20;
    if (((1 << (v18 & v20)) & *(v32 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v27 = *v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v7 + 16))(v12, v2, v4);
      v33 = *v29;
      sub_1C8D8D154(v12, v21, isUniquelyReferenced_nonNull_native);
      *v29 = v33;
      (*(v7 + 32))(v30, v2, v4);
      goto LABEL_7;
    }

    v22 = *(v7 + 72) * v21;
    v23 = *(v7 + 16);
    v23(v12, *(v31 + 48) + v22, v4);
    OUTLINED_FUNCTION_15_12();
    sub_1C8D90F38(&qword_1EC314618, v24);
    v25 = sub_1C9063EAC();
    v26 = *(v7 + 8);
    v26(v12, v4);
    if (v25)
    {
      break;
    }

    v18 = v21 + 1;
  }

  v26(v2, v4);
  v23(v30, *(v31 + 48) + v22, v4);
LABEL_7:
  OUTLINED_FUNCTION_163();
}