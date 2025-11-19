SiriKitRuntime::ConversationCanHandleResult::CodingKeys_optional __swiftcall ConversationCanHandleResult.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationCanHandleResult.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t ConversationCanHandleResult.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x6564756C637865;
  v2 = 0xD000000000000011;
  if (a1 != 2)
  {
    v2 = 0x6E656449776F6C66;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationCanHandleResult.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001DCA7A890;
  v5 = 0x6E656449776F6C66;
  if (v2 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xEE00726569666974;
  }

  v6 = 0xD000000000000011;
  if (*a1)
  {
    v6 = 0x6564756C637865;
  }

  else
  {
    v3 = 0x80000001DCA7A870;
  }

  if (*a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      v10 = 0x80000001DCA7A890;
      if (v7 != 0xD000000000000011)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v10 = 0xEE00726569666974;
      if (v7 != 0x6E656449776F6C66)
      {
LABEL_28:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (*a2)
    {
      v9 = 0x6564756C637865;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (*a2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0x80000001DCA7A870;
    }

    if (v7 != v9)
    {
      goto LABEL_28;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_28;
  }

  v11 = 1;
LABEL_29:

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationCanHandleResult.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationCanHandleResult.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationCanHandleResult.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationCanHandleResult.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationCanHandleResult.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ConversationCanHandleResult.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6564756C637865;
  v4 = 0x80000001DCA7A890;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x6E656449776F6C66;
    v4 = 0xEE00726569666974;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001DCA7A870;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ConversationCanHandleResult.CodingKeys()
{
  v1 = 0x6564756C637865;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6E656449776F6C66;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ConversationCanHandleResult.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationCanHandleResult.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConversationCanHandleResult.CodingKeys(uint64_t a1)
{
  CanHandle = lazy protocol witness table accessor for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, CanHandle);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConversationCanHandleResult.CodingKeys(uint64_t a1)
{
  CanHandle = lazy protocol witness table accessor for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, CanHandle);
}

id ConversationCanHandleResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationCanHandleResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationCanHandleResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static ConversationCanHandleResult.reformTo(input:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Input();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  CanHandleResult = type metadata accessor for ConversationCanHandleResult();
  v14 = objc_allocWithZone(CanHandleResult);
  v14[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 0;
  v14[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(v9, &v14[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v5, &v14[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17.receiver = v14;
  v17.super_class = CanHandleResult;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  return v15;
}

uint64_t lazy protocol witness table accessor for type Input and conformance Input(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized ConversationCanHandleResult.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationCanHandleResult.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys);
  }

  return result;
}

void type metadata completion function for ConversationCanHandleResult()
{
  _s11SiriKitFlow5InputVSgMaTm_0(319, &lazy cache variable for type metadata for Input?, MEMORY[0x1E69D0100]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    _s11SiriKitFlow5InputVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void _s11SiriKitFlow5InputVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t ConversationCommitResultXPC.prescribedTool.getter()
{
  result = *(v0 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool);
  v2 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool + 8);
  return result;
}

void *ConversationCommitResultXPC.error.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_error);
  v2 = v1;
  return v1;
}

uint64_t ConversationCommitResultXPC.nextPluginActionData.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData + 8));
  return v1;
}

uint64_t ConversationCommitResultXPC.reparseExecutionRequestID.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID);
  v2 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID + 8);

  return v1;
}

uint64_t ConversationCommitResultXPC.reparseUserID.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_reparseUserID);
  v2 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_reparseUserID + 8);

  return v1;
}

void *ConversationCommitResultXPC.siriXRedirectContext.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext);
  v2 = v1;
  return v1;
}

uint64_t FlowUnhandledReason.xpcRepresentation.getter()
{
  v1 = type metadata accessor for FlowUnhandledReason();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v0, v1, v4);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x1E69CFB50])
  {
    (*(v2 + 96))(v6, v1);
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
    return 4;
  }

  else if (v7 == *MEMORY[0x1E69CFB58])
  {
    (*(v2 + 8))(v6, v1);
    return 5;
  }

  else if (v7 == *MEMORY[0x1E69CFB70])
  {
    return 1;
  }

  else if (v7 == *MEMORY[0x1E69CFB60])
  {
    return 2;
  }

  else if (v7 == *MEMORY[0x1E69CFB78])
  {
    return 3;
  }

  else if (v7 == *MEMORY[0x1E69CFB68])
  {
    return 6;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.executor);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DC659000, v10, v11, "Unknown FlowUnhandledReason, returning nil", v12, 2u);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }
}

uint64_t PrescribedTool.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PrescribedTool();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  (*(v3 + 16))(&v19 - v9, v1, v2, v8);
  static PrescribedTool.searchTool.getter();
  lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type PrescribedTool and conformance PrescribedTool, MEMORY[0x1E69CFE68]);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if (v11)
  {
    v12(v10, v2);
    return 0;
  }

  else
  {
    static PrescribedTool.generateKnowledgeResponseIntentTool.getter();
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    v12(v6, v2);
    v12(v10, v2);
    if (v14)
    {
      return 1;
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.executor);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1DC659000, v16, v17, "Unknown PrescribedToolXPC, returning nil", v18, 2u);
        MEMORY[0x1E12A2F50](v18, -1, -1);
      }

      return 0;
    }
  }
}

id SiriXRedirectContext.xpcRepresentation.getter()
{
  v0 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SiriXRedirectContext.reason.getter();
  v5 = SiriXRedirectContext.RedirectReason.xpcRepresentation.getter();
  (*(v1 + 8))(v4, v0);
  v6 = type metadata accessor for SiriXRedirectContextXPC();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___SKRSiriXRedirectContext_reason] = v5;
  v9.receiver = v7;
  v9.super_class = v6;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t PrescribedToolXPC.swiftRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    static PrescribedTool.generateKnowledgeResponseIntentTool.getter();
  }

  else
  {
    if (a1)
    {
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    static PrescribedTool.searchTool.getter();
  }

  v3 = type metadata accessor for PrescribedTool();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t static ConversationCommitResultXPC.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ConversationCommitResultXPC.supportsSecureCoding = a1;
  return result;
}

unint64_t PrescribedToolXPC.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t ConversationCommitResultXPC.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000019;
    v6 = 0x5565737261706572;
    if (a1 != 8)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x726F727265;
    if (a1 != 5)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 0x6574656C706D6F63;
    v3 = 0xD000000000000013;
    if (a1 != 3)
    {
      v3 = 0x6269726373657270;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6154657669746361;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationCommitResultXPC.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = ConversationCommitResultXPC.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == ConversationCommitResultXPC.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationCommitResultXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationCommitResultXPC.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationCommitResultXPC.CodingKeys()
{
  ConversationCommitResultXPC.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationCommitResultXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationCommitResultXPC.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationCommitResultXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationCommitResultXPC.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationCommitResultXPC.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ConversationCommitResultXPC.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ConversationCommitResultXPC.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationCommitResultXPC.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConversationCommitResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConversationCommitResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationCommitResultTypeXPC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized ConversationCommitResultTypeXPC.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance PrescribedToolXPC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RedirectReasonTypeXPC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized RedirectReasonTypeXPC.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t RedirectReasonXPC.rewrittenUtterance.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRRedirectReason_rewrittenUtterance);
  v2 = *(v0 + OBJC_IVAR___SKRRedirectReason_rewrittenUtterance + 8);

  return v1;
}

id RedirectReasonXPC.__allocating_init(type:rewrittenUtterance:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___SKRRedirectReason_type] = a1;
  v8 = &v7[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id RedirectReasonXPC.init(type:rewrittenUtterance:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___SKRRedirectReason_type] = a1;
  v4 = &v3[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for RedirectReasonXPC();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t RedirectReasonXPC.swiftRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR___SKRRedirectReason_type);
  if (v9 <= 1)
  {
    if (!v9)
    {
      v10 = v6;
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type SiriXRedirectContext.RedirectReason.NoMatchingTool and conformance SiriXRedirectContext.RedirectReason.NoMatchingTool, MEMORY[0x1E69CFA10]);
      static Buildable.builder()();
      Builder.build()();

      (*(v4 + 32))(a1, v8, v10);
      v11 = MEMORY[0x1E69CFA18];
LABEL_8:
      v14 = *v11;
      v15 = type metadata accessor for SiriXRedirectContext.RedirectReason();
      v16 = *(v15 - 8);
      (*(v16 + 104))(a1, v14, v15);
      return (*(v16 + 56))(a1, 0, 1, v15);
    }

    if (v9 == 1)
    {
      type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type SiriXRedirectContext.RedirectReason.UnableToHandleRequest and conformance SiriXRedirectContext.RedirectReason.UnableToHandleRequest, MEMORY[0x1E69CFA38]);
      static Buildable.builder()();
      swift_getKeyPath();
      v13 = *(v1 + OBJC_IVAR___SKRRedirectReason_rewrittenUtterance + 8);
      v23 = *(v1 + OBJC_IVAR___SKRRedirectReason_rewrittenUtterance);
      v24 = v13;

      Builder.subscript.setter();
      Builder.build()();

      v11 = MEMORY[0x1E69CFA20];
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v12 = MEMORY[0x1E69CF9F8];
  }

  else
  {
    if (v9 != 3)
    {
LABEL_14:
      v23 = *(v1 + OBJC_IVAR___SKRRedirectReason_type);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v12 = MEMORY[0x1E69CFA40];
  }

  v18 = *v12;
  v19 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v22 = *(v19 - 8);
  (*(v22 + 104))(a1, v18, v19);
  v20 = *(v22 + 56);

  return v20(a1, 0, 1, v19);
}

uint64_t key path getter for SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance : SiriXRedirectContext.RedirectReason.UnableToHandleRequest@<X0>(uint64_t *a1@<X8>)
{
  result = SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall RedirectReasonXPC.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___SKRRedirectReason_type);
  v4 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR___SKRRedirectReason_rewrittenUtterance + 8))
  {
    v5 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR___SKRRedirectReason_rewrittenUtterance));
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7A980);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

uint64_t RedirectReasonXPC.init(coder:)(void *a1)
{
  v2 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000);
  v3 = [a1 decodeIntegerForKey_];

  if (v3 > 3)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v3;
      _os_log_impl(&dword_1DC659000, v12, v13, "Error decoding RedirectReasonTypeXPC: Unknown RedirectReasonTypeXPC:%ld", v14, 0xCu);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v4 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7A980);
    v5 = [a1 containsValueForKey_];

    if (v5 && (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0), (v6 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    ObjectType = swift_getObjectType();
    v17 = (*(ObjectType + 96))(v3, v8, v10);

    swift_deallocPartialClassInstance();
    return v17;
  }
}

SiriKitRuntime::RedirectReasonXPC::CodingKeys_optional __swiftcall RedirectReasonXPC.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RedirectReasonXPC.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_RedirectReasonXPC_CodingKeys_rewrittenUtterance;
  }

  else
  {
    v4.value = SiriKitRuntime_RedirectReasonXPC_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

SiriKitRuntime::RedirectReasonXPC::CodingKeys_optional __swiftcall RedirectReasonXPC.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RedirectReasonXPC.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_RedirectReasonXPC_CodingKeys_rewrittenUtterance;
  }

  else
  {
    v4.value = SiriKitRuntime_RedirectReasonXPC_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t RedirectReasonXPC.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RedirectReasonXPC.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0x80000001DCA7A980;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0x80000001DCA7A980;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RedirectReasonXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RedirectReasonXPC.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RedirectReasonXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RedirectReasonXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RedirectReasonXPC.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance RedirectReasonXPC.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DCA7A980;
  v3 = 1701869940;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance RedirectReasonXPC.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RedirectReasonXPC.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RedirectReasonXPC.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RedirectReasonXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RedirectReasonXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SiriXRedirectContextXPC.__allocating_init(reason:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___SKRSiriXRedirectContext_reason] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SiriXRedirectContextXPC.init(reason:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SKRSiriXRedirectContext_reason] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriXRedirectContextXPC();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t SiriXRedirectContextXPC.swiftRepresentation.getter()
{
  type metadata accessor for SiriXRedirectContext();
  lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type SiriXRedirectContext and conformance SiriXRedirectContext, MEMORY[0x1E69CFA50]);
  return static Buildable.withBuilder(_:)();
}

uint64_t closure #1 in SiriXRedirectContextXPC.swiftRepresentation.getter(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextV14RedirectReasonOSgMd, &_s11SiriKitFlow0A16XRedirectContextV14RedirectReasonOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *a1;
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & **(a2 + OBJC_IVAR___SKRSiriXRedirectContext_reason)) + 0x68))();
  return Builder.subscript.setter();
}

