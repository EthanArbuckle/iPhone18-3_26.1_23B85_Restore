uint64_t Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)()
{
  v2 = *v0;
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v5 = v2 >> 61;
  if ((v2 >> 61) > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        result = closure #10 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(v0);
        if (!v1)
        {
          goto LABEL_2;
        }
      }

      else if (v2 == 0xE000000000000000)
      {
        result = closure #1 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(v0);
        if (!v1)
        {
          goto LABEL_2;
        }
      }

      else if (v2 == 0xE000000000000008)
      {
        result = closure #2 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(v0);
        if (!v1)
        {
          goto LABEL_2;
        }
      }

      else
      {
        result = closure #3 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(v0);
        if (!v1)
        {
          goto LABEL_2;
        }
      }
    }

    else if (v5 == 4)
    {
      result = closure #8 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = closure #9 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result = closure #6 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = closure #7 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v5)
  {
    result = closure #5 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  else
  {
    result = closure #4 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(v0);
    if (!v1)
    {
LABEL_2:
      v3 = v0 + *(type metadata accessor for Promptkit_Wireformat_GenerationSchema(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 0xE000000000000000)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 0xE000000000000008)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 0xE000000000000010)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(uint64_t *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaString(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v5, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaString and conformance Promptkit_Wireformat_GenerationSchemaString, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v5, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
  }

  return result;
}

uint64_t closure #5 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaObject and conformance Promptkit_Wireformat_GenerationSchemaObject, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #6 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #7 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #8 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaOneOf and conformance Promptkit_Wireformat_GenerationSchemaOneOf, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *closure #9 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(void *result)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0xA000000000000000)
  {
    v2 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v3 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #10 in Promptkit_Wireformat_GenerationSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xC000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_GenerationSchema(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_GenerationSchema(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_GenerationSchema()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_GenerationSchemaString.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in Promptkit_Wireformat_GenerationSchemaString.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_GenerationSchemaString.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_GenerationSchemaString(0) + 20);
  type metadata accessor for Promptkit_Wireformat_StringConstraint(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraint and conformance Promptkit_Wireformat_StringConstraint, type metadata accessor for Promptkit_Wireformat_StringConstraint);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_GenerationSchemaString.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Promptkit_Wireformat_GenerationSchemaString.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Promptkit_Wireformat_GenerationSchemaString(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_GenerationSchemaString.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_StringConstraint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaString(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 20), v8, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_StringConstraint);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraint and conformance Promptkit_Wireformat_StringConstraint, type metadata accessor for Promptkit_Wireformat_StringConstraint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_StringConstraint);
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_GenerationSchemaString@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Promptkit_Wireformat_StringConstraint(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  result = UnknownStorage.init()();
  *a2 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_GenerationSchemaString(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaString and conformance Promptkit_Wireformat_GenerationSchemaString, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_GenerationSchemaString(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaString and conformance Promptkit_Wireformat_GenerationSchemaString, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_GenerationSchemaString()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaString and conformance Promptkit_Wireformat_GenerationSchemaString, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_GenerationSchemaObject.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Promptkit_Wireformat_GenerationSchemaField(0), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaField and conformance Promptkit_Wireformat_GenerationSchemaField, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_GenerationSchemaObject(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaObject and conformance Promptkit_Wireformat_GenerationSchemaObject, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_GenerationSchemaObject(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaObject and conformance Promptkit_Wireformat_GenerationSchemaObject, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_GenerationSchemaObject()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaObject and conformance Promptkit_Wireformat_GenerationSchemaObject, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_GenerationSchemaField.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in Promptkit_Wireformat_GenerationSchemaField.decodeMessage<A>(decoder:)();
      }

      else if (result == 4)
      {
        v3 = *(type metadata accessor for Promptkit_Wireformat_GenerationSchemaField(0) + 28);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_GenerationSchemaField.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_GenerationSchemaField(0) + 24);
  type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_GenerationSchemaField.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[1])
  {
    v8 = *v3;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (v3[3])
    {
      v9 = v3[2];
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    closure #3 in Promptkit_Wireformat_GenerationSchemaField.traverse<A>(visitor:)(v3, v7, a2, a3);
    closure #4 in Promptkit_Wireformat_GenerationSchemaField.traverse<A>(visitor:)(v3, v7, a2, a3, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
    v10 = v3 + *(type metadata accessor for Promptkit_Wireformat_GenerationSchemaField(0) + 32);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_GenerationSchemaField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaField(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 24), v8, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_GenerationSchemaField@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 1) = 0u;
  v4 = a1[6];
  v5 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  a2[a1[7]] = 2;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_GenerationSchemaField(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaField and conformance Promptkit_Wireformat_GenerationSchemaField, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_GenerationSchemaField(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaField and conformance Promptkit_Wireformat_GenerationSchemaField, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_GenerationSchemaField()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaField and conformance Promptkit_Wireformat_GenerationSchemaField, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_GenerationSchemaOneOf.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice(0), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaChoice and conformance Promptkit_Wireformat_GenerationSchemaChoice, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_GenerationSchemaOneOf(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaOneOf and conformance Promptkit_Wireformat_GenerationSchemaOneOf, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_GenerationSchemaOneOf(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaOneOf and conformance Promptkit_Wireformat_GenerationSchemaOneOf, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_GenerationSchemaOneOf()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaOneOf and conformance Promptkit_Wireformat_GenerationSchemaOneOf, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ToolCall.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_GenerationSchemaChoice.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice(0) + 20);
  type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Promptkit_Wireformat_GenerationSchemaChoice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 20), v8, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ToolCall@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0;
  v5 = *(a1 + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = &a3[*(a1 + 24)];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_GenerationSchemaChoice(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaChoice and conformance Promptkit_Wireformat_GenerationSchemaChoice, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_GenerationSchemaChoice(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaChoice and conformance Promptkit_Wireformat_GenerationSchemaChoice, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_GenerationSchemaChoice()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchemaChoice and conformance Promptkit_Wireformat_GenerationSchemaChoice, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_PromptRequestV1.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(a5, a6);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_RecursiveSchema.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_JSONSchema);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_RecursiveSchema(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_RecursiveSchema(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_RecursiveSchema()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_RecursiveSchemaKindObject.traverse<A>(visitor:)()
{
  if (v0[2])
  {
    v2 = v0[1];
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v1)
  {
    if (*(*v0 + 16))
    {
      type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaField and conformance Promptkit_Wireformat_RecursiveSchemaField, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v4 = v0 + *(type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindObject(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_RecursiveSchemaKindObject(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindObject and conformance Promptkit_Wireformat_RecursiveSchemaKindObject, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_RecursiveSchemaKindObject(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindObject and conformance Promptkit_Wireformat_RecursiveSchemaKindObject, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_RecursiveSchemaKindObject()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindObject and conformance Promptkit_Wireformat_RecursiveSchemaKindObject, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindObject);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_RecursiveSchemaKindObject.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      a4(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(a5, a6);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_RecursiveSchemaKindAnyOf.traverse<A>(visitor:)()
{
  if (v0[2])
  {
    v2 = v0[1];
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v1)
  {
    if (*(*v0 + 16))
    {
      type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v4 = v0 + *(type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindAnyOf(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindAnyOf and conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindAnyOf);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindAnyOf and conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindAnyOf);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindAnyOf and conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindAnyOf);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_RecursiveSchemaField.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 4)
      {
        closure #4 in Promptkit_Wireformat_RecursiveSchemaField.decodeMessage<A>(decoder:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_RecursiveSchemaField.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0) + 28);
  type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_RecursiveSchemaField.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 8))
  {
    v8 = *v3;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (*(v3 + 24))
    {
      v9 = *(v3 + 16);
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (*(v3 + 32) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #4 in Promptkit_Wireformat_RecursiveSchemaField.traverse<A>(visitor:)(v3, v7, a2, a3);
    v10 = v3 + *(type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0) + 32);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_RecursiveSchemaField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 28), v8, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_RecursiveSchemaField@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_RecursiveSchemaField(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaField and conformance Promptkit_Wireformat_RecursiveSchemaField, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_RecursiveSchemaField(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaField and conformance Promptkit_Wireformat_RecursiveSchemaField, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_RecursiveSchemaField()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaField and conformance Promptkit_Wireformat_RecursiveSchemaField, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_StringConstraint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Promptkit_Wireformat_StringConstraintEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, v13, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
    v30 = v44;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v21, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v21, v19, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
    v31 = v42;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v42, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v31, v27, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraintStartsWith and conformance Promptkit_Wireformat_StringConstraintStartsWith, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  v32 = v45;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  v33 = v43;
  if (v32)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, v43, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
    v36 = v49;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v36, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t closure #1 in Promptkit_Wireformat_StringConstraint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_StringConstraintEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraintStartsWith and conformance Promptkit_Wireformat_StringConstraintStartsWith, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_StringConstraint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraint and conformance Promptkit_Wireformat_StringConstraint, type metadata accessor for Promptkit_Wireformat_StringConstraint);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_StringConstraint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraint and conformance Promptkit_Wireformat_StringConstraint, type metadata accessor for Promptkit_Wireformat_StringConstraint);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_StringConstraint()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraint and conformance Promptkit_Wireformat_StringConstraint, type metadata accessor for Promptkit_Wireformat_StringConstraint);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_PreprocessedImageData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v5, a2, a3);
    }

    else if (result == 2)
    {
      a5(v5 + 8, a2, a3);
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_PreprocessedImageData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if (!*(*v6 + 16) || (result = a4(), !v7))
  {
    if (!*(v6[1] + 16) || (result = a5(), !v7))
    {
      v11 = v6 + *(a6(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_StringConstraintStartsWith(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraintStartsWith and conformance Promptkit_Wireformat_StringConstraintStartsWith, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_StringConstraintStartsWith(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraintStartsWith and conformance Promptkit_Wireformat_StringConstraintStartsWith, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_StringConstraintStartsWith()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraintStartsWith and conformance Promptkit_Wireformat_StringConstraintStartsWith, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_PreprocessedImageData(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t (*a6)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0 || (a6(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 5)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          closure #1 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        }

        else if (result == 2)
        {
          closure #2 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        }
      }

      else if (result == 3)
      {
        closure #3 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else
      {
        closure #5 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result > 8)
    {
      switch(result)
      {
        case 9:
          closure #9 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 10:
          closure #10 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 11:
          closure #11 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }

    else if (result == 6)
    {
      closure #6 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 7)
    {
      closure #7 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else
    {
      closure #8 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaString(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v31 = v20 & 0xF000000000000007;
  if (!(v20 >> 60) && v31 != 0xF000000000000007)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaString and conformance Promptkit_Wireformat_JSONSchemaString, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
  }

  else
  {
    v24 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v30, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
    if (v31 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
    v27 = *v29;
    *v29 = v25;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27);
  }
}

uint64_t closure #2 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xF000000000000000) == 0x1000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaBoolean and conformance Promptkit_Wireformat_JSONSchemaBoolean, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    v27 = *v29;
    *v29 = v25 | 0x1000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27);
  }
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xF000000000000000) == 0x2000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaInteger and conformance Promptkit_Wireformat_JSONSchemaInteger, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
    v27 = *v29;
    *v29 = v25 | 0x2000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27);
  }
}

uint64_t closure #4 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xF000000000000000) == 0x3000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNumber and conformance Promptkit_Wireformat_JSONSchemaNumber, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
    v27 = *v29;
    *v29 = v25 | 0x3000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27);
  }
}

uint64_t closure #5 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xF000000000000000) == 0x4000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaConstant and conformance Promptkit_Wireformat_JSONSchemaConstant, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    v27 = *v29;
    *v29 = v25 | 0x4000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27);
  }
}

uint64_t closure #6 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xF000000000000000) == 0x5000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaAnyOf and conformance Promptkit_Wireformat_JSONSchemaAnyOf, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
    v27 = *v29;
    *v29 = v25 | 0x5000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27);
  }
}

uint64_t closure #7 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xF000000000000000) == 0x6000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaDictionary and conformance Promptkit_Wireformat_JSONSchemaDictionary, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
    v27 = *v29;
    *v29 = v25 | 0x6000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27);
  }
}

uint64_t closure #8 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xF000000000000000) == 0x7000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaArray and conformance Promptkit_Wireformat_JSONSchemaArray, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
    v27 = *v29;
    *v29 = v25 | 0x7000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27);
  }
}

uint64_t closure #9 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xF000000000000000) == 0x8000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaObject and conformance Promptkit_Wireformat_JSONSchemaObject, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
    v27 = *v29;
    *v29 = v25 | 0x8000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27);
  }
}

uint64_t closure #10 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaReference(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xF000000000000000) == 0x9000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaReference and conformance Promptkit_Wireformat_JSONSchemaReference, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
    v27 = *v29;
    *v29 = v25 | 0x9000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27);
  }
}

uint64_t closure #11 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNull(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xF000000000000000) == 0xA000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
    v21 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    v19(v18, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNull and conformance Promptkit_Wireformat_JSONSchemaNull, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
  v22 = v32;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v22)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v16, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
  }

  else
  {
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
    v25 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v26, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    v27 = *v29;
    *v29 = v25 | 0xA000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27);
  }
}

uint64_t Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)()
{
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v4 = *v0 >> 60;
  if (v4 <= 4)
  {
    if (v4 <= 1)
    {
      if (v4)
      {
        result = closure #2 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v0);
        if (!v1)
        {
          goto LABEL_2;
        }
      }

      else
      {
        result = closure #1 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v0);
        if (!v1)
        {
          goto LABEL_2;
        }
      }
    }

    else if (v4 == 2)
    {
      result = closure #3 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else if (v4 == 3)
    {
      result = closure #4 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = closure #5 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v4 > 7)
  {
    if (v4 == 8)
    {
      result = closure #9 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else if (v4 == 9)
    {
      result = closure #10 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = closure #11 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v4 == 5)
  {
    result = closure #6 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  else if (v4 == 6)
  {
    result = closure #7 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v0);
    if (!v1)
    {
LABEL_2:
      v2 = v0 + *(type metadata accessor for Promptkit_Wireformat_JSONSchema(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  else
  {
    result = closure #8 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(uint64_t *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_JSONSchemaString(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 60)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v5, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaString and conformance Promptkit_Wireformat_JSONSchemaString, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v5, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x1000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaBoolean and conformance Promptkit_Wireformat_JSONSchemaBoolean, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x2000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaInteger and conformance Promptkit_Wireformat_JSONSchemaInteger, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x3000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNumber and conformance Promptkit_Wireformat_JSONSchemaNumber, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #5 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x4000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaConstant and conformance Promptkit_Wireformat_JSONSchemaConstant, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #6 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x5000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaAnyOf and conformance Promptkit_Wireformat_JSONSchemaAnyOf, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #7 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x6000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaDictionary and conformance Promptkit_Wireformat_JSONSchemaDictionary, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #8 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x7000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaArray and conformance Promptkit_Wireformat_JSONSchemaArray, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #9 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x8000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaObject and conformance Promptkit_Wireformat_JSONSchemaObject, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #10 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_JSONSchemaReference(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x9000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaReference and conformance Promptkit_Wireformat_JSONSchemaReference, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #11 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1)
{
  v2 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNull(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0xA000000000000000)
  {
    v8 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNull and conformance Promptkit_Wireformat_JSONSchemaNull, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchema(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchema(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchema()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaInteger.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_JSONSchemaInteger.traverse<A>(visitor:)()
{
  if (v0[1])
  {
    v2 = *v0;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v1)
  {
    if ((*(v0 + 20) & 1) == 0)
    {
      v4 = *(v0 + 4);
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if ((*(v0 + 28) & 1) == 0)
    {
      v5 = *(v0 + 6);
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v6 = v0 + *(type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaInteger@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  *(a2 + 24) = 0;
  *(a2 + 28) = 1;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaInteger(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaInteger and conformance Promptkit_Wireformat_JSONSchemaInteger, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaInteger(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaInteger and conformance Promptkit_Wireformat_JSONSchemaInteger, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaInteger()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaInteger and conformance Promptkit_Wireformat_JSONSchemaInteger, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaNumber.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_JSONSchemaNumber.traverse<A>(visitor:)()
{
  if (v0[1])
  {
    v2 = *v0;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v1)
  {
    if ((v0[3] & 1) == 0)
    {
      v4 = v0[2];
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((v0[5] & 1) == 0)
    {
      v5 = v0[4];
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v6 = v0 + *(type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaNumber@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaNumber(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNumber and conformance Promptkit_Wireformat_JSONSchemaNumber, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaNumber(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNumber and conformance Promptkit_Wireformat_JSONSchemaNumber, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaNumber()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNumber and conformance Promptkit_Wireformat_JSONSchemaNumber, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaBoolean(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaBoolean and conformance Promptkit_Wireformat_JSONSchemaBoolean, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaBoolean(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaBoolean and conformance Promptkit_Wireformat_JSONSchemaBoolean, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaBoolean()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaBoolean and conformance Promptkit_Wireformat_JSONSchemaBoolean, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 0;
            break;
          case 2:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 1;
            break;
          case 3:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 2;
            break;
          default:
            goto LABEL_19;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
        }

        else
        {
          if (result != 7)
          {
            goto LABEL_19;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
        }
      }

      else if (result == 4)
      {
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 3;
      }

      else
      {
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 4;
      }

      closure #1 in Promptkit_Wireformat_JSONSchemaType.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
LABEL_19:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_JSONSchemaType.decodeMessage<A>(decoder:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = type metadata accessor for Google_Protobuf_NullValue();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (v5)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v21 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v16 = (*(v15 + 48))(v11, 1, v14);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  if (v16 == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v17 = v21;
  if (*v21 != 7)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v18 = v22;
  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  *v17 = v18;
  return result;
}

uint64_t Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)()
{
  v2 = *v0;
  if (v2 > 3)
  {
    if (*v0 > 5u)
    {
      if (v2 != 6)
      {
        goto LABEL_15;
      }

      result = closure #7 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v2 == 4)
      {
        result = closure #5 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
        if (v1)
        {
          return result;
        }

        goto LABEL_15;
      }

      result = closure #6 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_15;
      }
    }
  }

  else if (*v0 > 1u)
  {
    if (v2 == 2)
    {
      result = closure #3 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_15;
    }

    result = closure #4 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!*v0)
    {
      result = closure #1 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_15;
    }

    result = closure #2 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
    if (!v1)
    {
LABEL_15:
      v4 = &v0[*(type metadata accessor for Promptkit_Wireformat_JSONSchemaType(0) + 20)];
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #6 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 5)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #7 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 6)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaType@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 7;
  v2 = &a2[*(a1 + 20)];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaType and conformance Promptkit_Wireformat_JSONSchemaType, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaType and conformance Promptkit_Wireformat_JSONSchemaType, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaType()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaType and conformance Promptkit_Wireformat_JSONSchemaType, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_JSONSchemaType(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 7)
  {
    if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Promptkit_Wireformat_JSONSchemaString.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
      }

      else if (result == 4)
      {
        goto LABEL_2;
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }
}

uint64_t Promptkit_Wireformat_JSONSchemaString.traverse<A>(visitor:)()
{
  if (v0[2])
  {
    v2 = v0[1];
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v1)
  {
    if (v0[4])
    {
      v4 = v0[3];
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (*(*v0 + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    if (v0[6])
    {
      v5 = v0[5];
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v6 = v0 + *(type metadata accessor for Promptkit_Wireformat_JSONSchemaString(0) + 32);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v3 = a2 + *(a1 + 32);
  result = UnknownStorage.init()();
  *a2 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaString(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaString and conformance Promptkit_Wireformat_JSONSchemaString, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaString(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaString and conformance Promptkit_Wireformat_JSONSchemaString, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaString()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaString and conformance Promptkit_Wireformat_JSONSchemaString, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaObject.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          goto LABEL_21;
        }

        if (result == 8)
        {
          v4 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0) + 44);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 5)
      {
        closure #5 in Promptkit_Wireformat_JSONSchemaObject.decodeMessage<A>(decoder:)();
      }

      else
      {
LABEL_21:
        dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        v5 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0) + 40);
LABEL_20:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else
      {
        sub_1AB834B34();
      }
    }

    else if (result == 1)
    {
      closure #1 in Promptkit_Wireformat_JSONSchemaObject.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0) + 36);
      goto LABEL_20;
    }
  }
}

uint64_t closure #1 in Promptkit_Wireformat_JSONSchemaObject.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0) + 32);
  type metadata accessor for Promptkit_Wireformat_JSONSchemaType(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaType and conformance Promptkit_Wireformat_JSONSchemaType, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #5 in Promptkit_Wireformat_JSONSchemaObject.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(v3);
    closure #3 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(v3);
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    if (*(v5[1] + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    if (*(v5[2] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    if (*(v5[3] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    closure #4 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(v5);
    v8 = v5 + *(type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0) + 48);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_JSONSchemaType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 32), v8, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaType and conformance Promptkit_Wireformat_JSONSchemaType, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
}

uint64_t closure #2 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

unint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaObject@<X0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = a1[8];
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaType(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[10];
  v7 = (a2 + a1[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[12];
  *(a2 + a1[11]) = 2;
  UnknownStorage.init()();
  v10 = MEMORY[0x1E69E7CC0];
  *a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(v10);
  a2[1] = result;
  a2[2] = v10;
  a2[3] = v10;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_JSONSchemaObject@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_JSONSchemaObject(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_JSONSchemaObject(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaObject(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaObject and conformance Promptkit_Wireformat_JSONSchemaObject, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaObject(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaObject and conformance Promptkit_Wireformat_JSONSchemaObject, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaObject()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaObject and conformance Promptkit_Wireformat_JSONSchemaObject, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaProperty.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          closure #3 in Promptkit_Wireformat_JSONSchemaProperty.decodeMessage<A>(decoder:)();
          break;
        case 4:
          v4 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0) + 28);
LABEL_14:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 5:
          v3 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0) + 32);
          goto LABEL_14;
      }
    }
  }
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaProperty.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0) + 24);
  type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaProperty.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[1])
  {
    v8 = *v3;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (v3[3])
    {
      v9 = v3[2];
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    closure #3 in Promptkit_Wireformat_JSONSchemaProperty.traverse<A>(visitor:)(v3, v7, a2, a3);
    closure #4 in Promptkit_Wireformat_GenerationSchemaField.traverse<A>(visitor:)(v3, v7, a2, a3, type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty);
    closure #5 in Promptkit_Wireformat_JSONSchemaProperty.traverse<A>(visitor:)(v3);
    v10 = v3 + *(type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0) + 36);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 24), v8, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_JSONSchema);
}

uint64_t closure #5 in Promptkit_Wireformat_JSONSchemaProperty.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaProperty@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 1) = 0u;
  v4 = a1[6];
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  a2[a1[7]] = 2;
  a2[v6] = 2;
  v7 = &a2[a1[9]];
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_JSONSchemaProperty(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaProperty(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaProperty and conformance Promptkit_Wireformat_JSONSchemaProperty, type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaProperty(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaProperty and conformance Promptkit_Wireformat_JSONSchemaProperty, type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaProperty()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaProperty and conformance Promptkit_Wireformat_JSONSchemaProperty, type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaArray.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        sub_1AB834B34();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          closure #3 in Promptkit_Wireformat_JSONSchemaArray.decodeMessage<A>(decoder:)();
          break;
        case 4:
          v4 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0) + 28);
LABEL_14:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 5:
          v3 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0) + 32);
          goto LABEL_14;
      }
    }
  }
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaArray.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0) + 24);
  type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[2])
  {
    v8 = v3[1];
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    closure #2 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(v3, v7, a2, a3);
    closure #3 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(v3);
    closure #4 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(v3);
    v9 = v3 + *(type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0) + 36);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 24), v8, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_JSONSchema);
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

unint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaArray@<X0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  v4 = a1[6];
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[4] = 1;
  v9 = a2 + a1[9];
  UnknownStorage.init()();
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaArray(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaArray and conformance Promptkit_Wireformat_JSONSchemaArray, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaArray(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaArray and conformance Promptkit_Wireformat_JSONSchemaArray, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaArray()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaArray and conformance Promptkit_Wireformat_JSONSchemaArray, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaDictionary.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        closure #3 in Promptkit_Wireformat_JSONSchemaDictionary.decodeMessage<A>(decoder:)();
        break;
      case 3:
        sub_1AB834B34();
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaDictionary.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0) + 24);
  type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaDictionary.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[2])
  {
    v8 = v3[1];
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    closure #2 in Promptkit_Wireformat_JSONSchemaDictionary.traverse<A>(visitor:)(v3, v7, a2, a3);
    v9 = v3 + *(type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_JSONSchemaDictionary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 24), v8, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_JSONSchema);
}

unint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaDictionary@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  UnknownStorage.init()();
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaDictionary(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaDictionary and conformance Promptkit_Wireformat_JSONSchemaDictionary, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaDictionary(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaDictionary and conformance Promptkit_Wireformat_JSONSchemaDictionary, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaDictionary()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaDictionary and conformance Promptkit_Wireformat_JSONSchemaDictionary, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaAnyOf.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4)
        {
          sub_1AB834B34();
        }

        else if (result == 5)
        {
          type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_JSONSchemaAnyOf.traverse<A>(visitor:)()
{
  if (v0[3])
  {
    v2 = v0[2];
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v1)
  {
    if (v0[5])
    {
      v4 = v0[4];
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (*(*v0 + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    if (*(v0[1] + 16))
    {
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v5 = v0 + *(type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf(0) + 32);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

unint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaAnyOf@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v3 = a2 + *(a1 + 32);
  UnknownStorage.init()();
  v4 = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaAnyOf(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaAnyOf and conformance Promptkit_Wireformat_JSONSchemaAnyOf, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaAnyOf(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaAnyOf and conformance Promptkit_Wireformat_JSONSchemaAnyOf, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaAnyOf()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaAnyOf and conformance Promptkit_Wireformat_JSONSchemaAnyOf, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaConstant(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaConstant and conformance Promptkit_Wireformat_JSONSchemaConstant, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaConstant(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaConstant and conformance Promptkit_Wireformat_JSONSchemaConstant, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaConstant()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaConstant and conformance Promptkit_Wireformat_JSONSchemaConstant, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaReference(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaReference and conformance Promptkit_Wireformat_JSONSchemaReference, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaReference(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaReference and conformance Promptkit_Wireformat_JSONSchemaReference, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaReference()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaReference and conformance Promptkit_Wireformat_JSONSchemaReference, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaNull(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNull and conformance Promptkit_Wireformat_JSONSchemaNull, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaNull(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNull and conformance Promptkit_Wireformat_JSONSchemaNull, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaNull()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNull and conformance Promptkit_Wireformat_JSONSchemaNull, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for Promptkit_Wireformat_ImageGenerationSize(0);
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSize and conformance Promptkit_Wireformat_ImageGenerationSize, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          closure #2 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            closure #3 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)();
            break;
          case 4:
            closure #4 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)();
            break;
          case 5:
            v3 = *(type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0) + 32);
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0) + 20);
  type metadata accessor for Promptkit_Wireformat_ImageGenerationShape(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShape and conformance Promptkit_Wireformat_ImageGenerationShape, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0) + 24);
  type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetail and conformance Promptkit_Wireformat_ImageGenerationDetail, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #4 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0) + 28);
  type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationCount and conformance Promptkit_Wireformat_ImageGenerationCount, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #4 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #5 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(v3);
    v9 = v3 + *(type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0) + 36);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ImageGenerationSize(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSize and conformance Promptkit_Wireformat_ImageGenerationSize, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
}

uint64_t closure #2 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ImageGenerationShape(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 20), v8, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShape and conformance Promptkit_Wireformat_ImageGenerationShape, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
}

uint64_t closure #3 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 24), v8, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetail and conformance Promptkit_Wireformat_ImageGenerationDetail, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
}

uint64_t closure #4 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 28), v8, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationCount and conformance Promptkit_Wireformat_ImageGenerationCount, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
}

uint64_t closure #5 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ImageGenerationParameters@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ImageGenerationSize(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for Promptkit_Wireformat_ImageGenerationShape(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[7];
  v10 = type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a1[9];
  v12 = (a2 + a1[8]);
  *v12 = 0;
  v12[1] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_JSONSchemaProperty@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_JSONSchemaProperty(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageGenerationParameters(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationParameters and conformance Promptkit_Wireformat_ImageGenerationParameters, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageGenerationParameters(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationParameters and conformance Promptkit_Wireformat_ImageGenerationParameters, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageGenerationParameters()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationParameters and conformance Promptkit_Wireformat_ImageGenerationParameters, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 0);
        }

        else if (result == 2)
        {
          closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 1);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 2);
            break;
          case 4:
            closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 3);
            break;
          case 5:
            closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 4);
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = type metadata accessor for Google_Protobuf_NullValue();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (v5)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v21 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v16 = (*(v15 + 48))(v11, 1, v14);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  if (v16 == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v17 = v21;
  if (*v21 != 5)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v18 = v22;
  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  *v17 = v18;
  return result;
}

uint64_t Promptkit_Wireformat_ImageGenerationSize.traverse<A>(visitor:)()
{
  v2 = *v0;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      result = closure #4 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v2 != 4)
      {
        goto LABEL_11;
      }

      result = closure #5 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (!*v0)
    {
      result = closure #1 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (v2 == 1)
    {
      result = closure #2 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_11;
    }

    result = closure #3 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v0);
    if (!v1)
    {
LABEL_11:
      v4 = &v0[*(type metadata accessor for Promptkit_Wireformat_ImageGenerationSize(0) + 20)];
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    __break(1u);
  }

  else
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 3)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #5 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 4)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ImageGenerationSize@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 5;
  v2 = &a2[*(a1 + 20)];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageGenerationSize(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSize and conformance Promptkit_Wireformat_ImageGenerationSize, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageGenerationSize(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSize and conformance Promptkit_Wireformat_ImageGenerationSize, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageGenerationSize()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSize and conformance Promptkit_Wireformat_ImageGenerationSize, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_ImageGenerationSize(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 5)
  {
    if (v4 != 5)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #1 in Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = type metadata accessor for Google_Protobuf_NullValue();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (v5)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v21 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v16 = (*(v15 + 48))(v11, 1, v14);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  if (v16 == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v17 = v21;
  if (*v21 != 4)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v18 = v22;
  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  *v17 = v18;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageGenerationShape(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShape and conformance Promptkit_Wireformat_ImageGenerationShape, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageGenerationShape(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShape and conformance Promptkit_Wireformat_ImageGenerationShape, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageGenerationShape()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShape and conformance Promptkit_Wireformat_ImageGenerationShape, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          closure #1 in Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 2);
        }

        else if (result == 4)
        {
          closure #1 in Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 3);
        }
      }

      else if (result == 1)
      {
        closure #1 in Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 0);
      }

      else if (result == 2)
      {
        closure #1 in Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 1);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_ImageGenerationShape.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  if (v7 <= 1)
  {
    if (!*v4)
    {
      result = closure #1 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4);
      if (v5)
      {
        return result;
      }

      goto LABEL_10;
    }

    result = closure #2 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4);
    if (!v5)
    {
LABEL_10:
      v9 = &v4[*(a4(0) + 20)];
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  else
  {
    if (v7 == 2)
    {
      result = closure #3 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4);
      if (v5)
      {
        return result;
      }

      goto LABEL_10;
    }

    if (v7 != 3)
    {
      goto LABEL_10;
    }

    result = closure #4 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageGenerationDetail(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetail and conformance Promptkit_Wireformat_ImageGenerationDetail, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageGenerationDetail(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetail and conformance Promptkit_Wireformat_ImageGenerationDetail, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageGenerationDetail()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetail and conformance Promptkit_Wireformat_ImageGenerationDetail, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_ImageGenerationShape(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 4)
  {
    if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Promptkit_Wireformat_CompletionPromptV1.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ImageGenerationCount.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v11 = type metadata accessor for Google_Protobuf_NullValue();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v10, 1, 1, v11);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (v2)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v17 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v8, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v13 = (*(v12 + 48))(v8, 1, v11);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  if (v13 == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v14 = v17;
  if ((*(v17 + 5) & 1) == 0)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t Promptkit_Wireformat_ImageGenerationCount.traverse<A>(visitor:)()
{
  if (*(v0 + 5))
  {
    goto LABEL_2;
  }

  if (((*v0 | (*(v0 + 4) << 32)) & 0x100000000) != 0)
  {
    result = closure #2 in Promptkit_Wireformat_ImageGenerationCount.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (!v1)
    {
LABEL_2:
      v2 = v0 + *(type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ImageGenerationCount.traverse<A>(visitor:)(unsigned int *a1)
{
  v2 = type metadata accessor for Google_Protobuf_NullValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) != 0 || ((*a1 | (*(a1 + 4) << 32)) & 0x100000000) == 0)
  {
    __break(1u);
  }

  else
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ImageGenerationCount@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 4) = 256;
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageGenerationCount(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationCount and conformance Promptkit_Wireformat_ImageGenerationCount, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageGenerationCount(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationCount and conformance Promptkit_Wireformat_ImageGenerationCount, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageGenerationCount()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationCount and conformance Promptkit_Wireformat_ImageGenerationCount, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_FileGenerationParameters.decodeMessage<A>(decoder:)()
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_FileGenerationParameters(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_FileGenerationParameters and conformance Promptkit_Wireformat_FileGenerationParameters, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_FileGenerationParameters(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_FileGenerationParameters and conformance Promptkit_Wireformat_FileGenerationParameters, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_FileGenerationParameters()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_FileGenerationParameters and conformance Promptkit_Wireformat_FileGenerationParameters, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_CustomData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      a4(v4 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_ToolCallFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (v4[1])
  {
    v7 = *v4;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v5)
  {
    if (v4[3])
    {
      v9 = v4[2];
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v10 = v4 + *(a4(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_CompletionPromptV1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_CompletionPromptV1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_DocumentIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_DocumentIdentifier and conformance Promptkit_Wireformat_DocumentIdentifier, type metadata accessor for Promptkit_Wireformat_DocumentIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_DocumentIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_DocumentIdentifier and conformance Promptkit_Wireformat_DocumentIdentifier, type metadata accessor for Promptkit_Wireformat_DocumentIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_DocumentIdentifier()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_DocumentIdentifier and conformance Promptkit_Wireformat_DocumentIdentifier, type metadata accessor for Promptkit_Wireformat_DocumentIdentifier);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_ResponseFormat.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKind(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatKind and conformance Promptkit_Wireformat_ResponseFormatKind, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ResponseFormat(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormat and conformance Promptkit_Wireformat_ResponseFormat, type metadata accessor for Promptkit_Wireformat_ResponseFormat);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ResponseFormat(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormat and conformance Promptkit_Wireformat_ResponseFormat, type metadata accessor for Promptkit_Wireformat_ResponseFormat);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ResponseFormat()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormat and conformance Promptkit_Wireformat_ResponseFormat, type metadata accessor for Promptkit_Wireformat_ResponseFormat);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_PromptRequestV1PromptVariant.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ResponseFormatKind.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
      v33 = v48;
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatSchemaDetails and conformance Promptkit_Wireformat_ResponseFormatSchemaDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in Promptkit_Wireformat_ResponseFormatKind.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatGrammarDetails and conformance Promptkit_Wireformat_ResponseFormatGrammarDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Promptkit_Wireformat_ResponseFormatKind.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &v15 - v10, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v12 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in Promptkit_Wireformat_ResponseFormatKind.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in Promptkit_Wireformat_ResponseFormatKind.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for Promptkit_Wireformat_ResponseFormatKind(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ResponseFormatKind.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatSchemaDetails and conformance Promptkit_Wireformat_ResponseFormatSchemaDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  __break(1u);
  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ResponseFormatKind.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatGrammarDetails and conformance Promptkit_Wireformat_ResponseFormatGrammarDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ResponseFormatKind(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatKind and conformance Promptkit_Wireformat_ResponseFormatKind, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ResponseFormatKind(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatKind and conformance Promptkit_Wireformat_ResponseFormatKind, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ResponseFormatKind()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatKind and conformance Promptkit_Wireformat_ResponseFormatKind, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ToolDefinitionFunction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      a4(a1, v7, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_ResponseFormatSchemaDetails.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0) + 24);
  type metadata accessor for Promptkit_Wireformat_Schema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Schema and conformance Promptkit_Wireformat_Schema, type metadata accessor for Promptkit_Wireformat_Schema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_ToolDefinitionFunction.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v11 = result;
  if (v5[1])
  {
    v12 = *v5;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v6)
  {
    if (v5[3])
    {
      v13 = v5[2];
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    a4(v5, v11, a2, a3);
    v14 = v5 + *(a5(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_ResponseFormatSchemaDetails.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_Schema(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 24), v8, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_Schema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Schema and conformance Promptkit_Wireformat_Schema, type metadata accessor for Promptkit_Wireformat_Schema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_Schema);
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ToolDefinitionFunction@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 1) = 0u;
  v5 = *(a1 + 24);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = &a3[*(a1 + 28)];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ResponseFormatSchemaDetails(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatSchemaDetails and conformance Promptkit_Wireformat_ResponseFormatSchemaDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ResponseFormatSchemaDetails(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatSchemaDetails and conformance Promptkit_Wireformat_ResponseFormatSchemaDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ResponseFormatSchemaDetails()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatSchemaDetails and conformance Promptkit_Wireformat_ResponseFormatSchemaDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_Schema.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_Schema(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Schema and conformance Promptkit_Wireformat_Schema, type metadata accessor for Promptkit_Wireformat_Schema);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_Schema(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Schema and conformance Promptkit_Wireformat_Schema, type metadata accessor for Promptkit_Wireformat_Schema);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_Schema()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Schema and conformance Promptkit_Wireformat_Schema, type metadata accessor for Promptkit_Wireformat_Schema);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ResponseFormatGrammarDetails.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_ResponseFormatGrammarDetails.traverse<A>(visitor:)()
{
  if (v0[1])
  {
    v2 = *v0;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v1)
  {
    if (v0[3])
    {
      v4 = v0[2];
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (v0[5])
    {
      v5 = v0[4];
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v6 = v0 + *(type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ResponseFormatGrammarDetails@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_ChatPromptV1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_ChatPromptV1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ResponseFormatGrammarDetails(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatGrammarDetails and conformance Promptkit_Wireformat_ResponseFormatGrammarDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ResponseFormatGrammarDetails(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatGrammarDetails and conformance Promptkit_Wireformat_ResponseFormatGrammarDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ResponseFormatGrammarDetails()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatGrammarDetails and conformance Promptkit_Wireformat_ResponseFormatGrammarDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_Modality(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Modality and conformance Promptkit_Wireformat_Modality, type metadata accessor for Promptkit_Wireformat_Modality);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_Modality(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Modality and conformance Promptkit_Wireformat_Modality, type metadata accessor for Promptkit_Wireformat_Modality);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_Modality()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Modality and conformance Promptkit_Wireformat_Modality, type metadata accessor for Promptkit_Wireformat_Modality);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_Voice(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Voice and conformance Promptkit_Wireformat_Voice, type metadata accessor for Promptkit_Wireformat_Voice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_Voice(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Voice and conformance Promptkit_Wireformat_Voice, type metadata accessor for Promptkit_Wireformat_Voice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_Voice()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Voice and conformance Promptkit_Wireformat_Voice, type metadata accessor for Promptkit_Wireformat_Voice);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        closure #1 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        closure #2 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          closure #3 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 4:
          closure #4 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 5:
          closure #5 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v33 = v48;
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
      v35 = v43;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v43, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptSystem and conformance Promptkit_Wireformat_ChatMessageRolePromptSystem, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v44, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptUser and conformance Promptkit_Wireformat_ChatMessageRolePromptUser, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptAssistant and conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #4 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptTool and conformance Promptkit_Wireformat_ChatMessageRolePromptTool, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #5 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v14, v22, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v22, v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
      v35 = v44;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v20, v44, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v35, v28, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptCustom and conformance Promptkit_Wireformat_ChatMessageRolePromptCustom, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v36, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v43, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
    v40 = v42;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v39, v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &v16 - v10, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v12 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      closure #2 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #1 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    closure #3 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    closure #4 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #5 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  if (!v4)
  {
LABEL_12:
    v15 = v3 + *(type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptSystem and conformance Promptkit_Wireformat_ChatMessageRolePromptSystem, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  __break(1u);
  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptUser and conformance Promptkit_Wireformat_ChatMessageRolePromptUser, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  __break(1u);
  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptAssistant and conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  __break(1u);
  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptTool and conformance Promptkit_Wireformat_ChatMessageRolePromptTool, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  __break(1u);
  return result;
}

uint64_t closure #5 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v13 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptCustom and conformance Promptkit_Wireformat_ChatMessageRolePromptCustom, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePrompt(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePrompt and conformance Promptkit_Wireformat_ChatMessageRolePrompt, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePrompt(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePrompt and conformance Promptkit_Wireformat_ChatMessageRolePrompt, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePrompt()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePrompt and conformance Promptkit_Wireformat_ChatMessageRolePrompt, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ChatMessageRolePromptSystem.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          closure #3 in Promptkit_Wireformat_ChatMessageRolePromptSystem.decodeMessage<A>(decoder:)();
        }

        else if (result == 4)
        {
          v4 = *(type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0) + 28);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          type metadata accessor for Promptkit_Wireformat_ToolDefinition(0);
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinition and conformance Promptkit_Wireformat_ToolDefinition, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for Promptkit_Wireformat_Modality(0);
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Modality and conformance Promptkit_Wireformat_Modality, type metadata accessor for Promptkit_Wireformat_Modality);
        }

        v0 = v3;
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_ChatMessageRolePromptSystem.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0) + 24);
  type metadata accessor for Promptkit_Wireformat_Voice(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Voice and conformance Promptkit_Wireformat_Voice, type metadata accessor for Promptkit_Wireformat_Voice);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_ChatMessageRolePromptSystem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Promptkit_Wireformat_ToolDefinition(0), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinition and conformance Promptkit_Wireformat_ToolDefinition, type metadata accessor for Promptkit_Wireformat_ToolDefinition), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for Promptkit_Wireformat_Modality(0), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Modality and conformance Promptkit_Wireformat_Modality, type metadata accessor for Promptkit_Wireformat_Modality), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      result = closure #1 in Promptkit_Wireformat_ChatMessageRolePromptSystem.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        closure #4 in Promptkit_Wireformat_GenerationSchemaField.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
        v9 = v3 + *(type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0) + 32);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ChatMessageRolePromptSystem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_Voice(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v14 + 24), v8, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_Voice);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Voice and conformance Promptkit_Wireformat_Voice, type metadata accessor for Promptkit_Wireformat_Voice);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_Voice);
}

uint64_t closure #4 in Promptkit_Wireformat_GenerationSchemaField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ChatMessageRolePromptSystem@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for Promptkit_Wireformat_Voice(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  a2[a1[7]] = 2;
  result = UnknownStorage.init()();
  v8 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v8;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_ImageEmbeddingData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_ImageEmbeddingData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePromptSystem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptSystem and conformance Promptkit_Wireformat_ChatMessageRolePromptSystem, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePromptSystem(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptSystem and conformance Promptkit_Wireformat_ChatMessageRolePromptSystem, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePromptSystem()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptSystem and conformance Promptkit_Wireformat_ChatMessageRolePromptSystem, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_ChatMessageRolePromptUser.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Promptkit_Wireformat_ResponseFormat(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v8, v13, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormat and conformance Promptkit_Wireformat_ResponseFormat, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v13, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_VersionedPromptRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePromptUser(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptUser and conformance Promptkit_Wireformat_ChatMessageRolePromptUser, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePromptUser(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptUser and conformance Promptkit_Wireformat_ChatMessageRolePromptUser, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePromptUser()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptUser and conformance Promptkit_Wireformat_ChatMessageRolePromptUser, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptAssistant and conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptAssistant and conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptAssistant and conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_FileGenerationParameters()
{
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_FileGenerationParameters@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_FileGenerationParameters(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePromptTool(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptTool and conformance Promptkit_Wireformat_ChatMessageRolePromptTool, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePromptTool(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptTool and conformance Promptkit_Wireformat_ChatMessageRolePromptTool, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePromptTool()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptTool and conformance Promptkit_Wireformat_ChatMessageRolePromptTool, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePromptCustom(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptCustom and conformance Promptkit_Wireformat_ChatMessageRolePromptCustom, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePromptCustom(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptCustom and conformance Promptkit_Wireformat_ChatMessageRolePromptCustom, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePromptCustom()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptCustom and conformance Promptkit_Wireformat_ChatMessageRolePromptCustom, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1ABA1D930;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v16 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Promptkit_Wireformat_BindableVariable.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_BindableVariable.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (v4[1])
  {
    v7 = *v4;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v5)
  {
    v9 = v4 + *(a4(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_VersionedPromptRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_VersionedPromptRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_SelfAttention(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention, type metadata accessor for Promptkit_Wireformat_SelfAttention);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Promptkit_Wireformat_PromptComponentPrivacy@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_SelfAttention(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention, type metadata accessor for Promptkit_Wireformat_SelfAttention);

  return MEMORY[0x1EEE15928](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Promptkit_Wireformat_VersionedPromptRequest()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_SelfAttention()
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention, type metadata accessor for Promptkit_Wireformat_SelfAttention);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Promptkit_Wireformat_VersionedPromptRequest()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double default argument 1 of TokenGenerator.complete<A>(prompt:parameters:generating:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = MEMORY[0x1E69E7CD0];
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 131) = 514;
  result = 0.0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 200) = 768;
  *(a1 + 208) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 129) = 514;
  return result;
}

double default argument 1 of TokenGenerator.complete(prompt:parameters:schema:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = MEMORY[0x1E69E7CD0];
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 131) = 514;
  result = 0.0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 200) = 768;
  *(a1 + 208) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 129) = 514;
  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t specialized static Promptkit_Wireformat_ResponseFormatGrammarDetails.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8)
  {
    if (!v9 || (a1[2] != a2[2] || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[5];
  v11 = a2[5];
  if (v10)
  {
    if (v11 && (a1[4] == a2[4] && v10 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_22;
    }
  }

  else if (!v11)
  {
LABEL_22:
    v12 = *(type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails(0) + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_VersionedChatMessagePrompt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMR);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v29 - v5;
  v7 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v29 - v18, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  v32 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v19[v20], &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
LABEL_9:
      v27 = *(type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, v14, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v29, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  v25 = *(v30 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, v6, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v24, &v6[v25], type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  v26 = specialized static Promptkit_Wireformat_ChatMessagePromptV1.== infix(_:_:)(v6, &v6[v25]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v24, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(&v6[v25], type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessageRolePromptUser.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ResponseFormat(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSg_ADtMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v16, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSg_ADtMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
  v21 = specialized static Promptkit_Wireformat_ResponseFormat.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_RecursiveSchemaKindObject.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  v7 = a1[2];
  v8 = a2[2];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v7 != v8)
    {
      v10 = a3;
      v11 = a2[1];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (a3(*a1, *a2))
  {
    v13 = *(a4(0) + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessageRolePromptCustom.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = a1[1];
  v6 = a2[1];
  if (v5)
  {
    if (v6)
    {
      v7 = *a1;
      if (*a1 == *a2 && v5 == v6)
      {
        goto LABEL_8;
      }

      v9 = a3;
      v10 = *a2;
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v9;
      if (v11)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v6)
  {
LABEL_8:
    v12 = *(a3(0) + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_RecursiveSchemaField.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = a1[1];
  v19 = *(a2 + 8);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_26;
    }

    if (*a1 != *a2 || v18 != v19)
    {
      v20 = v15;
      v21 = *a1;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v15 = v20;
      if ((v22 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_26;
  }

  v23 = a1[3];
  v24 = *(a2 + 24);
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_26;
    }

    if (a1[2] != *(a2 + 16) || v23 != v24)
    {
      v25 = v15;
      v26 = a1[2];
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v15 = v25;
      if ((v27 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v24)
  {
    goto LABEL_26;
  }

  v28 = *(a1 + 32);
  v29 = *(a2 + 32);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      goto LABEL_26;
    }
  }

  else if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
    goto LABEL_26;
  }

  v30 = v15;
  v39 = type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0);
  v31 = *(v39 + 28);
  v32 = *(v30 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v31, v17, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v40 = v32;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v31, &v17[v32], &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v33 = *(v5 + 48);
  if (v33(v17, 1, v4) == 1)
  {
    if (v33(&v17[v40], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
LABEL_29:
      v38 = *(v39 + 32);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v35 & 1;
    }

    goto LABEL_25;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v34 = v40;
  if (v33(&v17[v40], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
LABEL_25:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMR);
    goto LABEL_26;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v34], v8, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  v37 = specialized static Promptkit_Wireformat_RecursiveSchema.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  if (v37)
  {
    goto LABEL_29;
  }

LABEL_26:
  v35 = 0;
  return v35 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaDictionary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v35 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = a1[2];
  v18 = a2[2];
  if (v17)
  {
    if (!v18 || (a1[1] != a2[1] || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v18)
  {
    goto LABEL_25;
  }

  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_25;
  }

  v35 = v8;
  v36 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
  v19 = *(v36 + 24);
  v20 = *(v13 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v19, v16, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v19, &v16[v20], &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v12, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v21(&v16[v20], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      goto LABEL_15;
    }

    v26 = &v16[v20];
    v27 = v35;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v26, v35, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v28 = *v12;
    v29 = *v27;
    v30 = *v27 & 0xF000000000000007;
    if ((~*v12 & 0xF000000000000007) != 0)
    {
      if (v30 == 0xF000000000000007)
      {
        goto LABEL_23;
      }

      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v27);
      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v28);
      v31 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v28, v29);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v29);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v28);
      if ((v31 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v30 != 0xF000000000000007)
    {
LABEL_23:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v27, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v24 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd;
      v25 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR;
      goto LABEL_24;
    }

    v32 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v27, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v33)
    {
      goto LABEL_12;
    }

LABEL_25:
    v23 = 0;
    return v23 & 1;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
LABEL_15:
    v24 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd;
    v25 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR;
LABEL_24:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v24, v25);
    goto LABEL_25;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
LABEL_12:
  v22 = *(v36 + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static Promptkit_Wireformat_VersionedChatPrompt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumO_ACtMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumO_ACtMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = (&v32 - v6);
  v7 = type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSg_ADtMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSg_ADtMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v32 - v18;
  v20 = *(v17 + 56);
  v34 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v32 - v18, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
  v35 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v19[v20], &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, v14, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
    if (v21(&v19[v20], 1, v7) != 1)
    {
      v26 = v32;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v19[v20], v32, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
      v27 = v33;
      v28 = (v33 + *(v4 + 48));
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, v33, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v26, v28, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration47Promptkit_Wireformat_VersionedChatMessagePromptV_Tt1g5(*v27, *v28) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt1g5(v27[1], v28[1]) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(v27[2], v28[2]))
      {
        v29 = *(type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0) + 28);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v26, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v28, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v27, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
        if (v30)
        {
          goto LABEL_4;
        }

LABEL_15:
        v23 = 0;
        return v23 & 1;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v26, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v28, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v27, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
      v24 = &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd;
      v25 = &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR;
LABEL_14:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, v24, v25);
      goto LABEL_15;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
LABEL_7:
    v24 = &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSg_ADtMd;
    v25 = &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSg_ADtMR;
    goto LABEL_14;
  }

  if (v21(&v19[v20], 1, v7) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
LABEL_4:
  v22 = *(type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaProperty.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v43 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v18)
  {
    goto LABEL_38;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v20)
  {
    goto LABEL_38;
  }

  v43 = v8;
  v44 = type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0);
  v21 = v44[6];
  v22 = *(v13 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v21, v16, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v21, &v16[v22], &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v12, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v23(&v16[v22], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      goto LABEL_23;
    }

    v29 = &v16[v22];
    v30 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v29, v43, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v31 = *v12;
    v32 = *v30;
    v33 = *v30 & 0xF000000000000007;
    if ((~*v12 & 0xF000000000000007) != 0)
    {
      if (v33 == 0xF000000000000007)
      {
        goto LABEL_36;
      }

      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v30);
      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v31);
      v37 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v31, v32);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v32);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v31);
      if ((v37 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (v33 != 0xF000000000000007)
    {
LABEL_36:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v30, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v27 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd;
      v28 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR;
      goto LABEL_37;
    }

    v38 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v30, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if ((v39 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_18;
  }

  if (v23(&v16[v22], 1, v4) != 1)
  {
LABEL_23:
    v27 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd;
    v28 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR;
LABEL_37:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v27, v28);
    goto LABEL_38;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
LABEL_18:
  v24 = v44[7];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_38;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    goto LABEL_38;
  }

  v34 = v44[8];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 != 2)
  {
    if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    v42 = v44[9];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v40 & 1;
  }

  if (v36 == 2)
  {
    goto LABEL_42;
  }

LABEL_38:
  v40 = 0;
  return v40 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaReference.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = a1[1];
  v6 = a2[1];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *a1;
    if (*a1 != *a2 || v5 != v6)
    {
      v9 = a3;
      v10 = *a2;
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v9;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v6)
  {
    return 0;
  }

  v12 = a1[3];
  v13 = a2[3];
  if (v12)
  {
    if (v13)
    {
      if (a1[2] == a2[2] && v12 == v13)
      {
        goto LABEL_15;
      }

      v14 = a3;
      v15 = a2[2];
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v14;
      if (v16)
      {
        goto LABEL_15;
      }
    }
  }

  else if (!v13)
  {
LABEL_15:
    v17 = *(a3(0) + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_ImageEmbeddingData.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = (v3 ^ v2) & 1;
    if (v3 == 2 || v4 != 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  if (v6 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      outlined copy of Data?(*(a1 + 1), v6);
      outlined copy of Data?(v9, v8);
      outlined consume of Data?(v7, v6);
      v12 = a1;
      v13 = a2;
      goto LABEL_16;
    }

LABEL_13:
    outlined copy of Data?(*(a1 + 1), v6);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v9, v8);
    return 0;
  }

  if (v8 >> 60 == 15)
  {
    goto LABEL_13;
  }

  outlined copy of Data?(*(a1 + 1), v6);
  outlined copy of Data?(v9, v8);
  v17 = specialized static Data.== infix(_:_:)(v7, v6, v9, v8);
  outlined consume of Data?(v9, v8);
  outlined consume of Data?(v7, v6);
  v12 = a1;
  v13 = a2;
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v18 = v13[28];
  if (v12[28])
  {
    if (!v13[28])
    {
      return 0;
    }
  }

  else
  {
    if (*(v12 + 6) != *(v13 + 6))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = *(v12 + 5);
  v20 = *(v13 + 5);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (!v20 || (*(v12 + 4) != *(v13 + 4) || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v21 = *(type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData(0) + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaInteger.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 16))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 6) != *(a2 + 24))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v13 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaObject.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchemaType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSg_ADtMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  v47 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  v48 = a1;
  v17 = *(v47 + 32);
  v18 = *(v13 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v17, v16, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v17, &v16[v18], &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v11, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
      goto LABEL_12;
    }

    v31 = v46;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v16[v18], v46, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
    v32 = *v11;
    v33 = *v31;
    if (v32 == 7)
    {
      if (v33 != 7)
      {
LABEL_18:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
        v27 = &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd;
        v28 = &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR;
        goto LABEL_13;
      }
    }

    else if (v32 != v33)
    {
      goto LABEL_18;
    }

    v34 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
    if ((v35 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_12:
    v27 = &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSg_ADtMd;
    v28 = &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSg_ADtMR;
LABEL_13:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v27, v28);
    goto LABEL_14;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
LABEL_4:
  v20 = v47;
  v21 = v48;
  v22 = *(v47 + 36);
  v23 = (v48 + v22);
  v24 = *(v48 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v26)
  {
    goto LABEL_14;
  }

  v36 = v20[10];
  v37 = (v21 + v36);
  v38 = *(v21 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v40)
  {
    goto LABEL_14;
  }

  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(*v21, *a2) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(v21[1], a2[1]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v21[2], a2[2]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v21[3], a2[3]))
  {
    v41 = v20[11];
    v42 = *(v21 + v41);
    v43 = *(a2 + v41);
    if (v42 == 2)
    {
      if (v43 == 2)
      {
LABEL_39:
        v44 = v20[12];
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v29 & 1;
      }
    }

    else if (v43 != 2 && ((v42 ^ v43) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_14:
  v29 = 0;
  return v29 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaNumber.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (a1[2] != *(a2 + 16))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 40);
  if (a1[5])
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (a1[4] != *(a2 + 32))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v13 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_RecursiveSchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v31 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v31 - v16, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      goto LABEL_7;
    }

    outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v24 = *v12;
    v25 = *v8;
    v26 = *v8 & 0xF000000000000007;
    if ((~*v12 & 0xF000000000000007) != 0)
    {
      if (v26 == 0xF000000000000007)
      {
        goto LABEL_15;
      }

      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v8);
      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v24);
      v27 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v24, v25);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v25);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v24);
      if ((v27 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v26 != 0xF000000000000007)
    {
LABEL_15:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v22 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd;
      v23 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR;
      goto LABEL_16;
    }

    v28 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v29)
    {
      goto LABEL_4;
    }

LABEL_17:
    v21 = 0;
    return v21 & 1;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_7:
    v22 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd;
    v23 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR;
LABEL_16:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v22, v23);
    goto LABEL_17;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
LABEL_4:
  v20 = *(type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static Promptkit_Wireformat_PromptComponentValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v16, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ValueEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  v21 = static Promptkit_Wireformat_ValueEnum.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_PromptComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v33 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v33 - v16, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      v22 = specialized static Promptkit_Wireformat_PromptComponentValue.== infix(_:_:)(v12, v8);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR);
    goto LABEL_7;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
LABEL_10:
  v23 = type metadata accessor for Promptkit_Wireformat_PromptComponent(0);
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      goto LABEL_7;
    }
  }

  v29 = v23[6];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 3)
  {
    if (v31 == 3)
    {
      goto LABEL_20;
    }
  }

  else if (v30 == v31)
  {
LABEL_20:
    v32 = v23[7];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaArray.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v45 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v17 = a1[2];
  v18 = a2[2];
  if (v17)
  {
    if (!v18 || (a1[1] != a2[1] || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v18)
  {
    goto LABEL_33;
  }

  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_33;
  }

  v45 = v8;
  v46 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  v19 = v46[6];
  v20 = *(v13 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v19, v16, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v19, &v16[v20], &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v12, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v21(&v16[v20], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      goto LABEL_17;
    }

    v29 = &v16[v20];
    v30 = v45;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v29, v45, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v31 = *v12;
    v32 = *v30;
    v33 = *v30 & 0xF000000000000007;
    if ((~*v12 & 0xF000000000000007) != 0)
    {
      if (v33 == 0xF000000000000007)
      {
        goto LABEL_31;
      }

      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v30);
      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v31);
      v39 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v31, v32);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v32);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v31);
      if ((v39 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (v33 != 0xF000000000000007)
    {
LABEL_31:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v30, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v27 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd;
      v28 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR;
      goto LABEL_32;
    }

    v40 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v30, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if ((v41 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
LABEL_17:
    v27 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd;
    v28 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR;
LABEL_32:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v27, v28);
    goto LABEL_33;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
LABEL_12:
  v22 = v46[7];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 4);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 4);
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      goto LABEL_33;
    }
  }

  v34 = v46[8];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 4);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 4);
  if ((v36 & 1) == 0)
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      goto LABEL_33;
    }

LABEL_38:
    v44 = v46[9];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v42 & 1;
  }

  if (v38)
  {
    goto LABEL_38;
  }

LABEL_33:
  v42 = 0;
  return v42 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaAnyOf.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a1[2] == a2[2] && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[5];
  v8 = a2[5];
  if (v7)
  {
    if (!v8 || (a1[4] != a2[4] || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(*a1, *a2) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration31Promptkit_Wireformat_JSONSchemaV_Tt1g5(a1[1], a2[1]))
  {
    v9 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf(0) + 32);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_ToolDefinitionType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v16, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Promptkit_Wireformat_ToolDefinitionType(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  v21 = static Promptkit_Wireformat_ToolDefinitionTypeEnum.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v16, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Promptkit_Wireformat_ToolDefinition(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
  v21 = specialized static Promptkit_Wireformat_ToolDefinitionType.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ResponseFormatSchemaDetails.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Schema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_SchemaVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v18)
  {
    goto LABEL_21;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v20)
  {
    goto LABEL_21;
  }

  v31 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0);
  v21 = *(v31 + 24);
  v22 = *(v13 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v21, v16, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  v23 = a2 + v21;
  v24 = v22;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, &v16[v22], &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
LABEL_24:
      v29 = *(v31 + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v26 & 1;
    }

    goto LABEL_20;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v12, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_Schema);
LABEL_20:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSg_ADtMR);
    goto LABEL_21;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v16[v24], v8, type metadata accessor for Promptkit_Wireformat_Schema);
  v28 = specialized static Promptkit_Wireformat_Schema.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_Schema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_Schema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  if (v28)
  {
    goto LABEL_24;
  }

LABEL_21:
  v26 = 0;
  return v26 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ResponseFormatKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v16, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Promptkit_Wireformat_ResponseFormatKind(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  v21 = specialized static Promptkit_Wireformat_ResponseFormatKindEnum.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ResponseFormat.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v16, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Promptkit_Wireformat_ResponseFormat(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
  v21 = specialized static Promptkit_Wireformat_ResponseFormatKind.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ImageSurface.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v4 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      outlined copy of Data?(*a1, v4);
      outlined copy of Data?(v7, v6);
      outlined consume of Data?(v5, v4);
      goto LABEL_8;
    }

LABEL_5:
    outlined copy of Data?(*a1, v4);
    outlined copy of Data?(v7, v6);
    outlined consume of Data?(v5, v4);
    outlined consume of Data?(v7, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(*a1, v4);
  outlined copy of Data?(v7, v6);
  v9 = specialized static Data.== infix(_:_:)(v5, v4, v7, v6);
  outlined consume of Data?(v7, v6);
  outlined consume of Data?(v5, v4);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v10 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = *(a2 + 44);
  if (*(a1 + 44))
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = *(a1 + 56);
  v15 = *(a2 + 56);
  if (v14)
  {
    if (v15 && (*(a1 + 48) == *(a2 + 48) && v14 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (v15)
  {
    return 0;
  }

LABEL_39:
  v16 = *(type metadata accessor for Promptkit_Wireformat_ImageSurface(0) + 40);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolDefinitionFunction.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v37 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v18)
  {
    goto LABEL_31;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v20)
  {
    goto LABEL_31;
  }

  v37 = v8;
  v38 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction(0);
  v21 = *(v38 + 24);
  v22 = *(v13 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v21, v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v21, &v16[v22], &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v12, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v23(&v16[v22], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      goto LABEL_21;
    }

    v28 = &v16[v22];
    v29 = v37;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v28, v37, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v30 = *v12;
    v31 = *v29;
    v32 = *v29 & 0xF000000000000007;
    if ((~*v12 & 0xF000000000000007) != 0)
    {
      if (v32 == 0xF000000000000007)
      {
        goto LABEL_29;
      }

      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v29);
      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v30);
      v33 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v30, v31);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v31);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v30);
      if ((v33 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (v32 != 0xF000000000000007)
    {
LABEL_29:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v29, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      v26 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd;
      v27 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR;
      goto LABEL_30;
    }

    v34 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v29, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v35)
    {
      goto LABEL_18;
    }

LABEL_31:
    v25 = 0;
    return v25 & 1;
  }

  if (v23(&v16[v22], 1, v4) != 1)
  {
LABEL_21:
    v26 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd;
    v27 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR;
LABEL_30:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v26, v27);
    goto LABEL_31;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
LABEL_18:
  v24 = *(v38 + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v25 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessageRolePromptSystem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Voice(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v35 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26Promptkit_Wireformat_VoiceVSg_ADtMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration35Promptkit_Wireformat_ToolDefinitionV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration29Promptkit_Wireformat_ModalityV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_27;
  }

  v35 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
  v36 = a2;
  v17 = v35[6];
  v18 = *(v13 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v17, v16, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  v19 = v36 + v17;
  v20 = v36;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &v16[v18], &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v12, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  if (v21(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_Voice);
LABEL_11:
    v25 = &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSg_ADtMd;
    v26 = &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSg_ADtMR;
LABEL_26:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v25, v26);
LABEL_27:
    v33 = 0;
    return v33 & 1;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v16[v18], v8, type metadata accessor for Promptkit_Wireformat_Voice);
  v27 = v12[1];
  v28 = v8[1];
  if (!v27)
  {
    if (!v28)
    {
      goto LABEL_19;
    }

LABEL_25:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_Voice);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_Voice);
    v25 = &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd;
    v26 = &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR;
    goto LABEL_26;
  }

  if (!v28)
  {
    goto LABEL_25;
  }

  v29 = *v12 == *v8 && v27 == v28;
  if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  v30 = *(v4 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v20 = v36;
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_Voice);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_Voice);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  if ((v31 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v22 = v35[7];
  v23 = *(a1 + v22);
  v24 = *(v20 + v22);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v24 == 2 || ((v23 ^ v24) & 1) != 0)
  {
    goto LABEL_27;
  }

  v32 = v35[8];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v33 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessageRolePrompt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v16, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  v21 = specialized static Promptkit_Wireformat_ChatMessageRoleEnum.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessagePromptV1.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v51 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = (&v51 - v9);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR);
  v10 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v51 - v11;
  v12 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v51 - v24;
  v26 = *(v23 + 56);
  v57 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v51 - v24, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  v58 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v25[v26], &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) == 1)
  {
    if (v27(&v25[v26], 1, v12) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMd;
    v29 = &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMR;
    v30 = v25;
LABEL_21:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, v28, v29);
    goto LABEL_22;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, v20, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  if (v27(&v25[v26], 1, v12) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
    goto LABEL_6;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v25[v26], v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  v31 = specialized static Promptkit_Wireformat_ChatMessageRolePrompt.== infix(_:_:)(v20, v16);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  if ((v31 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v32 = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);
  v33 = v32[5];
  v34 = *(v53 + 48);
  v36 = v56;
  v35 = v57;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v57 + v33, v56, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v37 = v58;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v58 + v33, v36 + v34, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v38 = v55;
  v39 = *(v54 + 48);
  if (v39(v36, 1, v55) != 1)
  {
    v45 = v52;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, v52, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    if (v39(v36 + v34, 1, v38) != 1)
    {
      v48 = v51;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36 + v34, v51, type metadata accessor for Promptkit_Wireformat_Prompt);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(*v45, *v48))
      {
        v49 = *(v38 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        LOBYTE(v49) = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v48, type metadata accessor for Promptkit_Wireformat_Prompt);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v45, type metadata accessor for Promptkit_Wireformat_Prompt);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
        if ((v49 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v48, type metadata accessor for Promptkit_Wireformat_Prompt);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v45, type metadata accessor for Promptkit_Wireformat_Prompt);
      v28 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd;
      v29 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR;
      goto LABEL_20;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v45, type metadata accessor for Promptkit_Wireformat_Prompt);
LABEL_19:
    v28 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd;
    v29 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR;
LABEL_20:
    v30 = v36;
    goto LABEL_21;
  }

  if (v39(v36 + v34, 1, v38) != 1)
  {
    goto LABEL_19;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
LABEL_11:
  v40 = v32[6];
  v41 = (v35 + v40);
  v42 = *(v35 + v40 + 8);
  v43 = (v37 + v40);
  v44 = v43[1];
  if (v42)
  {
    if (v44 && (*v41 == *v43 && v42 == v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_29;
    }
  }

  else if (!v44)
  {
LABEL_29:
    v50 = v32[7];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v46 & 1;
  }

LABEL_22:
  v46 = 0;
  return v46 & 1;
}