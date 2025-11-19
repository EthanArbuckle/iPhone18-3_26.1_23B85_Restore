BOOL ProtoSiriTaskEngagement.hasNextTaskID.getter(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + *a1;
  swift_beginAccess();
  return *(v2 + 8) != 0;
}

uint64_t ProtoSiriTaskEngagement.clearNextTaskID()(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v7);

    *(v3 + v4) = v11;
    v7 = v11;
  }

  v12 = (v7 + *a1);
  swift_beginAccess();
  v13 = v12[1];
  *v12 = 0;
  v12[1] = 0;
}

uint64_t ProtoSiriTaskEngagement.engagementType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v4 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if (v6 == 14)
  {
    LOBYTE(v6) = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t key path getter for ProtoSiriTaskEngagement.engagementType : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v4 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if (v6 == 14)
  {
    LOBYTE(v6) = 0;
  }

  *a2 = v6;
  return result;
}

void (*ProtoSiriTaskEngagement.engagementType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 14)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return ProtoSiriTaskEngagement.engagementType.modify;
}

BOOL ProtoSiriTaskEngagement.hasEngagementType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v2 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  swift_beginAccess();
  return *(v1 + v2) != 14;
}

uint64_t ProtoSiriTaskEngagement.domainType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v4 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if (v6 == 9)
  {
    LOBYTE(v6) = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t key path getter for ProtoSiriTaskEngagement.domainType : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v4 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if (v6 == 9)
  {
    LOBYTE(v6) = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoSiriTaskEngagement.engagementType : ProtoSiriTaskEngagement(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v11);

    *(a2 + v8) = v15;
    v11 = v15;
  }

  v16 = *a5;
  result = swift_beginAccess();
  *(v11 + v16) = v7;
  return result;
}

uint64_t ProtoSiriTaskEngagement.engagementType.setter(char *a1, uint64_t *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  result = swift_beginAccess();
  *(v9 + v14) = v5;
  return result;
}

void (*ProtoSiriTaskEngagement.domainType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 9)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return ProtoSiriTaskEngagement.domainType.modify;
}

void ProtoSiriTaskEngagement.engagementType.modify(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = *a3;
  swift_beginAccess();
  *(v10 + v17) = v5;

  free(v4);
}

BOOL ProtoSiriTaskEngagement.hasDomainType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v2 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  swift_beginAccess();
  return *(v1 + v2) != 9;
}

uint64_t ProtoSiriTaskEngagement.clearEngagementType()(uint64_t *a1, char a2)
{
  v5 = v2;
  v6 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v9);

    *(v5 + v6) = v13;
    v9 = v13;
  }

  v14 = *a1;
  result = swift_beginAccess();
  *(v9 + v14) = a2;
  return result;
}

uint64_t ProtoSiriTaskEngagement.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static ProtoSiriTaskEngagement._StorageClass.defaultInstance;
}

uint64_t ProtoSiriTaskInteractionType.decodeMessage<A>(decoder:)()
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
          v3 = v0;
          v7 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v3 = v0;
          v5 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 32);
        }
      }

      else if (result == 1)
      {
        v3 = v0;
        v6 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v3 = v0;
        v4 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 24);
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ProtoSiriTaskInteractionType.traverse<A>(visitor:)()
{
  result = closure #1 in ProtoSiriTaskInteractionType.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    closure #2 in ProtoSiriTaskInteractionType.traverse<A>(visitor:)(v0);
    closure #3 in ProtoSiriTaskInteractionType.traverse<A>(visitor:)(v0);
    closure #4 in ProtoSiriTaskInteractionType.traverse<A>(visitor:)(v0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoSiriTaskInteractionType.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ProtoSiriTaskInteractionType.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ProtoSiriTaskInteractionType.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ProtoSiriTaskInteractionType.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoSiriTaskInteractionType@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoSiriTaskInteractionType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType, type metadata accessor for ProtoSiriTaskInteractionType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoSiriTaskInteractionType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType, type metadata accessor for ProtoSiriTaskInteractionType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoSiriTaskInteractionType()
{
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType, type metadata accessor for ProtoSiriTaskInteractionType);

  return Message.hash(into:)();
}

uint64_t ProtoSiriTaskEvaluationSummary.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          closure #4 in ProtoSiriTaskEvaluationSummary.decodeMessage<A>(decoder:)();
          break;
        case 5:
          v4 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 36);
LABEL_17:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
        case 6:
          v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 40);
          goto LABEL_17;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
          break;
        case 2:
          closure #2 in ProtoSiriTaskEvaluationSummary.decodeMessage<A>(decoder:)();
          break;
        case 3:
          closure #3 in ProtoSiriTaskEvaluationSummary.decodeMessage<A>(decoder:)();
          break;
      }
    }
  }
}

uint64_t closure #2 in ProtoSiriTaskEvaluationSummary.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 24);
  lazy protocol witness table accessor for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t closure #3 in ProtoSiriTaskEvaluationSummary.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 28);
  lazy protocol witness table accessor for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t closure #4 in ProtoSiriTaskEvaluationSummary.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 32);
  type metadata accessor for ProtoSiriTaskInteractionType(0);
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType, type metadata accessor for ProtoSiriTaskInteractionType);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ProtoSiriTaskEvaluationSummary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in ProtoSiriTaskEvaluationSummary.traverse<A>(visitor:)(v3);
    if (!v4)
    {
      closure #2 in ProtoSiriTaskEvaluationSummary.traverse<A>(visitor:)(v3);
      closure #3 in ProtoSiriTaskEvaluationSummary.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #4 in ProtoSiriTaskEvaluationSummary.traverse<A>(visitor:)(v3);
      closure #5 in ProtoSiriTaskEvaluationSummary.traverse<A>(visitor:)(v3);
      v9 = v3 + *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in ProtoSiriTaskEvaluationSummary.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  if (*(a1 + *(result + 24)) != 5)
  {
    v3 = *(a1 + *(result + 24));
    lazy protocol witness table accessor for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ProtoSiriTaskEvaluationSummary.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  if (*(a1 + *(result + 28)) != 5)
  {
    v3 = *(a1 + *(result + 28));
    lazy protocol witness table accessor for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ProtoSiriTaskEvaluationSummary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v14 + 32), v8, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  }

  outlined init with take of ProtoSiriTaskInteractionType(v8, v13, type metadata accessor for ProtoSiriTaskInteractionType);
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType, type metadata accessor for ProtoSiriTaskInteractionType);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ProtoSiriTaskInteractionType(v13, type metadata accessor for ProtoSiriTaskInteractionType);
}

uint64_t closure #4 in ProtoSiriTaskEvaluationSummary.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in ProtoSiriTaskEvaluationSummary.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoSiriTaskEvaluationSummary@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  UnknownStorage.init()();
  v5 = a1[7];
  *(a2 + a1[6]) = 5;
  *(a2 + v5) = 5;
  v6 = a1[8];
  v7 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  v10[8] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[8] = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance ProtoSiriTaskEvaluationSummary@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance ProtoSiriTaskEvaluationSummary(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance ProtoSiriTaskEvaluationSummary(uint64_t a1, uint64_t a2))()
{
  result = ProtoContactEntitySignal.unknownFields.modify;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoSiriTaskEvaluationSummary(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskEvaluationSummary and conformance ProtoSiriTaskEvaluationSummary, type metadata accessor for ProtoSiriTaskEvaluationSummary);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoSiriTaskEvaluationSummary(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskEvaluationSummary and conformance ProtoSiriTaskEvaluationSummary, type metadata accessor for ProtoSiriTaskEvaluationSummary);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoSiriTaskEvaluationSummary()
{
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskEvaluationSummary and conformance ProtoSiriTaskEvaluationSummary, type metadata accessor for ProtoSiriTaskEvaluationSummary);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance()
{
  v0 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = ProtoSiriTaskEngagement._StorageClass.init()();
  static ProtoSiriTaskEngagement._StorageClass.defaultInstance = result;
  return result;
}

uint64_t ProtoSiriTaskEngagement._StorageClass.init()()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  v2 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  v4 = type metadata accessor for ProtoTaskFeatureSet(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements) = MEMORY[0x277D84F90];
  v6 = (v0 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__nextTaskID);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__previousTaskID);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType) = 14;
  *(v0 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType) = 9;
  return v0;
}

uint64_t ProtoSiriTaskEngagement._StorageClass.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  outlined destroy of DateInterval?(v0 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  outlined destroy of DateInterval?(v0 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements);

  v4 = *(v0 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__nextTaskID + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__previousTaskID + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)(v11, a1, a2, a3);
}

uint64_t closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            closure #6 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)();
            goto LABEL_5;
          }

          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__nextTaskID;
          goto LABEL_25;
        }

        switch(result)
        {
          case 8:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__previousTaskID;
LABEL_25:
            closure #7 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
            break;
          case 9:
            closure #9 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType, lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType);
            break;
          case 10:
            closure #9 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType, lazy protocol witness table accessor for type ProtoDomainType and conformance ProtoDomainType);
            break;
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          closure #1 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)();
        }

        else if (result == 2)
        {
          closure #2 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)();
        }
      }

      else if (result == 3)
      {
        closure #3 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)();
      }

      else if (result == 4)
      {
        closure #4 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)();
      }

      else
      {
        closure #5 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskEvaluationSummary and conformance ProtoSiriTaskEvaluationSummary, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for ProtoTaskFeatureSet(0);
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoTaskFeatureSet and conformance ProtoTaskFeatureSet, type metadata accessor for ProtoTaskFeatureSet);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoTaskEngagementFeatureSet and conformance ProtoTaskEngagementFeatureSet, type metadata accessor for ProtoTaskEngagementFeatureSet);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #9 in closure #1 in ProtoSiriTaskEngagement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  v8 = swift_beginAccess();
  a6(v8);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t ProtoSiriTaskEngagement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ProtoSiriTaskEngagement(0);
  result = closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(a1);
  if (!v4)
  {
    closure #2 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(a1);
    closure #3 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #4 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #5 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(a1);
    v10 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for ProtoTaskEngagementFeatureSet(0);
      lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoTaskEngagementFeatureSet and conformance ProtoTaskEngagementFeatureSet, type metadata accessor for ProtoTaskEngagementFeatureSet);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #6 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__nextTaskID);
    closure #6 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__previousTaskID);
    closure #8 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(a1);
    return closure #9 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(a1);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + v14, v8, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  }

  outlined init with take of ProtoSiriTaskInteractionType(v8, v13, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskEvaluationSummary and conformance ProtoSiriTaskEvaluationSummary, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ProtoSiriTaskInteractionType(v13, type metadata accessor for ProtoSiriTaskEvaluationSummary);
}

uint64_t closure #4 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoTaskFeatureSet(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + v14, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  }

  outlined init with take of ProtoSiriTaskInteractionType(v8, v13, type metadata accessor for ProtoTaskFeatureSet);
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoTaskFeatureSet and conformance ProtoTaskFeatureSet, type metadata accessor for ProtoTaskFeatureSet);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ProtoSiriTaskInteractionType(v13, type metadata accessor for ProtoTaskFeatureSet);
}