Swift::Void __swiftcall SiriXRedirectContextXPC.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___SKRSiriXRedirectContext_reason);
  v4 = MEMORY[0x1E12A1410](0x6E6F73616572, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

uint64_t SiriXRedirectContextXPC.init(coder:)(void *a1)
{
  v2 = MEMORY[0x1E12A1410](0x6E6F73616572, 0xE600000000000000);
  v3 = [a1 containsValueForKey_];

  if (v3 && (type metadata accessor for RedirectReasonXPC(), (v4 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (*(ObjectType + 88))(v5);

    swift_deallocPartialClassInstance();
    return v7;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.executor);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DC659000, v10, v11, "Unable to initialize SiriXRedirectContextXPC", v12, 2u);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

BOOL SiriXRedirectContextXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriXRedirectContextXPC.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL SiriXRedirectContextXPC.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriXRedirectContextXPC.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriXRedirectContextXPC.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriXRedirectContextXPC.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SiriXRedirectContextXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance SiriXRedirectContextXPC.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriXRedirectContextXPC.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance SiriXRedirectContextXPC.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriXRedirectContextXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriXRedirectContextXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SiriXRedirectContextXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationCommitResultXPC.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationCommitResultTypeXPC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationCommitResultTypeXPC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FlowUnhandledReasonXPC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized FlowUnhandledReasonXPC.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SiriXRedirectContext.RedirectReason.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v1, v7, v10);
  v13 = (*(v8 + 88))(v12, v7);
  if (v13 == *MEMORY[0x1E69CFA18])
  {
    v14 = type metadata accessor for RedirectReasonXPC();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR___SKRRedirectReason_type] = 0;
    v16 = &v15[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
    *v16 = 0;
    *(v16 + 1) = 0;
    v32.receiver = v15;
    v32.super_class = v14;
    v17 = objc_msgSendSuper2(&v32, sel_init);
    (*(v8 + 8))(v12, v7);
    return v17;
  }

  if (v13 == *MEMORY[0x1E69CFA20])
  {
    (*(v8 + 96))(v12, v7);
    (*(v3 + 32))(v6, v12, v2);
    v18 = SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
    v20 = v19;
    v21 = type metadata accessor for RedirectReasonXPC();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR___SKRRedirectReason_type] = 1;
    v23 = &v22[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
    *v23 = v18;
    v23[1] = v20;
    v34.receiver = v22;
    v34.super_class = v21;
    v17 = objc_msgSendSuper2(&v34, sel_init);
    (*(v3 + 8))(v6, v2);
    return v17;
  }

  if (v13 == *MEMORY[0x1E69CF9F8])
  {
    v24 = type metadata accessor for RedirectReasonXPC();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR___SKRRedirectReason_type] = 2;
    v26 = &v25[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
    *v26 = 0;
    *(v26 + 1) = 0;
    v33.receiver = v25;
    v33.super_class = v24;
    return objc_msgSendSuper2(&v33, sel_init);
  }

  if (v13 == *MEMORY[0x1E69CFA40])
  {
    v28 = type metadata accessor for RedirectReasonXPC();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR___SKRRedirectReason_type] = 3;
    v30 = &v29[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
    *v30 = 0;
    *(v30 + 1) = 0;
    v35.receiver = v29;
    v35.super_class = v28;
    return objc_msgSendSuper2(&v35, sel_init);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id specialized static ConversationCommitResultXPC.flowWasNotHandled(flowUnhandledReason:)(uint64_t a1)
{
  v56 = a1;
  v1 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v54 = *(v1 - 8);
  v55 = v1;
  v2 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SiriXRedirectContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrescribedTool();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowUnhandledReason();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v51 - v24;
  (*(v9 + 56))(&v51 - v24, 1, 1, v8, v23);
  v57 = v4;
  v58 = v5;
  v26 = *(v5 + 56);
  v26(v20, 1, 1, v4);
  (*(v13 + 16))(v16);
  v27 = (*(v13 + 88))(v16, v12);
  if (v27 == *MEMORY[0x1E69CFB50])
  {
    (*(v13 + 96))(v16, v12);
    outlined assign with take of PrescribedTool?(v16, v25);
  }

  else if (v27 == *MEMORY[0x1E69CFB58])
  {
    (*(v13 + 96))(v16, v12);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
    v28 = v57;
    (*(v58 + 32))(v20, v16, v57);
    v26(v20, 0, 1, v28);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
  }

  v29 = FlowUnhandledReason.xpcRepresentation.getter();
  v30 = 1;
  if ((*(v9 + 48))(v25, 1, v8))
  {
    v31 = 0;
  }

  else
  {
    v32 = v51;
    (*(v9 + 16))(v51, v25, v8);
    v31 = PrescribedTool.xpcRepresentation.getter();
    v30 = v33;
    (*(v9 + 8))(v32, v8);
  }

  v34 = v57;
  v35 = v58;
  v36 = off_1E8646000;
  if ((*(v58 + 48))(v20, 1, v57))
  {
    v37 = 0;
  }

  else
  {
    v38 = v53;
    (*(v35 + 16))(v53, v20, v34);
    v39 = v52;
    SiriXRedirectContext.reason.getter();
    v40 = SiriXRedirectContext.RedirectReason.xpcRepresentation.getter();
    (*(v54 + 8))(v39, v55);
    v41 = type metadata accessor for SiriXRedirectContextXPC();
    v42 = objc_allocWithZone(v41);
    *&v42[OBJC_IVAR___SKRSiriXRedirectContext_reason] = v40;
    v59.receiver = v42;
    v59.super_class = v41;
    v36 = off_1E8646000;
    v37 = objc_msgSendSuper2(&v59, sel_init);
    (*(v35 + 8))(v38, v34);
  }

  v43 = type metadata accessor for ConversationCommitResultXPC();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR___SKRConversationCommitResult_type] = 2;
  v45 = MEMORY[0x1E69E7CC0];
  *&v44[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = MEMORY[0x1E69E7CC0];
  *&v44[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = v45;
  *&v44[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = v29;
  v46 = &v44[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v46 = v31;
  v46[8] = v30 & 1;
  *&v44[OBJC_IVAR___SKRConversationCommitResult_error] = 0;
  *&v44[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData] = xmmword_1DCA69F00;
  v47 = &v44[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  *v47 = 0;
  *(v47 + 1) = 0;
  v48 = &v44[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v48 = 0;
  *(v48 + 1) = 0;
  *&v44[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = v37;
  v60.receiver = v44;
  v60.super_class = v43;
  v49 = objc_msgSendSuper2(&v60, v36[390]);
  outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  return v49;
}

id specialized static ConversationCommitResultXPC.flowWantsToRedirect(nextPluginAction:)()
{
  v0 = PluginAction.serialize()();
  v2 = v1;
  v3 = type metadata accessor for ConversationCommitResultXPC();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___SKRConversationCommitResult_type] = 3;
  v5 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = v5;
  *&v4[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = 0;
  v6 = &v4[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v6 = 0;
  v6[8] = 1;
  *&v4[OBJC_IVAR___SKRConversationCommitResult_error] = 0;
  v7 = &v4[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData];
  *v7 = v0;
  v7[1] = v2;
  v8 = &v4[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v4[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = 0;
  v11.receiver = v4;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id specialized static ConversationCommitResultXPC.flowNeedsReparse(executionRequestID:userID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ConversationCommitResultXPC();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___SKRConversationCommitResult_type] = 4;
  v10 = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = v10;
  *&v9[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = 0;
  v11 = &v9[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v11 = 0;
  v11[8] = 1;
  *&v9[OBJC_IVAR___SKRConversationCommitResult_error] = 0;
  *&v9[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData] = xmmword_1DCA69F00;
  v12 = &v9[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v9[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v9[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = 0;
  v15.receiver = v9;
  v15.super_class = v8;

  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t outlined init with take of PrescribedTool?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PrescribedTool?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized static ConversationCommitResultXPC.error(_:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  *(inited + 32) = 0x7470697263736564;
  *(inited + 40) = 0xEB000000006E6F69;
  v18 = a1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = String.init<A>(describing:)();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA7F880);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithDomain:v7 code:-1 userInfo:isa];

  v10 = type metadata accessor for ConversationCommitResultXPC();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___SKRConversationCommitResult_type] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *&v11[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = MEMORY[0x1E69E7CC0];
  *&v11[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = v12;
  *&v11[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = 0;
  v13 = &v11[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v13 = 0;
  v13[8] = 1;
  *&v11[OBJC_IVAR___SKRConversationCommitResult_error] = v9;
  *&v11[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData] = xmmword_1DCA69F00;
  v14 = &v11[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v11[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v11[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = 0;
  v17.receiver = v11;
  v17.super_class = v10;
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t specialized ConversationCommitResultXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationCommitResultXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized RedirectReasonTypeXPC.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationCommitResultTypeXPC and conformance ConversationCommitResultTypeXPC()
{
  result = lazy protocol witness table cache variable for type ConversationCommitResultTypeXPC and conformance ConversationCommitResultTypeXPC;
  if (!lazy protocol witness table cache variable for type ConversationCommitResultTypeXPC and conformance ConversationCommitResultTypeXPC)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCommitResultTypeXPC and conformance ConversationCommitResultTypeXPC);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrescribedToolXPC and conformance PrescribedToolXPC()
{
  result = lazy protocol witness table cache variable for type PrescribedToolXPC and conformance PrescribedToolXPC;
  if (!lazy protocol witness table cache variable for type PrescribedToolXPC and conformance PrescribedToolXPC)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrescribedToolXPC and conformance PrescribedToolXPC);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RedirectReasonTypeXPC and conformance RedirectReasonTypeXPC()
{
  result = lazy protocol witness table cache variable for type RedirectReasonTypeXPC and conformance RedirectReasonTypeXPC;
  if (!lazy protocol witness table cache variable for type RedirectReasonTypeXPC and conformance RedirectReasonTypeXPC)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedirectReasonTypeXPC and conformance RedirectReasonTypeXPC);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlowUnhandledReasonXPC and conformance FlowUnhandledReasonXPC()
{
  result = lazy protocol witness table cache variable for type FlowUnhandledReasonXPC and conformance FlowUnhandledReasonXPC;
  if (!lazy protocol witness table cache variable for type FlowUnhandledReasonXPC and conformance FlowUnhandledReasonXPC)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowUnhandledReasonXPC and conformance FlowUnhandledReasonXPC);
  }

  return result;
}

void *assignWithCopy for ConversationCommitResult(void *a1, void *a2)
{
  if (a1 != a2)
  {
    outlined destroy of ConversationCommitResult(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v5 = type metadata accessor for PluginAction();
        (*(*(v5 - 8) + 16))(a1, a2, v5);
      }

      else
      {
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v6 = type metadata accessor for FlowUnhandledReason();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
      a1[1] = a2[1];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t outlined destroy of ConversationCommitResult(uint64_t a1)
{
  v2 = type metadata accessor for ConversationCommitResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeWithTake for ConversationCommitResult(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for PluginAction();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for FlowUnhandledReason();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithTake for ConversationCommitResult(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ConversationCommitResult(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for PluginAction();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for FlowUnhandledReason();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t type metadata completion function for ConversationCommitResult()
{
  result = type metadata accessor for FlowUnhandledReason();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for PluginAction();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RedirectReasonXPC.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RedirectReasonXPC.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined assign with take of PrescribedTool?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ConversationContextUpdateMetadata.__allocating_init(didFallbackToServer:requestType:flowPluginInfo:currentUserId:emptyServerContext:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  v8 = v7;
  v16 = *(v8 + 48);
  v17 = *(v8 + 52);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType;
  v20 = type metadata accessor for RequestType();
  (*(*(v20 - 8) + 32))(v18 + v19, a2, v20);
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = a3;
  v21 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
  v22 = type metadata accessor for UserID();
  (*(*(v22 - 8) + 32))(v18 + v21, a4, v22);
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = a5;
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = a6;
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = a7;
  return v18;
}

void *ConversationContextUpdateMetadata.flowPluginInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo);
  v2 = v1;
  return v1;
}

uint64_t ConversationContextUpdateMetadata.requestType.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t ConversationContextUpdateMetadata.init(didFallbackToServer:requestType:flowPluginInfo:currentUserId:emptyServerContext:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v7 + 16) = a1;
  v14 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType;
  v15 = type metadata accessor for RequestType();
  (*(*(v15 - 8) + 32))(v7 + v14, a2, v15);
  *(v7 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = a3;
  v16 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
  v17 = type metadata accessor for UserID();
  (*(*(v17 - 8) + 32))(v7 + v16, a4, v17);
  *(v7 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = a5;
  *(v7 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = a6;
  *(v7 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = a7;
  return v7;
}

uint64_t ConversationContextUpdateMetadata.__allocating_init(didFallbackToServer:requestType:flowPluginInfo:emptyServerContext:rcState:)(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v61 = a4;
  v60 = a3;
  v59 = a1;
  v7 = type metadata accessor for SelectedUserAttributes();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v51 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for UserID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for RequestType();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = *(v24 + 16);
  v52 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v29;
  v57 = a2;
  v28(v26);
  v54 = v22;
  v55 = v19;
  v30 = *(v19 + 16);
  v56 = v18;
  v31 = v30(v22, a5 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v18);
  v32 = *(*a5 + 792);
  v32(v31);
  v33 = v7;
  v34 = v8;
  v35 = *(v8 + 48);
  v36 = v35(v17, 1, v33);
  v49 = v11;
  if (v36)
  {
    v37 = outlined destroy of SelectedUserAttributes?(v17);
    v50 = 0;
  }

  else
  {
    (*(v34 + 16))(v11, v17, v33);
    outlined destroy of SelectedUserAttributes?(v17);
    v50 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
    v37 = (*(v34 + 8))(v11, v33);
  }

  v38 = v33;
  v39 = v34;
  v40 = v51;
  v32(v37);
  if (v35(v40, 1, v33))
  {

    v41 = v53;
    (*(v24 + 8))(v57, v53);
    outlined destroy of SelectedUserAttributes?(v40);
    v42 = 0;
  }

  else
  {
    v43 = v49;
    (*(v39 + 16))(v49, v40, v33);
    outlined destroy of SelectedUserAttributes?(v40);
    v42 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();

    v41 = v53;
    (*(v24 + 8))(v57, v53);
    (*(v39 + 8))(v43, v38);
  }

  v44 = *(v58 + 48);
  v45 = *(v58 + 52);
  v46 = swift_allocObject();
  *(v46 + 16) = v59 & 1;
  (*(v24 + 32))(v46 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v52, v41);
  *(v46 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v60;
  (*(v55 + 32))(v46 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v54, v56);
  *(v46 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v61 & 1;
  *(v46 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v50 & 1;
  *(v46 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v42 & 1;
  return v46;
}

uint64_t outlined destroy of SelectedUserAttributes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationContextUpdateMetadata.__allocating_init(didFallbackToServer:requestType:flowPluginInfo:emptyServerContext:rcState:fallbackUserId:)(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v79 = a6;
  v82 = a4;
  v81 = a3;
  v84 = a2;
  v80 = a1;
  v77 = type metadata accessor for SelectedUserAttributes();
  v8 = *(v77 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v78 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  v17 = type metadata accessor for UserID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RequestType();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v67 - v27;
  if (a5)
  {
    v75 = v6;
    v71 = v23;
    v30 = *(v23 + 16);
    v30(&v67 - v27, v84, v22, v28);
    v70 = v29;
    (v30)(v83, v29, v22);
    v72 = v21;
    v73 = v18;
    v31 = *(v18 + 16);
    v74 = v17;
    v32 = v31(v21, a5 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v17);
    v33 = *(*a5 + 792);
    v33(v32);
    v34 = *(v8 + 48);
    v35 = v77;
    v36 = v34(v16, 1, v77);
    v37 = v22;
    v68 = v8;
    if (v36)
    {
      v38 = outlined destroy of SelectedUserAttributes?(v16);
      v69 = 0;
      v39 = v35;
    }

    else
    {
      v45 = v76;
      (*(v8 + 16))(v76, v16, v35);
      outlined destroy of SelectedUserAttributes?(v16);
      v39 = v35;
      v69 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
      v46 = v45;
      v37 = v22;
      v38 = (*(v8 + 8))(v46, v35);
    }

    v47 = v78;
    v33(v38);
    v48 = v34(v47, 1, v39);
    v49 = v79;
    v50 = v84;
    if (v48)
    {

      v52 = v73;
      v51 = v74;
      (*(v73 + 8))(v49, v74);
      v53 = v71;
      v54 = *(v71 + 8);
      v54(v50, v37);
      v54(v70, v37);
      outlined destroy of SelectedUserAttributes?(v47);
      v55 = 0;
    }

    else
    {
      v56 = v47;
      v57 = v68;
      v58 = v37;
      v59 = v76;
      (*(v68 + 16))(v76, v56, v39);
      outlined destroy of SelectedUserAttributes?(v56);
      v55 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();

      v52 = v73;
      v51 = v74;
      (*(v73 + 8))(v49, v74);
      v53 = v71;
      v60 = *(v71 + 8);
      v60(v84, v58);
      v61 = v59;
      v37 = v58;
      (*(v57 + 8))(v61, v39);
      v60(v70, v58);
    }

    v62 = v81;
    v63 = v80;
    v64 = *(v75 + 48);
    v65 = *(v75 + 52);
    v44 = swift_allocObject();
    *(v44 + 16) = v63 & 1;
    (*(v53 + 32))(v44 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v83, v37);
    *(v44 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v62;
    (*(v52 + 32))(v44 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v72, v51);
    *(v44 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v82 & 1;
    *(v44 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v69 & 1;
    *(v44 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v55 & 1;
  }

  else
  {
    v40 = *(v6 + 48);
    v41 = *(v6 + 52);
    v42 = swift_allocObject();
    v43 = v23;
    v44 = v42;
    *(v42 + 16) = v80 & 1;
    (*(v43 + 32))(v42 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v84, v22);
    *(v44 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v81;
    (*(v18 + 32))(v44 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v79, v17);
    *(v44 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v82 & 1;
    *(v44 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = 0;
    *(v44 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = 0;
  }

  return v44;
}

uint64_t ConversationContextUpdateMetadata.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType;
  v2 = type metadata accessor for RequestType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
  v4 = type metadata accessor for UserID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t type metadata completion function for ConversationContextUpdateMetadata()
{
  result = type metadata accessor for RequestType();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for UserID();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id FlexibleExecutionSupportOptions.xpcRepresentation.getter()
{
  v0 = FlexibleExecutionSupportOptions.rawValue.getter();
  v1 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id ConversationFlexibleExecutionSupportXPC.__allocating_init(rawValue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t one-time initialization function for all()
{
  v0 = type metadata accessor for FlexibleExecutionSupportOptions();
  __swift_allocate_value_buffer(v0, static FlexibleExecutionSupportOptions.all);
  __swift_project_value_buffer(v0, static FlexibleExecutionSupportOptions.all);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow31FlexibleExecutionSupportOptionsVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow31FlexibleExecutionSupportOptionsVGMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1DCA65720;
  static FlexibleExecutionSupportOptions.executeBeforeEndpoint.getter();
  static FlexibleExecutionSupportOptions.inputContinuation.getter();
  lazy protocol witness table accessor for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMd, &_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMR);
  lazy protocol witness table accessor for type [FlexibleExecutionSupportOptions] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t FlexibleExecutionSupportOptions.none.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for FlexibleExecutionSupportOptions();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t one-time initialization function for none()
{
  v0 = type metadata accessor for FlexibleExecutionSupportOptions();
  __swift_allocate_value_buffer(v0, static FlexibleExecutionSupportOptions.none);
  __swift_project_value_buffer(v0, static FlexibleExecutionSupportOptions.none);
  lazy protocol witness table accessor for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMd, &_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMR);
  lazy protocol witness table accessor for type [FlexibleExecutionSupportOptions] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t static FlexibleExecutionSupportOptions.all.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FlexibleExecutionSupportOptions();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

id protocol witness for XPCConvertible.xpcRepresentation.getter in conformance FlexibleExecutionSupportOptions()
{
  v0 = FlexibleExecutionSupportOptions.rawValue.getter();
  v1 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id ConversationFlexibleExecutionSupportXPC.init(rawValue:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t static ConversationFlexibleExecutionSupportXPC.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ConversationFlexibleExecutionSupportXPC.supportsSecureCoding = a1;
  return result;
}

Swift::Void __swiftcall ConversationFlexibleExecutionSupportXPC.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue);
  v4 = MEMORY[0x1E12A1410](0x6E6F6974706FLL, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];
}

id ConversationFlexibleExecutionSupportXPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x1E12A1410](0x6E6F6974706FLL, 0xE600000000000000);
  v5 = [a1 decodeIntegerForKey_];

  *&v3[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id ConversationFlexibleExecutionSupportXPC.init(coder:)(void *a1)
{
  v3 = MEMORY[0x1E12A1410](0x6E6F6974706FLL, 0xE600000000000000);
  v4 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id static ConversationFlexibleExecutionSupportXPC.error(_:)()
{
  v0 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = -1;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id ConversationFlexibleExecutionSupportXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationFlexibleExecutionSupportXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions()
{
  result = lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions;
  if (!lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions)
  {
    type metadata accessor for FlexibleExecutionSupportOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [FlexibleExecutionSupportOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [FlexibleExecutionSupportOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [FlexibleExecutionSupportOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMd, &_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FlexibleExecutionSupportOptions] and conformance [A]);
  }

  return result;
}

uint64_t dispatch thunk of ConversationHandler.warmup(refId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 32);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of ConversationHandler.findConversation(for:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v17(a1, a2, a3, a4, a5, a6);
}

void specialized closure #1 in withCancellableContinuation<A>(body:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v7 - v2);
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
  v4 = swift_allocError();
  CancellationError.init()();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v4;
  specialized ManagedContinuation.updateState(continuation:result:)(v3, v4, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v7 - v2);
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
  v4 = swift_allocError();
  CancellationError.init()();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v4;
  specialized ManagedContinuation.updateState(continuation:result:)(v3, v4, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
  v4 = swift_allocError();
  CancellationError.init()();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v4;
  specialized ManagedContinuation.updateState(continuation:result:)(v3, v4, 0, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
}

uint64_t one-time initialization function for lastSeenFlowPluginServiceClient()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy14SiriKitRuntime29SharedFlowPluginServiceClientCSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy14SiriKitRuntime29SharedFlowPluginServiceClientCSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  static ConversationHandlerLocator.lastSeenFlowPluginServiceClient = result;
  return result;
}

uint64_t *ConversationHandlerLocator.lastSeenFlowPluginServiceClient.unsafeMutableAddressor()
{
  if (one-time initialization token for lastSeenFlowPluginServiceClient != -1)
  {
    swift_once();
  }

  return &static ConversationHandlerLocator.lastSeenFlowPluginServiceClient;
}

uint64_t static ConversationHandlerLocator.lastSeenFlowPluginServiceClient.getter()
{
  if (one-time initialization token for lastSeenFlowPluginServiceClient != -1)
  {
    swift_once();
  }
}

void *ConversationHandlerLocator.__allocating_init(pluginCatalogTask:flowExtensionDiscoverer:sharedFlowPluginServiceClient:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *ConversationHandlerLocator.init(pluginCatalogTask:flowExtensionDiscoverer:sharedFlowPluginServiceClient:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

void *ConversationHandlerLocator.__allocating_init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v87 = &v81 - v6;
  v7 = type metadata accessor for OSSignpostError();
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v85 = *(v10 - 8);
  v86 = v10;
  v11 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for OSSignpostID();
  v14 = *(v90 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v81 - v21;
  type metadata accessor for SharedFlowPluginServiceClient();
  v23 = swift_allocObject();
  v89 = a1;
  v91 = specialized SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(a1, a2, v23);
  v24 = one-time initialization token for executor;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v25, static Signposter.executor);
  static OSSignpostID.exclusive.getter();
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v28 = a2;
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v26, v27, v30, "LoadPluginCatalog", "", v29, 2u);
    v31 = v29;
    a2 = v28;
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  v32 = v90;
  (*(v14 + 16))(v19, v22, v90);
  v33 = type metadata accessor for OSSignpostIntervalState();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = OSSignpostIntervalState.init(id:isOpen:)();
  v37 = *(v14 + 8);
  v37(v22, v32);
  static ConversationHandlerLocator.conversationHandlerCacheURL.getter();
  v38 = specialized static CachedPluginCatalog.load(cacheUrl:sharedFlowPluginServiceClient:ignoreOSVersion:)(v13, v91, 0);
  v40 = v39;
  (*(v85 + 8))(v13, v86);
  if (v38)
  {
    v86 = v40;
    v41 = OSSignposter.logHandle.getter();
    v42 = v84;
    OSSignpostIntervalState.signpostID.getter();
    v43 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v44 = v81;
      checkForErrorAndConsumeState(state:)();

      v46 = v82;
      v45 = v83;
      if ((*(v82 + 88))(v44, v83) == *MEMORY[0x1E69E93E8])
      {
        v47 = "[Error] Interval already ended";
      }

      else
      {
        (*(v46 + 8))(v44, v45);
        v47 = "";
      }

      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = v84;
      v64 = OSSignpostID.rawValue.getter();
      v65 = v47;
      v42 = v63;
      _os_signpost_emit_with_name_impl(&dword_1DC659000, v41, v43, v64, "LoadPluginCatalog", v65, v62, 2u);
      MEMORY[0x1E12A2F50](v62, -1, -1);
    }

    v37(v42, v90);
    v54 = v91;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.executor);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    v69 = os_log_type_enabled(v67, v68);
    v53 = v87;
    if (v69)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1DC659000, v67, v68, "ConversationHandlerLocator: Found plugin catalog from cache", v70, 2u);
      MEMORY[0x1E12A2F50](v70, -1, -1);
    }

    v71 = type metadata accessor for TaskPriority();
    (*(*(v71 - 8) + 56))(v53, 1, 1, v71);
    v72 = one-time initialization token for shared;

    if (v72 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v73 = static MessageBusActor.shared;
    v74 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
    v60 = swift_allocObject();
    v60[2] = v73;
    v60[3] = v74;
    v60[4] = v54;
    v60[5] = v38;
    v75 = v88;
    v60[6] = v86;
    v60[7] = v75;

    v61 = &async function pointer to partial apply for closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.executor);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    v51 = os_log_type_enabled(v49, v50);
    v53 = v87;
    v52 = v88;
    v54 = v91;
    if (v51)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1DC659000, v49, v50, "ConversationHandlerLocator: No plugin catalog cache found, will construct a new one", v55, 2u);
      MEMORY[0x1E12A2F50](v55, -1, -1);
    }

    v56 = type metadata accessor for TaskPriority();
    (*(*(v56 - 8) + 56))(v53, 1, 1, v56);
    v57 = one-time initialization token for shared;

    if (v57 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v58 = static MessageBusActor.shared;
    v59 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
    v60 = swift_allocObject();
    v60[2] = v58;
    v60[3] = v59;
    v60[4] = v36;
    v60[5] = v54;
    v60[6] = v52;

    v61 = &async function pointer to partial apply for closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:);
  }

  v76 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime25PluginLookupByIntentTopic_p_Tt2g5(0, 0, v53, v61, v60);
  v77 = one-time initialization token for shared;

  if (v77 != -1)
  {
    swift_once();
  }

  v78 = static FlowExtensionDiscoverer.shared;

  result = swift_allocObject();
  result[2] = v76;
  result[3] = v78;
  v80 = v89;
  result[4] = v54;
  result[5] = v80;
  result[6] = a2;
  return result;
}

uint64_t static ConversationHandlerLocator.conversationHandlerCacheURL.getter()
{
  v13[1] = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  v13[0] = 0;
  v6 = [v5 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v13];

  v7 = v13[0];
  if (v6)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    URL.appendingPathComponent(_:)();
    result = (*(v1 + 8))(v4, v0);
    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000001ELL, 0x80000001DCA7FC00, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/ConversationHandler/ConversationHandlerLocator.swift", 121, 2, 99);
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:), v7, 0);
}

uint64_t closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)()
{
  if (one-time initialization token for lastSeenFlowPluginServiceClient != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = static ConversationHandlerLocator.lastSeenFlowPluginServiceClient;
  os_unfair_lock_lock((static ConversationHandlerLocator.lastSeenFlowPluginServiceClient + 24));
  partial apply for closure #1 in closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)((v2 + 16));
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  os_unfair_lock_unlock((v2 + 24));
  v5[3] = &type metadata for CachedPluginCatalog;
  v5[4] = &protocol witness table for CachedPluginCatalog;
  *v5 = v3;
  v5[1] = v4;
  v7 = v0[1];

  return v7();
}

uint64_t closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a1;
  v6[31] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[35] = v8;
  v9 = *(v8 - 8);
  v6[36] = v9;
  v10 = *(v9 + 64) + 15;
  v6[37] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:), v11, 0);
}

uint64_t closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)()
{
  if (one-time initialization token for lastSeenFlowPluginServiceClient != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = static ConversationHandlerLocator.lastSeenFlowPluginServiceClient;
  os_unfair_lock_lock((static ConversationHandlerLocator.lastSeenFlowPluginServiceClient + 24));
  partial apply for closure #1 in closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)((v2 + 16));
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v7 = *(v0 + 256);
  v17 = *(v0 + 248);
  v8 = *(v0 + 240);
  os_unfair_lock_unlock((v2 + 24));
  v9 = MEMORY[0x1E12A25B0]();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  v10 = MEMORY[0x1E69D33E8];
  *(v0 + 80) = v6;
  *(v0 + 88) = v10;
  __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  URL.appendingPathComponent(_:isDirectory:)();
  *(v0 + 120) = v6;
  *(v0 + 128) = v10;
  __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  URL.appendingPathComponent(_:isDirectory:)();
  <+> infix(_:_:)();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 136);
  v11 = type metadata accessor for FlowPluginPackageFinder();
  v12 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v12 + 16);
  *(v12 + 56) = v7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities23PluginCapabilityCatalogCy0A10KitRuntime010RemoteFlowC7PackageCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCy0A10KitRuntime010RemoteFlowC7PackageCGMR);
  *(v0 + 200) = v11;
  *(v0 + 208) = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type FlowPluginPackageFinder and conformance FlowPluginPackageFinder, type metadata accessor for FlowPluginPackageFinder);
  *(v0 + 176) = v12;

  static ConversationHandlerLocator.conversationHandlerCacheURL.getter();
  (*(v4 + 56))(v5, 0, 1, v6);
  v14 = static PluginCapabilityCatalog.load<A>(finder:cache:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  v8[3] = v13;
  v8[4] = &protocol witness table for <> PluginCapabilityCatalog<A>;

  *v8 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v4 + 8))(v3, v6);
  $defer #1 () in closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t $defer #1 () in closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Signposter.executor);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v11, v12, v15, "LoadPluginCatalog", v13, v14, 2u);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ConversationHandlerLocator.handler(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[24] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.handler(id:), v5, 0);
}

uint64_t ConversationHandlerLocator.handler(id:)()
{
  v1 = *(*(v0 + 184) + 16);
  v2 = *(MEMORY[0x1E69E86C0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25PluginLookupByIntentTopic_pMd, &_s14SiriKitRuntime25PluginLookupByIntentTopic_pMR);
  *v3 = v0;
  v3[1] = ConversationHandlerLocator.handler(id:);

  return MEMORY[0x1EEE6DA40](v0 + 16, v1, v4);
}

{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.handler(id:), v2, 0);
}

{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = (*(v4 + 16))(v1, v2, v3, v4);
  if (v5)
  {
    v6 = v5;
    v7 = v0[24];
    v8 = v0[20];

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v8[3] = type metadata accessor for RemoteFlowPluginBundleConversationHandler();
    v8[4] = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, type metadata accessor for RemoteFlowPluginBundleConversationHandler);
    *v8 = v6;
    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[23];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v12 = v11[3];
    v13 = v11[5];
    v14 = v11[6];
    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    v15[1] = ConversationHandlerLocator.handler(id:);
    v17 = v0[21];
    v16 = v0[22];

    return FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:)(v17, v16, v13, v14);
  }
}

{
  v1 = v0[27];
  if (v1)
  {
    v3 = *(v1 + 112);
    v2 = *(v1 + 120);
    v4 = lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler();

    v5 = &type metadata for FlowExtensionConversationHandler;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v5 = 0;
    v4 = 0;
  }

  v6 = v0[24];
  v0[12] = v1;
  v0[13] = v3;
  v0[14] = v2;
  v0[15] = v5;
  v0[16] = v4;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.handler(id:), v6, 0);
}

{
  v1 = *(v0 + 192);

  v2 = *(v0 + 160);
  if (*(v0 + 120))
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v2);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t ConversationHandlerLocator.handler(id:)(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.handler(id:), 0, 0);
}

uint64_t ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v4[9] = v5;
  v4[10] = *(v5 + 64);
  v4[11] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[12] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:), v6, 0);
}

uint64_t ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:)()
{
  v1 = static MessageBusActor.shared;
  v0[13] = *(v0[8] + 32);
  v0[14] = v1;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:), v1, 0);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v10 = *(v0 + 48);
  outlined init with copy of RemoteConversationTurnData(*(v0 + 40), v2, type metadata accessor for RemoteConversationTurnData);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_allocObject();
  *(v0 + 120) = v6;
  outlined init with take of ConversationHandlerLocator.ScoredHandler(v2, v6 + v4, type metadata accessor for RemoteConversationTurnData);
  *(v6 + v5) = v10;
  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:);
  v8 = *(v0 + 104);

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(v7, &async function pointer to partial apply for closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:), v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:);
  }

  else
  {
    v7 = *(v2 + 112);
    v6 = *(v2 + 120);

    v5 = ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:), v2, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:), v3, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t ConversationHandlerLocator.ScoredHandler.input.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConversationHandlerLocator.ScoredHandler() + 24);
  v4 = type metadata accessor for Input();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *ConversationHandlerLocator.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return v0;
}

uint64_t ConversationHandlerLocator.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void specialized closure #2 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), &v7);
    _os_log_impl(&dword_1DC659000, v3, v4, "%s: task cancelled", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyytGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyytGMR);

  JUMPOUT(0x1E12A1950);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), &v7);
    _os_log_impl(&dword_1DC659000, v3, v4, "%s: task cancelled", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMR);

  JUMPOUT(0x1E12A1950);
}

uint64_t specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v10(a1, a4);
}

{
  *(v4 + 32) = a1;
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v4 + 40) = v7;
  *v7 = v4;
  v7[1] = specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);

  return v9(v4 + 16, a4);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v129 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v136 = *(v8 - 8);
  v9 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v142 = &v126 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v146 = &v126 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v126 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v144 = &v126 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v126 - v20;
  v21 = *(a3 + 8);
  v138 = a3;
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v8 = v23;
    v23 = *v129;
    if (!*v129)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_98:
      v151 = v8;
      v121 = *(v8 + 16);
      if (v121 >= 2)
      {
        v122 = v136;
        while (*a3)
        {
          v123 = *(v8 + 16 * v121);
          v124 = *(v8 + 16 * (v121 - 1) + 40);
          specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v122 + 72) * v123, *a3 + *(v122 + 72) * *(v8 + 16 * (v121 - 1) + 32), *a3 + *(v122 + 72) * v124, v23);
          if (v5)
          {
            goto LABEL_107;
          }

          if (v124 < v123)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          }

          if (v121 - 2 >= *(v8 + 16))
          {
            goto LABEL_123;
          }

          v125 = (v8 + 16 * v121);
          *v125 = v123;
          v125[1] = v124;
          v151 = v8;
          specialized Array.remove(at:)(v121 - 1);
          v8 = v151;
          v121 = *(v151 + 16);
          a3 = v138;
          if (v121 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_133;
      }

LABEL_107:

      return;
    }

LABEL_129:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_98;
  }

  v126 = a4;
  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v147 = v8;
  while (1)
  {
    v130 = v22;
    if (v22 + 1 >= v21)
    {
      v38 = v22 + 1;
    }

    else
    {
      v139 = v21;
      v127 = v23;
      v128 = v5;
      v150 = *a3;
      v24 = v150;
      v25 = *(v136 + 72);
      v26 = v150 + v25 * (v22 + 1);
      v27 = v143;
      outlined init with copy of ReferenceResolutionClientProtocol?(v26, v143, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v28 = v144;
      outlined init with copy of ReferenceResolutionClientProtocol?(v24 + v25 * v22, v144, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v23 = v145;
      outlined init with copy of ReferenceResolutionClientProtocol?(v27, v145, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v29 = *(v8 + 48);
      v140 = *&v23[v29];
      outlined destroy of ConversationHandlerLocator.ScoredHandler(&v23[v29]);
      v30 = v146;
      outlined init with copy of ReferenceResolutionClientProtocol?(v28, v146, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v31 = *(v8 + 48);
      v137 = *(v30 + v31);
      outlined destroy of ConversationHandlerLocator.ScoredHandler(v30 + v31);
      v32 = type metadata accessor for UUID();
      v33 = *(v32 - 8);
      v34 = *(v33 + 8);
      v35 = v33 + 8;
      v34(v30, v32);
      v134 = v34;
      v135 = v32;
      v133 = v35;
      v34(v23, v32);
      outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v36 = v130 + 2;
      v141 = v25;
      v37 = v150 + v25 * (v130 + 2);
      while (1)
      {
        v38 = v139;
        if (v139 == v36)
        {
          break;
        }

        LODWORD(v150) = v137 < v140;
        v39 = v143;
        outlined init with copy of ReferenceResolutionClientProtocol?(v37, v143, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v40 = v144;
        outlined init with copy of ReferenceResolutionClientProtocol?(v26, v144, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v41 = v145;
        outlined init with copy of ReferenceResolutionClientProtocol?(v39, v145, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v42 = v147;
        v43 = *(v147 + 48);
        v149 = *(v41 + v43);
        outlined destroy of ConversationHandlerLocator.ScoredHandler(v41 + v43);
        v44 = v146;
        outlined init with copy of ReferenceResolutionClientProtocol?(v40, v146, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v45 = *(v42 + 48);
        v148 = *(v44 + v45);
        outlined destroy of ConversationHandlerLocator.ScoredHandler(v44 + v45);
        v46 = v44;
        v47 = v134;
        v23 = v135;
        (v134)(v46, v135);
        v47(v41, v23);
        outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        ++v36;
        v37 += v141;
        v26 += v141;
        if (((v150 ^ (v148 >= v149)) & 1) == 0)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v8 = v147;
      a3 = v138;
      v5 = v128;
      v22 = v130;
      if (v137 >= v140)
      {
        goto LABEL_23;
      }

      if (v38 < v130)
      {
        goto LABEL_126;
      }

      if (v130 >= v38)
      {
LABEL_23:
        v23 = v127;
      }

      else
      {
        v48 = v141 * (v38 - 1);
        v49 = v38;
        v50 = v38 * v141;
        v139 = v38;
        v51 = v130;
        v52 = v130 * v141;
        do
        {
          if (v51 != --v49)
          {
            v53 = *v138;
            if (!*v138)
            {
              goto LABEL_132;
            }

            outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v53 + v52, v132, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            if (v52 < v48 || v53 + v52 >= (v53 + v50))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v132, v53 + v48, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
          }

          ++v51;
          v48 -= v141;
          v50 -= v141;
          v52 += v141;
        }

        while (v51 < v49);
        v5 = v128;
        v23 = v127;
        v8 = v147;
        a3 = v138;
        v38 = v139;
        v22 = v130;
      }
    }

    v54 = *(a3 + 8);
    if (v38 >= v54)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v38, v22))
    {
      goto LABEL_125;
    }

    if (v38 - v22 >= v126)
    {
LABEL_34:
      v56 = v38;
      if (v38 < v22)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v22, v126))
    {
      goto LABEL_127;
    }

    if (v22 + v126 >= v54)
    {
      v55 = *(a3 + 8);
    }

    else
    {
      v55 = v22 + v126;
    }

    if (v55 < v22)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v38 == v55)
    {
      goto LABEL_34;
    }

    v127 = v23;
    v128 = v5;
    v104 = *a3;
    v105 = *(v136 + 72);
    a3 = *a3 + v105 * (v38 - 1);
    v140 = -v105;
    v141 = v104;
    v106 = (v22 - v38);
    v131 = v105;
    v107 = (v104 + v38 * v105);
    v133 = v55;
LABEL_87:
    v139 = v38;
    v134 = v107;
    v135 = v106;
    v108 = v107;
    v109 = v106;
    v137 = a3;
LABEL_88:
    v148 = v109;
    v110 = v143;
    outlined init with copy of ReferenceResolutionClientProtocol?(v108, v143, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v111 = v144;
    outlined init with copy of ReferenceResolutionClientProtocol?(a3, v144, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v112 = v145;
    outlined init with copy of ReferenceResolutionClientProtocol?(v110, v145, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v113 = *(v8 + 48);
    v150 = *(v112 + v113);
    outlined destroy of ConversationHandlerLocator.ScoredHandler(v112 + v113);
    v114 = v146;
    outlined init with copy of ReferenceResolutionClientProtocol?(v111, v146, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v115 = *(v8 + 48);
    v149 = *(v114 + v115);
    outlined destroy of ConversationHandlerLocator.ScoredHandler(v114 + v115);
    v116 = type metadata accessor for UUID();
    v117 = *(*(v116 - 8) + 8);
    v117(v114, v116);
    v117(v112, v116);
    outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    if (v149 < v150)
    {
      break;
    }

    v8 = v147;
LABEL_86:
    v38 = v139 + 1;
    a3 = v137 + v131;
    v106 = v135 - 1;
    v107 = &v134[v131];
    v56 = v133;
    if (v139 + 1 != v133)
    {
      goto LABEL_87;
    }

    v5 = v128;
    v23 = v127;
    if (v133 < v130)
    {
      goto LABEL_124;
    }

LABEL_35:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133 = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    }

    v59 = *(v23 + 2);
    v58 = *(v23 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v23);
    }

    *(v23 + 2) = v60;
    v61 = &v23[16 * v59];
    v62 = v133;
    *(v61 + 4) = v130;
    *(v61 + 5) = v62;
    v150 = *v129;
    if (!v150)
    {
      goto LABEL_134;
    }

    if (v59)
    {
      while (2)
      {
        a3 = v60 - 1;
        if (v60 >= 4)
        {
          v67 = &v23[16 * v60 + 32];
          v68 = *(v67 - 64);
          v69 = *(v67 - 56);
          v73 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          if (v73)
          {
            goto LABEL_111;
          }

          v72 = *(v67 - 48);
          v71 = *(v67 - 40);
          v73 = __OFSUB__(v71, v72);
          v65 = v71 - v72;
          v66 = v73;
          if (v73)
          {
            goto LABEL_112;
          }

          v74 = &v23[16 * v60];
          v76 = *v74;
          v75 = *(v74 + 1);
          v73 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v73)
          {
            goto LABEL_114;
          }

          v73 = __OFADD__(v65, v77);
          v78 = v65 + v77;
          if (v73)
          {
            goto LABEL_117;
          }

          if (v78 >= v70)
          {
            v96 = &v23[16 * a3 + 32];
            v98 = *v96;
            v97 = *(v96 + 1);
            v73 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v73)
            {
              goto LABEL_121;
            }

            if (v65 < v99)
            {
              a3 = v60 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v66)
            {
              goto LABEL_113;
            }

            v79 = &v23[16 * v60];
            v81 = *v79;
            v80 = *(v79 + 1);
            v82 = __OFSUB__(v80, v81);
            v83 = v80 - v81;
            v84 = v82;
            if (v82)
            {
              goto LABEL_116;
            }

            v85 = &v23[16 * a3 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v73 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v73)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v83, v88))
            {
              goto LABEL_120;
            }

            if (v83 + v88 < v65)
            {
              goto LABEL_68;
            }

            if (v65 < v88)
            {
              a3 = v60 - 2;
            }
          }
        }

        else
        {
          if (v60 == 3)
          {
            v63 = *(v23 + 4);
            v64 = *(v23 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
            goto LABEL_54;
          }

          v89 = &v23[16 * v60];
          v91 = *v89;
          v90 = *(v89 + 1);
          v73 = __OFSUB__(v90, v91);
          v83 = v90 - v91;
          v84 = v73;
LABEL_68:
          if (v84)
          {
            goto LABEL_115;
          }

          v92 = &v23[16 * a3];
          v94 = *(v92 + 4);
          v93 = *(v92 + 5);
          v73 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v73)
          {
            goto LABEL_118;
          }

          if (v95 < v83)
          {
            break;
          }
        }

        v100 = a3 - 1;
        if (a3 - 1 >= v60)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v138)
        {
          goto LABEL_131;
        }

        v101 = *&v23[16 * v100 + 32];
        v102 = *&v23[16 * a3 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v138 + *(v136 + 72) * v101, *v138 + *(v136 + 72) * *&v23[16 * a3 + 32], *v138 + *(v136 + 72) * v102, v150);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v102 < v101)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
        }

        if (v100 >= *(v23 + 2))
        {
          goto LABEL_110;
        }

        v103 = &v23[16 * v100];
        *(v103 + 4) = v101;
        *(v103 + 5) = v102;
        v151 = v23;
        specialized Array.remove(at:)(a3);
        v23 = v151;
        v60 = *(v151 + 16);
        if (v60 <= 1)
        {
          break;
        }

        continue;
      }
    }

    a3 = v138;
    v21 = v138[1];
    v22 = v133;
    if (v133 >= v21)
    {
      goto LABEL_96;
    }
  }

  v118 = v148;
  if (v141)
  {
    v119 = v142;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v108, v142, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v8 = v147;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v119, a3, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    a3 += v140;
    v108 += v140;
    v120 = __CFADD__(v118, 1);
    v109 = v118 + 1;
    if (v120)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void *specialized SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, void *a3)
{
  a3[10] = &type metadata for SharedFlowPluginServiceXPCConnectionProvider;
  a3[11] = &protocol witness table for SharedFlowPluginServiceXPCConnectionProvider;
  type metadata accessor for SharedFlowPluginServiceClient.LoadedConversationTracker();
  a3[2] = 0;
  a3[3] = 0;
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  a3[4] = v6;
  a3[5] = 0;
  type metadata accessor for InterruptibleTaskManager();
  v8 = swift_allocObject();
  v8[4] = v7;
  v8[5] = 0;
  v8[2] = 0xD00000000000001DLL;
  v8[3] = 0x80000001DCA7FE70;
  a3[6] = v8;
  a3[12] = a1;
  a3[13] = a2;
  return a3;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow32AppShortcutGeneralizedInvocationV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0]);
  result = MEMORY[0x1E12A1A00](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      specialized Set._Variant.insert(_:)(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12A1A00](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for LNSystemProtocol();
    v5 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject, type metadata accessor for LNSystemProtocol);
    result = MEMORY[0x1E12A1A00](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12A1FE0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t partial apply for closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)(a1, v4, v5, v6, v7, v9);
}

unint64_t lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler()
{
  result = lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler;
  if (!lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler;
  if (!lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a2 + 2);
    *(a1 + 32) = v6;
    (**(v6 - 8))(a1 + 8, (a2 + 1));
    v8 = *(a3 + 24);
    v9 = type metadata accessor for Input();
    (*(*(v9 - 8) + 16))(&v3[v8], a2 + v8, v9);
  }

  return v3;
}

void *assignWithCopy for ConversationHandlerLocator.ScoredHandler(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1(a1 + 1, a2 + 1);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t initializeWithTake for ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Input();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t type metadata completion function for ConversationHandlerLocator.ScoredHandler()
{
  result = type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError()
{
  result = lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError;
  if (!lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError;
  if (!lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError);
  }

  return result;
}

void *outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(void *result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t partial apply for specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(a1, v4, v5, v6);
}

id outlined copy of InterruptibleTaskResult<RemoteConversation?>(id result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

void partial apply for specialized closure #2 in InterruptibleTaskManager.perform<A>(_:)()
{
  v1 = *(v0 + 24);
  specialized closure #2 in InterruptibleTaskManager.perform<A>(_:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  specialized closure #2 in InterruptibleTaskManager.perform<A>(_:)(*(v0 + 16));
}

void partial apply for specialized closure #1 in withCancellableContinuation<A>(body:)()
{
  specialized closure #1 in withCancellableContinuation<A>(body:)();
}

{
  specialized closure #1 in withCancellableContinuation<A>(body:)();
}

{
  specialized closure #1 in withCancellableContinuation<A>(body:)();
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)(uint64_t *a1)
{
  v3 = *a1;

  *a1 = v1;
}

{
  return partial apply for closure #1 in closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)(a1);
}

uint64_t outlined destroy of ConversationHandlerLocator.ScoredHandler(uint64_t a1)
{
  v2 = type metadata accessor for ConversationHandlerLocator.ScoredHandler();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [RemoteFlowPluginPackage] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [RemoteFlowPluginPackage] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RemoteFlowPluginPackage] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime23RemoteFlowPluginPackageCGMd, &_sSay14SiriKitRuntime23RemoteFlowPluginPackageCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RemoteFlowPluginPackage] and conformance [A]);
  }

  return result;
}

uint64_t ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for RemoteConversationOrReformedInput(0);
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for Input();
  v3[22] = v7;
  v8 = *(v7 - 8);
  v3[23] = v8;
  v9 = *(v8 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v11 = type metadata accessor for PluginAction();
  v3[28] = v11;
  v12 = *(v11 - 8);
  v3[29] = v12;
  v13 = *(v12 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static MessageBusActor.shared;
  v3[32] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:), v14, 0);
}

uint64_t ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)()
{
  v28 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v5 = type metadata accessor for Logger();
  v0[33] = __swift_project_value_buffer(v5, static Logger.executor);
  v6 = *(v3 + 16);
  v0[34] = v6;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[31];
  v11 = v0[28];
  v12 = v0[29];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136315138;
    lazy protocol witness table accessor for type PluginAction and conformance PluginAction(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, MEMORY[0x1E69CFE08]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v27);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DC659000, v7, v8, "[DecisionEngine] Finding conversation for plugin action: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[36] = v17;
  v19 = v0[15];
  v20 = *(v0[17] + 16);
  v21 = PluginAction.flowHandlerId.getter();
  v23 = v22;
  v0[37] = v22;
  v24 = swift_task_alloc();
  v0[38] = v24;
  *v24 = v0;
  v24[1] = ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:);

  return ConversationHandlerLocator.handler(id:)((v0 + 7), v21, v23);
}

{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 256);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:), v3, 0);
}

{
  v40 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 200);
    v2 = *(v0 + 120);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
    PluginAction.input.getter();
    v3 = swift_task_alloc();
    *(v0 + 312) = v3;
    *v3 = v0;
    v3[1] = ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:);
    v4 = *(v0 + 216);
    v5 = *(v0 + 200);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);

    return ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)(v4, v0 + 16, v5, v6);
  }

  else
  {
    v10 = *(v0 + 272);
    v9 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 224);
    v15 = *(v0 + 120);

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
    v10(v13, v15, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 288);
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    if (v18)
    {
      v38 = v17;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136315138;
      v25 = PluginAction.flowHandlerId.getter();
      v27 = v26;
      v19(v20, v22);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v39);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1DC659000, v16, v38, "[AmbiguityService] Cannot load a RemoteConversationClient for %s: handler not found", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    else
    {

      v19(v20, v22);
    }

    v30 = *(v0 + 240);
    v29 = *(v0 + 248);
    v32 = *(v0 + 208);
    v31 = *(v0 + 216);
    v34 = *(v0 + 192);
    v33 = *(v0 + 200);
    v36 = *(v0 + 160);
    v35 = *(v0 + 168);

    v37 = *(v0 + 8);

    return v37(0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 184);
  v6 = *(*v1 + 176);
  v7 = *v1;
  v2[40] = v0;

  v8 = *(v5 + 8);
  v2[41] = v8;
  v2[42] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[32];
  if (v0)
  {
    v10 = ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:);
  }

  else
  {
    v10 = ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

{
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[19];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[27], v1, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[32];
    v5 = v0[26];
    v6 = v0[27];

    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
    v7 = 0;
LABEL_8:
    v21 = v0[30];
    v20 = v0[31];
    v23 = v0[26];
    v22 = v0[27];
    v25 = v0[24];
    v24 = v0[25];
    v27 = v0[20];
    v26 = v0[21];

    v28 = v0[1];

    return v28(v7);
  }

  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[18];
  outlined init with take of RemoteConversationOrReformedInput(v0[26], v9, type metadata accessor for RemoteConversationOrReformedInput);
  outlined init with copy of RemoteConversationOrReformedInput(v9, v8, type metadata accessor for RemoteConversationOrReformedInput);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = v0[32];
    v17 = v0[27];
    v19 = v0[20];
    v18 = v0[21];

    outlined destroy of RemoteConversationOrReformedInput(v18, type metadata accessor for RemoteConversationOrReformedInput);
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v7 = *v19;
    goto LABEL_8;
  }

  (*(v0[23] + 32))(v0[24], v0[20], v0[22]);
  v11 = swift_task_alloc();
  v0[43] = v11;
  *v11 = v0;
  v11[1] = ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:);
  v12 = v0[24];
  v13 = v0[16];
  v14 = v0[17];

  return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v12, v13, 1, 0);
}

