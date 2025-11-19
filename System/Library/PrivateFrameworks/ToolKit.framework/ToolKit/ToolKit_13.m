uint64_t ToolKitProtoRestrictionContext.InInclusiveRange.init(lowerBound:upperBound:)()
{
  OUTLINED_FUNCTION_292_0();
  v5 = OUTLINED_FUNCTION_79_2();
  v6 = v4 + *(type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(v5) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v4 = v3;
  *(v4 + 8) = v2 & 1;
  *(v4 + 16) = v1;
  *(v4 + 24) = v0 & 1;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.MeasurementExpressibleAs.init(unit:unitAdjustForLocale:supportsNegativeNumbers:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = OUTLINED_FUNCTION_79_2();
  v10 = v5 + *(type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(v9) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *(v5 + 8) = v4;
  *(v5 + 16) = a2;
  *v5 = a3;
  *(v5 + 1) = a4;
  return result;
}

void ToolKitProtoRestrictionContext.TextTypedWith.init(multilineAllowed:smartQuotesEnabled:smartDashesEnabled:keyboardType:autocorrectionType:capitalizationType:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  v11 = *v10;
  v13 = *v12;
  v14 = &v6[*(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0) + 40)];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v7 = v5;
  v7[1] = v3;
  v7[2] = v1;
  v7[3] = v9;
  v7[4] = v11;
  v7[5] = v13;
  OUTLINED_FUNCTION_421();
}

void sub_1C8D97B28()
{
  OUTLINED_FUNCTION_422();
  v3 = OUTLINED_FUNCTION_64_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_311_0(v5);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = *(v2 + 24);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_353_0(v11, v12, v13, v14);
  sub_1C8DB483C();
  *v1 = v0;
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8D97C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0F50();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8D97DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0EFC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 47;
  v1 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  OUTLINED_FUNCTION_210_0(v1);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

BOOL static ToolKitProtoTypeIdentifier.ToolKitProtoPrimitiveKind.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 0x17:
      if (v2 == 23)
      {
        goto LABEL_49;
      }

      goto LABEL_51;
    case 0x18:
      if (v2 != 24)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x19:
      if (v2 != 25)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1A:
      if (v2 != 26)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1B:
      if (v2 != 27)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1C:
      if (v2 != 28)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1D:
      if (v2 != 29)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1E:
      if (v2 != 30)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1F:
      if (v2 != 31)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x20:
      if (v2 != 32)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x21:
      if (v2 != 33)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x22:
      if (v2 != 34)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x23:
      if (v2 != 35)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x24:
      if (v2 != 36)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x25:
      if (v2 != 37)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x26:
      if (v2 != 38)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x27:
      if (v2 != 39)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x28:
      if (v2 != 40)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x29:
      if (v2 != 41)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x2A:
      if (v2 != 42)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x2B:
      if (v2 != 43)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x2C:
      if (v2 != 44)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x2D:
      if (v2 != 45)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x2E:
      if (v2 != 46)
      {
        goto LABEL_51;
      }

LABEL_49:
      result = 1;
      break;
    default:
      if ((v2 - 23) >= 0x18)
      {
        result = *a1 == v2;
      }

      else
      {
LABEL_51:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t ToolKitProtoTypeIdentifier.Custom.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeIdentifier.Custom(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

unint64_t ToolKitProtoTypeIdentifier.Builtin.builtinKind.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1C8D9815C(v2);
}

unint64_t sub_1C8D9815C(unint64_t result)
{
  if (result != 16)
  {
    return sub_1C8D3F120(result);
  }

  return result;
}

unint64_t ToolKitProtoTypeIdentifier.Builtin.builtinKind.setter(unint64_t *a1)
{
  v2 = *a1;
  result = sub_1C8D98198(*v1);
  *v1 = v2;
  return result;
}

unint64_t sub_1C8D98198(unint64_t result)
{
  if (result != 16)
  {
    return sub_1C8D3F130(result);
  }

  return result;
}

uint64_t sub_1C8D981E0()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_60_4();

  return v7(v6);
}

uint64_t sub_1C8D98284()
{
  v0 = OUTLINED_FUNCTION_258();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_168_2();

  return v7(v6);
}

uint64_t ToolKitProtoTypeIdentifier.Builtin.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeIdentifier.Builtin(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypeIdentifier.ToolKitProtoBuiltinKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_223();
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_66();
  v7 = *v1;
  v8 = *v0;
  switch(v7)
  {
    case 0uLL:
      if (v8)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0);
      v9 = 0;
      goto LABEL_38;
    case 1uLL:
      if (v8 != 1)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(1uLL);
      v9 = 1;
      goto LABEL_38;
    case 2uLL:
      if (v8 != 2)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(2uLL);
      v9 = 2;
      goto LABEL_38;
    case 3uLL:
      if (v8 != 3)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(3uLL);
      v9 = 3;
      goto LABEL_38;
    case 4uLL:
      if (v8 != 4)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(4uLL);
      v9 = 4;
      goto LABEL_38;
    case 5uLL:
      if (v8 != 5)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(5uLL);
      v9 = 5;
      goto LABEL_38;
    case 6uLL:
      if (v8 != 6)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(6uLL);
      v9 = 6;
      goto LABEL_38;
    case 7uLL:
      if (v8 != 7)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(7uLL);
      v9 = 7;
      goto LABEL_38;
    case 8uLL:
      if (v8 != 8)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(8uLL);
      v9 = 8;
      goto LABEL_38;
    case 9uLL:
      if (v8 != 9)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(9uLL);
      v9 = 9;
      goto LABEL_38;
    case 0xAuLL:
      if (v8 != 10)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xAuLL);
      v9 = 10;
      goto LABEL_38;
    case 0xBuLL:
      if (v8 != 11)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xBuLL);
      v9 = 11;
      goto LABEL_38;
    case 0xCuLL:
      if (v8 != 12)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xCuLL);
      v9 = 12;
      goto LABEL_38;
    case 0xDuLL:
      if (v8 != 13)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xDuLL);
      v9 = 13;
      goto LABEL_38;
    case 0xEuLL:
      if (v8 != 14)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xEuLL);
      v9 = 14;
      goto LABEL_38;
    case 0xFuLL:
      if (v8 != 15)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xFuLL);
      v9 = 15;
      goto LABEL_38;
    default:
      if (v8 >= 0x10)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();
        sub_1C8D3F120(v8);
        sub_1C8D3F120(v7);
        v10 = OUTLINED_FUNCTION_112();
        static ToolKitProtoTypeIdentifier.== infix(_:_:)(v10);
        sub_1C8D9913C();
        sub_1C8D9913C();
        sub_1C8D3F130(v7);
        v9 = v8;
LABEL_38:
        sub_1C8D3F130(v9);
      }

      else
      {
LABEL_35:
        sub_1C8D3F120(v8);
        sub_1C8D3F120(v7);
        sub_1C8D3F130(v7);
        sub_1C8D3F130(v8);
      }

      OUTLINED_FUNCTION_421();
      return;
  }
}

uint64_t ToolKitProtoTypeIdentifier.Attributed.sourceContainer.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeIdentifier.Attributed.attributionContainer.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeIdentifier.Attributed.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypeIdentifier.Attributed.init()()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v0);
  v2 = OUTLINED_FUNCTION_231_0(v1);
  v3 = type metadata accessor for ToolKitProtoContainerDefinition(v2);
  v4 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  v7 = *(v1 + 24);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  OUTLINED_FUNCTION_289_0();
  OUTLINED_FUNCTION_145_0();
}

void ToolKitProtoTypeIdentifier.Attributed.init(sourceContainer:attributionContainer:typeName:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_65_2();
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v4);
  v6 = OUTLINED_FUNCTION_306_0(v5);
  v7 = type metadata accessor for ToolKitProtoContainerDefinition(v6);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v11 = *(v5 + 24);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  v15 = v1 + *(v5 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_361_0();
  OUTLINED_FUNCTION_361_0();
  *v1 = v0;
  v1[1] = v3;
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoTypeIdentifier.Codable.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeIdentifier.Codable(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeIdentifier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeIdentifier(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypeIdentifierKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v43 = v1;
  v3 = v2;
  v40 = type metadata accessor for ToolKitProtoTypeIdentifier.Codable(0);
  v4 = OUTLINED_FUNCTION_13_1(v40);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v41 = v7;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_147();
  v42 = v9;
  v10 = OUTLINED_FUNCTION_111();
  v11 = type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v10);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_156_0();
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier.Builtin(0);
  v17 = OUTLINED_FUNCTION_9(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v20);
  v21 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v22 = OUTLINED_FUNCTION_13_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25();
  v27 = (v25 - v26);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_233_0();
  v29 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v30 = OUTLINED_FUNCTION_9(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_228();
  v34 = *v43;
  switch(*v3 >> 61)
  {
    case 1:
      if (v34 >> 61 == 1)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();
        v37 = *v0 == *v27 && v0[1] == v27[1];
        if (v37 || (sub_1C9064C2C()) && (v0[2] == v27[2] ? (v38 = v0[3] == v27[3]) : (v38 = 0), v38 || (sub_1C9064C2C()))
        {
          v39 = *(v21 + 24);
          sub_1C90637EC();
          sub_1C8D99190();

          OUTLINED_FUNCTION_253_0();
          sub_1C9063EAC();
        }

        else
        {
        }

        OUTLINED_FUNCTION_199_2();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_365_0();
        goto LABEL_33;
      }

      break;
    case 2:
      if (v34 >> 61 == 2)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_249();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_181();
        static ToolKitProtoTypeIdentifier.Builtin.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_15;
      }

      break;
    case 3:
      if (v34 >> 61 == 3)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoTypeIdentifier.Attributed.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_15;
      }

      break;
    case 4:
      if (v34 >> 61 == 4)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();
        v36 = *v42 == *v41 && v42[1] == v41[1];
        if (v36 || (sub_1C9064C2C() & 1) != 0)
        {
          OUTLINED_FUNCTION_287_0(v40);
          sub_1C8D99190();
          OUTLINED_FUNCTION_252_0();

          OUTLINED_FUNCTION_253_0();
          sub_1C9063EAC();
        }

        else
        {
        }

        OUTLINED_FUNCTION_200_2();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_93();
        sub_1C8D9913C();
        goto LABEL_33;
      }

      break;
    default:
      if (!(v34 >> 61))
      {
        v35 = *v43;
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_93();
        sub_1C8D990E8();

        static ToolKitProtoTypeIdentifier.Primitive.== infix(_:_:)();
        OUTLINED_FUNCTION_203_1();
        sub_1C8D9913C();
LABEL_15:
        sub_1C8D9913C();
LABEL_33:
      }

      break;
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D990E8()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_24_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t sub_1C8D9913C()
{
  v1 = OUTLINED_FUNCTION_258();
  v3 = v2(v1);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1C8D99190()
{
  result = qword_1EC312920;
  if (!qword_1EC312920)
  {
    sub_1C90637EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312920);
  }

  return result;
}

uint64_t ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8D9932C()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_210_0(v2);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoSystemTypeProtocol.AssistantSchema.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemTypeProtocol.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemTypeProtocol(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoSystemTypeProtocolKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v36 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  v2 = OUTLINED_FUNCTION_13_1(v36);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_111();
  v6 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(v5);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v37 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  v10 = OUTLINED_FUNCTION_13_1(v37);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v13 = OUTLINED_FUNCTION_111();
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(v13);
  v15 = OUTLINED_FUNCTION_13_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_161_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_84();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314720, &qword_1C9074DB8);
  OUTLINED_FUNCTION_9(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_142();
  v25 = *(v24 + 56);
  sub_1C8D990E8();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_68_2();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_257_0() != 1)
      {
        goto LABEL_41;
      }

      sub_1C8D99B98();
      static ToolKitProtoSystemTypeProtocol.AssistantSchema.== infix(_:_:)();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_181();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_87_2();
      goto LABEL_52;
    case 2u:
      OUTLINED_FUNCTION_68_2();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_257_0() != 2)
      {
        OUTLINED_FUNCTION_23_13();
        goto LABEL_41;
      }

      sub_1C8D99B98();
      v26 = OUTLINED_FUNCTION_343_0();
      sub_1C8CEB10C(v26, v27);
      if (v28)
      {
        OUTLINED_FUNCTION_287_0(v36);
        sub_1C8D99190();
        v29 = OUTLINED_FUNCTION_407();
        OUTLINED_FUNCTION_23_13();
        sub_1C8D9913C();
        if (v29)
        {
          OUTLINED_FUNCTION_23_13();
          goto LABEL_50;
        }
      }

      else
      {
        OUTLINED_FUNCTION_23_13();
        sub_1C8D9913C();
      }

      OUTLINED_FUNCTION_23_13();
      goto LABEL_57;
    case 3u:
      if (OUTLINED_FUNCTION_257_0() == 3)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 4u:
      if (OUTLINED_FUNCTION_257_0() == 4)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 5u:
      if (OUTLINED_FUNCTION_257_0() == 5)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 6u:
      if (OUTLINED_FUNCTION_257_0() == 6)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 7u:
      if (OUTLINED_FUNCTION_257_0() == 7)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 8u:
      if (OUTLINED_FUNCTION_257_0() == 8)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 9u:
      if (OUTLINED_FUNCTION_257_0() == 9)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xAu:
      if (OUTLINED_FUNCTION_257_0() == 10)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xBu:
      if (OUTLINED_FUNCTION_257_0() == 11)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xCu:
      if (OUTLINED_FUNCTION_257_0() == 12)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xDu:
      if (OUTLINED_FUNCTION_257_0() == 13)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xEu:
      if (OUTLINED_FUNCTION_257_0() == 14)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xFu:
      if (OUTLINED_FUNCTION_257_0() == 15)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0x10u:
      if (OUTLINED_FUNCTION_257_0() == 16)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0x11u:
      if (OUTLINED_FUNCTION_257_0() == 17)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    default:
      OUTLINED_FUNCTION_68_2();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_257_0())
      {
        OUTLINED_FUNCTION_24_13();
LABEL_41:
        sub_1C8D9913C();
LABEL_42:
        sub_1C8D16D78(v0, &qword_1EC314720, &qword_1C9074DB8);
        goto LABEL_52;
      }

      sub_1C8D99B98();
      v30 = *v1;
      v31 = v1[1];
      OUTLINED_FUNCTION_222_0();
      v34 = v34 && v32 == v33;
      if (!v34 && (sub_1C9064C2C() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_13();
        sub_1C8D9913C();
LABEL_56:
        OUTLINED_FUNCTION_24_13();
LABEL_57:
        sub_1C8D9913C();
        OUTLINED_FUNCTION_87_2();
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_287_0(v37);
      sub_1C8D99190();
      v35 = OUTLINED_FUNCTION_278_0();
      OUTLINED_FUNCTION_24_13();
      sub_1C8D9913C();
      if ((v35 & 1) == 0)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_24_13();
LABEL_50:
      sub_1C8D9913C();
LABEL_51:
      OUTLINED_FUNCTION_87_2();
LABEL_52:
      OUTLINED_FUNCTION_267_0();
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t sub_1C8D99B98()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_24_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v0) + 40);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v0) + 44);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D99E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0EA8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8D99F20()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v2 = *(v1(v0) + 24);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D99F80()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v2 = *(v1(v0) + 24);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.type.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9A010()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_304_0(v2);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_60_4();

  return v7(v6);
}

uint64_t sub_1C8D9A090()
{
  v0 = OUTLINED_FUNCTION_258();
  v2 = v1(v0);
  OUTLINED_FUNCTION_304_0(v2);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_168_2();

  return v7(v6);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v0) + 48);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v1);
  v3 = OUTLINED_FUNCTION_251_0(v2);
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(v3);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = *(v2 + 44);
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_53_5(v6);
  v7 = v0 + *(v2 + 48);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v9 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v9;
  v0[2] = v9;
  v0[3] = v9;
  v0[4] = v9;
  v0[5] = v9;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v0) + 36);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9A3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0E54();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8D9A498()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v2 = *(v1(v0) + 20);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9A4F8()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v2 = *(v1(v0) + 20);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.Case.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9A588()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_220_0(v2);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_60_4();

  return v7(v6);
}

