uint64_t IntentSideEffect.init(protobuf:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 5))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D90, &qword_1C90A7078);
    sub_1C8D4F674(&qword_1EC319D98, &qword_1EC319D90, &qword_1C90A7078);
    OUTLINED_FUNCTION_213();
    *v4 = &type metadata for ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind;
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E69E08B0], v3);
    swift_willThrow();
    return OUTLINED_FUNCTION_10_39();
  }

  else
  {
    v6 = *(a1 + 4);
    v7 = *a1;
    result = OUTLINED_FUNCTION_10_39();
    v8 = v7;
    if (((v7 | (v6 << 32)) & 0x100000000) != 0)
    {
      v8 = v7 != 0;
    }

    *a2 = v8;
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_1C8F16378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8F163E0()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t sub_1C8F16438()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t sub_1C8F16490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SystemToolProtocol.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v58[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v58 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v58 - v12);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v15 = OUTLINED_FUNCTION_13_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  v59 = v19;
  v20 = *v1;
  v21 = *(v1 + 8);
  v23 = *(v1 + 16);
  v22 = *(v1 + 24);
  v24 = *(v1 + 32);
  v25 = *(v1 + 40);
  v26 = *(v1 + 48);
  switch(*(v1 + 56))
  {
    case 1:
      v42 = OUTLINED_FUNCTION_4_48();
      v43 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(v42) + 20);

      OUTLINED_FUNCTION_14_35();
      *v25 = v1;
      *(v25 + 8) = v21;
      goto LABEL_17;
    case 2:
      v36 = OUTLINED_FUNCTION_4_48();
      v37 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(v36) + 20);

      OUTLINED_FUNCTION_14_35();
      *v25 = v1;
      *(v25 + 8) = v21;
      goto LABEL_17;
    case 3:
      v38 = OUTLINED_FUNCTION_4_48();
      v39 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol(v38) + 20);

      OUTLINED_FUNCTION_14_35();
      *v25 = v1;
      goto LABEL_17;
    case 4:
      v32 = OUTLINED_FUNCTION_4_48();
      v33 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(v32);
      v25 = v59;
      v34 = v59 + *(v33 + 20);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v25 = v1 & 1;
      goto LABEL_17;
    case 5:
      v44 = OUTLINED_FUNCTION_4_48();
      v45 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(v44) + 20);

      OUTLINED_FUNCTION_14_35();
      *v25 = v1;
      goto LABEL_17;
    case 6:
      v46 = OUTLINED_FUNCTION_4_48();
      v47 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(v46) + 20);

      OUTLINED_FUNCTION_14_35();
      *v25 = v1;
      goto LABEL_17;
    case 7:
      v40 = OUTLINED_FUNCTION_4_48();
      v41 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(v40) + 20);

      OUTLINED_FUNCTION_14_35();
      *v25 = v1;
      *(v25 + 8) = v21;
      goto LABEL_17;
    case 8:
      v50 = *v1;
      v51 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0) + 24);

      OUTLINED_FUNCTION_14_35();
      *v25 = v50;
      *(v25 + 8) = v21;
      *(v25 + 16) = v23;
      *(v25 + 24) = v22;
      goto LABEL_17;
    case 9:
      if ((v21 & 1) == 0)
      {
        if (v20 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else
        {
          v25 = v59;
          if (v20 <= 0x7FFFFFFF)
          {
            v35 = *v1;
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_22;
      }

      LODWORD(v35) = v20 != 0;
      v25 = v59;
LABEL_21:
      v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
      MEMORY[0x1EEE9AC00](v54);
      LODWORD(v58[-2]) = v35;
      BYTE4(v58[-2]) = v21 & 1;
      OUTLINED_FUNCTION_7_44();
      sub_1C8F17054(v55, v56);
      sub_1C9063ACC();
LABEL_17:
      swift_storeEnumTagMultiPayload();
      v52 = type metadata accessor for ToolKitProtoSystemToolProtocol(0);
      MEMORY[0x1EEE9AC00](v52);
      v58[-2] = v25;
      sub_1C8F17054(&qword_1EDA63CE8, type metadata accessor for ToolKitProtoSystemToolProtocol);
      sub_1C9063ACC();
      return sub_1C8F16490(v25, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    case 0xA:
      v48 = v24 | v25 | v26;
      if (!(v23 | v21 | v20 | v22 | v48))
      {
        goto LABEL_22;
      }

      v49 = v23 | v21 | v22 | v48;
      v25 = v59;
      if ((v20 != 1 || v49) && (v20 != 2 || v49) && (v20 != 3 || v49) && (v20 != 4 || v49) && (v20 != 5 || v49) && (v20 != 6 || v49) && (v20 != 7 || v49) && (v20 != 8 || v49) && (v20 != 9 || v49) && (v20 != 10 || v49))
      {
        v57 = *v1;
LABEL_22:
        v25 = v59;
      }

      goto LABEL_17;
    default:
      v58[0] = *v1;
      v58[1] = v18;
      v27 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
      v28 = *(v27 + 28);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v7 = v23;
      v7[1] = v22;
      v7[2] = v24;
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v27);
      v29 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
      __swift_storeEnumTagSinglePayload(v13 + *(v29 + 24), 1, 1, v27);
      v30 = v13 + *(v29 + 28);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v13 = v58[0];
      v13[1] = v21;
      sub_1C8D7300C();
      v13[2] = v25;
      v13[3] = v26;
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v29);
      v25 = v59;
      __swift_storeEnumTagSinglePayload(v59, 1, 1, v29);
      v31 = v25 + *(type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0) + 20);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      goto LABEL_17;
  }
}

void IntentSideEffect.protobuf(useCase:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    goto LABEL_4;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
LABEL_4:
    v2 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_7_44();
    sub_1C8F17054(v3, v4);
    sub_1C9063ACC();
    return;
  }

  __break(1u);
}

uint64_t sub_1C8F16F7C(uint64_t a1)
{
  sub_1C8F16378(a1);
  sub_1C8F163E0();
  v2 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_1C8F17054(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8F1709C(uint64_t result)
{
  v2 = *(v1 + 16);
  *(result + 4) = *(v1 + 20);
  *result = v2;
  *(result + 5) = 0;
  return result;
}

unint64_t sub_1C8F170C4()
{
  result = qword_1EC319DA0;
  if (!qword_1EC319DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DA0);
  }

  return result;
}

uint64_t SearchableItemPredicate.init(protobuf:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = MEMORY[0x1CCA82A80]();
  v7 = sub_1C8D00800(v4, v5);
  if (v2)
  {
    objc_autoreleasePoolPop(v6);
    return OUTLINED_FUNCTION_0_72();
  }

  else
  {
    v9 = v7;
    objc_autoreleasePoolPop(v6);
    result = OUTLINED_FUNCTION_0_72();
    *a2 = v9;
  }

  return result;
}

void SearchableItemPredicate.protobuf(useCase:)(uint64_t *a1@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = MEMORY[0x1CCA82A80]();
  v13[0] = 0;
  v5 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v13];
  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1C9061F3C();
    v9 = v8;

    objc_autoreleasePoolPop(v4);
    v10 = a1 + *(type metadata accessor for ToolKitProtoSearchableItemPredicate(0) + 20);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a1 = v7;
    a1[1] = v9;
  }

  else
  {
    v11 = v6;
    sub_1C9061D7C();

    swift_willThrow();
    objc_autoreleasePoolPop(v4);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C8F17374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C8F173D8()
{
  result = qword_1EC319DA8;
  if (!qword_1EC319DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DA8);
  }

  return result;
}

unint64_t sub_1C8F17430()
{
  result = qword_1EDA607F8;
  if (!qword_1EDA607F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA607F8);
  }

  return result;
}

void sub_1C8F174C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v30;
    v6 = sub_1C8D3F274(v2);
    v7 = 0;
    v8 = v2 + 56;
    v23 = v2 + 64;
    v24 = v1;
    v25 = v2 + 56;
    v26 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_25;
        }

        v28 = v5;
        v27 = v4;
        v29 = *(*(v2 + 48) + 8 * v6);

        v10 = String.init(typeIdentifier:)(&v29);
        v12 = v11;
        v30 = v3;
        v13 = *(v3 + 16);
        if (v13 >= *(v3 + 24) >> 1)
        {
          sub_1C8CA6480();
          v3 = v30;
        }

        *(v3 + 16) = v13 + 1;
        v14 = v3 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v12;
        if (v28)
        {
          goto LABEL_29;
        }

        v8 = v25;
        v2 = v26;
        v15 = 1 << *(v26 + 32);
        if (v6 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v25 + 8 * v9);
        if ((v16 & (1 << v6)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v26 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v6 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v9 << 6;
          v19 = v9 + 1;
          v20 = (v23 + 8 * v9);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C8CAF698(v6, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v6, v27, 0);
        }

LABEL_19:
        if (++v7 == v24)
        {
          return;
        }

        v5 = 0;
        v4 = *(v26 + 36);
        v6 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
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
}

void sub_1C8F1770C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v34;
    v6 = sub_1C8D3F274(v2);
    v7 = 0;
    v30 = v2 + 56;
    v25 = v2 + 64;
    v26 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v8 = v6 >> 6;
        if ((*(v30 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_26;
        }

        v29 = v5;
        v27 = v7;
        v28 = v4;
        v9 = *(v2 + 48) + 40 * v6;
        v31 = *v9;
        v32 = *(v9 + 16);
        v33 = *(v9 + 32);
        SystemToolProtocol.Identifier.rawValue.getter();
        v11 = v10;
        v13 = v12;
        v14 = *(v3 + 16);
        if (v14 >= *(v3 + 24) >> 1)
        {
          sub_1C8CA6480();
        }

        *(v3 + 16) = v14 + 1;
        v15 = v3 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v13;
        if (v29)
        {
          goto LABEL_30;
        }

        v2 = v26;
        v16 = 1 << *(v26 + 32);
        if (v6 >= v16)
        {
          goto LABEL_27;
        }

        v17 = *(v30 + 8 * v8);
        if ((v17 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v26 + 36) != v28)
        {
          goto LABEL_29;
        }

        v18 = v17 & (-2 << (v6 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v3;
          v20 = v8 << 6;
          v21 = v8 + 1;
          v22 = (v25 + 8 * v8);
          while (v21 < (v16 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1C8CAF698(v6, v28, 0);
              v16 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v6, v28, 0);
LABEL_19:
          v3 = v19;
        }

        v7 = v27 + 1;
        if (v27 + 1 == v1)
        {
          return;
        }

        v5 = 0;
        v4 = *(v26 + 36);
        v6 = v16;
        if (v16 < 0)
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
LABEL_30:
    __break(1u);
  }
}

uint64_t static ToolDefinitionQuery.from(device:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_1EDA69218 != -1)
  {
    OUTLINED_FUNCTION_14_36();
  }

  v5 = qword_1EDA69220;
  v6 = qword_1EDA69200;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_13_28();
  }

  v7 = qword_1EDA69208;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  v9 = vdupq_n_s64(0xA000000000000000);
  *a2 = v9;
  *(a2 + 16) = 0xA000000000000000;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  v10 = MEMORY[0x1E69E7CD0];
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0xA000000000000000;
  *(a2 + 56) = v8;
  *(a2 + 64) = v10;
}

uint64_t ToolDefinitionQuery.rowID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t ToolDefinitionQuery.toolID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.input.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.output.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);

  *(v1 + 32) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.sourceContainer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);

  *(v1 + 40) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.attributionContainer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);

  *(v1 + 48) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.sourceDevice.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 56);

  *(v1 + 56) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.systemProtocol.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  return j__swift_bridgeObjectRetain_0();
}

uint64_t ToolDefinitionQuery.systemProtocol.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = j__swift_bridgeObjectRelease_0(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t ToolDefinitionQuery.assistantVersion.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C8E05190(v2);
}

uint64_t ToolDefinitionQuery.assistantVersion.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 88);
  result = sub_1C8CC7E94(*(v1 + 80));
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  return result;
}

uint64_t ToolDefinitionQuery.cascadeSharedIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 104);

  *(v1 + 104) = v2;
  return result;
}

uint64_t static ToolDefinitionQuery.all()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA69218 != -1)
  {
    OUTLINED_FUNCTION_14_36();
  }

  v2 = qword_1EDA69220;
  v3 = qword_1EDA69200;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_13_28();
  }

  v4 = qword_1EDA69208;
  v5 = vdupq_n_s64(0xA000000000000000);
  *a1 = v5;
  *(a1 + 16) = 0xA000000000000000;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = MEMORY[0x1E69E7CD0];
  *(a1 + 56) = 0xA000000000000000;
  *(a1 + 64) = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xA000000000000000;
}

uint64_t static ToolDefinitionQuery.local()@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v2[1] = 0;
  return static ToolDefinitionQuery.from(device:)(v2, a1);
}

uint64_t ToolDefinitionQuery.where(_:_:)@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(a2, v2, 0x70uLL);
  v7[14] = v4;
  v7[15] = v5;
  sub_1C8EE2C10(__dst, v7);
  sub_1C8E05190(v4);
  return swift_setAtWritableKeyPath();
}

void ToolDefinitionQuery.shouldFilterOut(model:)(uint64_t a1)
{
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = *(v1 + 88);
    v4 = *(a1 + *(type metadata accessor for ToolDefinition(0) + 92));
    v5 = *(v4 + 16);

    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v8 = v4 + (v6 << 6);
    while (v5 != v6)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      ++v6;
      v9 = (v8 + 64);
      v10 = *(v8 + 88);
      v8 += 64;
      if (!v10)
      {
        v11 = *(v9 - 2);
        v12 = *(v9 - 1);
        v24 = *v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = v7[2];
          sub_1C8D01378();
          v7 = v16;
        }

        v13 = v7[2];
        if (v13 >= v7[3] >> 1)
        {
          sub_1C8D01378();
          v7 = v17;
        }

        v7[2] = v13 + 1;
        v14 = &v7[3 * v13];
        v14[4] = v11;
        v14[5] = v12;
        v14[6] = v24;
        goto LABEL_3;
      }
    }

    v18 = v7 + 6;
    v19 = -v7[2];
    v20 = -1;
    do
    {
      if (v19 + v20 == -1)
      {
        break;
      }

      if (++v20 >= v7[2])
      {
        goto LABEL_19;
      }

      v21 = v18 + 3;
      v22 = *v18;
      v25 = *(v18 - 1);
      v26 = v22;
      v23 = v2(&v25);
      v18 = v21;
    }

    while ((v23 & 1) != 0);
    sub_1C8CC7E94(v2);
  }
}

uint64_t ToolDefinitionQuery.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v16 = *(v0 + 72);
  v17 = *(v0 + 64);
  v18 = *(v0 + 88);
  v19 = *(v0 + 80);
  v20 = *(v0 + 96);
  v21 = *(v0 + 104);
  sub_1C906478C();
  OUTLINED_FUNCTION_21_23();
  MEMORY[0x1CCA81A90]();
  sub_1C8DFFB9C(v1);
  OUTLINED_FUNCTION_23_26();

  MEMORY[0x1CCA81A90](0x3A44496C6F6F7420, 0xE900000000000020);
  sub_1C8DFFCB8(v2);
  OUTLINED_FUNCTION_23_26();

  MEMORY[0x1CCA81A90](0x203A6570797420, 0xE700000000000000);
  sub_1C8DFFDDC(v4);
  OUTLINED_FUNCTION_23_26();

  MEMORY[0x1CCA81A90](0x203A7475706E6920, 0xE800000000000000);
  sub_1C8D3AEB8();
  v9 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v9);

  OUTLINED_FUNCTION_19_27();
  MEMORY[0x1CCA81A90](0x203A666F28796E61, 0xE800000000000000);

  MEMORY[0x1CCA81A90](0x3A74757074756F20, 0xE900000000000020);
  v10 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v10);

  OUTLINED_FUNCTION_19_27();
  MEMORY[0x1CCA81A90](0x203A666F28796E61, 0xE800000000000000);

  OUTLINED_FUNCTION_21_23();
  MEMORY[0x1CCA81A90]();
  sub_1C8DFFEF4(v5);
  OUTLINED_FUNCTION_23_26();

  OUTLINED_FUNCTION_21_23();
  MEMORY[0x1CCA81A90]();
  sub_1C8DFFEF4(v8);
  OUTLINED_FUNCTION_23_26();

  MEMORY[0x1CCA81A90](0x44656372756F7320, 0xEF203A6563697665);
  sub_1C8E00098(v7);
  OUTLINED_FUNCTION_23_26();

  OUTLINED_FUNCTION_21_23();
  MEMORY[0x1CCA81A90](0xD000000000000011);
  if (v16 == 1)
  {
    v11 = 678194273;
  }

  else
  {
    v11 = 679046753;
  }

  v22 = v11;
  sub_1C8D3EC70();
  v12 = sub_1C906433C();
  MEMORY[0x1CCA81A90](v12);

  OUTLINED_FUNCTION_19_27();
  MEMORY[0x1CCA81A90](v22, 0xE400000000000000);

  OUTLINED_FUNCTION_21_23();
  MEMORY[0x1CCA81A90]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316168, &qword_1C9084380);
  sub_1C906462C();
  OUTLINED_FUNCTION_23_26();

  MEMORY[0x1CCA81A90](0x6C69626973697620, 0xED0000203A797469);
  if (v20)
  {
    v13 = ToolVisibilityFlag.description.getter();
    MEMORY[0x1CCA81A90](v13);

    OUTLINED_FUNCTION_19_27();
    v14 = 2650985;
  }

  else
  {
    v14 = 7958113;
  }

  MEMORY[0x1CCA81A90](v14, 0xE300000000000000);

  OUTLINED_FUNCTION_21_23();
  MEMORY[0x1CCA81A90]();
  sub_1C8DFFCB8(v21);
  OUTLINED_FUNCTION_23_26();

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C8F1861C()
{
  v1 = *v0;
  sub_1C8D3AEB8();
  v2 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return 0x203A666F28796E61;
}

uint64_t SystemToolProtocolFilter.debugDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 678194273;
  }

  else
  {
    v2 = 679046753;
  }

  v5 = v2;
  sub_1C8D3EC70();
  v3 = sub_1C906433C();
  MEMORY[0x1CCA81A90](v3);

  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return v5;
}

uint64_t ToolVisibilityFilter.debugDescription.getter()
{
  if (!*v0)
  {
    return 7958113;
  }

  v3 = *v0;
  v1 = ToolVisibilityFlag.description.getter();
  MEMORY[0x1CCA81A90](v1);

  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return 2650985;
}

uint64_t sub_1C8F187B4(const void *a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = sub_1C90620BC();
  v10 = OUTLINED_FUNCTION_11(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  memcpy(__dst, a1, sizeof(__dst));
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *a4;
  (*(v12 + 16))(v4, a3, v9);
  v18 = sub_1C902E244();
  (*(v12 + 8))(a3, v9);
  return v18;
}

void *sub_1C8F188EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FetchedTool();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  sub_1C8F21500(a1, v9);
  v12 = a2;
  return sub_1C90571A8(v9, &v12, a3);
}