{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[32];
  v4 = v0[27];
  v5 = v0[24];
  v7 = v0[21];
  v6 = v0[22];

  v2(v5, v6);
  outlined destroy of RemoteConversationOrReformedInput(v7, type metadata accessor for RemoteConversationOrReformedInput);
  outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v8 = v0[44];
  v10 = v0[30];
  v9 = v0[31];
  v12 = v0[26];
  v11 = v0[27];
  v14 = v0[24];
  v13 = v0[25];
  v16 = v0[20];
  v15 = v0[21];

  v17 = v0[1];

  return v17(v8);
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[20];
  v8 = v0[21];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v10 = v0[1];
  v11 = v0[40];

  return v10();
}

uint64_t ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 352) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:), v3, 0);
}

uint64_t ConversationHelperInput.bridge.getter()
{
  v1 = (v0 + *(type metadata accessor for ConversationHelperInput(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t ConversationHelperInput.init(speechData:turnData:bridge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for ConversationHelperInput(0);
  result = outlined init with take of RemoteConversationOrReformedInput(a2, a5 + *(v9 + 20), type metadata accessor for RemoteConversationTurnData);
  v11 = (a5 + *(v9 + 24));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t ConversationHelper.__allocating_init(conversationHandlerLocator:preFlowBlockingWork:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  outlined init with take of ReferenceResolutionClientProtocol(a2, v4 + 24);
  return v4;
}

uint64_t ConversationHelper.init(conversationHandlerLocator:preFlowBlockingWork:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  outlined init with take of ReferenceResolutionClientProtocol(a2, v2 + 24);
  return v2;
}

uint64_t ConversationHelper.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t ConversationHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t RemoteConversationOrReformedInput.remoteConversationOrNil.getter()
{
  v1 = type metadata accessor for RemoteConversationOrReformedInput(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RemoteConversationOrReformedInput(v0, v4, type metadata accessor for RemoteConversationOrReformedInput);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v4;
  }

  outlined destroy of RemoteConversationOrReformedInput(v4, type metadata accessor for RemoteConversationOrReformedInput);
  return 0;
}

uint64_t Sequence<>.containsConversationTriggeredByPeer()(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(a1 - 8);
  v3[6] = v4;
  v5 = *(v4 + 64) + 15;
  v3[7] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[8] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Sequence<>.containsConversationTriggeredByPeer(), 0, 0);
}

uint64_t Sequence<>.containsConversationTriggeredByPeer()()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[4];
  (*(v0[6] + 16))(v0[7], v0[5], v0[3]);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v4 = v0[2];
  if (v4)
  {
    v0[11] = v4;

    return MEMORY[0x1EEE6DFA0](Sequence<>.containsConversationTriggeredByPeer(), v4, 0);
  }

  else
  {
    v5 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v6 = v0[1];

    return v6(0);
  }
}

{
  v1 = *(*(v0 + 88) + 184);
  *(v0 + 96) = v1;
  if (v1 == 2)
  {
    v2 = Sequence<>.containsConversationTriggeredByPeer();
  }

  else
  {
    v2 = Sequence<>.containsConversationTriggeredByPeer();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[11];

  v2 = v0[10];
  v3 = v0[8];
  v5 = v0[3];
  v4 = v0[4];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v6 = v0[2];
  if (v6)
  {
    v0[11] = v6;

    return MEMORY[0x1EEE6DFA0](Sequence<>.containsConversationTriggeredByPeer(), v6, 0);
  }

  else
  {
    v7 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v8 = v0[1];

    return v8(0);
  }
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  if ((v1 & 1) != 0 || (v3 = *(v0 + 80), v4 = *(v0 + 64), v6 = *(v0 + 24), v5 = *(v0 + 32), swift_getAssociatedConformanceWitness(), dispatch thunk of IteratorProtocol.next()(), (v7 = *(v0 + 16)) == 0))
  {
    v8 = *(v0 + 56);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v9 = *(v0 + 8);

    return v9(v1 & 1);
  }

  else
  {
    *(v0 + 88) = v7;

    return MEMORY[0x1EEE6DFA0](Sequence<>.containsConversationTriggeredByPeer(), v7, 0);
  }
}

void **initializeBufferWithCopyOfBuffer for ConversationHelperInput(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v16 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = *(a3 + 20);
    v6 = a1 + v5;
    v7 = a2 + v5;
    v8 = *(a2 + v5 + 8);
    *v6 = *(a2 + v5);
    *(v6 + 1) = v8;
    v9 = *(a2 + v5 + 24);
    *(v6 + 2) = *(a2 + v5 + 16);
    *(v6 + 3) = v9;
    v35 = type metadata accessor for RemoteConversationTurnData(0);
    v10 = v35[6];
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    v14 = v4;

    if (v13(&v7[v10], 1, v11))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(&v6[v10], &v7[v10], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(&v6[v10], &v7[v10], v11);
      (*(v12 + 56))(&v6[v10], 0, 1, v11);
    }

    v17 = v35[7];
    v18 = type metadata accessor for SessionConfiguration();
    v19 = *(v18 - 8);
    v16 = a1;
    if ((*(v19 + 48))(&v7[v17], 1, v18))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
      memcpy(&v6[v17], &v7[v17], *(*(v20 - 8) + 64));
    }

    else
    {
      (*(v19 + 16))(&v6[v17], &v7[v17], v18);
      (*(v19 + 56))(&v6[v17], 0, 1, v18);
    }

    v21 = v35[8];
    v22 = *&v7[v21];
    *&v6[v21] = v22;
    v23 = v35[9];
    v24 = v22;
    if (v13(&v7[v23], 1, v11))
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(&v6[v23], &v7[v23], *(*(v25 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(&v6[v23], &v7[v23], v11);
      (*(v12 + 56))(&v6[v23], 0, 1, v11);
    }

    *&v6[v35[10]] = *&v7[v35[10]];
    v6[v35[11]] = v7[v35[11]];
    v26 = v35[12];
    v27 = *&v7[v26];
    *&v6[v26] = v27;
    v28 = v35[13];
    v29 = &v6[v28];
    v30 = &v7[v28];
    v31 = *&v7[v28 + 8];

    v32 = v27;
    if (v31 >> 60 == 15)
    {
      *v29 = *v30;
    }

    else
    {
      v33 = *v30;
      outlined copy of Data._Representation(*v30, v31);
      *v29 = v33;
      *(v29 + 1) = v31;
    }

    *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
    swift_unknownObjectRetain();
  }

  return v16;
}

void **initializeWithCopy for ConversationHelperInput(void **a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = *(a2 + v4 + 8);
  *v5 = *(a2 + v4);
  *(v5 + 1) = v7;
  v8 = *(a2 + v4 + 24);
  *(v5 + 2) = *(a2 + v4 + 16);
  *(v5 + 3) = v8;
  v33 = type metadata accessor for RemoteConversationTurnData(0);
  v9 = v33[6];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v3;

  if (v12(&v6[v9], 1, v10))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v5[v9], &v6[v9], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(&v5[v9], &v6[v9], v10);
    (*(v11 + 56))(&v5[v9], 0, 1, v10);
  }

  v15 = v33[7];
  v16 = type metadata accessor for SessionConfiguration();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(&v6[v15], 1, v16))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&v5[v15], &v6[v15], *(*(v18 - 8) + 64));
  }

  else
  {
    (*(v17 + 16))(&v5[v15], &v6[v15], v16);
    (*(v17 + 56))(&v5[v15], 0, 1, v16);
  }

  v19 = v33[8];
  v20 = *&v6[v19];
  *&v5[v19] = v20;
  v21 = v33[9];
  v22 = v20;
  if (v12(&v6[v21], 1, v10))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v5[v21], &v6[v21], *(*(v23 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(&v5[v21], &v6[v21], v10);
    (*(v11 + 56))(&v5[v21], 0, 1, v10);
  }

  *&v5[v33[10]] = *&v6[v33[10]];
  v5[v33[11]] = v6[v33[11]];
  v24 = v33[12];
  v25 = *&v6[v24];
  *&v5[v24] = v25;
  v26 = v33[13];
  v27 = &v5[v26];
  v28 = &v6[v26];
  v29 = *&v6[v26 + 8];

  v30 = v25;
  if (v29 >> 60 == 15)
  {
    *v27 = *v28;
  }

  else
  {
    v31 = *v28;
    outlined copy of Data._Representation(*v28, v29);
    *v27 = v31;
    *(v27 + 1) = v29;
  }

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  swift_unknownObjectRetain();
  return a1;
}

void **assignWithCopy for ConversationHelperInput(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v59 = a3;
  v60 = a2;
  v9 = *(a3 + 20);
  v61 = a1;
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *(a2 + v9);
  v12 = *(a1 + v9 + 8);
  *(v10 + 1) = *(a2 + v9 + 8);

  *(v10 + 2) = *(v11 + 2);
  v13 = *(v10 + 3);
  *(v10 + 3) = *(v11 + 3);

  v14 = type metadata accessor for RemoteConversationTurnData(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(&v10[v15], 1, v16);
  v20 = v18(&v11[v15], 1, v16);
  v57 = v17;
  if (v19)
  {
    if (!v20)
    {
      (*(v17 + 16))(&v10[v15], &v11[v15], v16);
      (*(v17 + 56))(&v10[v15], 0, 1, v16);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v20)
  {
    (*(v17 + 8))(&v10[v15], v16);
LABEL_6:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v10[v15], &v11[v15], *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  (*(v17 + 24))(&v10[v15], &v11[v15], v16);
LABEL_7:
  v58 = v14;
  v22 = *(v14 + 28);
  v23 = type metadata accessor for SessionConfiguration();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = v25(&v10[v22], 1, v23);
  v27 = v25(&v11[v22], 1, v23);
  if (v26)
  {
    if (!v27)
    {
      (*(v24 + 16))(&v10[v22], &v11[v22], v23);
      (*(v24 + 56))(&v10[v22], 0, 1, v23);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v27)
  {
    (*(v24 + 8))(&v10[v22], v23);
LABEL_12:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&v10[v22], &v11[v22], *(*(v28 - 8) + 64));
    goto LABEL_13;
  }

  (*(v24 + 24))(&v10[v22], &v11[v22], v23);
LABEL_13:
  v29 = v58[8];
  v30 = *&v11[v29];
  v31 = *&v10[v29];
  *&v10[v29] = v30;
  v32 = v30;

  v33 = v58[9];
  v34 = v18(&v10[v33], 1, v16);
  v35 = v18(&v11[v33], 1, v16);
  if (v34)
  {
    if (!v35)
    {
      (*(v57 + 16))(&v10[v33], &v11[v33], v16);
      (*(v57 + 56))(&v10[v33], 0, 1, v16);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v35)
  {
    (*(v57 + 8))(&v10[v33], v16);
LABEL_18:
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v10[v33], &v11[v33], *(*(v36 - 8) + 64));
    goto LABEL_19;
  }

  (*(v57 + 24))(&v10[v33], &v11[v33], v16);
LABEL_19:
  v37 = v58[10];
  v38 = *&v10[v37];
  *&v10[v37] = *&v11[v37];

  v10[v58[11]] = v11[v58[11]];
  v39 = v58[12];
  v40 = *&v10[v39];
  v41 = *&v11[v39];
  *&v10[v39] = v41;
  v42 = v41;

  v43 = v58[13];
  v44 = &v10[v43];
  v45 = &v11[v43];
  v46 = *&v11[v43 + 8];
  if (*&v10[v43 + 8] >> 60 != 15)
  {
    if (v46 >> 60 != 15)
    {
      v48 = *v45;
      outlined copy of Data._Representation(*v45, v46);
      v49 = *v44;
      v50 = v44[1];
      *v44 = v48;
      v44[1] = v46;
      outlined consume of Data._Representation(v49, v50);
      goto LABEL_26;
    }

    outlined destroy of Data(v44);
    goto LABEL_24;
  }

  if (v46 >> 60 == 15)
  {
LABEL_24:
    *v44 = *v45;
    goto LABEL_26;
  }

  v47 = *v45;
  outlined copy of Data._Representation(*v45, v46);
  *v44 = v47;
  v44[1] = v46;
LABEL_26:
  v51 = *(v59 + 24);
  v52 = (v61 + v51);
  v53 = (v60 + v51);
  v54 = v53[1];
  v55 = *v52;
  *v52 = *v53;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v52[1] = v54;
  return v61;
}

void *initializeWithTake for ConversationHelperInput(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = *(a2 + v4 + 16);
  *v5 = *(a2 + v4);
  *(v5 + 1) = v7;
  v8 = type metadata accessor for RemoteConversationTurnData(0);
  v9 = v8[6];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v20 = *(v11 + 48);
  if (v20(&v6[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v5[v9], &v6[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&v5[v9], &v6[v9], v10);
    (*(v11 + 56))(&v5[v9], 0, 1, v10);
  }

  v13 = v8[7];
  v14 = type metadata accessor for SessionConfiguration();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(&v6[v13], 1, v14))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&v5[v13], &v6[v13], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(&v5[v13], &v6[v13], v14);
    (*(v15 + 56))(&v5[v13], 0, 1, v14);
  }

  *&v5[v8[8]] = *&v6[v8[8]];
  v17 = v8[9];
  if (v20(&v6[v17], 1, v10))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v5[v17], &v6[v17], *(*(v18 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&v5[v17], &v6[v17], v10);
    (*(v11 + 56))(&v5[v17], 0, 1, v10);
  }

  *&v5[v8[10]] = *&v6[v8[10]];
  v5[v8[11]] = v6[v8[11]];
  *&v5[v8[12]] = *&v6[v8[12]];
  *&v5[v8[13]] = *&v6[v8[13]];
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void **assignWithTake for ConversationHelperInput(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v53 = a3;
  v54 = a2;
  v7 = *(a3 + 20);
  v55 = a1;
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a2 + v7 + 8);
  v11 = *(a1 + v7 + 8);
  *v8 = *(a2 + v7);
  *(v8 + 1) = v10;

  v12 = *(v9 + 3);
  v13 = *(v8 + 3);
  *(v8 + 2) = *(v9 + 2);
  *(v8 + 3) = v12;

  v14 = type metadata accessor for RemoteConversationTurnData(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(&v8[v15], 1, v16);
  v20 = v18(&v9[v15], 1, v16);
  v51 = v17;
  if (v19)
  {
    if (!v20)
    {
      (*(v17 + 32))(&v8[v15], &v9[v15], v16);
      (*(v17 + 56))(&v8[v15], 0, 1, v16);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v20)
  {
    (*(v17 + 8))(&v8[v15], v16);
LABEL_6:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v8[v15], &v9[v15], *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  (*(v17 + 40))(&v8[v15], &v9[v15], v16);
LABEL_7:
  v52 = v14;
  v22 = *(v14 + 28);
  v23 = type metadata accessor for SessionConfiguration();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = v25(&v8[v22], 1, v23);
  v27 = v25(&v9[v22], 1, v23);
  if (v26)
  {
    if (!v27)
    {
      (*(v24 + 32))(&v8[v22], &v9[v22], v23);
      (*(v24 + 56))(&v8[v22], 0, 1, v23);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v27)
  {
    (*(v24 + 8))(&v8[v22], v23);
LABEL_12:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&v8[v22], &v9[v22], *(*(v28 - 8) + 64));
    goto LABEL_13;
  }

  (*(v24 + 40))(&v8[v22], &v9[v22], v23);
LABEL_13:
  v29 = v52[8];
  v30 = *&v8[v29];
  *&v8[v29] = *&v9[v29];

  v31 = v52[9];
  v32 = v18(&v8[v31], 1, v16);
  v33 = v18(&v9[v31], 1, v16);
  if (v32)
  {
    if (!v33)
    {
      (*(v51 + 32))(&v8[v31], &v9[v31], v16);
      (*(v51 + 56))(&v8[v31], 0, 1, v16);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v33)
  {
    (*(v51 + 8))(&v8[v31], v16);
LABEL_18:
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v8[v31], &v9[v31], *(*(v34 - 8) + 64));
    goto LABEL_19;
  }

  (*(v51 + 40))(&v8[v31], &v9[v31], v16);
LABEL_19:
  v35 = v52[10];
  v36 = *&v8[v35];
  *&v8[v35] = *&v9[v35];

  v8[v52[11]] = v9[v52[11]];
  v37 = v52[12];
  v38 = *&v8[v37];
  *&v8[v37] = *&v9[v37];

  v39 = v52[13];
  v40 = &v8[v39];
  v41 = &v9[v39];
  v42 = *&v8[v39 + 8];
  if (v42 >> 60 != 15)
  {
    v43 = v41[1];
    if (v43 >> 60 != 15)
    {
      v44 = *v40;
      *v40 = *v41;
      v40[1] = v43;
      outlined consume of Data._Representation(v44, v42);
      goto LABEL_24;
    }

    outlined destroy of Data(v40);
  }

  *v40 = *v41;
LABEL_24:
  v45 = *(v53 + 24);
  v46 = (v55 + v45);
  v47 = (v54 + v45);
  v48 = v47[1];
  v49 = *v46;
  *v46 = *v47;
  swift_unknownObjectRelease();
  v46[1] = v48;
  return v55;
}

uint64_t type metadata completion function for ConversationHelperInput()
{
  result = type metadata accessor for RemoteConversationTurnData(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RemoteConversationOrReformedInput(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for Input();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for RemoteConversationOrReformedInput(uint64_t *a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for Input();
    v3 = *(*(v2 - 8) + 8);

    return v3(a1, v2);
  }

  else
  {
    v5 = *a1;
  }
}

void *initializeWithCopy for RemoteConversationOrReformedInput(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Input();
    (*(*(v4 - 8) + 16))(a1, a2, v4);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for RemoteConversationOrReformedInput(void *a1, void *a2)
{
  if (a1 != a2)
  {
    outlined destroy of RemoteConversationOrReformedInput(a1, type metadata accessor for RemoteConversationOrReformedInput);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for Input();
      (*(*(v4 - 8) + 16))(a1, a2, v4);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *assignWithTake for RemoteConversationOrReformedInput(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of RemoteConversationOrReformedInput(a1, type metadata accessor for RemoteConversationOrReformedInput);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata completion function for RemoteConversationOrReformedInput()
{
  result = type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PluginAction and conformance PluginAction(unint64_t *a1, void (*a2)(uint64_t))
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

void MUXContextMessage.userIdOfPrimaryUser()(uint64_t a1@<X8>)
{
  v1 = MUXContextMessage.userIdToHomeMember.getter();
  v2 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v35 = *MEMORY[0x1E69C7EE8];

  v8 = 0;
  v9 = &selRef_setMitigationSource_;
  v32 = v7;
  while (v6)
  {
    v10 = v8;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v2 + 56) + ((v10 << 9) | (8 * v11)));
    v13 = [v12 v9[32]];
    if (v13)
    {
      v34 = v12;
      v14 = v13;
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = *(v15 + 16);
      if (v16)
      {
        v30 = v3;
        v31 = v2;
        v17 = 0;
        v18 = v15 + 32;
        while (v17 < *(v15 + 16))
        {
          outlined init with copy of Any(v18, v39);
          outlined init with copy of Any(v39, v38);
          v19 = swift_dynamicCast();
          if (v19)
          {
            v20 = v36;
          }

          else
          {
            v20 = 0;
          }

          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (v19)
          {
            v23 = v37 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (v23)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v39);
          }

          else
          {
            if (v20 == v21 && v37 == v22)
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v39);
LABEL_34:

              v26 = [v34 sharedUserId];

              if (!v26)
              {
                goto LABEL_36;
              }

              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v27 = a1;
              UserID.init(sharedUserId:)();
              v28 = 0;
              goto LABEL_37;
            }

            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            __swift_destroy_boxed_opaque_existential_1Tm(v39);
            if (v25)
            {
              goto LABEL_34;
            }
          }

          ++v17;
          v18 += 32;
          if (v16 == v17)
          {

            v8 = v10;
            v3 = v30;
            v2 = v31;
            goto LABEL_31;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v8 = v10;
LABEL_31:
      v7 = v32;
      v9 = &selRef_setMitigationSource_;
    }

    else
    {

      v8 = v10;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      goto LABEL_9;
    }
  }

LABEL_36:
  v28 = 1;
  v27 = a1;
LABEL_37:
  v29 = type metadata accessor for UserID();
  (*(*(v29 - 8) + 56))(v27, v28, 1, v29);
}

void static ConversationMUXUtils.userAttribute(from:)(void *a1@<X0>, char *a2@<X8>)
{
  specialized static ConversationMUXUtils.isOwner(_:)(a1, MEMORY[0x1E69C7EE8]);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    specialized static ConversationMUXUtils.isOwner(_:)(a1, MEMORY[0x1E69C7EF0]);
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  *a2 = v5;
}

unint64_t static ConversationMUXUtils.toUserIdentityClassification(from:)@<X0>(unint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (a2 & 1 | (result > 4))
  {
    v3 = 4;
  }

  else
  {
    v3 = 0x1030204uLL >> (8 * result);
  }

  *a3 = v3;
  return result;
}

uint64_t static ConversationMUXUtils.isUnknownUser(withUserId:fromMUXContextMessage:)(uint64_t a1)
{
  v2 = MUXContextMessage.userIdToHomeMember.getter();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);

    specialized static ConversationMUXUtils.isOwner(_:)(v5, MEMORY[0x1E69C7EF0]);
    v7 = v6;
  }

  else
  {

    v7 = 1;
  }

  return v7 & 1;
}

uint64_t static ConversationMUXUtils.getAllUserIds(from:)(void *a1)
{
  v23 = type metadata accessor for UserID();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v21 = &v21 - v7;
  v8 = [a1 homeMembers];
  if (!v8)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v9 = v8;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAHomeMemberInfo, 0x1E69C7820);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = MEMORY[0x1E69E7CD0];
  v24 = MEMORY[0x1E69E7CD0];
  if (!v10)
  {
    return result;
  }

  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  result = __CocoaSet.count.getter();
  v12 = result;
  if (!result)
  {
LABEL_16:

    return MEMORY[0x1E69E7CD0];
  }

LABEL_5:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = (v2 + 8);
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1E12A1FE0](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 sharedUserId];
      if (v17)
      {
        v18 = v17;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = v22;
        UserID.init(sharedUserId:)();
        v20 = v21;
        specialized Set._Variant.insert(_:)(v21, v19);

        (*v14)(v20, v23);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);

    return v24;
  }

  return result;
}

uint64_t static ConversationMUXUtils.getUserIdToLoggableSharedUserIdDict(from:)()
{
  v0 = type metadata accessor for UserID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v68[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v68[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v68[-v12];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v14 = MUXContextMessage.userIdToHomeMember.getter();
  v15 = 0;
  v16 = *(v14 + 64);
  v72 = v14 + 64;
  v77 = v1;
  v78 = v14;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v73 = v1 + 16;
  v74 = v10;
  v82 = (v1 + 32);
  v83 = v0;
  v79 = (v1 + 8);
  v76 = v4;
LABEL_4:
  v81 = v13;
  v21 = v15;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_13:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v77;
      v28 = v78;
      (*(v77 + 16))(v75, *(v78 + 48) + *(v77 + 72) * v26, v83);
      v29 = *(*(v28 + 56) + 8 * v26);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      v31 = *(v30 + 48);
      v10 = v74;
      (*(v27 + 32))();
      *&v10[v31] = v29;
      (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
      v32 = v29;
      v24 = v22;
      v4 = v76;
LABEL_14:
      v33 = v80;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v10, v80, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        break;
      }

      v35 = *&v33[*(v34 + 48)];
      (*v82)(v4, v33, v83);
      v36 = UserID.sharedUserId.getter();
      v38 = v37;
      v39 = [v35 loggableMultiUserSharedUserId];
      v13 = v81;
      if (v39)
      {
        v44 = v39;
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v45;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v13;
        v47 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v38);
        v48 = v13[2];
        v49 = (v46 & 1) == 0;
        v50 = v48 + v49;
        if (__OFADD__(v48, v49))
        {
          goto LABEL_38;
        }

        if (v13[3] < v50)
        {
          v51 = v46;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, isUniquelyReferenced_nonNull_native);
          v52 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v38);
          if ((v51 & 1) != (v53 & 1))
          {
            goto LABEL_40;
          }

          v47 = v52;
          if ((v51 & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_30:

          v13 = v84;
          v57 = (v84[7] + 16 * v47);
          v58 = v57[1];
          v59 = v71;
          *v57 = v70;
          v57[1] = v59;

          goto LABEL_31;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if (v46)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v81 = v47;
          v60 = v46;
          specialized _NativeDictionary.copy()();
          v47 = v81;
          if (v60)
          {
            goto LABEL_30;
          }
        }

LABEL_33:
        v13 = v84;
        v84[(v47 >> 6) + 8] |= 1 << v47;
        v61 = (v13[6] + 16 * v47);
        *v61 = v36;
        v61[1] = v38;
        v62 = (v13[7] + 16 * v47);
        v63 = v71;
        *v62 = v70;
        v62[1] = v63;

        (*v79)(v4, v83);
        v64 = v13[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_39;
        }

        v13[2] = v66;
        goto LABEL_35;
      }

      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v38);
      v42 = v41;

      if (v42)
      {
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v84 = v13;
        if (!v54)
        {
          specialized _NativeDictionary.copy()();
          v13 = v84;
        }

        v55 = *(v13[6] + 16 * v40 + 8);

        v56 = *(v13[7] + 16 * v40 + 8);

        specialized _NativeDictionary._delete(at:)(v40, v13);

LABEL_31:
        (*v79)(v4, v83);
LABEL_35:
        v15 = v24;
        goto LABEL_4;
      }

      (*v79)(v4, v83);

      v21 = v24;
      if (!v19)
      {
        goto LABEL_6;
      }
    }

    return v81;
  }

  else
  {
LABEL_6:
    if (v20 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
        (*(*(v43 - 8) + 56))(v10, 1, 1, v43);
        v19 = 0;
        goto LABEL_14;
      }

      v19 = *(v72 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t static ConversationMUXUtils.getUserIdFor(personaId:muxContextMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  v55 = a2;
  v53 = a3;
  v3 = type metadata accessor for UserID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v53 - v13;
  result = MUXContextMessage.userIdToHomeMember.getter();
  v15 = 0;
  v17 = result + 64;
  v16 = *(result + 64);
  v59 = result;
  v60 = v4;
  v18 = 1 << *(result + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v56 = result + 64;
  v57 = v4 + 16;
  v65 = (v4 + 32);
  v61 = (v4 + 8);
  v62 = v3;
  while (v20)
  {
    v22 = v15;
LABEL_16:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = v26 | (v22 << 6);
    v29 = v59;
    v28 = v60;
    v30 = v58;
    (*(v60 + 16))(v58, *(v59 + 48) + *(v60 + 72) * v27, v3);
    v31 = *(*(v29 + 56) + 8 * v27);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    v33 = *(v32 + 48);
    v34 = *(v28 + 32);
    v25 = v64;
    v34(v64, v30, v3);
    *&v25[v33] = v31;
    (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
    v35 = v31;
    v17 = v56;
LABEL_17:
    v36 = v25;
    v37 = v63;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v36, v63, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
    {

      v51 = 1;
      v52 = v53;
      v3 = v62;
      return (*(v60 + 56))(v52, v51, 1, v3);
    }

    v39 = *(v37 + *(v38 + 48));
    v40 = *v65;
    v41 = v37;
    v42 = v62;
    (*v65)(v66, v41);
    v43 = [v39 personaIdentifier];
    if (v43)
    {
      v44 = v43;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (v45 == v54 && v47 == v55)
      {

        v3 = v42;
        goto LABEL_28;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = v42;
      if (v49)
      {

LABEL_28:
        v52 = v53;
        (v40)(v53, v66, v3);
        v51 = 0;
        return (*(v60 + 56))(v52, v51, 1, v3);
      }
    }

    else
    {

      v3 = v42;
    }

    result = (*v61)(v66, v3);
  }

  if (v21 <= v15 + 1)
  {
    v23 = v15 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  v25 = v64;
  while (1)
  {
    v22 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      (*(*(v50 - 8) + 56))(v25, 1, 1, v50);
      v20 = 0;
      v15 = v24;
      goto LABEL_17;
    }

    v20 = *(v17 + 8 * v22);
    ++v15;
    if (v20)
    {
      v15 = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t static ConversationMUXUtils.getUserIdForUnknownUser(fromHomeMemberInfo:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static ConversationMUXUtils.getUserIdForPrimaryUser(from:)(a1, MEMORY[0x1E69C7EF0]);
  if (v3)
  {
    UserID.init(sharedUserId:)();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for UserID();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t static ConversationMUXUtils.getUserIdForUnknownUser(fromHomeMemberInfoDict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16SAHomeMemberInfoC_Tt1g5Tm(*(a1 + 16), 0);
    v6 = specialized Sequence._copySequenceContents(initializing:)(&v13, v5 + 4, v3, a1);

    outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
  static ConversationMUXUtils.getUserIdForPrimaryUser(from:)(v5, MEMORY[0x1E69C7EF0]);
  v8 = v7;

  if (v8)
  {
    UserID.init(sharedUserId:)();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for UserID();
  v11 = *(*(v10 - 8) + 56);

  return v11(a2, v9, 1, v10);
}

uint64_t static ConversationMUXUtils.convertToUserIDToSpeechPackageDict(sharedUserIdToSpeechRecognitionDict:)(uint64_t a1)
{
  v65 = type metadata accessor for UserID();
  v2 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v67 = a1;
  v68 = &v60 - v6;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v61 = v5;
  v63 = (v5 + 8);
  v64 = (v5 + 16);

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC8];
  v62 = v11;
LABEL_4:
  while (2)
  {
    while (2)
    {
      v14 = v12;
      if (!v10)
      {
        goto LABEL_6;
      }

      while (1)
      {
        v12 = v14;
LABEL_9:
        v15 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v16 = v15 | (v12 << 6);
        v17 = (*(v67 + 48) + 16 * v16);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(*(v67 + 56) + 8 * v16);

        v21 = v20;
        v22 = v68;
        UserID.init(sharedUserId:)();
        v23 = objc_allocWithZone(MEMORY[0x1E698D210]);
        v24 = v21;
        v25 = [v23 init];
        v26 = objc_allocWithZone(MEMORY[0x1E698D228]);
        v27 = v24;
        v28 = [v26 initWithRecognition:v27 rawRecognition:v27 audioAnalytics:v25 isFinal:1 utteranceStart:0.0];

        v29 = v65;
        v30 = *v64;
        v31 = v66;
        (*v64)(v66, v22, v65);
        if (v28)
        {
          break;
        }

        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
        if (v33)
        {
          v45 = v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v13;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v13 = v69;
          }

          v47 = *(v61 + 8);
          v47(v13[6] + *(v61 + 72) * v45, v29);

          specialized _NativeDictionary._delete(at:)(v45, v13);
          v47(v66, v29);
          v47(v68, v29);
          v11 = v62;
          goto LABEL_4;
        }

        v34 = *v63;
        (*v63)(v31, v29);
        v34(v68, v29);
        v14 = v12;
        v11 = v62;
        if (!v10)
        {
LABEL_6:
          while (1)
          {
            v12 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v12 >= v11)
            {

              return v13;
            }

            v10 = *(v7 + 8 * v12);
            ++v14;
            if (v10)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          goto LABEL_28;
        }
      }

      v35 = v28;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v69 = v13;
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
      v39 = v13[2];
      v40 = (v38 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v43 = v38;
      if (v13[3] >= v42)
      {
        if ((v36 & 1) == 0)
        {
          v58 = v37;
          specialized _NativeDictionary.copy()();
          v37 = v58;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, v36);
        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
        if ((v43 & 1) != (v44 & 1))
        {
          goto LABEL_30;
        }
      }

      v48 = v65;
      v13 = v69;
      if (v43)
      {
        v49 = v69[7];
        v50 = *(v49 + 8 * v37);
        *(v49 + 8 * v37) = v35;

        v51 = *v63;
        (*v63)(v66, v48);
        v51(v68, v48);
        v11 = v62;
        continue;
      }

      break;
    }

    v69[(v37 >> 6) + 8] |= 1 << v37;
    v52 = v61;
    v53 = v13[6] + *(v61 + 72) * v37;
    v60 = v37;
    v54 = v66;
    v30(v53, v66, v48);
    *(v13[7] + 8 * v60) = v35;

    v55 = *(v52 + 8);
    v55(v54, v48);
    v55(v68, v48);
    v56 = v13[2];
    v41 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (!v41)
    {
      v13[2] = v57;
      v11 = v62;
      continue;
    }

    break;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Dictionary<>.toEncodableDictionary()(uint64_t a1, uint64_t a2)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v110 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UserID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v91[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v91[-v15];
  v116 = v16;
  v111 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v102 = type metadata accessor for Optional();
  v18 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v91[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v91[-v22];
  v23 = *(a1 + 64);
  v93 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v92 = (v24 + 63) >> 6;
  v104 = TupleTypeMetadata2;
  v100 = TupleTypeMetadata2 - 8;
  v113 = (v8 + 16);
  v94 = v4 + 16;
  v108 = (v4 + 32);
  v109 = (v8 + 32);
  v99 = (v21 + 32);
  v95 = v4;
  v98 = (v4 + 8);
  v105 = v8;
  v97 = (v8 + 8);
  v96 = a1;

  v27 = 0;
  v107 = v13;
  v115 = MEMORY[0x1E69E7CC8];
  if (v26)
  {
LABEL_4:
    v28 = v116;
    v29 = v27;
    goto LABEL_13;
  }

  while (2)
  {
    if (v92 <= v27 + 1)
    {
      v30 = v27 + 1;
    }

    else
    {
      v30 = v92;
    }

    v31 = v30 - 1;
    v33 = v103;
    v32 = v104;
    do
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
      }

      if (v29 >= v92)
      {
        v26 = 0;
        v44 = 1;
        goto LABEL_14;
      }

      v26 = *(v93 + 8 * v29);
      ++v27;
    }

    while (!v26);
    v28 = v116;
LABEL_13:
    v34 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v35 = v34 | (v29 << 6);
    v36 = v96;
    v37 = v105;
    (*(v105 + 16))(v106, *(v96 + 48) + *(v105 + 72) * v35, v28);
    v38 = v95;
    v39 = *(v36 + 56) + *(v95 + 72) * v35;
    v41 = v110;
    v40 = v111;
    (*(v95 + 16))(v110, v39, v111);
    v32 = v104;
    v42 = *(v104 + 48);
    v43 = *(v37 + 32);
    v33 = v103;
    v43(v103, v106, v28);
    (*(v38 + 32))(&v33[v42], v41, v40);
    v44 = 0;
    v31 = v29;
    v13 = v107;
LABEL_14:
    v45 = *(v32 - 8);
    (*(v45 + 56))(v33, v44, 1, v32);
    v46 = v101;
    (*v99)(v101, v33, v102);
    if ((*(v45 + 48))(v46, 1, v32) == 1)
    {

LABEL_32:
      v89 = *MEMORY[0x1E69E9840];
      return v115;
    }

    v47 = *(v32 + 48);
    (*v109)(v13, v46, v116);
    v48 = objc_opt_self();
    v49 = &v46[v47];
    v50 = v110;
    v51 = v111;
    (*v108)(v110, v49, v111);
    v52 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*v98)(v50, v51);
    v117[0] = 0;
    v53 = [v48 archivedDataWithRootObject:v52 requiringSecureCoding:1 error:v117];
    swift_unknownObjectRelease();
    v54 = v117[0];
    if (!v53)
    {
      v88 = v54;

      _convertNSErrorToError(_:)();

      swift_willThrow();

      (*v97)(v13, v116);
      goto LABEL_32;
    }

    v112 = v31;
    v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v13;
    v58 = v57;

    v59 = v114;
    v60 = *v113;
    (*v113)(v114, v56);
    outlined copy of Data._Representation(v55, v58);
    v61 = v115;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117[0] = v61;
    v64 = specialized __RawDictionaryStorage.find<A>(_:)(v59);
    v65 = v61[2];
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      goto LABEL_34;
    }

    v68 = v63;
    if (v61[3] >= v67)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v71 = v117[0];
        if (v63)
        {
          goto LABEL_24;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v71 = v117[0];
        if (v68)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v71[(v64 >> 6) + 8] |= 1 << v64;
      v72 = v105;
      v73 = v71[6] + *(v105 + 72) * v64;
      v74 = v114;
      v75 = v116;
      v115 = v71;
      v60(v73, v114, v116);
      v76 = (v115[7] + 16 * v64);
      *v76 = v55;
      v76[1] = v58;
      outlined consume of Data._Representation(v55, v58);
      v77 = *(v72 + 8);
      v77(v74, v75);
      v13 = v107;
      v77(v107, v75);
      v78 = v115;
      v79 = v115[2];
      v80 = __OFADD__(v79, 1);
      v81 = v79 + 1;
      if (!v80)
      {
        v115[2] = v81;
        goto LABEL_25;
      }

      goto LABEL_35;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, isUniquelyReferenced_nonNull_native);
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v114);
    if ((v68 & 1) == (v70 & 1))
    {
      v64 = v69;
      v71 = v117[0];
      if ((v68 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      v82 = (v71[7] + 16 * v64);
      v83 = *v82;
      v84 = v82[1];
      *v82 = v55;
      v82[1] = v58;
      v85 = v71;
      outlined consume of Data._Representation(v83, v84);
      outlined consume of Data._Representation(v55, v58);
      v86 = *v97;
      v87 = v116;
      (*v97)(v114, v116);
      v13 = v107;
      v86(v107, v87);
      v78 = v85;
LABEL_25:
      v27 = v112;
      v115 = v78;
      if (v26)
      {
        goto LABEL_4;
      }

      continue;
    }

    break;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Dictionary<>.decodeWithValueAs<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = type metadata accessor for Optional();
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v65 - v9;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UserID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  v27 = lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
  v89 = v14;
  v72 = v27;
  v28 = Dictionary.init()();
  v29 = *(a2 + 64);
  v67 = a2 + 64;
  v30 = 1 << *(a2 + 32);
  v31 = -1;
  v92 = v28;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v66 = (v30 + 63) >> 6;
  v84 = (v15 + 16);
  v87 = (v15 + 32);
  v76 = v15;
  v33 = (v15 + 8);
  v34 = a3;
  v81 = (v10 + 56);
  v82 = v33;
  v71 = (v5 + 8);
  v70 = (v10 + 32);
  v69 = (v10 + 16);
  v68 = (v10 + 8);
  v78 = a2;

  v36 = 0;
  v77 = a3;
  v90 = v23;
  v85 = v26;
  if (v32)
  {
    while (1)
    {
      v37 = v91;
      v38 = v36;
LABEL_13:
      v91 = v37;
      v41 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v42 = v41 | (v38 << 6);
      v43 = v78;
      v44 = v76;
      v45 = v86;
      v46 = v89;
      (*(v76 + 16))(v86, *(v78 + 48) + *(v76 + 72) * v42, v89);
      v47 = (*(v43 + 56) + 16 * v42);
      v48 = *v47;
      v49 = v47[1];
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMd, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMR);
      v51 = &v90[*(v50 + 48)];
      (*(v44 + 32))(v90, v45, v46);
      *v51 = v48;
      v51[1] = v49;
      v23 = v90;
      (*(*(v50 - 8) + 56))(v90, 0, 1, v50);
      outlined copy of Data._Representation(v48, v49);
      v40 = v38;
      v34 = v77;
      v26 = v85;
LABEL_14:
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v23, v26, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetSgMR);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMd, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMR);
      v53 = (*(*(v52 - 8) + 48))(v26, 1, v52);
      v54 = v83;
      if (v53 == 1)
      {

        return v92;
      }

      v55 = &v26[*(v52 + 48)];
      v57 = *v55;
      v56 = v55[1];
      (*v87)(v88, v26, v89);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
      v58 = v91;
      static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
      v91 = v58;
      if (v58)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      if (swift_dynamicCast())
      {
        v79 = *v81;
        v79(v54, 0, 1, v34);
        v59 = v73;
        (*v70)(v73, v54, v34);
        v60 = *v84;
        v80 = v40;
        v61 = v89;
        v60(v86, v88, v89);
        v62 = v74;
        (*v69)(v74, v59, v34);
        v79(v62, 0, 1, v34);
        type metadata accessor for Dictionary();
        v23 = v90;
        Dictionary.subscript.setter();
        outlined consume of Data._Representation(v57, v56);
        v63 = v59;
        v26 = v85;
        (*v68)(v63, v34);
        result = (*v82)(v88, v61);
        v36 = v80;
      }

      else
      {
        (*v82)(v88, v89);
        outlined consume of Data._Representation(v57, v56);
        (*v81)(v54, 1, 1, v34);
        result = (*v71)(v54, v75);
        v36 = v40;
      }

      if (!v32)
      {
        goto LABEL_5;
      }
    }

    outlined consume of Data._Representation(v57, v56);
    (*v82)(v88, v89);
  }

  else
  {
LABEL_5:
    if (v66 <= v36 + 1)
    {
      v39 = v36 + 1;
    }

    else
    {
      v39 = v66;
    }

    v40 = v39 - 1;
    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= v66)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMd, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMR);
        (*(*(v64 - 8) + 56))(v23, 1, 1, v64);
        v32 = 0;
        goto LABEL_14;
      }

      v32 = *(v67 + 8 * v38);
      ++v36;
      if (v32)
      {
        v37 = v91;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall SAMultiUserInfo.toUserIdToHomeMemberDictionary()()
{
  v49 = type metadata accessor for UserID();
  v47 = *(v49 - 8);
  v1 = *(v47 + 64);
  v2 = MEMORY[0x1EEE9AC00](v49);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 homeMembers];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAHomeMemberInfo, 0x1E69C7820);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
LABEL_36:
      v10 = __CocoaSet.count.getter();
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_4:
        v11 = 0;
        v51 = v8 & 0xC000000000000001;
        v45 = v47 + 16;
        v46 = v8 & 0xFFFFFFFFFFFFFF8;
        v12 = MEMORY[0x1E69E7CC8];
        v48 = (v47 + 8);
        *&v9 = 138412290;
        v44 = v9;
        v50 = v10;
        while (1)
        {
          if (v51)
          {
            v15 = MEMORY[0x1E12A1FE0](v11, v8);
          }

          else
          {
            if (v11 >= *(v46 + 16))
            {
              goto LABEL_34;
            }

            v15 = *(v8 + 8 * v11 + 32);
          }

          v16 = v15;
          v17 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v18 = [v15 sharedUserId];
          if (!v18)
          {
            if (one-time initialization token for conversationBridge != -1)
            {
              swift_once();
            }

            v30 = type metadata accessor for Logger();
            __swift_project_value_buffer(v30, static Logger.conversationBridge);
            v31 = v16;
            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              v35 = swift_slowAlloc();
              *v34 = v44;
              *(v34 + 4) = v31;
              *v35 = v31;
              v36 = v31;
              _os_log_impl(&dword_1DC659000, v32, v33, "Ignoring HomeMemberInfo: %@ for lack of sharedUserId", v34, 0xCu);
              outlined destroy of ReferenceResolutionClientProtocol?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v37 = v35;
              v10 = v50;
              MEMORY[0x1E12A2F50](v37, -1, -1);
              MEMORY[0x1E12A2F50](v34, -1, -1);
            }

            else
            {
            }

            goto LABEL_7;
          }

          v19 = v18;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          UserID.init(sharedUserId:)();
          v20 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = v12;
          v23 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
          v24 = v12[2];
          v25 = (v22 & 1) == 0;
          v26 = v24 + v25;
          if (__OFADD__(v24, v25))
          {
            goto LABEL_33;
          }

          v27 = v22;
          if (v12[3] >= v26)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v12 = v52;
              if ((v22 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v12 = v52;
              if ((v27 & 1) == 0)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
            v28 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
            if ((v27 & 1) != (v29 & 1))
            {
              v43 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_40;
            }

            v23 = v28;
            v12 = v52;
            if ((v27 & 1) == 0)
            {
LABEL_25:
              v12[(v23 >> 6) + 8] |= 1 << v23;
              v38 = v47;
              v39 = v49;
              (*(v47 + 16))(v12[6] + *(v47 + 72) * v23, v4, v49);
              *(v12[7] + 8 * v23) = v20;

              (*(v38 + 8))(v4, v39);
              v40 = v12[2];
              v41 = __OFADD__(v40, 1);
              v42 = v40 + 1;
              if (v41)
              {
                goto LABEL_35;
              }

              v12[2] = v42;
              goto LABEL_6;
            }
          }

          v13 = v12[7];
          v14 = *(v13 + 8 * v23);
          *(v13 + 8 * v23) = v20;

          (*v48)(v4, v49);
LABEL_6:
          v10 = v50;
LABEL_7:
          ++v11;
          if (v17 == v10)
          {

            goto LABEL_38;
          }
        }
      }
    }

    v12 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v12 = 0;
  }

LABEL_38:
  v43 = v12;
LABEL_40:
  result.value._rawValue = v43;
  result.is_nil = v6;
  return result;
}

Swift::String __swiftcall AFUserIdentityClassfication.toAceUserIdentityClassification()()
{
  if ((v0 - 1) > 3)
  {
    v2 = *MEMORY[0x1E69C83C8];
  }

  else
  {
    v1 = **(&unk_1E8639308 + v0 - 1);
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id SAConfidenceScores.toVoiceIdScoreCard()()
{
  v1 = v0;
  [v0 processedAudioDurationMilliseconds];
  v26.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v25.super.super.isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  SAConfidenceScores.scoresDict()();
  v24 = [v0 scoringSchemeVersion];
  v2 = [v0 thresholdType];
  if (v2)
  {
    v3 = v2;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v23 = 0;
    v5 = 0;
  }

  v6 = [v0 assetVersion];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [v1 classifiedUser];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = SAConfidenceScores.af_userIdentityClassification()();
  v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (v5)
  {
    v18 = MEMORY[0x1E12A1410](v23, v5);

    if (v10)
    {
      goto LABEL_12;
    }

LABEL_15:
    v19 = 0;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v18 = 0;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_12:
  v19 = MEMORY[0x1E12A1410](v8, v10);

  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_13:
  v20 = MEMORY[0x1E12A1410](v13, v15);

LABEL_17:
  v21 = [objc_allocWithZone(MEMORY[0x1E698D268]) initWithSpIdAudioProcessedDuration:v26.super.super.isa spIdUnknownUserScore:v25.super.super.isa spIdKnownUserScores:v17.super.isa spIdUserScoresVersion:v24 spIdScoreThresholdingType:v18 spIdAssetVersion:v19 userClassified:v20 userIdentityClassification:v16];

  return v21;
}

uint64_t SAConfidenceScores.scoresDict()()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = [v1 scores];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUserConfidenceScore, 0x1E69C7C00);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v7 = 0;
      v35 = v5;
      v36 = v5 & 0xC000000000000001;
      v34 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v36)
        {
          v8 = MEMORY[0x1E12A1FE0](v7, v5);
        }

        else
        {
          if (v7 >= *(v34 + 16))
          {
            goto LABEL_26;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 sharedUserId];
        if (v11)
        {
          v5 = i;
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          [v9 confidenceScore];
          v16.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
          v20 = v2[2];
          v21 = (v19 & 1) == 0;
          v22 = __OFADD__(v20, v21);
          v23 = v20 + v21;
          if (v22)
          {
            goto LABEL_25;
          }

          v24 = v19;
          if (v2[3] >= v23)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_18;
            }

            v29 = v18;
            specialized _NativeDictionary.copy()();
            v18 = v29;
            if ((v24 & 1) == 0)
            {
              goto LABEL_21;
            }

LABEL_19:
            v26 = v18;

            v27 = v2[7];
            v28 = *(v27 + 8 * v26);
            *(v27 + 8 * v26) = v16;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
            v18 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
            if ((v24 & 1) != (v25 & 1))
            {
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

LABEL_18:
            if (v24)
            {
              goto LABEL_19;
            }

LABEL_21:
            v2[(v18 >> 6) + 8] |= 1 << v18;
            v30 = (v2[6] + 16 * v18);
            *v30 = v13;
            v30[1] = v15;
            *(v2[7] + 8 * v18) = v16;

            v31 = v2[2];
            v22 = __OFADD__(v31, 1);
            v32 = v31 + 1;
            if (v22)
            {
              goto LABEL_27;
            }

            v2[2] = v32;
          }

          i = v5;
          v5 = v35;
          goto LABEL_6;
        }

LABEL_6:
        ++v7;
        if (v10 == i)
        {
          goto LABEL_29;
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
      ;
    }

LABEL_29:
  }

  return v2;
}

uint64_t SAConfidenceScores.af_userIdentityClassification()()
{
  v1 = [v0 userIdentityClassification];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = *MEMORY[0x1E69C83B8];
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v7 == v5)
    {
      v10 = 4;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        v10 = 4;
LABEL_11:

        return v10;
      }

      v12 = *MEMORY[0x1E69C83C0];
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v13 == v5)
      {
        v10 = 3;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          v10 = 3;
          goto LABEL_11;
        }

        v16 = *MEMORY[0x1E69C83D0];
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v17 == v5)
        {
          v10 = 1;
        }

        else
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            v10 = 1;
            goto LABEL_11;
          }

          v19 = *MEMORY[0x1E69C83D8];
          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v20 == v5)
          {
            v10 = 2;
          }

          else
          {
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v21)
            {
              v10 = 2;
              goto LABEL_11;
            }

            v22 = *MEMORY[0x1E69C83C8];
            if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v3 || v23 != v5)
            {
              _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v10 = 0;
          }
        }
      }
    }

    goto LABEL_11;
  }

  return 0;
}