uint64_t sub_1C8D9A608()
{
  v0 = OUTLINED_FUNCTION_258();
  v2 = v1(v0);
  OUTLINED_FUNCTION_220_0(v2);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_168_2();

  return v7(v6);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.Case.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v0) + 40);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v1);
  v3 = OUTLINED_FUNCTION_293_0(v2);
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(v3);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = OUTLINED_FUNCTION_303_0();
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(v5);
  OUTLINED_FUNCTION_53_5(v6);
  result = OUTLINED_FUNCTION_362_0();
  v8 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = v8;
  *(v0 + 16) = 0;
  *(v0 + 24) = v8;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.templates.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.stringSearch.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.idSearch.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9A9D8()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v2 = *(v1(v0) + 32);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9AA38()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v2 = *(v1(v0) + 32);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.all.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9AAD8()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v2 = *(v1(v0) + 36);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9AB38()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v2 = *(v1(v0) + 36);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.suggested.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 36);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9ABD8()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v2 = *(v1(v0) + 40);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9AC38()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v2 = *(v1(v0) + 40);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.searchableItem.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 40);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9ACD8()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v2 = *(v1(v0) + 44);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9AD38()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v2 = *(v1(v0) + 44);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.valid.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 44);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.valueSearch.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 48);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.metadata.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 52);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.metadata.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 52);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 52);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8D9AFB8()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_221_0(v2);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_93_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 56);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_60_4();

  return v6(v5);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 56);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_168_2();

  return v6(v5);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0) + 56);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init()()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v2);
  v4 = OUTLINED_FUNCTION_134_1(v3);
  v5 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(v4);
  OUTLINED_FUNCTION_53_5(v5);
  v6 = v1[7];
  v7 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  OUTLINED_FUNCTION_53_5(v7);
  v8 = OUTLINED_FUNCTION_340_0();
  v9 = type metadata accessor for ToolKitProtoAllPredicate(v8);
  OUTLINED_FUNCTION_53_5(v9);
  v10 = OUTLINED_FUNCTION_303_0();
  v11 = type metadata accessor for ToolKitProtoSuggestedPredicate(v10);
  OUTLINED_FUNCTION_53_5(v11);
  v12 = v1[10];
  v13 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  OUTLINED_FUNCTION_53_5(v13);
  v14 = v1[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  OUTLINED_FUNCTION_53_5(valid);
  v16 = v1[12];
  v17 = type metadata accessor for ToolKitProtoValueSearchPredicate.Template(0);
  OUTLINED_FUNCTION_53_5(v17);
  v18 = v1[13];
  v19 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(0);
  OUTLINED_FUNCTION_53_5(v19);
  v20 = v0 + v1[14];
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v22 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v22;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Codable.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Codable.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8D9B3B0()
{
  v1 = OUTLINED_FUNCTION_47_5();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_162_2(v3);
  v0(v4);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_263_0();
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_346_0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = OUTLINED_FUNCTION_339_0(v1, v2);
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(v3);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v8 = OUTLINED_FUNCTION_111();
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(v8);
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v13 = OUTLINED_FUNCTION_111();
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v13);
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  v18 = OUTLINED_FUNCTION_111();
  v19 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v18);
  v20 = OUTLINED_FUNCTION_9(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_7_0();
  v23 = OUTLINED_FUNCTION_111();
  v24 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(v23);
  v25 = OUTLINED_FUNCTION_9(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v28 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v29 = OUTLINED_FUNCTION_13_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_282_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_66();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314728, &qword_1C9074DC8);
  OUTLINED_FUNCTION_9(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_142();
  v41 = *(v40 + 56);
  sub_1C8D990E8();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_20_11();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_334_0() != 1)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_169_1();
      OUTLINED_FUNCTION_302_0();
      sub_1C8D99B98();
      static ToolKitProtoTypeDefinition.Version1.Entity.== infix(_:_:)();
      sub_1C8D9913C();
      goto LABEL_16;
    case 2u:
      OUTLINED_FUNCTION_20_11();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_334_0() == 2)
      {
        OUTLINED_FUNCTION_169_1();
        sub_1C8D99B98();
        static ToolKitProtoTypeDefinition.Version1.Enumeration.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_255_0();
      goto LABEL_14;
    case 3u:
      OUTLINED_FUNCTION_20_11();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_334_0() != 3)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_169_1();
      OUTLINED_FUNCTION_338_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_276();
      static ToolKitProtoTypeDefinition.Version1.Query.== infix(_:_:)();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_209();
      goto LABEL_16;
    case 4u:
      OUTLINED_FUNCTION_20_11();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_334_0() == 4)
      {
        OUTLINED_FUNCTION_169_1();
        sub_1C8D99B98();
        static ToolKitProtoTypeDefinition.Version1.Codable.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_153_1();
      goto LABEL_14;
    default:
      OUTLINED_FUNCTION_20_11();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_334_0())
      {
        OUTLINED_FUNCTION_158_3();
LABEL_14:
        sub_1C8D9913C();
        sub_1C8D16D78(v0, &qword_1EC314728, &qword_1C9074DC8);
      }

      else
      {
        OUTLINED_FUNCTION_169_1();
        sub_1C8D99B98();
        static ToolKitProtoTypeIdentifier.Primitive.== infix(_:_:)();
        OUTLINED_FUNCTION_203_1();
        sub_1C8D9913C();
LABEL_16:
        sub_1C8D9913C();
        OUTLINED_FUNCTION_231();
        sub_1C8D9913C();
      }

      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoTypedValue.typedValueKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1C8CD1784(v2);
}

uint64_t ToolKitProtoTypedValue.typedValueKind.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1C8CD0FB0(*v1);
  *v1 = v2;
  return result;
}

uint64_t ToolKitProtoTypedValue.ID.typeInstance.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.ID(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.ID.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.ID(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

double ToolKitProtoTypedValue.ID.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypedValue.ID(v1);
  v3 = OUTLINED_FUNCTION_134_1(v2);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(v3);
  OUTLINED_FUNCTION_53_5(v4);
  OUTLINED_FUNCTION_289_0();
  result = 0.0;
  *v0 = xmmword_1C9074C90;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.mantissa.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9BDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0E00();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8D9BF98()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = *(v1(v0) + 48);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_60_4();

  return v7(v6);
}

uint64_t sub_1C8D9C01C()
{
  v0 = OUTLINED_FUNCTION_258();
  v2 = *(v1(v0) + 48);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_168_2();

  return v7(v6);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(v0) + 48);
  return OUTLINED_FUNCTION_104();
}

double ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(v1) + 48);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(v0) + 36);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.init()()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(v2);
  v4 = OUTLINED_FUNCTION_293_0(v3);
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(v4);
  OUTLINED_FUNCTION_53_5(v5);
  v6 = v0 + *(v1 + 36);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  *(v0 + 4) = 0;
  *(v0 + 8) = 0;
  *(v0 + 12) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.Measurement.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(v1);
  OUTLINED_FUNCTION_177_2(v2);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount.amount.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.identificationHint.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.identificationHint.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9C608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0DAC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(v1);
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  v3 = OUTLINED_FUNCTION_220_0(v2);
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(v3);
  OUTLINED_FUNCTION_53_5(v4);
  result = OUTLINED_FUNCTION_289_0();
  *v0 = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Placemark.placemark.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return OUTLINED_FUNCTION_72_1();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Placemark.placemark.setter()
{
  OUTLINED_FUNCTION_127_0();
  result = sub_1C8CE7BD0(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Placemark.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9C858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0D58();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Placemark.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Placemark.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = xmmword_1C9065DB0;
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v3 = OUTLINED_FUNCTION_134_1(v2);
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(v3);
  OUTLINED_FUNCTION_53_5(v4);
  result = OUTLINED_FUNCTION_289_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.person.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return OUTLINED_FUNCTION_72_1();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.person.setter()
{
  OUTLINED_FUNCTION_127_0();
  result = sub_1C8CE7BD0(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_1C8D9CA5C()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v2 = *(v1(v0) + 28);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9CABC()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v2 = *(v1(v0) + 28);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.handle.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.nameComponents.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0) + 36);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.image.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0) + 40));
  v2 = *v1;
  v3 = v1[1];
  return OUTLINED_FUNCTION_72_1();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.image.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_360_0(*(v1 + 40));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.image.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0) + 40);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.contactIdentifier.getter()
{
  v0 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_27_6(*(v0 + 44));
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.contactIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v3);
  result = OUTLINED_FUNCTION_264_0(*(v4 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.contactIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0) + 44);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.customIdentifier.getter()
{
  v0 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_27_6(*(v0 + 48));
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.customIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v3);
  result = OUTLINED_FUNCTION_264_0(*(v4 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.customIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0) + 48);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.relationship.getter()
{
  v0 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_27_6(*(v0 + 52));
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.relationship.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v3);
  result = OUTLINED_FUNCTION_264_0(*(v4 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.relationship.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0) + 52);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.contactSuggestion.setter(char a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.contactSuggestion.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0) + 56);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.label.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.label.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_1C8D9D04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0D04();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(v1);
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_177_2(v2);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.namePrefix.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.namePrefix.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.givenName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.givenName.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.middleName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.middleName.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.familyName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.familyName.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.nameSuffix.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.nameSuffix.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.phoneticRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(v0) + 40);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.nickname.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.nickname.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t sub_1C8D9D56C()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_251_0(v2);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_60_4();

  return v7(v6);
}

uint64_t sub_1C8D9D5EC()
{
  v0 = OUTLINED_FUNCTION_258();
  v2 = v1(v0);
  OUTLINED_FUNCTION_251_0(v2);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_168_2();

  return v7(v6);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(v0) + 40);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(v1);
  OUTLINED_FUNCTION_337_0();
  v3 = v0 + *(v2 + 40);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(v0) + 44);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(v1);
  OUTLINED_FUNCTION_337_0();
  v4 = OUTLINED_FUNCTION_251_0(v3);
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(v4);
  OUTLINED_FUNCTION_53_5(v5);
  v6 = v0 + *(v2 + 44);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0) + 60);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_60_4();

  return v6(v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0) + 60);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_168_2();

  return v6(v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0) + 60);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.Person.init()(uint64_t a1@<X8>)
{
  *(a1 + 24) = xmmword_1C9065DB0;
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v3 = OUTLINED_FUNCTION_304_0(v2);
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(v3);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = OUTLINED_FUNCTION_340_0();
  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(v5);
  OUTLINED_FUNCTION_53_5(v6);
  v7 = OUTLINED_FUNCTION_303_0();
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(v7);
  OUTLINED_FUNCTION_53_5(v8);
  *(a1 + v2[10]) = xmmword_1C9065DB0;
  OUTLINED_FUNCTION_40_5(v2[11]);
  OUTLINED_FUNCTION_40_5(v2[12]);
  OUTLINED_FUNCTION_40_5(v2[13]);
  *(a1 + v2[14]) = 2;
  v9 = a1 + v2[15];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  *(a1 + 16) = 0;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.url.getter()
{
  v0 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  OUTLINED_FUNCTION_27_6(*(v0 + 24));
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.url.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v3);
  result = OUTLINED_FUNCTION_264_0(*(v4 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.url.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

double ToolKitProtoTypedValue.PrimitiveValue.File.init()()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v2);
  v4 = OUTLINED_FUNCTION_240_0(v3);
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation(v4);
  OUTLINED_FUNCTION_53_5(v5);
  OUTLINED_FUNCTION_40_5(*(v1 + 24));
  OUTLINED_FUNCTION_289_0();
  result = 0.0;
  *v0 = xmmword_1C9074C90;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.App.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.App.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Shortcut.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Shortcut.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.timeZoneIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.era.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.year.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 28));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.year.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.month.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 32));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.month.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.day.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 36));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.day.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 36);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.hour.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 40));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.hour.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 40);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.minute.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 44));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.minute.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 44);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.second.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 48));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.second.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 48);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.nanosecond.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 52));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.nanosecond.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 52);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekday.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 56));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekday.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 56);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 60));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 60);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.quarter.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 64));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.quarter.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 64);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfMonth.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 68));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfMonth.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 68);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfYear.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 72));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfYear.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 72);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 76));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 76);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9E834(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0CB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.localeIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.localeIdentifier.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t sub_1C8D9EA10()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = *(v1(v0) + 36);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_60_4();

  return v7(v6);
}