uint64_t closure #5 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if (v5[1])
  {
    v7 = *v5;
    v8 = v5[1];

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  result = swift_beginAccess();
  if (*(a1 + v2) != 14)
  {
    v4 = *(a1 + v2);
    lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in ProtoSiriTaskEngagement.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  result = swift_beginAccess();
  if (*(a1 + v2) != 9)
  {
    v4 = *(a1 + v2);
    lazy protocol witness table accessor for type ProtoDomainType and conformance ProtoDomainType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static ProtoSiriTaskEngagement.== infix(_:_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ProtoTaskFeatureSet(0);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4);
  v89 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMR);
  v7 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v97 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v91 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v86 - v13;
  v14 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v98 = *(v14 - 8);
  v15 = *(v98 + 64);
  MEMORY[0x28223BE20](v14);
  v92 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSg_ADtMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSg_ADtMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v86 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = (&v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v27 = &v86 - v26;
  swift_beginAccess();
  v28 = a1;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  swift_beginAccess();
  v31 = a2[3];
  if (v29)
  {
    if (!v31 || (v30 != a2[2] || v29 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(v28 + 32);
  v33 = *(v28 + 40);
  swift_beginAccess();
  v34 = a2[5];
  if (!v33)
  {
    if (!v34)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v34 || (v32 != a2[4] || v33 != v34) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v90 = a2;
  v35 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  v87 = v28;
  outlined init with copy of ProtoSiriTaskInteractionType?(v28 + v35, v27, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v36 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  v37 = *(v17 + 48);
  outlined init with copy of ProtoSiriTaskInteractionType?(v27, v20, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v88 = v37;
  outlined init with copy of ProtoSiriTaskInteractionType?(v90 + v36, &v20[v37], &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v38 = *(v98 + 48);
  if (v38(v20, 1, v14) == 1)
  {
    v39 = v87;

    outlined destroy of DateInterval?(v27, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
    if (v38(&v20[v88], 1, v14) == 1)
    {
      outlined destroy of DateInterval?(v20, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
      goto LABEL_22;
    }

LABEL_20:
    outlined destroy of DateInterval?(v20, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSg_ADtMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSg_ADtMR);

LABEL_29:

    return 0;
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v20, v25, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v40 = v88;
  if (v38(&v20[v88], 1, v14) == 1)
  {

    outlined destroy of DateInterval?(v27, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
    outlined destroy of ProtoSiriTaskInteractionType(v25, type metadata accessor for ProtoSiriTaskEvaluationSummary);
    goto LABEL_20;
  }

  v41 = &v20[v40];
  v42 = v92;
  outlined init with take of ProtoSiriTaskInteractionType(v41, v92, type metadata accessor for ProtoSiriTaskEvaluationSummary);

  v43 = specialized static ProtoSiriTaskEvaluationSummary.== infix(_:_:)(v25, v42);
  outlined destroy of ProtoSiriTaskInteractionType(v42, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  outlined destroy of DateInterval?(v27, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v44 = v25;
  v39 = v28;
  outlined destroy of ProtoSiriTaskInteractionType(v44, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  outlined destroy of DateInterval?(v20, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  if ((v43 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  v45 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  v46 = v94;
  outlined init with copy of ProtoSiriTaskInteractionType?(v39 + v45, v94, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v47 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  v48 = *(v93 + 48);
  v49 = v97;
  outlined init with copy of ProtoSiriTaskInteractionType?(v46, v97, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  outlined init with copy of ProtoSiriTaskInteractionType?(v90 + v47, v49 + v48, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v50 = v96;
  v51 = *(v95 + 48);
  if (v51(v49, 1, v96) == 1)
  {
    outlined destroy of DateInterval?(v46, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    if (v51(v49 + v48, 1, v50) == 1)
    {
      outlined destroy of DateInterval?(v49, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
      goto LABEL_33;
    }

LABEL_27:
    outlined destroy of DateInterval?(v49, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMR);
    goto LABEL_28;
  }

  v52 = v91;
  outlined init with copy of ProtoSiriTaskInteractionType?(v49, v91, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  if (v51(v49 + v48, 1, v50) == 1)
  {
    outlined destroy of DateInterval?(v46, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    outlined destroy of ProtoSiriTaskInteractionType(v52, type metadata accessor for ProtoTaskFeatureSet);
    goto LABEL_27;
  }

  v54 = v49 + v48;
  v55 = v89;
  outlined init with take of ProtoSiriTaskInteractionType(v54, v89, type metadata accessor for ProtoTaskFeatureSet);
  v56 = static ProtoTaskFeatureSet.== infix(_:_:)(v52, v55);
  outlined destroy of ProtoSiriTaskInteractionType(v55, type metadata accessor for ProtoTaskFeatureSet);
  outlined destroy of DateInterval?(v46, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  outlined destroy of ProtoSiriTaskInteractionType(v52, type metadata accessor for ProtoTaskFeatureSet);
  outlined destroy of DateInterval?(v49, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  if ((v56 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_33:
  v57 = (v39 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs);
  swift_beginAccess();
  v58 = *v57;
  v59 = *(v57 + 8);
  v60 = v90 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  swift_beginAccess();
  v61 = v60[8];
  if (v59)
  {
    if ((v60[8] & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v60[8] & 1) != 0 || v58 != *v60)
  {
    goto LABEL_28;
  }

  v62 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  v63 = *(v39 + v62);
  v64 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  v65 = *(v90 + v64);

  v66 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ18SiriTaskEngagement05ProtocD10FeatureSetV_Tt1g5(v63, v65);

  if ((v66 & 1) == 0)
  {
    goto LABEL_28;
  }

  v67 = (v39 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__nextTaskID);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = (v90 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__nextTaskID);
  swift_beginAccess();
  v71 = v70[1];
  if (v69)
  {
    if (!v71 || (v68 != *v70 || v69 != v71) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v71)
  {
    goto LABEL_28;
  }

  v72 = (v39 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__previousTaskID);
  swift_beginAccess();
  v73 = *v72;
  v74 = v72[1];
  v75 = (v90 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__previousTaskID);
  swift_beginAccess();
  v76 = v75[1];
  if (!v74)
  {
    if (!v76)
    {
      goto LABEL_53;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (!v76 || (v73 != *v75 || v74 != v76) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_53:
  v77 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  swift_beginAccess();
  v78 = *(v39 + v77);
  v79 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  swift_beginAccess();
  v80 = *(v90 + v79);
  v81 = v90;
  if (v78 == 14)
  {
    if (v80 != 14)
    {
      goto LABEL_28;
    }
  }

  else if (v80 == 14 || v78 != v80)
  {
    goto LABEL_28;
  }

  v82 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  swift_beginAccess();
  v83 = *(v39 + v82);

  v84 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  swift_beginAccess();
  v85 = *(v81 + v84);

  if (v83 == 9)
  {
    return v85 == 9;
  }

  result = 0;
  if (v85 != 9 && v83 == v85)
  {
    return 1;
  }

  return result;
}

Swift::Int ProtoSiriTaskInteractionType.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static ProtoSiriTaskEngagement._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoSiriTaskEngagement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement, type metadata accessor for ProtoSiriTaskEngagement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoSiriTaskEngagement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement, type metadata accessor for ProtoSiriTaskEngagement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoSiriTaskEngagement()
{
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement, type metadata accessor for ProtoSiriTaskEngagement);

  return Message.hash(into:)();
}

uint64_t specialized static ProtoSiriTaskEngagement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static ProtoSiriTaskEngagement.== infix(_:_:)(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static ProtoSiriTaskEvaluationSummary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSg_ADtMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v18 = v17[6];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 5)
  {
    if (v20 != 5)
    {
      goto LABEL_16;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_16;
  }

  v21 = v17[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 5)
  {
    if (v23 != 5)
    {
      goto LABEL_16;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_16;
  }

  v44 = v17;
  v24 = v17[8];
  v25 = *(v13 + 48);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + v24, v16, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v26 = a2 + v24;
  v27 = v25;
  outlined init with copy of ProtoSiriTaskInteractionType?(v26, &v16[v25], &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v16, 1, v4) != 1)
  {
    outlined init with copy of ProtoSiriTaskInteractionType?(v16, v12, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
    if (v28(&v16[v27], 1, v4) != 1)
    {
      outlined init with take of ProtoSiriTaskInteractionType(&v16[v27], v8, type metadata accessor for ProtoSiriTaskInteractionType);
      v31 = specialized static ProtoSiriTaskInteractionType.== infix(_:_:)(v12, v8);
      outlined destroy of ProtoSiriTaskInteractionType(v8, type metadata accessor for ProtoSiriTaskInteractionType);
      outlined destroy of ProtoSiriTaskInteractionType(v12, type metadata accessor for ProtoSiriTaskInteractionType);
      outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
      if ((v31 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    outlined destroy of ProtoSiriTaskInteractionType(v12, type metadata accessor for ProtoSiriTaskInteractionType);
LABEL_15:
    outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSg_ADtMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSg_ADtMR);
    goto LABEL_16;
  }

  if (v28(&v16[v27], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
LABEL_19:
  v32 = v44[9];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 8);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      goto LABEL_16;
    }
  }

  v37 = v44[10];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 8);
  if ((v39 & 1) == 0)
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      goto LABEL_16;
    }

LABEL_31:
    v42 = v44[5];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v29 & 1;
  }

  if (v41)
  {
    goto LABEL_31;
  }

LABEL_16:
  v29 = 0;
  return v29 & 1;
}

uint64_t specialized static ProtoSiriTaskInteractionType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(void *a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v53 = &v47 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v47 - v6;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v8 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  v48 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  v9 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  v50 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  v11 = type metadata accessor for ProtoTaskFeatureSet(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = v1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  *(v1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements) = MEMORY[0x277D84F90];
  v14 = (v1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__nextTaskID);
  v49 = (v1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__nextTaskID);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__previousTaskID);
  v51 = (v1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__previousTaskID);
  v52 = v13;
  *v15 = 0;
  v15[1] = 0;
  v54 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  *(v1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType) = 14;
  v55 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  *(v1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType) = 9;
  swift_beginAccess();
  v16 = a1[2];
  v17 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v16;
  *(v1 + 24) = v17;
  swift_beginAccess();
  v18 = a1[4];
  v19 = a1[5];
  swift_beginAccess();
  *(v1 + 32) = v18;
  *(v1 + 40) = v19;
  v20 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  v21 = v7;
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + v20, v7, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v22 = v48;
  swift_beginAccess();

  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v21, v1 + v22, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  v24 = v53;
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + v23, v53, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v25 = v50;
  swift_beginAccess();
  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v24, v1 + v25, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  swift_endAccess();
  v26 = a1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = v26[8];
  swift_beginAccess();
  *v12 = v27;
  *(v12 + 8) = v26;
  v28 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  v29 = *(a1 + v28);
  v30 = v52;
  swift_beginAccess();
  v31 = *(v1 + v30);
  *(v1 + v30) = v29;

  v32 = (a1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__nextTaskID);
  swift_beginAccess();
  v34 = *v32;
  v33 = v32[1];
  v35 = v49;
  swift_beginAccess();
  v36 = v35[1];
  *v35 = v34;
  v35[1] = v33;

  v37 = (a1 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__previousTaskID);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  v40 = v51;
  swift_beginAccess();
  v41 = v40[1];
  *v40 = v39;
  v40[1] = v38;

  v42 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);
  v43 = v54;
  swift_beginAccess();
  *(v1 + v43) = v42;
  v44 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v44);
  v45 = v55;
  swift_beginAccess();
  *(v1 + v45) = a1;
  return v1;
}

uint64_t outlined init with take of ProtoSiriTaskInteractionType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ProtoSiriTaskInteractionType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ProtoSiriTaskInteractionType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ProtoSiriTaskInteractionType?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of ProtoSiriTaskEvaluationSummary?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ProtoSiriTaskInteractionType and conformance ProtoSiriTaskInteractionType(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for ProtoSiriTaskInteractionType()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for ProtoSiriTaskEvaluationSummary()
{
  type metadata accessor for Bool?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for ProtoSiriTaskCompletionType?, &type metadata for ProtoSiriTaskCompletionType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for ProtoSiriTaskSuccessType?, &type metadata for ProtoSiriTaskSuccessType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ProtoSiriTaskInteractionType?(319, &lazy cache variable for type metadata for ProtoSiriTaskInteractionType?, type metadata accessor for ProtoSiriTaskInteractionType);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
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

void type metadata accessor for Bool?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for ProtoSiriTaskEngagement()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ProtoSiriTaskEngagement._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for ProtoSiriTaskEngagement._StorageClass()
{
  type metadata accessor for ProtoSiriTaskInteractionType?(319, &lazy cache variable for type metadata for ProtoSiriTaskEvaluationSummary?, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for ProtoSiriTaskInteractionType?(319, &lazy cache variable for type metadata for ProtoTaskFeatureSet?, type metadata accessor for ProtoTaskFeatureSet);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for ProtoSiriTaskInteractionType?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProtoDomainType and conformance ProtoDomainType()
{
  result = lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType;
  if (!lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType;
  if (!lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType;
  if (!lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType;
  if (!lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoDomainType and conformance ProtoDomainType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType()
{
  result = lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType;
  if (!lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType;
  if (!lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType;
  if (!lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType;
  if (!lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType()
{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType()
{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType);
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoSiriTaskCompletionType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoSiriTaskCompletionType and conformance ProtoSiriTaskCompletionType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

SiriTaskEngagement::ProtoSiriTaskSuccessType_optional __swiftcall ProtoSiriTaskSuccessType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoSiriTaskSuccessType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoSiriTaskSuccessType and conformance ProtoSiriTaskSuccessType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

SiriTaskEngagement::ProtoTaskEngagementType_optional __swiftcall ProtoTaskEngagementType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 14;
  if (rawValue < 0xE)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoTaskEngagementType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

SiriTaskEngagement::ProtoPlayMediaPlayBackState_optional __swiftcall ProtoPlayMediaPlayBackState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoPlayMediaPlayBackState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

SiriTaskEngagement::ProtoDomainType_optional __swiftcall ProtoDomainType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoDomainType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoDomainType and conformance ProtoDomainType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

SiriTaskEngagement::ProtoNavigationVerb_optional __swiftcall ProtoNavigationVerb.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoNavigationVerb(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoNavigationVerb and conformance ProtoNavigationVerb();

  return MEMORY[0x28217E238](a1, a2, v4);
}

SiriTaskEngagement::ProtoNavigationType_optional __swiftcall ProtoNavigationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoNavigationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoNavigationType and conformance ProtoNavigationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

SiriTaskEngagement::ProtoNavigationFollowupType_optional __swiftcall ProtoNavigationFollowupType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ProtoSiriTaskCompletionType()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoNavigationFollowupType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ProtoSiriTaskCompletionType()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
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

unint64_t lazy protocol witness table accessor for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState()
{
  result = lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState;
  if (!lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState;
  if (!lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState;
  if (!lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState;
  if (!lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoPlayMediaPlayBackState and conformance ProtoPlayMediaPlayBackState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtoNavigationVerb and conformance ProtoNavigationVerb()
{
  result = lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb;
  if (!lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb;
  if (!lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb;
  if (!lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb;
  if (!lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationVerb and conformance ProtoNavigationVerb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtoNavigationType and conformance ProtoNavigationType()
{
  result = lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType;
  if (!lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType;
  if (!lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType;
  if (!lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType;
  if (!lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationType and conformance ProtoNavigationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType()
{
  result = lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType;
  if (!lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType;
  if (!lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType;
  if (!lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType;
  if (!lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [ProtoSiriTaskCompletionType] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for ProtoSiriTaskCompletionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProtoSiriTaskCompletionType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtoTaskEngagementType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProtoTaskEngagementType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtoPlayMediaPlayBackState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProtoPlayMediaPlayBackState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtoDomainType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProtoDomainType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtoNavigationVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProtoNavigationVerb(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtoNavigationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProtoNavigationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtoNavigationFollowupType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProtoNavigationFollowupType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PSEFeatureStoreManager.getStream(streamId:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = 0;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = &v25;
  v7[3] = v2;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in PSEFeatureStoreManager.getStream(streamId:);
  *(v8 + 24) = v7;
  v23 = partial apply for thunk for @callee_guaranteed () -> ();
  v24 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed () -> ();
  v22 = &block_descriptor;
  v9 = _Block_copy(&aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v25)
    {
      v11 = 0;
      v12 = v25;
LABEL_10:

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
      return v12;
    }

    v13 = swift_allocObject();
    v13[2] = v3;
    v13[3] = a1;
    v13[4] = a2;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #2 in PSEFeatureStoreManager.getStream(streamId:);
    *(v14 + 24) = v13;
    v23 = thunk for @callee_guaranteed () -> ()partial apply;
    v24 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed () -> ();
    v22 = &block_descriptor_13;
    v15 = _Block_copy(&aBlock);

    dispatch_sync(v6, v15);
    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if ((v15 & 1) == 0)
    {
      swift_beginAccess();
      v16 = *(v3 + 24);
      if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v18 & 1) != 0))
      {
        v12 = *(*(v16 + 56) + 8 * v17);
      }

      else
      {
        v12 = 0;
      }

      swift_endAccess();
      v11 = partial apply for closure #2 in PSEFeatureStoreManager.getStream(streamId:);
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for PSEFeatureStoreManager();
  swift_allocObject();
  result = PSEFeatureStoreManager.().init()();
  static PSEFeatureStoreManager.shared = result;
  return result;
}

uint64_t static PSEFeatureStoreManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t PSEFeatureStoreManager.().init()()
{
  v12[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v12[0]);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v12[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12[0]);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = MEMORY[0x277D84F98];
  *(v0 + 16) = v9;
  *(v0 + 24) = v10;
  return v0;
}

uint64_t closure #1 in PSEFeatureStoreManager.getStream(streamId:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = *a1;
  *a1 = v11;
}

uint64_t partial apply for thunk for @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t closure #2 in PSEFeatureStoreManager.getStream(streamId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for PSEFeatureStoreDonator();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v5 = PSEFeatureStoreDonator.init(streamId:)(a2, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, a2, a3);
  return swift_endAccess();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = specialized _NativeDictionary._delete(at:)(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t PSEFeatureStoreManager.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PSEFeatureStoreManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t PSEFeatureStoreDonator.streamId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PSEFeatureStoreDonator.streamId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *PSEFeatureStoreDonator.stream.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void PSEFeatureStoreDonator.stream.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t PSEFeatureStoreDonator.init(streamId:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *(v2 + 32) = 0;
  v6 = (v2 + 32);
  *(v6 - 2) = a1;
  *(v6 - 1) = a2;
  v7 = objc_allocWithZone(MEMORY[0x277D08440]);

  v8 = MEMORY[0x26D633FA0](a1, a2);
  v9 = [v7 initWithStreamId_];

  swift_beginAccess();
  v10 = *v6;
  *v6 = v9;
  v11 = v9;

  if (v11)
  {

    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.feature);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v25);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_2691F5000, v13, v14, "Successfully create featurestore stream for streamId %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D634770](v16, -1, -1);
      MEMORY[0x26D634770](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.feature);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v25);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_2691F5000, v19, v20, "Failed to create featurestore stream for streamId: %s, donations will be disabled.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26D634770](v22, -1, -1);
      MEMORY[0x26D634770](v21, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PSEFeatureStoreDonator.writeFeature(interactionId:jsonStr:)(Swift::String interactionId, Swift::String jsonStr)
{
  object = jsonStr._object;
  countAndFlagsBits = jsonStr._countAndFlagsBits;
  v5 = interactionId._object;
  v6 = interactionId._countAndFlagsBits;
  v22 = *MEMORY[0x277D85DE8];
  v7 = (*(*v2 + 120))();
  if (v7)
  {
    v8 = v7;
    v9 = objc_allocWithZone(MEMORY[0x277D08438]);
    v10 = MEMORY[0x26D633FA0](countAndFlagsBits, object);
    v11 = MEMORY[0x26D633FA0](v6, v5);
    v12 = [v9 initWithJsonStr:v10 interactionId:v11 dataVersion:1];

    if (v12)
    {
      v20 = 0;
      if ([v8 insert:v12 error:&v20])
      {
        v13 = v20;
      }

      else
      {
        v18 = v20;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      if (one-time initialization token for feature != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.feature);
      v20 = 324;
      v21 = 0xE000000000000000;
      _StringGuts.grow(_:)(60);
      MEMORY[0x26D634000](0xD00000000000003ALL, 0x8000000269240480);
      MEMORY[0x26D634000](v6, v5);
      Logger.error(_:_:)(0, 0xE000000000000000, &v20);
    }
  }

  else
  {
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.feature);
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    MEMORY[0x26D634000](0xD000000000000024, 0x8000000269240430);
    MEMORY[0x26D634000](v6, v5);
    v15 = MEMORY[0x26D634000](0xD000000000000014, 0x8000000269240460);
    v16 = (*(*v2 + 96))(v15);
    MEMORY[0x26D634000](v16);

    MEMORY[0x26D634000](0x20746F6E20736920, 0xED0000646E756F66);
    LOWORD(v20) = 324;
    Logger.error(_:_:)(0, 0xE000000000000000, &v20);
  }

  v19 = *MEMORY[0x277D85DE8];
}

id PSEFeatureStoreDonator.retrieveFeature(interactionId:)(void *a1, uint64_t a2)
{
  v5 = (*(*v2 + 120))();
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26923AA70;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v9 = [v6 retrieve_];

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v12 & 1) == 0))
    {

      outlined destroy of AnyHashable(v23);
      return 0;
    }

    outlined init with copy of Any(*(v10 + 56) + 32 * v11, v24);
    outlined destroy of AnyHashable(v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_12:

      return 0;
    }

    if (a1[2])
    {
      v13 = a1[4];
      v14 = a1[5];
      outlined copy of Data._Representation(v13, v14);

      v15 = objc_opt_self();
      v16 = Data._bridgeToObjectiveC()().super.isa;
      v17 = MEMORY[0x26D633FA0](a1, a2);
      v18 = [v15 deserialize:v16 dataVersion:1 interactionId:v17];
      outlined consume of Data._Representation(v13, v14);

      return v18;
    }
  }

  else
  {
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.feature);
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v21 = MEMORY[0x26D634000](0xD000000000000036, 0x80000002692404C0);
    v22 = (*(*v2 + 96))(v21);
    MEMORY[0x26D634000](v22);

    MEMORY[0x26D634000](0x20746F6E20736920, 0xED0000646E756F66);
    LOWORD(v23[0]) = 323;
    Logger.error(_:_:)(0, 0xE000000000000000, v23);
  }

  return 0;
}

Swift::OpaquePointer_optional __swiftcall PSEFeatureStoreDonator.retrieveFeatures()()
{
  v1 = v0;
  v2 = (*(*v0 + 120))();
  if (!v2)
  {
    if (one-time initialization token for feature != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v2 retrieve_];
  if (!v4)
  {

    v17 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v9)
  {
LABEL_16:
    v19 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    outlined init with copy of AnyHashable(*(v6 + 48) + 40 * (v19 | (v11 << 6)), &v32);
    if (*(v6 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(&v32), (v21 & 1) != 0) && (outlined init with copy of Any(*(v6 + 56) + 32 * v20, v31), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR), (swift_dynamicCast() & 1) != 0))
    {
      if (!v30[2])
      {

        goto LABEL_10;
      }

      v22 = v30[4];
      v28 = v30[5];
      outlined copy of Data._Representation(v22, v28);

      v27 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined init with copy of AnyHashable(&v32, v31);
      swift_dynamicCast();
      v24 = MEMORY[0x26D633FA0]();

      v1 = isa;
      v25 = [v27 deserialize:isa dataVersion:1 interactionId:v24];
      outlined consume of Data._Representation(v22, v28);

      v26 = outlined destroy of AnyHashable(&v32);
      if (v25)
      {
        MEMORY[0x26D634040](v26);
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v1 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v29 = v34;
      }
    }

    else
    {
LABEL_10:
      outlined destroy of AnyHashable(&v32);
    }
  }

  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v10)
    {

      swift_bridgeObjectRelease_n();

      v17 = v29;
      goto LABEL_27;
    }

    v9 = *(v6 + 64 + 8 * v18);
    ++v11;
    if (v9)
    {
      v11 = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_7:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.feature);
  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  v13 = MEMORY[0x26D634000](0xD000000000000036, 0x80000002692404C0);
  v14 = (*(*v1 + 96))(v13);
  MEMORY[0x26D634000](v14);

  MEMORY[0x26D634000](0x20746F6E20736920, 0xED0000646E756F66);
  v15 = v32;
  LOWORD(v32) = 323;
  Logger.error(_:_:)(v15, v33, &v32);

  v17 = 0;
LABEL_27:
  result.value._rawValue = v17;
  result.is_nil = v16;
  return result;
}

uint64_t PSEFeatureStoreDonator.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PSEFeatureStoreDonator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D634180](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t INPerson.extract()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v60 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v60 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - v11;
  v13 = type metadata accessor for ProtoContactEntitySignal(0);
  v66 = *(v13 - 1);
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v17 = &v16[v13[5]];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v16[v13[6]];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v16[v13[7]];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v16[v13[8]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v61 = v20;
  v21 = &v16[v13[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v60 = v21;
  v22 = [v2 contactIdentifier];
  if (v22 || (v22 = [v2 customIdentifier]) != 0)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *v17 = v24;
    v17[1] = v26;
  }

  v27 = [v2 personHandle];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 value];

    if (v29)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      *v18 = v30;
      v18[1] = v32;
    }
  }

  v33 = [v2 displayName];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *v19 = v34;
  v19[1] = v36;
  v37 = [v2 nameComponents];
  v38 = v62;
  v63 = v2;
  if (v37)
  {
    v39 = v37;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = type metadata accessor for PersonNameComponents();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v43(v38, v40, 1, v41);
  outlined init with take of PersonNameComponents?(v38, v12);
  v44 = *(v42 + 48);
  if (v44(v12, 1, v41))
  {
    outlined destroy of PersonNameComponents?(v12);
  }

  else
  {
    v45 = PersonNameComponents.familyName.getter();
    v47 = v46;
    outlined destroy of PersonNameComponents?(v12);
    if (v47)
    {
      v48 = v60;
      *v60 = v45;
      v48[1] = v47;
    }
  }

  v49 = [v63 nameComponents];
  v50 = v64;
  if (v49)
  {
    v51 = v49;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v43(v50, v52, 1, v41);
  v53 = v65;
  outlined init with take of PersonNameComponents?(v50, v65);
  if (v44(v53, 1, v41))
  {
    outlined destroy of PersonNameComponents?(v53);
  }

  else
  {
    v54 = PersonNameComponents.givenName.getter();
    v56 = v55;
    outlined destroy of PersonNameComponents?(v53);
    if (v56)
    {
      v57 = v61;
      *v61 = v54;
      v57[1] = v56;
    }
  }

  v58 = v67;
  outlined init with take of ProtoContactEntitySignal(v16, v67);
  return (*(v66 + 56))(v58, 0, 1, v13);
}

uint64_t outlined init with take of PersonNameComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PersonNameComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ProtoContactEntitySignal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoContactEntitySignal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Logger.feature.unsafeMutableAddressor()
{
  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.feature);
}

uint64_t Logger.error(_:_:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v5 = *a3;
  v6 = a3[1];

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v14);
    _os_log_impl(&dword_2691F5000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D634770](v10, -1, -1);
    MEMORY[0x26D634770](v9, -1, -1);
  }

  v11 = specialized static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)(a1, a2);
  v15[0] = v5;
  v15[1] = v6;
  specialized static CoreAnalyticsService.submitReliabilityAnalytics(category:reason:)(v15, v11, v12);
}

uint64_t one-time initialization function for feature()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.feature);
  __swift_project_value_buffer(v0, static Logger.feature);
  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  v1 = static Log.feature;
  return Logger.init(_:)();
}

{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.feature = result;
  return result;
}

uint64_t *Log.feature.unsafeMutableAddressor()
{
  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  return &static Log.feature;
}

uint64_t static Logger.feature.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.feature);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id static Log.feature.getter()
{
  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  v1 = static Log.feature;

  return v1;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t ProtoTaskFeatureSet.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ProtoTaskFeatureSet(0);
  v4 = a1 + *(v3 + 20);
  result = UnknownStorage.init()();
  v6 = (a1 + *(v3 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t ProtoStartCallTaskFeatureSet.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for ProtoStartCallTaskFeatureSet(0);
  v3 = a1 + *(v2 + 20);
  result = UnknownStorage.init()();
  v5 = a1 + *(v2 + 24);
  *v5 = 0;
  v5[8] = 1;
  return result;
}

uint64_t ProtoStartCallTaskFeatureSet.callDurationInSec.setter(double a1)
{
  result = type metadata accessor for ProtoStartCallTaskFeatureSet(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t ProtoSendMessageTaskFeatureSet.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for ProtoSendMessageTaskFeatureSet(0) + 20);
  return UnknownStorage.init()();
}

uint64_t _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ProtoReminderTaskFeatureSet.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  *(a1 + v2[6]) = 2;
  *(a1 + v2[7]) = 2;
  v4 = v2[8];
  v5 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a1 + v4, 1, 1, v5);
  v6 = a1 + v2[9];

  return v8(v6, 1, 1, v5);
}

uint64_t ProtoReminderTaskFeatureSet.isSpatialTriggered.setter(char a1)
{
  result = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ProtoReminderTaskFeatureSet.isTemporalTriggered.setter(char a1)
{
  result = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t ProtoReminderTaskFeatureSet.startTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 32);
  outlined destroy of DateInterval?(v1 + v3, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(a1, v1 + v3, type metadata accessor for ProtoDateTimeEntitySignal);
  v4 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t ProtoReminderTaskFeatureSet.endTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 36);
  outlined destroy of DateInterval?(v1 + v3, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(a1, v1 + v3, type metadata accessor for ProtoDateTimeEntitySignal);
  v4 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t ProtoAlarmTaskFeatureSet.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  v3 = (a1 + *(v2 + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = *(v2 + 24);
  v5 = type metadata accessor for ProtoDateComponentSignal(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t ProtoReminderTaskFeatureSet.reminderIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ProtoAlarmTaskFeatureSet.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + *(v7 + 24), v6, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v8 = type metadata accessor for ProtoDateComponentSignal(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v6, a1, type metadata accessor for ProtoDateComponentSignal);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  }

  return result;
}

uint64_t ProtoAlarmTaskFeatureSet.startTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoAlarmTaskFeatureSet(0) + 24);
  outlined destroy of DateInterval?(v1 + v3, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(a1, v1 + v3, type metadata accessor for ProtoDateComponentSignal);
  v4 = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t ProtoTaskEngagementFeatureSet.engagementType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  v4 = *(v1 + *(result + 20));
  if (v4 == 14)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t ProtoTaskEngagementFeatureSet.engagementType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*ProtoTaskEngagementFeatureSet.engagementType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoTaskEngagementFeatureSet(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 14)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return ProtoSiriTaskInteractionType.includesPrompt.modify;
}

uint64_t ProtoTaskEngagementFeatureSet.startTimestampMs.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoTaskEngagementFeatureSet(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ProtoTaskEngagementFeatureSet.startTimestampMs.setter(uint64_t a1)
{
  result = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoTaskEngagementFeatureSet.startTimestampMs.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoTaskEngagementFeatureSet(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return ProtoSiriTaskEvaluationSummary.startTimestampMs.modify;
}

Swift::Void __swiftcall ProtoTaskEngagementFeatureSet.clearStartTimestampMs()()
{
  v1 = v0 + *(type metadata accessor for ProtoTaskEngagementFeatureSet(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ProtoTaskEngagementFeatureSet.featureSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + *(v7 + 28), v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v8 = type metadata accessor for ProtoTaskFeatureSet(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v6, a1, type metadata accessor for ProtoTaskFeatureSet);
  }

  v10 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  v12 = (a1 + *(v8 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  }

  return result;
}

uint64_t key path getter for ProtoTaskEngagementFeatureSet.featureSet : ProtoTaskEngagementFeatureSet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v8 + 28), v7, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v9 = type metadata accessor for ProtoTaskFeatureSet(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v7, a2, type metadata accessor for ProtoTaskFeatureSet);
  }

  v11 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  v13 = (a2 + *(v9 + 24));
  *v13 = 0;
  v13[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoTaskEngagementFeatureSet.featureSet : ProtoTaskEngagementFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoTaskFeatureSet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoTaskFeatureSet(a1, v8, type metadata accessor for ProtoTaskFeatureSet);
  v9 = *(type metadata accessor for ProtoTaskEngagementFeatureSet(0) + 28);
  outlined destroy of DateInterval?(a2 + v9, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, a2 + v9, type metadata accessor for ProtoTaskFeatureSet);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoTaskEngagementFeatureSet.featureSet.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoTaskEngagementFeatureSet(0) + 28);
  outlined destroy of DateInterval?(v1 + v3, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(a1, v1 + v3, type metadata accessor for ProtoTaskFeatureSet);
  v4 = type metadata accessor for ProtoTaskFeatureSet(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoTaskEngagementFeatureSet.featureSet.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ProtoTaskFeatureSet(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for ProtoTaskEngagementFeatureSet(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + v15, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    v19 = (v14 + *(v9 + 24));
    *v19 = 0;
    v19[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    }
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v14, type metadata accessor for ProtoTaskFeatureSet);
  }

  return ProtoTaskEngagementFeatureSet.featureSet.modify;
}

void ProtoTaskEngagementFeatureSet.featureSet.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of ProtoTaskFeatureSet((*a1)[5], v4, type metadata accessor for ProtoTaskFeatureSet);
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v4, v9 + v3, type metadata accessor for ProtoTaskFeatureSet);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of ProtoTaskFeatureSet(v5, type metadata accessor for ProtoTaskFeatureSet);
  }

  else
  {
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v5, v9 + v3, type metadata accessor for ProtoTaskFeatureSet);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t ProtoTaskEngagementFeatureSet.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  *(a1 + v2[5]) = 14;
  v3 = a1 + v2[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[7];
  v5 = type metadata accessor for ProtoTaskFeatureSet(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t (*ProtoTaskFeatureSet.appBundleID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoTaskFeatureSet(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t outlined assign with take of ProtoTaskFeatureSet.OneOf_ByTask?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ProtoTaskFeatureSet.startCallFeatureSet.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  outlined init with copy of ProtoSiriTaskInteractionType?(v2, &v12 - v5, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v7 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v6, a1, type metadata accessor for ProtoStartCallTaskFeatureSet);
    }

    outlined destroy of ProtoTaskFeatureSet(v6, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  }

  *a1 = MEMORY[0x277D84F90];
  v8 = type metadata accessor for ProtoStartCallTaskFeatureSet(0);
  v9 = a1 + *(v8 + 20);
  result = UnknownStorage.init()();
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  v11[8] = 1;
  return result;
}

uint64_t outlined destroy of ProtoTaskFeatureSet(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*ProtoTaskFeatureSet.startCallFeatureSet.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ProtoStartCallTaskFeatureSet(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ProtoSiriTaskInteractionType?(v1, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v13 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v12, type metadata accessor for ProtoStartCallTaskFeatureSet);
      return ProtoTaskFeatureSet.startCallFeatureSet.modify;
    }

    outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  }

  *v12 = MEMORY[0x277D84F90];
  v15 = v12 + *(v9 + 20);
  UnknownStorage.init()();
  v16 = v12 + *(v9 + 24);
  *v16 = 0;
  v16[8] = 1;
  return ProtoTaskFeatureSet.startCallFeatureSet.modify;
}

uint64_t outlined init with copy of ProtoTaskFeatureSet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ProtoTaskFeatureSet.sendMessageFeatureSet.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ProtoSiriTaskInteractionType?(v2, &v11 - v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v8 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v7, a1, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    }

    outlined destroy of ProtoTaskFeatureSet(v7, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for ProtoSendMessageTaskFeatureSet(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for ProtoTaskFeatureSet.sendMessageFeatureSet : ProtoTaskFeatureSet@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, &v11 - v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v8 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v7, a2, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    }

    outlined destroy of ProtoTaskFeatureSet(v7, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  }

  *a2 = MEMORY[0x277D84F90];
  v10 = a2 + *(type metadata accessor for ProtoSendMessageTaskFeatureSet(0) + 20);
  return UnknownStorage.init()();
}

void (*ProtoTaskFeatureSet.sendMessageFeatureSet.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ProtoSendMessageTaskFeatureSet(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ProtoSiriTaskInteractionType?(v1, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v13 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    v15 = v12 + *(v9 + 20);
    UnknownStorage.init()();
    return ProtoTaskFeatureSet.sendMessageFeatureSet.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    goto LABEL_15;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v12, type metadata accessor for ProtoSendMessageTaskFeatureSet);
  return ProtoTaskFeatureSet.sendMessageFeatureSet.modify;
}

uint64_t ProtoTaskFeatureSet.alarmFeatureSet.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  outlined init with copy of ProtoSiriTaskInteractionType?(v2, &v13 - v5, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v7 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v6, a1, type metadata accessor for ProtoAlarmTaskFeatureSet);
    }

    outlined destroy of ProtoTaskFeatureSet(v6, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  }

  UnknownStorage.init()();
  v9 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  v10 = (a1 + *(v9 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = *(v9 + 24);
  v12 = type metadata accessor for ProtoDateComponentSignal(0);
  return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
}

void (*ProtoTaskFeatureSet.alarmFeatureSet.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ProtoSiriTaskInteractionType?(v2, v9, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v14 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of DateInterval?(v9, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
LABEL_15:
    UnknownStorage.init()();
    v16 = (v13 + *(v10 + 20));
    *v16 = 0;
    v16[1] = 0;
    v17 = *(v10 + 24);
    v18 = type metadata accessor for ProtoDateComponentSignal(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    return ProtoTaskFeatureSet.alarmFeatureSet.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of ProtoTaskFeatureSet(v9, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    goto LABEL_15;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v9, v13, type metadata accessor for ProtoAlarmTaskFeatureSet);
  return ProtoTaskFeatureSet.alarmFeatureSet.modify;
}

uint64_t ProtoTaskFeatureSet.reminderFeatureSet.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  outlined init with copy of ProtoSiriTaskInteractionType?(v2, &v14 - v5, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v7 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v6, a1, type metadata accessor for ProtoReminderTaskFeatureSet);
    }

    outlined destroy of ProtoTaskFeatureSet(v6, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  }

  UnknownStorage.init()();
  v9 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  v10 = (a1 + v9[5]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  v11 = v9[8];
  v12 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a1 + v11, 1, 1, v12);
  return (v13)(a1 + v9[9], 1, 1, v12);
}

void (*ProtoTaskFeatureSet.reminderFeatureSet.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ProtoSiriTaskInteractionType?(v2, v9, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v14 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of DateInterval?(v9, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
LABEL_15:
    UnknownStorage.init()();
    v16 = (v13 + v10[5]);
    *v16 = 0;
    v16[1] = 0;
    *(v13 + v10[6]) = 2;
    *(v13 + v10[7]) = 2;
    v17 = v10[8];
    v18 = type metadata accessor for ProtoDateTimeEntitySignal(0);
    v19 = *(*(v18 - 8) + 56);
    v19(v13 + v17, 1, 1, v18);
    v19(v13 + v10[9], 1, 1, v18);
    return ProtoTaskFeatureSet.reminderFeatureSet.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of ProtoTaskFeatureSet(v9, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    goto LABEL_15;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v9, v13, type metadata accessor for ProtoReminderTaskFeatureSet);
  return ProtoTaskFeatureSet.reminderFeatureSet.modify;
}

uint64_t ProtoTaskFeatureSet.playMediaFeatureSet.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v16 - v5;
  outlined init with copy of ProtoSiriTaskInteractionType?(v2, &v16 - v5, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v7 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v6, a1, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
    }

    outlined destroy of ProtoTaskFeatureSet(v6, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  }

  UnknownStorage.init()();
  v9 = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v10 = a1 + v9[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v9[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (a1 + v9[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v9[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v9[9];
  v15 = type metadata accessor for ProtoMediaEntitySignal(0);
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t ProtoPlayMediaTaskFeatureSet.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[9];
  v8 = type metadata accessor for ProtoMediaEntitySignal(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

void (*ProtoTaskFeatureSet.playMediaFeatureSet.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ProtoSiriTaskInteractionType?(v2, v9, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v14 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of DateInterval?(v9, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
LABEL_15:
    UnknownStorage.init()();
    v16 = v13 + v10[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v10[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = (v13 + v10[7]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v13 + v10[8]);
    *v19 = 0;
    v19[1] = 0;
    v20 = v10[9];
    v21 = type metadata accessor for ProtoMediaEntitySignal(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    return ProtoTaskFeatureSet.playMediaFeatureSet.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    outlined destroy of ProtoTaskFeatureSet(v9, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    goto LABEL_15;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v9, v13, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
  return ProtoTaskFeatureSet.playMediaFeatureSet.modify;
}

uint64_t ProtoTaskFeatureSet.navigationFeatureSet.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  outlined init with copy of ProtoSiriTaskInteractionType?(v2, &v12 - v5, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v7 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v6, a1, type metadata accessor for ProtoNavigationTaskFeatureSet);
    }

    outlined destroy of ProtoTaskFeatureSet(v6, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  }

  UnknownStorage.init()();
  v9 = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  v10 = v9[7];
  v11 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t key path setter for ProtoTaskFeatureSet.startCallFeatureSet : ProtoTaskFeatureSet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v16 - v12;
  outlined init with copy of ProtoTaskFeatureSet(a1, &v16 - v12, a6);
  outlined destroy of DateInterval?(a2, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v13, a2, a7);
  v14 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t ProtoTaskFeatureSet.startCallFeatureSet.setter(uint64_t a1, uint64_t (*a2)(void))
{
  outlined destroy of DateInterval?(v2, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(a1, v2, a2);
  v5 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t ProtoNavigationTaskFeatureSet.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  *(a1 + v2[5]) = 2;
  *(a1 + v2[6]) = 2;
  v3 = v2[7];
  v4 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

void (*ProtoTaskFeatureSet.navigationFeatureSet.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ProtoSiriTaskInteractionType?(v2, v9, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v14 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of DateInterval?(v9, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
LABEL_15:
    UnknownStorage.init()();
    *(v13 + v10[5]) = 2;
    *(v13 + v10[6]) = 2;
    v16 = v10[7];
    v17 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return ProtoTaskFeatureSet.navigationFeatureSet.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    outlined destroy of ProtoTaskFeatureSet(v9, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    goto LABEL_15;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v9, v13, type metadata accessor for ProtoNavigationTaskFeatureSet);
  return ProtoTaskFeatureSet.navigationFeatureSet.modify;
}

void ProtoTaskFeatureSet.startCallFeatureSet.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of ProtoTaskFeatureSet((*a1)[3], v10, a5);
    outlined destroy of DateInterval?(v13, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of ProtoTaskFeatureSet(v11, a6);
  }

  else
  {
    outlined destroy of DateInterval?(**a1, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t static ProtoSendMessageTaskFeatureSet.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ18SiriTaskEngagement24ProtoContactEntitySignalV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for ProtoSendMessageTaskFeatureSet(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t (*ProtoStartCallTaskFeatureSet.callDurationInSec.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoStartCallTaskFeatureSet(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return ProtoSiriTaskEvaluationSummary.startTimestampMs.modify;
}

Swift::Void __swiftcall ProtoStartCallTaskFeatureSet.clearCallDurationInSec()()
{
  v1 = v0 + *(type metadata accessor for ProtoStartCallTaskFeatureSet(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ProtoStartCallTaskFeatureSet.contactEntities.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ProtoTaskFeatureSet.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ProtoTaskFeatureSet.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*ProtoAlarmTaskFeatureSet.alarmIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoAlarmTaskFeatureSet(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoMediaEntitySignal.adamIdentifier.modify;
}

uint64_t key path getter for ProtoAlarmTaskFeatureSet.startTime : ProtoAlarmTaskFeatureSet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v8 + 24), v7, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v9 = type metadata accessor for ProtoDateComponentSignal(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v7, a2, type metadata accessor for ProtoDateComponentSignal);
  }

  UnknownStorage.init()();
  v11 = a2 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v9[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + v9[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v9[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + v9[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoAlarmTaskFeatureSet.startTime : ProtoAlarmTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoTaskFeatureSet(a1, v8, type metadata accessor for ProtoDateComponentSignal);
  v9 = *(type metadata accessor for ProtoAlarmTaskFeatureSet(0) + 24);
  outlined destroy of DateInterval?(a2 + v9, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, a2 + v9, type metadata accessor for ProtoDateComponentSignal);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*ProtoAlarmTaskFeatureSet.startTime.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ProtoDateComponentSignal(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for ProtoAlarmTaskFeatureSet(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + v15, v8, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[9];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[10];
    *v22 = 0;
    *(v22 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
    }
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v14, type metadata accessor for ProtoDateComponentSignal);
  }

  return ProtoAlarmTaskFeatureSet.startTime.modify;
}

void ProtoAlarmTaskFeatureSet.startTime.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of ProtoTaskFeatureSet((*a1)[5], v4, type metadata accessor for ProtoDateComponentSignal);
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v4, v9 + v3, type metadata accessor for ProtoDateComponentSignal);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of ProtoTaskFeatureSet(v5, type metadata accessor for ProtoDateComponentSignal);
  }

  else
  {
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v5, v9 + v3, type metadata accessor for ProtoDateComponentSignal);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL ProtoAlarmTaskFeatureSet.hasStartTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v0 + *(v5 + 24), v4, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v6 = type metadata accessor for ProtoDateComponentSignal(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of DateInterval?(v4, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  return v7;
}

Swift::Void __swiftcall ProtoAlarmTaskFeatureSet.clearStartTime()()
{
  v1 = *(type metadata accessor for ProtoAlarmTaskFeatureSet(0) + 24);
  outlined destroy of DateInterval?(v0 + v1, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v2 = type metadata accessor for ProtoDateComponentSignal(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ProtoAlarmTaskFeatureSet.alarmIdentifier.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoAlarmTaskFeatureSet.alarmIdentifier : ProtoAlarmTaskFeatureSet@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoAlarmTaskFeatureSet.alarmIdentifier : ProtoAlarmTaskFeatureSet(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 20));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*ProtoReminderTaskFeatureSet.reminderIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoAlarmTaskFeatureSet.clearAlarmIdentifier()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*ProtoReminderTaskFeatureSet.isSpatialTriggered.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskInteractionType.includesPrompt.modify;
}

uint64_t (*ProtoReminderTaskFeatureSet.isTemporalTriggered.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

uint64_t ProtoReminderTaskFeatureSet.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + *(v7 + 32), v6, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v8 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v6, a1, type metadata accessor for ProtoDateTimeEntitySignal);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  }

  return result;
}

uint64_t key path getter for ProtoReminderTaskFeatureSet.startTime : ProtoReminderTaskFeatureSet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v8 + 32), v7, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v9 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v7, a2, type metadata accessor for ProtoDateTimeEntitySignal);
  }

  UnknownStorage.init()();
  v11 = a2 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoReminderTaskFeatureSet.startTime : ProtoReminderTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoTaskFeatureSet(a1, v8, type metadata accessor for ProtoDateTimeEntitySignal);
  v9 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 32);
  outlined destroy of DateInterval?(a2 + v9, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, a2 + v9, type metadata accessor for ProtoDateTimeEntitySignal);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t (*ProtoReminderTaskFeatureSet.startTime.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + v15, v8, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
    }
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v14, type metadata accessor for ProtoDateTimeEntitySignal);
  }

  return ProtoReminderTaskFeatureSet.startTime.modify;
}

uint64_t ProtoReminderTaskFeatureSet.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + *(v7 + 36), v6, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v8 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v6, a1, type metadata accessor for ProtoDateTimeEntitySignal);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  }

  return result;
}

uint64_t key path getter for ProtoReminderTaskFeatureSet.endTime : ProtoReminderTaskFeatureSet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v8 + 36), v7, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v9 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v7, a2, type metadata accessor for ProtoDateTimeEntitySignal);
  }

  UnknownStorage.init()();
  v11 = a2 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoReminderTaskFeatureSet.endTime : ProtoReminderTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoTaskFeatureSet(a1, v8, type metadata accessor for ProtoDateTimeEntitySignal);
  v9 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 36);
  outlined destroy of DateInterval?(a2 + v9, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, a2 + v9, type metadata accessor for ProtoDateTimeEntitySignal);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*ProtoReminderTaskFeatureSet.endTime.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + v15, v8, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
    }
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v14, type metadata accessor for ProtoDateTimeEntitySignal);
  }

  return ProtoReminderTaskFeatureSet.endTime.modify;
}

void ProtoReminderTaskFeatureSet.endTime.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of ProtoTaskFeatureSet((*a1)[5], v4, type metadata accessor for ProtoDateTimeEntitySignal);
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v4, v9 + v3, type metadata accessor for ProtoDateTimeEntitySignal);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of ProtoTaskFeatureSet(v5, type metadata accessor for ProtoDateTimeEntitySignal);
  }

  else
  {
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v5, v9 + v3, type metadata accessor for ProtoDateTimeEntitySignal);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

double ProtoPlayMediaTaskFeatureSet.playDurationInSec.getter()
{
  v1 = v0 + *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t ProtoPlayMediaTaskFeatureSet.playDurationInSec.setter(double a1)
{
  result = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoPlayMediaTaskFeatureSet.playDurationInSec.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return ProtoDateTimeEntitySignal.datetimeTimestampMs.modify;
}

Swift::Void __swiftcall ProtoPlayMediaTaskFeatureSet.clearPlayDurationInSec()()
{
  v1 = v0 + *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double ProtoStartCallTaskFeatureSet.callDurationInSec.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t ProtoPlayMediaTaskFeatureSet.mediaContentLengthInSec.setter(double a1)
{
  result = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoPlayMediaTaskFeatureSet.mediaContentLengthInSec.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return ProtoSiriTaskEvaluationSummary.startTimestampMs.modify;
}

Swift::Void __swiftcall ProtoPlayMediaTaskFeatureSet.clearMediaContentLengthInSec()()
{
  v1 = v0 + *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*ProtoPlayMediaTaskFeatureSet.appBundleID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t (*ProtoPlayMediaTaskFeatureSet.actionState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoPlayMediaTaskFeatureSet.mediaEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + *(v7 + 36), v6, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v8 = type metadata accessor for ProtoMediaEntitySignal(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v6, a1, type metadata accessor for ProtoMediaEntitySignal);
  }

  UnknownStorage.init()();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  }

  return result;
}

uint64_t key path getter for ProtoPlayMediaTaskFeatureSet.mediaEntity : ProtoPlayMediaTaskFeatureSet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v8 + 36), v7, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v9 = type metadata accessor for ProtoMediaEntitySignal(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v7, a2, type metadata accessor for ProtoMediaEntitySignal);
  }

  UnknownStorage.init()();
  v11 = (a2 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v9[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + v9[8]);
  *v14 = 0;
  v14[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoPlayMediaTaskFeatureSet.mediaEntity : ProtoPlayMediaTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoMediaEntitySignal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoTaskFeatureSet(a1, v8, type metadata accessor for ProtoMediaEntitySignal);
  v9 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 36);
  outlined destroy of DateInterval?(a2 + v9, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, a2 + v9, type metadata accessor for ProtoMediaEntitySignal);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoPlayMediaTaskFeatureSet.mediaEntity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 36);
  outlined destroy of DateInterval?(v1 + v3, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(a1, v1 + v3, type metadata accessor for ProtoMediaEntitySignal);
  v4 = type metadata accessor for ProtoMediaEntitySignal(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoPlayMediaTaskFeatureSet.mediaEntity.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ProtoMediaEntitySignal(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + v15, v8, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
    }
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v14, type metadata accessor for ProtoMediaEntitySignal);
  }

  return ProtoPlayMediaTaskFeatureSet.mediaEntity.modify;
}

void ProtoPlayMediaTaskFeatureSet.mediaEntity.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of ProtoTaskFeatureSet((*a1)[5], v4, type metadata accessor for ProtoMediaEntitySignal);
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v4, v9 + v3, type metadata accessor for ProtoMediaEntitySignal);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of ProtoTaskFeatureSet(v5, type metadata accessor for ProtoMediaEntitySignal);
  }

  else
  {
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v5, v9 + v3, type metadata accessor for ProtoMediaEntitySignal);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL ProtoReminderTaskFeatureSet.hasEndTime.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v4 + *(v13 + 36), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of DateInterval?(v12, a1, a2);
  return v15;
}

uint64_t ProtoReminderTaskFeatureSet.clearEndTime()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  outlined destroy of DateInterval?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoNavigationTaskFeatureSet.isSiriNavigationContinued.setter(char a1)
{
  result = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*ProtoNavigationTaskFeatureSet.isSiriNavigationContinued.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoNavigationTaskFeatureSet(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

uint64_t ProtoNavigationTaskFeatureSet.isUserFollowup.setter(char a1)
{
  result = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*ProtoNavigationTaskFeatureSet.isUserFollowup.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoNavigationTaskFeatureSet(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

uint64_t ProtoNavigationTaskFeatureSet.followupContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v15 - v4;
  v6 = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + *(v6 + 28), v5, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  v7 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v5, a1, type metadata accessor for ProtoNavigationUserFollowupContext);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 3;
  v9 = (a1 + v7[6]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[7]);
  *v10 = 0;
  v10[1] = 0;
  v11 = v7[8];
  v12 = type metadata accessor for ProtoLocationEntitySignal(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v7[9];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v5, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoNavigationTaskFeatureSet.followupContext : ProtoNavigationTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoTaskFeatureSet(a1, v8, type metadata accessor for ProtoNavigationUserFollowupContext);
  v9 = *(type metadata accessor for ProtoNavigationTaskFeatureSet(0) + 28);
  outlined destroy of DateInterval?(a2 + v9, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, a2 + v9, type metadata accessor for ProtoNavigationUserFollowupContext);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoNavigationTaskFeatureSet.followupContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoNavigationTaskFeatureSet(0) + 28);
  outlined destroy of DateInterval?(v1 + v3, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(a1, v1 + v3, type metadata accessor for ProtoNavigationUserFollowupContext);
  v4 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t ProtoNavigationUserFollowupContext.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  *(a1 + v2[5]) = 3;
  v3 = (a1 + v2[6]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[7]);
  *v4 = 0;
  v4[1] = 0;
  v5 = v2[8];
  v6 = type metadata accessor for ProtoLocationEntitySignal(0);
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v8 = a1 + v2[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

void (*ProtoNavigationTaskFeatureSet.followupContext.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for ProtoNavigationTaskFeatureSet(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + v15, v8, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 3;
    v17 = (v14 + v9[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[7]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v9[8];
    v20 = type metadata accessor for ProtoLocationEntitySignal(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + v9[9];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
    }
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v14, type metadata accessor for ProtoNavigationUserFollowupContext);
  }

  return ProtoNavigationTaskFeatureSet.followupContext.modify;
}

void ProtoNavigationTaskFeatureSet.followupContext.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of ProtoTaskFeatureSet((*a1)[5], v4, type metadata accessor for ProtoNavigationUserFollowupContext);
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v4, v9 + v3, type metadata accessor for ProtoNavigationUserFollowupContext);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of ProtoTaskFeatureSet(v5, type metadata accessor for ProtoNavigationUserFollowupContext);
  }

  else
  {
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v5, v9 + v3, type metadata accessor for ProtoNavigationUserFollowupContext);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL ProtoTaskEngagementFeatureSet.hasFeatureSet.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of DateInterval?(v12, a1, a2);
  return v15;
}

uint64_t ProtoTaskEngagementFeatureSet.clearFeatureSet()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  outlined destroy of DateInterval?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoNavigationUserFollowupContext.followupType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v4 = *(v1 + *(result + 20));
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t ProtoNavigationUserFollowupContext.followupType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*ProtoNavigationUserFollowupContext.followupType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

uint64_t ProtoTaskFeatureSet.appBundleID.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoTaskFeatureSet.appBundleID : ProtoTaskFeatureSet@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoTaskFeatureSet.appBundleID : ProtoTaskFeatureSet(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 24));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ProtoTaskFeatureSet.appBundleID.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ProtoNavigationUserFollowupContext.navigationAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoTaskFeatureSet.clearAppBundleID()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ProtoPlayMediaTaskFeatureSet.appBundleID.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoPlayMediaTaskFeatureSet.appBundleID : ProtoPlayMediaTaskFeatureSet@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoPlayMediaTaskFeatureSet.appBundleID : ProtoPlayMediaTaskFeatureSet(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 28));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ProtoPlayMediaTaskFeatureSet.appBundleID.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ProtoNavigationUserFollowupContext.navigationActionType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoPlayMediaTaskFeatureSet.clearAppBundleID()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ProtoNavigationUserFollowupContext.locationEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + *(v7 + 32), v6, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  v8 = type metadata accessor for ProtoLocationEntitySignal(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v6, a1, type metadata accessor for ProtoLocationEntitySignal);
  }

  UnknownStorage.init()();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  }

  return result;
}

uint64_t key path getter for ProtoNavigationUserFollowupContext.locationEntity : ProtoNavigationUserFollowupContext@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v8 + 32), v7, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  v9 = type metadata accessor for ProtoLocationEntitySignal(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v7, a2, type metadata accessor for ProtoLocationEntitySignal);
  }

  UnknownStorage.init()();
  v11 = (a2 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v7, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoNavigationUserFollowupContext.locationEntity : ProtoNavigationUserFollowupContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocationEntitySignal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoTaskFeatureSet(a1, v8, type metadata accessor for ProtoLocationEntitySignal);
  v9 = *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 32);
  outlined destroy of DateInterval?(a2 + v9, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, a2 + v9, type metadata accessor for ProtoLocationEntitySignal);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoNavigationUserFollowupContext.locationEntity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 32);
  outlined destroy of DateInterval?(v1 + v3, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(a1, v1 + v3, type metadata accessor for ProtoLocationEntitySignal);
  v4 = type metadata accessor for ProtoLocationEntitySignal(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoNavigationUserFollowupContext.locationEntity.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ProtoLocationEntitySignal(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + v15, v8, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
    }
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v14, type metadata accessor for ProtoLocationEntitySignal);
  }

  return ProtoNavigationUserFollowupContext.locationEntity.modify;
}

void ProtoNavigationUserFollowupContext.locationEntity.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of ProtoTaskFeatureSet((*a1)[5], v4, type metadata accessor for ProtoLocationEntitySignal);
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v4, v9 + v3, type metadata accessor for ProtoLocationEntitySignal);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of ProtoTaskFeatureSet(v5, type metadata accessor for ProtoLocationEntitySignal);
  }

  else
  {
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v5, v9 + v3, type metadata accessor for ProtoLocationEntitySignal);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL ProtoReminderTaskFeatureSet.hasStartTime.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of DateInterval?(v12, a1, a2);
  return v15;
}

uint64_t ProtoReminderTaskFeatureSet.clearStartTime()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  outlined destroy of DateInterval?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoNavigationUserFollowupContext.timestampInMs.setter(uint64_t a1)
{
  result = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoNavigationUserFollowupContext.timestampInMs.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return ProtoSiriTaskEvaluationSummary.startTimestampMs.modify;
}

Swift::Void __swiftcall ProtoNavigationUserFollowupContext.clearTimestampInMs()()
{
  v1 = v0 + *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*ProtoNavigationFeatures.navigationAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoNavigationFeatures(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t (*ProtoNavigationFeatures.navigationType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoNavigationFeatures(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t (*ProtoNavigationFeatures.navigationActionType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoNavigationFeatures(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoPlayMediaTaskFeatureSet.actionState.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoPlayMediaTaskFeatureSet.actionState : ProtoPlayMediaTaskFeatureSet@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 32));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoPlayMediaTaskFeatureSet.actionState : ProtoPlayMediaTaskFeatureSet(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 32));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ProtoPlayMediaTaskFeatureSet.actionState.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ProtoNavigationFeatures.navigationSource.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoNavigationFeatures(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoPlayMediaTaskFeatureSet.clearActionState()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ProtoNavigationUserFollowupContext.timestampInMs.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t ProtoNavigationFeatures.timestampInMs.setter(uint64_t a1)
{
  result = type metadata accessor for ProtoNavigationFeatures(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoNavigationFeatures.timestampInMs.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoNavigationFeatures(0) + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return ProtoSiriTaskEvaluationSummary.startTimestampMs.modify;
}

Swift::Void __swiftcall ProtoNavigationFeatures.clearTimestampInMs()()
{
  v1 = v0 + *(type metadata accessor for ProtoNavigationFeatures(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ProtoNavigationFeatures.poiIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoNavigationFeatures(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for ProtoNavigationFeatures.poiIdentifier : ProtoNavigationFeatures@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoNavigationFeatures(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for ProtoNavigationFeatures.poiIdentifier : ProtoNavigationFeatures(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoNavigationFeatures(0) + 40));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoNavigationFeatures.poiIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoNavigationFeatures(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ProtoNavigationFeatures.poiIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoNavigationFeatures(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

Swift::Void __swiftcall ProtoNavigationFeatures.clearPoiIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for ProtoNavigationFeatures(0) + 40));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

int *ProtoNavigationFeatures.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoNavigationFeatures(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (a1 + result[10]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t ProtoTaskEngagementFeatureSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in ProtoTaskEngagementFeatureSet.decodeMessage<A>(decoder:)();
          break;
        case 2:
          v11 = *(type metadata accessor for ProtoTaskEngagementFeatureSet(0) + 24);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
        case 1:
          closure #1 in ProtoTaskEngagementFeatureSet.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for ProtoTaskEngagementFeatureSet, lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType);
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in ProtoTaskEngagementFeatureSet.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ProtoTaskEngagementFeatureSet(0) + 28);
  type metadata accessor for ProtoTaskFeatureSet(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoTaskFeatureSet and conformance ProtoTaskFeatureSet, type metadata accessor for ProtoTaskFeatureSet);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ProtoTaskEngagementFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoTaskEngagementFeatureSet.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    closure #2 in ProtoTaskEngagementFeatureSet.traverse<A>(visitor:)(v3);
    closure #3 in ProtoTaskEngagementFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoTaskEngagementFeatureSet.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  if (*(a1 + *(result + 20)) != 14)
  {
    v3 = *(a1 + *(result + 20));
    lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ProtoTaskEngagementFeatureSet.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ProtoTaskEngagementFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoTaskFeatureSet(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v14 + 28), v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v13, type metadata accessor for ProtoTaskFeatureSet);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoTaskFeatureSet and conformance ProtoTaskFeatureSet, type metadata accessor for ProtoTaskFeatureSet);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ProtoTaskFeatureSet(v13, type metadata accessor for ProtoTaskFeatureSet);
}

uint64_t protocol witness for Message.init() in conformance ProtoTaskEngagementFeatureSet@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 14;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1[7];
  v7 = type metadata accessor for ProtoTaskFeatureSet(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoTaskEngagementFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoTaskEngagementFeatureSet and conformance ProtoTaskEngagementFeatureSet, type metadata accessor for ProtoTaskEngagementFeatureSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoTaskEngagementFeatureSet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoTaskEngagementFeatureSet and conformance ProtoTaskEngagementFeatureSet, type metadata accessor for ProtoTaskEngagementFeatureSet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoTaskEngagementFeatureSet()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoTaskEngagementFeatureSet and conformance ProtoTaskEngagementFeatureSet, type metadata accessor for ProtoTaskEngagementFeatureSet);

  return Message.hash(into:)();
}

uint64_t ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (result <= 102)
    {
      switch(result)
      {
        case 1:
          v9 = *(type metadata accessor for ProtoTaskFeatureSet(0) + 24);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 101:
          closure #2 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 102:
          closure #3 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }

    else if (result > 104)
    {
      if (result == 105)
      {
        closure #6 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 106)
      {
        closure #7 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 103)
    {
      closure #4 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else
    {
      closure #5 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ProtoStartCallTaskFeatureSet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of DateInterval?(v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v14, v22, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v22, v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of ProtoTaskFeatureSet(v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
      v33 = v48;
    }

    else
    {
      outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMR);
      v35 = v43;
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v20, v43, type metadata accessor for ProtoStartCallTaskFeatureSet);
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v35, v28, type metadata accessor for ProtoStartCallTaskFeatureSet);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoStartCallTaskFeatureSet and conformance ProtoStartCallTaskFeatureSet, type metadata accessor for ProtoStartCallTaskFeatureSet);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMR);
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v28, v36, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMR);
    return outlined destroy of DateInterval?(v36, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMR);
  }

  else
  {
    v39 = v44;
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v36, v44, type metadata accessor for ProtoStartCallTaskFeatureSet);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVSgMR);
    v40 = v42;
    outlined destroy of DateInterval?(v42, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v39, v40, type metadata accessor for ProtoStartCallTaskFeatureSet);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ProtoSendMessageTaskFeatureSet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMd, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of DateInterval?(v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v14, v22, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v22, v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMd, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMR);
      v35 = v44;
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v20, v44, type metadata accessor for ProtoSendMessageTaskFeatureSet);
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v35, v28, type metadata accessor for ProtoSendMessageTaskFeatureSet);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of ProtoTaskFeatureSet(v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoSendMessageTaskFeatureSet and conformance ProtoSendMessageTaskFeatureSet, type metadata accessor for ProtoSendMessageTaskFeatureSet);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMd, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMR);
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v28, v36, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMd, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMd, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMR);
    return outlined destroy of DateInterval?(v36, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMd, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMR);
  }

  else
  {
    v39 = v43;
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v36, v43, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMd, &_s18SiriTaskEngagement016ProtoSendMessageB10FeatureSetVSgMR);
    v40 = v42;
    outlined destroy of DateInterval?(v42, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v39, v40, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #4 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMd, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of DateInterval?(v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v14, v22, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v22, v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMd, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMR);
      v35 = v44;
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v20, v44, type metadata accessor for ProtoAlarmTaskFeatureSet);
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v35, v28, type metadata accessor for ProtoAlarmTaskFeatureSet);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of ProtoTaskFeatureSet(v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoAlarmTaskFeatureSet and conformance ProtoAlarmTaskFeatureSet, type metadata accessor for ProtoAlarmTaskFeatureSet);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMd, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMR);
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v28, v36, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMd, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMd, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMR);
    return outlined destroy of DateInterval?(v36, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMd, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMR);
  }

  else
  {
    v39 = v43;
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v36, v43, type metadata accessor for ProtoAlarmTaskFeatureSet);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMd, &_s18SiriTaskEngagement010ProtoAlarmB10FeatureSetVSgMR);
    v40 = v42;
    outlined destroy of DateInterval?(v42, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v39, v40, type metadata accessor for ProtoAlarmTaskFeatureSet);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #5 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMd, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of DateInterval?(v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v14, v22, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v22, v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMd, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMR);
      v35 = v44;
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v20, v44, type metadata accessor for ProtoReminderTaskFeatureSet);
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v35, v28, type metadata accessor for ProtoReminderTaskFeatureSet);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of ProtoTaskFeatureSet(v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoReminderTaskFeatureSet and conformance ProtoReminderTaskFeatureSet, type metadata accessor for ProtoReminderTaskFeatureSet);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMd, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMR);
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v28, v36, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMd, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMd, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMR);
    return outlined destroy of DateInterval?(v36, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMd, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMR);
  }

  else
  {
    v39 = v43;
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v36, v43, type metadata accessor for ProtoReminderTaskFeatureSet);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMd, &_s18SiriTaskEngagement013ProtoReminderB10FeatureSetVSgMR);
    v40 = v42;
    outlined destroy of DateInterval?(v42, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v39, v40, type metadata accessor for ProtoReminderTaskFeatureSet);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #6 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of DateInterval?(v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v14, v22, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v22, v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMR);
      v35 = v44;
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v20, v44, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v35, v28, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of ProtoTaskFeatureSet(v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoPlayMediaTaskFeatureSet and conformance ProtoPlayMediaTaskFeatureSet, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMR);
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v28, v36, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMR);
    return outlined destroy of DateInterval?(v36, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMR);
  }

  else
  {
    v39 = v43;
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v36, v43, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMd, &_s18SiriTaskEngagement014ProtoPlayMediaB10FeatureSetVSgMR);
    v40 = v42;
    outlined destroy of DateInterval?(v42, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v39, v40, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #7 in ProtoTaskFeatureSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of DateInterval?(v14, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v14, v22, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v22, v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
      v35 = v44;
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v20, v44, type metadata accessor for ProtoNavigationTaskFeatureSet);
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v35, v28, type metadata accessor for ProtoNavigationTaskFeatureSet);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of ProtoTaskFeatureSet(v20, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationTaskFeatureSet and conformance ProtoNavigationTaskFeatureSet, type metadata accessor for ProtoNavigationTaskFeatureSet);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v28, v36, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
    return outlined destroy of DateInterval?(v36, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
  }

  else
  {
    v39 = v43;
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v36, v43, type metadata accessor for ProtoNavigationTaskFeatureSet);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of DateInterval?(v28, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
    v40 = v42;
    outlined destroy of DateInterval?(v42, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v39, v40, type metadata accessor for ProtoNavigationTaskFeatureSet);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ProtoTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  result = closure #1 in ProtoTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoTaskFeatureSet);
  if (!v4)
  {
    outlined init with copy of ProtoSiriTaskInteractionType?(v3, v11, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    v13 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          closure #5 in ProtoTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
        }

        else if (EnumCaseMultiPayload == 4)
        {
          closure #6 in ProtoTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
        }

        else
        {
          closure #7 in ProtoTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          closure #3 in ProtoTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
        }

        else
        {
          closure #4 in ProtoTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
        }
      }

      else
      {
        closure #2 in ProtoTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      outlined destroy of ProtoTaskFeatureSet(v11, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    }

    v15 = v3 + *(type metadata accessor for ProtoTaskFeatureSet(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in ProtoTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ProtoStartCallTaskFeatureSet(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v13 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v12, type metadata accessor for ProtoStartCallTaskFeatureSet);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoStartCallTaskFeatureSet and conformance ProtoStartCallTaskFeatureSet, type metadata accessor for ProtoStartCallTaskFeatureSet);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoStartCallTaskFeatureSet);
  }

  result = outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  __break(1u);
  return result;
}

uint64_t closure #3 in ProtoTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ProtoSendMessageTaskFeatureSet(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v13 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v12, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoSendMessageTaskFeatureSet and conformance ProtoSendMessageTaskFeatureSet, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoSendMessageTaskFeatureSet);
  }

  result = outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  __break(1u);
  return result;
}

uint64_t closure #4 in ProtoTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v13 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v12, type metadata accessor for ProtoAlarmTaskFeatureSet);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoAlarmTaskFeatureSet and conformance ProtoAlarmTaskFeatureSet, type metadata accessor for ProtoAlarmTaskFeatureSet);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoAlarmTaskFeatureSet);
  }

  result = outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  __break(1u);
  return result;
}

uint64_t closure #5 in ProtoTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v13 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v12, type metadata accessor for ProtoReminderTaskFeatureSet);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoReminderTaskFeatureSet and conformance ProtoReminderTaskFeatureSet, type metadata accessor for ProtoReminderTaskFeatureSet);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoReminderTaskFeatureSet);
  }

  result = outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  __break(1u);
  return result;
}

uint64_t closure #6 in ProtoTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v13 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v12, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoPlayMediaTaskFeatureSet and conformance ProtoPlayMediaTaskFeatureSet, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
  }

  result = outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  __break(1u);
  return result;
}

uint64_t closure #7 in ProtoTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v13 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v12, type metadata accessor for ProtoNavigationTaskFeatureSet);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationTaskFeatureSet and conformance ProtoNavigationTaskFeatureSet, type metadata accessor for ProtoNavigationTaskFeatureSet);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoNavigationTaskFeatureSet);
  }

  result = outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoTaskFeatureSet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  v7 = (a2 + *(a1 + 24));
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoTaskFeatureSet and conformance ProtoTaskFeatureSet, type metadata accessor for ProtoTaskFeatureSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoTaskFeatureSet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoTaskFeatureSet and conformance ProtoTaskFeatureSet, type metadata accessor for ProtoTaskFeatureSet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoTaskFeatureSet()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoTaskFeatureSet and conformance ProtoTaskFeatureSet, type metadata accessor for ProtoTaskFeatureSet);

  return Message.hash(into:)();
}

uint64_t ProtoStartCallTaskFeatureSet.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for ProtoStartCallTaskFeatureSet(0) + 24);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for ProtoContactEntitySignal(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal, type metadata accessor for ProtoContactEntitySignal);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ProtoStartCallTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in ProtoStartCallTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoStartCallTaskFeatureSet);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ProtoContactEntitySignal(0);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal, type metadata accessor for ProtoContactEntitySignal);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for ProtoStartCallTaskFeatureSet(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoStartCallTaskFeatureSet@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  v6[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoStartCallTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoStartCallTaskFeatureSet and conformance ProtoStartCallTaskFeatureSet, type metadata accessor for ProtoStartCallTaskFeatureSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoStartCallTaskFeatureSet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoStartCallTaskFeatureSet and conformance ProtoStartCallTaskFeatureSet, type metadata accessor for ProtoStartCallTaskFeatureSet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoStartCallTaskFeatureSet()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoStartCallTaskFeatureSet and conformance ProtoStartCallTaskFeatureSet, type metadata accessor for ProtoStartCallTaskFeatureSet);

  return Message.hash(into:)();
}

uint64_t ProtoSendMessageTaskFeatureSet.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ProtoContactEntitySignal(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal, type metadata accessor for ProtoContactEntitySignal);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ProtoSendMessageTaskFeatureSet.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ProtoContactEntitySignal(0), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal, type metadata accessor for ProtoContactEntitySignal), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ProtoSendMessageTaskFeatureSet(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoSendMessageTaskFeatureSet@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoSendMessageTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoSendMessageTaskFeatureSet and conformance ProtoSendMessageTaskFeatureSet, type metadata accessor for ProtoSendMessageTaskFeatureSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoSendMessageTaskFeatureSet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoSendMessageTaskFeatureSet and conformance ProtoSendMessageTaskFeatureSet, type metadata accessor for ProtoSendMessageTaskFeatureSet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoSendMessageTaskFeatureSet()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoSendMessageTaskFeatureSet and conformance ProtoSendMessageTaskFeatureSet, type metadata accessor for ProtoSendMessageTaskFeatureSet);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ProtoSendMessageTaskFeatureSet(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ18SiriTaskEngagement24ProtoContactEntitySignalV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t ProtoAlarmTaskFeatureSet.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for ProtoAlarmTaskFeatureSet(0) + 20);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in ProtoAlarmTaskFeatureSet.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #2 in ProtoAlarmTaskFeatureSet.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ProtoAlarmTaskFeatureSet(0) + 24);
  type metadata accessor for ProtoDateComponentSignal(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoDateComponentSignal and conformance ProtoDateComponentSignal, type metadata accessor for ProtoDateComponentSignal);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ProtoAlarmTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoAlarmTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoAlarmTaskFeatureSet);
  if (!v4)
  {
    closure #2 in ProtoAlarmTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in ProtoAlarmTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoDateComponentSignal(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v14 + 24), v8, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v13, type metadata accessor for ProtoDateComponentSignal);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoDateComponentSignal and conformance ProtoDateComponentSignal, type metadata accessor for ProtoDateComponentSignal);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ProtoTaskFeatureSet(v13, type metadata accessor for ProtoDateComponentSignal);
}

uint64_t protocol witness for Message.init() in conformance ProtoAlarmTaskFeatureSet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for ProtoDateComponentSignal(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v5, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoAlarmTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoAlarmTaskFeatureSet and conformance ProtoAlarmTaskFeatureSet, type metadata accessor for ProtoAlarmTaskFeatureSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoAlarmTaskFeatureSet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoAlarmTaskFeatureSet and conformance ProtoAlarmTaskFeatureSet, type metadata accessor for ProtoAlarmTaskFeatureSet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoAlarmTaskFeatureSet()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoAlarmTaskFeatureSet and conformance ProtoAlarmTaskFeatureSet, type metadata accessor for ProtoAlarmTaskFeatureSet);

  return Message.hash(into:)();
}

uint64_t ProtoReminderTaskFeatureSet.decodeMessage<A>(decoder:)()
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
        v5 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 20);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 24);
        goto LABEL_14;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v4 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 28);
LABEL_14:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 4:
          closure #4 in ProtoReminderTaskFeatureSet.decodeMessage<A>(decoder:)();
          break;
        case 5:
          closure #5 in ProtoReminderTaskFeatureSet.decodeMessage<A>(decoder:)();
          break;
      }
    }
  }
}

uint64_t closure #4 in ProtoReminderTaskFeatureSet.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 32);
  type metadata accessor for ProtoDateTimeEntitySignal(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoDateTimeEntitySignal and conformance ProtoDateTimeEntitySignal, type metadata accessor for ProtoDateTimeEntitySignal);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}