void sub_1C8F18998()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v3 = sub_1C90620BC();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = v0 + *(*v0 + 136);
  memcpy(v26, v12, sizeof(v26));
  v13 = swift_allocObject();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = v13;
    *(v13 + 16) = v2;
    memcpy(v23, (v12 + 8), sizeof(v23));
    sub_1C8EE2C10(v26, &v24);

    v22 = v14;
    v15 = *v0;
    v16 = v0 + *(*v0 + 144);
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    v24 = v17;
    v25 = v16;
    (*(v6 + 16))(v11, v0 + *(v15 + 152), v3);
    v21 = *(v0 + *(*v0 + 160));
    Request = type metadata accessor for ToolDefinitionQueryRequest();
    v19 = *(Request + 48);
    v20 = *(Request + 52);
    swift_allocObject();
    sub_1C8F187B4(&v22, &v24, v11, &v21);
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8F18B58(uint64_t a1)
{
  v3 = MEMORY[0x1CCA82A80]();
  sub_1C8F18BC4(v1, a1, &v4);
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1C8F18BC4(uint64_t *a1, uint64_t a2, void *a3)
{
  v421 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313200, &qword_1C906B098);
  v385 = *(v5 - 8);
  v6 = *(v385 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v384 = &v313 - v7;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313210, &unk_1C90A7A10);
  v382 = *(v383 - 8);
  v8 = *(v382 + 64);
  MEMORY[0x1EEE9AC00](v383);
  v381 = &v313 - v9;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313218, &qword_1C906B0A0);
  v379 = *(v380 - 8);
  v10 = *(v379 + 64);
  MEMORY[0x1EEE9AC00](v380);
  v378 = &v313 - v11;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313230, &unk_1C90A6FF0);
  v376 = *(v377 - 8);
  v12 = *(v376 + 64);
  MEMORY[0x1EEE9AC00](v377);
  v374 = &v313 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v375 = &v313 - v15;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313238, &qword_1C906B0B0);
  v372 = *(v373 - 8);
  v16 = *(v372 + 64);
  MEMORY[0x1EEE9AC00](v373);
  v370 = &v313 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v371 = &v313 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313240, &unk_1C90A7A20);
  v367 = *(v20 - 8);
  v21 = *(v367 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v363 = &v313 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v365 = &v313 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v366 = &v313 - v26;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313250, &unk_1C90A7000);
  v360 = *(v361 - 8);
  v27 = *(v360 + 64);
  MEMORY[0x1EEE9AC00](v361);
  v358 = &v313 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v359 = &v313 - v30;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313258, &unk_1C90A7A30);
  v411 = *(v401 - 8);
  v31 = *(v411 + 64);
  MEMORY[0x1EEE9AC00](v401);
  v400 = &v313 - v32;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CE0, &qword_1C90A6B68);
  v355 = *(v356 - 8);
  v33 = *(v355 + 64);
  MEMORY[0x1EEE9AC00](v356);
  v352 = &v313 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v353 = &v313 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v354 = &v313 - v38;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319DD0, &unk_1C90A7A40);
  v409 = *(v398 - 8);
  v39 = *(v409 + 64);
  MEMORY[0x1EEE9AC00](v398);
  v397 = &v313 - v40;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CE8, &qword_1C90A6B70);
  v346 = *(v347 - 1);
  v41 = *(v346 + 8);
  MEMORY[0x1EEE9AC00](v347);
  v344 = &v313 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v345 = &v313 - v44;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D00, &unk_1C90A7A50);
  v342 = *(v343 - 8);
  v45 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v343);
  v341 = &v313 - v46;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C0, &unk_1C906B550);
  v338 = *(v339 - 8);
  v47 = *(v338 + 64);
  MEMORY[0x1EEE9AC00](v339);
  v336 = &v313 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v337 = &v313 - v50;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313260, &unk_1C90A7A60);
  v413 = *(v416 - 8);
  v51 = *(v413 + 64);
  MEMORY[0x1EEE9AC00](v416);
  v340 = &v313 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v391 = &v313 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v393 = &v313 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v348 = &v313 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v350 = &v313 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v351 = &v313 - v62;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313268, &unk_1C909F240);
  v404 = *(v335 - 8);
  v63 = *(v404 + 64);
  MEMORY[0x1EEE9AC00](v335);
  v389 = &v313 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v390 = &v313 - v66;
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C8, &unk_1C909F250);
  v414 = *(v408 - 8);
  v67 = *(v414 + 64);
  MEMORY[0x1EEE9AC00](v408);
  v406 = &v313 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v407 = &v313 - v70;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313270, &unk_1C90A7010);
  v333 = *(v334 - 1);
  v71 = *(v333 + 8);
  MEMORY[0x1EEE9AC00](v334);
  v330 = &v313 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v331 = &v313 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v332 = &v313 - v76;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v412 = *(v420 - 8);
  v77 = *(v412 + 64);
  MEMORY[0x1EEE9AC00](v420);
  v386 = &v313 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v387 = &v313 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v388 = &v313 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v392 = &v313 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v349 = &v313 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v394 = &v313 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v395 = &v313 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v357 = &v313 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v396 = &v313 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v362 = &v313 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v364 = &v313 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v313 - v100;
  MEMORY[0x1EEE9AC00](v102);
  v369 = &v313 - v103;
  v329 = sub_1C90627EC();
  v328 = *(v329 - 8);
  v104 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v329);
  v106 = &v313 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  v418 = *(v415 - 8);
  v107 = v418[8];
  MEMORY[0x1EEE9AC00](v415);
  v402 = &v313 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v109);
  v403 = &v313 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v405 = &v313 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v410 = &v313 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v417 = &v313 - v116;
  v117 = a1 + *(*a1 + 152);
  v419 = sub_1C906206C();
  v425 = v118;
  v119 = *a1;
  v120 = *(a1 + *(*a1 + 160)) == 0;
  v121 = 0x79616C70736964;
  if (*(a1 + *(*a1 + 160)))
  {
    v121 = 0x65676175676E616CLL;
  }

  v327 = v121;
  if (v120)
  {
    v122 = 0xE700000000000000;
  }

  else
  {
    v122 = 0xED00006C65646F4DLL;
  }

  v123 = (a1 + *(v119 + 136));
  v124 = *v123;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  v368 = v20;
  v399 = v101;
  v125 = sub_1C9062E6C();
  v126 = __swift_project_value_buffer(v125, qword_1EDA6E8A8);
  sub_1C8F20BF4(a2, v126);
  v127 = v123[1];
  if (qword_1EDA68E08 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v125, qword_1EDA6E8D8);
  sub_1C8F20F18();
  v423 = v123[3];

  v128 = v422;
  sub_1C8F1C2A4(a2);
  if (v128)
  {

    *v421 = v128;
  }

  else
  {
    v422 = v125;

    v423 = v123[4];

    sub_1C8F1C990(a2);
    v326 = v5;

    sub_1C8D5FBD4(v123[2], v130, v131, v132, v133, v134, v135, v136, v313);
    if (qword_1EDA68DE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v422, qword_1EDA6E890);
    sub_1C8F20F18();

    v423 = v123[12];
    sub_1C8F1CDD0();
    v137 = v123[8];
    v138 = a2;
    v139 = *(v123 + 72);
    v423 = v137;
    v424 = v139;
    j__swift_bridgeObjectRetain_0(v137, v139);
    sub_1C8F1D1B4(v138);
    v325 = v138;
    j__swift_bridgeObjectRelease_0(v137, v139);
    if (qword_1EDA68E98 != -1)
    {
      swift_once();
    }

    v140 = v415;
    v141 = __swift_project_value_buffer(v415, qword_1EDA6EA10);
    v142 = v418[2];
    v142(v417, v141, v140);
    v143 = v410;
    if (qword_1EDA68E70 != -1)
    {
      swift_once();
    }

    v144 = __swift_project_value_buffer(v140, qword_1EDA6E9C8);
    v142(v143, v144, v140);
    sub_1C8D5ED2C(v123[7], &v423);
    if (qword_1EDA69640 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v422, qword_1EDA6EAF0);
    v145 = v417;
    sub_1C8F20F18();

    sub_1C8D5F064(v123[5], &v423);
    sub_1C8E294C8();
    sub_1C8F211D8(v145, v106);

    v146 = *(v328 + 8);
    v147 = v329;
    v146(v106, v329);
    sub_1C8D5F064(v123[6], &v423);
    v318 = v128;
    sub_1C8E294C8();
    sub_1C8F211D8(v143, v106);

    v146(v106, v147);
    v148 = v325;
    sub_1C8F1DE4C();
    (*(v412 + 16))(v386, v148, v420);
    if (qword_1EDA68EA8 != -1)
    {
      swift_once();
    }

    v149 = v330;
    qword_1EDA6E5F0(v419, v425, v327, v122);

    sub_1C8D28184(&qword_1EDA69410, &qword_1EC313270, &unk_1C90A7010);
    v150 = v331;
    v151 = v334;
    sub_1C9062A1C();
    v152 = *(v333 + 1);
    v152(v149, v151);
    v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D48, &qword_1C90A7020);
    v153 = swift_allocObject();
    v321 = xmmword_1C906A950;
    *(v153 + 16) = xmmword_1C906A950;
    if (qword_1EDA691E8 != -1)
    {
      swift_once();
    }

    v154 = v422;
    v155 = __swift_project_value_buffer(v422, qword_1EDA6EA48);
    v156 = MEMORY[0x1E69A0048];
    *(v153 + 56) = v154;
    *(v153 + 64) = v156;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v153 + 32));
    v158 = *(v154 - 8);
    v323 = *(v158 + 16);
    v322 = v158 + 16;
    v323(boxed_opaque_existential_1, v155, v154);
    sub_1C8D28184(&qword_1EDA69408, &qword_1EC313270, &unk_1C90A7010);
    v159 = v332;
    sub_1C906280C();

    v152(v150, v151);
    v160 = sub_1C8D28184(&qword_1EDA69360, &qword_1EC318D30, &unk_1C90A7A70);
    sub_1C8D28184(&qword_1EDA69418, &qword_1EC313270, &unk_1C90A7010);
    v161 = v420;
    v421 = v160;
    v162 = v386;
    sub_1C906296C();
    v152(v159, v151);
    v163 = *(v412 + 8);
    v386 = (v412 + 8);
    v334 = v163;
    (v163)(v162, v161);
    v165 = v407;
    v164 = v408;
    v166 = v414;
    if (qword_1EDA69688 != -1)
    {
      swift_once();
    }

    v167 = v406;
    v168 = v419;
    v329 = unk_1EDA6EBA0;
    v330 = qword_1EDA6EB98;
    qword_1EDA6EB98(v419, v425);
    v328 = sub_1C8D28184(&qword_1EDA6B4E0, &qword_1EC3133C8, &unk_1C909F250);
    sub_1C9062A1C();
    v169 = *(v166 + 8);
    v414 = v166 + 8;
    v169(v167, v164);
    v170 = sub_1C8D28184(&qword_1EDA69378, &qword_1EC313278, &qword_1C90C63C0);
    v171 = sub_1C8D28184(&qword_1EDA6B4E8, &qword_1EC3133C8, &unk_1C909F250);
    v172 = v402;
    v173 = v415;
    v332 = v170;
    v327 = v171;
    sub_1C906295C();
    v331 = v169;
    v169(v165, v164);
    if (qword_1EDA69630 != -1)
    {
      swift_once();
    }

    v317 = qword_1EDA6EAE0;
    v316 = *algn_1EDA6EAE8;
    v174 = v389;
    qword_1EDA6EAE0(v168, v425);
    v175 = sub_1C8D28184(&qword_1EDA6B4D0, &qword_1EC313268, &unk_1C909F240);
    v176 = v390;
    v177 = v335;
    v315 = v175;
    sub_1C9062B1C();
    v179 = v404 + 8;
    v178 = *(v404 + 8);
    v178(v174, v177);
    v314 = v178;
    v404 = v179;
    sub_1C906294C();
    v178(v176, v177);
    v181 = v418 + 1;
    v180 = v418[1];
    v180(v172, v173);
    v182 = v180;
    v320 = sub_1C8D28184(&qword_1EDA69388, &qword_1EC313278, &qword_1C90C63C0);
    v183 = v405;
    v184 = v403;
    sub_1C9062A1C();
    v182(v184, v173);
    v185 = v182;
    v333 = v182;
    v319 = sub_1C8D28184(&qword_1EDA69390, &qword_1EC313278, &qword_1C90C63C0);
    v186 = v183;
    v187 = v420;
    v188 = v387;
    sub_1C906296C();
    v185(v186, v173);
    (v334)(v188, v187);
    v189 = v406;
    v190 = v419;
    (v330)(v419, v425);
    v191 = v407;
    v192 = v408;
    sub_1C9062A1C();
    v193 = v189;
    v194 = v192;
    v195 = v191;
    v196 = v192;
    v197 = v331;
    (v331)(v193, v194);
    sub_1C906295C();
    v197(v195, v196);
    v198 = v389;
    v317(v190, v425);
    v199 = v390;
    sub_1C9062B1C();
    v200 = v198;
    v201 = v314;
    v314(v200, v177);
    v202 = v403;
    v203 = v402;
    sub_1C906294C();
    v201(v199, v177);
    v204 = v333;
    v333(v203, v173);
    v205 = v405;
    sub_1C9062A1C();
    v204(v202, v173);
    v206 = v420;
    v207 = v388;
    sub_1C906295C();
    v418 = v181;
    v204(v205, v173);
    (v334)(v207, v206);
    v208 = v419;
    if (qword_1EDA68EB0 != -1)
    {
      swift_once();
    }

    v404 = __swift_project_value_buffer(v416, qword_1EDA6E600);
    if (qword_1EDA626F8 != -1)
    {
      swift_once();
    }

    v209 = v336;
    qword_1EDA6E7B0(v208, v425);
    sub_1C8D28184(&qword_1EDA62CB8, &qword_1EC3133C0, &unk_1C906B550);
    v210 = v337;
    v211 = v339;
    sub_1C9062A1C();
    v212 = *(v338 + 8);
    v212(v209, v211);
    v213 = sub_1C8D28184(&qword_1EDA62C78, &qword_1EC313260, &unk_1C90A7A60);
    sub_1C8D28184(&qword_1EDA62CC0, &qword_1EC3133C0, &unk_1C906B550);
    v214 = v340;
    sub_1C906296C();
    v212(v210, v211);
    if (qword_1EDA626D0 != -1)
    {
      swift_once();
    }

    v215 = v343;
    __swift_project_value_buffer(v343, qword_1EDA6E768);
    sub_1C8D28184(&qword_1EDA62BF0, &qword_1EC319D00, &unk_1C90A7A50);
    v216 = v341;
    sub_1C9062B1C();
    v217 = v416;
    v403 = v213;
    sub_1C906294C();
    (*(v342 + 8))(v216, v215);
    v219 = v413 + 8;
    v218 = *(v413 + 8);
    v218(v214, v217);
    if (qword_1EDA626E8 != -1)
    {
      swift_once();
    }

    v404 = v218;
    v413 = v219;
    v220 = v347;
    v389 = __swift_project_value_buffer(v347, qword_1EDA6E798);
    if (qword_1EDA668E0 != -1)
    {
      swift_once();
    }

    v221 = v398;
    v222 = __swift_project_value_buffer(v398, qword_1EDA6E830);
    v223 = sub_1C8D28184(&qword_1EDA693A0, &qword_1EC319DD0, &unk_1C90A7A40);
    v224 = v397;
    v390 = v222;
    sub_1C9062B1C();
    sub_1C8D28184(&qword_1EDA62CA0, &qword_1EC319CE8, &qword_1C90A6B70);
    v225 = v344;
    v402 = v223;
    sub_1C906294C();
    v226 = *(v409 + 8);
    v409 += 8;
    v387 = v226;
    (v226)(v224, v221);
    sub_1C8D28184(&qword_1EDA62CA8, &qword_1EC319CE8, &qword_1C90A6B70);
    v389 = "assistantSchema.";
    v227 = v345;
    v388 = 0xD000000000000011;
    sub_1C9062B1C();
    v228 = *(v346 + 1);
    v228(v225, v220);
    v229 = v416;
    v230 = v391;
    sub_1C906294C();
    v228(v227, v220);
    (v404)(v230, v229);
    if (qword_1EDA626E0 != -1)
    {
      swift_once();
    }

    v231 = v356;
    __swift_project_value_buffer(v356, qword_1EDA6E780);
    v232 = v405;
    v233 = v415;
    sub_1C9062A1C();
    sub_1C8D28184(&qword_1EDA62C50, &qword_1EC319CE0, &qword_1C90A6B68);
    v234 = v352;
    sub_1C906296C();
    v333(v232, v233);
    if (qword_1EDA68E60 != -1)
    {
      swift_once();
    }

    v235 = v401;
    v236 = __swift_project_value_buffer(v401, qword_1EDA6E9B0);
    v345 = MEMORY[0x1E699FEE0];
    v237 = sub_1C8D28184(&qword_1EDA693C8, &qword_1EC313258, &unk_1C90A7A30);
    v347 = "olDefinitionQueryRequest";
    v238 = v400;
    v405 = v236;
    sub_1C9062B1C();
    v239 = v353;
    v391 = v237;
    sub_1C906294C();
    v240 = *(v411 + 8);
    v411 += 8;
    v346 = v240;
    v240(v238, v235);
    v241 = *(v355 + 8);
    v241(v234, v231);
    sub_1C8D28184(&qword_1EDA62C58, &qword_1EC319CE0, &qword_1C90A6B68);
    v242 = v354;
    sub_1C9062A1C();
    v241(v239, v231);
    sub_1C8D28184(&qword_1EDA62C60, &qword_1EC319CE0, &qword_1C90A6B68);
    v243 = v348;
    v244 = v416;
    v245 = v393;
    sub_1C906296C();
    v246 = v231;
    v247 = v244;
    v241(v242, v246);
    v248 = v404;
    (v404)(v245, v244);
    sub_1C8D28184(&qword_1EDA62C88, &qword_1EC313260, &unk_1C90A7A60);
    v249 = v350;
    sub_1C9062B1C();
    v248(v243, v244);
    v250 = swift_allocObject();
    *(v250 + 16) = v321;
    if (qword_1EDA62690 != -1)
    {
      swift_once();
    }

    v251 = v422;
    v252 = __swift_project_value_buffer(v422, &unk_1EDA6E6D8);
    *(v250 + 56) = v251;
    *(v250 + 64) = MEMORY[0x1E69A0048];
    v253 = __swift_allocate_boxed_opaque_existential_1((v250 + 32));
    v323(v253, v252, v251);
    sub_1C8D28184(&qword_1EDA62C80, &qword_1EC313260, &unk_1C90A7A60);
    v254 = v351;
    sub_1C906280C();

    v248(v249, v247);
    v255 = v349;
    v256 = v420;
    v257 = v392;
    sub_1C906294C();
    v248(v254, v247);
    (v334)(v257, v256);
    v258 = v425;
    if (qword_1EDA68EB8 != -1)
    {
      swift_once();
    }

    v259 = v358;
    qword_1EDA6EA38(v419, v258);
    sub_1C8D28184(&qword_1EDA693B8, &qword_1EC313250, &unk_1C90A7000);
    v260 = v359;
    v261 = v361;
    sub_1C9062B1C();
    v262 = *(v360 + 8);
    v262(v259, v261);
    sub_1C906294C();
    v262(v260, v261);
    (v334)(v255, v256);
    v263 = v365;
    if (qword_1EDA68EA0 != -1)
    {
      swift_once();
    }

    v264 = v363;
    qword_1EDA6EA28(v419, v425);
    v265 = sub_1C8D28184(&qword_1EDA693F0, &qword_1EC313240, &unk_1C90A7A20);
    v266 = v368;
    v416 = v265;
    sub_1C9062B1C();
    v267 = *(v367 + 8);
    v267(v264, v266);
    v268 = swift_allocObject();
    *(v268 + 16) = v321;
    if (qword_1EDA66938 != -1)
    {
      swift_once();
    }

    v269 = v422;
    v270 = __swift_project_value_buffer(v422, qword_1EDA6E860);
    *(v268 + 56) = v269;
    *(v268 + 64) = MEMORY[0x1E69A0048];
    v271 = __swift_allocate_boxed_opaque_existential_1((v268 + 32));
    v323(v271, v270, v269);
    sub_1C8D28184(&qword_1EDA693E8, &qword_1EC313240, &unk_1C90A7A20);
    v272 = v366;
    sub_1C906280C();

    v267(v263, v266);
    v273 = v420;
    v274 = v394;
    sub_1C906294C();
    v267(v272, v266);
    (v334)(v274, v273);
    if (qword_1EDA68E78 != -1)
    {
      swift_once();
    }

    v275 = v373;
    __swift_project_value_buffer(v373, qword_1EDA6E9E0);
    v276 = v397;
    v277 = v398;
    sub_1C9062B1C();
    sub_1C8D28184(&qword_1EDA693D0, &qword_1EC313238, &qword_1C906B0B0);
    v278 = v370;
    sub_1C906294C();
    (v387)(v276, v277);
    sub_1C8D28184(&qword_1EDA693D8, &qword_1EC313238, &qword_1C906B0B0);
    v279 = v371;
    sub_1C9062B1C();
    v280 = *(v372 + 8);
    v280(v278, v275);
    v281 = v357;
    v282 = v395;
    sub_1C906294C();
    v280(v279, v275);
    v283 = v334;
    (v334)(v282, v273);
    v284 = v400;
    v285 = v401;
    sub_1C9062B1C();
    sub_1C906294C();
    v346(v284, v285);
    v283(v281, v273);
    if (qword_1EDA68E48 != -1)
    {
      swift_once();
    }

    v286 = v377;
    __swift_project_value_buffer(v377, qword_1EDA6E980);
    v287 = v406;
    (v330)(v419, v425);

    v289 = v407;
    v288 = v408;
    sub_1C9062A1C();
    v290 = v287;
    v291 = v331;
    (v331)(v290, v288);
    sub_1C8D28184(&qword_1EDA69350, &qword_1EC313230, &unk_1C90A6FF0);
    v292 = v374;
    sub_1C906296C();
    v291(v289, v288);
    sub_1C8D28184(&qword_1EDA69358, &qword_1EC313230, &unk_1C90A6FF0);
    v293 = v375;
    sub_1C9062B1C();
    v294 = *(v376 + 8);
    v294(v292, v286);
    v295 = v362;
    v296 = v420;
    v297 = v396;
    sub_1C906294C();
    v294(v293, v286);
    v298 = v334;
    (v334)(v297, v296);
    v299 = v296;
    if (qword_1EDA68E88 != -1)
    {
      swift_once();
    }

    v300 = v380;
    __swift_project_value_buffer(v380, qword_1EDA6E9F8);
    sub_1C8D28184(&qword_1EDA693C0, &qword_1EC313218, &qword_1C906B0A0);
    v301 = v378;
    sub_1C9062B1C();
    v302 = v364;
    sub_1C906294C();
    (*(v379 + 8))(v301, v300);
    v298(v295, v299);
    v303 = v326;
    v304 = v299;
    if (qword_1EDA68E50 != -1)
    {
      swift_once();
    }

    v305 = v383;
    __swift_project_value_buffer(v383, qword_1EDA6E998);
    sub_1C8D28184(&qword_1EDA693A8, &qword_1EC313210, &unk_1C90A7A10);
    v306 = v381;
    sub_1C9062B1C();
    sub_1C906294C();
    (*(v382 + 8))(v306, v305);
    v298(v302, v304);
    if (qword_1EC3111B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v303, qword_1EC3906B0);
    v307 = v303;
    sub_1C8D28184(&qword_1EC319DD8, &qword_1EC313200, &qword_1C906B098);
    v308 = v384;
    sub_1C9062B1C();
    sub_1C8D28184(&qword_1EC319DE0, &qword_1EC313200, &qword_1C906B098);
    v309 = v369;
    v310 = v399;
    sub_1C906295C();
    (*(v385 + 8))(v308, v307);
    v298(v310, v304);
    v311 = v415;
    v312 = v333;
    v333(v410, v415);
    v312(v417, v311);
    return (*(v412 + 40))(v325, v309, v304);
  }

  return result;
}