uint64_t sub_1C8D9EA94()
{
  v0 = OUTLINED_FUNCTION_258();
  v2 = *(v1(v0) + 36);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_168_2();

  return v7(v6);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(v0) + 36);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(v1);
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v3 = v0 + *(v2 + 36);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0xE000000000000000;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 80);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_60_4();

  return v6(v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 80);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_168_2();

  return v6(v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0) + 80);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(v1);
  v5 = OUTLINED_FUNCTION_52_6(v0, v3, v4, v2);
  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v5);
  OUTLINED_FUNCTION_40_5(*(v6 + 20));
  OUTLINED_FUNCTION_58_5(*(v7 + 24));
  OUTLINED_FUNCTION_58_5(*(v8 + 28));
  OUTLINED_FUNCTION_58_5(*(v9 + 32));
  OUTLINED_FUNCTION_58_5(*(v10 + 36));
  OUTLINED_FUNCTION_58_5(*(v11 + 40));
  OUTLINED_FUNCTION_58_5(*(v12 + 44));
  OUTLINED_FUNCTION_58_5(*(v13 + 48));
  OUTLINED_FUNCTION_58_5(*(v14 + 52));
  OUTLINED_FUNCTION_58_5(*(v15 + 56));
  OUTLINED_FUNCTION_58_5(*(v16 + 60));
  OUTLINED_FUNCTION_58_5(*(v17 + 64));
  OUTLINED_FUNCTION_58_5(*(v18 + 68));
  OUTLINED_FUNCTION_58_5(*(v19 + 72));
  OUTLINED_FUNCTION_58_5(*(v20 + 76));
  v22 = v0 + *(v21 + 80);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.months.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.daysOfTheYear.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.daysOfTheMonth.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.weeks.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.weekdays.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.hours.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.minutes.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.seconds.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.setPositions.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.calendar.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0) + 68);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.calendar.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0) + 68);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.calendar.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0) + 68);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.end.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0) + 72);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.end.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0) + 72);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.end.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0) + 72);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9F234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0C5C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8D9F2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0C08();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8D9F334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0BB4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8D9F3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0B60();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.occurences.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.occurences.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.date.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.never.setter(char a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.never.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_344_1(a1);
  v3 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  OUTLINED_FUNCTION_240_0(v3);
  v4 = sub_1C906378C();
  OUTLINED_FUNCTION_53_5(v4);
  *(v1 + *(v2 + 24)) = 2;
  return OUTLINED_FUNCTION_289_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.recurrenceRuleWeekdayNth.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0) + 76);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_60_4();

  return v6(v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0) + 76);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_168_2();

  return v6(v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0) + 76);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v1);
  v3 = v2[17];
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = v2[18];
  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  OUTLINED_FUNCTION_53_5(v6);
  v7 = v0 + v2[19];
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = v9;
  *(v0 + 40) = v9;
  *(v0 + 48) = v9;
  *(v0 + 56) = v9;
  *(v0 + 64) = v9;
  *(v0 + 72) = v9;
  *(v0 + 80) = v9;
  *(v0 + 88) = v9;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateInterval.end.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8D9FB00()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v2 = v1(v0);
  OUTLINED_FUNCTION_30_11(*(v2 + 24));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateInterval.duration.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateInterval.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateInterval.init()()
{
  OUTLINED_FUNCTION_386();
  v1 = sub_1C906378C();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(0);
  v6 = v5[5];
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v1);
  v10 = v0 + v5[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + v5[7];
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Duration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Duration.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(v1);
  OUTLINED_FUNCTION_221_0(v2);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  a19 = v28;
  a20 = v29;
  v191 = v30;
  v192 = v31;
  v182 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(0);
  v32 = OUTLINED_FUNCTION_13_1(v182);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7_0();
  v36 = OUTLINED_FUNCTION_27_0(v35);
  v37 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(v36);
  v38 = OUTLINED_FUNCTION_9(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_7_0();
  v42 = OUTLINED_FUNCTION_27_0(v41);
  v43 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(v42);
  v44 = OUTLINED_FUNCTION_9(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_7_0();
  v48 = OUTLINED_FUNCTION_27_0(v47);
  v49 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v48);
  v50 = OUTLINED_FUNCTION_9(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_7_0();
  v54 = OUTLINED_FUNCTION_27_0(v53);
  v55 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(v54);
  v56 = OUTLINED_FUNCTION_9(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_7_0();
  v60 = OUTLINED_FUNCTION_27_0(v59);
  v61 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v60);
  v62 = OUTLINED_FUNCTION_9(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_7_0();
  v66 = OUTLINED_FUNCTION_27_0(v65);
  v67 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(v66);
  v68 = OUTLINED_FUNCTION_9(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_7_0();
  v72 = OUTLINED_FUNCTION_27_0(v71);
  v73 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v72);
  v74 = OUTLINED_FUNCTION_9(v73);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_7_0();
  v78 = OUTLINED_FUNCTION_27_0(v77);
  v79 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v78);
  v80 = OUTLINED_FUNCTION_9(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_7_0();
  v84 = OUTLINED_FUNCTION_27_0(v83);
  v85 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(v84);
  v86 = OUTLINED_FUNCTION_9(v85);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_7_0();
  v90 = OUTLINED_FUNCTION_27_0(v89);
  v91 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(v90);
  v92 = OUTLINED_FUNCTION_9(v91);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_7_0();
  v96 = OUTLINED_FUNCTION_27_0(v95);
  v97 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v96);
  v98 = OUTLINED_FUNCTION_9(v97);
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_7_0();
  v102 = OUTLINED_FUNCTION_27_0(v101);
  v103 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(v102);
  v104 = OUTLINED_FUNCTION_9(v103);
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_27_0(v107);
  v108 = sub_1C906378C();
  v109 = *(v108 - 8);
  v188 = v109;
  v189 = v108;
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_7_0();
  v112 = OUTLINED_FUNCTION_27_0(v111);
  v113 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(v112);
  v114 = OUTLINED_FUNCTION_9(v113);
  v116 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_7_0();
  v118 = OUTLINED_FUNCTION_27_0(v117);
  v190 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(v118);
  v119 = OUTLINED_FUNCTION_13_1(v190);
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_216();
  v187 = v128;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_216();
  v185 = v137;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_161_2();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_216();
  v186 = v141;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_97_2();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_228();
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314730, &qword_1C9074DD8);
  OUTLINED_FUNCTION_9(v147);
  v149 = *(v148 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_51();
  v152 = v21 + *(v151 + 56);
  sub_1C8D990E8();
  v192 = v152;
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 1)
      {
        goto LABEL_79;
      }

      v170 = *v24 == *v20;
      goto LABEL_57;
    case 2u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 2)
      {
        goto LABEL_79;
      }

      v170 = *v25 == *v20;
      goto LABEL_57;
    case 3u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 3)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&v189);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Decimal.== infix(_:_:)();
      goto LABEL_56;
    case 4u:
      OUTLINED_FUNCTION_1_34();
      v164 = v21;
      OUTLINED_FUNCTION_95_0();
      sub_1C8D990E8();
      v166 = *v20;
      v165 = *(v20 + 1);
      v167 = v192;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    case 5u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 5)
      {
        (*(v188 + 8))(v186, v189);
        goto LABEL_79;
      }

      (*(v188 + 32))(v183, v20, v189);
      sub_1C906374C();
      v173 = *(v188 + 8);
      v174 = OUTLINED_FUNCTION_212();
      v173(v174);
      (v173)(v186, v189);
LABEL_57:
      OUTLINED_FUNCTION_9_14();
      goto LABEL_58;
    case 6u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      v154 = v21;
      v175 = *v26;
      v176 = v26[1];
      if (OUTLINED_FUNCTION_327_0() != 6)
      {
        goto LABEL_42;
      }

      goto LABEL_5;
    case 7u:
      OUTLINED_FUNCTION_1_34();
      v164 = v21;
      OUTLINED_FUNCTION_276();
      sub_1C8D990E8();
      v166 = *v23;
      v165 = *(v23 + 1);
      v167 = v192;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_28:

        v21 = v164;
        goto LABEL_79;
      }

LABEL_11:
      v168 = *v167;
      v169 = v167[1];
      v170 = *&v166 == v168 && v165 == v169;
      if (!v170)
      {
        OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_335_0();
      }

      goto LABEL_66;
    case 8u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      v154 = v21;
      v179 = *v185;
      v180 = v185[1];
      if (OUTLINED_FUNCTION_327_0() != 8)
      {
        goto LABEL_42;
      }

      goto LABEL_5;
    case 9u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 9)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&v191);
      v171 = OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Measurement.== infix(_:_:)(v171, v172);
      goto LABEL_56;
    case 0xAu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 10)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&v192);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount.== infix(_:_:)();
      goto LABEL_56;
    case 0xBu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 11)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&v193);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.== infix(_:_:)();
      goto LABEL_56;
    case 0xCu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 12)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&a9);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Placemark.== infix(_:_:)();
      goto LABEL_56;
    case 0xDu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 13)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&a10);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Person.== infix(_:_:)();
      goto LABEL_56;
    case 0xEu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 14)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&a11);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.File.== infix(_:_:)();
      goto LABEL_56;
    case 0xFu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 15)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&a12);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.App.== infix(_:_:)();
      goto LABEL_56;
    case 0x10u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      v154 = v21;
      v155 = *v187;
      v156 = v187[1];
      if (OUTLINED_FUNCTION_327_0() != 16)
      {
LABEL_42:
        v177 = OUTLINED_FUNCTION_94();
        sub_1C8CE7B78(v177, v178);
        v21 = v154;
        goto LABEL_79;
      }

LABEL_5:
      v157 = *v22;
      v158 = v22[1];
      v159 = OUTLINED_FUNCTION_94();
      MEMORY[0x1CCA7F9A0](v159);
      v160 = OUTLINED_FUNCTION_249();
      sub_1C8CE7B78(v160, v161);
      v162 = OUTLINED_FUNCTION_94();
      sub_1C8CE7B78(v162, v163);
      OUTLINED_FUNCTION_9_14();
LABEL_58:
      sub_1C8D9913C();
      goto LABEL_80;
    case 0x11u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 17)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&a13);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.DateComponents.== infix(_:_:)();
      goto LABEL_56;
    case 0x12u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 18)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&a14);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Shortcut.== infix(_:_:)();
      goto LABEL_56;
    case 0x13u:
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_348_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 19)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&a15);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.== infix(_:_:)();
      goto LABEL_56;
    case 0x14u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 20)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&a16);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.DateInterval.== infix(_:_:)();
      goto LABEL_56;
    case 0x15u:
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_350_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 21)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261(&a17);
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.== infix(_:_:)();
LABEL_56:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_93();
      sub_1C8D9913C();
      goto LABEL_57;
    case 0x16u:
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_349_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() == 22)
      {
        OUTLINED_FUNCTION_159();
        sub_1C8D99B98();
        if (*v23 == *v184 && *(v23 + 1) == v184[1])
        {
          v181 = *(v182 + 24);
          sub_1C90637EC();
          OUTLINED_FUNCTION_270_1();
          LOBYTE(v181) = OUTLINED_FUNCTION_123_2();
          OUTLINED_FUNCTION_25_10();
          sub_1C8D9913C();
          if (v181)
          {
            OUTLINED_FUNCTION_25_10();
            sub_1C8D9913C();
LABEL_66:
            OUTLINED_FUNCTION_9_14();
            goto LABEL_67;
          }
        }

        else
        {
          OUTLINED_FUNCTION_25_10();
          sub_1C8D9913C();
        }

        OUTLINED_FUNCTION_25_10();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_9_14();
LABEL_67:
        sub_1C8D9913C();
        goto LABEL_80;
      }

      OUTLINED_FUNCTION_25_10();
LABEL_78:
      sub_1C8D9913C();
LABEL_79:
      sub_1C8D16D78(v21, &qword_1EC314730, &qword_1C9074DD8);
LABEL_80:
      OUTLINED_FUNCTION_163();
      return;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        goto LABEL_66;
      }

      goto LABEL_79;
    default:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2())
      {
        goto LABEL_79;
      }

      v153 = *v27 ^ *v20;
      OUTLINED_FUNCTION_9_14();
      sub_1C8D9913C();
      goto LABEL_80;
  }
}

uint64_t ToolKitProtoTypedValue.EnumerationValue.caseValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.EnumerationValue.caseValue.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.EnumerationValue.type.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EnumerationValue.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EnumerationValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8DA0FEC()
{
  v3 = OUTLINED_FUNCTION_47_5();
  v5 = v4(v3);
  v6 = OUTLINED_FUNCTION_162_2(v5);
  v0(v6);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = *(v2 + 24);
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = v1 + *(v2 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_346_0();
}

uint64_t ToolKitProtoTypedValue.EntityValue.properties.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.EntityValue.type.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityValue.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 32));
  v2 = *v1;
  v3 = v1[1];
  return OUTLINED_FUNCTION_72_1();
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0);
  return OUTLINED_FUNCTION_360_0(*(v1 + 32));
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityValue.siriKitEntity.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 36));
  v2 = *v1;
  v3 = v1[1];
  return OUTLINED_FUNCTION_72_1();
}

uint64_t ToolKitProtoTypedValue.EntityValue.siriKitEntity.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0);
  return OUTLINED_FUNCTION_360_0(*(v1 + 36));
}

uint64_t ToolKitProtoTypedValue.EntityValue.siriKitEntity.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0) + 36);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0) + 40);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityValue.init()()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(v2);
  v4 = OUTLINED_FUNCTION_134_1(v3);
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(v4);
  OUTLINED_FUNCTION_53_5(v5);
  v6 = v1[7];
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  OUTLINED_FUNCTION_53_5(v7);
  *(v0 + v1[8]) = xmmword_1C9065DB0;
  *(v0 + v1[9]) = xmmword_1C9065DB0;
  OUTLINED_FUNCTION_362_0();
  OUTLINED_FUNCTION_145_0();
  type metadata accessor for ToolKitProtoTypedValue(0);
  result = sub_1C9063E2C();
  *(v0 + 16) = result;
  return result;
}