id AFVoiceIdScoreCard.toSAConfidenceScores()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69C7790]) init];
  v2 = [v0 spIdAudioProcessedDuration];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  [v1 setProcessedAudioDurationMilliseconds_];
  v5 = [v0 spIdUserScoresVersion];
  [v1 setScoringSchemeVersion_];

  v6 = AFVoiceIdScoreCard.thresholdType()();
  v7 = MEMORY[0x1E12A1410](v6);

  [v1 setThresholdType_];

  v8 = [v0 spIdAssetVersion];
  [v1 setAssetVersion_];

  v9 = [v0 userClassified];
  [v1 setClassifiedUser_];

  [v0 userIdentityClassification];
  countAndFlagsBits = AFUserIdentityClassfication.toAceUserIdentityClassification()()._countAndFlagsBits;
  v11 = MEMORY[0x1E12A1410](countAndFlagsBits);

  [v1 setUserIdentityClassification_];

  AFVoiceIdScoreCard.scoresArray()();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUserConfidenceScore, 0x1E69C7C00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setScores_];

  return v1;
}

uint64_t AFVoiceIdScoreCard.thresholdType()()
{
  v1 = [v0 spIdScoreThresholdingType];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v3 == 0xD000000000000025 && 0x80000001DCA800C0 == v5;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

LABEL_8:
    v7 = MEMORY[0x1E69C8440];
    goto LABEL_9;
  }

  if (v3 == 0xD000000000000028 && 0x80000001DCA800F0 == v5)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v7 = MEMORY[0x1E69C8438];