uint64_t sub_1C8F1C2A4(uint64_t a1)
{
  v87 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D00, &unk_1C90A7A50);
  v3 = OUTLINED_FUNCTION_11(v81);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v82 = v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313260, &unk_1C90A7A60);
  v14 = OUTLINED_FUNCTION_11(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v72 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v26 = OUTLINED_FUNCTION_11(v25);
  v85 = v27;
  v86 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  v84 = v72 - v31;
  v32 = sub_1C90627EC();
  v33 = OUTLINED_FUNCTION_11(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v88 = v40 - v39;
  result = *v1;
  if (*(*v1 + 16))
  {
    v76 = v35;
    v77 = v24;
    v83 = v38;
    v78 = v5;
    v79 = v16;
    sub_1C8F174C4(result);
    v80 = v2;
    v92 = v42;
    if (qword_1EC3112C0 != -1)
    {
      swift_once();
    }

    v43 = sub_1C9062E6C();
    __swift_project_value_buffer(v43, qword_1EC390958);
    v90 = v43;
    v91 = MEMORY[0x1E69A0050];
    __swift_allocate_boxed_opaque_existential_1(v89);
    OUTLINED_FUNCTION_10_0(v43);
    (*(v44 + 16))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_2_36();
    sub_1C8D28184(v45, &qword_1EC312558, &qword_1C9066990);
    sub_1C90640CC();
    __swift_destroy_boxed_opaque_existential_1(v89);

    v46 = sub_1C906247C();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = sub_1C906246C();
    v50 = *(v46 + 48);
    v51 = *(v46 + 52);
    swift_allocObject();
    v52 = sub_1C906246C();
    (*(v85 + 32))(v84, v87, v86);
    if (qword_1EDA68EB0 != -1)
    {
      swift_once();
    }

    v53 = v13;
    __swift_project_value_buffer(v13, qword_1EDA6E600);
    OUTLINED_FUNCTION_5_47();
    v57 = sub_1C8D28184(v54, v55, v56);
    v73 = v21;
    v75 = v57;
    sub_1C906249C();
    v74 = v52;
    if (qword_1EDA626D0 != -1)
    {
      swift_once();
    }

    v58 = v81;
    __swift_project_value_buffer(v81, qword_1EDA6E768);
    sub_1C8D28184(&qword_1EC319E08, &qword_1EC319D00, &unk_1C90A7A50);
    v72[1] = v49;
    sub_1C906249C();
    v59 = v83;
    v90 = v83;
    v91 = MEMORY[0x1E699FE60];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
    v61 = v76;
    (*(v76 + 16))(boxed_opaque_existential_1, v88, v59);
    sub_1C8D28184(&qword_1EC319E10, &qword_1EC319D00, &unk_1C90A7A50);
    v62 = v82;
    sub_1C906292C();
    v63 = *(v78 + 8);
    v63(v10, v58);
    __swift_destroy_boxed_opaque_existential_1(v89);
    sub_1C8D28184(&qword_1EDA62C78, &qword_1EC313260, &unk_1C90A7A60);
    v64 = v77;
    v65 = v73;
    sub_1C906293C();
    v63(v62, v58);
    v66 = *(v79 + 8);
    v66(v65, v53);
    OUTLINED_FUNCTION_6_40();
    sub_1C8D28184(v67, v68, v69);
    v70 = v86;
    v71 = v84;
    sub_1C906293C();

    v66(v64, v53);
    (*(v85 + 8))(v71, v70);
    return (*(v61 + 8))(v88, v83);
  }

  return result;
}

uint64_t sub_1C8F1C990(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313210, &unk_1C90A7A10);
  v13 = OUTLINED_FUNCTION_11(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  result = *v1;
  if (*(*v1 + 16))
  {
    v42 = v18;
    v45 = v17;
    v47 = a1;
    sub_1C8F174C4(result);
    v23 = v22;
    if (qword_1EDA68E50 != -1)
    {
      swift_once();
    }

    v43 = v6;
    v44 = v11;
    v46 = v4;
    v48 = v2;
    __swift_project_value_buffer(v12, qword_1EDA6E998);
    v50[6] = v23;
    if (qword_1EC311360 != -1)
    {
      swift_once();
    }

    v24 = sub_1C9062E6C();
    __swift_project_value_buffer(v24, qword_1EC390AC8);
    v49[3] = v24;
    v49[4] = MEMORY[0x1E69A0050];
    __swift_allocate_boxed_opaque_existential_1(v49);
    OUTLINED_FUNCTION_10_0(v24);
    (*(v25 + 16))();
    v50[3] = sub_1C90627EC();
    v50[4] = MEMORY[0x1E699FE60];
    __swift_allocate_boxed_opaque_existential_1(v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_2_36();
    sub_1C8D28184(v26, &qword_1EC312558, &qword_1C9066990);
    sub_1C90640CC();
    __swift_destroy_boxed_opaque_existential_1(v49);

    OUTLINED_FUNCTION_4_49();
    sub_1C8D28184(v27, v28, v29);
    sub_1C906292C();
    __swift_destroy_boxed_opaque_existential_1(v50);
    v30 = v43;
    v31 = v44;
    v32 = v46;
    (*(v43 + 32))(v44, v47, v46);
    OUTLINED_FUNCTION_3_52();
    sub_1C8D28184(v33, v34, &unk_1C90A7A10);
    v35 = v42;
    sub_1C9062B1C();
    OUTLINED_FUNCTION_6_40();
    sub_1C8D28184(v36, v37, v38);
    OUTLINED_FUNCTION_5_47();
    sub_1C8D28184(v39, &qword_1EC313210, &unk_1C90A7A10);
    sub_1C906293C();
    v40 = *(v45 + 8);
    v40(v35, v12);
    (*(v30 + 8))(v31, v32);
    return (v40)(v20, v12);
  }

  return result;
}

void sub_1C8F1CDD0()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v3 = sub_1C9062E4C();
  v4 = OUTLINED_FUNCTION_11(v3);
  v42 = v5;
  v43 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v41 = v9 - v8;
  v40 = sub_1C9062B9C();
  v10 = OUTLINED_FUNCTION_11(v40);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  v18 = sub_1C9062ADC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v37 - v26;
  v38 = *v0;
  if (qword_1EDA68E30 != -1)
  {
    swift_once();
  }

  v28 = sub_1C9062E6C();
  __swift_project_value_buffer(v28, qword_1EDA6E938);
  sub_1C9062E5C();
  v29 = *(v22 + 32);
  v39 = v27;
  v29(v27, v2, v20);
  sub_1C9062AAC();
  sub_1C9062A9C();
  sub_1C9062B8C();
  sub_1C9062ABC();
  v37 = v2;
  v30 = *(v12 + 8);
  v31 = v40;
  v30(v17, v40);
  sub_1C9062A9C();
  sub_1C9062B8C();
  sub_1C9062ABC();

  v30(v17, v31);
  sub_1C9062A9C();
  v32 = MEMORY[0x1E69E6530];
  v33 = MEMORY[0x1E69A0178];
  v45 = MEMORY[0x1E69E6530];
  v46 = MEMORY[0x1E69A0178];
  v34 = v38;
  v44[0] = v38;
  sub_1C9062ACC();
  sub_1C8D3F0C4(v44, &qword_1EC313248, &unk_1C906B540);
  sub_1C9062A9C();
  v45 = v32;
  v46 = v33;
  v44[0] = v34;
  sub_1C9062ACC();
  sub_1C8D3F0C4(v44, &qword_1EC313248, &unk_1C906B540);
  sub_1C9062A9C();
  v35 = v41;
  sub_1C9062E3C();
  sub_1C8D28184(&qword_1EDA69368, &qword_1EC318D30, &unk_1C90A7A70);
  v36 = v39;
  sub_1C906291C();
  (*(v42 + 8))(v35, v43);
  (*(v22 + 8))(v36, v20);
  OUTLINED_FUNCTION_163();
}

void sub_1C8F1D1B4(uint64_t a1)
{
  v126 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94_1();
  v123 = sub_1C90627DC();
  v10 = OUTLINED_FUNCTION_11(v123);
  v122 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v121 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313218, &qword_1C906B0A0);
  OUTLINED_FUNCTION_11(v16);
  v128 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  v127 = &v112[-v21];
  v134 = sub_1C90627EC();
  v22 = OUTLINED_FUNCTION_11(v134);
  v135 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v112[-v30];
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319DE8, &qword_1C90A7A80);
  v32 = OUTLINED_FUNCTION_11(v130);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v35);
  v129 = &v112[-v38];
  v39 = *v1;
  if (!*(*v1 + 16))
  {
    return;
  }

  v114 = v16;
  v115 = v37;
  v116 = v31;
  v117 = v36;
  v118 = v3;
  v119 = v6;
  v120 = v4;
  v133 = v2;
  v40 = v1[8];
  v149 = v39;
  v41 = v39 + 56;
  v42 = 1 << *(v39 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v39 + 56);
  j__swift_bridgeObjectRetain_0(v39, v40);
  v113 = v40;
  j__swift_bridgeObjectRetain_0(v39, v40);
  v45 = 0;
  v46 = (v42 + 63) >> 6;
  v125 = v28;
  v124 = v39;
  while (v44)
  {
LABEL_10:
    v48 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v49 = *(v39 + 48) + 40 * (v48 | (v45 << 6));
    if (!*(v49 + 32))
    {
      v50 = *v49;
      v51 = *(v49 + 8);
      sub_1C8D54590(*v49, v51, *(v49 + 16), *(v49 + 24), 0);

      v52 = sub_1C906316C();
      if (*(v52 + 16) && (v53 = sub_1C8CAE064(), (v54 & 1) != 0))
      {
        v55 = (*(v52 + 56) + 16 * v53);
        v56 = v55[1];
        v132 = *v55;
        v131 = v56;
      }

      else
      {

        v132 = 0x446E776F6E6B6E55;
        v131 = 0xED00006E69616D6FLL;
      }

      *&v145 = v50;
      *(&v145 + 1) = v51;
      v146 = 0;
      v147 = 0;
      v148 = 0;

      sub_1C8F1F094(&v145, &v137);
      OUTLINED_FUNCTION_62_1();
      sub_1C8F214D8(v137, v138, v139, v140, v141);
      v143[0] = v50;
      v143[1] = v51;
      v143[2] = v132;
      v143[3] = v131;
      v144 = 1;
      sub_1C8D87EF8(&v137, v143);
      OUTLINED_FUNCTION_62_1();
      sub_1C8D3ED20(v137, v138, v139, v140, v141);
      v28 = v125;
      v39 = v124;
    }
  }

  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_36:
      OUTLINED_FUNCTION_10_40();
      swift_once();
      goto LABEL_27;
    }

    if (v47 >= v46)
    {
      break;
    }

    v44 = *(v41 + 8 * v47);
    ++v45;
    if (v44)
    {
      v45 = v47;
      goto LABEL_10;
    }
  }

  v57 = v149;
  v58 = v133;
  sub_1C8F1770C(v149);
  v60 = v59;
  v133 = v58;
  if (v113)
  {
    v61 = *(v59 + 16);
    v132 = v61;
    if (v61)
    {
      v124 = v57;
      v142 = MEMORY[0x1E69E7CC0];
      sub_1C8D09DBC(0, v61, 0);
      v131 = v60;
      v62 = (v60 + 40);
      v63 = v142;
      v64 = v61;
      do
      {
        v66 = *(v62 - 1);
        v65 = *v62;
        v67 = qword_1EDA62948;

        if (v67 != -1)
        {
          OUTLINED_FUNCTION_10_40();
          swift_once();
        }

        v68 = sub_1C9062E6C();
        __swift_project_value_buffer(v68, qword_1EDA6E7C0);
        v140 = v68;
        v141 = MEMORY[0x1E69A0050];
        __swift_allocate_boxed_opaque_existential_1(&v137);
        OUTLINED_FUNCTION_10_0(v68);
        (*(v69 + 16))();
        v136[3] = MEMORY[0x1E69E6158];
        v136[4] = MEMORY[0x1E69A0130];
        v136[0] = v66;
        v136[1] = v65;
        sub_1C9062D6C();
        sub_1C8D3F0C4(v136, &qword_1EC313248, &unk_1C906B540);
        __swift_destroy_boxed_opaque_existential_1(&v137);
        v142 = v63;
        v71 = *(v63 + 16);
        v70 = *(v63 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_1C8D09DBC(v70 > 1, v71 + 1, 1);
          v63 = v142;
        }

        *(v63 + 16) = v71 + 1;
        (*(v135 + 32))(v63 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v71, v28, v134);
        v62 += 2;
        --v64;
      }

      while (v64);
    }

    else
    {

      v63 = MEMORY[0x1E69E7CC0];
    }

    v137 = v63;
    v90 = v121;
    sub_1C90627AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162C8, &unk_1C9084E70);
    OUTLINED_FUNCTION_2_36();
    sub_1C8D28184(v91, &qword_1EC3162C8, &unk_1C9084E70);
    v92 = MEMORY[0x1E699FE60];
    v93 = v116;
    sub_1C90640DC();
    (*(v122 + 8))(v90, v123);

    v94 = v130;
    if (qword_1EDA68E88 != -1)
    {
      OUTLINED_FUNCTION_15_28();
    }

    v95 = v114;
    __swift_project_value_buffer(v114, qword_1EDA6E9F8);
    v96 = v134;
    v140 = v134;
    v141 = v92;
    v97 = __swift_allocate_boxed_opaque_existential_1(&v137);
    v98 = v135;
    (*(v135 + 16))(v97, v93, v96);
    OUTLINED_FUNCTION_4_49();
    sub_1C8D28184(v99, v100, &qword_1C906B0A0);
    OUTLINED_FUNCTION_25_21();
    sub_1C906292C();
    __swift_destroy_boxed_opaque_existential_1(&v137);
    OUTLINED_FUNCTION_3_52();
    sub_1C8D28184(v101, v102, &qword_1C906B0A0);
    OUTLINED_FUNCTION_32_19();
    v84 = v92;
    sub_1C9062B0C();
    v103 = OUTLINED_FUNCTION_30_24();
    v104(v103, v95);
    v140 = MEMORY[0x1E69E6530];
    v141 = MEMORY[0x1E69A0178];
    v137 = v132;
    type metadata accessor for ToolRecord();
    OUTLINED_FUNCTION_17_30();
    sub_1C9062D8C();
    v105 = OUTLINED_FUNCTION_20_26();
    v132 = v106;
    v106(v105, v94);
    (*(v98 + 8))(v93, v96);
    __swift_destroy_boxed_opaque_existential_1(&v137);
    v88 = v94;
    goto LABEL_34;
  }

  v136[0] = v60;
  v41 = v114;
  if (qword_1EDA62948 != -1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v72 = sub_1C9062E6C();
  __swift_project_value_buffer(v72, qword_1EDA6E7C0);
  v140 = v72;
  v141 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(&v137);
  OUTLINED_FUNCTION_10_0(v72);
  (*(v73 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  OUTLINED_FUNCTION_2_36();
  sub_1C8D28184(v74, &qword_1EC312558, &qword_1C9066990);
  v75 = v116;
  sub_1C90640CC();
  __swift_destroy_boxed_opaque_existential_1(&v137);

  v76 = v130;
  if (qword_1EDA68E88 != -1)
  {
    OUTLINED_FUNCTION_15_28();
  }

  __swift_project_value_buffer(v41, qword_1EDA6E9F8);
  v77 = v134;
  v140 = v134;
  v141 = MEMORY[0x1E699FE60];
  v78 = __swift_allocate_boxed_opaque_existential_1(&v137);
  v79 = v135;
  (*(v135 + 16))(v78, v75, v77);
  OUTLINED_FUNCTION_4_49();
  sub_1C8D28184(v80, v81, &qword_1C906B0A0);
  OUTLINED_FUNCTION_25_21();
  sub_1C906292C();
  __swift_destroy_boxed_opaque_existential_1(&v137);
  OUTLINED_FUNCTION_3_52();
  sub_1C8D28184(v82, v83, &qword_1C906B0A0);
  OUTLINED_FUNCTION_32_19();
  v84 = &qword_1EC312558;
  sub_1C9062B0C();
  v85 = OUTLINED_FUNCTION_30_24();
  v86(v85, v41);
  v140 = MEMORY[0x1E69E6530];
  v141 = MEMORY[0x1E69A0178];
  v137 = 0;
  type metadata accessor for ToolRecord();
  OUTLINED_FUNCTION_17_30();
  sub_1C9062BCC();
  v87 = OUTLINED_FUNCTION_20_26();
  v88 = v76;
  v132 = v89;
  v89(v87, v76);
  (*(v79 + 8))(v75, v77);
  __swift_destroy_boxed_opaque_existential_1(&v137);
LABEL_34:
  v107 = v120;
  v108 = v119;
  v109 = v118;
  (*(v119 + 32))(v118, v126, v120);
  v110 = v84;
  sub_1C9062BEC();
  sub_1C8D28184(&qword_1EDA62C30, &qword_1EC318D30, &unk_1C90A7A70);
  sub_1C9062A6C();
  v111 = v132;
  (v132)(&qword_1EC313218, v88);
  (*(v108 + 8))(v109, v107);
  v111(v110, v88);
}

void sub_1C8F1DE4C()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313200, &qword_1C906B098);
  OUTLINED_FUNCTION_11(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27[-v17];
  v19 = v0 + *(*v0 + 136);
  if (*(v19 + 104) >> 61 <= 4uLL)
  {
    if (qword_1EC3111B0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v11, qword_1EC3906B0);
    (*(v13 + 16))(v18, v20, v11);
    v21 = *(v19 + 104);
    sub_1C8D5F978();
    if (qword_1EC311230 != -1)
    {
      swift_once();
    }

    v22 = sub_1C9062E6C();
    __swift_project_value_buffer(v22, qword_1EC390828);
    sub_1C8F20F18();

    (*(v5 + 32))(v10, v2, v3);
    OUTLINED_FUNCTION_6_40();
    sub_1C8D28184(v23, v24, v25);
    OUTLINED_FUNCTION_5_47();
    sub_1C8D28184(v26, &qword_1EC313200, &qword_1C906B098);
    sub_1C906293C();
    (*(v5 + 8))(v10, v3);
    (*(v13 + 8))(v18, v11);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F1E13C()
{
  v0 = sub_1C902E6D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C8F1E204@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  *a3 = *a2;
}

unint64_t sub_1C8F1E274(uint64_t a1)
{
  result = sub_1C8F1E29C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8F1E29C()
{
  result = qword_1EDA69228[0];
  if (!qword_1EDA69228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA69228);
  }

  return result;
}

unint64_t sub_1C8F1E2F0(uint64_t a1)
{
  result = sub_1C8F1E318();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8F1E318()
{
  result = qword_1EC319DB0;
  if (!qword_1EC319DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DB0);
  }

  return result;
}

unint64_t sub_1C8F1E36C(uint64_t a1)
{
  result = sub_1C8F1E394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8F1E394()
{
  result = qword_1EC319DB8;
  if (!qword_1EC319DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DB8);
  }

  return result;
}

unint64_t sub_1C8F1E3E8(uint64_t a1)
{
  result = sub_1C8F1E410();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8F1E410()
{
  result = qword_1EC319DC0;
  if (!qword_1EC319DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DC0);
  }

  return result;
}

unint64_t sub_1C8F1E464(uint64_t a1)
{
  result = sub_1C8F1E48C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8F1E48C()
{
  result = qword_1EC319DC8;
  if (!qword_1EC319DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DC8);
  }

  return result;
}

uint64_t sub_1C8F1E4EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C8F1E52C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ToolDefinitionQueryRequest()
{
  result = qword_1EDA69008;
  if (!qword_1EDA69008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C8F1E624(uint64_t a1)
{
  OUTLINED_FUNCTION_16_28(a1);
  TypedValue.hash(into:)();
  sub_1C9064DBC();
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_22_29();
  while (1)
  {
    OUTLINED_FUNCTION_24_26(v6);
    if ((v7 & 1) == 0)
    {
      *v2 = 0xF000000000000007;
      return;
    }

    v23 = *(*(v4 + 48) + 8 * v3);

    static TypedValue.== infix(_:_:)();
    v9 = v8;

    if (v9)
    {
      break;
    }

    v6 = v3 + 1;
  }

  v10 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_36_18();
  if ((v12 & 1) == 0)
  {
    sub_1C8D8DE88();
    v11 = v23;
  }

  v13 = OUTLINED_FUNCTION_26_18(v11);
  v14 = sub_1C8F1F458(v13);
  OUTLINED_FUNCTION_37_19(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1C8F1E700(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C9064DBC();
  v8 = *(v6 + 32);
  OUTLINED_FUNCTION_22_29();
  while (1)
  {
    v10 = v9 & v3;
    if (((*(v6 + 56 + (((v9 & v3) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v3)) & 1) == 0)
    {
      return 0;
    }

    v11 = (*(v6 + 48) + 16 * v10);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C9064C2C() & 1) != 0)
    {
      break;
    }

    v9 = v10 + 1;
  }

  v13 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_36_18();
  if ((v15 & 1) == 0)
  {
    sub_1C8D8D458();
    v14 = v29;
  }

  v16 = (*(v14 + 48) + 16 * v10);
  v17 = *v16;
  v18 = v16[1];
  v19 = sub_1C8F1F60C(v10);
  OUTLINED_FUNCTION_37_19(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29);
  return v17;
}

unint64_t sub_1C8F1E818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v4 = *v2;
  result = sub_1C8D31238(*(*v2 + 40));
  v11 = -1 << *(v4 + 32);
  v12 = result & ~v11;
  if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_128:
    *v83 = 0u;
    *(v83 + 16) = 0u;
    *(v83 + 32) = -1;
    return result;
  }

  v13 = ~v11;
  v78 = 0x80000001C90CA2E0;
  v79 = 0x80000001C90CA300;
  v80 = 0x80000001C90CA320;
  v81 = 0x80000001C90CA340;
  v85 = 0x80000001C90CA380;
  v86 = 0x80000001C90CA360;
  while (1)
  {
    v87 = 5 * v12;
    v89 = v12;
    v14 = *(v4 + 48) + 40 * v12;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);
    v95 = v17;
    v93 = v19;
    if (!v19)
    {
      OUTLINED_FUNCTION_16();
      v96 = v21;
      v99 = v85;

      MEMORY[0x1CCA81A90](v16, v15);
      goto LABEL_7;
    }

    if (v19 == 1)
    {
      OUTLINED_FUNCTION_16();
      v96 = v20;
      v99 = v86;

      MEMORY[0x1CCA81A90](v17, v18);

      MEMORY[0x1CCA81A90](46, 0xE100000000000000);

      MEMORY[0x1CCA81A90](v16, v15);

LABEL_7:
      v22 = v96;
      v23 = v99;
      goto LABEL_8;
    }

    if (!(v17 | v15 | v16 | v18))
    {
      v23 = 0xE700000000000000;
      v22 = 0x6E776F6E6B6E75;
      goto LABEL_8;
    }

    v46 = v17 | v15 | v18;
    v47 = v16 == 1 && v46 == 0;
    v22 = 0x6F6363416C69616DLL;
    v23 = 0xEB00000000746E75;
    if (!v47)
    {
      v48 = v16 == 2 && v46 == 0;
      v22 = 0x726464416C69616DLL;
      v23 = 0xED00006565737365;
      if (!v48)
      {
        v49 = v16 == 3 && v46 == 0;
        v22 = 0x7373654D6C69616DLL;
        v23 = 0xEB00000000656761;
        if (!v49)
        {
          if (v16 == 4 && v46 == 0)
          {
            v23 = 0xE700000000000000;
            v22 = 0x786F626C69616DLL;
            goto LABEL_8;
          }

          if (v16 == 5 && v46 == 0)
          {
            v22 = 0x654D746E65746E69;
            v60 = 0x6567617373;
LABEL_67:
            v23 = v60 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            goto LABEL_8;
          }

          if (v16 == 6 && !v46)
          {
            v22 = 0x476567617373656DLL;
            v52 = 1886744434;
LABEL_44:
            v23 = v52 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_8;
          }

          if (v16 != 7 || v46)
          {
            if (v16 != 8 || v46)
            {
              if (v16 == 9 && !v46)
              {
                v22 = 0x6E45657571696E75;
                v52 = 2037672308;
                goto LABEL_44;
              }

              if (v16 != 10 || v46)
              {
                if (v16 == 11 && !v46)
                {
                  v22 = 0x4564657865646E69;
                  v60 = 0x797469746ELL;
                  goto LABEL_67;
                }

                if (v16 != 12 || v46)
                {
                  if (v16 != 13 || (v22 = 0xD000000000000010, v23 = v79, v46))
                  {
                    if (v16 != 14 || v46)
                    {
                      if (v46)
                      {
                        v70 = 0;
                      }

                      else
                      {
                        v70 = v16 == 15;
                      }

                      if (v70)
                      {
                        v23 = 0xEC00000068637261;
                      }

                      else
                      {
                        v23 = 0xEF52434F68637261;
                      }

                      v22 = 0x65536C6175736976;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_16();
                      v22 = v68 + 10;
                      v23 = v78;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_16();
                  v22 = v66 + 5;
                  v23 = v80;
                }
              }

              else
              {
                v22 = 0x6C62617461647075;
                v23 = 0xEF797469746E4565;
              }
            }

            else
            {
              OUTLINED_FUNCTION_42_5();
              v23 = v64 + 15;
              v22 = 0x6E6569736E617274;
            }
          }

          else
          {
            OUTLINED_FUNCTION_16();
            v22 = v62 + 2;
            v23 = v81;
          }
        }
      }
    }

LABEL_8:
    v94 = v18;
    v24 = *a1;
    v25 = a1[1];
    if (!*(a1 + 32))
    {
      OUTLINED_FUNCTION_16();
      v97 = v30;
      v100 = v85;
      v32 = v31;
      v26 = MEMORY[0x1CCA81A90](v24, v25);
      v22 = v32;
      goto LABEL_12;
    }

    v26 = a1[2];
    v27 = a1[3];
    if (*(a1 + 32) == 1)
    {
      OUTLINED_FUNCTION_16();
      v97 = v28;
      v100 = v86;
      v84 = v29;
      MEMORY[0x1CCA81A90]();

      MEMORY[0x1CCA81A90](46, 0xE100000000000000);

      MEMORY[0x1CCA81A90](v24, v25);

      v22 = v84;
LABEL_12:
      v33 = v97;
      v34 = v100;
      goto LABEL_13;
    }

    if (!(v26 | v25 | v24 | v27))
    {
      v34 = 0xE700000000000000;
      v33 = 0x6E776F6E6B6E75;
      goto LABEL_13;
    }

    v53 = v26 | v25 | v27;
    if (v24 != 1 || (OUTLINED_FUNCTION_50_2(), v33 = v54 | 0x6F63634100000000, v34 = 0xEB00000000746E75, v53))
    {
      if (v24 != 2 || (OUTLINED_FUNCTION_50_2(), v33 = v55 | 0x7264644100000000, v34 = 0xED00006565737365, v53))
      {
        if (v24 != 3 || (OUTLINED_FUNCTION_50_2(), v33 = v56 | 0x7373654D00000000, v34 = 0xEB00000000656761, v53))
        {
          if (v24 == 4 && !v53)
          {
            v34 = 0xE700000000000000;
            OUTLINED_FUNCTION_50_2();
            v33 = v57 | 0x786F6200000000;
            goto LABEL_13;
          }

          if (v24 == 5 && !v53)
          {
            v33 = 0x654D746E65746E69;
            v58 = 0x6567617373;
LABEL_60:
            v34 = v58 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            goto LABEL_13;
          }

          if (v24 == 6 && !v53)
          {
            v33 = 0x476567617373656DLL;
            v59 = 1886744434;
LABEL_65:
            v34 = v59 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_13;
          }

          if (v24 != 7 || v53)
          {
            if (v24 != 8 || v53)
            {
              if (v24 == 9 && !v53)
              {
                v33 = 0x6E45657571696E75;
                v59 = 2037672308;
                goto LABEL_65;
              }

              if (v24 != 10 || v53)
              {
                if (v24 == 11 && !v53)
                {
                  v33 = 0x4564657865646E69;
                  v58 = 0x797469746ELL;
                  goto LABEL_60;
                }

                if (v24 != 12 || v53)
                {
                  if (v24 != 13 || (v33 = 0xD000000000000010, v34 = v79, v53))
                  {
                    if (v24 != 14 || v53)
                    {
                      if (v53)
                      {
                        v69 = 0;
                      }

                      else
                      {
                        v69 = v24 == 15;
                      }

                      if (v69)
                      {
                        v34 = 0xEC00000068637261;
                      }

                      else
                      {
                        v34 = 0xEF52434F68637261;
                      }

                      v33 = 0x65536C6175736976;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_16();
                      v33 = v67 + 10;
                      v34 = v78;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_16();
                  v33 = v65 + 5;
                  v34 = v80;
                }
              }

              else
              {
                v33 = 0x6C62617461647075;
                v34 = 0xEF797469746E4565;
              }
            }

            else
            {
              OUTLINED_FUNCTION_42_5();
              v34 = v63 + 15;
              v33 = 0x6E6569736E617274;
            }
          }

          else
          {
            OUTLINED_FUNCTION_16();
            v33 = v61 + 2;
            v34 = v81;
          }
        }
      }
    }

LABEL_13:
    if (v22 == v33 && v23 == v34)
    {
      break;
    }

    v36 = sub_1C9064C2C();
    v37 = v36;
    OUTLINED_FUNCTION_39_17(v36, v38, v39, v40, v41, v42, v43, v44, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v89, v92, v93, v94, v95);

    v45 = v90;
    if (v37)
    {
      goto LABEL_130;
    }

    v12 = (v90 + 1) & v13;
    if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_128;
    }
  }

  OUTLINED_FUNCTION_39_17(v26, v27, v33, v6, v7, v8, v9, v10, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v89, v92, v93, v94, v95);

  v45 = v91;
LABEL_130:
  v71 = *v82;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v82;
  v98 = *v82;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C8D8DF50();
    v73 = v98;
  }

  v74 = *(v73 + 48) + 8 * v88;
  v75 = *(v74 + 32);
  v76 = *(v74 + 16);
  *v83 = *v74;
  *(v83 + 16) = v76;
  *(v83 + 32) = v75;
  result = sub_1C8F1F7C4(v45);
  *v82 = v98;
  return result;
}

unint64_t sub_1C8F1F094@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  result = sub_1C8D307DC(*(*v2 + 40));
  v27 = v3;
  v29 = ~(-1 << *(v3 + 32));
  v30 = v3 + 56;
  while (1)
  {
    v5 = result & v29;
    if (((*(v30 + (((result & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v29)) & 1) == 0)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = -1;
      return result;
    }

    v6 = *(v27 + 48) + 40 * v5;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = *(v6 + 32);
    v31 = *a1;
    v32 = a1[1];
    v33 = *(a1 + 32);
    sub_1C8D54590(*v6, v8, v9, v10, v11);
    SystemToolProtocol.Identifier.rawValue.getter();
    v13 = v12;
    v15 = v14;
    SystemToolProtocol.Identifier.rawValue.getter();
    if (v13 == v17 && v15 == v16)
    {
      break;
    }

    v19 = sub_1C9064C2C();
    sub_1C8D3ED20(v7, v8, v9, v10, v11);

    if (v19)
    {
      goto LABEL_11;
    }

    result = v5 + 1;
  }

  sub_1C8D3ED20(v7, v8, v9, v10, v11);

LABEL_11:
  v20 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v2;
  v34 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C8D8E0A4();
    v22 = v34;
  }

  v23 = *(v22 + 48) + 40 * v5;
  v24 = *(v23 + 32);
  v25 = *(v23 + 16);
  *a2 = *v23;
  *(a2 + 16) = v25;
  *(a2 + 32) = v24;
  result = sub_1C8F1FD98(v5);
  *v2 = v34;
  return result;
}

uint64_t sub_1C8F1F298(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_1C9064D6C();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v8) == a1)
    {
      break;
    }

    v6 = v8 + 1;
  }

  v10 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_36_18();
  if ((v12 & 1) == 0)
  {
    sub_1C8D8E198();
    v11 = v23;
  }

  v9 = *(*(v11 + 48) + 8 * v8);
  v13 = sub_1C8F1FFDC(v8);
  OUTLINED_FUNCTION_37_19(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
  return v9;
}

void sub_1C8F1F37C(uint64_t a1)
{
  OUTLINED_FUNCTION_16_28(a1);
  TypeIdentifier.hash(into:)(v21);
  sub_1C9064DBC();
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_22_29();
  while (1)
  {
    OUTLINED_FUNCTION_24_26(v6);
    if ((v7 & 1) == 0)
    {
      *v2 = 0xF000000000000007;
      return;
    }

    v21[0] = *(*(v4 + 48) + 8 * v3);

    v8 = static TypeIdentifier.== infix(_:_:)(v21, &v22);

    if (v8)
    {
      break;
    }

    v6 = v3 + 1;
  }

  v9 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_36_18();
  if ((v11 & 1) == 0)
  {
    sub_1C8D8D444();
    v10 = v21[0];
  }

  OUTLINED_FUNCTION_26_18(v10);
  sub_1C8F20154();
  OUTLINED_FUNCTION_37_19(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
}

unint64_t sub_1C8F1F458(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1C90646EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v23 = *(*(v3 + 48) + 8 * v6);
        sub_1C9064D7C();

        TypedValue.hash(into:)();
        v12 = sub_1C9064DBC();

        v13 = v12 & v7;
        if (v2 >= v10)
        {
          if (v13 >= v10 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v10 || v2 >= v13)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C8F1F60C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1C90646EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1C9064D7C();

        sub_1C9063FBC();
        v15 = sub_1C9064DBC();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C8F1F7C4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C90646EC();
    v9 = v4;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v30 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48) + 40 * v6;
        v13 = *v11;
        v12 = *(v11 + 8);
        v14 = *(v11 + 24);
        v32 = *(v11 + 16);
        v15 = *(v11 + 32);
        sub_1C9064D7C();
        v31 = v14;
        if (v15)
        {
          if (v15 == 1)
          {

            MEMORY[0x1CCA81A90](v32, v14);

            MEMORY[0x1CCA81A90](46, 0xE100000000000000);

            MEMORY[0x1CCA81A90](v13, v12);
          }
        }

        else
        {

          MEMORY[0x1CCA81A90](v13, v12);
        }

        sub_1C9063FBC();

        v16 = sub_1C9064DBC();
        sub_1C8D3ED20(v13, v12, v32, v31, v15);
        v17 = v16 & v7;
        if (v2 >= v30)
        {
          if (v17 >= v30 && v2 >= v17)
          {
LABEL_19:
            v20 = *(v3 + 48);
            v21 = v20 + 40 * v2;
            v22 = (v20 + 40 * v6);
            if (40 * v2 < (40 * v6) || v21 >= v22 + 40 || v2 != v6)
            {
              v25 = *v22;
              v26 = v22[1];
              *(v21 + 32) = *(v22 + 4);
              *v21 = v25;
              *(v21 + 16) = v26;
              v2 = v6;
            }
          }
        }

        else if (v17 >= v30 || v2 >= v17)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v9 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v9 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v27 = *(v3 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v29;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C8F1FD98(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1C90646EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v34 = v3;
      v35 = v4;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(v3 + 48) + 40 * v6;
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = v7;
        v16 = *(v12 + 16);
        v17 = *(v12 + 24);
        v18 = *(v12 + 32);
        sub_1C9064D7C();
        sub_1C8D54590(v13, v14, v16, v17, v18);
        SystemToolProtocol.Identifier.rawValue.getter();
        sub_1C9063FBC();

        v19 = sub_1C9064DBC();
        v20 = v16;
        v7 = v15;
        sub_1C8D3ED20(v13, v14, v20, v17, v18);
        v21 = v19 & v15;
        if (v2 >= v10)
        {
          if (v21 >= v10 && v2 >= v21)
          {
LABEL_9:
            v4 = v35;
            v3 = v34;
            v23 = *(v34 + 48);
            v24 = v23 + 40 * v2;
            v25 = (v23 + 40 * v6);
            if (40 * v2 < (40 * v6) || v24 >= v25 + 40 || v2 != v6)
            {
              v28 = *v25;
              v29 = v25[1];
              *(v24 + 32) = *(v25 + 4);
              *v24 = v28;
              *(v24 + 16) = v29;
              v2 = v6;
            }

            goto LABEL_23;
          }
        }

        else if (v21 >= v10 || v2 >= v21)
        {
          goto LABEL_9;
        }

        v3 = v34;
        v4 = v35;
LABEL_23:
        v6 = (v6 + 1) & v15;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v31 = *(v3 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v33;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C8F1FFDC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C90646EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_1C9064D6C() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_15:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1C8F20154()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v3 = *v0;
  v4 = *v0 + 56;
  v5 = -1 << *(*v0 + 32);
  v6 = (v1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v112 = v7;
    v8 = sub_1C90646EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        sub_1C9064D7C();
        memcpy(v117, v118, sizeof(v117));
        switch(v11 >> 61)
        {
          case 1uLL:
            v28 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            MEMORY[0x1CCA82810](1);
            switch(v28)
            {
              case 0:
LABEL_16:
                v13 = 0;
                goto LABEL_86;
              case 1:
LABEL_61:
                v13 = 1;
                goto LABEL_86;
              case 2:
LABEL_72:
                v13 = 2;
                goto LABEL_86;
              case 3:
LABEL_79:
                v13 = 3;
                goto LABEL_86;
              case 4:
LABEL_75:
                v13 = 4;
                goto LABEL_86;
              case 5:
LABEL_81:
                v13 = 5;
                goto LABEL_86;
              case 6:
LABEL_83:
                v13 = 6;
                goto LABEL_86;
              case 7:
LABEL_80:
                v13 = 7;
                goto LABEL_86;
              case 8:
LABEL_85:
                v13 = 8;
                goto LABEL_86;
              case 9:
LABEL_77:
                v13 = 9;
                goto LABEL_86;
              case 10:
LABEL_84:
                v13 = 10;
                goto LABEL_86;
              case 11:
LABEL_74:
                v13 = 11;
                goto LABEL_86;
              case 12:
LABEL_76:
                v13 = 12;
                goto LABEL_86;
              case 13:
LABEL_82:
                v13 = 13;
                goto LABEL_86;
              case 14:
LABEL_73:
                v13 = 14;
                goto LABEL_86;
              case 15:
LABEL_78:
                v13 = 16;
                goto LABEL_86;
              default:
                v30 = *(v28 + 16);
                MEMORY[0x1CCA82810](15);
                switch(v30 >> 61)
                {
                  case 1uLL:
                    v42 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    MEMORY[0x1CCA82810](1);
                    switch(v42)
                    {
                      case 0:
                        goto LABEL_16;
                      case 1:
                        goto LABEL_61;
                      case 2:
                        goto LABEL_72;
                      case 3:
                        goto LABEL_79;
                      case 4:
                        goto LABEL_75;
                      case 5:
                        goto LABEL_81;
                      case 6:
                        goto LABEL_83;
                      case 7:
                        goto LABEL_80;
                      case 8:
                        goto LABEL_85;
                      case 9:
                        goto LABEL_77;
                      case 10:
                        goto LABEL_84;
                      case 11:
                        goto LABEL_74;
                      case 12:
                        goto LABEL_76;
                      case 13:
                        goto LABEL_82;
                      case 14:
                        goto LABEL_73;
                      case 15:
                        goto LABEL_78;
                      default:
                        v30 = *(v42 + 16);
                        MEMORY[0x1CCA82810](15);
                        switch(v30 >> 61)
                        {
                          case 1uLL:
                            v51 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                            MEMORY[0x1CCA82810](1);
                            switch(v51)
                            {
                              case 0:
                                goto LABEL_16;
                              case 1:
                                goto LABEL_61;
                              case 2:
                                goto LABEL_72;
                              case 3:
                                goto LABEL_79;
                              case 4:
                                goto LABEL_75;
                              case 5:
                                goto LABEL_81;
                              case 6:
                                goto LABEL_83;
                              case 7:
                                goto LABEL_80;
                              case 8:
                                goto LABEL_85;
                              case 9:
                                goto LABEL_77;
                              case 10:
                                goto LABEL_84;
                              case 11:
                                goto LABEL_74;
                              case 12:
                                goto LABEL_76;
                              case 13:
                                goto LABEL_82;
                              case 14:
                                goto LABEL_73;
                              case 15:
                                goto LABEL_78;
                              default:
                                v86 = *(v51 + 16);
                                MEMORY[0x1CCA82810](15);
                                __dst[0] = v86;

                                TypeIdentifier.hash(into:)(v117);
                                break;
                            }

                            break;
                          case 2uLL:
                            goto LABEL_108;
                          case 3uLL:
                            v104 = v11;
                            v108 = v9;
                            v111 = v4;
                            v73 = (v30 & 0x1FFFFFFFFFFFFFFFLL);
                            memcpy(__dst, ((v30 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
                            v74 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
                            v75 = v73[16];
                            memcpy(__src, v73 + 17, 0x51uLL);
                            v76 = v73[28];
                            v77 = v73[29];
                            MEMORY[0x1CCA82810](3);

                            v78 = ContainerDefinition.hash(into:)(v117);
                            if (v75)
                            {
                              OUTLINED_FUNCTION_38_20(v78, v79, v80, v81, v82, v83, v84, v85, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v104, v108, v4, v112, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], v114[0], v114[1], v114[2], v114[3], v114[4], v114[5], v114[6], v114[7], v114[8], v114[9], v114[10], v114[11], v114[12], v74, v75, *&v115[16]);
                              memcpy(v114, v115, 0x61uLL);
                              sub_1C9064D9C();
                              sub_1C8CC1340(v115, __dst);
                              ContainerDefinition.hash(into:)(v117);
                              memcpy(__dst, v114, 0x61uLL);
                              sub_1C8CC15FC(__dst);
                            }

                            else
                            {
                              sub_1C9064D9C();
                            }

                            v4 = v111;
                            sub_1C9063FBC();
                            v9 = v108;
                            break;
                          case 4uLL:
                            goto LABEL_107;
                          default:
                            goto LABEL_27;
                        }

                        break;
                    }

                    break;
                  case 2uLL:
LABEL_108:
                    v63 = (v30 & 0x1FFFFFFFFFFFFFFFLL);
                    v64 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v65 = v63[3];
                    v107 = v9;
                    v110 = v6;
                    v66 = v2;
                    v67 = v4;
                    v68 = v3;
                    v69 = v67;
                    v70 = v63[4];
                    v71 = v63[5];
                    MEMORY[0x1CCA82810](2);

                    OUTLINED_FUNCTION_35_20();
                    sub_1C9063FBC();
                    v72 = v69;
                    v3 = v68;
                    v4 = v72;
                    v2 = v66;
                    v9 = v107;
                    v6 = v110;
                    goto LABEL_9;
                  case 3uLL:
                    v103 = v11;
                    v106 = v9;
                    v109 = v4;
                    v32 = v30 & 0x1FFFFFFFFFFFFFFFLL;
                    v33 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v34 = *(v32 + 24);
                    v35 = *(v32 + 32);
                    v36 = *(v32 + 56);
                    v94 = *(v32 + 48);
                    v95 = *(v32 + 40);
                    v37 = *(v32 + 64);
                    v96 = *(v32 + 72);
                    v91 = *(v32 + 80);
                    v92 = *(v32 + 96);
                    v97 = *(v32 + 88);
                    v98 = *(v32 + 104);
                    v99 = *(v32 + 112);
                    v93 = *(v32 + 120);
                    v100 = *(v32 + 128);
                    memcpy(__src, (v32 + 136), 0x51uLL);
                    v101 = *(v32 + 232);
                    v102 = *(v32 + 224);
                    MEMORY[0x1CCA82810](3);

                    OUTLINED_FUNCTION_35_20();
                    sub_1C9063FBC();
                    v38 = *(v35 + 16);
                    MEMORY[0x1CCA82810](v38);
                    if (v38)
                    {
                      v39 = (v35 + 40);
                      do
                      {
                        v40 = *(v39 - 1);
                        v41 = *v39;

                        sub_1C9063FBC();

                        v39 += 2;
                        --v38;
                      }

                      while (v38);
                    }

                    sub_1C9063FBC();
                    sub_1C9064D9C();
                    if (v37)
                    {
                      sub_1C9063FBC();
                    }

                    v9 = v106;
                    v4 = v109;
                    MEMORY[0x1CCA82810](v96);
                    sub_1C9064D9C();
                    if (v97)
                    {
                      sub_1C9063FBC();
                    }

                    if (v98)
                    {
                      MEMORY[0x1CCA82810](1);
                      sub_1C9063FBC();
                    }

                    else
                    {
                      MEMORY[0x1CCA82810](0);
                    }

                    v43 = MEMORY[0x1CCA82810](v99);
                    if (v100)
                    {
                      OUTLINED_FUNCTION_38_20(v43, v44, v45, v46, v47, v48, v49, v50, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v106, v109, v112, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], v114[0], v114[1], v114[2], v114[3], v114[4], v114[5], v114[6], v114[7], v114[8], v114[9], v114[10], v114[11], v114[12], v93, v100, *&v115[16]);
                      memcpy(v114, v115, 0x61uLL);
                      sub_1C9064D9C();
                      sub_1C8CC1340(v115, __dst);
                      ContainerDefinition.hash(into:)(v117);
                      memcpy(__dst, v114, 0x61uLL);
                      sub_1C8CC15FC(__dst);
                    }

                    else
                    {
                      sub_1C9064D9C();
                    }

                    goto LABEL_9;
                  case 4uLL:
LABEL_107:
                    v60 = v30 & 0x1FFFFFFFFFFFFFFFLL;
                    v61 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v62 = *(v60 + 24);
                    MEMORY[0x1CCA82810](4);

                    OUTLINED_FUNCTION_35_20();
                    goto LABEL_9;
                  default:
LABEL_27:
                    v31 = *(v30 + 16);
                    MEMORY[0x1CCA82810](0);
                    LOBYTE(__dst[0]) = v31;
                    TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
                    goto LABEL_87;
                }

                break;
            }

            break;
          case 2uLL:
            v16 = (v11 & 0x1FFFFFFFFFFFFFFFLL);
            v17 = v9;
            v18 = v16[2];
            v19 = v16[3];
            v105 = v2;
            v21 = v16[4];
            v20 = v16[5];
            MEMORY[0x1CCA82810](2);

            v9 = v17;
            sub_1C9063FBC();
            v2 = v105;
            goto LABEL_9;
          case 3uLL:
            memcpy(__dst, ((v11 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
            MEMORY[0x1CCA82810](3);
            v22 = __dst[2];

            sub_1C8D3EFB8(__dst, v115);
            sub_1C9063FBC();
            v23 = *(v22 + 16);
            MEMORY[0x1CCA82810](v23);
            if (v23)
            {
              v24 = (v22 + 40);
              do
              {
                v25 = *(v24 - 1);
                v26 = *v24;

                sub_1C9063FBC();

                v24 += 2;
                --v23;
              }

              while (v23);
            }

            v27 = __dst[6];
            sub_1C9063FBC();
            sub_1C9064D9C();
            if (v27)
            {
              sub_1C9063FBC();
            }

            v29 = __dst[9];
            MEMORY[0x1CCA82810](LOBYTE(__dst[7]));
            sub_1C9064D9C();
            if (v29)
            {
              sub_1C9063FBC();
            }

            if (__dst[11])
            {
              MEMORY[0x1CCA82810](1);
              OUTLINED_FUNCTION_35_20();
              sub_1C9063FBC();
            }

            else
            {
              MEMORY[0x1CCA82810](0);
            }

            MEMORY[0x1CCA82810](LOBYTE(__dst[12]));
            if (__dst[14])
            {
              memcpy(__src, &__dst[13], 0x61uLL);
              sub_1C9064D9C();
              memcpy(v114, &__dst[13], 0x61uLL);
              sub_1C8CC1340(v114, v115);
              ContainerDefinition.hash(into:)(v117);
              memcpy(v115, __src, 0x61uLL);
              sub_1C8CC15FC(v115);
            }

            else
            {
              sub_1C9064D9C();
            }

            sub_1C9063FBC();
            sub_1C8D3F014(__dst);
            break;
          case 4uLL:
            v14 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v15 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            MEMORY[0x1CCA82810](4);

LABEL_9:
            sub_1C9063FBC();
            break;
          default:
            v12 = *(v11 + 16);
            MEMORY[0x1CCA82810](0);
            switch(v12)
            {
              case 23:
                v13 = 0;
                goto LABEL_86;
              case 24:
                v13 = 1;
                goto LABEL_86;
              case 25:
                v13 = 2;
                goto LABEL_86;
              case 26:
                v13 = 3;
                goto LABEL_86;
              case 27:
                v13 = 4;
                goto LABEL_86;
              case 28:
                v13 = 5;
                goto LABEL_86;
              case 29:
                v13 = 6;
                goto LABEL_86;
              case 30:
                v13 = 7;
                goto LABEL_86;
              case 31:
                v13 = 8;
                goto LABEL_86;
              case 32:
                v13 = 9;
                goto LABEL_86;
              case 33:
                v13 = 10;
                goto LABEL_86;
              case 34:
                v13 = 12;
                goto LABEL_86;
              case 35:
                v13 = 13;
                goto LABEL_86;
              case 36:
                v13 = 14;
                goto LABEL_86;
              case 37:
                v13 = 15;
                goto LABEL_86;
              case 38:
                v13 = 16;
                goto LABEL_86;
              case 39:
                v13 = 17;
                goto LABEL_86;
              case 40:
                v13 = 18;
                goto LABEL_86;
              case 41:
                v13 = 19;
                goto LABEL_86;
              case 42:
                v13 = 20;
                goto LABEL_86;
              case 43:
                v13 = 21;
                goto LABEL_86;
              case 44:
                v13 = 22;
                goto LABEL_86;
              case 45:
                v13 = 23;
                goto LABEL_86;
              case 46:
                v13 = 24;
                goto LABEL_86;
              default:
                MEMORY[0x1CCA82810](11);
                if (v12 == 22)
                {
                  sub_1C9064D9C();
                }

                else
                {
                  sub_1C9064D9C();
                  v13 = v12;
LABEL_86:
                  MEMORY[0x1CCA82810](v13);
                }

LABEL_87:

                break;
            }

            break;
        }

        v52 = sub_1C9064DBC();

        v53 = v52 & v112;
        if (v2 >= v9)
        {
          if (v53 >= v9 && v2 >= v53)
          {
LABEL_99:
            v56 = *(v3 + 48);
            v57 = (v56 + 8 * v2);
            v58 = (v56 + 8 * v6);
            if (v2 != v6 || v57 >= v58 + 1)
            {
              *v57 = *v58;
              v2 = v6;
            }
          }
        }

        else if (v53 >= v9 || v2 >= v53)
        {
          goto LABEL_99;
        }

        v6 = (v6 + 1) & v112;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v1) - 1;
  }

  v87 = *(v3 + 16);
  v88 = __OFSUB__(v87, 1);
  v89 = v87 - 1;
  if (v88)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v89;
    ++*(v3 + 36);
    OUTLINED_FUNCTION_163();
  }
}

uint64_t sub_1C8F20BF4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  v12 = sub_1C90627EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C9062E6C();
  v24[3] = v17;
  v24[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a2, v17);
  sub_1C902DC0C(v24);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C8D3F0C4(v11, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    (*(v4 + 32))(v7, v22, v3);
    v23[3] = v12;
    v23[4] = MEMORY[0x1E699FE60];
    v19 = __swift_allocate_boxed_opaque_existential_1(v23);
    (*(v13 + 16))(v19, v16, v12);
    sub_1C8D28184(&qword_1EDA69368, &qword_1EC318D30, &unk_1C90A7A70);
    sub_1C906292C();
    (*(v4 + 8))(v7, v3);
    (*(v13 + 8))(v16, v12);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void sub_1C8F20F18()
{
  OUTLINED_FUNCTION_164();
  v32 = v2;
  v33 = v1;
  v29 = v3;
  v30 = v4;
  v31 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v5);
  OUTLINED_FUNCTION_11(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94_1();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50) - 8) + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = sub_1C90627EC();
  v17 = OUTLINED_FUNCTION_11(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v24 = v23 - v22;
  v25 = sub_1C9062E6C();
  v35[3] = v25;
  v35[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v35);
  OUTLINED_FUNCTION_10_0(v25);
  (*(v26 + 16))();
  sub_1C902CF6C(v35);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1C8D3F0C4(v15, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v19 + 32))(v24, v15, v16);
    (*(v8 + 32))(v0, v33, v6);
    v34[3] = v16;
    v34[4] = MEMORY[0x1E699FE60];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    (*(v19 + 16))(boxed_opaque_existential_1, v24, v16);
    sub_1C8D28184(v30, v29, v31);
    sub_1C906292C();
    (*(v8 + 8))(v0, v6);
    (*(v19 + 8))(v24, v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F211D8(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_1C90627EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = v16;
  v25[4] = MEMORY[0x1E699FE60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  v18 = *(v12 + 16);
  v18(boxed_opaque_existential_1, a2, v11);
  sub_1C902CF6C(v25);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1C8D3F0C4(v10, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v19 = v22;
    (*(v22 + 32))(v6, v23, v3);
    v24[3] = v11;
    v24[4] = MEMORY[0x1E699FE60];
    v20 = __swift_allocate_boxed_opaque_existential_1(v24);
    v18(v20, v15, v11);
    sub_1C8D28184(&qword_1EDA69380, &qword_1EC313278, &qword_1C90C63C0);
    sub_1C906292C();
    (*(v19 + 8))(v6, v3);
    (*(v12 + 8))(v15, v11);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_1C8F214D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C8D3ED20(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1C8F21500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FetchedTool();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_23_26()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t TypeIdentifier.protobuf(useCase:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v13 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v39 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      type metadata accessor for ToolKitProtoTypeIdentifier.Builtin(0);
      v40 = swift_allocBox();
      __dst[0] = v39;
      TypeIdentifier.BuiltInTypeIdentifier.protobuf(useCase:)(a1);
      v15 = v40 | 0x4000000000000000;
      break;
    case 2uLL:
      v24 = (v13 & 0x1FFFFFFFFFFFFFFFLL);
      v26 = v24[2];
      v25 = v24[3];
      v28 = v24[4];
      v27 = v24[5];
      v29 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
      v30 = swift_allocBox();
      v32 = v31;
      v33 = *(v29 + 24);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v32 = v26;
      v32[1] = v25;
      v15 = v30 | 0x2000000000000000;
      v32[2] = v28;
      v32[3] = v27;
      break;
    case 3uLL:
      v34 = (v13 & 0x1FFFFFFFFFFFFFFFLL);
      memcpy(v56, ((v13 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
      memcpy(v57, v34 + 15, 0x61uLL);
      v35 = v34[28];
      v36 = v34[29];
      v52 = v35;
      memcpy(v55, v56, 0x61uLL);
      v53 = v36;

      sub_1C8CC1340(v56, __dst);
      sub_1C8D52860(v57, __dst, &qword_1EC312EF8, &unk_1C90839D0);
      ContainerDefinition.protobuf(useCase:)(v12);
      memcpy(__dst, v55, 0x61uLL);
      sub_1C8CC15FC(__dst);
      type metadata accessor for ToolKitProtoContainerDefinition(0);
      OUTLINED_FUNCTION_13_29(v12, 0);
      if (v57[1])
      {
        v54[0] = v57[0];
        v54[1] = v57[1];
        memcpy(&v54[2], &v57[2], 0x51uLL);
        ContainerDefinition.protobuf(useCase:)(v9);
        memcpy(v55, v54, 0x61uLL);
        sub_1C8CC15FC(v55);
        v37 = v9;
        v38 = 0;
      }

      else
      {
        v37 = v9;
        v38 = 1;
      }

      OUTLINED_FUNCTION_13_29(v37, v38);
      v41 = type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(0);
      v42 = swift_allocBox();
      v44 = v43;
      v45 = v41[5];
      OUTLINED_FUNCTION_13_29(v43 + v45, 1);
      v46 = v41[6];
      OUTLINED_FUNCTION_13_29(v44 + v46, 1);
      v47 = v44 + v41[7];
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8F228E4(v12, v44 + v45);
      sub_1C8F228E4(v9, v44 + v46);
      v48 = v53;
      *v44 = v52;
      v44[1] = v48;
      v15 = v42 | 0x6000000000000000;
      break;
    case 4uLL:
      v16 = v13 & 0x1FFFFFFFFFFFFFFFLL;
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = type metadata accessor for ToolKitProtoTypeIdentifier.Codable(0);
      v20 = swift_allocBox();
      v22 = v21;
      v23 = *(v19 + 20);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v22 = v18;
      v22[1] = v17;
      v15 = v20 | 0x8000000000000000;
      break;
    default:
      v14 = *(v13 + 16);
      type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
      v15 = swift_allocBox();
      LOBYTE(__dst[0]) = v14;
      TypeIdentifier.PrimitiveTypeIdentifier.protobuf(useCase:)();
      break;
  }

  v49 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  MEMORY[0x1EEE9AC00](v49);
  *(&v51 - 2) = v15;
  sub_1C8F22DE4(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_1C9063ACC();
}

uint64_t TypeIdentifier.PrimitiveTypeIdentifier.init(protobuf:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  switch(*a1)
  {
    case 23:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v4);
      v6 = 23;
      goto LABEL_30;
    case 24:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v24);
      v6 = 24;
      goto LABEL_30;
    case 25:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v20);
      v6 = 25;
      goto LABEL_30;
    case 26:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v22);
      v6 = 26;
      goto LABEL_30;
    case 27:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v10);
      v6 = 27;
      goto LABEL_30;
    case 28:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v27);
      v6 = 28;
      goto LABEL_30;
    case 29:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v30);
      v6 = 29;
      goto LABEL_30;
    case 30:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v23);
      v6 = 30;
      goto LABEL_30;
    case 31:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v33);
      v6 = 31;
      goto LABEL_30;
    case 32:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v12);
      v6 = 32;
      goto LABEL_30;
    case 33:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v32);
      v6 = 33;
      goto LABEL_30;
    case 34:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v9);
      v6 = 34;
      goto LABEL_30;
    case 35:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v11);
      v6 = 35;
      goto LABEL_30;
    case 36:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v29);
      v6 = 36;
      goto LABEL_30;
    case 37:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v8);
      v6 = 37;
      goto LABEL_30;
    case 38:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v21);
      v6 = 38;
      goto LABEL_30;
    case 39:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v7);
      v6 = 39;
      goto LABEL_30;
    case 40:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v25);
      v6 = 40;
      goto LABEL_30;
    case 41:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v31);
      v6 = 42;
      goto LABEL_30;
    case 42:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v35);
      v6 = 43;
      goto LABEL_30;
    case 43:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v26);
      v6 = 41;
      goto LABEL_30;
    case 44:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v28);
      v6 = 44;
      goto LABEL_30;
    case 45:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v34);
      v6 = 46;
      goto LABEL_30;
    case 46:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v36);
      v6 = 45;
      goto LABEL_30;
    case 47:
      v13 = OUTLINED_FUNCTION_94();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
      sub_1C8D4F674(&qword_1EC319E28, &qword_1EC319E20, &qword_1C90A7A88);
      OUTLINED_FUNCTION_213();
      *v16 = &type metadata for TypeIdentifier.PrimitiveTypeIdentifier;
      v17 = *MEMORY[0x1E69E08B0];
      OUTLINED_FUNCTION_10_0(v15);
      (*(v18 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_0_73();
      return sub_1C8F22C30(a1, v19);
    default:
      v41 = *a1;
      v37 = TypeIdentifier.MeasurementUnitType.init(protobuf:)(&v41);
      if (v38)
      {

        OUTLINED_FUNCTION_0_73();
        result = sub_1C8F22C30(a1, v39);
        v6 = 22;
      }

      else
      {
        v6 = v37;
        OUTLINED_FUNCTION_0_73();
        result = sub_1C8F22C30(a1, v40);
      }

LABEL_30:
      *a2 = v6;
      return result;
  }
}