uint64_t ToolKitProtoTypedValue.CodableValue.data.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v3, v4);
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.CodableValue.data.setter()
{
  OUTLINED_FUNCTION_127_0();
  result = sub_1C8CE7B78(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.CodableValue.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.CodableValue(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.CodableValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.CodableValue(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

double ToolKitProtoTypedValue.CodableValue.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypedValue.CodableValue(v1);
  v3 = OUTLINED_FUNCTION_134_1(v2);
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(v3);
  OUTLINED_FUNCTION_53_5(v4);
  OUTLINED_FUNCTION_289_0();
  OUTLINED_FUNCTION_145_0();
  result = 0.0;
  *(v0 + 16) = xmmword_1C9074C90;
  return result;
}

uint64_t ToolKitProtoTypedValue.CollectionValue.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.CollectionValue.type.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.typeInstance.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.QueryValue.query.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.QueryValue(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.QueryValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.QueryValue(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA19FC(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_214_1();
  v8 = v7(v6);
  v11 = OUTLINED_FUNCTION_52_6(v3, v9, v10, v8);
  v12 = a2(v11);
  v13 = OUTLINED_FUNCTION_231_0(v12);
  a3(v13);
  OUTLINED_FUNCTION_356_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = v3 + *(v12 + 24);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.EntityIdentifierValue.type.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityIdentifierValue.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityIdentifierValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.expectedTypeInstance.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.storage.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v3, v4);
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.setter()
{
  OUTLINED_FUNCTION_127_0();
  result = sub_1C8CE7B78(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.propertyKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.propertyKey.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_236_0();
  v32 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage(v5);
  v6 = OUTLINED_FUNCTION_13_1(v32);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = OUTLINED_FUNCTION_29_9();
  v31 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(v9);
  v10 = OUTLINED_FUNCTION_13_1(v31);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = OUTLINED_FUNCTION_288_0();
  v14 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(v13);
  v15 = OUTLINED_FUNCTION_13_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_233_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314738, &qword_1C9074DE8);
  OUTLINED_FUNCTION_9(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_142();
  v24 = *(v23 + 56);
  sub_1C8D990E8();
  OUTLINED_FUNCTION_326_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_159();
    sub_1C8D990E8();
    OUTLINED_FUNCTION_249_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_169_1();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_232_0();
      v27 = v27 && v25 == v26;
      if (v27 || (sub_1C9064C2C() & 1) != 0)
      {
        v28 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
        if (v28 || (sub_1C9064C2C() & 1) != 0)
        {
          v29 = *(v32 + 24);
          sub_1C90637EC();
          sub_1C8D99190();
          OUTLINED_FUNCTION_226_0();
        }
      }

      OUTLINED_FUNCTION_202_1();
      sub_1C8D9913C();
LABEL_27:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_231();
      sub_1C8D9913C();
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_159();
    sub_1C8D990E8();
    OUTLINED_FUNCTION_249_0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_169_1();
      sub_1C8D99B98();
      if (MEMORY[0x1CCA7F9A0](*v4, v4[1], *v3, v3[1]))
      {
        v30 = v4[2] == v3[2] && v4[3] == v3[3];
        if (v30 || (sub_1C9064C2C() & 1) != 0)
        {
          OUTLINED_FUNCTION_318_0(v31);
          sub_1C8D99190();
          OUTLINED_FUNCTION_358_0();
        }
      }

      OUTLINED_FUNCTION_201_0();
      sub_1C8D9913C();
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_255_0();
  }

  sub_1C8D9913C();
  sub_1C8D16D78(v0, &qword_1EC314738, &qword_1C9074DE8);
LABEL_28:
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.init()()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = type metadata accessor for ToolKitProtoTypeIdentifier(v2);
  v6 = OUTLINED_FUNCTION_52_6(v0, v4, v5, v3);
  v7 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v6);
  v8 = OUTLINED_FUNCTION_240_0(v7);
  v9 = type metadata accessor for ToolKitProtoTypeInstance(v8);
  OUTLINED_FUNCTION_53_5(v9);
  v10 = *(v1 + 24);
  v11 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  OUTLINED_FUNCTION_53_5(v11);
  return OUTLINED_FUNCTION_289_0();
}

uint64_t ToolKitProtoTypedValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypedValue(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypedValueKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v51 = v2;
  v4 = v3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.CodableValue(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_147();
  v10 = OUTLINED_FUNCTION_111();
  v11 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v10);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_147();
  v16 = OUTLINED_FUNCTION_111();
  v17 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(v16);
  v18 = OUTLINED_FUNCTION_9(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_147();
  v22 = OUTLINED_FUNCTION_111();
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(v22);
  v24 = OUTLINED_FUNCTION_9(Value);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_95_1();
  v28 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v29 = OUTLINED_FUNCTION_9(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v32);
  v33 = OUTLINED_FUNCTION_351_0();
  v34 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(v33);
  v35 = OUTLINED_FUNCTION_9(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_66();
  v39 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v40 = OUTLINED_FUNCTION_9(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_84();
  v44 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v45 = OUTLINED_FUNCTION_9(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_156_0();
  v49 = *v51;
  switch(*v4 >> 61)
  {
    case 1:
      if (v49 >> 61 == 1)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoTypedValue.EnumerationValue.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    case 2:
      if (v49 >> 61 == 2)
      {
        OUTLINED_FUNCTION_230_0();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_206();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_254();
        static ToolKitProtoTypedValue.EntityValue.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    case 3:
      if (v49 >> 61 == 3)
      {
        OUTLINED_FUNCTION_230_0();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_249();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_253();
        static ToolKitProtoTypedValue.CollectionValue.== infix(_:_:)();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_94();
        goto LABEL_19;
      }

      break;
    case 4:
      if (v49 >> 61 == 4)
      {
        OUTLINED_FUNCTION_230_0();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_206();
        static ToolKitProtoTypedValue.QueryValue.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    case 5:
      if (v49 >> 61 == 5)
      {
        OUTLINED_FUNCTION_230_0();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_119();
        static ToolKitProtoTypedValue.EntityIdentifierValue.== infix(_:_:)();
        goto LABEL_18;
      }

      break;
    case 6:
      if (v49 >> 61 == 6)
      {
        OUTLINED_FUNCTION_230_0();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_119();
        static ToolKitProtoTypedValue.DeferredValue.== infix(_:_:)();
        goto LABEL_18;
      }

      break;
    case 7:
      if (v49 >> 61 == 7)
      {
        OUTLINED_FUNCTION_230_0();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_119();
        static ToolKitProtoTypedValue.CodableValue.== infix(_:_:)();
LABEL_18:
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    default:
      if (!(v49 >> 61))
      {
        v50 = *v51;
        swift_projectBox();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoTypedValue.PrimitiveValue.== infix(_:_:)(v1, v0);
        sub_1C8D9913C();
LABEL_19:
        sub_1C8D9913C();
      }

      break;
  }

  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoTypeInstance.Optional.defaultValue.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeInstance.Optional(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Optional.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeInstance.Optional(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Union.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeInstance.Union(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA2F70()
{
  v1 = OUTLINED_FUNCTION_61_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_210_0(v3);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ToolKitProtoTypeInstance.Restricted.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeInstance.Restricted(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Restricted.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeInstance.Restricted(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Deferred.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeInstance.Deferred(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Constrained.instance.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeInstance.Constrained(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Constrained.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeInstance.Constrained(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA3358()
{
  v2 = OUTLINED_FUNCTION_47_5();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_162_2(v4);
  v0(v5);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_263_0();
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ToolKitProtoTypeInstance.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeInstance(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypeInstanceKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v68 = v1;
  v3 = v2;
  v4 = type metadata accessor for ToolKitProtoTypeInstance.Constrained(0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v67 = v8;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_147();
  v66 = v10;
  v11 = OUTLINED_FUNCTION_111();
  v12 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(v11);
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v65 = v16;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_147();
  v64 = v18;
  v19 = OUTLINED_FUNCTION_111();
  v20 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(v19);
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_228();
  v25 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v26 = OUTLINED_FUNCTION_13_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12();
  v62 = v29;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_147();
  v63 = v31;
  v32 = OUTLINED_FUNCTION_111();
  v33 = type metadata accessor for ToolKitProtoTypeInstance.Optional(v32);
  v34 = OUTLINED_FUNCTION_9(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_351_0();
  v39 = type metadata accessor for ToolKitProtoTypeInstance(v38);
  v40 = OUTLINED_FUNCTION_9(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_282_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_66();
  v44 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v45 = OUTLINED_FUNCTION_9(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v61 - v49;
  v51 = *v68;
  switch(*v3 >> 61)
  {
    case 1:
      if (v51 >> 61 == 1)
      {
        OUTLINED_FUNCTION_247_0();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_209();
        sub_1C8D990E8();

        v59 = OUTLINED_FUNCTION_212();
        static ToolKitProtoTypeInstance.== infix(_:_:)(v59, v60);
        goto LABEL_18;
      }

      break;
    case 2:
      if (v51 >> 61 == 2)
      {
        OUTLINED_FUNCTION_247_0();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_249();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_253();
        static ToolKitProtoTypeInstance.Optional.== infix(_:_:)();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_145();
        goto LABEL_19;
      }

      break;
    case 3:
      if (v51 >> 61 == 3)
      {
        swift_projectBox();
        swift_projectBox();
        v53 = v63;
        sub_1C8D990E8();
        v54 = v62;
        sub_1C8D990E8();
        v55 = *v53;
        v56 = *v54;

        v57 = OUTLINED_FUNCTION_145();
        if (sub_1C8CEFFC8(v57))
        {
          v58 = *(v25 + 20);
          sub_1C90637EC();
          sub_1C8D99190();
          sub_1C9063EAC();
        }

        OUTLINED_FUNCTION_192_2();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_365_0();
        goto LABEL_20;
      }

      break;
    case 4:
      if (v51 >> 61 == 4)
      {
        OUTLINED_FUNCTION_247_0();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoTypeInstance.Restricted.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    case 5:
      if (v51 >> 61 == 5)
      {
        OUTLINED_FUNCTION_247_0();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_342_0();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_112();
        static ToolKitProtoTypeInstance.Deferred.== infix(_:_:)();
        goto LABEL_18;
      }

      break;
    case 6:
      if (v51 >> 61 == 6)
      {
        OUTLINED_FUNCTION_247_0();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_112();
        static ToolKitProtoTypeInstance.Constrained.== infix(_:_:)();
LABEL_18:
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    default:
      if (!(v51 >> 61))
      {
        v52 = *v68;
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoTypeIdentifier.== infix(_:_:)(v50, v0);
        sub_1C8D9913C();
LABEL_19:
        sub_1C8D9913C();
LABEL_20:
      }

      break;
  }

  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8DA3B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0B0C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8DA3C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0AB8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoRestrictionContext.InSet.templates.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA3E00(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_27_6(*(v1 + 20));
  return OUTLINED_FUNCTION_94();
}

uint64_t sub_1C8DA3E50()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_264_0(*(v5 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.contentItemClass.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(v1);
  OUTLINED_FUNCTION_177_2(v2);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_93_2();
  *(v0 + 32) = 0;
  *(v0 + 40) = v3;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(v1);
  v5 = OUTLINED_FUNCTION_52_6(v0, v3, v4, v2);
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(v5);
  OUTLINED_FUNCTION_40_5(*(v6 + 20));
  OUTLINED_FUNCTION_221_0(v7);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init(bundleIdentifier:)()
{
  v3 = OUTLINED_FUNCTION_75_1();
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(v3);
  v7 = OUTLINED_FUNCTION_52_6(v2, v5, v6, v4);
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(v7);
  v9 = *(v8 + 24);
  v10 = (v2 + *(v8 + 20));
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v10 = v1;
  v10[1] = v0;
  return result;
}

void static ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v6 = OUTLINED_FUNCTION_339_0(v4, v5);
  v58 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(v6);
  v7 = OUTLINED_FUNCTION_13_1(v58);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v10 = OUTLINED_FUNCTION_111();
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(v10);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_147();
  v16 = OUTLINED_FUNCTION_111();
  v17 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v16);
  v18 = OUTLINED_FUNCTION_9(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v21 = OUTLINED_FUNCTION_284_0();
  v57 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(v21);
  v22 = OUTLINED_FUNCTION_13_1(v57);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_0();
  v25 = OUTLINED_FUNCTION_111();
  v26 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(v25);
  v27 = OUTLINED_FUNCTION_13_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12();
  v59 = v30;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_95_1();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314740, &qword_1C9074DF8);
  OUTLINED_FUNCTION_9(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_142();
  v41 = (v0 + *(v40 + 56));
  sub_1C8D990E8();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_331_0() == 1)
      {
        OUTLINED_FUNCTION_256_0();
        sub_1C8D99B98();
        static ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_273();
      goto LABEL_35;
    case 2u:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_331_0() != 2)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_174_2();
      OUTLINED_FUNCTION_302_0();
      sub_1C8D99B98();
      v44 = OUTLINED_FUNCTION_276();
      static ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)(v44, v45);
      OUTLINED_FUNCTION_211_0();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_181();
      goto LABEL_17;
    case 3u:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      v47 = *v3;
      v46 = v3[1];
      if (OUTLINED_FUNCTION_331_0() != 3)
      {

        goto LABEL_36;
      }

      v48 = v47 == *v41 && v46 == v41[1];
      if (v48)
      {
        v56 = v41[1];
      }

      else
      {
        OUTLINED_FUNCTION_206();
        sub_1C9064C2C();
      }

LABEL_52:
      OUTLINED_FUNCTION_86_1();
      break;
    case 4u:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_331_0() == 4)
      {
        OUTLINED_FUNCTION_174_2();
        OUTLINED_FUNCTION_341_0();
        sub_1C8D99B98();
        v42 = OUTLINED_FUNCTION_288();
        static ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)(v42, v43);
        OUTLINED_FUNCTION_211_0();
        sub_1C8D9913C();
LABEL_17:
        sub_1C8D9913C();
        OUTLINED_FUNCTION_86_1();
      }

      else
      {
        OUTLINED_FUNCTION_59_3();
LABEL_35:
        sub_1C8D9913C();
LABEL_36:
        sub_1C8D16D78(v0, &qword_1EC314740, &qword_1C9074DF8);
      }

      break;
    case 5u:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_331_0() != 5)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_256_0();
      OUTLINED_FUNCTION_342_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_159_3();
      v51 = v48 && v49 == v50;
      if (v51 || (sub_1C9064C2C() & 1) != 0)
      {
        v52 = *(v59 + 16) == *(v2 + 16) && *(v59 + 24) == *(v2 + 24);
        if (v52 || (sub_1C9064C2C() & 1) != 0)
        {
          OUTLINED_FUNCTION_318_0(v58);
          sub_1C8D99190();
          OUTLINED_FUNCTION_407();
        }
      }

      OUTLINED_FUNCTION_190_3();
      sub_1C8D9913C();
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_331_0())
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_256_0();
      OUTLINED_FUNCTION_349_0();
      sub_1C8D99B98();
      v53 = *v1 == *type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind && v1[1] == loc_1C8DA4348;
      if (v53 || (sub_1C9064C2C() & 1) != 0)
      {
        v54 = v1[2] == loc_1C8DA4350 && v1[3] == loc_1C8DA4358;
        if (v54 || (sub_1C9064C2C() & 1) != 0)
        {
          v55 = *(v57 + 24);
          sub_1C90637EC();
          sub_1C8D99190();
          OUTLINED_FUNCTION_356_0();
          sub_1C9063EAC();
        }
      }

      OUTLINED_FUNCTION_191_3();
      sub_1C8D9913C();
LABEL_51:
      sub_1C8D9913C();
      goto LABEL_52;
  }

  OUTLINED_FUNCTION_267_0();
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoRestrictionContext.InSet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InInclusiveRange.upperBound.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InInclusiveRange.upperBound.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InInclusiveRange.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InInclusiveRange.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_344_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(0);
  OUTLINED_FUNCTION_221_0(v3);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoRestrictionContext.RepresentableAs.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.MeasurementExpressibleAs.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.MeasurementExpressibleAs.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(v1);
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_177_2(v2);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t sub_1C8DA4E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0A64();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8DA4F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0A10();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8DA4F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC09BC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(v0) + 40);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = v0 + *(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(v1) + 40);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *(v0 + 4) = 0;
  *v0 = 0;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRestrictionContext(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoRestrictionContextKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v40 = v4;
  v5 = OUTLINED_FUNCTION_258();
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(v5);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_147();
  v11 = OUTLINED_FUNCTION_111();
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(v11);
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_161_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_233_0();
  v17 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v18 = OUTLINED_FUNCTION_9(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_228();
  v25 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v26 = OUTLINED_FUNCTION_13_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_84();
  v30 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v31 = OUTLINED_FUNCTION_9(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_95_1();
  v35 = *v0;
  v36 = *v40;
  switch(v35 >> 61)
  {
    case 1uLL:
      if (v36 >> 61 == 1)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();
        sub_1C8CEB10C(*v1, *v2);
        if (v38)
        {
          v39 = *(v25 + 20);
          sub_1C90637EC();
          sub_1C8D99190();

          sub_1C9063EAC();
          sub_1C8D9913C();
          OUTLINED_FUNCTION_347();
        }

        else
        {

          sub_1C8D9913C();
        }

        sub_1C8D9913C();
      }

      break;
    case 2uLL:
      if (v36 >> 61 == 2)
      {
        goto LABEL_9;
      }

      break;
    case 3uLL:
      if (v36 >> 61 == 3)
      {
LABEL_9:
        v37 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      }

      break;
    case 4uLL:
      if (v36 >> 61 == 4)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoRestrictionContext.TextTypedWith.== infix(_:_:)(v3, v23);
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    case 5uLL:
      if (v36 >> 61 == 5)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_125();
        static ToolKitProtoRestrictionContext.MeasurementExpressibleAs.== infix(_:_:)();
        sub_1C8D9913C();
        sub_1C8D9913C();
        goto LABEL_16;
      }

      break;
    case 6uLL:
      if (v36 >> 61 == 6)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoRestrictionContext.InInclusiveRange.== infix(_:_:)();
        sub_1C8D9913C();
LABEL_19:
        sub_1C8D9913C();

        goto LABEL_20;
      }

      break;
    default:
      if (!(v36 >> 61))
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_112();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_249();
        static ToolKitProtoRestrictionContext.InSet.== infix(_:_:)();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_206();
        sub_1C8D9913C();
LABEL_16:

LABEL_20:
      }

      break;
  }

  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoContentItemClassDescriptor.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoContentItemClassDescriptor(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoContentItemClassDescriptorKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v55 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(0);
  v5 = OUTLINED_FUNCTION_13_1(v55);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v8 = OUTLINED_FUNCTION_111();
  v54 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(v8);
  v9 = OUTLINED_FUNCTION_13_1(v54);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_0();
  v57 = v12;
  v13 = OUTLINED_FUNCTION_111();
  v53 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(v13);
  v14 = OUTLINED_FUNCTION_13_1(v53);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_0();
  v56 = v17;
  v18 = OUTLINED_FUNCTION_111();
  v19 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(v18);
  v20 = OUTLINED_FUNCTION_13_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_95_1();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314748, &qword_1C9074E08);
  OUTLINED_FUNCTION_9(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_142();
  v31 = (v0 + *(v30 + 56));
  sub_1C8D990E8();
  OUTLINED_FUNCTION_181();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_287();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_39;
      }

      sub_1C8D99B98();
      v45 = *v3;
      v46 = v3[1];
      OUTLINED_FUNCTION_222_0();
      v49 = v38 && v47 == v48;
      if (v49 || (sub_1C9064C2C() & 1) != 0)
      {
        v50 = v3[2] == *(v56 + 16) && v3[3] == *(v56 + 24);
        if (v50 || (sub_1C9064C2C() & 1) != 0)
        {
          OUTLINED_FUNCTION_318_0(v53);
          sub_1C8D99190();
          OUTLINED_FUNCTION_278_0();
        }
      }

      OUTLINED_FUNCTION_186_2();
      sub_1C8D9913C();
      goto LABEL_50;
    case 2u:
      OUTLINED_FUNCTION_35_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_287();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        OUTLINED_FUNCTION_273();
        goto LABEL_39;
      }

      sub_1C8D99B98();
      v34 = *v2;
      v35 = v2[1];
      OUTLINED_FUNCTION_222_0();
      v38 = v38 && v36 == v37;
      if (v38 || (sub_1C9064C2C() & 1) != 0)
      {
        v39 = v2[2] == *(v57 + 16) && v2[3] == *(v57 + 24);
        if (v39 || (sub_1C9064C2C() & 1) != 0)
        {
          OUTLINED_FUNCTION_318_0(v54);
          sub_1C8D99190();
          OUTLINED_FUNCTION_278_0();
        }
      }

      OUTLINED_FUNCTION_188_1();
      sub_1C8D9913C();
      goto LABEL_50;
    case 3u:
      OUTLINED_FUNCTION_35_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_287();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        OUTLINED_FUNCTION_153_1();
LABEL_39:
        sub_1C8D9913C();
        goto LABEL_40;
      }

      sub_1C8D99B98();
      v40 = *v4;
      v41 = v4[1];
      OUTLINED_FUNCTION_222_0();
      v44 = v38 && v42 == v43;
      if (v44 || (sub_1C9064C2C() & 1) != 0)
      {
        OUTLINED_FUNCTION_287_0(v55);
        sub_1C8D99190();
        OUTLINED_FUNCTION_278_0();
      }

      OUTLINED_FUNCTION_187_2();
      sub_1C8D9913C();
LABEL_50:
      sub_1C8D9913C();
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_35_8();
      sub_1C8D990E8();
      v33 = *v1;
      v32 = v1[1];
      OUTLINED_FUNCTION_287();
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_40:
        sub_1C8D16D78(v0, &qword_1EC314748, &qword_1C9074E08);
      }

      else
      {
        if (v33 == *v31 && v32 == v31[1])
        {
          v52 = v31[1];
        }

        else
        {
          OUTLINED_FUNCTION_254();
          OUTLINED_FUNCTION_335_0();
        }

LABEL_51:
        OUTLINED_FUNCTION_231();
        sub_1C8D9913C();
      }

      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoComparisonPredicate.property.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.comparison.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.contentItemClass.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.second.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypedValue(v1);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v7 = *(v6 + 20);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
  v11 = v0 + *(v6 + 24);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init(first:second:)()
{
  v2 = OUTLINED_FUNCTION_75_1();
  v3 = type metadata accessor for ToolKitProtoTypedValue(v2);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  v7 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  OUTLINED_FUNCTION_311_0(v7);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  v11 = v0 + *(v1 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_209();
  sub_1C8DB483C();
  return sub_1C8DB483C();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Template.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_216();
  v54 = v15;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_216();
  v53 = v17;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_147();
  v22 = OUTLINED_FUNCTION_27_0(v21);
  v23 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(v22);
  v24 = OUTLINED_FUNCTION_13_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44_8();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_66();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC314770, &qword_1C9074E30);
  OUTLINED_FUNCTION_9(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_51();
  v44 = *(v43 + 56);
  sub_1C8D990E8();
  sub_1C8D990E8();
  OUTLINED_FUNCTION_209();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() != 1)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_5_18();
      sub_1C8D99B98();
      v47 = OUTLINED_FUNCTION_100();
      static ToolKitProtoTypeInstance.== infix(_:_:)(v47, v48);
      OUTLINED_FUNCTION_15_13();
      sub_1C8D9913C();
      goto LABEL_34;
    case 2u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_36;
      }

      sub_1C8D99B98();
      v45 = OUTLINED_FUNCTION_253();
      static ToolKitProtoTypeInstance.== infix(_:_:)(v45, v46);
      OUTLINED_FUNCTION_15_13();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_94();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_71_3();
      goto LABEL_35;
    case 3u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() != 3)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_5_18();
      sub_1C8D99B98();
      static ToolKitProtoTypeInstance.== infix(_:_:)(v1, v53);
      OUTLINED_FUNCTION_15_13();
      sub_1C8D9913C();
      goto LABEL_34;
    case 4u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() != 4)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_5_18();
      sub_1C8D99B98();
      static ToolKitProtoTypeInstance.== infix(_:_:)(v2, v54);
      OUTLINED_FUNCTION_15_13();
      sub_1C8D9913C();
      goto LABEL_34;
    case 5u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() != 5)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_5_18();
      sub_1C8D99B98();
      v49 = OUTLINED_FUNCTION_347();
      static ToolKitProtoTypeInstance.== infix(_:_:)(v49, v50);
      OUTLINED_FUNCTION_15_13();
      sub_1C8D9913C();
      goto LABEL_34;
    case 6u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 6)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 7u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 7)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 8u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 8)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 9u:
      OUTLINED_FUNCTION_4_18();
      OUTLINED_FUNCTION_349_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 9)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xAu:
      OUTLINED_FUNCTION_4_18();
      OUTLINED_FUNCTION_302_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 10)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xBu:
      OUTLINED_FUNCTION_4_18();
      OUTLINED_FUNCTION_341_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 11)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xCu:
      OUTLINED_FUNCTION_4_18();
      OUTLINED_FUNCTION_338_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 12)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xDu:
      if (OUTLINED_FUNCTION_328_0() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_37;
    case 0xEu:
      if (OUTLINED_FUNCTION_328_0() != 14)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    case 0xFu:
      if (OUTLINED_FUNCTION_328_0() != 15)
      {
        goto LABEL_37;
      }

LABEL_27:
      OUTLINED_FUNCTION_71_3();
      sub_1C8D9913C();
      goto LABEL_38;
    default:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2())
      {
LABEL_36:
        OUTLINED_FUNCTION_158_3();
        sub_1C8D9913C();
LABEL_37:
        sub_1C8D16D78(v0, &dword_1EC314770, &qword_1C9074E30);
      }

      else
      {
LABEL_33:
        OUTLINED_FUNCTION_5_18();
        sub_1C8D99B98();
        v51 = OUTLINED_FUNCTION_212();
        static ToolKitProtoTypeInstance.== infix(_:_:)(v51, v52);
        OUTLINED_FUNCTION_15_13();
        sub_1C8D9913C();
LABEL_34:
        sub_1C8D9913C();
        OUTLINED_FUNCTION_71_3();
LABEL_35:
        sub_1C8D9913C();
      }

LABEL_38:
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  a19 = v22;
  a20 = v23;
  v92[21] = v25;
  v93 = v24;
  v26 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v27 = OUTLINED_FUNCTION_9(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_0();
  v92[13] = v30;
  v31 = OUTLINED_FUNCTION_111();
  v32 = type metadata accessor for ToolKitProtoTypedValue(v31);
  v33 = OUTLINED_FUNCTION_9(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12();
  v92[12] = v36;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_216();
  v92[11] = v38;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_216();
  v92[10] = v40;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_216();
  v92[9] = v42;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_216();
  v92[8] = v44;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_216();
  v92[7] = v46;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_216();
  v92[6] = v48;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_216();
  v92[5] = v50;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_216();
  v92[4] = v52;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_216();
  v92[3] = v54;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_216();
  v92[2] = v56;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_147();
  v59 = OUTLINED_FUNCTION_27_0(v58);
  v60 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(v59);
  v61 = OUTLINED_FUNCTION_13_1(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_12();
  v92[20] = v64;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_44_8();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_216();
  v92[16] = v69;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_216();
  v92[15] = v71;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_216();
  v92[14] = v73;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_97_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_282_0();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_84();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314778, &qword_1C9074E38);
  OUTLINED_FUNCTION_9(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v83);
  v85 = v92 - v84;
  v87 = *(v86 + 56);
  sub_1C8D990E8();
  v93 = v87;
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 1)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 2u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 2)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_16();
      sub_1C8D99B98();
      v88 = OUTLINED_FUNCTION_249();
      static ToolKitProtoTypedValue.== infix(_:_:)(v88);
      OUTLINED_FUNCTION_14_17();
      sub_1C8D9913C();
      goto LABEL_35;
    case 3u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 3)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_16();
      sub_1C8D99B98();
      static ToolKitProtoTypedValue.== infix(_:_:)(v21);
      OUTLINED_FUNCTION_14_17();
      sub_1C8D9913C();
      goto LABEL_35;
    case 4u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 4)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_16();
      sub_1C8D99B98();
      static ToolKitProtoTypedValue.== infix(_:_:)(v20);
      OUTLINED_FUNCTION_14_17();
      sub_1C8D9913C();
      goto LABEL_35;
    case 5u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_16();
      sub_1C8D99B98();
      v89 = OUTLINED_FUNCTION_253();
      static ToolKitProtoTypedValue.== infix(_:_:)(v89);
      OUTLINED_FUNCTION_14_17();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_145();
      goto LABEL_35;
    case 6u:
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_348_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() == 6)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 7u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() == 7)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 8u:
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_350_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() == 8)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 9u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() == 9)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xAu:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() == 10)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xBu:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 11)
      {
        goto LABEL_36;
      }

LABEL_33:
      OUTLINED_FUNCTION_6_16();
      sub_1C8D99B98();
      v90 = OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.== infix(_:_:)(v90);
      OUTLINED_FUNCTION_14_17();
      goto LABEL_34;
    case 0xCu:
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_342_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 12)
      {
        goto LABEL_36;
      }

      sub_1C8D99B98();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoComparisonPredicate.Comparison.Pair.== infix(_:_:)();