LABEL_9:
  v8 = *v7;

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void AFVoiceIdScoreCard.scoresArray()()
{
  v21 = MEMORY[0x1E69E7CC0];
  v1 = [v0 spIdKnownUserScores];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = 0;
    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;
    if (v7)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        return;
      }

      v7 = *(v3 + 64 + 8 * v9);
      ++v4;
      if (v7)
      {
        v4 = v9;
        do
        {
LABEL_9:
          v10 = __clz(__rbit64(v7)) | (v4 << 6);
          v11 = (*(v3 + 48) + 16 * v10);
          v12 = *v11;
          v13 = v11[1];
          v14 = *(*(v3 + 56) + 8 * v10);
          v15 = objc_allocWithZone(MEMORY[0x1E69C7C00]);

          v16 = v14;
          v17 = [v15 init];
          [v17 setConfidenceScore_];
          v18 = MEMORY[0x1E12A1410](v12, v13);

          [v17 setSharedUserId_];

          v19 = v17;
          MEMORY[0x1E12A1680]();
          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v20 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v7 &= v7 - 1;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (v7);
      }
    }

    __break(1u);
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16SAHomeMemberInfoC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v43 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v43;
    v42 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = v9;
    v41 = v16;
    v17 = *(v15 + 56);
    v39 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v41(v8, *(a2 + 48) + v17 * v11, v4);
      v22 = *(a2 + 40);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v39)(v8, v4);
      v14 = v20;
      v24 = v23 & v20;
      if (a1 >= v42)
      {
        if (v24 >= v42 && a1 >= v24)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v43 + 48) + v18 * a1 >= (*(v43 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v27 = *(v43 + 56);
          v28 = *(*(type metadata accessor for Parse() - 8) + 72);
          v29 = v28 * a1;
          v30 = v27 + v28 * a1;
          v31 = v28 * v11;
          v32 = v27 + v28 * v11 + v28;
          if (v29 < v31 || v30 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v40;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v34 = v29 == v31;
            v9 = v40;
            v14 = v20;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v42 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v40;
      a2 = v43;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

{
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v40 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v41 = *(v15 + 56);
    v38 = (v15 - 8);
    v39 = v16;
    do
    {
      v17 = v9;
      v18 = v41 * v11;
      v19 = v14;
      v20 = v15;
      v39(v8, *(a2 + 48) + v41 * v11, v4);
      v21 = *(a2 + 40);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v38)(v8, v4);
      v14 = v19;
      v23 = v22 & v19;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v26 = *(a2 + 48);
          v27 = v26 + v41 * a1;
          v28 = v26 + v18 + v41;
          v29 = v41 * a1 < v18 || v27 >= v28;
          v15 = v20;
          if (v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v30 = v41 * a1 == v18;
            v9 = v17;
            if (!v30)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v11);
          if (a1 != v11 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

{
  v42 = type metadata accessor for ConversationSessionKey();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v40 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v38 = a2 + 64;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v39(v41, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v40)
      {
        if (v26 >= v40 && a1 >= v26)
        {
LABEL_15:
          v6 = v43;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v43 + 48) + v18 * a1 >= (*(v43 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v40 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }
}

{
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

{
  v41 = type metadata accessor for UserID();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

{
  specialized _NativeDictionary._delete(at:)(a1, a2, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
}

{
  specialized _NativeDictionary._delete(at:)(a1, a2, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
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
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x1E69D0AA8]);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x1E69D0100]);
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
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
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v40 = a3;
  v41 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    v45 = (v15 + 1) & v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v43 = a2 + 64;
    v44 = v18;
    v19 = *(v17 + 56);
    v42 = (v17 - 8);
    v46 = v19;
    do
    {
      v20 = v19 * v13;
      v21 = v16;
      v22 = v17;
      v44(v10, *(a2 + 48) + v19 * v13, v6);
      v23 = *(a2 + 40);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v42)(v10, v6);
      v16 = v21;
      v25 = v24 & v21;
      if (a1 >= v45)
      {
        if (v25 >= v45 && a1 >= v25)
        {
LABEL_15:
          v17 = v22;
          if (v46 * a1 < v20 || *(a2 + 48) + v46 * a1 >= (*(a2 + 48) + v20 + v46))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v46 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = *(a2 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v40, v41) - 8) + 72);
          v30 = v29 * a1;
          v31 = v28 + v29 * a1;
          v32 = v29 * v13;
          v33 = v28 + v29 * v13 + v29;
          if (v30 < v32 || v31 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v43;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v35 = v30 == v32;
            v11 = v43;
            v16 = v21;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v45 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v43;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v46;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }
}

char *specialized _NativeDictionary._delete(at:)(char *result, uint64_t a2)
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
        result = (v18 + 80 * v3);
        v19 = (v18 + 80 * v6);
        if (v3 != v6 || result >= v19 + 80)
        {
          result = memmove(result, v19, 0x50uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized static ConversationMUXUtils.getAllUserIds(from:)()
{
  v47 = type metadata accessor for UserID();
  v0 = *(v47 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x1EEE9AC00](v47);
  v43 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v46 = v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = v38 - v10;
  v11 = MUXContextMessage.userIdToHomeMember.getter();
  v48 = MEMORY[0x1E69E7CD0];
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v38[1] = v0 + 16;
  v45 = (v0 + 32);
  v40 = v0;
  v41 = v11;
  v42 = (v0 + 8);

  v18 = 0;
  v39 = v9;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v24 = v23 | (v19 << 6);
      v26 = v40;
      v25 = v41;
      (*(v40 + 16))(v46, *(v41 + 48) + *(v40 + 72) * v24, v47);
      v27 = *(*(v25 + 56) + 8 * v24);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      v29 = *(v28 + 48);
      v9 = v39;
      (*(v26 + 32))();
      *&v9[v29] = v27;
      (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
      v30 = v27;
      v21 = v19;
      v22 = v44;
LABEL_13:
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v9, v22, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      if ((*(*(v31 - 8) + 48))(v22, 1, v31) == 1)
      {
        break;
      }

      v32 = *(v22 + *(v31 + 48));
      v33 = v43;
      v34 = v22;
      v35 = v47;
      (*v45)(v43, v34, v47);
      v36 = v46;
      specialized Set._Variant.insert(_:)(v46, v33);

      result = (*v42)(v36, v35);
      v18 = v21;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return v48;
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    v22 = v44;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
        (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void specialized static ConversationMUXUtils.getAllKnownUserIds(from:)()
{
  v0 = type metadata accessor for UserID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v62 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v59 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v59 - v14;
  v15 = MUXContextMessage.userIdToHomeMember.getter();
  v78[4] = MEMORY[0x1E69E7CD0];
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v61 = (v17 + 63) >> 6;
  v71 = (v1 + 16);
  v73 = (v1 + 32);
  v74 = *MEMORY[0x1E69C7EF0];
  v63 = v1;
  v65 = (v1 + 8);
  v64 = v15;

  v20 = 0;
  v69 = v13;
  v66 = v16;
  v60 = v0;
  v70 = v7;
  if (!v19)
  {
    goto LABEL_9;
  }

  while (1)
  {
LABEL_8:
    v25 = v0;
    v26 = v20;
LABEL_17:
    v29 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v30 = v29 | (v26 << 6);
    v31 = v64;
    v32 = v63;
    v33 = v72;
    (*(v63 + 16))(v72, *(v64 + 48) + *(v63 + 72) * v30, v25);
    v34 = *(*(v31 + 56) + 8 * v30);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    v36 = *(v35 + 48);
    v37 = *(v32 + 32);
    v38 = v69;
    v39 = v33;
    v40 = v25;
    v37(v69, v39, v25);
    *&v38[v36] = v34;
    v13 = v38;
    (*(*(v35 - 8) + 56))(v38, 0, 1, v35);
    v41 = v34;
    v7 = v70;
LABEL_18:
    v42 = v67;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v13, v67, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
    {

      return;
    }

    v21 = *(v42 + *(v43 + 48));
    v0 = v40;
    (*v73)(v7, v42, v40);
    v44 = [v21 attributes];
    if (v44)
    {
      break;
    }

LABEL_7:
    v22 = v62;
    (*v71)(v62, v7, v0);
    v23 = v72;
    specialized Set._Variant.insert(_:)(v72, v22);

    v24 = *v65;
    (*v65)(v23, v0);
    v24(v7, v0);
    v16 = v66;
    if (!v19)
    {
      goto LABEL_9;
    }
  }

  v68 = v21;
  v45 = v44;
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = *(v46 + 16);
  if (!v47)
  {

    v13 = v69;
    v7 = v70;
LABEL_6:
    v21 = v68;
    goto LABEL_7;
  }

  v48 = 0;
  v49 = v46 + 32;
  while (1)
  {
    if (v48 >= *(v46 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    outlined init with copy of Any(v49, v78);
    outlined init with copy of Any(v78, v77);
    v50 = swift_dynamicCast();
    v51 = v76;
    if (v50)
    {
      v52 = v75;
    }

    else
    {
      v52 = 0;
    }

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v50)
    {
      v55 = v51 == 0;
    }

    else
    {
      v55 = 1;
    }

    if (v55)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v78);

      goto LABEL_23;
    }

    if (v52 == v53 && v51 == v54)
    {
      break;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    if (v57)
    {
      goto LABEL_41;
    }

LABEL_23:
    ++v48;
    v49 += 32;
    if (v47 == v48)
    {

      v0 = v60;
      v13 = v69;
      v7 = v70;
      goto LABEL_6;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v78);
LABEL_41:

  v7 = v70;
  v0 = v60;
  (*v65)(v70, v60);
  v13 = v69;
  v16 = v66;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v61 <= v20 + 1)
  {
    v27 = v20 + 1;
  }

  else
  {
    v27 = v61;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v26 >= v61)
    {
      v40 = v0;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      (*(*(v58 - 8) + 56))(v13, 1, 1, v58);
      v19 = 0;
      v20 = v28;
      goto LABEL_18;
    }

    v19 = *(v16 + 8 * v26);
    ++v20;
    if (v19)
    {
      v25 = v0;
      v20 = v26;
      goto LABEL_17;
    }
  }

LABEL_45:
  __break(1u);
}