uint64_t TypeIdentifier.PrimitiveTypeIdentifier.protobuf(useCase:)()
{
  v1 = *v0;
  if ((v1 - 23) >= 0x18)
  {
    if (v1 != 22)
    {
      TypeIdentifier.MeasurementUnitType.protobuf(useCase:)(v1, v5);
    }
  }

  else
  {
    v2 = byte_1C90A7C2E[(v1 - 23)];
  }

  v3 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C8F22DE4(qword_1EDA6C580, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  return OUTLINED_FUNCTION_12_34();
}

uint64_t TypeIdentifier.init(protobuf:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for ToolKitProtoTypeIdentifier.Codable(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  v95 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - v17;
  v96 = type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(0);
  v19 = OUTLINED_FUNCTION_13_1(v96);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v97 = (v23 - v22);
  v24 = type metadata accessor for ToolKitProtoTypeIdentifier.Builtin(0);
  v25 = OUTLINED_FUNCTION_9(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25();
  v30 = (v28 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v94 - v32;
  v34 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v35 = OUTLINED_FUNCTION_9(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  v40 = (v39 - v38);
  v41 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v42 = OUTLINED_FUNCTION_9(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_25();
  v47 = (v45 - v46);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v94 - v49;
  v51 = *a1;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    v94 = a1;
    switch(v51 >> 61)
    {
      case 1uLL:
        v83 = v51;

        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v94, v84);
        v85 = swift_projectBox();
        sub_1C8F22C88(v85, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
        v86 = swift_allocObject();
        v87 = v40[1];
        *(v86 + 16) = *v40;
        *(v86 + 24) = v87;
        v89 = v40[2];
        v88 = v40[3];

        sub_1C8F22C30(v40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
        *(v86 + 32) = v89;
        *(v86 + 40) = v88;
        result = sub_1C8D076D8(v83);
        v60 = v86 | 0x4000000000000000;
        goto LABEL_12;
      case 2uLL:
        v71 = v51;
        v72 = swift_projectBox();
        sub_1C8F22C88(v72, v33, type metadata accessor for ToolKitProtoTypeIdentifier.Builtin);
        v73 = swift_allocObject();
        sub_1C8F22C88(v33, v30, type metadata accessor for ToolKitProtoTypeIdentifier.Builtin);

        v74 = v103;
        TypeIdentifier.BuiltInTypeIdentifier.init(protobuf:)(v30, (v73 + 16));
        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v94, v75);
        OUTLINED_FUNCTION_1_68();
        if (v74)
        {
          OUTLINED_FUNCTION_1();
          swift_deallocUninitializedObject();
          v64 = v71;
          goto LABEL_15;
        }

        result = sub_1C8D076D8(v71);
        v60 = v73 | 0x2000000000000000;
        goto LABEL_12;
      case 3uLL:
        v76 = v51;
        v77 = swift_projectBox();
        v78 = v97;
        sub_1C8F22C88(v77, v97, type metadata accessor for ToolKitProtoTypeIdentifier.Attributed);
        v79 = swift_allocObject();
        v80 = v96;
        sub_1C8D52860(v78 + *(v96 + 20), v18, &qword_1EC314718, &qword_1C9074DA8);
        sub_1C8F06C94();

        v81 = v103;
        sub_1C906351C();
        if (v81)
        {
          OUTLINED_FUNCTION_2_63();
          sub_1C8F22C30(v94, v82);
          OUTLINED_FUNCTION_4_50();
          swift_deallocUninitializedObject();
          v64 = v76;
          goto LABEL_15;
        }

        memcpy(v101, __src, sizeof(v101));
        sub_1C8D52860(v78 + *(v80 + 24), v95, &qword_1EC314718, &qword_1C9074DA8);
        sub_1C906350C();
        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v90, v91);
        memcpy(v99, v100, sizeof(v99));
        v93 = *v78;
        v92 = v78[1];

        OUTLINED_FUNCTION_4_50();
        memcpy((v79 + 16), v101, 0x61uLL);
        memcpy((v79 + 120), v99, 0x61uLL);
        *(v79 + 224) = v93;
        *(v79 + 232) = v92;
        result = sub_1C8D076D8(v76);
        v60 = v79 | 0x6000000000000000;
        goto LABEL_12;
      case 4uLL:
        v65 = v51;

        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v94, v66);
        v67 = swift_projectBox();
        sub_1C8F22C88(v67, v9, type metadata accessor for ToolKitProtoTypeIdentifier.Codable);
        v68 = swift_allocObject();
        v70 = *v9;
        v69 = v9[1];

        sub_1C8F22C30(v9, type metadata accessor for ToolKitProtoTypeIdentifier.Codable);
        *(v68 + 16) = v70;
        *(v68 + 24) = v69;
        result = sub_1C8D076D8(v65);
        v60 = v68 | 0x8000000000000000;
        goto LABEL_12;
      default:
        v58 = v51;
        v59 = swift_projectBox();
        sub_1C8F22C88(v59, v50, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
        v60 = swift_allocObject();
        sub_1C8F22C88(v50, v47, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);

        v61 = v103;
        TypeIdentifier.PrimitiveTypeIdentifier.init(protobuf:)(v47, (v60 + 16));
        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v94, v62);
        OUTLINED_FUNCTION_0_73();
        sub_1C8F22C30(v50, v63);
        if (v61)
        {
          swift_deallocUninitializedObject();
          v64 = v58;
LABEL_15:
          result = sub_1C8D076D8(v64);
        }

        else
        {
          result = sub_1C8D076D8(v58);
LABEL_12:
          *v98 = v60;
        }

        break;
    }
  }

  else
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319E30, &qword_1C90A7A90);
    sub_1C8D4F674(&qword_1EC319E38, &qword_1EC319E30, &qword_1C90A7A90);
    OUTLINED_FUNCTION_213();
    *v53 = &type metadata for ToolKitProtoTypeIdentifierKind;
    v54 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v52);
    (*(v55 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_2_63();
    return sub_1C8F22C30(a1, v56);
  }

  return result;
}

void TypeIdentifier.BuiltInTypeIdentifier.init(protobuf:)(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = *a1;
  switch(*a1)
  {
    case 0uLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 0;
      goto LABEL_21;
    case 1uLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 1;
      goto LABEL_21;
    case 2uLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 2;
      goto LABEL_21;
    case 3uLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 3;
      goto LABEL_21;
    case 4uLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 4;
      goto LABEL_21;
    case 5uLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 5;
      goto LABEL_21;
    case 6uLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 6;
      goto LABEL_21;
    case 7uLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 7;
      goto LABEL_21;
    case 8uLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 8;
      goto LABEL_21;
    case 9uLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 9;
      goto LABEL_21;
    case 0xAuLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 10;
      goto LABEL_21;
    case 0xBuLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 11;
      goto LABEL_21;
    case 0xCuLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 12;
      goto LABEL_21;
    case 0xDuLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 13;
      goto LABEL_21;
    case 0xEuLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 14;
      goto LABEL_21;
    case 0xFuLL:
      OUTLINED_FUNCTION_1_68();
      v16 = 15;
      goto LABEL_21;
    case 0x10uLL:
      v17 = OUTLINED_FUNCTION_94();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      sub_1C8D4F674(&qword_1EC319E48, &qword_1EC319E40, &qword_1C90A7A98);
      OUTLINED_FUNCTION_213();
      *v20 = &type metadata for TypeIdentifier.BuiltInTypeIdentifier;
      v21 = *MEMORY[0x1E69E08B0];
      OUTLINED_FUNCTION_10_0(v19);
      (*(v22 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_68();
      return;
    default:
      v23 = *a1;
      v24 = swift_projectBox();
      sub_1C8F22C88(v24, v14, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_1C8F22C88(v14, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_1C8D3F120(v15);
      TypeIdentifier.init(protobuf:)(&v28, v11);
      if (v2)
      {

        __break(1u);
      }

      else
      {
        v25 = v28;
        OUTLINED_FUNCTION_1_68();
        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v14, v26);
        v16 = swift_allocObject();
        *(v16 + 16) = v25;
        sub_1C8D98198(v15);
LABEL_21:
        *a2 = v16;
      }

      return;
  }
}

unint64_t TypeIdentifier.BuiltInTypeIdentifier.protobuf(useCase:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 >= 0x10)
  {
    v4 = *(v2 + 16);
    type metadata accessor for ToolKitProtoTypeIdentifier(0);
    v2 = swift_allocBox();
    TypeIdentifier.protobuf(useCase:)(a1);
  }

  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Builtin(0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C8F22DE4(qword_1EDA618D0, type metadata accessor for ToolKitProtoTypeIdentifier.Builtin);
  OUTLINED_FUNCTION_12_34();
  return sub_1C8D3F130(v2);
}

uint64_t sub_1C8F2287C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  result = sub_1C8D076D8(v4);
  *a1 = a2;
  return result;
}

uint64_t sub_1C8F228E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TypeIdentifier.protobuf.getter()
{
  v1 = sub_1C906348C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v8 = *v0;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x1E69E0760], v1);
  TypeIdentifier.protobuf(useCase:)(v6);
  return (*(v2 + 8))(v6, v1);
}

uint64_t sub_1C8F22C30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8F22C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t sub_1C8F22D24@<X0>(ToolKit::ToolKitProtoTypeIdentifier::Primitive::MeasurementUnitType a1@<W0>, _BYTE *a2@<X8>)
{
  result = TypeIdentifier.MeasurementUnitType.init(protobuf:)(a1);
  if (!v4)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C8F22D7C(unint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  sub_1C8D3F120(a2);
  result = sub_1C8D98198(v4);
  *a1 = a2;
  return result;
}

uint64_t sub_1C8F22DE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C8F22E30()
{
  result = qword_1EDA669D0;
  if (!qword_1EDA669D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA669D0);
  }

  return result;
}

unint64_t sub_1C8F22E88()
{
  result = qword_1EC319E58;
  if (!qword_1EC319E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E58);
  }

  return result;
}

unint64_t sub_1C8F22EE0()
{
  result = qword_1EC319E60;
  if (!qword_1EC319E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E60);
  }

  return result;
}