LABEL_34:
      sub_1C8D9913C();
      goto LABEL_35;
    case 0xDu:
      if (OUTLINED_FUNCTION_329_0() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_37;
    case 0xEu:
      if (OUTLINED_FUNCTION_329_0() != 14)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    case 0xFu:
      if (OUTLINED_FUNCTION_329_0() != 15)
      {
        goto LABEL_37;
      }

LABEL_27:
      OUTLINED_FUNCTION_158_3();
      sub_1C8D9913C();
      goto LABEL_38;
    default:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2())
      {
LABEL_3:
        OUTLINED_FUNCTION_13_13();
LABEL_36:
        sub_1C8D9913C();
LABEL_37:
        sub_1C8D16D78(v85, &qword_1EC314778, &qword_1C9074E38);
      }

      else
      {
        OUTLINED_FUNCTION_6_16();
        OUTLINED_FUNCTION_261(&a18);
        v91 = OUTLINED_FUNCTION_347();
        static ToolKitProtoTypedValue.== infix(_:_:)(v91);
        OUTLINED_FUNCTION_14_17();
        sub_1C8D9913C();
LABEL_35:
        sub_1C8D9913C();
        OUTLINED_FUNCTION_158_3();
        sub_1C8D9913C();
      }

LABEL_38:
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoComparisonPredicate.Template.property.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Template.comparisonTemplate.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Template.contentItemClass.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Template.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA79E4()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = *(v1(v0) + 32);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_60_4();

  return v7(v6);
}

uint64_t sub_1C8DA7A68()
{
  v0 = OUTLINED_FUNCTION_258();
  v2 = *(v1(v0) + 32);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_168_2();

  return v7(v6);
}

uint64_t ToolKitProtoComparisonPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoComparisonPredicate(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8DA7B40()
{
  v3 = OUTLINED_FUNCTION_47_5();
  v5 = v4(v3);
  v6 = OUTLINED_FUNCTION_162_2(v5);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(v6);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = v2[6];
  v0(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = v2[7];
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v1 + v2[8];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_346_0();
}

void sub_1C8DA7C30()
{
  OUTLINED_FUNCTION_259_0();
  v1 = v0;
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  v9 = v8[5];
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v8[6];
  v1(0);
  OUTLINED_FUNCTION_317_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = v8[7];
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = v6 + v8[8];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  sub_1C8DB483C();
  *v6 = v4;
  v6[1] = v25;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_258_0();
}

uint64_t sub_1C8DA7D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0968();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoCompoundPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoCompoundPredicate(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoCompoundPredicate.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoCompoundPredicate(v1);
  OUTLINED_FUNCTION_221_0(v2);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  *(v0 + 8) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ToolKitProtoStringSearchPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoStringSearchPredicate(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoIdSearchPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoIdSearchPredicate(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoValueSearchPredicate.Template.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoValueSearchPredicate.Template(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoValueSearchPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoValueSearchPredicate(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSearchableItemPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSearchableItemPredicate(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoQuery.predicate.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoQuery(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoQuery.limit.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoQuery(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA84DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0914();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoQuery.AnyPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoQuery.AnyPredicate(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoQuery.ToolKitProtoAnyPredicateKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v82 = type metadata accessor for ToolKitProtoValueSearchPredicate(0);
  v5 = OUTLINED_FUNCTION_13_1(v82);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v8 = OUTLINED_FUNCTION_111();
  valid = type metadata accessor for ToolKitProtoValidPredicate(v8);
  v10 = OUTLINED_FUNCTION_9(valid);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v13 = OUTLINED_FUNCTION_111();
  v81 = type metadata accessor for ToolKitProtoSearchableItemPredicate(v13);
  v14 = OUTLINED_FUNCTION_13_1(v81);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_0();
  v17 = OUTLINED_FUNCTION_111();
  v18 = type metadata accessor for ToolKitProtoSuggestedPredicate(v17);
  v19 = OUTLINED_FUNCTION_9(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_0();
  v22 = OUTLINED_FUNCTION_111();
  v23 = type metadata accessor for ToolKitProtoAllPredicate(v22);
  v24 = OUTLINED_FUNCTION_9(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_7_0();
  v27 = OUTLINED_FUNCTION_111();
  v80 = type metadata accessor for ToolKitProtoIdSearchPredicate(v27);
  v28 = OUTLINED_FUNCTION_13_1(v80);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7_0();
  v31 = OUTLINED_FUNCTION_111();
  v83 = type metadata accessor for ToolKitProtoStringSearchPredicate(v31);
  v32 = OUTLINED_FUNCTION_13_1(v83);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7_0();
  v35 = OUTLINED_FUNCTION_111();
  v79 = type metadata accessor for ToolKitProtoCompoundPredicate(v35);
  v36 = OUTLINED_FUNCTION_13_1(v79);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_7_0();
  v84 = v39;
  v40 = OUTLINED_FUNCTION_111();
  v41 = type metadata accessor for ToolKitProtoComparisonPredicate(v40);
  v42 = OUTLINED_FUNCTION_9(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_7_0();
  v45 = OUTLINED_FUNCTION_111();
  v46 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(v45);
  v47 = OUTLINED_FUNCTION_13_1(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_161_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44_8();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_97_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_228();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314790, &unk_1C9074E50);
  OUTLINED_FUNCTION_9(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_51();
  v63 = *(v62 + 56);
  sub_1C8D990E8();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 1)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      sub_1C8D99B98();
      if (*v4 == *v84)
      {
        v74 = *(v4 + 1);
        v75 = *(v84 + 1);
        sub_1C8CEF548();
        if (v76)
        {
          v77 = *(v79 + 24);
          sub_1C90637EC();
          OUTLINED_FUNCTION_270_1();
          OUTLINED_FUNCTION_269_1();
        }
      }

      OUTLINED_FUNCTION_180_0();
      sub_1C8D9913C();
      goto LABEL_51;
    case 2u:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 2)
      {
        OUTLINED_FUNCTION_255_0();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      sub_1C8D99B98();
      v64 = *v3;
      v65 = v3[1];
      OUTLINED_FUNCTION_222_0();
      v68 = v68 && v66 == v67;
      if (v68 || (sub_1C9064C2C() & 1) != 0)
      {
        OUTLINED_FUNCTION_279_0(v83);
        OUTLINED_FUNCTION_270_1();
        OUTLINED_FUNCTION_269_1();
      }

      OUTLINED_FUNCTION_181_3();
      sub_1C8D9913C();
LABEL_51:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_22_15();
      sub_1C8D9913C();
      goto LABEL_52;
    case 3u:
      OUTLINED_FUNCTION_8_20();
      OUTLINED_FUNCTION_302_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 3)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_348_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_159_3();
      v71 = v68 && v69 == v70;
      if (v71 || (sub_1C9064C2C() & 1) != 0)
      {
        sub_1C8CEB10C(v2[2], v1[2]);
        if (v72)
        {
          v73 = *(v80 + 24);
          sub_1C90637EC();
          OUTLINED_FUNCTION_270_1();
          OUTLINED_FUNCTION_123_2();
        }
      }

      goto LABEL_37;
    case 4u:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 4)
      {
        OUTLINED_FUNCTION_231();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      sub_1C8D99B98();
      sub_1C90637EC();
      sub_1C8D99190();
      OUTLINED_FUNCTION_117();
      sub_1C9063EAC();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_94();
LABEL_23:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_22_15();
      goto LABEL_48;
    case 5u:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() == 5)
      {
        OUTLINED_FUNCTION_241_0();
        sub_1C8D99B98();
        sub_1C90637EC();
        sub_1C8D99190();
        OUTLINED_FUNCTION_287();
        sub_1C9063EAC();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_93();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_22_15();
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_59_3();
      goto LABEL_44;
    case 6u:
      OUTLINED_FUNCTION_8_20();
      OUTLINED_FUNCTION_341_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 6)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_350_0();
      sub_1C8D99B98();
      if (MEMORY[0x1CCA7F9A0](*v2, v2[1], *v1, v1[1]))
      {
        OUTLINED_FUNCTION_279_0(v81);
        OUTLINED_FUNCTION_270_1();
        OUTLINED_FUNCTION_123_2();
      }

      goto LABEL_37;
    case 7u:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 7)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      sub_1C8D99B98();
      sub_1C90637EC();
      sub_1C8D99190();
      sub_1C9063EAC();
      sub_1C8D9913C();
      goto LABEL_23;
    case 8u:
      OUTLINED_FUNCTION_8_20();
      OUTLINED_FUNCTION_338_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 8)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_343_0();
      sub_1C8CEE9DC();
      if (v78)
      {
        OUTLINED_FUNCTION_279_0(v82);
        OUTLINED_FUNCTION_270_1();
        OUTLINED_FUNCTION_123_2();
      }

LABEL_37:
      sub_1C8D9913C();
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0())
      {
        OUTLINED_FUNCTION_153_1();
LABEL_44:
        sub_1C8D9913C();
        sub_1C8D16D78(v0, &qword_1EC314790, &unk_1C9074E50);
      }

      else
      {
        OUTLINED_FUNCTION_241_0();
        sub_1C8D99B98();
        static ToolKitProtoComparisonPredicate.== infix(_:_:)();
        sub_1C8D9913C();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_22_15();
LABEL_48:
        sub_1C8D9913C();
      }

LABEL_52:
      OUTLINED_FUNCTION_267_0();
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoQuery(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoQuery.init()()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = type metadata accessor for ToolKitProtoQuery(v2);
  v4 = OUTLINED_FUNCTION_240_0(v3);
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(v4);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = &v0[*(v1 + 24)];
  *v9 = 0;
  v9[8] = 1;
  result = OUTLINED_FUNCTION_289_0();
  *v0 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRuntimePlatformVersion.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = v0 + *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(v1) + 32);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *(v0 + 5) = 0;
  *v0 = 0;
  return result;
}

uint64_t sub_1C8DA9324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC08C0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.introducingVersion.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.deprecatingVersion.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.obsoletingVersion.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v1);
  v3 = OUTLINED_FUNCTION_231_0(v2);
  v4 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(v3);
  v5 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = v2[6];
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  v12 = v2[7];
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v4);
  v16 = &v0[v2[8]];
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t sub_1C8DA96D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC086C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(v1);
  OUTLINED_FUNCTION_221_0(v2);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  *(v0 + 16) = 0;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  a19 = v22;
  a20 = v23;
  v24 = OUTLINED_FUNCTION_290_0();
  v25 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(v24);
  v26 = OUTLINED_FUNCTION_13_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = OUTLINED_FUNCTION_29_9();
  v30 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(v29);
  v31 = OUTLINED_FUNCTION_13_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25();
  v36 = (v34 - v35);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314798, &qword_1C9074E68);
  OUTLINED_FUNCTION_9(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_142();
  v45 = *(v44 + 56);
  sub_1C8D990E8();
  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_117();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_159();
    sub_1C8D990E8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v46 = *v36 == *(v20 + v45);
      sub_1C8D9913C();
      goto LABEL_15;
    }

LABEL_6:
    sub_1C8D16D78(v20, &qword_1EC314798, &qword_1C9074E68);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_159();
  sub_1C8D990E8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_59_3();
    sub_1C8D9913C();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_314_0();
  sub_1C8D99B98();
  OUTLINED_FUNCTION_232_0();
  v49 = v49 && v47 == v48;
  if (v49 || (sub_1C9064C2C()) && v39[16] == *(v21 + 16))
  {
    v50 = *(v25 + 24);
    sub_1C90637EC();
    sub_1C8D99190();
    OUTLINED_FUNCTION_226_0();
  }

  OUTLINED_FUNCTION_179_1();
  sub_1C8D9913C();
  OUTLINED_FUNCTION_119();
  sub_1C8D9913C();
  OUTLINED_FUNCTION_231();
  sub_1C8D9913C();
LABEL_15:
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoRuntimeRequirement.FeatureFlag.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(v1);
  OUTLINED_FUNCTION_177_2(v2);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_93_2();
  *(v0 + 32) = 0;
}

uint64_t ToolKitProtoRuntimeRequirement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoRuntimeRequirement(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoRuntimeRequirementKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v7 = OUTLINED_FUNCTION_339_0(v5, v6);
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(v7);
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_0();
  v38 = v12;
  v13 = OUTLINED_FUNCTION_111();
  v14 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(v13);
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = OUTLINED_FUNCTION_29_9();
  v19 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v18);
  v20 = OUTLINED_FUNCTION_9(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v23 = OUTLINED_FUNCTION_284_0();
  v24 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(v23);
  v25 = OUTLINED_FUNCTION_13_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_228();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147A0, &qword_1C9074E70);
  OUTLINED_FUNCTION_9(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_142();
  v36 = *(v35 + 56);
  sub_1C8D990E8();
  sub_1C8D990E8();
  OUTLINED_FUNCTION_117();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_34_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_262_0();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_169_1();
      sub_1C8D99B98();
      static ToolKitProtoRuntimeRequirement.DeviceCapability.== infix(_:_:)(v4, v2);
      sub_1C8D9913C();
      goto LABEL_13;
    case 2u:
      OUTLINED_FUNCTION_34_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_262_0();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_169_1();
      sub_1C8D99B98();
      static ToolKitProtoRuntimeRequirement.FeatureFlag.== infix(_:_:)(v3, v38);
      sub_1C8D9913C();
      goto LABEL_13;
    case 3u:
      OUTLINED_FUNCTION_34_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_262_0();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_11;
      }

      v37 = *v1 == *(v0 + v36);
      goto LABEL_14;
    default:
      OUTLINED_FUNCTION_34_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_262_0();
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_153_1();
LABEL_10:
        sub_1C8D9913C();
LABEL_11:
        sub_1C8D16D78(v0, &qword_1EC3147A0, &qword_1C9074E70);
      }

      else
      {
        OUTLINED_FUNCTION_169_1();
        sub_1C8D99B98();
        static ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.== infix(_:_:)();
        sub_1C8D9913C();
LABEL_13:
        sub_1C8D9913C();
LABEL_14:
        OUTLINED_FUNCTION_231();
        sub_1C8D9913C();
      }

      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C8D06DE0(v2, v3, v4);
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1C8D06DF8(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolSummaryString.Component(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolSummaryString.Component.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v1 = type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  OUTLINED_FUNCTION_210_0(v1);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t static ToolKitProtoToolSummaryString.ToolKitProtoComponentKind.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      v24 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v9 = OUTLINED_FUNCTION_335_0();
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_143_1();
        v26 = OUTLINED_FUNCTION_143_1();
        j_j__OUTLINED_FUNCTION_265(v26, v27, 0);
        v15 = OUTLINED_FUNCTION_100();
        v17 = 0;
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_143_1();
      v36 = OUTLINED_FUNCTION_143_1();
      j_j__OUTLINED_FUNCTION_265(v36, v37, 0);
      v38 = OUTLINED_FUNCTION_95_0();
      j_j__OUTLINED_FUNCTION_265(v38, v39, 0);
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_143_1();
    v18 = OUTLINED_FUNCTION_143_1();
    j_j__OUTLINED_FUNCTION_265(v18, v19, v4);
    v20 = OUTLINED_FUNCTION_100();
    j_j__OUTLINED_FUNCTION_265(v20, v21, v7);
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v6 && v2 == v5)
  {
    v22 = 1;
    v28 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_264(v28);
    v29 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_264(v29);
    v30 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_265(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_265(v33, v34, v35);
    return v22;
  }

  OUTLINED_FUNCTION_95_0();
  v9 = OUTLINED_FUNCTION_335_0();
  v10 = OUTLINED_FUNCTION_100();
  j_j__OUTLINED_FUNCTION_264(v10);
  v11 = OUTLINED_FUNCTION_56_1();
  j_j__OUTLINED_FUNCTION_264(v11);
  v12 = OUTLINED_FUNCTION_56_1();
  j_j__OUTLINED_FUNCTION_265(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_100();
  v17 = 1;
LABEL_16:
  j_j__OUTLINED_FUNCTION_265(v15, v16, v17);
  return v9 & 1;
}

uint64_t ToolKitProtoToolSummaryString.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolSummaryString(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolInvocationSignature.ListOfRelations.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolInvocationSignature.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolInvocationSignature(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolInvocationSignature.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoToolInvocationSignature(v1);
  OUTLINED_FUNCTION_177_2(v2);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v3 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v3;
  type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  result = sub_1C9063E2C();
  v0[2] = result;
  return result;
}

uint64_t sub_1C8DAA74C()
{
  v4 = OUTLINED_FUNCTION_64_1();
  v6 = v3 + *(v5(v4) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v0;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSampleInvocationDefinition(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSampleInvocationDefinition.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(v1);
  v0[2] = 0;
  v0[3] = 0;
  OUTLINED_FUNCTION_177_2(v2);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v4 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v4;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.init(phrases:expectedResult:negativePhrases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OUTLINED_FUNCTION_65_2();
  v10 = v7 + *(type metadata accessor for ToolKitProtoSampleInvocationDefinition(v9) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v7[2] = v5;
  v7[3] = v4;
  *v7 = v6;
  v7[1] = a4;
  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantSchemaVersion(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantSchemaVersion.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(v1);
  OUTLINED_FUNCTION_177_2(v2);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  return result;
}

uint64_t ToolKitProtoAssistantSchemaIdentifier.version.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantSchemaIdentifier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8DAAB60()
{
  v2 = OUTLINED_FUNCTION_47_5();
  v4 = v3(v2);
  v5 = *(v4 + 24);
  v0(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v1 + *(v4 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_346_0();
  *(v1 + 16) = 0;
  *(v1 + 24) = v11;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.getter()
{
  v0 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  OUTLINED_FUNCTION_27_6(*(v0 + 32));
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v3);
  result = OUTLINED_FUNCTION_264_0(*(v4 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.outputType.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v0) + 36);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v0) + 40);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoAssistantToolSchemaDefinition.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v1);
  v3 = OUTLINED_FUNCTION_304_0(v2);
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(v3);
  OUTLINED_FUNCTION_53_5(v4);
  OUTLINED_FUNCTION_40_5(*(v2 + 32));
  v5 = OUTLINED_FUNCTION_303_0();
  v6 = type metadata accessor for ToolKitProtoTypeInstance(v5);
  OUTLINED_FUNCTION_53_5(v6);
  OUTLINED_FUNCTION_362_0();
  OUTLINED_FUNCTION_145_0();
  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v7;
}

void ToolKitProtoAssistantToolSchemaDefinition.init(identifier:name:description_p:parameters:sampleInvocations:outputType:)()
{
  OUTLINED_FUNCTION_301_0();
  v23 = v4;
  v22 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_237_0();
  v8 = OUTLINED_FUNCTION_214_1();
  v9 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v8);
  v10 = v9[7];
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = v9[9];
  v16 = (v0 + v9[8]);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v0 + v9[10];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v0 = v3;
  v0[1] = v2;
  *v16 = v1;
  v16[1] = v7;
  v0[2] = v22;
  v0[3] = v23;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_183_0();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DAB20C(uint64_t a1, void (*a2)(uint64_t), void (*a3)(void))
{
  v7 = OUTLINED_FUNCTION_214_1();
  v9 = v8(v7);
  v10 = OUTLINED_FUNCTION_286_0(v9);
  a2(v10);
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = *(v4 + 24);
  a3(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = v3 + *(v4 + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoAssistantTypeSchemaDefinitionKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_290_0();
  v2 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(v1);
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = OUTLINED_FUNCTION_31();
  v7 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(v6);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = OUTLINED_FUNCTION_29_9();
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(v11);
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_66();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147B0, &unk_1C9074E80);
  OUTLINED_FUNCTION_9(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_142();
  v22 = *(v21 + 56);
  sub_1C8D990E8();
  OUTLINED_FUNCTION_325_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_159();
    sub_1C8D990E8();
    if (OUTLINED_FUNCTION_359_0() == 1)
    {
      OUTLINED_FUNCTION_314_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_119();
      static ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.== infix(_:_:)();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_100();
LABEL_8:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_231();
      sub_1C8D9913C();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_159();
    sub_1C8D990E8();
    if (OUTLINED_FUNCTION_359_0() != 1)
    {
      OUTLINED_FUNCTION_314_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_212();
      static ToolKitProtoAssistantTypeSchemaDefinition.Entity.== infix(_:_:)();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_254();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_158_3();
  }

  sub_1C8D9913C();
  sub_1C8D16D78(v0, &qword_1EC3147B0, &unk_1C9074E80);
LABEL_9:
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(v1);
  OUTLINED_FUNCTION_210_0(v2);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init(persistState:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = &a2[*(type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0) + 20)];
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a2 = a1;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.PlayVideo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.EntityUpdating.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.PropertyUpdater.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.SiriKitIntent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 5);
  *(a1 + 4) = *(v1 + 4);
  *a1 = v2;
  *(a1 + 5) = v3;
}

int *ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 5);
  *(v1 + 4) = *(result + 4);
  *v1 = v2;
  *(v1 + 5) = v3;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 4) = 256;
  *a1 = 0;
  v1 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  OUTLINED_FUNCTION_210_0(v1);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t static ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t ToolKitProtoSystemToolProtocol.AssistantSchema.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.AppIntent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoSystemToolProtocol(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoSystemToolProtocolKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v89 = type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol(0);
  v4 = OUTLINED_FUNCTION_13_1(v89);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_111();
  v93 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(v7);
  v8 = OUTLINED_FUNCTION_13_1(v93);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_0();
  v11 = OUTLINED_FUNCTION_111();
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(v11);
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_0();
  v16 = OUTLINED_FUNCTION_111();
  v17 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(v16);
  v18 = OUTLINED_FUNCTION_9(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7_0();
  v21 = OUTLINED_FUNCTION_111();
  v92 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(v21);
  v22 = OUTLINED_FUNCTION_13_1(v92);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_0();
  v25 = OUTLINED_FUNCTION_111();
  v26 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(v25);
  v27 = OUTLINED_FUNCTION_9(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_0();
  v30 = OUTLINED_FUNCTION_111();
  v91 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(v30);
  v31 = OUTLINED_FUNCTION_13_1(v91);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7_0();
  v34 = OUTLINED_FUNCTION_111();
  v88 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(v34);
  v35 = OUTLINED_FUNCTION_13_1(v88);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7_0();
  v95 = v38;
  v39 = OUTLINED_FUNCTION_111();
  v87 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(v39);
  v40 = OUTLINED_FUNCTION_13_1(v87);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_7_0();
  v94 = v43;
  v44 = OUTLINED_FUNCTION_111();
  v86 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(v44);
  v45 = OUTLINED_FUNCTION_13_1(v86);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_7_0();
  v90 = v48;
  v49 = OUTLINED_FUNCTION_111();
  v50 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(v49);
  v51 = OUTLINED_FUNCTION_13_1(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_97_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_95_1();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147B8, &qword_1C9074E90);
  OUTLINED_FUNCTION_9(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_51();
  v68 = *(v67 + 56);
  sub_1C8D990E8();
  sub_1C8D990E8();
  OUTLINED_FUNCTION_276();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_7_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_170_3() != 1)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_148_1();
      sub_1C8D99B98();
      sub_1C8CEB10C(*v2, *v94);
      if (v78)
      {
        OUTLINED_FUNCTION_279_0(v87);
        OUTLINED_FUNCTION_270_1();
        if (OUTLINED_FUNCTION_269_1())
        {
          OUTLINED_FUNCTION_204_1();
          sub_1C8D9913C();
          goto LABEL_122;
        }
      }

      OUTLINED_FUNCTION_204_1();
      sub_1C8D9913C();
      goto LABEL_178;
    case 2u:
      OUTLINED_FUNCTION_7_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_170_3() != 2)
      {
        OUTLINED_FUNCTION_153_1();
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_148_1();
      sub_1C8D99B98();
      sub_1C8CEB10C(*v3, *v95);
      if (v74)
      {
        OUTLINED_FUNCTION_279_0(v88);
        OUTLINED_FUNCTION_270_1();
        if (OUTLINED_FUNCTION_269_1())
        {
          OUTLINED_FUNCTION_205_1();
          sub_1C8D9913C();
          goto LABEL_122;
        }
      }

      OUTLINED_FUNCTION_205_1();
      sub_1C8D9913C();
      goto LABEL_178;
    case 3u:
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_349_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_170_3() != 3)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_148_1();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_159_3();
      v77 = v77 && v75 == v76;
      if (v77 || (sub_1C9064C2C() & 1) != 0)
      {
        OUTLINED_FUNCTION_279_0(v91);
        OUTLINED_FUNCTION_270_1();
        if (OUTLINED_FUNCTION_123_2())
        {
          goto LABEL_121;
        }
      }

      goto LABEL_177;
    case 4u:
      OUTLINED_FUNCTION_7_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_170_3() == 4)
      {
        OUTLINED_FUNCTION_148_1();
        sub_1C8D99B98();
        v69 = OUTLINED_FUNCTION_288();
        static ToolKitProtoSystemToolProtocol.PropertyUpdater.== infix(_:_:)(v69, v70);
        sub_1C8D9913C();
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_59_3();
      goto LABEL_169;
    case 5u:
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_302_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_170_3() != 5)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_148_1();
      OUTLINED_FUNCTION_348_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_159_3();
      v81 = v77 && v79 == v80;
      if (v81 || (sub_1C9064C2C() & 1) != 0)
      {
        OUTLINED_FUNCTION_279_0(v92);
        OUTLINED_FUNCTION_270_1();
        if (OUTLINED_FUNCTION_123_2())
        {
          goto LABEL_121;
        }
      }

      goto LABEL_177;
    case 6u:
      OUTLINED_FUNCTION_7_18();
      sub_1C8D990E8();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_1C8D99B98();
        OUTLINED_FUNCTION_117();
        static ToolKitProtoSystemToolProtocol.IntentSideEffect.== infix(_:_:)();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_145();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_40_6();
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_231();
      goto LABEL_169;
    case 7u:
      OUTLINED_FUNCTION_7_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_170_3() != 7)
      {
        OUTLINED_FUNCTION_273();
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_148_1();
      sub_1C8D99B98();
      static ToolKitProtoSystemToolProtocol.AssistantSchema.== infix(_:_:)();
      sub_1C8D9913C();
LABEL_76:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_40_6();
LABEL_109:
      sub_1C8D9913C();
      goto LABEL_171;
    case 8u:
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_338_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_170_3() != 8)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_148_1();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_159_3();
      v84 = v77 && v82 == v83;
      if (v84 || (sub_1C9064C2C() & 1) != 0)
      {
        OUTLINED_FUNCTION_279_0(v93);
        OUTLINED_FUNCTION_270_1();
        if (OUTLINED_FUNCTION_123_2())
        {
          goto LABEL_121;
        }
      }

      goto LABEL_177;
    case 9u:
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_341_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_170_3() != 9)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_148_1();
      OUTLINED_FUNCTION_350_0();
      sub_1C8D99B98();
      v71 = OUTLINED_FUNCTION_343_0();
      sub_1C8CEB10C(v71, v72);
      if (v73)
      {
        OUTLINED_FUNCTION_279_0(v89);
        OUTLINED_FUNCTION_270_1();
        if (OUTLINED_FUNCTION_123_2())
        {
LABEL_121:
          sub_1C8D9913C();
          goto LABEL_122;
        }
      }

LABEL_177:
      sub_1C8D9913C();
      goto LABEL_178;
    case 0xAu:
      if (OUTLINED_FUNCTION_110_2() != 10)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0xBu:
      if (OUTLINED_FUNCTION_110_2() != 11)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0xCu:
      if (OUTLINED_FUNCTION_110_2() != 12)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0xDu:
      if (OUTLINED_FUNCTION_110_2() != 13)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0xEu:
      if (OUTLINED_FUNCTION_110_2() != 14)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0xFu:
      if (OUTLINED_FUNCTION_110_2() != 15)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x10u:
      if (OUTLINED_FUNCTION_110_2() != 16)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x11u:
      if (OUTLINED_FUNCTION_110_2() != 17)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x12u:
      if (OUTLINED_FUNCTION_110_2() != 18)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x13u:
      if (OUTLINED_FUNCTION_110_2() != 19)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x14u:
      if (OUTLINED_FUNCTION_110_2() != 20)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x15u:
      if (OUTLINED_FUNCTION_110_2() != 21)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x16u:
      if (OUTLINED_FUNCTION_110_2() != 22)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x17u:
      if (OUTLINED_FUNCTION_110_2() != 23)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x18u:
      if (OUTLINED_FUNCTION_110_2() != 24)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x19u:
      if (OUTLINED_FUNCTION_110_2() != 25)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x1Au:
      if (OUTLINED_FUNCTION_110_2() != 26)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x1Bu:
      if (OUTLINED_FUNCTION_110_2() != 27)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x1Cu:
      if (OUTLINED_FUNCTION_110_2() != 28)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x1Du:
      if (OUTLINED_FUNCTION_110_2() != 29)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x1Eu:
      if (OUTLINED_FUNCTION_110_2() != 30)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x1Fu:
      if (OUTLINED_FUNCTION_110_2() != 31)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x20u:
      if (OUTLINED_FUNCTION_110_2() != 32)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x21u:
      if (OUTLINED_FUNCTION_110_2() != 33)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x22u:
      if (OUTLINED_FUNCTION_110_2() != 34)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x23u:
      if (OUTLINED_FUNCTION_110_2() != 35)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x24u:
      if (OUTLINED_FUNCTION_110_2() != 36)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x25u:
      if (OUTLINED_FUNCTION_110_2() != 37)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x26u:
      if (OUTLINED_FUNCTION_110_2() != 38)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x27u:
      if (OUTLINED_FUNCTION_110_2() != 39)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x28u:
      if (OUTLINED_FUNCTION_110_2() != 40)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x29u:
      if (OUTLINED_FUNCTION_110_2() != 41)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x2Au:
      if (OUTLINED_FUNCTION_110_2() != 42)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x2Bu:
      if (OUTLINED_FUNCTION_110_2() != 43)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x2Cu:
      if (OUTLINED_FUNCTION_110_2() != 44)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x2Du:
      if (OUTLINED_FUNCTION_110_2() != 45)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x2Eu:
      if (OUTLINED_FUNCTION_110_2() != 46)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x2Fu:
      if (OUTLINED_FUNCTION_110_2() != 47)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x30u:
      if (OUTLINED_FUNCTION_110_2() != 48)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x31u:
      if (OUTLINED_FUNCTION_110_2() != 49)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x32u:
      if (OUTLINED_FUNCTION_110_2() != 50)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x33u:
      if (OUTLINED_FUNCTION_110_2() == 51)
      {
        goto LABEL_160;
      }

      goto LABEL_170;
    case 0x34u:
      if (OUTLINED_FUNCTION_110_2() != 52)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x35u:
      if (OUTLINED_FUNCTION_110_2() != 53)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x36u:
      if (OUTLINED_FUNCTION_110_2() != 54)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x37u:
      if (OUTLINED_FUNCTION_110_2() != 55)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x38u:
      if (OUTLINED_FUNCTION_110_2() != 56)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x39u:
      if (OUTLINED_FUNCTION_110_2() != 57)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x3Au:
      if (OUTLINED_FUNCTION_110_2() != 58)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x3Bu:
      if (OUTLINED_FUNCTION_110_2() != 59)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x3Cu:
      if (OUTLINED_FUNCTION_110_2() != 60)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x3Du:
      if (OUTLINED_FUNCTION_110_2() != 61)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x3Eu:
      if (OUTLINED_FUNCTION_110_2() != 62)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x3Fu:
      if (OUTLINED_FUNCTION_110_2() != 63)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x40u:
      if (OUTLINED_FUNCTION_110_2() != 64)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    case 0x41u:
      if (OUTLINED_FUNCTION_110_2() != 65)
      {
        goto LABEL_170;
      }

      goto LABEL_160;
    default:
      OUTLINED_FUNCTION_7_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_170_3())
      {
        OUTLINED_FUNCTION_26_6();
LABEL_169:
        sub_1C8D9913C();
LABEL_170:
        sub_1C8D16D78(v0, &qword_1EC3147B8, &qword_1C9074E90);
        goto LABEL_171;
      }

      OUTLINED_FUNCTION_148_1();
      sub_1C8D99B98();
      if (*v1 == *v90)
      {
        OUTLINED_FUNCTION_279_0(v86);
        sub_1C8D99190();
        v85 = sub_1C9063EAC();
        OUTLINED_FUNCTION_26_6();
        sub_1C8D9913C();
        if (v85)
        {
          OUTLINED_FUNCTION_26_6();
LABEL_122:
          sub_1C8D9913C();
LABEL_160:
          OUTLINED_FUNCTION_40_6();
          sub_1C8D9913C();
          goto LABEL_171;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26_6();
        sub_1C8D9913C();
      }

      OUTLINED_FUNCTION_26_6();
LABEL_178:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_40_6();
      sub_1C8D9913C();
LABEL_171:
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.systemProtocols.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.hiddenParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.visibilityFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.backingLinkActionIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.additionalAttributionContainers.setter(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.outputType.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 76);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.outputType.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 76);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.outputType.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 76);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.outputResultName.getter()
{
  v0 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  OUTLINED_FUNCTION_27_6(*(v0 + 80));
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoToolDefinition.Version1.outputResultName.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(v3);
  result = OUTLINED_FUNCTION_264_0(*(v4 + 80));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.outputResultName.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 80);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.sourceApplication.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 84);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.sourceApplication.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 84);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.sourceApplication.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 84);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionSummary.getter()
{
  v0 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  OUTLINED_FUNCTION_27_6(*(v0 + 88));
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionSummary.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(v3);
  result = OUTLINED_FUNCTION_264_0(*(v4 + 88));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionSummary.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 88);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.deprecationDefinition.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 92);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.deprecationDefinition.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 92);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.deprecationDefinition.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 92);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.customIcon.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 96);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.customIcon.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 96);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.customIcon.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 96);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.sourceContainer.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 100);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.sourceContainer.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 100);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.sourceContainer.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 100);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.attributionContainer.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 104);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.attributionContainer.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 104);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.attributionContainer.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 104);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionAttribution.getter()
{
  v0 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  OUTLINED_FUNCTION_27_6(*(v0 + 108));
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionAttribution.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(v3);
  result = OUTLINED_FUNCTION_264_0(*(v4 + 108));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionAttribution.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 108);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionResult.getter()
{
  v0 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  OUTLINED_FUNCTION_27_6(*(v0 + 112));
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionResult.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(v3);
  result = OUTLINED_FUNCTION_264_0(*(v4 + 112));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionResult.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 112);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionNote.getter()
{
  v0 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  OUTLINED_FUNCTION_27_6(*(v0 + 116));
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionNote.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(v3);
  result = OUTLINED_FUNCTION_264_0(*(v4 + 116));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionNote.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 116);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionRequires.getter()
{
  v0 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  OUTLINED_FUNCTION_27_6(*(v0 + 120));
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionRequires.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(v3);
  result = OUTLINED_FUNCTION_264_0(*(v4 + 120));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionRequires.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 120);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DADCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0818();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8DADDE0@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitProtoToolDefinition.Version1.Flag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C8DADE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC07C4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8DADE94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0770();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8DADF0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC071C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.valueType.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(v0) + 40);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.parentToolMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(v0) + 44);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DAE170()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v2 = *(v1(v0) + 48);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8DAE1D0()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v2 = *(v1(v0) + 48);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.BOOLeanMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(v0) + 48);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DAE25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC06C8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.relation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DAE6B0()
{
  v2 = OUTLINED_FUNCTION_47_5();
  v4 = v1 + *(v3(v2) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = v0;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_1C8DAE704()
{
  OUTLINED_FUNCTION_223();
  v3 = OUTLINED_FUNCTION_214_1();
  v5 = v2 + *(v4(v3) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  *(v2 + 8) = v0;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v8 = OUTLINED_FUNCTION_339_0(v6, v7);
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(v8);
  v9 = OUTLINED_FUNCTION_13_1(DoesNotContain);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_0();
  v12 = OUTLINED_FUNCTION_111();
  v72 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(v12);
  v13 = OUTLINED_FUNCTION_13_1(v72);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_0();
  v16 = OUTLINED_FUNCTION_111();
  v69 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(v16);
  v17 = OUTLINED_FUNCTION_13_1(v69);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_0();
  v77 = v20;
  v21 = OUTLINED_FUNCTION_111();
  v68 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(v21);
  v22 = OUTLINED_FUNCTION_13_1(v68);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_0();
  v76 = v25;
  v26 = OUTLINED_FUNCTION_111();
  v71 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(v26);
  v27 = OUTLINED_FUNCTION_13_1(v71);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_0();
  v75 = v30;
  v31 = OUTLINED_FUNCTION_111();
  v70 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(v31);
  v32 = OUTLINED_FUNCTION_13_1(v70);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7_0();
  v74 = v35;
  v36 = OUTLINED_FUNCTION_111();
  v37 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(v36);
  v38 = OUTLINED_FUNCTION_13_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_161_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_95_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147E8, &qword_1C9074ED0);
  OUTLINED_FUNCTION_9(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_142();
  v51 = *(v50 + 56);
  sub_1C8D990E8();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_11_14();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_295() != 1)
      {
        OUTLINED_FUNCTION_255_0();
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_275_0();
      sub_1C8D99B98();
      v60 = *v2;
      v61 = *v75;
      sub_1C8CEE9DC();
      if (v62)
      {
        OUTLINED_FUNCTION_287_0(v71);
        sub_1C8D99190();
        if (OUTLINED_FUNCTION_278_0())
        {
          OUTLINED_FUNCTION_194_2();
          sub_1C8D9913C();
          goto LABEL_42;
        }
      }

      OUTLINED_FUNCTION_194_2();
      sub_1C8D9913C();
      goto LABEL_47;
    case 2u:
      OUTLINED_FUNCTION_11_14();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_295() != 2)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_275_0();
      sub_1C8D99B98();
      v54 = *v3;
      v55 = *v76;
      sub_1C8CEE9DC();
      if ((v56 & 1) != 0 && *(v3 + 8) == *(v76 + 8))
      {
        OUTLINED_FUNCTION_318_0(v68);
        sub_1C8D99190();
        if (OUTLINED_FUNCTION_278_0())
        {
          OUTLINED_FUNCTION_196_2();
          sub_1C8D9913C();
          goto LABEL_42;
        }
      }

      OUTLINED_FUNCTION_196_2();
      sub_1C8D9913C();
      goto LABEL_47;
    case 3u:
      OUTLINED_FUNCTION_11_14();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_295() != 3)
      {
        OUTLINED_FUNCTION_153_1();
LABEL_34:
        sub_1C8D9913C();
LABEL_35:
        sub_1C8D16D78(v0, &qword_1EC3147E8, &qword_1C9074ED0);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_275_0();
      sub_1C8D99B98();
      v57 = *v5;
      v58 = *v77;
      sub_1C8CEE9DC();
      if ((v59 & 1) != 0 && *(v5 + 8) == *(v77 + 8))
      {
        OUTLINED_FUNCTION_318_0(v69);
        sub_1C8D99190();
        if (OUTLINED_FUNCTION_278_0())
        {
          OUTLINED_FUNCTION_195_1();
          sub_1C8D9913C();
          goto LABEL_42;
        }
      }

      OUTLINED_FUNCTION_195_1();
      sub_1C8D9913C();
      goto LABEL_47;
    case 4u:
      OUTLINED_FUNCTION_11_14();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_295() != 4)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_275_0();
      OUTLINED_FUNCTION_342_0();
      sub_1C8D99B98();
      v52 = *v4;
      sub_1C8CEE9DC();
      if (v53)
      {
        OUTLINED_FUNCTION_287_0(v72);
        sub_1C8D99190();
        if (OUTLINED_FUNCTION_278_0())
        {
          OUTLINED_FUNCTION_197_2();
          sub_1C8D9913C();
          goto LABEL_42;
        }
      }

      OUTLINED_FUNCTION_197_2();
      sub_1C8D9913C();
      goto LABEL_47;
    case 5u:
      OUTLINED_FUNCTION_11_14();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_295() != 5)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_275_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_343_0();
      sub_1C8CEE9DC();
      if (v63)
      {
        OUTLINED_FUNCTION_287_0(DoesNotContain);
        sub_1C8D99190();
        if (OUTLINED_FUNCTION_407())
        {
          OUTLINED_FUNCTION_193_1();
          sub_1C8D9913C();
          goto LABEL_42;
        }
      }

      OUTLINED_FUNCTION_193_1();
      sub_1C8D9913C();
      goto LABEL_47;
    case 6u:
      if (OUTLINED_FUNCTION_295() == 6)
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    case 7u:
      if (OUTLINED_FUNCTION_295() == 7)
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    default:
      OUTLINED_FUNCTION_11_14();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_295())
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_275_0();
      sub_1C8D99B98();
      v64 = *v1;
      v65 = *v74;
      sub_1C8CEE9DC();
      if (v66 & 1) != 0 && (v67 = *(v70 + 20), sub_1C90637EC(), sub_1C8D99190(), OUTLINED_FUNCTION_356_0(), (sub_1C9063EAC()))
      {
        OUTLINED_FUNCTION_198_1();
        sub_1C8D9913C();
LABEL_42:
        sub_1C8D9913C();
LABEL_43:
        OUTLINED_FUNCTION_231();
        sub_1C8D9913C();
      }

      else
      {
        OUTLINED_FUNCTION_198_1();
        sub_1C8D9913C();
LABEL_47:
        sub_1C8D9913C();
        OUTLINED_FUNCTION_231();
        sub_1C8D9913C();
      }

LABEL_48:
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8DAF43C()
{
  v1 = OUTLINED_FUNCTION_61_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_221_0(v3);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C8DAF494()
{
  v4 = OUTLINED_FUNCTION_64_1();
  v6 = v3 + *(v5(v4) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v0;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(v0) + 52);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_60_4();

  return v6(v5);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(v0) + 52);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_168_2();

  return v6(v5);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(v0) + 52);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoToolDefinition.Version1.Parameter.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(v1);
  v0[7] = 0;
  v0[8] = 0;
  v3 = OUTLINED_FUNCTION_251_0(v2);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(v3);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = v2[11];
  v6 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);
  OUTLINED_FUNCTION_53_5(v6);
  v7 = v2[12];
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(0);
  OUTLINED_FUNCTION_53_5(v8);
  v9 = v0 + v2[13];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_93_2();
  v10 = MEMORY[0x1E69E7CC0];
  v0[4] = MEMORY[0x1E69E7CC0];
  v0[5] = v10;
  v0[6] = v10;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.init(key:name:description_p:valueType:relationships:sampleInvocations:flags:parentToolMetadata:BOOLeanMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v16 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  v17 = v16[10];
  OUTLINED_FUNCTION_102_2();
  v18 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = v16[11];
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = v16[12];
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = a8 + v16[13];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[7] = a5;
  a8[8] = a6;
  sub_1C8DB483C();
  a8[4] = a7;
  a8[5] = a9;
  a8[6] = a10;
  sub_1C8DB483C();
  return sub_1C8DB483C();
}