unint64_t sub_1C8F22F38()
{
  result = qword_1EC319E68;
  if (!qword_1EC319E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E68);
  }

  return result;
}

uint64_t sub_1C8F22FDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6553676E69727473 && a2 == 0xEC00000068637261;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6863726165536469 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6261686372616573 && a2 == 0xEE006D657449656CLL;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7105633 && a2 == 0xE300000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6574736567677573 && a2 == 0xE900000000000064;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x61655365756C6176 && a2 == 0xEB00000000686372;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C9064C2C();

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

uint64_t sub_1C8F23304(char a1)
{
  result = 0x644965707974;
  switch(a1)
  {
    case 1:
      result = 0x73697261706D6F63;
      break;
    case 2:
      result = 0x6553676E69727473;
      break;
    case 3:
      result = 0x6863726165536469;
      break;
    case 4:
      result = 0x6261686372616573;
      break;
    case 5:
      result = 7105633;
      break;
    case 6:
      result = 0x64696C6176;
      break;
    case 7:
      result = 0x6574736567677573;
      break;
    case 8:
      result = 0x61655365756C6176;
      break;
    case 9:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8F2342C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F40, &qword_1C90A7FD8);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v29 - v9;
  v11 = *v1;
  v12 = v1[1];
  v39 = v1[2];
  v45 = *(v1 + 24);
  v13 = *(v1 + 25);
  v37 = *(v1 + 26);
  v38 = v13;
  v14 = *(v1 + 27);
  v34 = *(v1 + 28);
  v35 = v14;
  v33 = *(v1 + 29);
  v15 = v1[4];
  v36 = v1[5];
  v16 = v1[7];
  v30 = v1[6];
  v31 = v16;
  v32 = v15;
  v17 = v1[8];
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1;
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v18);
  sub_1C8F24B94();
  sub_1C9064E1C();
  LOBYTE(v41) = 0;
  v23 = v40;
  sub_1C9064B2C();
  if (v23)
  {
    return (*(v6 + 8))(v10, v22);
  }

  v24 = v45;
  v26 = v37;
  v25 = v38;
  v40 = v17;
  v27 = v36;
  v41 = v39;
  v46 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313368, &unk_1C906B510);
  sub_1C8F250F4(&qword_1EC319F48);
  OUTLINED_FUNCTION_2_64();
  sub_1C9064B8C();
  LOBYTE(v41) = v24;
  v46 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EC0, &unk_1C90C82C0);
  sub_1C8F251A4();
  OUTLINED_FUNCTION_2_64();
  sub_1C9064B0C();
  LOBYTE(v41) = v25;
  v46 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319ED0, &unk_1C90A7FA0);
  sub_1C8F25230();
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30();
  LOBYTE(v41) = v26;
  v46 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EE0, &unk_1C90C82B0);
  sub_1C8F252BC();
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30();
  LOBYTE(v41) = v35;
  v46 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EF0, &unk_1C90A7FB0);
  sub_1C8F25348();
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30();
  LOBYTE(v41) = v34;
  v46 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F00, &unk_1C90C82A0);
  sub_1C8F253D4();
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30();
  LOBYTE(v41) = v33;
  v46 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F10, &unk_1C90A7FC0);
  sub_1C8F25460();
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30();
  v41 = v32;
  v46 = 8;
  sub_1C8CD1784(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F20, &unk_1C90C8290);
  sub_1C8F254EC();
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30();
  sub_1C8CD0FB0(v41);
  v41 = v27;
  v42 = v30;
  v43 = v31;
  v44 = v40;
  v46 = 9;
  sub_1C8D16DD0(v27, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F30, &qword_1C90A7FD0);
  sub_1C8F25578();
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30();
  sub_1C8D16E14(v41, v42);
  return (*(v6 + 8))(v10, v22);
}