uint64_t ToolKitProtoToolDefinition.Version1.Category.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DAFA24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0674();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(v0) + 32);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(v1);
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v3 = v0 + *(v2 + 32);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v4;
}

void ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init(name:style:foreground:background:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_285_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = *v11;
  v13 = v9 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0) + 32);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v10 = v8;
  *(v10 + 8) = v6;
  *(v10 + 16) = v12;
  *(v10 + 24) = v4;
  *(v10 + 32) = v2;
  *(v10 + 40) = v1;
  *(v10 + 48) = v0;
  OUTLINED_FUNCTION_421();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_236_0();
  v37 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset(v4);
  v5 = OUTLINED_FUNCTION_13_1(v37);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v38 = v8;
  v9 = OUTLINED_FUNCTION_111();
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(v9);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = OUTLINED_FUNCTION_288_0();
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(v14);
  v16 = OUTLINED_FUNCTION_13_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v37 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147F8, &qword_1C9074EE0);
  OUTLINED_FUNCTION_9(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_142();
  v28 = (v0 + *(v27 + 56));
  sub_1C8D990E8();
  sub_1C8D990E8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_67_3();
    sub_1C8D990E8();
    v31 = *v22;
    v30 = v22[1];
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_21:
      sub_1C8D16D78(v0, &qword_1EC3147F8, &qword_1C9074EE0);
      goto LABEL_30;
    }

    if (v31 == *v28 && v30 == v28[1])
    {
      v36 = v28[1];
    }

    else
    {
      OUTLINED_FUNCTION_206();
      sub_1C9064C2C();
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_67_3();
    sub_1C8D990E8();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_20:
      sub_1C8D9913C();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_256_0();
    v32 = v38;
    sub_1C8D99B98();
    v33 = *v1 == *v32 && v1[1] == v32[1];
    if (v33 || (sub_1C9064C2C() & 1) != 0)
    {
      v34 = v1[2] == v32[2] && v1[3] == v32[3];
      if (v34 || (sub_1C9064C2C() & 1) != 0)
      {
        OUTLINED_FUNCTION_318_0(v37);
        sub_1C8D99190();
        sub_1C9063EAC();
      }
    }

    OUTLINED_FUNCTION_189_2();
    sub_1C8D9913C();
    OUTLINED_FUNCTION_119();
    sub_1C8D9913C();
LABEL_29:
    OUTLINED_FUNCTION_85_0();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_67_3();
  sub_1C8D990E8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_273();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_256_0();
  sub_1C8D99B98();
  static ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.== infix(_:_:)(v3, v2);
  sub_1C8D9913C();
  OUTLINED_FUNCTION_347();
  sub_1C8D9913C();
  OUTLINED_FUNCTION_85_0();
LABEL_30:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoToolDefinition.Version1.Deprecation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoToolDefinition.Version1.Deprecation.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(v1);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  OUTLINED_FUNCTION_221_0(v2);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.Deprecation.init(deprecationMessage:replacedByToolID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OUTLINED_FUNCTION_65_2();
  v10 = v7 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(v9) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v7 = v6;
  v7[1] = v5;
  v7[2] = v4;
  v7[3] = a4;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 124);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_60_4();

  return v6(v5);
}

uint64_t ToolKitProtoToolDefinition.Version1.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 124);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_24_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_168_2();

  return v6(v5);
}

uint64_t ToolKitProtoToolDefinition.Version1.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(v0) + 124);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoToolDefinition.Version1.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1(v1);
  v3 = v2[19];
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  OUTLINED_FUNCTION_53_5(v4);
  OUTLINED_FUNCTION_40_5(v2[20]);
  v5 = v2[21];
  v6 = type metadata accessor for ToolKitProtoAppDefinition(0);
  OUTLINED_FUNCTION_53_5(v6);
  OUTLINED_FUNCTION_40_5(v2[22]);
  v7 = v2[23];
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  OUTLINED_FUNCTION_53_5(v8);
  v9 = v2[24];
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  OUTLINED_FUNCTION_53_5(v10);
  v11 = v2[25];
  v12 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v13 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = v2[26];
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  OUTLINED_FUNCTION_40_5(v2[27]);
  OUTLINED_FUNCTION_40_5(v2[28]);
  OUTLINED_FUNCTION_40_5(v2[29]);
  OUTLINED_FUNCTION_40_5(v2[30]);
  v20 = v0 + v2[31];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_93_2();
  *(v0 + 32) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = v21;
  *(v0 + 56) = v21;
  *(v0 + 64) = v21;
  *(v0 + 72) = v21;
  *(v0 + 80) = 0;
  *(v0 + 88) = v21;
  *(v0 + 96) = v21;
  *(v0 + 104) = v21;
  *(v0 + 112) = v21;
  *(v0 + 120) = v21;
  *(v0 + 128) = v21;
}

uint64_t ToolKitProtoToolDefinition.Version1.init(id:name:toolType:parameters:outputType:outputResultName:sourceApplication:descriptionSummary:categories:searchKeywords:deprecationDefinition:requirements:flags:authenticationPolicy:sampleInvocations:systemProtocols:customIcon:hiddenParameters:sourceContainer:attributionContainer:visibilityFlags:descriptionAttribution:descriptionResult:descriptionNote:descriptionRequires:backingLinkActionIdentifiers:additionalAttributionContainers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v71 = *a5;
  v77 = *a18;
  v36 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v70 = v36[19];
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v69 = v36[21];
  v41 = (a8 + v36[20]);
  v42 = type metadata accessor for ToolKitProtoAppDefinition(0);
  OUTLINED_FUNCTION_53_5(v42);
  v67 = v36[23];
  v43 = (a8 + v36[22]);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  v44 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v68 = v36[24];
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  v48 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  v52 = v36[25];
  v53 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v54 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
  v57 = v36[26];
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v53);
  v61 = (a8 + v36[27]);
  v62 = (a8 + v36[28]);
  v63 = (a8 + v36[29]);
  v64 = (a8 + v36[30]);
  v65 = a8 + v36[31];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v71;
  *(a8 + 40) = a6;
  sub_1C8DB483C();
  *v41 = a7;
  v41[1] = a9;
  sub_1C8DB483C();
  *v43 = a11;
  v43[1] = a12;
  *(a8 + 48) = a13;
  *(a8 + 56) = a14;
  sub_1C8DB483C();
  *(a8 + 64) = a16;
  *(a8 + 72) = a17;
  *(a8 + 80) = v77;
  *(a8 + 88) = a19;
  *(a8 + 96) = a20;
  sub_1C8DB483C();
  *(a8 + 104) = a22;
  sub_1C8DB483C();
  result = sub_1C8DB483C();
  *(a8 + 112) = a25;
  *v61 = a26;
  v61[1] = a27;
  *v62 = a28;
  v62[1] = a29;
  *v63 = a30;
  v63[1] = a31;
  *v64 = a32;
  v64[1] = a33;
  *(a8 + 120) = a34;
  *(a8 + 128) = a35;
  return result;
}

uint64_t ToolKitProtoAppDefinition.bundleID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoAppDefinition.bundleID.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitProtoAppDefinition.bundleVersion.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoAppDefinition.bundleVersion.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ToolKitProtoAppDefinition.teamID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoAppDefinition.teamID.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ToolKitProtoAppDefinition.device.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAppDefinition(v0) + 44);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DB0B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0620();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoAppDefinition.Device.deviceKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1C8CE5404(v2, v3);
}

uint64_t ToolKitProtoAppDefinition.Device.deviceKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C8CE5490(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t ToolKitProtoAppDefinition.Device.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAppDefinition.Device(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAppDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoAppDefinition(v0) + 48);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoAppDefinition.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoAppDefinition(v1);
  v3 = OUTLINED_FUNCTION_336_0(v2);
  v4 = type metadata accessor for ToolKitProtoAppDefinition.Device(v3);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = v0 + *(v2 + 48);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_93_2();
  *(v0 + 32) = 0;
  *(v0 + 40) = v6;
  *(v0 + 48) = 0;
  *(v0 + 56) = v6;
  *(v0 + 64) = 0;
  *(v0 + 72) = v6;
  *(v0 + 80) = 0;
  *(v0 + 88) = MEMORY[0x1E69E7CC0];
}

void ToolKitProtoAppDefinition.init(id:name:bundleID:bundleVersion:teamID:device:origin:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char *a30, uint64_t a31)
{
  OUTLINED_FUNCTION_299_0();
  v45 = v33;
  v46 = v34;
  v43 = v35;
  OUTLINED_FUNCTION_73_1();
  v44 = *a30;
  v36 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v37 = *(v36 + 44);
  type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = v32 + *(v36 + 48);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_345_0();
  *(v32 + 32) = v31;
  *(v32 + 40) = v43;
  *(v32 + 48) = v45;
  *(v32 + 56) = v46;
  *(v32 + 64) = a27;
  *(v32 + 72) = a28;
  sub_1C8DB483C();
  *(v32 + 80) = v44;
  *(v32 + 88) = a31;
  OUTLINED_FUNCTION_296_0();
}

uint64_t ToolKitProtoContainerDefinition.device.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoContainerDefinition(v0) + 44);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DB100C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC05CC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8DB1084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DC0578();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ToolKitProtoContainerDefinition.Device.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoContainerDefinition.Device(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DB1190@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1C90747F0;
  v2 = a1(0);
  OUTLINED_FUNCTION_210_0(v2);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t _s7ToolKit0aB18ProtoAppDefinitionV0abC10DeviceKindO2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C9064C2C();
}

uint64_t ToolKitProtoContainerDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoContainerDefinition(v0) + 48);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoContainerDefinition.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoContainerDefinition(v1);
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  v3 = OUTLINED_FUNCTION_336_0(v2);
  v4 = type metadata accessor for ToolKitProtoContainerDefinition.Device(v3);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = v0 + *(v2 + 48);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_93_2();
  *(v0 + 32) = 0;
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
}

void ToolKitProtoContainerDefinition.init(name:containerID:bundleVersion:containerType:teamID:device:origin:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30)
{
  OUTLINED_FUNCTION_299_0();
  v50 = v35;
  v48 = v36;
  v38 = v37;
  OUTLINED_FUNCTION_63_4();
  v40 = *v39;
  v49 = *a29;
  v41 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v42 = *(v41 + 44);
  type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v47 = v34 + *(v41 + 48);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v34 = v33;
  *(v34 + 8) = v32;
  *(v34 + 16) = v31;
  *(v34 + 24) = v30;
  *(v34 + 48) = v38;
  *(v34 + 56) = v48;
  *(v34 + 32) = v40;
  *(v34 + 64) = v50;
  *(v34 + 72) = a27;
  sub_1C8DB483C();
  *(v34 + 33) = v49;
  *(v34 + 40) = a30;
  OUTLINED_FUNCTION_296_0();
}

uint64_t ToolKitProtoTypeDisplayRepresentation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoTypeDisplayRepresentation(v0) + 28);
  return OUTLINED_FUNCTION_104();
}