uint64_t sub_1C8F23848@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EA8, &qword_1C90A7F98);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8F24B94();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30[0]) = 0;
  v10 = sub_1C9064A0C();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313368, &unk_1C906B510);
  OUTLINED_FUNCTION_18_29(1);
  sub_1C8F250F4(&qword_1EC319EB8);
  OUTLINED_FUNCTION_0_74();
  sub_1C9064A6C();
  v28 = v30[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EC0, &unk_1C90C82C0);
  OUTLINED_FUNCTION_18_29(2);
  sub_1C8F24C2C();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319ED0, &unk_1C90A7FA0);
  OUTLINED_FUNCTION_18_29(3);
  sub_1C8F24CB8();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EE0, &unk_1C90C82B0);
  OUTLINED_FUNCTION_18_29(4);
  sub_1C8F24D44();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EF0, &unk_1C90A7FB0);
  OUTLINED_FUNCTION_18_29(5);
  sub_1C8F24DD0();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F00, &unk_1C90C82A0);
  OUTLINED_FUNCTION_18_29(6);
  sub_1C8F24E5C();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F10, &unk_1C90A7FC0);
  OUTLINED_FUNCTION_18_29(7);
  sub_1C8F24EE8();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v27 = v10;
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F20, &unk_1C90C8290);
  OUTLINED_FUNCTION_18_29(8);
  sub_1C8F24F74();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v13 = v30[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F30, &qword_1C90A7FD0);
  v47 = 9;
  sub_1C8F25000();
  sub_1C90649EC();
  v14 = OUTLINED_FUNCTION_6_41();
  v15(v14);
  v24 = v42;
  v23 = v43;
  v22 = v44;
  v21 = v45;
  __src[0] = v27;
  __src[1] = v12;
  __src[2] = v28;
  v26 = v46;
  LOBYTE(__src[3]) = v46;
  v25 = v52;
  BYTE1(__src[3]) = v52;
  v16 = v51;
  BYTE2(__src[3]) = v51;
  v17 = v50;
  BYTE3(__src[3]) = v50;
  v18 = v49;
  BYTE4(__src[3]) = v49;
  v19 = v48;
  BYTE5(__src[3]) = v48;
  __src[4] = v13;
  __src[5] = v42;
  __src[6] = v43;
  __src[7] = v44;
  __src[8] = v45;
  memcpy(a2, __src, 0x48uLL);
  sub_1C8F2508C(__src, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30[0] = v27;
  v30[1] = v12;
  v30[2] = v28;
  v31 = v26;
  v32 = v25;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v13;
  v38 = v24;
  v39 = v23;
  v40 = v22;
  v41 = v21;
  return sub_1C8F250C4(v30);
}

uint64_t sub_1C8F23DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F22FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F23E20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8F232FC();
  *a1 = result;
  return result;
}

uint64_t sub_1C8F23E48(uint64_t a1)
{
  v2 = sub_1C8F24B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F23E84(uint64_t a1)
{
  v2 = sub_1C8F24B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C8F23EF4@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EC3115E8 != -1)
  {
    OUTLINED_FUNCTION_17_31();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EC390E00);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v4 = v3;
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  if (qword_1EC3115F0 != -1)
  {
    OUTLINED_FUNCTION_16_29();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390E18);
  sub_1C9062E5C();
  sub_1C8D27E84();
  v8 = v7;

  *(a1 + 16) = v8;
  if (qword_1EC3115F8 != -1)
  {
    OUTLINED_FUNCTION_15_29();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390E30);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CE10();

  *(a1 + 24) = v11;
  if (qword_1EC311600 != -1)
  {
    OUTLINED_FUNCTION_14_37();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390E48);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CDE0();

  *(a1 + 25) = v11;
  if (qword_1EC311608 != -1)
  {
    OUTLINED_FUNCTION_13_30();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390E60);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CDB0();

  *(a1 + 26) = v11;
  if (qword_1EC311610 != -1)
  {
    OUTLINED_FUNCTION_12_35();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390E78);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CD80();

  *(a1 + 27) = v11;
  if (qword_1EC311618 != -1)
  {
    OUTLINED_FUNCTION_11_34();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390E90);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CCF0();

  *(a1 + 28) = v11;
  if (qword_1EC311620 != -1)
  {
    OUTLINED_FUNCTION_10_41();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390EA8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CCC0();

  *(a1 + 29) = v11;
  if (qword_1EC311628 != -1)
  {
    OUTLINED_FUNCTION_9_36();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390EC0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CC10(v9);

  *(a1 + 32) = v11;
  if (qword_1EC311630 != -1)
  {
    OUTLINED_FUNCTION_8_43();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390ED8);
  sub_1C9062E5C();
  sub_1C905CBE0();

  result = *&v11;
  *(a1 + 40) = v11;
  *(a1 + 56) = v12;
  return result;
}

uint64_t sub_1C8F242C4()
{
  sub_1C8F24A94();

  return sub_1C9062B4C();
}

uint64_t sub_1C8F243BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v12 = *(v0 + 26);
  v13 = *(v0 + 27);
  v14 = *(v0 + 28);
  v15 = *(v0 + 29);
  v6 = v0[4];
  v18 = v0[6];
  v19 = v0[5];
  v16 = v0[8];
  v17 = v0[7];
  v7 = qword_1EC3115E8;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_17_31();
  }

  v8 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v8, qword_1EC390E00);
  sub_1C9062E5C();
  sub_1C9062BFC();
  if (qword_1EC3115F0 != -1)
  {
    OUTLINED_FUNCTION_16_29();
  }

  OUTLINED_FUNCTION_10(v8, qword_1EC390E18);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_20_27();
  sub_1C8D28184(&qword_1EC313370, &qword_1EC313368, &unk_1C906B510);
  sub_1C9062BFC();
  if (qword_1EC3115F8 != -1)
  {
    OUTLINED_FUNCTION_15_29();
  }

  OUTLINED_FUNCTION_10(v8, qword_1EC390E30);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if (v4)
  {
    OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_1_69(&qword_1EC319FC8);
  }

  OUTLINED_FUNCTION_4_51();
  if (qword_1EC311600 != -1)
  {
    OUTLINED_FUNCTION_14_37();
  }

  OUTLINED_FUNCTION_10(v8, qword_1EC390E48);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if (v5)
  {
    OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_1_69(&qword_1EC319FC0);
  }

  OUTLINED_FUNCTION_4_51();
  if (qword_1EC311608 != -1)
  {
    OUTLINED_FUNCTION_13_30();
  }

  OUTLINED_FUNCTION_10(v8, qword_1EC390E60);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if (v12)
  {
    OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_1_69(&qword_1EC319FB8);
  }

  OUTLINED_FUNCTION_4_51();
  if (qword_1EC311610 != -1)
  {
    OUTLINED_FUNCTION_12_35();
  }

  OUTLINED_FUNCTION_10(v8, qword_1EC390E78);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if (v13)
  {
    OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_1_69(&qword_1EC319FB0);
  }

  OUTLINED_FUNCTION_4_51();
  if (qword_1EC311618 != -1)
  {
    OUTLINED_FUNCTION_11_34();
  }

  OUTLINED_FUNCTION_10(v8, qword_1EC390E90);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if (v14)
  {
    OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_1_69(&qword_1EC319FA8);
  }

  OUTLINED_FUNCTION_4_51();
  if (qword_1EC311620 != -1)
  {
    OUTLINED_FUNCTION_10_41();
  }

  OUTLINED_FUNCTION_10(v8, qword_1EC390EA8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if (v15)
  {
    OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_1_69(&qword_1EC319FA0);
  }

  OUTLINED_FUNCTION_4_51();
  if (qword_1EC311628 != -1)
  {
    OUTLINED_FUNCTION_9_36();
  }

  OUTLINED_FUNCTION_10(v8, qword_1EC390EC0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if ((~v6 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_1_69(&qword_1EC319F98);
  }

  sub_1C8CD1784(v6);
  sub_1C9062BFC();
  if (qword_1EC311630 != -1)
  {
    OUTLINED_FUNCTION_8_43();
  }

  OUTLINED_FUNCTION_10(v8, qword_1EC390ED8);
  sub_1C9062E5C();
  if (v18)
  {
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_1_69(&qword_1EC319F90);
    v9 = swift_allocObject();
    v10 = v19;
    v9[2] = v19;
    v9[3] = v18;
    v9[4] = v17;
    v9[5] = v16;
  }

  else
  {
    v10 = v19;
  }

  sub_1C8D16DD0(v10, v18);
  return sub_1C9062BFC();
}

uint64_t sub_1C8F2496C()
{
  v0 = qword_1EC319E70;

  return v0;
}

unint64_t sub_1C8F249A8()
{
  result = qword_1EC319E80;
  if (!qword_1EC319E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E80);
  }

  return result;
}

unint64_t sub_1C8F24A00(void *a1)
{
  a1[1] = sub_1C8F24A40();
  a1[2] = sub_1C8F24A94();
  a1[3] = sub_1C8D16A8C();
  result = sub_1C8F24AE8();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8F24A40()
{
  result = qword_1EC319E88;
  if (!qword_1EC319E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E88);
  }

  return result;
}

unint64_t sub_1C8F24A94()
{
  result = qword_1EC319E90;
  if (!qword_1EC319E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E90);
  }

  return result;
}

unint64_t sub_1C8F24AE8()
{
  result = qword_1EC319E98;
  if (!qword_1EC319E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E98);
  }

  return result;
}

unint64_t sub_1C8F24B40()
{
  result = qword_1EC319EA0;
  if (!qword_1EC319EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319EA0);
  }

  return result;
}

unint64_t sub_1C8F24B94()
{
  result = qword_1EC319EB0;
  if (!qword_1EC319EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319EB0);
  }

  return result;
}

uint64_t sub_1C8F24BE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComparisonPredicate.Template(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8F24C2C()
{
  result = qword_1EC319EC8;
  if (!qword_1EC319EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EC0, &unk_1C90C82C0);
    sub_1C8DCE280();
    sub_1C8DCE1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319EC8);
  }

  return result;
}

unint64_t sub_1C8F24CB8()
{
  result = qword_1EC319ED8;
  if (!qword_1EC319ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319ED0, &unk_1C90A7FA0);
    sub_1C8D0BD80();
    sub_1C8D0BDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319ED8);
  }

  return result;
}

unint64_t sub_1C8F24D44()
{
  result = qword_1EC319EE8;
  if (!qword_1EC319EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EE0, &unk_1C90C82B0);
    sub_1C8EF8FAC();
    sub_1C8EF8E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319EE8);
  }

  return result;
}

unint64_t sub_1C8F24DD0()
{
  result = qword_1EC319EF8;
  if (!qword_1EC319EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EF0, &unk_1C90A7FB0);
    sub_1C8DCDE28();
    sub_1C8DCDA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319EF8);
  }

  return result;
}

unint64_t sub_1C8F24E5C()
{
  result = qword_1EC319F08;
  if (!qword_1EC319F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F00, &unk_1C90C82A0);
    sub_1C8DCDDD4();
    sub_1C8DCD98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F08);
  }

  return result;
}

unint64_t sub_1C8F24EE8()
{
  result = qword_1EC319F18;
  if (!qword_1EC319F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F10, &unk_1C90A7FC0);
    sub_1C8D943C0();
    sub_1C8D94414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F18);
  }

  return result;
}

unint64_t sub_1C8F24F74()
{
  result = qword_1EC319F28;
  if (!qword_1EC319F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F20, &unk_1C90C8290);
    sub_1C8E2E59C();
    sub_1C8E2E5F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F28);
  }

  return result;
}

unint64_t sub_1C8F25000()
{
  result = qword_1EC319F38;
  if (!qword_1EC319F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F30, &qword_1C90A7FD0);
    sub_1C8EF9000();
    sub_1C8EF8EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F38);
  }

  return result;
}

uint64_t sub_1C8F250F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313368, &unk_1C906B510);
    sub_1C8F24BE8(&qword_1EDA633B8);
    sub_1C8F24BE8(&qword_1EDA633C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8F251A4()
{
  result = qword_1EC319F50;
  if (!qword_1EC319F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EC0, &unk_1C90C82C0);
    sub_1C8DCE280();
    sub_1C8DCE1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F50);
  }

  return result;
}

unint64_t sub_1C8F25230()
{
  result = qword_1EC319F58;
  if (!qword_1EC319F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319ED0, &unk_1C90A7FA0);
    sub_1C8D0BD80();
    sub_1C8D0BDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F58);
  }

  return result;
}

unint64_t sub_1C8F252BC()
{
  result = qword_1EC319F60;
  if (!qword_1EC319F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EE0, &unk_1C90C82B0);
    sub_1C8EF8FAC();
    sub_1C8EF8E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F60);
  }

  return result;
}

unint64_t sub_1C8F25348()
{
  result = qword_1EC319F68;
  if (!qword_1EC319F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EF0, &unk_1C90A7FB0);
    sub_1C8DCDE28();
    sub_1C8DCDA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F68);
  }

  return result;
}

unint64_t sub_1C8F253D4()
{
  result = qword_1EC319F70;
  if (!qword_1EC319F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F00, &unk_1C90C82A0);
    sub_1C8DCDDD4();
    sub_1C8DCD98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F70);
  }

  return result;
}

unint64_t sub_1C8F25460()
{
  result = qword_1EC319F78;
  if (!qword_1EC319F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F10, &unk_1C90A7FC0);
    sub_1C8D943C0();
    sub_1C8D94414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F78);
  }

  return result;
}

unint64_t sub_1C8F254EC()
{
  result = qword_1EC319F80;
  if (!qword_1EC319F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F20, &unk_1C90C8290);
    sub_1C8E2E59C();
    sub_1C8E2E5F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F80);
  }

  return result;
}

unint64_t sub_1C8F25578()
{
  result = qword_1EC319F88;
  if (!qword_1EC319F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F30, &qword_1C90A7FD0);
    sub_1C8EF9000();
    sub_1C8EF8EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F88);
  }

  return result;
}

uint64_t sub_1C8F256A4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8F24B94();
  return sub_1C9062E8C();
}

uint64_t getEnumTagSinglePayload for PredicateTemplatesRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PredicateTemplatesRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8F25884()
{
  result = qword_1EC319FD0;
  if (!qword_1EC319FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319FD0);
  }

  return result;
}

unint64_t sub_1C8F258DC()
{
  result = qword_1EC319FD8;
  if (!qword_1EC319FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319FD8);
  }

  return result;
}

unint64_t sub_1C8F25934()
{
  result = qword_1EC319FE0;
  if (!qword_1EC319FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319FE0);
  }

  return result;
}

uint64_t LNEffectiveBundleIdentifierGrouping.isLinkSystemFrameworkIntent.getter()
{
  v1 = [v0 effectiveBundleIdentifiers];
  v2 = [v1 firstObject];

  if (v2)
  {
    sub_1C906468C();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    sub_1C8F25B28();
    if (swift_dynamicCast())
    {
      v3 = [v0 effectiveBundleIdentifiers];
      v4 = [v3 count];

      if (v4 == 1)
      {
        v5 = [v7 type];

        if (v5 == 3)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C8F25AC0(v10);
  }

  return 0;
}

uint64_t sub_1C8F25AC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164F0, &qword_1C907A7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8F25B28()
{
  result = qword_1EC319FE8;
  if (!qword_1EC319FE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC319FE8);
  }

  return result;
}

uint64_t ToolSummaryComponent.init(protobuf:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 == 255)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319FF0, &qword_1C90A8100);
    sub_1C8F25C64();
    swift_allocError();
    *v9 = &type metadata for ToolKitProtoToolSummaryString.ToolKitProtoComponentKind;
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x1E69E08B0], v8);
    swift_willThrow();
    return OUTLINED_FUNCTION_1_70();
  }

  else
  {
    v5 = *a1;
    v4 = a1[1];
    v6 = v3 & 1;
    OUTLINED_FUNCTION_264();
    result = OUTLINED_FUNCTION_1_70();
    *a2 = v5;
    *(a2 + 8) = v4;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1C8F25C64()
{
  result = qword_1EC319FF8;
  if (!qword_1EC319FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319FF0, &qword_1C90A8100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319FF8);
  }

  return result;
}

uint64_t ToolSummaryComponent.protobuf(useCase:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  OUTLINED_FUNCTION_264();
  sub_1C8F25E08();
  sub_1C9063ACC();
  return OUTLINED_FUNCTION_265();
}

uint64_t sub_1C8F25D6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a4 & 1;
  OUTLINED_FUNCTION_264();
  result = sub_1C8D06DF8(v7, v8, v9);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v10;
  return result;
}

unint64_t sub_1C8F25E08()
{
  result = qword_1EC31A000;
  if (!qword_1EC31A000)
  {
    type metadata accessor for ToolKitProtoToolSummaryString.Component(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A000);
  }

  return result;
}

uint64_t ToolSummaryString.init(protobuf:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  sub_1C8F25F28();

  v6 = sub_1C90641EC();
  result = sub_1C8F26414(a1, type metadata accessor for ToolKitProtoToolSummaryString);
  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

unint64_t sub_1C8F25F28()
{
  result = qword_1EC31A008;
  if (!qword_1EC31A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A008);
  }

  return result;
}

uint64_t ToolSummaryString.protobuf(useCase:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  sub_1C8F25FF8();
  result = sub_1C90641FC();
  if (!v2)
  {
    v6 = result;
    v7 = a1 + *(type metadata accessor for ToolKitProtoToolSummaryString(0) + 20);
    result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a1 = v6;
  }

  return result;
}

unint64_t sub_1C8F25FF8()
{
  result = qword_1EC31A010;
  if (!qword_1EC31A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A010);
  }

  return result;
}

uint64_t ToolInvocationSignature.init(protobuf:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;

  v43 = sub_1C8D2BCE0(v8);
  v9 = a1[1];

  v42 = sub_1C8D2BCE0(v10);
  v44 = a1;
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A018, &qword_1C90A8108);
  v12 = sub_1C906493C();
  v13 = v12;
  v14 = v11 + 64;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v11 + 64);
  v18 = (v15 + 63) >> 6;
  v45 = v12 + 64;
  v48 = v11;

  v20 = 0;
  v46 = v13;
  if (v17)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v17));
      v49 = (v17 - 1) & v17;
LABEL_10:
      v24 = v21 | (v20 << 6);
      v25 = (*(v48 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      sub_1C8F2635C(*(v48 + 56) + *(v47 + 72) * v24, v6);
      v28 = *v6;
      sub_1C8DDC704();
      sub_1C8F263C0();

      v29 = v50;
      v30 = sub_1C906436C();
      v50 = v29;
      if (v29)
      {
        break;
      }

      v31 = v30;
      OUTLINED_FUNCTION_0_75();
      result = sub_1C8F26414(v6, v32);
      v13 = v46;
      *(v45 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v33 = (v13[6] + 16 * v24);
      *v33 = v26;
      v33[1] = v27;
      *(v13[7] + 8 * v24) = v31;
      v34 = v13[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_17;
      }

      v13[2] = v36;
      v17 = v49;
      if (!v49)
      {
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_0_75();
    sub_1C8F26414(v6, v39);
    OUTLINED_FUNCTION_2_65();
  }

  else
  {
LABEL_5:
    v22 = v20;
    while (1)
    {
      v20 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        result = OUTLINED_FUNCTION_2_65();
        v37 = v41;
        v38 = v42;
        *v41 = v43;
        v37[1] = v38;
        v37[2] = v13;
        return result;
      }

      v23 = *(v14 + 8 * v20);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v49 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8F2635C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8F263C0()
{
  result = qword_1EC31A020;
  if (!qword_1EC31A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A020);
  }

  return result;
}

uint64_t sub_1C8F26414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ToolInvocationSignature.protobuf(useCase:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];

  v10 = sub_1C8D7904C(v7);
  v11 = sub_1C8D7904C(v8);
  sub_1C8D759FC(sub_1C8F265DC, _0, v9, v12, v13, v14, v15, v16, _0[0], _0[1], a1, _0[3], _0[4], _0[5], _0[6], _0[7], _0[8], _0[9], _0[10], _0[11]);
  if (v4)
  {
  }

  else
  {
    v19 = v17;
    v20 = a2 + *(type metadata accessor for ToolKitProtoToolInvocationSignature(0) + 28);
    result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v19;
  }

  return result;
}

uint64_t sub_1C8F2654C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_1C8DDC704();
  sub_1C8F0750C();
  result = sub_1C906437C();
  if (!v2)
  {
    v6 = result;
    v7 = a2 + *(type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0) + 20);
    result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a2 = v6;
  }

  return result;
}

unint64_t sub_1C8F26630()
{
  result = qword_1EC31A028;
  if (!qword_1EC31A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A028);
  }

  return result;
}

unint64_t sub_1C8F26688()
{
  result = qword_1EC31A030;
  if (!qword_1EC31A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A030);
  }

  return result;
}

uint64_t sub_1C8F26708(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8F26768()
{
  result = qword_1EDA60DB8;
  if (!qword_1EDA60DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60DB8);
  }

  return result;
}

uint64_t sub_1C8F26810(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1635017060 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701603686 && a2 == 0xE400000000000000)
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

uint64_t sub_1C8F26944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F26810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F2696C(uint64_t a1)
{
  v2 = sub_1C8F26E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F269A8(uint64_t a1)
{
  v2 = sub_1C8F26E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F269E4(uint64_t a1)
{
  v2 = sub_1C8F26EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F26A20(uint64_t a1)
{
  v2 = sub_1C8F26EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F26A5C(uint64_t a1)
{
  v2 = sub_1C8F26E8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F26A98(uint64_t a1)
{
  v2 = sub_1C8F26E8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F26AD4(uint64_t a1)
{
  v2 = sub_1C8F26F34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F26B10(uint64_t a1)
{
  v2 = sub_1C8F26F34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DisplayRepresentationConfiguration.ImageRepresentation.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A038, &qword_1C90A8290);
  v4 = OUTLINED_FUNCTION_11(v3);
  v44 = v5;
  v45 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A040, &qword_1C90A8298);
  v11 = OUTLINED_FUNCTION_11(v10);
  v41 = v12;
  v42 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v37 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A048, &qword_1C90A82A0);
  v18 = OUTLINED_FUNCTION_11(v17);
  v38 = v19;
  v39 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A050, &qword_1C90A82A8);
  OUTLINED_FUNCTION_11(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v37 - v31;
  v33 = *v0;
  v34 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8F26E38();
  sub_1C9064E1C();
  if (v33)
  {
    if (v33 == 1)
    {
      sub_1C8F26EE0();
      v24 = v40;
      OUTLINED_FUNCTION_2_66();
      v36 = v41;
      v35 = v42;
    }

    else
    {
      sub_1C8F26E8C();
      v24 = v43;
      OUTLINED_FUNCTION_2_66();
      v36 = v44;
      v35 = v45;
    }
  }

  else
  {
    sub_1C8F26F34();
    OUTLINED_FUNCTION_2_66();
    v36 = v38;
    v35 = v39;
  }

  (*(v36 + 8))(v24, v35);
  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8F26E38()
{
  result = qword_1EDA62F00;
  if (!qword_1EDA62F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F00);
  }

  return result;
}

unint64_t sub_1C8F26E8C()
{
  result = qword_1EC31A058;
  if (!qword_1EC31A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A058);
  }

  return result;
}

unint64_t sub_1C8F26EE0()
{
  result = qword_1EDA62EE8;
  if (!qword_1EDA62EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EE8);
  }

  return result;
}

unint64_t sub_1C8F26F34()
{
  result = qword_1EC31A060;
  if (!qword_1EC31A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A060);
  }

  return result;
}

void DisplayRepresentationConfiguration.ImageRepresentation.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v71 = v0;
  v3 = v2;
  v66 = v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A068, &qword_1C90A82B0);
  OUTLINED_FUNCTION_11(v70);
  v67 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A070, &qword_1C90A82B8);
  v11 = OUTLINED_FUNCTION_11(v10);
  v64 = v12;
  v65 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A078, &qword_1C90A82C0);
  OUTLINED_FUNCTION_11(v18);
  v63 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A080, &unk_1C90A82C8);
  OUTLINED_FUNCTION_11(v25);
  v68 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_73();
  v30 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8F26E38();
  v31 = v71;
  sub_1C9064DEC();
  if (v31)
  {
    goto LABEL_10;
  }

  v60 = v18;
  v61 = v24;
  v62 = v17;
  v33 = v69;
  v32 = v70;
  v71 = v3;
  v34 = sub_1C9064A9C();
  sub_1C8CB8914(v34, 0);
  if (v36 == v37 >> 1)
  {
    goto LABEL_9;
  }

  v59 = 0;
  if (v36 < (v37 >> 1))
  {
    LODWORD(v38) = *(v35 + v36);
    sub_1C8CB891C(v36 + 1);
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    v43 = v40 == v42 >> 1;
    v44 = v67;
    if (v43)
    {
      if (v38)
      {
        if (v38 == 1)
        {
          sub_1C8F26EE0();
          v45 = v62;
          OUTLINED_FUNCTION_74();
          v46 = v66;
          v47 = v25;
          v48 = v68;
          swift_unknownObjectRelease();
          (*(v64 + 8))(v45, v65);
          (*(v48 + 8))(v1, v47);
        }

        else
        {
          LODWORD(v65) = v38;
          sub_1C8F26E8C();
          v54 = v59;
          sub_1C906498C();
          v46 = v66;
          v38 = v25;
          v55 = v68;
          if (v54)
          {
            (*(v68 + 8))(v1, v38);
            swift_unknownObjectRelease();
            v3 = v71;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v44 + 8))(v33, v32);
          (*(v55 + 8))(v1, v38);
          LOBYTE(v38) = v65;
        }
      }

      else
      {
        sub_1C8F26F34();
        v53 = v61;
        OUTLINED_FUNCTION_74();
        swift_unknownObjectRelease();
        (*(v63 + 8))(v53, v60);
        v56 = OUTLINED_FUNCTION_41();
        v57(v56);
        v46 = v66;
      }

      *v46 = v38;
      __swift_destroy_boxed_opaque_existential_1(v71);
      goto LABEL_11;
    }

LABEL_9:
    v49 = sub_1C90647DC();
    swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v51 = &type metadata for DisplayRepresentationConfiguration.ImageRepresentation;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6AF8], v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v1, v25);
    v3 = v71;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_198();
    return;
  }

  __break(1u);
}

uint64_t sub_1C8F275AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001C90CCE40 == a2)
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

uint64_t sub_1C8F2764C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F275AC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8F27678(uint64_t a1)
{
  v2 = sub_1C8F27988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F276B4(uint64_t a1)
{
  v2 = sub_1C8F27988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DisplayRepresentationConfiguration.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A088, &qword_1C90A82D8);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_73();
  v10 = *v0;
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8F27988();
  sub_1C9064E1C();
  sub_1C8F279DC();
  sub_1C9064B8C();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentationConfiguration.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_196();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A090, &qword_1C90A82E0);
  OUTLINED_FUNCTION_11(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_73();
  v25 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1C8F27988();
  sub_1C9064DEC();
  if (!v13)
  {
    sub_1C8F27A30();
    sub_1C9064A6C();
    (*(v21 + 8))(v14, v19);
    *v18 = a13;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8F27988()
{
  result = qword_1EDA62EB0;
  if (!qword_1EDA62EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EB0);
  }

  return result;
}

unint64_t sub_1C8F279DC()
{
  result = qword_1EDA605E8[0];
  if (!qword_1EDA605E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA605E8);
  }

  return result;
}

unint64_t sub_1C8F27A30()
{
  result = qword_1EDA605E0;
  if (!qword_1EDA605E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605E0);
  }

  return result;
}

unint64_t sub_1C8F27A88()
{
  result = qword_1EC31A098;
  if (!qword_1EC31A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A098);
  }

  return result;
}

unint64_t sub_1C8F27AE0()
{
  result = qword_1EC31A0A0;
  if (!qword_1EC31A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisplayRepresentationConfiguration.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1C8F27C00(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8F27D10()
{
  result = qword_1EC31A0A8;
  if (!qword_1EC31A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0A8);
  }

  return result;
}

unint64_t sub_1C8F27D68()
{
  result = qword_1EC31A0B0;
  if (!qword_1EC31A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0B0);
  }

  return result;
}

unint64_t sub_1C8F27DC0()
{
  result = qword_1EDA62EA0;
  if (!qword_1EDA62EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EA0);
  }

  return result;
}

unint64_t sub_1C8F27E18()
{
  result = qword_1EDA62EA8;
  if (!qword_1EDA62EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EA8);
  }

  return result;
}

unint64_t sub_1C8F27E70()
{
  result = qword_1EDA62EB8;
  if (!qword_1EDA62EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EB8);
  }

  return result;
}

unint64_t sub_1C8F27EC8()
{
  result = qword_1EDA62EC0;
  if (!qword_1EDA62EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EC0);
  }

  return result;
}

unint64_t sub_1C8F27F20()
{
  result = qword_1EDA62ED8;
  if (!qword_1EDA62ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62ED8);
  }

  return result;
}

unint64_t sub_1C8F27F78()
{
  result = qword_1EDA62EE0;
  if (!qword_1EDA62EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EE0);
  }

  return result;
}

unint64_t sub_1C8F27FD0()
{
  result = qword_1EDA62EC8;
  if (!qword_1EDA62EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EC8);
  }

  return result;
}

unint64_t sub_1C8F28028()
{
  result = qword_1EDA62ED0;
  if (!qword_1EDA62ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62ED0);
  }

  return result;
}

unint64_t sub_1C8F28080()
{
  result = qword_1EDA62EF0;
  if (!qword_1EDA62EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EF0);
  }

  return result;
}

unint64_t sub_1C8F280D8()
{
  result = qword_1EDA62EF8;
  if (!qword_1EDA62EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EF8);
  }

  return result;
}

ToolKit::TriggerFlag __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TriggerFlag.init(protobuf:)(Swift::OpaquePointer protobuf)
{
  v3 = v1;
  v4 = *(protobuf._rawValue + 2);
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C8D0979C();
    v5 = 32;
    v6 = v15;
    do
    {
      v7 = qword_1C90A89D8[*(protobuf._rawValue + v5)];
      v8 = *(v15 + 16);
      if (v8 >= *(v15 + 24) >> 1)
      {
        sub_1C8D0979C();
      }

      *(v15 + 16) = v8 + 1;
      *(v15 + 8 * v8 + 32) = v7;
      ++v5;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v6 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v6 + 32);
    do
    {
      v13 = *v11++;
      v12 = v13;
      if ((v13 & ~v10) == 0)
      {
        v12 = 0;
      }

      v10 |= v12;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  *v3 = v10;
  return result;
}

uint64_t TriggerFlag.protobuf(useCase:)()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *(&unk_1F489B938 + v1 + 32);
    v5 = (v4 & ~v2) != 0 || v4 >= 5;
    if (!v5 && ((0x17u >> v4) & 1) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C8D01A54(0, *(v3 + 16) + 1, 1, v3);
        v3 = v8;
      }

      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1C8D01A54(v6 > 1, v7 + 1, 1, v3);
        v3 = v9;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + v7 + 32) = 0x300020100uLL >> (8 * v4);
    }

    v1 += 8;
  }

  while (v1 != 24);
  return v3;
}

uint64_t sub_1C8F283BC@<X0>(uint64_t *a1@<X8>)
{
  result = TriggerFlag.protobuf(useCase:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t TriggerDefinition.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - v6;
  v8 = a1[1];
  v35 = *a1;
  v9 = a1[2];
  v10 = a1[3];
  v12 = a1[7];
  v11 = a1[8];
  v13 = a1[4];
  sub_1C8F06C40();

  v14 = sub_1C90641EC();
  if (v2)
  {
    sub_1C8F288FC(a1);
  }

  else
  {
    v15 = v14;
    v32 = v8;
    v33 = v10;
    v30 = v12;
    v31 = v9;
    v34 = v11;
    v16 = v36;
    v17 = type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
    sub_1C8D774FC(a1 + *(v17 + 40), v7);
    sub_1C8D1FD40();
    sub_1C906351C();
    v19 = v38;
    v20 = a1[5];
    sub_1C8D1FC54();

    v21 = sub_1C90641EC();
    v22 = v33;
    v23 = v34;
    v24 = v32;
    v25 = v21;
    v26 = a1[6];

    TriggerFlag.init(protobuf:)(v27);
    result = sub_1C8F288FC(a1);
    v28 = v37;
    *v16 = v35;
    v16[1] = v24;
    v29 = v30;
    v16[2] = v31;
    v16[3] = v22;
    v16[4] = v29;
    v16[5] = v23;
    v16[6] = v15;
    v16[7] = v25;
    v16[8] = v19;
    v16[9] = v28;
  }

  return result;
}

uint64_t TriggerDefinition.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v32 - v5;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v36 = v1[4];
  v37 = v8;
  v12 = v1[6];
  v11 = v1[7];
  v39 = v6;
  v40 = v11;
  v13 = v1[8];
  v14 = v1[9];
  v15 = v10;
  sub_1C8F06DE4();

  v16 = sub_1C90641FC();
  if (v2)
  {
  }

  else
  {
    v18 = v16;
    v32 = v14;
    v33 = v7;
    v34 = v9;
    v35 = v15;
    v42 = v13;

    v19 = v41;
    TypeInstance.protobuf(useCase:)();

    v20 = type metadata accessor for ToolKitProtoTypeInstance(0);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
    sub_1C8D531CC();
    v21 = sub_1C90641FC();
    v23 = v33;
    v22 = v34;
    v24 = v21;
    v42 = v32;
    v32 = v20;
    v40 = TriggerFlag.protobuf(useCase:)();
    v25 = type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
    v26 = *(v25 + 40);
    v27 = v38;
    __swift_storeEnumTagSinglePayload(v38 + v26, 1, 1, v32);
    v28 = v27 + *(v25 + 44);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v27 = v39;
    v27[1] = v23;
    v29 = v36;
    v27[2] = v37;
    v27[3] = v22;
    v30 = v35;
    v27[7] = v29;
    v27[8] = v30;
    v27[4] = v18;
    result = sub_1C8D7732C(v19, v27 + v26);
    v31 = v40;
    v27[5] = v24;
    v27[6] = v31;
  }

  return result;
}

uint64_t sub_1C8F288FC(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8F28958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8F289C4()
{
  result = qword_1EC31A0B8;
  if (!qword_1EC31A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0B8);
  }

  return result;
}

unint64_t sub_1C8F28A1C()
{
  result = qword_1EC31A0C0;
  if (!qword_1EC31A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProtobufConstants(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_7ToolKit35ContainerMetadataLocalizationRecordVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1C8F28B4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 104))
  {
    v5 = *(a1 + 112);
    v4 = *(a1 + 120);
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = *(a1 + 80);
  v31 = *(a1 + 81);
  v13 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v32 = *(a1 + 40);
  }

  else
  {
    v7 = 0;
    v32 = 0;
  }

  v14 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v15 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v33 = v10;
  }

  else
  {
    v11 = 0;
    v33 = 0;
  }

  v36 = *(a1 + 16);
  v16 = *(a1 + 128);
  v34 = v8;
  if (v16)
  {
    v30 = v7;
    v17 = *(v16 + 16);
    if (v17)
    {
      v26 = v9;
      v27 = v12;
      v28 = v5;
      v29 = v4;
      sub_1C8F294A4(&v36, v35);
      v35[0] = MEMORY[0x1E69E7CC0];
      sub_1C8CA6480();
      v18 = v35[0];
      v19 = (v16 + 64);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        v35[0] = v18;
        v22 = *(v18 + 16);
        v23 = *(v18 + 24);

        if (v22 >= v23 >> 1)
        {
          sub_1C8CA6480();
          v18 = v35[0];
        }

        *(v18 + 16) = v22 + 1;
        v24 = v18 + 16 * v22;
        *(v24 + 32) = v20;
        *(v24 + 40) = v21;
        v19 += 6;
        --v17;
      }

      while (v17);
      sub_1C8D501D4(a1);
      v5 = v28;
      v4 = v29;
      v12 = v27;
      v9 = v26;
    }

    else
    {
      sub_1C8F294A4(&v36, v35);
      sub_1C8D501D4(a1);
      v18 = MEMORY[0x1E69E7CC0];
    }

    v7 = v30;
  }

  else
  {
    sub_1C8F294A4(&v36, v35);
    sub_1C8D501D4(a1);
    v18 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v18;
  result = *&v36;
  *(a2 + 24) = v36;
  *(a2 + 40) = v7;
  *(a2 + 48) = v32;
  *(a2 + 56) = v31;
  *(a2 + 64) = v9;
  *(a2 + 72) = v34;
  *(a2 + 80) = v11;
  *(a2 + 88) = v33;
  *(a2 + 96) = v12;
  return result;
}

uint64_t sub_1C8F28D90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C90CCE60 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974;
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

uint64_t sub_1C8F28EAC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x617A696C61636F6CLL;
  }

  return 0x736D796E6F6E7973;
}

void *sub_1C8F28F10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0C8, &qword_1C90A8B50);
  v5 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8F29388();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __dst[111] = 0;
  sub_1C8E2A994();
  OUTLINED_FUNCTION_1_71();
  sub_1C9064A6C();
  memcpy(__dst, v20, 0x52uLL);
  LOBYTE(v17[0]) = 1;
  sub_1C8DDD798();
  OUTLINED_FUNCTION_1_71();
  sub_1C90649EC();
  v7 = v18[1];
  v12 = v18[2];
  v13 = v18[3];
  v14 = v18[4];
  v15 = v18[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0D0, &qword_1C90A8B58);
  __dst[110] = 2;
  sub_1C8F29420();
  sub_1C90649EC();
  v8 = OUTLINED_FUNCTION_0_2();
  v9(v8);
  v10 = v19;
  memcpy(v17, __dst, 0x58uLL);
  v17[11] = v15;
  v17[12] = v7;
  v17[13] = v12;
  v17[14] = v13;
  v17[15] = v14;
  v17[16] = v19;
  sub_1C8D50178(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v18, __dst, 0x58uLL);
  v18[11] = v15;
  v18[12] = v7;
  v18[13] = v12;
  v18[14] = v13;
  v18[15] = v14;
  v18[16] = v10;
  sub_1C8D501D4(v18);
  return memcpy(a2, v17, 0x88uLL);
}

uint64_t sub_1C8F29238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F28D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F29260(uint64_t a1)
{
  v2 = sub_1C8F29388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F2929C(uint64_t a1)
{
  v2 = sub_1C8F29388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C8F292D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8F28F10(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x88uLL);
  }

  return result;
}

uint64_t sub_1C8F29324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8D80AB8();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C8F29388()
{
  result = qword_1EDA695E8;
  if (!qword_1EDA695E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695E8);
  }

  return result;
}

uint64_t sub_1C8F293DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1C8F29420()
{
  result = qword_1EDA69470;
  if (!qword_1EDA69470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC31A0D0, &qword_1C90A8B58);
    sub_1C8EFEE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69470);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedContainerMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8F295E0()
{
  result = qword_1EC31A0D8;
  if (!qword_1EC31A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0D8);
  }

  return result;
}

unint64_t sub_1C8F29638()
{
  result = qword_1EDA695D8;
  if (!qword_1EDA695D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695D8);
  }

  return result;
}

unint64_t sub_1C8F29690()
{
  result = qword_1EDA695E0;
  if (!qword_1EDA695E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695E0);
  }

  return result;
}

uint64_t sub_1C8F296E4(char a1)
{
  v2 = 0xE300000000000000;
  v3 = 5459817;
  switch(a1)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x534F64615069;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x534F63616DLL;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x534F6863746177;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 1397716596;
      break;
    case 5:
      v2 = 0xE800000000000000;
      v3 = 0x534F6E6F69736976;
      break;
    case 6:
      v2 = 0xEF79726F73736563;
      v3 = 0x6341206F69647541;
      break;
    case 7:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E55;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA81A90](v3, v2);
}

uint64_t RuntimeDeviceCapability.isSatisfied.getter()
{
  switch(v0[1])
  {
    case 0:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1038];
      goto LABEL_10;
    case 1:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1040];
      goto LABEL_10;
    case 2:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1020];
      goto LABEL_10;
    case 3:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1018];
      goto LABEL_10;
    case 4:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1050];
      goto LABEL_10;
    case 5:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1048];
      goto LABEL_10;
    case 6:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1010];
      goto LABEL_10;
    case 7:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1058];
LABEL_10:
      v4 = [v1 hasCapability_];

      break;
    default:
      v6 = *v0;
      v7 = *(v0 + 16);
      v8 = v0[1];
      v9 = sub_1C9063EBC();
      v10 = MGIsQuestionValid();

      if (v10)
      {
        v11 = sub_1C9063EBC();
        v12 = MGGetBoolAnswer();

        v4 = v12 ^ v7 ^ 1;
      }

      else
      {
        v4 = 0;
      }

      break;
  }

  return v4 & 1;
}

uint64_t static RuntimeDeviceCapability.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_20;
      }

      v7 = OUTLINED_FUNCTION_13_31(*a1, 0);
      v8 = 0;
      goto LABEL_18;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_20;
      }

      v9 = 1;
      v10 = OUTLINED_FUNCTION_13_31(*a1, 1uLL);
      sub_1C8F29C58(v10, 1uLL);
      return v9 & 1;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_20;
      }

      v7 = OUTLINED_FUNCTION_13_31(*a1, 2uLL);
      v8 = 2;
      goto LABEL_18;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_20;
      }

      v7 = OUTLINED_FUNCTION_13_31(*a1, 3uLL);
      v8 = 3;
      goto LABEL_18;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_20;
      }

      v7 = OUTLINED_FUNCTION_13_31(*a1, 4uLL);
      v8 = 4;
      goto LABEL_18;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_20;
      }

      v7 = OUTLINED_FUNCTION_13_31(*a1, 5uLL);
      v8 = 5;
      goto LABEL_18;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_20;
      }

      v7 = OUTLINED_FUNCTION_13_31(*a1, 6uLL);
      v8 = 6;
      goto LABEL_18;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_20;
      }

      v7 = OUTLINED_FUNCTION_13_31(*a1, 7uLL);
      v8 = 7;
LABEL_18:
      sub_1C8F29C58(v7, v8);
      v9 = 1;
      return v9 & 1;
    default:
      if (v5 < 8)
      {
LABEL_20:
        v11 = OUTLINED_FUNCTION_30_25();
        sub_1C8D07280(v11, v12);
        v13 = OUTLINED_FUNCTION_11_35();
        sub_1C8D07280(v13, v14);
        v15 = OUTLINED_FUNCTION_11_35();
        sub_1C8F29C58(v15, v16);
        v17 = OUTLINED_FUNCTION_30_25();
        sub_1C8F29C58(v17, v18);
        v9 = 0;
        return v9 & 1;
      }

      v20 = *a1;
      if (v2 == *a2 && v3 == v5)
      {
        sub_1C8D07280(v20, v3);
        v31 = OUTLINED_FUNCTION_11_35();
        sub_1C8D07280(v31, v32);
        v33 = OUTLINED_FUNCTION_11_35();
        sub_1C8F29C58(v33, v34);
        sub_1C8F29C58(v2, v3);
      }

      else
      {
        v22 = sub_1C9064C2C();
        v23 = OUTLINED_FUNCTION_30_25();
        sub_1C8D07280(v23, v24);
        v25 = OUTLINED_FUNCTION_11_35();
        sub_1C8D07280(v25, v26);
        v27 = OUTLINED_FUNCTION_11_35();
        sub_1C8F29C58(v27, v28);
        v29 = OUTLINED_FUNCTION_30_25();
        sub_1C8F29C58(v29, v30);
        v9 = 0;
        if ((v22 & 1) == 0)
        {
          return v9 & 1;
        }
      }

      v9 = v6 ^ v4 ^ 1;
      return v9 & 1;
  }
}

uint64_t sub_1C8F29C58(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

uint64_t sub_1C8F29C6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6547656C69626F6DLL && a2 == 0xED0000746C617473;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E6F73726570 && a2 == 0xEF746F7073746F48;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73726574736F70 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C90CD030 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72616C756C6C6563 && a2 == 0xEC00000061746144;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E614D6567617473 && a2 == 0xEC00000072656761;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001C90CD050 == a2;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E4F737961776C61 && a2 == 0xEF79616C70736944;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6F69746172626976 && a2 == 0xE90000000000006ELL)
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

unint64_t sub_1C8F29F60(char a1)
{
  result = 0x6547656C69626F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x6C616E6F73726570;
      break;
    case 2:
      result = 0x73726574736F70;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x72616C756C6C6563;
      break;
    case 5:
      result = 0x6E614D6567617473;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6E4F737961776C61;
      break;
    case 8:
      result = 0x6F69746172626976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8F2A0A0(uint64_t a1)
{
  v2 = sub_1C8F2ADB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F2A0DC(uint64_t a1)
{
  v2 = sub_1C8F2ADB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F2A118(uint64_t a1)
{
  v2 = sub_1C8F2AEB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F2A154(uint64_t a1)
{
  v2 = sub_1C8F2AEB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F2A190(uint64_t a1)
{
  v2 = sub_1C8F2AF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F2A1CC(uint64_t a1)
{
  v2 = sub_1C8F2AF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F2A210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F29C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F2A238(uint64_t a1)
{
  v2 = sub_1C8F2AD10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F2A274(uint64_t a1)
{
  v2 = sub_1C8F2AD10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F2A2B0(uint64_t a1)
{
  v2 = sub_1C8F2B004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F2A2EC(uint64_t a1)
{
  v2 = sub_1C8F2B004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F2A328(uint64_t a1)
{
  v2 = sub_1C8F2AFB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F2A364(uint64_t a1)
{
  v2 = sub_1C8F2AFB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F2A3A0(uint64_t a1)
{
  v2 = sub_1C8F2AF5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F2A3DC(uint64_t a1)
{
  v2 = sub_1C8F2AF5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F2A418(uint64_t a1)
{
  v2 = sub_1C8F2AE0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F2A454(uint64_t a1)
{
  v2 = sub_1C8F2AE0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F2A490(uint64_t a1)
{
  v2 = sub_1C8F2AE60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F2A4CC(uint64_t a1)
{
  v2 = sub_1C8F2AE60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F2A508(uint64_t a1)
{
  v2 = sub_1C8F2AD64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F2A544(uint64_t a1)
{
  v2 = sub_1C8F2AD64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RuntimeDeviceCapability.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  v134 = v21;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0E0, &qword_1C90A8C80);
  v28 = OUTLINED_FUNCTION_11(v27);
  v130 = v29;
  v131 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  v129 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0E8, &qword_1C90A8C88);
  v35 = OUTLINED_FUNCTION_11(v34);
  v127 = v36;
  v128 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v126 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0F0, &qword_1C90A8C90);
  v42 = OUTLINED_FUNCTION_11(v41);
  v124 = v43;
  v125 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  v123 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0F8, &qword_1C90A8C98);
  v49 = OUTLINED_FUNCTION_11(v48);
  v121 = v50;
  v122 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_97();
  v120 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A100, &qword_1C90A8CA0);
  v56 = OUTLINED_FUNCTION_11(v55);
  v118 = v57;
  v119 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  v117 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A108, &qword_1C90A8CA8);
  v63 = OUTLINED_FUNCTION_11(v62);
  v115 = v64;
  v116 = v63;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v68);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A110, &qword_1C90A8CB0);
  OUTLINED_FUNCTION_11(v114);
  v113 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A118, &qword_1C90A8CB8);
  OUTLINED_FUNCTION_11(v74);
  v111 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v108 - v79;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A120, &qword_1C90A8CC0);
  OUTLINED_FUNCTION_11(v110);
  v109 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_86();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A128, &qword_1C90A8CC8);
  v132 = OUTLINED_FUNCTION_11(v85);
  v133 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_97();
  v90 = v20[1];
  v108 = *v20;
  v91 = *(v20 + 16);
  v92 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1C8F2AD10();
  sub_1C9064E1C();
  switch(v90)
  {
    case 0:
      sub_1C8F2AFB0();
      v93 = v132;
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296(&a14);
      v94(v80, v74);
      v95 = OUTLINED_FUNCTION_184_3();
      v97 = v93;
      goto LABEL_12;
    case 1:
      sub_1C8F2AF5C();
      v98 = v112;
      OUTLINED_FUNCTION_3_54();
      OUTLINED_FUNCTION_9_37();
      v100 = v98;
      v101 = v114;
      goto LABEL_11;
    case 2:
      sub_1C8F2AF08();
      OUTLINED_FUNCTION_3_54();
      goto LABEL_10;
    case 3:
      sub_1C8F2AEB4();
      OUTLINED_FUNCTION_3_54();
      goto LABEL_10;
    case 4:
      sub_1C8F2AE60();
      OUTLINED_FUNCTION_3_54();
      goto LABEL_10;
    case 5:
      sub_1C8F2AE0C();
      OUTLINED_FUNCTION_3_54();
      goto LABEL_10;
    case 6:
      sub_1C8F2ADB8();
      OUTLINED_FUNCTION_3_54();
      goto LABEL_10;
    case 7:
      sub_1C8F2AD64();
      OUTLINED_FUNCTION_3_54();
LABEL_10:
      v100 = OUTLINED_FUNCTION_30();
LABEL_11:
      v99(v100, v101);
      v95 = OUTLINED_FUNCTION_184_3();
      v97 = v80;
LABEL_12:
      v96(v95, v97);
      break;
    default:
      v102 = v109;
      v137 = 0;
      sub_1C8F2B004();
      v103 = v132;
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      v136 = 0;
      v104 = v110;
      v105 = v134;
      sub_1C9064B2C();
      if (!v105)
      {
        v135 = 1;
        sub_1C9064B3C();
      }

      (*(v102 + 8))(v22, v104);
      v106 = OUTLINED_FUNCTION_184_3();
      v107(v106, v103);
      break;
  }

  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8F2AD10()
{
  result = qword_1EDA69618;
  if (!qword_1EDA69618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69618);
  }

  return result;
}

unint64_t sub_1C8F2AD64()
{
  result = qword_1EC31A130;
  if (!qword_1EC31A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A130);
  }

  return result;
}

unint64_t sub_1C8F2ADB8()
{
  result = qword_1EC31A138;
  if (!qword_1EC31A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A138);
  }

  return result;
}

unint64_t sub_1C8F2AE0C()
{
  result = qword_1EC31A140;
  if (!qword_1EC31A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A140);
  }

  return result;
}

unint64_t sub_1C8F2AE60()
{
  result = qword_1EC31A148;
  if (!qword_1EC31A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A148);
  }

  return result;
}

unint64_t sub_1C8F2AEB4()
{
  result = qword_1EC31A150;
  if (!qword_1EC31A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A150);
  }

  return result;
}

unint64_t sub_1C8F2AF08()
{
  result = qword_1EC31A158;
  if (!qword_1EC31A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A158);
  }

  return result;
}

unint64_t sub_1C8F2AF5C()
{
  result = qword_1EC31A160;
  if (!qword_1EC31A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A160);
  }

  return result;
}

unint64_t sub_1C8F2AFB0()
{
  result = qword_1EC31A168;
  if (!qword_1EC31A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A168);
  }

  return result;
}

unint64_t sub_1C8F2B004()
{
  result = qword_1EDA69600;
  if (!qword_1EDA69600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69600);
  }

  return result;
}

uint64_t RuntimeDeviceCapability.hash(into:)()
{
  switch(v0[1])
  {
    case 0:
      v1 = 1;
      goto LABEL_10;
    case 1:
      v1 = 2;
      goto LABEL_10;
    case 2:
      v1 = 3;
      goto LABEL_10;
    case 3:
      v1 = 4;
      goto LABEL_10;
    case 4:
      v1 = 5;
      goto LABEL_10;
    case 5:
      v1 = 6;
      goto LABEL_10;
    case 6:
      v1 = 7;
      goto LABEL_10;
    case 7:
      v1 = 8;
LABEL_10:
      result = MEMORY[0x1CCA82810](v1);
      break;
    default:
      v3 = *(v0 + 16);
      v4 = *v0;
      MEMORY[0x1CCA82810](0);
      sub_1C9063FBC();
      result = sub_1C9064D9C();
      break;
  }

  return result;
}

uint64_t RuntimeDeviceCapability.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_298();
  switch(v1)
  {
    case 0:
      v4 = 1;
      goto LABEL_10;
    case 1:
      v4 = 2;
      goto LABEL_10;
    case 2:
      v4 = 3;
      goto LABEL_10;
    case 3:
      v4 = 4;
      goto LABEL_10;
    case 4:
      v4 = 5;
      goto LABEL_10;
    case 5:
      v4 = 6;
      goto LABEL_10;
    case 6:
      v4 = 7;
      goto LABEL_10;
    case 7:
      v4 = 8;
LABEL_10:
      MEMORY[0x1CCA82810](v4);
      break;
    default:
      MEMORY[0x1CCA82810](0);
      sub_1C9063FBC();
      sub_1C9064D9C();
      break;
  }

  return sub_1C9064DBC();
}