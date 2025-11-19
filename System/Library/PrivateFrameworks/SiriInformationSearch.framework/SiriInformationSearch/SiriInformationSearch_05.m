Swift::Void __swiftcall VocabularySearchClient.resetTokenizer()()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in VocabularySearchClient.resetTokenizer();
  *(v2 + 24) = v0;
  v4[4] = _sIg_Ieg_TRTA_0;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed () -> ();
  v4[3] = &block_descriptor_2;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t VocabularySearchClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t VocabularySearchClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t closure #1 in static VocabularyResult.makeResults(from:userId:)@<X0>(id a1@<X1>, void **a2@<X0>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = [a1 sourceIdentifier];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = [v7 sourceItemIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = a1;
  [a1 itemType];
  v11 = [a3 fieldMatches];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SEMFieldMatch, 0x277D55D28);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
LABEL_30:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = a3;
  if (v13)
  {
    v14 = 0;
    v47 = MEMORY[0x277D84F90];
    do
    {
      a3 = v14;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x223DDFF80](a3, v12);
        }

        else
        {
          if (a3 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v15 = *(v12 + 8 * a3 + 32);
        }

        v16 = v15;
        v14 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v17 = [v15 entityFieldInfo];
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++a3;
        if (v14 == v13)
        {
          goto LABEL_21;
        }
      }

      v19 = [v18 fieldType];

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
      }

      v21 = *(v47 + 2);
      v20 = *(v47 + 3);
      if (v21 >= v20 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v47);
      }

      *(v47 + 2) = v21 + 1;
      *&v47[2 * v21 + 32] = v19;
    }

    while (v14 != v13);
  }

LABEL_21:

  v22 = [v46 spanInfo];
  [v22 matchScore];

  v23 = [v46 spanInfo];
  [v23 spanRange];

  v24 = [v46 spanInfo];
  v25 = [v24 spanRange];
  v27 = v26;

  if (__OFADD__(v25, v27))
  {
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v28 = [v46 spanValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = swift_allocObject();
  *(v29 + 16) = MEMORY[0x277D84F90];
  v30 = swift_allocObject();
  v30[2] = partial apply for closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
  v30[3] = v29;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed CCItemField) -> ();
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CCItemField) -> ();
  aBlock[3] = &block_descriptor_13;
  v31 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v32 = [a4 recursivelyEnumerateFieldsWithError:aBlock usingBlock:v31];
  _Block_release(v31);
  v33 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_32;
  }

  if ((v32 & 1) == 0)
  {
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_beginAccess();
  v36 = *(v29 + 16);

  v37 = [v43 personaIdentifier];
  if (v37)
  {
    v38 = v37;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v39 = objc_allocWithZone(type metadata accessor for VocabularyResult());

  v40 = VocabularyResult.init(appId:itemId:itemType:fieldTypes:score:spanBegin:spanEnd:semanticValue:fields:userId:personaId:)();

  *a5 = v40;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:)(void *a1, uint64_t a2)
{
  switch([a1 dataType])
  {
    case 0u:
      v4 = [a1 stringValue];
      if (v4)
      {
        v5 = v4;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      goto LABEL_27;
    case 1u:
      v20 = [a1 repeatedStringValue];
      if (v20)
      {
        v21 = v20;
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = *(v22 + 16);
        if (!v23)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
        v23 = *(MEMORY[0x277D84F90] + 16);
        if (!v23)
        {
LABEL_37:

          return;
        }
      }

      v32 = 0;
      v33 = (v22 + 40);
      while (v32 < *(v22 + 16))
      {
        v35 = *(v33 - 1);
        v34 = *v33;

        [a1 fieldType];
        v36 = objc_allocWithZone(type metadata accessor for VocabularyField());
        VocabularyField.init(value:fieldType:)();
        v37 = swift_beginAccess();
        MEMORY[0x223DDF820](v37);
        if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v32;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v33 += 2;
        if (v23 == v32)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_39:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_28:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      return;
    case 2u:
      LODWORD(v39) = [a1 uint32Value];
      goto LABEL_26;
    case 3u:
      v14 = [a1 repeatedUInt32Value];
      if (!v14)
      {
        return;
      }

      v7 = v14;
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      *(v15 + 24) = a1;
      v43 = partial apply for closure #1 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v44 = v15;
      v39 = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt32) -> ();
      v42 = &block_descriptor_49;
      v9 = _Block_copy(&v39);

      v16 = a1;

      [v7 enumerateUInt32ValuesWithBlock_];
      goto LABEL_22;
    case 4u:
      v39 = [a1 uint64Value];
      goto LABEL_26;
    case 5u:
      v24 = [a1 repeatedUInt64Value];
      if (!v24)
      {
        return;
      }

      v7 = v24;
      v25 = swift_allocObject();
      *(v25 + 16) = a2;
      *(v25 + 24) = a1;
      v43 = partial apply for closure #2 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v44 = v25;
      v39 = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt64) -> ();
      v42 = &block_descriptor_43;
      v9 = _Block_copy(&v39);

      v26 = a1;

      [v7 enumerateUInt64ValuesWithBlock_];
      goto LABEL_22;
    case 6u:
      LODWORD(v39) = [a1 int32Value];
      goto LABEL_26;
    case 7u:
      v17 = [a1 repeatedInt32Value];
      if (!v17)
      {
        return;
      }

      v7 = v17;
      v18 = swift_allocObject();
      *(v18 + 16) = a2;
      *(v18 + 24) = a1;
      v43 = partial apply for closure #3 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v44 = v18;
      v39 = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Int32) -> ();
      v42 = &block_descriptor_37;
      v9 = _Block_copy(&v39);

      v19 = a1;

      [v7 enumerateInt32ValuesWithBlock_];
      goto LABEL_22;
    case 8u:
      v39 = [a1 int64Value];
LABEL_26:
      dispatch thunk of CustomStringConvertible.description.getter();
      goto LABEL_27;
    case 9u:
      v11 = [a1 repeatedInt64Value];
      if (!v11)
      {
        return;
      }

      v7 = v11;
      v12 = swift_allocObject();
      *(v12 + 16) = a2;
      *(v12 + 24) = a1;
      v43 = partial apply for closure #4 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v44 = v12;
      v39 = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Int64) -> ();
      v42 = &block_descriptor_31;
      v9 = _Block_copy(&v39);

      v13 = a1;

      [v7 enumerateInt64ValuesWithBlock_];
      goto LABEL_22;
    case 0xAu:
      [a1 floatValue];
      Float.description.getter();
      goto LABEL_27;
    case 0xBu:
      v6 = [a1 repeatedFloatValue];
      if (!v6)
      {
        return;
      }

      v7 = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = a2;
      *(v8 + 24) = a1;
      v43 = partial apply for closure #5 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v44 = v8;
      v39 = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Float) -> ();
      v42 = &block_descriptor_25;
      v9 = _Block_copy(&v39);

      v10 = a1;

      [v7 enumerateFloatValuesWithBlock_];
      goto LABEL_22;
    case 0xCu:
      [a1 doubleValue];
      Double.description.getter();
LABEL_27:
      [a1 fieldType];
      v30 = objc_allocWithZone(type metadata accessor for VocabularyField());
      VocabularyField.init(value:fieldType:)();
      v31 = swift_beginAccess();
      MEMORY[0x223DDF820](v31);
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

      goto LABEL_39;
    case 0xDu:
      v27 = [a1 repeatedDoubleValue];
      if (!v27)
      {
        return;
      }

      v7 = v27;
      v28 = swift_allocObject();
      *(v28 + 16) = a2;
      *(v28 + 24) = a1;
      v43 = partial apply for closure #6 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v44 = v28;
      v39 = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Double) -> ();
      v42 = &block_descriptor_19_0;
      v9 = _Block_copy(&v39);

      v29 = a1;

      [v7 enumerateDoubleValuesWithBlock_];
LABEL_22:
      _Block_release(v9);

      return;
    default:
      return;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt32) -> ()(uint64_t a1, uint64_t a2)
{
  return thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt32) -> ()(a1, a2);
}

{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t closure #1 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:)(uint64_t a1, uint64_t a2, void *a3)
{
  dispatch thunk of CustomStringConvertible.description.getter();
  [a3 fieldType];
  v5 = objc_allocWithZone(type metadata accessor for VocabularyField());
  VocabularyField.init(value:fieldType:)();
  v6 = swift_beginAccess();
  MEMORY[0x223DDF820](v6);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:)(uint64_t a1, uint64_t a2, void *a3)
{
  dispatch thunk of CustomStringConvertible.description.getter();
  [a3 fieldType];
  v5 = objc_allocWithZone(type metadata accessor for VocabularyField());
  VocabularyField.init(value:fieldType:)();
  v6 = swift_beginAccess();
  MEMORY[0x223DDF820](v6);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:)(uint64_t a1, void *a2)
{
  Float.description.getter();
  [a2 fieldType];
  v4 = objc_allocWithZone(type metadata accessor for VocabularyField());
  VocabularyField.init(value:fieldType:)();
  v5 = swift_beginAccess();
  MEMORY[0x223DDF820](v5);
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Float) -> ()(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v5, a2);
}

uint64_t closure #6 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:)(uint64_t a1, void *a2)
{
  Double.description.getter();
  [a2 fieldType];
  v4 = objc_allocWithZone(type metadata accessor for VocabularyField());
  VocabularyField.init(value:fieldType:)();
  v5 = swift_beginAccess();
  MEMORY[0x223DDF820](v5);
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Double) -> ()(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v5, a2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed CCItemField) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

id @nonobjc SEMTokenizer.init(tokenizerLocale:)(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v5 = [v2 initWithTokenizerLocale:isa error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = type metadata accessor for Locale();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = type metadata accessor for Locale();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t specialized VocabularySearchClient.init(spanMatcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a3;
  v33 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v26 = "preparedRequestsIds";
  (*(v19 + 104))(v23, *MEMORY[0x277D851C8], v18);
  static OS_dispatch_queue.global(qos:)();
  (*(v19 + 8))(v23, v18);
  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v28 + 104))(v27, *MEMORY[0x277D85260], v29);
  *(a2 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a2 + 64) = 0;
  outlined init with take of DomainWarmupHandling(&v31, a2 + 24);
  return a2;
}

uint64_t specialized static VocabularyResult.makeResults(from:userId:)(void *a1)
{
  [a1 entityInfo];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for music != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.music);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2232BB000, v13, v14, "VocabularyResult: SEM span match result did not contain Cascade entity info", v15, 2u);
      MEMORY[0x223DE0F80](v15, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v1 allMetaContent];
  if (!v3)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17CCItemMetaContent_So0A7MessageCXcMd, &_sSo17CCItemMetaContent_So0A7MessageCXcMR);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = [v2 content];
  v21 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DDFF80](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v20 = v9;
      closure #1 in static VocabularyResult.makeResults(from:userId:)(v2, &v20, a1, v17, &v19);

      if (v19)
      {
        MEMORY[0x223DDF820]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v21;
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_27:

  swift_unknownObjectRelease();
  return v8;
}

void partial apply for closure #1 in VocabularySearchClient.resetTokenizer()()
{
  v1 = *(v0 + 64);
  *(v0 + 64) = 0;
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed CCItemField) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t static AmpDataProvider.make(mediaUserStateCenter:)(uint64_t a1)
{
  outlined init with copy of MediaUserStateCenter?(a1, v4, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v1 = swift_allocObject();
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v4, v1 + 16);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v1);
}

uint64_t AmpDataProvider.cachedMediaUserStates.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t AmpDataProvider.__allocating_init(mediaUserStateCenter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 48) = 0;
  *(v2 + 56) = v3;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v2 + 16);
  swift_endAccess();
  return v2;
}

uint64_t AmpDataProvider.init(mediaUserStateCenter:)(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 48) = 0;
  *(v1 + 56) = v3;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v1 + 16);
  swift_endAccess();
  return v1;
}

uint64_t AmpDataProvider.prepare(dispatchQueue:)()
{
  v1 = v0;
  v2 = type metadata accessor for SignpostToken();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v7, static Signposter.pommes);
  v8 = OSSignposter.begin(name:context:)("proxy.AMPSlice", 14, 2u, 0, v6);
  v9 = *(*v0 + 96);
  v9(v59, v8);
  v10 = v60;
  v11 = outlined destroy of MediaUserStateCenter?(v59, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  if (!v10)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pommes);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v62 = v6;
      v16 = v15;
      *v15 = 0;
      _os_log_impl(&dword_2232BB000, v13, v14, "AmpDataProvider Initializing the shared media user state center ...", v15, 2u);
      v6 = v62;
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    v17 = [objc_opt_self() shared];
    v60 = type metadata accessor for ICMediaUserStateCenter();
    v61 = &protocol witness table for ICMediaUserStateCenter;
    v59[0] = v17;
    (*(*v1 + 104))(v59);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2232BB000, v18, v19, "AmpDataProvider Initializing the shared media user state center complete", v20, 2u);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }
  }

  v9(&v57, v11);
  if (!v58)
  {
    outlined destroy of MediaUserStateCenter?(&v57, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.pommes);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2232BB000, v34, v35, "AmpDataProvider the shared media user state center initialization failed", v36, 2u);
      MEMORY[0x223DE0F80](v36, -1, -1);
    }

    lazy protocol witness table accessor for type DataProviderError and conformance DataProviderError();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
    goto LABEL_38;
  }

  outlined init with take of DomainWarmupHandling(&v57, v59);
  if (!AFSupportsMultiUser())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.pommes);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2232BB000, v39, v40, "AmpDataProvider getting the current user state from shared media user state center ...", v41, 2u);
      MEMORY[0x223DE0F80](v41, -1, -1);
    }

    v42 = v60;
    v43 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    (v43[2])(&v55, v42, v43);
    if (v56)
    {
      outlined init with take of DomainWarmupHandling(&v55, &v57);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2232BB000, v44, v45, "AmpDataProvider getting the current user state from shared media user state center complete", v46, 2u);
        MEMORY[0x223DE0F80](v46, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMR);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_2234CF920;
      outlined init with copy of AppDataProviding(&v57, v47 + 32);
      (*(*v1 + 128))(v47);
      __swift_destroy_boxed_opaque_existential_1(&v57);
      goto LABEL_34;
    }

    outlined destroy of MediaUserStateCenter?(&v55, &_s21SiriInformationSearch14MediaUserState_pSgMd, &_s21SiriInformationSearch14MediaUserState_pSgMR);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2232BB000, v49, v50, "AmpDataProvider the current user state cache is not initialized", v51, 2u);
      MEMORY[0x223DE0F80](v51, -1, -1);
    }

    lazy protocol witness table accessor for type DataProviderError and conformance DataProviderError();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v59);
LABEL_38:
    v48 = v6;
    goto LABEL_39;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.pommes);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2232BB000, v22, v23, "AmpDataProvider getting the current user states from shared media user state center", v24, 2u);
    MEMORY[0x223DE0F80](v24, -1, -1);
  }

  v25 = v60;
  v26 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v27 = (v26[3])(v25, v26);
  v28 = (*(*v1 + 128))(v27);
  v29 = *((*(*v1 + 120))(v28) + 16);

  if (!v29)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2232BB000, v30, v31, "AmpDataProvider mediaUserStates is empty under Multi-User mode", v32, 2u);
      MEMORY[0x223DE0F80](v32, -1, -1);
    }
  }

LABEL_34:
  __swift_destroy_boxed_opaque_existential_1(v59);
  v48 = v6;
LABEL_39:
  OSSignposter.end(token:message:)(v48, 0, 0xE000000000000000);
  return outlined destroy of SignpostToken(v6, type metadata accessor for SignpostToken);
}

uint64_t AmpDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v24 - v6;
  outlined init with copy of MediaUserStateCenter?(a1, &v24 - v6, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v8 = type metadata accessor for PommesSearchRequest(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    v9 = outlined destroy of MediaUserStateCenter?(v7, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  }

  else
  {
    v10 = v7[*(v8 + 60)];
    v9 = outlined destroy of SignpostToken(v7, type metadata accessor for PommesSearchRequest);
    if (v10 == 1)
    {
      return (*(*v1 + 120))(v9);
    }
  }

  v12 = (*(*v1 + 120))(v9);
  v13 = v12;
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v12 + 32;
    while (v15 < *(v13 + 16))
    {
      outlined init with copy of AppDataProviding(v16, &v25);
      v17 = v26;
      v18 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, v26);
      if ((*(v18 + 32))(v17, v18))
      {

        outlined init with take of DomainWarmupHandling(&v25, v28);
        outlined init with take of DomainWarmupHandling(v28, v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMR);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_2234CF920;
        outlined init with take of DomainWarmupHandling(v29, v23 + 32);
        return v23;
      }

      ++v15;
      __swift_destroy_boxed_opaque_existential_1(&v25);
      v16 += 40;
      if (v14 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:

  if (one-time initialization token for pommes != -1)
  {
LABEL_16:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.pommes);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2232BB000, v20, v21, "AmpDataProvider could not find an active user state for non-multi user request", v22, 2u);
    MEMORY[0x223DE0F80](v22, -1, -1);
  }

  return 0;
}

uint64_t AmpDataProvider.deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AmpDataProvider.__deallocating_deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance AmpDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 168))();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DataProviderError and conformance DataProviderError()
{
  result = lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError;
  if (!lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError;
  if (!lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError);
  }

  return result;
}

uint64_t dispatch thunk of AmpDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 168);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t PIMSEnablementProvider.getMusicRankingInfluenceStatus()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MediaSuggestionManager.EnablementStatus();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for MediaSuggestionManager();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  MediaSuggestionManager.init()();
  dispatch thunk of MediaSuggestionManager.fetchStatus()();

  (*(v3 + 16))(v8, v11, v2);
  v15 = (*(v3 + 88))(v8, v2);
  if (v15 == *MEMORY[0x277D5FDC0])
  {
    (*(v3 + 8))(v11, v2);
    v16 = MEMORY[0x277D39A10];
LABEL_7:
    v17 = *v16;
    v18 = type metadata accessor for Apple_Parsec_Siri_Context_MusicRankingInfluence();
    return (*(*(v18 - 8) + 104))(a1, v17, v18);
  }

  if (v15 == *MEMORY[0x277D5FDB0])
  {
    (*(v3 + 8))(v11, v2);
    v16 = MEMORY[0x277D39A00];
    goto LABEL_7;
  }

  if (v15 == *MEMORY[0x277D5FDB8])
  {
    (*(v3 + 8))(v11, v2);
    v16 = MEMORY[0x277D39A08];
    goto LABEL_7;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.pommes);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2232BB000, v21, v22, "MediaSuggestionManager returned an unknown PIMS enablement status. Defaulting to disabled.", v23, 2u);
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

  v24 = *(v3 + 8);
  v24(v11, v2);
  v25 = *MEMORY[0x277D39A10];
  v26 = type metadata accessor for Apple_Parsec_Siri_Context_MusicRankingInfluence();
  (*(*(v26 - 8) + 104))(a1, v25, v26);
  return (v24)(v8, v2);
}

uint64_t static AudioQueueStateDataProvider.make(audioQueueStateManager:)(void *a1)
{
  type metadata accessor for AudioQueueStateDataProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
  swift_allocObject();
  v3 = a1;
  return specialized AnyDataProvider.init<A>(provider:)(v2);
}

uint64_t AudioQueueStateDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t createQueueStateProfileSlice(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a1;
  v92 = a2;
  v74 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v73 = *(v74 - 8);
  v2 = *(v73 + 64);
  MEMORY[0x28223BE20](v74, v3);
  v72 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v84 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Google_Protobuf_Any();
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v83 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v78 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v89 = *(v17 - 8);
  v90 = v17;
  v18 = *(v89 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v88 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8, v23);
  v75 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v70 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v33 = &v70 - v32;
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  v41 = *(*(v40 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v40 - 8, v42);
  v77 = &v70 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v70 - v46;
  v48 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v49 = *(v48 - 8);
  v76 = *(v49 + 56);
  v76(v47, 1, 1, v48);
  outlined init with copy of MediaUserStateCenter?(v91, v33, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v50 = *(v35 + 48);
  v91 = v34;
  if (v50(v33, 1, v34) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v33, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
    return outlined init with take of Apple_Parsec_Siri_V2alpha_ProfileSlice?(v47, v92);
  }

  else
  {
    v52 = v91;
    (*(v35 + 32))(v39, v33, v91);
    v93[3] = v52;
    v93[4] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo and conformance Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v93);
    v54 = *(v35 + 16);
    v71 = v39;
    v54(boxed_opaque_existential_1, v39, v52);
    defaultAnyTypeURLPrefix.getter();
    v87 = v28;
    Google_Protobuf_Any.init(message:partial:typePrefix:)();
    v70 = v35;
    v55 = v87;
    v56 = v88;
    v57 = v81;
    v58 = v82;
    (*(v81 + 56))(v87, 0, 1, v82);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()();
    (*(v79 + 104))(v78, *MEMORY[0x277D39AC8], v80);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    v59 = v75;
    outlined init with copy of MediaUserStateCenter?(v55, v75, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    v60 = *(v57 + 48);
    if (v60(v59, 1, v58) == 1)
    {
      Google_Protobuf_Any.init()();
      if (v60(v59, 1, v58) != 1)
      {
        outlined destroy of MediaUserStateCenter?(v59, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
      }
    }

    else
    {
      (*(v57 + 32))(v83, v59, v58);
    }

    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
    (*(v85 + 104))(v84, *MEMORY[0x277D39D58], v86);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
    v61 = v77;
    Apple_Parsec_Siri_V2alpha_ProfileSlice.init()();
    v76(v61, 0, 1, v48);
    outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSlice?(v61, v47);
    v62 = *(v49 + 48);
    if (!v62(v47, 1, v48))
    {
      (*(v73 + 104))(v72, *MEMORY[0x277D396F0], v74);
      Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    }

    v63 = v62(v47, 1, v48);
    v64 = v92;
    v66 = v89;
    v65 = v90;
    if (!v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
      v67 = *(v66 + 72);
      v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_2234CF920;
      (*(v66 + 16))(v69 + v68, v56, v65);
      Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
    }

    (*(v66 + 8))(v56, v65);
    outlined destroy of MediaUserStateCenter?(v87, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    (*(v70 + 8))(v71, v91);
    outlined init with copy of MediaUserStateCenter?(v47, v64, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
    return outlined destroy of MediaUserStateCenter?(v47, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  }
}

uint64_t outlined init with take of Apple_Parsec_Siri_V2alpha_ProfileSlice?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo and conformance Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo and conformance Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo and conformance Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo and conformance Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);
  }

  return result;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSlice?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of AudioQueueStateDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 120);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t SportsProperty.apply(to:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{

  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 == 6)
      {
        return SportsItem.athlete.setter();
      }

      else
      {
        return SportsItem.athleteQId.setter();
      }
    }

    else if (a4 == 4)
    {
      return SportsItem.sport.setter();
    }

    else
    {
      return SportsItem.sportQId.setter();
    }
  }

  else if (a4 > 1u)
  {
    if (a4 == 2)
    {
      return SportsItem.league.setter();
    }

    else
    {
      return SportsItem.leagueQId.setter();
    }
  }

  else if (a4)
  {
    return SportsItem.teamQId.setter();
  }

  else
  {
    return SportsItem.team.setter();
  }
}

uint64_t static PersonalizationLevel.from(uso:)@<X0>(unint64_t a1@<X8>)
{
  v2 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
  if (v2)
  {
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v18 = a1;
      v6 = 0;
      a1 = v3 & 0xC000000000000001;
      while (1)
      {
        if (a1)
        {
          MEMORY[0x223DDFF80](v6, v3);
        }

        else
        {
          if (v6 >= *(v4 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v3 + 8 * v6 + 32);
        }

        dispatch thunk of CodeGenListEntry.entry.getter();
        if (v19 && (v8 = dispatch thunk of UsoEntity_common_SportsItem.type.getter(), , v8) && (v9 = dispatch thunk of UsoEntity_common_SportsItemType.name.getter(), v11 = v10, , v11))
        {
          if (v9 == 0xD000000000000015 && v11 == 0x80000002234DB330)
          {

            goto LABEL_24;
          }

          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v12)
          {

LABEL_24:
            v19 = v6;
            return closure #2 in static PersonalizationLevel.from(uso:)(&v19, v18);
          }
        }

        else
        {
        }

        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        ++v6;
        if (v13 == i)
        {

          a1 = v18;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_29:
    v17 = type metadata accessor for PersonalizationLevel();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  else
  {
    v14 = type metadata accessor for PersonalizationLevel();
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }
}

uint64_t closure #2 in static PersonalizationLevel.from(uso:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
  if (!result)
  {
LABEL_26:
    v14 = type metadata accessor for PersonalizationLevel();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DDFF80](v3, result);
    goto LABEL_6;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(result + 8 * v3 + 32);

LABEL_6:

    dispatch thunk of CodeGenListEntry.entry.getter();

    if (v15)
    {
      v6 = dispatch thunk of UsoEntity_common_SportsItem.name.getter();
      v8 = v7;

      if (v8)
      {
        if (v6 == 0xD00000000000001ALL && 0x80000002234DB350 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v9 = MEMORY[0x277D560F8];
LABEL_12:
          v10 = *v9;
          v11 = type metadata accessor for PersonalizationLevel();
          v12 = *(v11 - 8);
          (*(v12 + 104))(a2, v10, v11);
          return (*(v12 + 56))(a2, 0, 1, v11);
        }

        if (v6 == 0xD00000000000001CLL && 0x80000002234DB370 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v9 = MEMORY[0x277D56108];
          goto LABEL_12;
        }

        if (v6 == 0xD00000000000001DLL && 0x80000002234DB390 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v9 = MEMORY[0x277D56110];
          goto LABEL_12;
        }

        if (v6 == 0xD00000000000001BLL && 0x80000002234DB3B0 == v8)
        {

LABEL_25:
          v9 = MEMORY[0x277D56100];
          goto LABEL_12;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t specialized static SportsProperty.from(entity:)()
{
  if (dispatch thunk of UsoEntity_common_SportsItem.type.getter())
  {
    v0 = dispatch thunk of UsoEntity_common_SportsItemType.name.getter();
    v2 = v1;

    v3 = dispatch thunk of UsoEntity_common_SportsItem.name.getter();
    if (!v2 || !v4)
    {
      goto LABEL_10;
    }

    v5 = v3;
    if (v0 == 0x74726F7073 && v2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x69715F74726F7073 && v2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x65756761656CLL && v2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x715F65756761656CLL && v2 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 1835099508 && v2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x6469715F6D616574 && v2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x6574656C687461 && v2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x5F6574656C687461 && v2 == 0xEB00000000646971)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    return v5;
  }

  dispatch thunk of UsoEntity_common_SportsItem.name.getter();
LABEL_10:

  return 0;
}

uint64_t specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v48 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Typespb_Domain();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v48 - v22;
  Apple_Parsec_Siri_Context_ResultEntity.domain.getter();
  (*(v15 + 104))(v20, *MEMORY[0x277D38E10], v14);
  lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(&lazy protocol witness table cache variable for type Typespb_Domain and conformance Typespb_Domain, MEMORY[0x277D38E18]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v15 + 8);
  v24(v20, v14);
  v24(v23, v14);
  result = 0;
  if (v51 == v54)
  {
    Apple_Parsec_Siri_Context_ResultEntity.usoEntity.getter();
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8]);
    Message.init(serializedData:extensions:partial:options:)();
    v26 = v10;
    v27 = v49;
    (*(v49 + 56))(v9, 0, 1, v10);
    v28 = v48;
    (*(v27 + 32))(v48, v9, v10);
    static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v51 = v33;
      *v32 = 136315138;
      v34 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v51);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2232BB000, v29, v30, "Got USO graph for alternative entity: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DE0F80](v33, -1, -1);
      MEMORY[0x223DE0F80](v32, -1, -1);
    }

    if (static UsoConversionUtils.extractFirstEntityFromGraph(graph:)())
    {

      static UsoEntity_CodeGenConverter.convert(entity:)();

      if (*(&v52 + 1))
      {
        type metadata accessor for UsoEntity_common_SportsItem();
        if (swift_dynamicCast())
        {
          (*(v27 + 8))(v28, v26);

          return v54;
        }
      }

      else
      {
        outlined destroy of MediaUserStateCenter?(&v51, &_sypSgMd, &_sypSgMR);
      }

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v51 = v43;
        *v42 = 136315138;
        v44 = UsoTask.verbString.getter();
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v51);
        v50 = v26;
        v47 = v46;

        *(v42 + 4) = v47;
        _os_log_impl(&dword_2232BB000, v40, v41, "Entity was not a sports entity but was a %s. Will ignore item", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x223DE0F80](v43, -1, -1);
        MEMORY[0x223DE0F80](v42, -1, -1);

        (*(v27 + 8))(v28, v50);
        return 0;
      }
    }

    else
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2232BB000, v37, v38, "Unable to extract sports entity from USO graph", v39, 2u);
        MEMORY[0x223DE0F80](v39, -1, -1);

LABEL_3:
        (*(v27 + 8))(v28, v26);
        return 0;
      }
    }

    goto LABEL_3;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsProperty(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SportsProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v36 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v30 = v6;
  v31 = v2;
  while (v5)
  {
LABEL_13:
    v17 = __clz(__rbit64(v5)) | (v8 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v34 = *v18;
    v20 = *(*(a1 + 56) + 8 * v17);
    v21 = *(v20 + 16);
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v22 = swift_allocObject();
      v23 = _swift_stdlib_malloc_size(v22);
      v24 = v23 - 32;
      if (v23 < 32)
      {
        v24 = v23 - 25;
      }

      v22[2] = v21;
      v22[3] = (2 * (v24 >> 3)) | 1;
      v32 = specialized Sequence._copySequenceContents(initializing:)(&v35, v22 + 4, v21, v20);
      swift_bridgeObjectRetain_n();

      result = outlined consume of Set<String>.Iterator._Variant();
      if (v32 != v21)
      {
        goto LABEL_32;
      }

      v6 = v30;
      v2 = v31;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v25 = *(v1 + 16);
    if (*(v1 + 24) <= v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25 + 1, 1);
      v1 = v36;
    }

    v9 = *(v1 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = v1 + 64;
    v11 = -1 << *(v1 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v1 + 64 + 8 * (v12 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v11) >> 6;
      while (++v13 != v27 || (v26 & 1) == 0)
      {
        v28 = v13 == v27;
        if (v13 == v27)
        {
          v13 = 0;
        }

        v26 |= v28;
        v29 = *(v10 + 8 * v13);
        if (v29 != -1)
        {
          v14 = __clz(__rbit64(~v29)) + (v13 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_31;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v1 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v5 &= v5 - 1;
    *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = (*(v1 + 48) + 16 * v14);
    *v15 = v34;
    v15[1] = v19;
    *(*(v1 + 56) + 8 * v14) = v22;
    ++*(v1 + 16);
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v16);
    ++v8;
    if (v5)
    {
      v8 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &aBlock - v9;
  swift_defaultActor_initialize();
  v2[16] = MEMORY[0x277D84F98];
  v2[17] = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.pommes);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2232BB000, v12, v13, "LaunchServicesSatisfyingAppsDataProvider initialize", v14, 2u);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

  v3[14] = a1;
  v3[15] = a2;
  v15 = type metadata accessor for LaunchServicesSatisfyingAppsDataProvider();
  v36.receiver = v3;
  v36.super_class = v15;

  v16 = objc_msgSendSuper2(&v36, sel_init);
  static TaskPriority.low.getter();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = a1;
  v18[6] = a2;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), v18);

  v19 = [objc_opt_self() defaultCenter];
  v20 = MEMORY[0x223DDF550](0xD00000000000002ELL, 0x80000002234DB3D0);
  v34 = partial apply for closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:);
  v35 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v33 = &block_descriptor_3;
  v21 = _Block_copy(&aBlock);
  v22 = v16;

  v23 = [v19 addObserverForName:v20 object:0 queue:0 usingBlock:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();

  v24 = MEMORY[0x223DDF550](0xD000000000000030, 0x80000002234DB420);
  v34 = partial apply for closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:);
  v35 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v33 = &block_descriptor_4;
  v25 = _Block_copy(&aBlock);
  v26 = v22;

  v27 = [v19 addObserverForName:v24 object:0 queue:0 usingBlock:v25];
  _Block_release(v25);
  swift_unknownObjectRelease();

  v28 = [objc_msgSend(objc_opt_self() subjectMonitorRegistry)];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v26;
}

uint64_t closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = type metadata accessor for NSFastEnumerationIterator();
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SignpostToken() - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), 0, 0);
}

uint64_t closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)()
{
  v97 = v0;
  v96[5] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for pommes != -1)
  {
LABEL_71:
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = type metadata accessor for OSSignposter();
  *(v0 + 240) = __swift_project_value_buffer(v2, static Signposter.pommes);
  OSSignposter.begin(name:context:)("initialAppIndexing", 18, 2u, 0, v1);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pommes);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2232BB000, v4, v5, "LaunchServicesSatisfyingAppsDataProvider get installed apps", v6, 2u);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  *(v0 + 88) = &type metadata for FeatureFlag;
  *(v0 + 96) = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = 4;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 3;
  v8 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  if ((v8 & 1) == 0)
  {
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo16LNActionMetadataCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    goto LABEL_10;
  }

  v9 = *(*(v0 + 184) + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234D0FF0;
  v11 = objc_opt_self();
  *(inited + 32) = [v11 showInAppStringSearchResultsProtocol];
  *(inited + 40) = [v11 playVideoProtocol];
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16LNSystemProtocolC_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  v12 = *(inited + 16);
  swift_arrayDestroy();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
  lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;

  *(v0 + 176) = 0;
  v14 = [v9 actionsConformingToSystemProtocols:isa logicalType:2 bundleIdentifier:0 error:v0 + 176];

  v15 = *(v0 + 176);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
    v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v15;

    v18 = specialized Dictionary.compactMapValues<A>(_:)(v16);

LABEL_10:
    v19 = MEMORY[0x277D84F90];
    v20 = *(v0 + 224);
    v21 = *(v0 + 208);
    v22 = [objc_opt_self() enumeratorWithOptions_];
    v96[0] = v19;
    NSEnumerator.makeIterator()();
    lazy protocol witness table accessor for type LaunchServicesSatisfyingAppsDataProvider and conformance LaunchServicesSatisfyingAppsDataProvider(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, 255, MEMORY[0x277CC9178]);
    dispatch thunk of IteratorProtocol.next()();
    v86 = v0;
    if (*(v0 + 128))
    {
      v87 = MEMORY[0x277D84F90];
      do
      {
        while (1)
        {
          outlined init with take of Any((v0 + 104), (v0 + 136));
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LSApplicationRecord, 0x277CC1E70);
          if (swift_dynamicCast())
          {
            if (*(v0 + 168))
            {
              break;
            }
          }

          v23 = *(v0 + 224);
          v24 = *(v0 + 208);
          dispatch thunk of IteratorProtocol.next()();
          if (!*(v0 + 128))
          {
            goto LABEL_20;
          }
        }

        v93 = v18;
        MEMORY[0x223DDF820]();
        if (*((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v27 = *((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v25 = *(v0 + 224);
        v26 = *(v86 + 208);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v87 = v96[0];
        v0 = v86;
        dispatch thunk of IteratorProtocol.next()();
        v18 = v93;
      }

      while (*(v86 + 128));
    }

    else
    {
      v87 = v19;
    }

LABEL_20:
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v30 = *(v0 + 208);

    (*(v29 + 8))(v28, v30);
    v31 = v87;
    if (v87 >> 62)
    {
      v92 = __CocoaSet.count.getter();
    }

    else
    {
      v92 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = 0;
    v85 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v92 == v32)
      {

        if (v85[2])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMR);
          v62 = static _DictionaryStorage.allocate(capacity:)();
        }

        else
        {
          v62 = MEMORY[0x277D84F98];
        }

        v96[0] = v62;

        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v63, 1, v96);

        v64 = v96[0];
        *(v0 + 248) = v96[0];

        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v69 = v68;
          v95 = v68;
          *v67 = 136315138;
          v70 = *(v64 + 16);
          if (v70)
          {
            v91 = v68;
            v71 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v70, 0);
            v72 = specialized Sequence._copySequenceContents(initializing:)(v96, v71 + 4, v70, v64);

            outlined consume of Set<String>.Iterator._Variant();
            if (v72 != v70)
            {
              __break(1u);
            }

            v0 = v86;
            v69 = v91;
          }

          else
          {
            v71 = MEMORY[0x277D84F90];
          }

          v79 = MEMORY[0x223DDF850](v71, MEMORY[0x277D837D0]);
          v81 = v80;

          v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v95);

          *(v67 + 4) = v82;
          _os_log_impl(&dword_2232BB000, v65, v66, "LaunchServicesSatisfyingAppsDataProvider satisfying app IDs initialized to %s", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          MEMORY[0x223DE0F80](v69, -1, -1);
          MEMORY[0x223DE0F80](v67, -1, -1);
        }

        v83 = *(v0 + 184);
        v84 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2822009F8](closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), v83, 0);
      }

      if ((v87 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x223DDFF80](v32, v31);
      }

      else
      {
        if (v32 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v37 = *(v31 + 8 * v32 + 32);
      }

      v38 = v37;
      v39 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v94 = MEMORY[0x223DE0590]();
      v40 = [v38 bundleIdentifier];
      if (v40)
      {
        break;
      }

      v89 = 0;
      v90 = 0;
      v33 = 0;
      v88 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
LABEL_24:
      objc_autoreleasePoolPop(v94);

      ++v32;
      if (v33)
      {
        v58 = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85[2] + 1, 1, v85);
        }

        v60 = v58[2];
        v59 = v58[3];
        if (v60 >= v59 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v58);
        }

        v58[2] = v60 + 1;
        v85 = v58;
        v61 = &v58[7 * v60];
        v61[4] = v90;
        v61[5] = v33;
        v31 = v87;
        v61[6] = v89;
        v61[7] = v88;
        v61[8] = v34;
        v61[9] = v35;
        v61[10] = v36;
        v32 = v39;
      }
    }

    v41 = v40;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v43;

    v44 = [objc_opt_self() appInfoWithApplicationRecord_];
    if (*(v18 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v33), (v46 & 1) != 0))
    {
      v36 = *(*(v18 + 56) + 8 * v45);
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v47 = *(v0 + 200);
    if (((*(v0 + 192))(v38, v44, v36) & 1) == 0)
    {

LABEL_41:
      v89 = 0;
      v90 = 0;
      v33 = 0;
      v88 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
LABEL_42:
      v31 = v87;
      goto LABEL_24;
    }

    if ([v38 appProtectionHidden])
    {

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_2232BB000, v48, v49, "LaunchServicesSatisfyingAppsDataProvider excluded hidden app from cache", v50, 2u);
        MEMORY[0x223DE0F80](v50, -1, -1);
      }

      goto LABEL_41;
    }

    v51 = [v38 bundleIdentifier];
    if (v51)
    {
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v54;
      v89 = v53;

      v90 = v42;
      if (v44)
      {
LABEL_45:
        v55 = [v44 supportedIntents];
        v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v56 = v18;
        v57 = [v44 supportedMediaCategories];
        v35 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = v56;
        v0 = v86;

        goto LABEL_42;
      }
    }

    else
    {
      v88 = 0;
      v89 = 0;
      v90 = v42;
      if (v44)
      {
        goto LABEL_45;
      }
    }

    v34 = MEMORY[0x277D84FA0];
    v35 = MEMORY[0x277D84FA0];
    goto LABEL_42;
  }

  v74 = *(v0 + 224);
  v73 = *(v0 + 232);
  v75 = v15;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  OSSignposter.end(token:message:)(v73, 0, 0xE000000000000000);
  outlined destroy of SignpostToken(v73);

  v76 = *(v0 + 8);
  v77 = *MEMORY[0x277D85DE8];

  return v76();
}

{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 184);
  v2 = *(v1 + 128);
  *(v1 + 128) = *(v0 + 248);

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), 0, 0);
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[29];
  v2 = v0[28];
  OSSignposter.end(token:message:)(v1, 0, 0xE000000000000000);
  outlined destroy of SignpostToken(v1);

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t partial apply for closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), a4, 0);
}

uint64_t closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  LaunchServicesSatisfyingAppsDataProvider.installAppUpdate(bundleIds:)(v0[3]);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), v5, v4);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v9(v7);

  return (*(v3 + 8))(v7, v2);
}

uint64_t closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v26[-2] - v9;
  v11 = Notification.userInfo.getter();
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  strcpy(v26, "bundleIDs");
  HIWORD(v26[2]) = 0;
  v26[3] = -385875968;
  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v14 & 1) == 0))
  {

    outlined destroy of AnyHashable(v27);
LABEL_14:
    v28 = 0u;
    v29 = 0u;
    return outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of Any(*(v12 + 56) + 32 * v13, &v28);
  outlined destroy of AnyHashable(v27);

  if (!*(&v29 + 1))
  {
    return outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v16 = *v27;
  v17 = Notification.userInfo.getter();
  if (!v17)
  {

    goto LABEL_14;
  }

  v18 = v17;
  strcpy(v26, "isPlaceholder");
  HIWORD(v26[3]) = -4864;
  AnyHashable.init<A>(_:)();
  if (!*(v18 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v20 & 1) == 0))
  {

    outlined destroy of AnyHashable(v27);
    v28 = 0u;
    v29 = 0u;
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v18 + 56) + 32 * v19, &v28);
  outlined destroy of AnyHashable(v27);

  if (!*(&v29 + 1))
  {
LABEL_18:

    return outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
  }

  if ((swift_dynamicCast() & 1) == 0 || v27[0] == 1)
  {
  }

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  type metadata accessor for MainActor();

  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a2;
  v23[5] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a4, v23);
}

uint64_t closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), a4, 0);
}

uint64_t closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  LaunchServicesSatisfyingAppsDataProvider.uninstallAppUpdate(bundleIds:)();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), v6, v5);
}

uint64_t LaunchServicesSatisfyingAppsDataProvider.uninstallAppUpdate(bundleIds:)()
{
  v1 = v0;
  v2 = *(v0 + 128);

  v4 = specialized _NativeDictionary.filter(_:)(v3, partial apply for closure #1 in LaunchServicesSatisfyingAppsDataProvider.uninstallAppUpdate(bundleIds:));

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.pommes);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_9;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = v9;
  v22 = v9;
  *v8 = 136315138;
  v11 = *(v4 + 16);
  if (!v11)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v19 = v9;
  v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v11, 0);
  v20 = specialized Sequence._copySequenceContents(initializing:)(&v21, v12 + 4, v11, v4);

  result = outlined consume of Set<String>.Iterator._Variant();
  if (v20 == v11)
  {
    v10 = v19;
LABEL_8:
    v14 = MEMORY[0x223DDF850](v12, MEMORY[0x277D837D0]);
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v22);

    *(v8 + 4) = v17;
    _os_log_impl(&dword_2232BB000, v6, v7, "Satisfying app IDs updated to %s to due apps uninstalled", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
LABEL_9:

    v18 = *(v1 + 128);
    *(v1 + 128) = v4;
  }

  __break(1u);
  return result;
}

uint64_t LaunchServicesSatisfyingAppsDataProvider.installAppUpdate(bundleIds:)(uint64_t a1)
{
  v2 = v1;
  v83[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v79 = *(v1 + 128);
  if (v4)
  {

    v5 = (a1 + 40);
    v6 = 0x277CC1000uLL;
    while (1)
    {
      v9 = *(v5 - 1);
      v10 = *v5;
      v11 = objc_allocWithZone(*(v6 + 3696));

      v80 = v9;
      v12 = MEMORY[0x223DDF550](v9, v10);
      v82[0] = 0;
      v13 = [v11 initWithBundleIdentifier:v12 allowPlaceholder:0 error:v82];

      v14 = v82[0];
      if (!v13)
      {
        v7 = v82[0];

        v8 = _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_4;
      }

      v15 = objc_opt_self();
      v16 = v14;
      v17 = [v15 appInfoWithApplicationRecord_];
      v82[3] = &type metadata for FeatureFlag;
      v82[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
      v18 = swift_allocObject();
      v82[0] = v18;
      *(v18 + 16) = 4;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      *(v18 + 48) = 3;
      v19 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v82);
      v20 = MEMORY[0x277D84F90];
      if (v19)
      {
        v21 = *(v2 + 136);
        v22 = MEMORY[0x223DDF550](v80, v10);
        v82[0] = 0;
        v23 = [v21 actionsForBundleIdentifier:v22 error:v82];

        v24 = v82[0];
        if (v23)
        {
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNActionMetadata, 0x277D23730);
          v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v26 = v82[0];
          v27 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v20 = MEMORY[0x277D84F90];
        }
      }

      v28 = *(v2 + 120);
      v29 = (*(v2 + 112))(v13, v17, v20);

      if ((v29 & 1) == 0)
      {

        goto LABEL_4;
      }

      v30 = v13;
      v31 = v17;
      v32 = [v30 bundleIdentifier];
      if (v32)
      {
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v35;
        v78 = v34;

        v74 = v30;
        if (!v31)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v76 = 0;
        v78 = 0;
        v74 = v30;
        if (!v31)
        {
LABEL_17:
          v37 = v30;
          v38 = MEMORY[0x277D84FA0];
          v75 = MEMORY[0x277D84FA0];
          goto LABEL_18;
        }
      }

      v36 = [v31 supportedIntents];
      v75 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = [v31 supportedMediaCategories];
      v38 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_18:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82[0] = v79;
      v2 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v10);
      v41 = v79[2];
      v42 = (v40 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v44 = v40;
      if (v79[3] >= v43)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
        v45 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v10);
        if ((v44 & 1) != (v46 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v2 = v45;
      }

      v47 = v82[0];
      v79 = v82[0];
      if (v44)
      {
        v48 = (*(v82[0] + 7) + 40 * v2);
        v49 = v48[1];
        v50 = v48[2];
        v51 = v48[3];
        v52 = v48[4];
        *v48 = v78;
        v48[1] = v76;
        v48[2] = v75;
        v48[3] = v38;
        v48[4] = v20;
      }

      else
      {
        *(v82[0] + (v2 >> 6) + 8) |= 1 << v2;
        v53 = (v47[6] + 16 * v2);
        *v53 = v80;
        v53[1] = v10;
        v54 = (v47[7] + 40 * v2);
        *v54 = v78;
        v54[1] = v76;
        v54[2] = v75;
        v54[3] = v38;
        v54[4] = v20;
        v55 = v47[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_39;
        }

        v47[2] = v57;
      }

      v2 = v73;
      v6 = 0x277CC1000;
LABEL_4:
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_30:
  if (one-time initialization token for pommes != -1)
  {
LABEL_40:
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static Logger.pommes);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = v62;
    v83[0] = v62;
    *v61 = 136315138;
    v64 = v79[2];
    if (v64)
    {
      v77 = v62;
      v65 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v64, 0);
      v81 = specialized Sequence._copySequenceContents(initializing:)(v82, v65 + 4, v64, v79);

      outlined consume of Set<String>.Iterator._Variant();
      if (v81 != v64)
      {
        __break(1u);
      }

      v2 = v73;
      v63 = v77;
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
    }

    v66 = MEMORY[0x223DDF850](v65, MEMORY[0x277D837D0]);
    v68 = v67;

    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, v83);

    *(v61 + 4) = v69;
    _os_log_impl(&dword_2232BB000, v59, v60, "Satisfying app IDs updated to %s to due to apps installation", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x223DE0F80](v63, -1, -1);
    MEMORY[0x223DE0F80](v61, -1, -1);
  }

  v70 = *(v2 + 128);
  *(v2 + 128) = v79;

  v72 = *MEMORY[0x277D85DE8];
  return result;
}

void LaunchServicesSatisfyingAppsDataProvider.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void LaunchServicesSatisfyingAppsDataProvider.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t LaunchServicesSatisfyingAppsDataProvider.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LaunchServicesSatisfyingAppsDataProvider.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();

  return MEMORY[0x2822009F8](closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:), a4, 0);
}

uint64_t closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  LaunchServicesSatisfyingAppsDataProvider.uninstallAppUpdate(bundleIds:)();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:), v6, v5);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SiriInformationSearch18AudioItemCandidateC_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
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

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS21SiriInformationSearch7AppDataVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_21ij7Search7lM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n06_sSS21ijvlm17VSbIgggd_SSACSbs5X13_pIegnndzo_TRSSAJSbIgggd_Tf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v38 = a2;
  v39 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v40 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(v4 + 56) + 40 * v16);
    v21 = v20[1];
    v41 = *v20;
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    v25 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v12 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v9 + 48) + 16 * v29);
    *v34 = v18;
    v34[1] = v19;
    v35 = (*(v9 + 56) + 40 * v29);
    *v35 = v41;
    v35[1] = v21;
    v35[2] = v22;
    v35[3] = v23;
    v35[4] = v24;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v39;
    v10 = v40;
    v8 = v38;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v40 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 80);
    do
    {
      v12 = *(v5 - 1);
      v11 = *v5;
      v14 = *(v5 - 3);
      v13 = *(v5 - 2);
      v16 = *(v5 - 5);
      v15 = *(v5 - 4);
      v17 = *(v5 - 6);

      if (!v16)
      {
        break;
      }

      v33 = v15;
      v34 = v12;
      v35 = v11;
      v32 = v3;
      v18 = *a3;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
      v21 = v18[2];
      v22 = (v19 & 1) == 0;
      result = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v23 = v19;
      if (v18[3] >= result)
      {
        if ((a2 & 1) == 0)
        {
          result = specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a2 & 1);
        v24 = *a3;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_18;
        }

        v20 = result;
      }

      v26 = *a3;
      if (v23)
      {

        v6 = (v26[7] + 40 * v20);
        v7 = v6[1];
        v8 = v6[2];
        v10 = v6[3];
        v9 = v6[4];
        *v6 = v33;
        v6[1] = v14;
        v6[2] = v13;
        v6[3] = v34;
        v6[4] = v35;
      }

      else
      {
        v26[(v20 >> 6) + 8] |= 1 << v20;
        v27 = (v26[6] + 16 * v20);
        *v27 = v17;
        v27[1] = v16;
        v28 = (v26[7] + 40 * v20);
        *v28 = v33;
        v28[1] = v14;
        v28[2] = v13;
        v28[3] = v34;
        v28[4] = v35;
        v29 = v26[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_17;
        }

        v26[2] = v31;
      }

      v5 += 7;
      a2 = 1;
      --v3;
    }

    while (v32 != 1);
  }

  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v27 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 48);
    v15 = *(a3 + 56) + 40 * v13;
    v16 = *(v15 + 16);
    v29[0] = *v15;
    v29[1] = v16;
    v24 = v13;
    v17 = (v14 + 16 * v13);
    v19 = *v17;
    v18 = v17[1];
    v32 = v16;
    v30 = *(v15 + 32);
    v31 = v29[0];
    v33 = v30;

    outlined init with copy of MediaUserStateCenter?(&v31, v28, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of MediaUserStateCenter?(&v32, v28, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of MediaUserStateCenter?(&v32 + 8, v28, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of MediaUserStateCenter?(&v33, v28, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);
    LOBYTE(v19) = a4(v19, v18, v29);
    outlined destroy of MediaUserStateCenter?(&v31, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of MediaUserStateCenter?(&v32, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of MediaUserStateCenter?(&v32 + 8, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of MediaUserStateCenter?(&v33, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);

    v8 = v27;
    if (v19)
    {
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _OWORD *))
{
  v3 = v2;
  v5 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1, v10);
    v12 = v19 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v12, v9, v5, a2);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v15 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v15;
    goto LABEL_2;
  }

  v16 = swift_slowAlloc();
  v17 = v3;
  v18 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS21SiriInformationSearch7AppDataVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_21ij7Search7lM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n06_sSS21ijvlm17VSbIgggd_SSACSbs5X13_pIegnndzo_TRSSAJSbIgggd_Tf1nnc_n(v16, v9, v5, a2);
  result = MEMORY[0x223DE0F80](v16, -1, -1);
  if (!v17)
  {
    result = v18;
  }

LABEL_4:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v52 = &v50 - v5;
  v55 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_20:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DDFF80](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x223DDF820]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = v55;
  }

  while (v7 != v6);
LABEL_21:
  if (v8 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v14 = v8 & 0xC000000000000001;
    if (i)
    {
      v15 = 0;
      v54 = MEMORY[0x277D84F90];
      do
      {
        v16 = v15;
        while (1)
        {
          if (v14)
          {
            v17 = MEMORY[0x223DDFF80](v16, v8);
          }

          else
          {
            if (v16 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v17 = *(v8 + 8 * v16 + 32);
          }

          v18 = v17;
          v15 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          if ([v17 isHidden])
          {
            break;
          }

          ++v16;
          if (v15 == i)
          {
            goto LABEL_41;
          }
        }

        v19 = [v18 bundleIdentifier];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
        }

        v24 = *(v54 + 2);
        v23 = *(v54 + 3);
        if (v24 >= v23 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v54);
        }

        v25 = v54;
        *(v54 + 2) = v24 + 1;
        v26 = &v25[16 * v24];
        *(v26 + 4) = v20;
        *(v26 + 5) = v22;
      }

      while (v15 != i);
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }

LABEL_41:
    if (!i)
    {
      break;
    }

    v27 = MEMORY[0x277D84F90];
    v28 = 0;
    while (1)
    {
      if (v14)
      {
        v29 = MEMORY[0x223DDFF80](v28, v8);
      }

      else
      {
        if (v28 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v29 = *(v8 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if ([v29 isHidden])
      {

        ++v28;
        if (v31 == i)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v32 = [v30 bundleIdentifier];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v34;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        }

        v36 = *(v27 + 2);
        v35 = *(v27 + 3);
        if (v36 >= v35 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v27);
        }

        *(v27 + 2) = v36 + 1;
        v37 = &v27[16 * v36];
        v38 = v51;
        *(v37 + 4) = v33;
        *(v37 + 5) = v38;
        if (v31 == i)
        {
          goto LABEL_58;
        }

        v28 = v31;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_58:

  v39 = type metadata accessor for TaskPriority();
  v40 = *(*(v39 - 8) + 56);
  v41 = v52;
  v40(v52, 1, 1, v39);
  type metadata accessor for MainActor();
  v42 = v53;

  v43 = static MainActor.shared.getter();
  v44 = swift_allocObject();
  v45 = MEMORY[0x277D85700];
  v44[2] = v43;
  v44[3] = v45;
  v46 = v54;
  v44[4] = v42;
  v44[5] = v46;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v41, &async function pointer to partial apply for closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:), v44);

  v40(v41, 1, 1, v39);

  v47 = static MainActor.shared.getter();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v45;
  v48[4] = v42;
  v48[5] = v27;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v41, &async function pointer to partial apply for closure #5 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:), v48);
}

uint64_t instantiation function for generic protocol witness table for LaunchServicesSatisfyingAppsDataProvider(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type LaunchServicesSatisfyingAppsDataProvider and conformance LaunchServicesSatisfyingAppsDataProvider(&lazy protocol witness table cache variable for type LaunchServicesSatisfyingAppsDataProvider and conformance LaunchServicesSatisfyingAppsDataProvider, a2, type metadata accessor for LaunchServicesSatisfyingAppsDataProvider);
  *(a1 + 8) = result;
  return result;
}

BOOL partial apply for closure #1 in LaunchServicesSatisfyingAppsDataProvider.uninstallAppUpdate(bundleIds:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v5[2] = v6;
  return (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v5, v3) & 1) == 0;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t partial apply for closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #5 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_14Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(a1, v4, v5, v7, v6);
}

uint64_t lazy protocol witness table accessor for type LaunchServicesSatisfyingAppsDataProvider and conformance LaunchServicesSatisfyingAppsDataProvider(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of SignpostToken(uint64_t a1)
{
  v2 = type metadata accessor for SignpostToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject;
  if (!lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject);
  }

  return result;
}

uint64_t *PegasusCacheManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static PegasusCacheManager.shared;
}

uint64_t static PegasusCacheManager.defaultDirectoryPath.getter()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 URLsForDirectory:13 inDomains:1];

  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v8 + 16))
  {

    if (*(v8 + 16))
    {
      (*(v1 + 16))(v5, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

      URL.appendingPathComponent(_:isDirectory:)();
      return (*(v1 + 8))(v5, v0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void one-time initialization function for shared()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = v24 - v3;
  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 languageCode];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v24[5] = v8;
    v24[6] = v10;
    v24[3] = 45;
    v24[4] = 0xE100000000000000;
    v24[1] = 95;
    v24[2] = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v13 = v12;
  }

  else
  {

    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = type metadata accessor for PegasusCacheManager();
  static PegasusCacheManager.defaultDirectoryPath.getter();
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch13CacheHandling_ptGMd, &_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch13CacheHandling_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 0x616964656DLL;
  *(inited + 40) = 0xE500000000000000;
  v17 = type metadata accessor for AudioCacheHandler();
  v18 = swift_allocObject();
  *(inited + 72) = v17;
  *(inited + 80) = &protocol witness table for AudioCacheHandler;
  *(inited + 48) = v18;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch13CacheHandling_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_sSS_21SiriInformationSearch13CacheHandling_ptMd, &_sSS_21SiriInformationSearch13CacheHandling_ptMR);
  v20 = [objc_opt_self() clientWithIdentifier_];
  v21 = *(v14 + 48);
  v22 = *(v14 + 52);
  swift_allocObject();
  v23 = specialized PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(v11, v13, v19, v4, 6, 0, v20, 1);

  static PegasusCacheManager.shared = v23;
}

_BYTE *PegasusCacheManager.__allocating_init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7, int a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  swift_allocObject();
  v19 = specialized PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(a1, a2, a3, a4, a5, a6, a7, a8);

  return v19;
}

uint64_t static PegasusCacheManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t PegasusCacheManager.directoryPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PegasusCacheManager.cachingEnabled.getter()
{
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled))
  {
    return 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
  v3 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
  v4 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
  v5 = [v2 levelForFactor:v3 withNamespaceName:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 BOOLeanValue];

  return v6;
}

_BYTE *PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7, int a8)
{
  v9 = specialized PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(a1, a2, a3, a4, a5, a6, a7, a8);

  return v9;
}

void closure #1 in variable initialization expression of static PegasusCacheManager.siriAndDictationHistoryDeletionRequestedCallback(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v60 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v58 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v56 - v16;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.pommes);
  v20 = a5;
  v21 = a1;
  v59 = a5;
  v22 = v21;
  v23 = a3;
  v62 = v19;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v61 = a2;
    v28 = v27;
    v57 = swift_slowAlloc();
    v63 = a1;
    v64[0] = v57;
    *v26 = 136316162;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CFNotificationCenterRefaSgMd, &_sSo23CFNotificationCenterRefaSgMR);
    v29 = Optional.debugDescription.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v64);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v63 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSvSgMd, &_sSvSgMR);
    v32 = Optional.debugDescription.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v64);

    *(v26 + 14) = v34;
    *(v26 + 22) = 2080;
    v63 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CFNotificationNameaSgMd, &_sSo18CFNotificationNameaSgMR);
    v35 = Optional.debugDescription.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v64);

    *(v26 + 24) = v37;
    *(v26 + 32) = 2080;
    v63 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSVSgMd, &_sSVSgMR);
    v38 = Optional.debugDescription.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v64);

    *(v26 + 34) = v40;
    *(v26 + 42) = 2112;
    *(v26 + 44) = v20;
    *v28 = v59;
    v41 = v20;
    _os_log_impl(&dword_2232BB000, v24, v25, "PegasusCacheManager : Received callback for kAFSiriAndDictationHistoryDeletionRequestedDarwinNotification center:%s observer:%s name: %s object:%s userInfo:%@", v26, 0x34u);
    outlined destroy of MediaUserStateCenter?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v42 = v28;
    a2 = v61;
    MEMORY[0x223DE0F80](v42, -1, -1);
    v43 = v57;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v43, -1, -1);
    MEMORY[0x223DE0F80](v26, -1, -1);
  }

  if (a2)
  {

    if (PegasusCacheManager.cachingEnabled.getter())
    {
      v44 = type metadata accessor for PommesCandidateId();
      (*(*(v44 - 8) + 56))(v17, 1, 1, v44);
      (*(*a2 + 232))(0, 0, v17, 5);
      outlined destroy of MediaUserStateCenter?(v17, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v51 = type metadata accessor for Date();
      v52 = v58;
      (*(*(v51 - 8) + 56))(v58, 1, 1, v51);
      v53 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v54 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
      v55 = [v53 initWithSuiteName_];

      (*(*a2 + 264))(v52, v55);

      outlined destroy of MediaUserStateCenter?(v52, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_2232BB000, v48, v49, "PegasusCacheManager : Ignoring callback because caching is disabled", v50, 2u);
        MEMORY[0x223DE0F80](v50, -1, -1);
      }
    }
  }

  else
  {
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2232BB000, v45, v46, "PegasusCacheManager : Observer for siriAndDictationHistoryDeletionRequestedCallback is nil", v47, 2u);
      MEMORY[0x223DE0F80](v47, -1, -1);
    }
  }
}

void @objc closure #1 in variable initialization expression of static PegasusCacheManager.siriAndDictationHistoryDeletionRequestedCallback(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a1;
  v11 = a3;
  v12 = a5;
  closure #1 in variable initialization expression of static PegasusCacheManager.siriAndDictationHistoryDeletionRequestedCallback(a1, a2, a3, a4, a5);
}

id PegasusCacheManager.processResponse(domain:response:)(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_domainCacheHandlers);
  if (*(v4 + 16) && (v18 = a3, v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), a3 = v18, (v8 & 1) != 0))
  {
    outlined init with copy of AppDataProviding(*(v4 + 56) + 40 * v7, v19);
    outlined init with take of DomainWarmupHandling(v19, v20);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v19[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v19);
      _os_log_impl(&dword_2232BB000, v10, v11, "PegasusCacheManager : Processing response for caching domain=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x223DE0F80](v13, -1, -1);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }

    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v16 = (*(v15 + 8))(v18, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v16;
  }

  else
  {

    return a3;
  }
}

uint64_t closure #1 in PegasusCacheManager.prepare()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath;
    v3 = *(result + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags);
    v4 = *(**(result + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache) + 136);

    v4(v1 + v2, v3);
  }

  return result;
}

uint64_t PegasusCacheManager.fetch(request:domainWarmup:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v59 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for PommesSearchRequest(0);
  v56 = *(v62 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v62, v14);
  v57 = v15;
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v63 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v4;
  if ((*(v4 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled) & 1) == 0)
  {
    v20 = *(v64 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
    v21 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
    v22 = v16;
    v23 = v12;
    v24 = v8;
    v25 = a4;
    v26 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
    v27 = [v20 levelForFactor:v21 withNamespaceName:v26];

    a4 = v25;
    v8 = v24;
    v12 = v23;
    v16 = v22;
    if (!v27)
    {
      return a3(0);
    }

    v28 = [v27 BOOLeanValue];

    if (!v28)
    {
      return a3(0);
    }
  }

  if (specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(0xD000000000000019, 0x80000002234DB560))
  {
    return a3(0);
  }

  v29 = (a1 + *(v62 + 20));
  v30 = a1;
  v32 = *v29;
  v31 = v29[1];
  v33 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v33 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    return a3(0);
  }

  v34 = v64;
  v36 = *(v64 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer);
  v35 = *(v64 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 8);
  v53 = v30;
  v37 = *(v64 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 16);
  aBlock = v36;
  v67 = v35;
  v68 = v37;

  v38._countAndFlagsBits = v32;
  v38._object = v31;
  v39 = UtteranceNormalizer.normalize(_:preserveCase:)(v38, 0);
  object = v39._object;
  countAndFlagsBits = v39._countAndFlagsBits;

  v62 = *(v34 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
  static DispatchQoS.userInitiated.getter();
  v40 = v58;
  outlined init with copy of PommesSearchRequest(v53, v58);
  v41 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v42 = v57 + v41 + 7;
  v56 = a4;
  v57 = a3;
  v43 = v42 & 0xFFFFFFFFFFFFFFF8;
  v44 = ((v42 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v34;
  outlined init with take of PommesSearchRequest(v40, v45 + v41);
  *(v45 + v43) = v59;
  v46 = (v45 + v44);
  v47 = object;
  *v46 = countAndFlagsBits;
  v46[1] = v47;
  v48 = (v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8));
  v49 = v56;
  *v48 = v57;
  v48[1] = v49;
  v70 = partial apply for closure #1 in PegasusCacheManager.fetch(request:domainWarmup:completion:);
  v71 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v69 = &block_descriptor_12;
  v50 = _Block_copy(&aBlock);
  v65 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v51 = v63;
  MEMORY[0x223DDFBF0](0, v63, v12, v50);
  _Block_release(v50);
  (*(v61 + 8))(v12, v8);
  (*(v60 + 8))(v51, v16);
}

void closure #1 in PegasusCacheManager.fetch(request:domainWarmup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void *))
{
  v12 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache);
  if (((*(*v12 + 128))() & 1) == 0)
  {
    (*(*v12 + 136))(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath, *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags));
  }

  v13 = (*(*v12 + 160))(a2, a3);
  v14 = one-time initialization token for pommes;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v17 = v15;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26[0] = v25;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v26);
    *(v20 + 12) = 2080;
    if (v13)
    {
      v21 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCSgMd, &_s21SiriInformationSearch14PommesResponseCSgMR);
      v22 = String.init<A>(describing:)();
      MEMORY[0x223DDF6D0](v22);

      v23 = 542394696;
    }

    else
    {
      v23 = 1397967181;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, 0xE400000000000000, v26);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_2232BB000, v18, v19, "PegasusCacheManager : Fetched POMMES response for key=%s : %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v25, -1, -1);
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

  else
  {
  }

  a6(v13);
}

uint64_t PegasusCacheManager.store(siriRequestId:pegasusResponse:pommesResponse:waitFor:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void, void), uint64_t a7)
{
  v38 = a2;
  v41 = a7;
  v42 = a6;
  v35 = a4;
  v36 = a5;
  v37 = a1;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v13 = *(v40 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v40, v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v35 - v20;
  v22 = specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(0xD00000000000001ELL, 0x80000002234DB580);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasResponseCacheControl.getter())
  {
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.responseCacheControl.getter();
    v23 = Apple_Parsec_Siri_V2alpha_ResponseCacheControl.canCacheDomainResponse.getter();
    v24 = v8;
    (*(v8 + 8))(v12, v7);
    if (((v23 | v22) & 1) == 0)
    {
LABEL_3:
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.pommes);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2232BB000, v26, v27, "PegasusCacheManager : Pegasus response is not cacheable", v28, 2u);
        MEMORY[0x223DE0F80](v28, -1, -1);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v24 = v8;
    if ((v22 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  specialized static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)(v37, v38, *(v39 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_experimentationAnalyticsManager));
  if (PegasusCacheManager.cachingEnabled.getter() & 1) == 0 || (specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(0xD000000000000019, 0x80000002234DB5A0))
  {
LABEL_11:
    v42(0, 0);
    v29 = v40;
    return (*(v13 + 8))(v21, v29);
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.responseCacheControl.getter();
  v31 = v18;
  v32 = v40;
  (*(v13 + 8))(v31, v40);
  v33 = Apple_Parsec_Siri_V2alpha_ResponseCacheControl.ttl.getter();
  (*(v24 + 8))(v12, v7);
  if (v22)
  {
    v34 = 1209600;
  }

  else
  {
    v34 = v33;
  }

  if (v33 > 0)
  {
    v34 = v33;
  }

  PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)(v35, v36, v42, v41, v34);
  v29 = v32;
  return (*(v13 + 8))(v21, v29);
}

uint64_t PegasusCacheManager.store(ttl:response:waitFor:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, double a5)
{
  if ((*(v5 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled) & 1) == 0)
  {
    v11 = *(v5 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
    v12 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
    v13 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
    v14 = [v11 levelForFactor:v12 withNamespaceName:v13];

    if (!v14)
    {
      return a3(0, 0);
    }

    v15 = [v14 BOOLeanValue];

    if (!v15)
    {
      return a3(0, 0);
    }
  }

  if (specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(0xD000000000000019, 0x80000002234DB5A0))
  {
    return a3(0, 0);
  }

  return PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)(a1, a2, a3, a4, a5);
}

uint64_t PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, double a5)
{
  v78 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v84 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v85 = *(v14 - 8);
  v15 = *(v85 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v86 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchTime();
  v79 = *(v83 - 8);
  v18 = *(v79 + 64);
  v20 = MEMORY[0x28223BE20](v83, v19);
  v77 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v82 = &v68 - v23;
  v87 = type metadata accessor for Date();
  v80 = *(v87 - 8);
  v24 = *(v80 + 64);
  v26 = MEMORY[0x28223BE20](v87, v25);
  v27 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v68 - v29;
  if (PommesResponse.isCachedResponse.getter())
  {
    return a3(0, 0);
  }

  v75 = a3;
  v76 = a4;
  if (a5 <= 1.0)
  {
    return v75(0, 0);
  }

  v72 = v14;
  v73 = v10;
  v74 = v9;
  v32 = v81;
  v33 = *(v81 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 8);
  v34 = *(v81 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 16);
  aBlock = *(v81 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer);
  v90 = v33;
  v91 = v34;

  v35._countAndFlagsBits = PommesResponse.searchRequestUtterance.getter();
  v36 = UtteranceNormalizer.normalize(_:preserveCase:)(v35, 0);
  countAndFlagsBits = v36._countAndFlagsBits;
  object = v36._object;

  v37 = PommesResponse.metadataDomainName.getter();
  v39 = v38;
  static Date.now.getter();
  Date.init(timeInterval:since:)();
  Date.timeIntervalSinceReferenceDate.getter();
  v41 = v40;
  v42 = PegasusCacheManager.processResponse(domain:response:)(v37, v39, a1);

  v43 = *(v80 + 16);
  v71 = v30;
  v44 = v30;
  v45 = v87;
  v46 = v80;
  v43(v27, v44, v87);
  v47 = (*(v46 + 80) + 56) & ~*(v46 + 80);
  v48 = (v24 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 2) = v32;
  *(v49 + 3) = v42;
  *(v49 + 4) = v41;
  v50 = object;
  *(v49 + 5) = countAndFlagsBits;
  *(v49 + 6) = v50;
  (*(v46 + 32))(&v49[v47], v27, v45);
  *&v49[v48] = a1;
  v51 = &v49[(v48 + 15) & 0xFFFFFFFFFFFFFFF8];
  v52 = v76;
  *v51 = v75;
  *(v51 + 1) = v52;

  v53 = v42;
  v54 = a1;

  v55 = specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(0x6361437265676165, 0xEF65726F74536568);
  v81 = *(v32 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
  if (v55)
  {
    v93 = partial apply for closure #1 in PegasusCacheManager.store_internal(ttl:response:waitFor:completion:);
    v94 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v90 = 1107296256;
    v91 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v92 = &block_descriptor_57;
    v56 = _Block_copy(&aBlock);

    v57 = v86;
    static DispatchQoS.unspecified.getter();
    v88 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v58 = v84;
    v59 = v74;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v57, v58, v56);
    _Block_release(v56);

    (*(v73 + 8))(v58, v59);
    (*(v85 + 8))(v57, v72);
    (*(v46 + 8))(v71, v87);
  }

  else
  {
    v60 = v77;
    static DispatchTime.now()();
    MEMORY[0x223DDF450](v60, v78);
    v79 = *(v79 + 8);
    (v79)(v60, v83);
    static DispatchQoS.background.getter();
    v93 = partial apply for closure #1 in PegasusCacheManager.store_internal(ttl:response:waitFor:completion:);
    v94 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v90 = 1107296256;
    v91 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v92 = &block_descriptor_54;
    v61 = _Block_copy(&aBlock);
    v88 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v62 = v53;
    v63 = v46;
    v64 = v84;
    v65 = v74;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v66 = v82;
    v67 = v86;
    MEMORY[0x223DDFBC0](v82, v86, v64, v61);
    _Block_release(v61);

    (*(v73 + 8))(v64, v65);
    (*(v85 + 8))(v67, v72);
    (v79)(v66, v83);
    (*(v63 + 8))(v71, v87);
  }
}

uint64_t closure #1 in PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)(uint64_t a1, void *a2, NSObject *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t), uint64_t a8, double a9)
{
  v64 = a8;
  v65 = a7;
  v63 = a6;
  v61 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v57[-v17];
  v62 = type metadata accessor for Date();
  v66 = *(v62 - 8);
  v19 = *(v66 + 64);
  v21 = MEMORY[0x28223BE20](v62, v20);
  v23 = &v57[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v57[-v26];
  v28 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache);
  if (((*(*v28 + 128))(v25) & 1) == 0)
  {
    (*(*v28 + 136))(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath, *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags));
  }

  v60 = (*(*v28 + 152))(a2, a9);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.pommes);
  v30 = v62;
  (*(v66 + 16))(v27, a5, v62);

  v31 = a2;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v58 = v33;
    v35 = v34;
    v59 = swift_slowAlloc();
    v67[0] = v59;
    *v35 = 136315650;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, a4, v67);
    *(v35 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v61 = v32;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v66 + 8))(v27, v30);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v67);

    *(v35 + 14) = v39;
    *(v35 + 22) = 2080;
    v40 = v31;
    v41 = [v40 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v67);

    *(v35 + 24) = v45;
    v46 = v61;
    _os_log_impl(&dword_2232BB000, v61, v58, "PegasusCacheManager : Store POMMES response key=%s expiration=%s : %s", v35, 0x20u);
    v47 = v59;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v47, -1, -1);
    MEMORY[0x223DE0F80](v35, -1, -1);

    v48 = v66;
  }

  else
  {

    v48 = v66;
    (*(v66 + 8))(v27, v30);
  }

  v49 = v60;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v51 = v50;
  (*(v48 + 8))(v23, v30);
  v52 = PommesResponse.requestId.getter();
  v54 = v53;
  PommesResponse.pommesCandidateId.getter();
  v55 = (*(*v28 + 176))(v52, v54, v18, 1, v51);
  outlined destroy of MediaUserStateCenter?(v18, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);

  return v65(v49 & 1, v55);
}

void PegasusCacheManager.deleteCache(requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a4;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v25 - v11;
  if (*(v4 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled))
  {
    goto LABEL_4;
  }

  v13 = *(v4 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
  v14 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
  v15 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
  v16 = [v13 levelForFactor:v14 withNamespaceName:v15];

  if (v16)
  {
    v17 = [v16 BOOLeanValue];

    if (v17)
    {
LABEL_4:
      v18 = *(v4 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
      outlined init with copy of MediaUserStateCenter?(a3, v12, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v20 = swift_allocObject();
      v21 = v25;
      v20[2] = v4;
      v20[3] = v21;
      v20[4] = a2;
      outlined init with take of PommesCandidateId?(v12, v20 + v19);
      *(v20 + ((v9 + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL)) = v26;
      v22 = swift_allocObject();
      *(v22 + 16) = partial apply for closure #1 in PegasusCacheManager.deleteCache(requestId:pommesCandidateId:reason:);
      *(v22 + 24) = v20;
      aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_22;
      v23 = _Block_copy(aBlock);

      dispatch_sync(v18, v23);
      _Block_release(v23);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

void closure #1 in PegasusCacheManager.deleteCache(requestId:pommesCandidateId:reason:)(uint64_t a1)
{
  (*(**(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache) + 168))(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pommes);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2232BB000, oslog, v2, "PegasusCacheManager : responseCache successfully purged", v3, 2u);
    MEMORY[0x223DE0F80](v3, -1, -1);
  }
}

void PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8, v14);
  v16 = &v33 - v15;
  if (*(v5 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled))
  {
    goto LABEL_4;
  }

  v17 = *(v5 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
  v18 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
  v34 = v12;
  v19 = a3;
  v20 = a2;
  v21 = a1;
  v22 = a4;
  v23 = v18;
  v24 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
  v25 = [v17 levelForFactor:v23 withNamespaceName:v24];

  a4 = v22;
  a1 = v21;
  a2 = v20;
  a3 = v19;
  v12 = v34;

  if (v25)
  {
    v26 = [v25 BOOLeanValue];

    if (v26)
    {
LABEL_4:
      v27 = *(v5 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
      outlined init with copy of MediaUserStateCenter?(a3, v16, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v28 = (*(v12 + 80) + 48) & ~*(v12 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v5;
      *(v29 + 24) = a5;
      *(v29 + 32) = a1;
      *(v29 + 40) = a2;
      outlined init with take of PommesCandidateId?(v16, v29 + v28);
      *(v29 + ((v13 + v28 + 3) & 0xFFFFFFFFFFFFFFFCLL)) = a4;
      v30 = swift_allocObject();
      *(v30 + 16) = partial apply for closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:);
      *(v30 + 24) = v29;
      aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_32;
      v31 = _Block_copy(aBlock);

      dispatch_sync(v27, v31);
      _Block_release(v31);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

_BYTE *closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  LOBYTE(v18) = 0;
  v12 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache);
  if (((*(*v12 + 128))() & 1) == 0)
  {
    (*(*v12 + 136))(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath, *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags));
    LOBYTE(v18) = 1;
  }

  (*(*v12 + 176))(a2, a3, a4, a5, a6);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.pommes);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v14, v15, "PegasusCacheManager : responseCache successfully purged expired entries", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

  return $defer #1 () in closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(&v18, a1);
}

_BYTE *$defer #1 () in closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    return (*(**(a2 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache) + 144))();
  }

  return result;
}

void PegasusCacheManager.purge(response:reason:)(void *a1, int a2)
{
  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled))
  {
    goto LABEL_4;
  }

  v5 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
  v6 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
  v7 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
  v8 = [v5 levelForFactor:v6 withNamespaceName:v7];

  if (v8)
  {
    v9 = [v8 BOOLeanValue];

    if (v9)
    {
LABEL_4:
      v10 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
      v11 = swift_allocObject();
      *(v11 + 16) = v2;
      *(v11 + 24) = a1;
      *(v11 + 32) = a2;
      v12 = swift_allocObject();
      *(v12 + 16) = partial apply for closure #1 in PegasusCacheManager.purge(response:reason:);
      *(v12 + 24) = v11;
      v16[4] = thunk for @callee_guaranteed () -> ()partial apply;
      v16[5] = v12;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 1107296256;
      v16[2] = thunk for @escaping @callee_guaranteed () -> ();
      v16[3] = &block_descriptor_42;
      v13 = _Block_copy(v16);

      v14 = a1;

      dispatch_sync(v10, v13);
      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

_BYTE *closure #1 in PegasusCacheManager.purge(response:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v12) = 0;
  v6 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache);
  if (((*(*v6 + 128))() & 1) == 0)
  {
    (*(*v6 + 136))(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath, *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags));
    LOBYTE(v12) = 1;
  }

  (*(*v6 + 184))(a2, a3);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2232BB000, v8, v9, "PegasusCacheManager : responseCache successfully purged response", v10, 2u);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  return $defer #1 () in closure #1 in PegasusCacheManager.purge(response:reason:)(&v12, a1);
}

_BYTE *$defer #1 () in closure #1 in PegasusCacheManager.purge(response:reason:)(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    return (*(**(a2 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache) + 144))();
  }

  return result;
}

void one-time initialization function for triggerCodePathUUID()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAD78]);
  v1 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DB790);
  v2 = [v0 initWithUUIDString_];

  static PegasusCacheManager.triggerCodePathUUID = v2;
}

uint64_t closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(MEMORY[0x277CE4838] + 4);
  v10 = (*MEMORY[0x277CE4838] + MEMORY[0x277CE4838]);
  v8 = swift_task_alloc();
  *(v5 + 48) = v8;
  *v8 = v5;
  v8[1] = closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:);

  return v10(a5, &outlined read-only object #0 of closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:));
}

uint64_t closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v19 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_2232BB000, v4, v5, "PegasusCacheManager : Failed to cache Trial experiment with error=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x2822009F8](closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:), 0, 0);
}

uint64_t closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)()
{
  v1 = v0[7];
  if (v1 && (v2 = v0[6], v3 = objc_allocWithZone(MEMORY[0x277CCAD78]), v4 = MEMORY[0x223DDF550](v2, v1), v5 = [v3 initWithUUIDString_], v0[10] = v5, v4, v5))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v0[11] = __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "PegasusCacheManager : Emitting Trigger Log", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    v10 = *(MEMORY[0x277CE4830] + 4);
    v17 = (*MEMORY[0x277CE4830] + MEMORY[0x277CE4830]);
    v11 = v5;
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:);
    v14 = v0[8];
    v13 = v0[9];

    return v17(v13, v5);
  }

  else
  {
    v16 = v0[1];

    return v16();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:);
  }

  else
  {

    v4 = closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v20 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = Error.localizedDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_2232BB000, v4, v5, "PegasusCacheManager : Failed to emit trigger log with error=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  else
  {
    v16 = *(v0 + 104);
  }

  v17 = *(v0 + 8);

  return v17();
}

unint64_t PegasusCacheManager.secondsSinceLastMaintenanceStarted(from:userDefaults:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v38 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v40 = 0u;
    v41 = 0u;
LABEL_9:
    v18 = &_sypSgMd;
    v19 = &_sypSgMR;
    v20 = &v40;
LABEL_20:
    outlined destroy of MediaUserStateCenter?(v20, v18, v19);
    if (one-time initialization token for overrides != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.overrides);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000002234DB5C0, &v40);
      _os_log_impl(&dword_2232BB000, v30, v31, "PegasusCacheManager : No value for %s in UserDefaults", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DE0F80](v33, -1, -1);
      MEMORY[0x223DE0F80](v32, -1, -1);
    }

    goto LABEL_25;
  }

  v14 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234DB5C0);
  v15 = [a2 valueForKey_];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    goto LABEL_9;
  }

  outlined destroy of MediaUserStateCenter?(&v40, &_sypSgMd, &_sypSgMR);
  v16 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234DB5C0);
  v17 = [a2 objectForKey_];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    outlined destroy of MediaUserStateCenter?(&v40, &_sypSgMd, &_sypSgMR);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_19;
  }

  v21 = swift_dynamicCast();
  (*(v9 + 56))(v7, v21 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_19:
    v18 = &_s10Foundation4DateVSgMd;
    v19 = &_s10Foundation4DateVSgMR;
    v20 = v7;
    goto LABEL_20;
  }

  (*(v9 + 32))(v13, v7, v8);
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_28:
      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.pommes);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2232BB000, v35, v36, "PegasusCacheManager : Last maintenance started date is greater than now", v37, 2u);
        MEMORY[0x223DE0F80](v37, -1, -1);
      }

      (*(v9 + 8))(v13, v8);
LABEL_25:
      v28 = 0;
      v27 = 1;
      goto LABEL_26;
    }

LABEL_32:
    swift_once();
    goto LABEL_28;
  }

  Date.timeIntervalSince(_:)();
  v23 = v22;
  v24 = v22;
  v25 = *(v9 + 8);
  v9 += 8;
  result = v25(v13, v8);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v23 <= -1.0)
  {
    __break(1u);
  }

  else if (v23 < 4294967300.0)
  {
    v27 = 0;
    v28 = v23;
LABEL_26:
    LOBYTE(v40) = v27;
    return v28 | (v27 << 32);
  }

  __break(1u);
  return result;
}

void PegasusCacheManager.updateLastMaintenanceStartedTimestamp(with:userDefaults:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  if (a2)
  {
    outlined init with copy of MediaUserStateCenter?(a1, &v13 - v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    isa = 0;
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v10 + 8))(v8, v9);
    }

    v12 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234DB5C0);
    [a2 setObject:isa forKey:v12];
    swift_unknownObjectRelease();
  }
}

uint64_t PegasusCacheManager.runMaintenanceActivity(_:)(_xpc_activity_s *a1)
{
  v69 = a1;
  v2 = type metadata accessor for UUID();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v68 = &v57 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v65 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v57 - v22;
  v24 = *(*(v1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache) + 16);

  Date.init()();
  v25 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v26 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v27 = [v25 initWithSuiteName_];

  v28 = *v1;
  v60 = *(*v1 + 256);
  v61 = v28 + 256;
  v29 = v60(v15, v27);

  v30 = v11[1];
  v62 = v15;
  v58 = v30;
  v59 = v11 + 1;
  v30(v15, v10);
  (*(*v24 + 200))(v29 | ((HIDWORD(v29) & 1) << 32));
  v31 = v68;
  Date.init()();
  v32 = v11[7];
  v63 = v10;
  v32(v31, 0, 1, v10);
  v33 = v66;
  v34 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v35 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v36 = [v34 initWithSuiteName_];

  (*(*v1 + 264))(v31, v36);
  v37 = v65;
  v38 = v67;
  outlined destroy of MediaUserStateCenter?(v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v68 = v23;
  outlined init with copy of MediaUserStateCenter?(v23, v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v33 + 48))(v37, 1, v38) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.pommes);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2232BB000, v40, v41, "PegasusCacheManager : Unable to log PommesCacheMaintenanceEnded because maintenanceStartedStreamUUID is missing", v42, 2u);
      MEMORY[0x223DE0F80](v42, -1, -1);
    }
  }

  else
  {
    v43 = v64;
    (*(v33 + 32))(v64, v37, v38);
    v44 = v62;
    Date.init()();
    v45 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v46 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
    v47 = [v45 initWithSuiteName_];

    v48 = v60(v44, v47);
    v58(v44, v63);
    if ((v48 & 0x100000000) != 0)
    {
      v49 = 0;
    }

    else
    {
      v49 = v48;
    }

    (*(*v24 + 208))(v43, 0, 0, v49, 1);
    (*(v33 + 8))(v43, v38);
  }

  if (xpc_activity_set_state(v69, 5))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.pommes);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "PegasusCacheManager : Maintenance activity is marked as done";
LABEL_20:
      _os_log_impl(&dword_2232BB000, v51, v52, v54, v53, 2u);
      MEMORY[0x223DE0F80](v53, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "PegasusCacheManager : Failed to set maintenance activity to done";
      goto LABEL_20;
    }
  }

  return outlined destroy of MediaUserStateCenter?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

Swift::Bool __swiftcall PegasusCacheManager.registerMaintenanceActivity()()
{
  v1 = v0;
  (*(*v0 + 296))();
  if ((PegasusCacheManager.cachingEnabled.getter() & 1) != 0 && *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_prepopulate) == 1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pommes);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v4, "PegasusCacheManager : Registering maintenance activity", v5, 2u);
      MEMORY[0x223DE0F80](v5, -1, -1);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86288], *MEMORY[0x277D862C8]);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86360], 1);
    if (*MEMORY[0x277D86398])
    {
      xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86398], 1);
      xpc_dictionary_set_string(v6, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
      v8 = swift_allocObject();
      swift_weakInit();
      v21[4] = partial apply for closure #1 in PegasusCacheManager.registerMaintenanceActivity();
      v21[5] = v8;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 1107296256;
      v21[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      v21[3] = &block_descriptor_46;
      v9 = _Block_copy(v21);

      v10 = String.utf8CString.getter();
      xpc_activity_register((v10 + 32), v6, v9);

      _Block_release(v9);
      swift_unknownObjectRelease();
      return 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pommes);
    swift_retain_n();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109376;
      if (*(v1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled))
      {
        goto LABEL_15;
      }

      v15 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
      v16 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
      v17 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
      v18 = [v15 levelForFactor:v16 withNamespaceName:v17];

      if (!v18)
      {
        goto LABEL_17;
      }

      v19 = [v18 BOOLeanValue];

      if (v19)
      {
LABEL_15:
        v20 = 1;
      }

      else
      {
LABEL_17:
        v20 = 0;
      }

      *(v14 + 4) = v20;

      *(v14 + 8) = 1024;
      *(v14 + 10) = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_prepopulate);

      _os_log_impl(&dword_2232BB000, v12, v13, "PegasusCacheManager : Unable to register maintenance activity cachingEnabled=%{BOOL}d prepopulate=%{BOOL}d", v14, 0xEu);
      MEMORY[0x223DE0F80](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void closure #1 in PegasusCacheManager.registerMaintenanceActivity()(_xpc_activity_s *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    state = xpc_activity_get_state(a1);
    if (state)
    {
      if (state == 2)
      {
        if (!xpc_activity_set_state(a1, 4))
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v5 = type metadata accessor for Logger();
          __swift_project_value_buffer(v5, static Logger.pommes);
          v6 = Logger.logObject.getter();
          v7 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v6, v7))
          {
            v8 = swift_slowAlloc();
            *v8 = 0;
            _os_log_impl(&dword_2232BB000, v6, v7, "PegasusCacheManager : Failed to set maintenance activity to continue", v8, 2u);
            MEMORY[0x223DE0F80](v8, -1, -1);
          }
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.pommes);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_2232BB000, v10, v11, "PegasusCacheManager : Running maintenance activity", v12, 2u);
          MEMORY[0x223DE0F80](v12, -1, -1);
        }

        (*(*v3 + 272))(a1);
      }

      goto LABEL_28;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2232BB000, v18, v19, "PegasusCacheManager : Checking in maintenance activity", v20, 2u);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

    if (xpc_activity_copy_criteria(a1))
    {

      swift_unknownObjectRelease();
      return;
    }

    v21 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v21, *MEMORY[0x277D86288], *MEMORY[0x277D862C8]);
    xpc_dictionary_set_BOOL(v21, *MEMORY[0x277D86360], 1);
    if (*MEMORY[0x277D86398])
    {
      xpc_dictionary_set_BOOL(v21, *MEMORY[0x277D86398], 1);
      xpc_dictionary_set_string(v21, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
      xpc_activity_set_criteria(a1, v21);
      swift_unknownObjectRelease();
LABEL_28:

      return;
    }

    __break(1u);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v14, v15, "PegasusCacheManager : Unable to register activity because PegasusCacheManager has not been instantiated", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall PegasusCacheManager.unregisterMaintenanceActivity()()
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.pommes);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2232BB000, v1, v2, "PegasusCacheManager : Unregistering maintenance activity", v3, 2u);
    MEMORY[0x223DE0F80](v3, -1, -1);
  }

  v4 = String.utf8CString.getter();
  xpc_activity_unregister((v4 + 32));
}

uint64_t PegasusCacheManager.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache);

  v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_domainCacheHandlers);

  v6 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 8);
  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 16);

  return v0;
}

uint64_t PegasusCacheManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache);

  v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_domainCacheHandlers);

  v6 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 8);
  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 16);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void specialized static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v17 - v6;
  if (one-time initialization token for triggerCodePathUUID != -1)
  {
    swift_once();
  }

  v8 = static PegasusCacheManager.triggerCodePathUUID;
  if (static PegasusCacheManager.triggerCodePathUUID)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a1;
    v10[5] = v8;
    v10[6] = v1;
    v11 = v8;
    v12 = a1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:), v10);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v18 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2232BB000, v18, v14, "PegasusCacheManager : Failed to cache Trial experiment because triggerCodePathUUID is nil", v15, 2u);
      MEMORY[0x223DE0F80](v15, -1, -1);
    }

    v16 = v18;
  }
}

_BYTE *specialized PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7, int a8)
{
  v9 = v8;
  v72 = a6;
  v73 = a8;
  v74 = a7;
  v75 = a1;
  v70 = a5;
  v71 = a3;
  v76 = a2;
  v10 = *v8;
  v68 = a4;
  v69 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v66 = v60 - v14;
  v15 = type metadata accessor for URL();
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v67 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v62 = *(v19 - 8);
  v63 = v19;
  v20 = *(v62 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v61 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OS_dispatch_queue.Attributes();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23, v25);
  v60[1] = v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v30 = type metadata accessor for DispatchQoS.QoSClass();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache;
  type metadata accessor for ResponseCache();
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  type metadata accessor for AnalyticsComponentIdGenerator();
  v38 = swift_allocObject();
  type metadata accessor for PommesCacheInstrumentationUtil();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = v38;
  *(v37 + 16) = v39;
  *&v9[v36] = v37;
  v40 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_experimentationAnalyticsManager;
  *&v9[v40] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v60[0] = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue;
  type metadata accessor for OS_dispatch_queue();
  (*(v31 + 104))(v35, *MEMORY[0x277D851C8], v30);
  static OS_dispatch_queue.global(qos:)();
  (*(v31 + 8))(v35, v30);
  static DispatchQoS.unspecified.getter();
  v77 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v41 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v62 + 104))(v61, *MEMORY[0x277D85260], v63);
  v42 = v68;
  v43 = v65;
  v44 = v66;
  *&v9[v60[0]] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  outlined init with copy of MediaUserStateCenter?(v42, v44, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v45 = *(v41 + 48);
  if (v45(v44, 1, v43) == 1)
  {
    v46 = v67;
    static PegasusCacheManager.defaultDirectoryPath.getter();
    v47 = v46;
    if (v45(v44, 1, v43) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v44, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    v47 = v67;
    (*(v41 + 32))(v67, v44, v43);
  }

  (*(v41 + 32))(&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath], v47, v43);
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags] = v70;
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_domainCacheHandlers] = v71;
  v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled] = v72 & 1;
  v48 = v74;
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient] = v74;
  v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_prepopulate] = v73 & 1;
  v49 = v48;
  v50 = v76;

  v51 = v75;
  v52 = specialized static UtteranceNormalizer.getTriggerPhrases(locale:)(v75, v50);

  v53 = &v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer];
  *v53 = v51;
  v53[1] = v50;
  v53[2] = v52;
  v54 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v54)
  {
    v55 = v54;
    if (*MEMORY[0x277CEF5C0])
    {
      CFNotificationCenterAddObserver(v54, v9, @objc closure #1 in variable initialization expression of static PegasusCacheManager.siriAndDictationHistoryDeletionRequestedCallback, *MEMORY[0x277CEF5C0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  v56 = *&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient];
  v57 = *&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_experimentationAnalyticsManager];
  v58 = v56;
  specialized static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)(v57);

  (*(*v9 + 288))();
  outlined destroy of MediaUserStateCenter?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v9;
}

uint64_t specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    return 0;
  }

  v7 = MEMORY[0x223DDF550](a1, a2);
  v8 = [v6 BOOLForKey_];

  if (!v8)
  {
    return 0;
  }

  if (one-time initialization token for overrides != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.overrides);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000002234DA020, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    *(v12 + 22) = 1024;
    *(v12 + 24) = 1;
    _os_log_impl(&dword_2232BB000, v10, v11, "PegasusCacheManager : User default %s/%s=%{BOOL}d", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v13, -1, -1);
    MEMORY[0x223DE0F80](v12, -1, -1);
  }

  return 1;
}

uint64_t outlined init with copy of PommesSearchRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in PegasusCacheManager.fetch(request:domainWarmup:completion:)()
{
  v1 = *(type metadata accessor for PommesSearchRequest(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  closure #1 in PegasusCacheManager.fetch(request:domainWarmup:completion:)(v5, v0 + v2, v6, v7, v8, v10);
}

void specialized static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v20 - v9;
  if (one-time initialization token for triggerCodePathUUID != -1)
  {
    swift_once();
  }

  v11 = static PegasusCacheManager.triggerCodePathUUID;
  if (static PegasusCacheManager.triggerCodePathUUID)
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = a2;
    v13[6] = a3;
    v13[7] = v11;

    v14 = a3;
    v15 = v11;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:), v13);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pommes);
    v21 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2232BB000, v21, v17, "PegasusCacheManager : Failed to cache Trial experiment because triggerCodePathUUID is nil", v18, 2u);
      MEMORY[0x223DE0F80](v18, -1, -1);
    }

    v19 = v21;
  }
}

void partial apply for closure #1 in PegasusCacheManager.deleteCache(requestId:pommesCandidateId:reason:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 40) & ~*(v1 + 80)) + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v5 = v0[4];

  closure #1 in PegasusCacheManager.deleteCache(requestId:pommesCandidateId:reason:)(v2);
}

_BYTE *partial apply for closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 2);
  v4 = v0[3];
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + ((*(v1 + 64) + v2 + 3) & 0xFFFFFFFFFFFFFFFCLL));

  return closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(v3, v5, v6, v0 + v2, v7, v4);
}

uint64_t type metadata accessor for PegasusCacheManager()
{
  result = type metadata singleton initialization cache for PegasusCacheManager;
  if (!type metadata singleton initialization cache for PegasusCacheManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PegasusCacheManager()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[4];
  v7 = *(v0 + 5);
  v8 = *(v0 + 6);
  v9 = *(v0 + v3);
  v10 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);

  return closure #1 in PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)(v4, v5, v7, v8, v0 + v2, v9, v11, v12, v6);
}

uint64_t partial apply for closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)(uint64_t a1)
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
  v10[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)(a1, v4, v5, v6, v7);
}

uint64_t PommesAudioPluginResults.__allocating_init(audioResults:targetPlaylists:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PommesAudioPluginResults.init(audioResults:targetPlaylists:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t PommesAudioPluginResults.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t PommesAudioPluginResults.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t PommesInsightRequestSummaryMessageDescription.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000021;
    if (a1 != 2)
    {
      v5 = 0xD000000000000027;
    }

    v6 = 0xD000000000000024;
    if (!a1)
    {
      v6 = 0xD00000000000001ELL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0xD000000000000027;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 == 4)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PommesInsightRequestSummaryMessageDescription(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = PommesInsightRequestSummaryMessageDescription.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PommesInsightRequestSummaryMessageDescription.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesInsightRequestSummaryMessageDescription()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PommesInsightRequestSummaryMessageDescription.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PommesInsightRequestSummaryMessageDescription()
{
  PommesInsightRequestSummaryMessageDescription.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesInsightRequestSummaryMessageDescription()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PommesInsightRequestSummaryMessageDescription.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PommesInsightRequestSummaryMessageDescription@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PommesInsightRequestSummaryMessageDescription.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PommesInsightRequestSummaryMessageDescription@<X0>(unint64_t *a1@<X8>)
{
  result = PommesInsightRequestSummaryMessageDescription.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t one-time initialization function for isFromTimeoutHandler()
{
  v0 = type metadata accessor for InsightRequestSummaryKey();
  __swift_allocate_value_buffer(v0, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  __swift_project_value_buffer(v0, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  return InsightRequestSummaryKey.init(rawValue:)();
}

uint64_t one-time initialization function for isRequestFinished()
{
  v0 = type metadata accessor for InsightRequestSummaryKey();
  __swift_allocate_value_buffer(v0, static PommesInsightRequestSummaryKey.isRequestFinished);
  __swift_project_value_buffer(v0, static PommesInsightRequestSummaryKey.isRequestFinished);
  return InsightRequestSummaryKey.init(rawValue:)();
}

uint64_t one-time initialization function for pommesError(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for InsightRequestSummaryKey();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return InsightRequestSummaryKey.init(rawValue:)();
}

uint64_t PommesInsightRequestSummaryKey.pommesError.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for InsightRequestSummaryKey();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static PommesInsightRequestSummaryKey.pommesError.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for InsightRequestSummaryKey();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t specialized PommesInsightRequestSummaryMessageDescription.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesInsightRequestSummaryMessageDescription.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PommesInsightRequestSummaryMessageDescription and conformance PommesInsightRequestSummaryMessageDescription()
{
  result = lazy protocol witness table cache variable for type PommesInsightRequestSummaryMessageDescription and conformance PommesInsightRequestSummaryMessageDescription;
  if (!lazy protocol witness table cache variable for type PommesInsightRequestSummaryMessageDescription and conformance PommesInsightRequestSummaryMessageDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesInsightRequestSummaryMessageDescription and conformance PommesInsightRequestSummaryMessageDescription);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesInsightRequestSummaryMessageDescription(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PommesInsightRequestSummaryMessageDescription(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t PlayRestOfThisAlbumPreflightClient.isPlayRestOfThisAlbumTask(task:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (v9[3])
  {
    type metadata accessor for UsoTask_resume_common_MediaItem();
    if (swift_dynamicCast())
    {

      v2 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_2836956F0, a1);

      if (v2 >> 62)
      {
        goto LABEL_18;
      }

      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        while (1)
        {
          v4 = 0;
          while ((v2 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x223DDFF80](v4, v2);
            v6 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }

LABEL_9:
            v9[0] = v5;
            v7 = closure #1 in PlayRestOfThisAlbumPreflightClient.isPlayRestOfThisAlbumTask(task:)(v9);

            if (v7)
            {

              return 1;
            }

            ++v4;
            if (v6 == v3)
            {
              goto LABEL_19;
            }
          }

          if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_18:
          v3 = __CocoaSet.count.getter();
          if (!v3)
          {
            goto LABEL_19;
          }
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

LABEL_19:
    }
  }

  else
  {
LABEL_15:
    outlined destroy of MediaUserStateCenter?(v9, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

uint64_t closure #1 in PlayRestOfThisAlbumPreflightClient.isPlayRestOfThisAlbumTask(task:)(uint64_t *a1)
{
  v73 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v71 = *(v73 - 8);
  v2 = *(v71 + 64);
  MEMORY[0x28223BE20](v73, v3);
  v66 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  v5 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70, v6);
  v72 = &v64[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v74 = &v64[-v16];
  MEMORY[0x28223BE20](v15, v17);
  v75 = &v64[-v18];
  v19 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v68 = &v64[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v64[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29 - 8, v31);
  v34 = &v64[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x28223BE20](v32, v35);
  v38 = &v64[-v37];
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v64[-v40];
  v69 = *a1;
  v42 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
  v67 = v13;
  if (v42)
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v20 + 56))(v41, 1, 1, v19);
  }

  (*(v20 + 104))(v38, *MEMORY[0x277D5ED98], v19);
  (*(v20 + 56))(v38, 0, 1, v19);
  v43 = *(v24 + 48);
  outlined init with copy of MediaUserStateCenter?(v41, v28, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v38, &v28[v43], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v44 = *(v20 + 48);
  if (v44(v28, 1, v19) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v38, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v44(&v28[v43], 1, v19) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v28, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      goto LABEL_11;
    }

LABEL_9:
    v45 = &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd;
    v46 = &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR;
    v47 = v28;
LABEL_20:
    outlined destroy of MediaUserStateCenter?(v47, v45, v46);
    goto LABEL_21;
  }

  outlined init with copy of MediaUserStateCenter?(v28, v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v44(&v28[v43], 1, v19) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v38, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v20 + 8))(v34, v19);
    goto LABEL_9;
  }

  v48 = v68;
  (*(v20 + 32))(v68, &v28[v43], v19);
  lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v20 + 8);
  v49(v48, v19);
  outlined destroy of MediaUserStateCenter?(v38, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v49(v34, v19);
  outlined destroy of MediaUserStateCenter?(v28, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if ((v65 & 1) == 0)
  {
LABEL_21:
    v58 = 0;
    return v58 & 1;
  }

LABEL_11:
  if (dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter())
  {
    v50 = v75;
    dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

    v52 = v72;
    v51 = v73;
    v53 = v71;
  }

  else
  {
    v53 = v71;
    v50 = v75;
    v51 = v73;
    (*(v71 + 56))(v75, 1, 1, v73);
    v52 = v72;
  }

  v54 = v74;
  (*(v53 + 104))(v74, *MEMORY[0x277D5EE50], v51);
  (*(v53 + 56))(v54, 0, 1, v51);
  v55 = *(v70 + 48);
  outlined init with copy of MediaUserStateCenter?(v50, v52, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v54, v52 + v55, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v56 = v54;
  v57 = *(v53 + 48);
  if (v57(v52, 1, v51) != 1)
  {
    v59 = v67;
    outlined init with copy of MediaUserStateCenter?(v52, v67, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    if (v57(v52 + v55, 1, v51) != 1)
    {
      v61 = v52 + v55;
      v62 = v66;
      (*(v53 + 32))(v66, v61, v51);
      lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, MEMORY[0x277D5EE58]);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      v63 = *(v53 + 8);
      v63(v62, v51);
      outlined destroy of MediaUserStateCenter?(v74, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v75, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v63(v59, v51);
      outlined destroy of MediaUserStateCenter?(v52, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      return v58 & 1;
    }

    outlined destroy of MediaUserStateCenter?(v74, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v75, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    (*(v53 + 8))(v59, v51);
    goto LABEL_19;
  }

  outlined destroy of MediaUserStateCenter?(v56, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  if (v57(v52 + v55, 1, v51) != 1)
  {
LABEL_19:
    v45 = &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd;
    v46 = &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR;
    v47 = v52;
    goto LABEL_20;
  }

  outlined destroy of MediaUserStateCenter?(v52, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v58 = 1;
  return v58 & 1;
}

uint64_t PlayRestOfThisAlbumPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v119 = *v1;
  v3 = type metadata accessor for PommesSearchReason();
  v117 = *(v3 - 8);
  v118 = v3;
  v4 = *(v117 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v116 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v115 = (&v98 - v10);
  v11 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v107 = *(v11 - 8);
  v108 = v11;
  v12 = *(v107 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v106 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserParse();
  v111 = *(v15 - 8);
  v112 = v15;
  v16 = *(v111 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v110 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v113 = *(v19 - 8);
  v114 = v19;
  v20 = *(v113 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v109 = *(v24 - 8);
  v25 = *(v109 + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v98 - v31;
  v33 = type metadata accessor for PommesSearchRequest(0);
  v34 = a1;
  v35 = *(a1 + *(v33 + 76));
  v36 = specialized Sequence.flatMap<A>(_:)(v35);
  v47 = v36;
  v102 = v35;
  v99 = v29;
  v100 = v23;
  v104 = v32;
  v105 = v33;
  v101 = v24;
  v103 = v34;
  if (!(v36 >> 62))
  {
    v48 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_6;
    }

LABEL_35:

    return 1;
  }

  v48 = __CocoaSet.count.getter();
  if (!v48)
  {
    goto LABEL_35;
  }

LABEL_6:
  v49 = 0;
  while (1)
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x223DDFF80](v49, v47);
      v39 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
LABEL_15:
        __break(1u);
LABEL_16:

        return 1;
      }
    }

    else
    {
      if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        swift_once();
        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.pommes);
        v38 = 0;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v120 = 0;
          v121[0] = v42;
          *v41 = 136315138;
          v43 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v44 = String.init<A>(describing:)();
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v121);

          *(v41 + 4) = v46;
          _os_log_impl(&dword_2232BB000, v39, v40, "ConversionUtils.convertUserDialogActToTasks error: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x223DE0F80](v42, -1, -1);
          MEMORY[0x223DE0F80](v41, -1, -1);

          return 1;
        }

        goto LABEL_16;
      }

      v50 = *(v47 + 8 * v49 + 32);

      v39 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
        goto LABEL_15;
      }
    }

    if ((*(*v1 + 80))(v50))
    {
      break;
    }

    ++v49;
    if (v39 == v48)
    {
      goto LABEL_35;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  v52 = __swift_project_value_buffer(v51, static Logger.pommes);

  v98 = v52;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();

  v55 = os_log_type_enabled(v53, v54);
  v56 = v113;
  if (v55)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v121[0] = v58;
    *v57 = 136315394;
    v59 = UsoTask.verbString.getter();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v121);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    v62 = UsoTask.baseEntityAsString.getter();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v121);

    *(v57 + 14) = v64;
    _os_log_impl(&dword_2232BB000, v53, v54, "PlayRestOfThisAlbumPreflightClient matched task: %s::%s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v58, -1, -1);
    MEMORY[0x223DE0F80](v57, -1, -1);
  }

  v65 = v104;
  v66 = v105;
  v67 = v114;
  v68 = v111;
  v69 = v112;
  v70 = v110;
  if (*(v102 + 16))
  {
    (*(v111 + 16))(v110, v102 + ((*(v111 + 80) + 32) & ~*(v111 + 80)), v112);
    v71 = v68;
    v72 = Siri_Nlu_External_Span.matcherNames.getter();
    (*(v71 + 8))(v70, v69);
    if (*(v72 + 16))
    {
      v73 = v100;
      (*(v56 + 16))(v100, v72 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v67);

      v74 = v67;
      v75 = v106;
      Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
      (*(v56 + 8))(v73, v74);
      v76 = v99;
      Siri_Nlu_External_UserStatedTask.task.getter();
      (*(v107 + 8))(v75, v108);
      v77 = v101;
      (*(v109 + 32))(v65, v76, v101);
      static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.info.getter();

      v80 = os_log_type_enabled(v78, v79);
      v66 = v105;
      if (v80)
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v121[0] = v82;
        *v81 = 136315138;
        v83 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
        v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v121);

        *(v81 + 4) = v85;
        _os_log_impl(&dword_2232BB000, v78, v79, "Likely matched graph: %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        v66 = v105;
        MEMORY[0x223DE0F80](v82, -1, -1);
        MEMORY[0x223DE0F80](v81, -1, -1);

        (*(v109 + 8))(v104, v77);
      }

      else
      {

        (*(v109 + 8))(v65, v77);
      }
    }

    else
    {

      v66 = v105;
    }
  }

  v86 = v103;
  v87 = (v103 + *(v66 + 32));
  v88 = *v87;
  v89 = v87[1];
  v90 = v115;
  PommesSearchRequest.pommesCandidateId.getter(v115);
  v91 = type metadata accessor for PommesCandidateId();
  (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
  v92 = v116;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v116);
  v93 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v86, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v88, v89, v90, v92, 0x6867696C66657270, 0xE900000000000074, 0xD000000000000022, 0x80000002234D2410);
  (*(v117 + 8))(v92, v118);
  outlined destroy of MediaUserStateCenter?(v90, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (v93)
  {

    return v93;
  }

  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_2232BB000, v95, v96, "PlayRestOfThisAlbumPreflightClient#ignore could not build PommesResponse with given parameters", v97, 2u);
    MEMORY[0x223DE0F80](v97, -1, -1);
  }

  return 1;
}

uint64_t Siri_Nlu_External_UserParse.resumeMediaItemRelevantTasks()()
{
  v1 = Siri_Nlu_External_Span.matcherNames.getter();
  v2 = specialized Sequence.flatMap<A>(_:)(v1);

  if (!v0)
  {
    v12 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      goto LABEL_19;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      while (1)
      {
        v4 = 0;
        v5 = v2 & 0xFFFFFFFFFFFFFF8;
        while ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DDFF80](v4, v2);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v1 = v12;
            goto LABEL_21;
          }

LABEL_10:
          static UsoTask_CodegenConverter.convert(task:)();
          if (v11)
          {
            type metadata accessor for UsoTask_resume_common_MediaItem();
            if (swift_dynamicCast())
            {

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v8 = *(v12 + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v5 = v2 & 0xFFFFFFFFFFFFFF8;
            }

            else
            {
            }
          }

          else
          {

            outlined destroy of MediaUserStateCenter?(v10, &_sypSgMd, &_sypSgMR);
          }

          ++v4;
          if (v7 == v3)
          {
            goto LABEL_17;
          }
        }

        if (v4 < *(v5 + 16))
        {
          break;
        }

        __break(1u);
LABEL_19:
        v3 = __CocoaSet.count.getter();
        if (!v3)
        {
          goto LABEL_20;
        }
      }

      v6 = *(v2 + 8 * v4 + 32);

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

LABEL_20:
    v1 = MEMORY[0x277D84F90];
LABEL_21:
  }

  return v1;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = __CocoaSet.count.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = __CocoaSet.count.getter();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t OpenAppOnTVPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v3 = 0;
  v160 = *v1;
  v159 = type metadata accessor for PommesSearchReason();
  v157 = *(v159 - 8);
  v4 = *(v157 + 64);
  MEMORY[0x28223BE20](v159, v5);
  v156 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v155 = (&v154 - v10);
  v182 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v11 = *(v182 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v182, v13);
  v15 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v16 = *(v181 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v181, v18);
  v180 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for Siri_Nlu_External_UserParse();
  v26 = *(v169 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v169, v28);
  v168 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for PommesSearchRequest(0);
  v30 = *(v154 + 76);
  v158 = a1;
  v31 = *(a1 + v30);
  v32 = MEMORY[0x277D84F90];
  v189 = MEMORY[0x277D84F90];
  v163 = *(v31 + 16);
  if (v163)
  {
    v33 = 0;
    v166 = v31 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v165 = v26 + 16;
    v176 = (v16 + 8);
    v177 = v21 + 16;
    v178 = (v11 + 8);
    v175 = (v21 + 8);
    v164 = (v26 + 8);
    v172 = v15;
    v171 = v20;
    v170 = v25;
    v173 = v21;
    v162 = v26;
    v161 = v31;
    while (1)
    {
      if (v33 >= *(v31 + 16))
      {
        goto LABEL_162;
      }

      v34 = *(v26 + 72);
      v167 = v33;
      (*(v26 + 16))(v168, v166 + v34 * v33, v169);
      v35 = Siri_Nlu_External_Span.matcherNames.getter();
      v36 = v35;
      v179 = *(v35 + 16);
      if (v179)
      {
        break;
      }

      v38 = v32;
LABEL_39:
      v33 = v167 + 1;
      v70 = v38;

      (*v164)(v168, v169);
      specialized Array.append<A>(contentsOf:)(v70);
      v26 = v162;
      v31 = v161;
      if (v33 == v163)
      {
        v71 = v189;
        goto LABEL_42;
      }
    }

    v37 = 0;
    v38 = v32;
    v174 = v35;
    while (1)
    {
      if (v37 >= *(v36 + 16))
      {
        goto LABEL_155;
      }

      v185 = v37;
      v186 = v38;
      (*(v21 + 16))(v25, v36 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v37, v20);
      v40 = v180;
      Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
      Siri_Nlu_External_UserStatedTask.task.getter();
      (*v176)(v40, v181);
      v41 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
      if (v3)
      {

        (*v178)(v15, v182);
        (*v175)(v25, v20);

        (*v164)(v168, v169);

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v121 = type metadata accessor for Logger();
        __swift_project_value_buffer(v121, static Logger.pommes);
        v122 = v3;
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          *v125 = 138412290;
          v127 = v3;
          v128 = _swift_stdlib_bridgeErrorToNSError();
          *(v125 + 4) = v128;
          *v126 = v128;
          _os_log_impl(&dword_2232BB000, v123, v124, "#OpenAppOnTV: Error scanning for matching USO tasks. %@", v125, 0xCu);
          outlined destroy of MediaUserStateCenter?(v126, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x223DE0F80](v126, -1, -1);
          MEMORY[0x223DE0F80](v125, -1, -1);
        }

        else
        {
        }

LABEL_137:
        if (one-time initialization token for pommes != -1)
        {
          goto LABEL_163;
        }

        goto LABEL_138;
      }

      v42 = v41;
      (*v178)(v15, v182);
      v43 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
      v45 = v44;
      v46 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      v47 = v46;
      if (v46 >> 62)
      {
        v48 = __CocoaSet.count.getter();
        if (v48)
        {
LABEL_12:
          v184 = v42;
          v188[0] = v32;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48 & ~(v48 >> 63), 0);
          if (v48 < 0)
          {
            goto LABEL_159;
          }

          v183 = 0;
          v49 = v188[0];
          if ((v47 & 0xC000000000000001) != 0)
          {
            v50 = 0;
            do
            {
              v51 = MEMORY[0x223DDFF80](v50, v47);
              v188[0] = v49;
              v52 = *(v49 + 16);
              v53 = *(v49 + 24);

              if (v52 >= v53 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v52 + 1, 1);
                v49 = v188[0];
              }

              ++v50;
              *(v49 + 16) = v52 + 1;
              v54 = (v49 + 24 * v52);
              v54[4] = v51;
              v54[5] = v43;
              v54[6] = v45;
            }

            while (v48 != v50);
          }

          else
          {
            v55 = (v47 + 32);
            do
            {
              v56 = *v55;
              v188[0] = v49;
              v58 = *(v49 + 16);
              v57 = *(v49 + 24);

              if (v58 >= v57 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
                v49 = v188[0];
              }

              *(v49 + 16) = v58 + 1;
              v59 = (v49 + 24 * v58);
              v59[4] = v56;
              v59[5] = v43;
              v59[6] = v45;
              ++v55;
              --v48;
            }

            while (v48);
          }

          v25 = v170;
          v20 = v171;
          (*v175)(v170, v171);
          v3 = v183;
          v32 = MEMORY[0x277D84F90];
          v15 = v172;
          goto LABEL_26;
        }
      }

      else
      {
        v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v48)
        {
          goto LABEL_12;
        }
      }

      (*v175)(v25, v20);
      v49 = v32;
LABEL_26:
      v60 = *(v49 + 16);
      v61 = *(v186 + 2);
      v62 = v61 + v60;
      v21 = v173;
      if (__OFADD__(v61, v60))
      {
        goto LABEL_156;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v186;
      if (!isUniquelyReferenced_nonNull_native || v62 > *(v186 + 3) >> 1)
      {
        if (v61 <= v62)
        {
          v65 = v61 + v60;
        }

        else
        {
          v65 = v61;
        }

        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v65, 1, v186);
      }

      v36 = v174;
      if (*(v49 + 16))
      {
        if ((*(v64 + 3) >> 1) - *(v64 + 2) < v60)
        {
          goto LABEL_160;
        }

        v66 = v64;
        swift_arrayInitWithCopy();

        v38 = v66;
        if (v60)
        {
          v67 = *(v66 + 2);
          v68 = __OFADD__(v67, v60);
          v69 = v67 + v60;
          if (v68)
          {
            goto LABEL_161;
          }

          *(v66 + 2) = v69;
        }
      }

      else
      {
        v39 = v64;

        v38 = v39;
        if (v60)
        {
          goto LABEL_157;
        }
      }

      v37 = v185 + 1;
      if (v185 + 1 == v179)
      {
        goto LABEL_39;
      }
    }
  }

  v71 = MEMORY[0x277D84F90];
LABEL_42:
  v72 = *(v71 + 16);
  if (!v72)
  {
LABEL_131:

    goto LABEL_137;
  }

  v73 = 0;
  v74 = v71 + 32;
  v180 = v71;
  v184 = v72;
  v185 = v71 + 32;
  while (1)
  {
    if (v73 >= *(v71 + 16))
    {
      goto LABEL_158;
    }

    v76 = (v74 + 24 * v73);
    v78 = *v76;
    v77 = v76[1];
    v79 = v76[2];

    static UsoTask_CodegenConverter.convert(task:)();
    outlined init with copy of Any?(&v189, v188);
    if (v188[3])
    {
      break;
    }

    outlined destroy of MediaUserStateCenter?(&v189, &_sypSgMd, &_sypSgMR);
    v75 = v188;
LABEL_45:
    outlined destroy of MediaUserStateCenter?(v75, &_sypSgMd, &_sypSgMR);
LABEL_46:
    if (++v73 == v72)
    {
      goto LABEL_131;
    }
  }

  type metadata accessor for UsoTask_open_common_App();
  if ((swift_dynamicCast() & 1) == 0)
  {

    v75 = &v189;
    goto LABEL_45;
  }

  v182 = v77;
  v186 = v73;

  v80 = byte_283695638;
  v81 = UsoTask.arguments.getter();
  v82 = 0x636E657265666572;
  if (v80 != 2)
  {
    v82 = 0x72656767697274;
  }

  v83 = 0xE700000000000000;
  if (v80 == 2)
  {
    v83 = 0xE900000000000065;
  }

  v84 = 0x69746E4572657375;
  if (v80)
  {
    v84 = 0x746567726174;
  }

  v85 = 0xEC00000073656974;
  if (v80)
  {
    v85 = 0xE600000000000000;
  }

  if (v80 <= 1)
  {
    v86 = v84;
  }

  else
  {
    v86 = v82;
  }

  if (v80 <= 1)
  {
    v87 = v85;
  }

  else
  {
    v87 = v83;
  }

  if (*(v81 + 16))
  {
    v88 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v87);
    v90 = v89;

    if (v90)
    {
      v91 = *(*(v81 + 56) + 8 * v88);

      v188[0] = v32;
      v183 = v78;
      v181 = v79;
      if (v91 >> 62)
      {
        v92 = __CocoaSet.count.getter();
      }

      else
      {
        v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v93 = 0;
      v179 = v32;
      while (1)
      {
        if (v92 == v93)
        {

          v32 = MEMORY[0x277D84F90];
          v188[0] = MEMORY[0x277D84F90];
          specialized Array.append<A>(contentsOf:)(v179, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
          v98 = v188[0];
          v78 = v183;
          v79 = v181;
          goto LABEL_84;
        }

        if ((v91 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DDFF80](v93, v91);
          v95 = v93 + 1;
          if (__OFADD__(v93, 1))
          {
            goto LABEL_151;
          }
        }

        else
        {
          if (v93 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_152;
          }

          v94 = *(v91 + 8 * v93 + 32);

          v95 = v93 + 1;
          if (__OFADD__(v93, 1))
          {
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            swift_once();
LABEL_138:
            v129 = type metadata accessor for Logger();
            __swift_project_value_buffer(v129, static Logger.pommes);
            v130 = Logger.logObject.getter();
            v131 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              *v132 = 0;
              _os_log_impl(&dword_2232BB000, v130, v131, "#OpenAppOnTV: No matching task.", v132, 2u);
              MEMORY[0x223DE0F80](v132, -1, -1);
            }

            return 1;
          }
        }

        type metadata accessor for UsoEntity_common_App();
        dispatch thunk of UsoValue.getAsEntity()();
        static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

        ++v93;
        if (v187)
        {
          MEMORY[0x223DDF820](v96);
          if (*((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v97 = *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v179 = v188[0];
          v93 = v95;
        }
      }
    }

    v98 = v32;
LABEL_84:
    v71 = v180;
    v74 = v185;
  }

  else
  {

    v98 = v32;
  }

  if (!(v98 >> 62))
  {
    v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v99)
    {
      goto LABEL_87;
    }

LABEL_126:

    outlined destroy of MediaUserStateCenter?(&v189, &_sypSgMd, &_sypSgMR);
LABEL_127:
    v72 = v184;
    v73 = v186;
    goto LABEL_46;
  }

  v120 = __CocoaSet.count.getter();

  if (!v120)
  {
    goto LABEL_126;
  }

LABEL_87:
  v100 = byte_283695660;
  v101 = UsoTask.arguments.getter();
  v102 = 0x636E657265666572;
  if (v100 != 2)
  {
    v102 = 0x72656767697274;
  }

  v103 = 0xE700000000000000;
  if (v100 == 2)
  {
    v103 = 0xE900000000000065;
  }

  v104 = 0x69746E4572657375;
  if (v100)
  {
    v104 = 0x746567726174;
  }

  v105 = 0xEC00000073656974;
  if (v100)
  {
    v105 = 0xE600000000000000;
  }

  if (v100 <= 1)
  {
    v106 = v104;
  }

  else
  {
    v106 = v102;
  }

  if (v100 <= 1)
  {
    v107 = v105;
  }

  else
  {
    v107 = v103;
  }

  if (*(v101 + 16))
  {
    v108 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v107);
    v110 = v109;

    if (v110)
    {
      v111 = *(*(v101 + 56) + 8 * v108);

      v188[0] = v32;
      v183 = v78;
      v181 = v79;
      if (v111 >> 62)
      {
        v112 = __CocoaSet.count.getter();
      }

      else
      {
        v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v113 = 0;
      v179 = v32;
      while (v112 != v113)
      {
        if ((v111 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DDFF80](v113, v111);
          v115 = v113 + 1;
          if (__OFADD__(v113, 1))
          {
            goto LABEL_153;
          }
        }

        else
        {
          if (v113 >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_154;
          }

          v114 = *(v111 + 8 * v113 + 32);

          v115 = v113 + 1;
          if (__OFADD__(v113, 1))
          {
            goto LABEL_153;
          }
        }

        type metadata accessor for UsoEntity_common_UserEntity();
        dispatch thunk of UsoValue.getAsEntity()();
        static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

        ++v113;
        if (v187)
        {
          MEMORY[0x223DDF820](v116);
          if (*((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v117 = *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v179 = v188[0];
          v113 = v115;
        }
      }

      v32 = MEMORY[0x277D84F90];
      v188[0] = MEMORY[0x277D84F90];
      specialized Array.append<A>(contentsOf:)(v179, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
      v118 = v188[0];
      v78 = v183;
      v71 = v180;
      v79 = v181;
    }

    else
    {

      v118 = v32;
    }

    v74 = v185;
  }

  else
  {

    v118 = v32;
  }

  if (v118 >> 62)
  {
    v119 = __CocoaSet.count.getter();
  }

  else
  {
    v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  outlined destroy of MediaUserStateCenter?(&v189, &_sypSgMd, &_sypSgMR);
  if (!v119)
  {

    goto LABEL_127;
  }

  v134 = one-time initialization token for pommes;

  if (v134 != -1)
  {
    swift_once();
  }

  v135 = type metadata accessor for Logger();
  v136 = __swift_project_value_buffer(v135, static Logger.pommes);

  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.info.getter();

  v139 = os_log_type_enabled(v137, v138);
  v183 = v78;
  v186 = v136;
  if (v139)
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v189 = v141;
    *v140 = 136315138;

    v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v79, &v189);

    *(v140 + 4) = v142;
    _os_log_impl(&dword_2232BB000, v137, v138, "#OpenAppOnTV: Found matching task from NLv4 parse:\n%s", v140, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v141);
    MEMORY[0x223DE0F80](v141, -1, -1);
    MEMORY[0x223DE0F80](v140, -1, -1);
  }

  v143 = v158;
  v144 = (v158 + *(v154 + 32));
  v145 = *v144;
  v146 = v144[1];
  v147 = v155;
  PommesSearchRequest.pommesCandidateId.getter(v155);
  v148 = type metadata accessor for PommesCandidateId();
  (*(*(v148 - 8) + 56))(v147, 0, 1, v148);
  v149 = v156;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v156);
  v150 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v143, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v145, v146, v147, v149, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001ALL, 0x80000002234D24B0);
  (*(v157 + 8))(v149, v159);
  outlined destroy of MediaUserStateCenter?(v147, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (!v150)
  {
    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_2232BB000, v151, v152, "Unable to construct preflight response for “open app on TV” task.", v153, 2u);
      MEMORY[0x223DE0F80](v153, -1, -1);
    }

    swift_bridgeObjectRelease_n();

    return 1;
  }

  swift_bridgeObjectRelease_n();

  return v150;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

id KnowledgeFallbackInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t KnowledgeFallbackInstrumentationUtil.mockStream.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*KnowledgeFallbackInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = KnowledgeFallbackInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

void KnowledgeFallbackInstrumentationUtil.mockStream.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

uint64_t KnowledgeFallbackInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackOffered(requestId:pommesCandidateId:sessionRequestId:isPresented:offeredAgent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v13 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D59FA0]) init];
    if (v15)
    {
      v25 = v15;
      v16 = KnowledgeFallbackInstrumentationUtil.getPommesSessionId(sessionRequestId:)(a4, a5);
      if (v16)
      {
        v17 = v16;
        [v25 setIsKnowledgeFallbackConfirmationShown:a6 & 1];
        [v25 setPommesSessionId:v17];
        if ((a7 & 0x100000000) == 0)
        {
          [v25 setOfferedAgent:a7];
        }

        [v14 setPommesKnowledgeFallbackOffered:v25];
        v18 = [objc_opt_self() processInfo];
        v19 = NSProcessInfo.isRunningUnitTests.getter();

        if (v19)
        {
          v20 = (*(*v8 + 96))();
        }

        else
        {
          v20 = [objc_opt_self() sharedStream];
        }

        [v20 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_17;
      }

      v21 = v25;
    }

    else
    {
      v21 = v14;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.pommes);
  v25 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2232BB000, v25, v23, "Unable to log knowledge fallback offered", v24, 2u);
    MEMORY[0x223DE0F80](v24, -1, -1);
  }

LABEL_17:
}

void *specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

void *specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D59F68]) init];
  if (v14)
  {
    v15 = v14;
    a4(21, a1, a2);
    v16 = closure #1 in Emittable.eventWrapper(requestId:pommesCandidateId:)(v13, a1, a2, a3);
    [v15 setEventMetadata_];

    (*(v9 + 8))(v13, v8);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2232BB000, v18, v19, "Unable to initialize POMMESSchemaPOMMESClientEvent", v20, 2u);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

    return 0;
  }

  return v15;
}

void KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackAlwaysPromptShown(requestId:pommesCandidateId:sessionRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277D59FA8]) init];
    if (v11)
    {
      v21 = v11;
      v12 = KnowledgeFallbackInstrumentationUtil.getPommesSessionId(sessionRequestId:)(a4, a5);
      if (v12)
      {
        v13 = v12;
        [v21 setPommesSessionId:v12];
        [v10 setPommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown:v21];
        v14 = [objc_opt_self() processInfo];
        v15 = NSProcessInfo.isRunningUnitTests.getter();

        if (v15)
        {
          v16 = (*(*v6 + 96))();
        }

        else
        {
          v16 = [objc_opt_self() sharedStream];
        }

        [v16 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v17 = v21;
    }

    else
    {
      v17 = v10;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);
  v21 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2232BB000, v21, v19, "Unable to log knowledge fallback Turn Off Always Prompt confirmation shown", v20, 2u);
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

LABEL_15:
}

void KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackConfirmationOutcome(requestId:pommesCandidateId:sessionRequestId:outcome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Class *a7, SEL *a8, const char *a9)
{
  v12 = v9;
  v16 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
  if (v16)
  {
    v17 = v16;
    v18 = [objc_allocWithZone(*a7) init];
    if (v18)
    {
      v28 = v18;
      v19 = KnowledgeFallbackInstrumentationUtil.getPommesSessionId(sessionRequestId:)(a4, a5);
      if (v19)
      {
        v20 = v19;
        [v28 setConfirmationOutcome:a6];
        [v28 setPommesSessionId:v20];
        [v17 *a8];
        v21 = [objc_opt_self() processInfo];
        v22 = NSProcessInfo.isRunningUnitTests.getter();

        if (v22)
        {
          v23 = (*(*v12 + 96))();
        }

        else
        {
          v23 = [objc_opt_self() sharedStream];
        }

        [v23 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v24 = v28;
    }

    else
    {
      v24 = v17;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.pommes);
  v28 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2232BB000, v28, v26, a9, v27, 2u);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

LABEL_15:
}

id KnowledgeFallbackInstrumentationUtil.getPommesSessionId(sessionRequestId:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for UUID();
  v10 = a2;
  v11 = v9;
  v12 = *(v9 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9, v10);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v30 - v18;
  if (v20)
  {
    UUID.init(uuidString:)();
    if ((*(v12 + 48))(v8, 1, v11) != 1)
    {
      (*(v12 + 32))(v19, v8, v11);
      (*(**(v2 + 24) + 88))(21, v19);
      v26 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v28 = [v26 initWithNSUUID_];

      v29 = *(v12 + 8);
      v29(v16, v11);
      v29(v19, v11);
      return v28;
    }

    outlined destroy of UUID?(v8);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.pommes);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2232BB000, v22, v23, "Unable to get POMMES session ID", v24, 2u);
    MEMORY[0x223DE0F80](v24, -1, -1);
  }

  return 0;
}

uint64_t static KnowledgeFallbackInstrumentationUtil.genAIAgent(for:)(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeAssistantProvider.LLMProvider();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (MEMORY[0x277D0D678] && v8 == *MEMORY[0x277D0D678])
  {
    return 2;
  }

  (*(v3 + 8))(v7, v2);
  return 0;
}

uint64_t KnowledgeFallbackInstrumentationUtil.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t KnowledgeFallbackInstrumentationUtil.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v85 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v79 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v79 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v84 = &v79 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v79 - v29;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of UUID?(v13);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v86 = v35;
      *v34 = 136315138;
      if (a3)
      {
        v36 = a2;
      }

      else
      {
        v36 = 7104878;
      }

      if (a3)
      {
        v37 = a3;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v86);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2232BB000, v32, v33, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    return UUID.init()();
  }

  v82 = *(v15 + 32);
  v83 = v15 + 32;
  v82(v30, v13, v14);
  v40 = v84;
  (*(*v5[3] + 88))(a1, v30);
  if (AFDeviceSupportsSAE())
  {
    v41 = 43;
  }

  else
  {
    v41 = 1;
  }

  v42 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v40, v41);
  if (v42)
  {
    v43 = v42;
    v44 = [objc_opt_self() processInfo];
    v45 = NSProcessInfo.isRunningUnitTests.getter();

    if (v45)
    {
      v46 = ((*v5)[12])();
    }

    else
    {
      v46 = [objc_opt_self() sharedStream];
    }

    [v46 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    (*(v15 + 16))(v24, v40, v14);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v65 = 136315394;
      v66 = SISchemaComponentName.description.getter();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v86);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v81 = v30;
      v72 = *(v15 + 8);
      v72(v24, v14);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v86);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_2232BB000, v63, v64, "[SELF Logging] Logged request link event with component:%s, ID: %s", v65, 0x16u);
      v74 = v80;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v65, -1, -1);

      v72(v81, v14);
    }

    else
    {

      v75 = *(v15 + 8);
      v75(v24, v14);
      v75(v30, v14);
    }

    v77 = v84;
    v76 = v85;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.pommes);
    (*(v15 + 16))(v20, v40, v14);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v81 = v30;
      v51 = v50;
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315394;
      v53 = SISchemaComponentName.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v86);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = *(v15 + 8);
      v59(v20, v14);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v86);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_2232BB000, v48, v49, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v51, 0x16u);
      swift_arrayDestroy();
      v61 = v52;
      v40 = v84;
      MEMORY[0x223DE0F80](v61, -1, -1);
      MEMORY[0x223DE0F80](v51, -1, -1);

      v59(v81, v14);
    }

    else
    {

      v78 = *(v15 + 8);
      v78(v20, v14);
      v78(v30, v14);
    }

    v76 = v85;
    v77 = v40;
  }

  return (v82)(v76, v77, v14);
}

{
  v5 = v4;
  v85 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v79 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v79 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v84 = &v79 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v79 - v29;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of UUID?(v13);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v86 = v35;
      *v34 = 136315138;
      if (a3)
      {
        v36 = a2;
      }

      else
      {
        v36 = 7104878;
      }

      if (a3)
      {
        v37 = a3;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v86);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2232BB000, v32, v33, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    return UUID.init()();
  }

  v82 = *(v15 + 32);
  v83 = v15 + 32;
  v82(v30, v13, v14);
  v40 = v84;
  (*(*v5[3] + 88))(a1, v30);
  if (AFDeviceSupportsSAE())
  {
    v41 = 43;
  }

  else
  {
    v41 = 1;
  }

  v42 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v40, v41);
  if (v42)
  {
    v43 = v42;
    v44 = [objc_opt_self() processInfo];
    v45 = NSProcessInfo.isRunningUnitTests.getter();

    if (v45)
    {
      v46 = ((*v5)[12])();
    }

    else
    {
      v46 = [objc_opt_self() sharedStream];
    }

    [v46 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    (*(v15 + 16))(v24, v40, v14);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v65 = 136315394;
      v66 = SISchemaComponentName.description.getter();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v86);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v81 = v30;
      v72 = *(v15 + 8);
      v72(v24, v14);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v86);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_2232BB000, v63, v64, "[SELF Logging] Logged request link event with component:%s, ID: %s", v65, 0x16u);
      v74 = v80;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v65, -1, -1);

      v72(v81, v14);
    }

    else
    {

      v75 = *(v15 + 8);
      v75(v24, v14);
      v75(v30, v14);
    }

    v77 = v84;
    v76 = v85;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.pommes);
    (*(v15 + 16))(v20, v40, v14);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v81 = v30;
      v51 = v50;
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315394;
      v53 = SISchemaComponentName.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v86);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = *(v15 + 8);
      v59(v20, v14);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v86);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_2232BB000, v48, v49, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v51, 0x16u);
      swift_arrayDestroy();
      v61 = v52;
      v40 = v84;
      MEMORY[0x223DE0F80](v61, -1, -1);
      MEMORY[0x223DE0F80](v51, -1, -1);

      v59(v81, v14);
    }

    else
    {

      v78 = *(v15 + 8);
      v78(v20, v14);
      v78(v30, v14);
    }

    v76 = v85;
    v77 = v40;
  }

  return (v82)(v76, v77, v14);
}

{
  v5 = v4;
  v85 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v79 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v79 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v84 = &v79 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v79 - v29;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of UUID?(v13);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v86 = v35;
      *v34 = 136315138;
      if (a3)
      {
        v36 = a2;
      }

      else
      {
        v36 = 7104878;
      }

      if (a3)
      {
        v37 = a3;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v86);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2232BB000, v32, v33, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    return UUID.init()();
  }

  v82 = *(v15 + 32);
  v83 = v15 + 32;
  v82(v30, v13, v14);
  v40 = v84;
  (*(*v5[4] + 88))(a1, v30);
  if (AFDeviceSupportsSAE())
  {
    v41 = 43;
  }

  else
  {
    v41 = 1;
  }

  v42 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v40, v41);
  if (v42)
  {
    v43 = v42;
    v44 = [objc_opt_self() processInfo];
    v45 = NSProcessInfo.isRunningUnitTests.getter();

    if (v45)
    {
      v46 = ((*v5)[16])();
    }

    else
    {
      v46 = [objc_opt_self() sharedStream];
    }

    [v46 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    (*(v15 + 16))(v24, v40, v14);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v65 = 136315394;
      v66 = SISchemaComponentName.description.getter();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v86);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v81 = v30;
      v72 = *(v15 + 8);
      v72(v24, v14);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v86);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_2232BB000, v63, v64, "[SELF Logging] Logged request link event with component:%s, ID: %s", v65, 0x16u);
      v74 = v80;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v65, -1, -1);

      v72(v81, v14);
    }

    else
    {

      v75 = *(v15 + 8);
      v75(v24, v14);
      v75(v30, v14);
    }

    v77 = v84;
    v76 = v85;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.pommes);
    (*(v15 + 16))(v20, v40, v14);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v81 = v30;
      v51 = v50;
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315394;
      v53 = SISchemaComponentName.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v86);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = *(v15 + 8);
      v59(v20, v14);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v86);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_2232BB000, v48, v49, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v51, 0x16u);
      swift_arrayDestroy();
      v61 = v52;
      v40 = v84;
      MEMORY[0x223DE0F80](v61, -1, -1);
      MEMORY[0x223DE0F80](v51, -1, -1);

      v59(v81, v14);
    }

    else
    {

      v78 = *(v15 + 8);
      v78(v20, v14);
      v78(v30, v14);
    }

    v76 = v85;
    v77 = v40;
  }

  return (v82)(v76, v77, v14);
}

{
  v5 = v4;
  v85 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v79 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v79 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v84 = &v79 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v79 - v29;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of UUID?(v13);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v86 = v35;
      *v34 = 136315138;
      if (a3)
      {
        v36 = a2;
      }

      else
      {
        v36 = 7104878;
      }

      if (a3)
      {
        v37 = a3;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v86);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2232BB000, v32, v33, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    return UUID.init()();
  }

  v82 = *(v15 + 32);
  v83 = v15 + 32;
  v82(v30, v13, v14);
  v40 = v84;
  (*(*v5[3] + 88))(a1, v30);
  if (AFDeviceSupportsSAE())
  {
    v41 = 43;
  }

  else
  {
    v41 = 1;
  }

  v42 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v40, v41);
  if (v42)
  {
    v43 = v42;
    v44 = [objc_opt_self() processInfo];
    v45 = NSProcessInfo.isRunningUnitTests.getter();

    if (v45)
    {
      v46 = ((*v5)[12])();
    }

    else
    {
      v46 = [objc_opt_self() sharedStream];
    }

    [v46 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    (*(v15 + 16))(v24, v40, v14);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v65 = 136315394;
      v66 = SISchemaComponentName.description.getter();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v86);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v81 = v30;
      v72 = *(v15 + 8);
      v72(v24, v14);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v86);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_2232BB000, v63, v64, "[SELF Logging] Logged request link event with component:%s, ID: %s", v65, 0x16u);
      v74 = v80;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v65, -1, -1);

      v72(v81, v14);
    }

    else
    {

      v75 = *(v15 + 8);
      v75(v24, v14);
      v75(v30, v14);
    }

    v77 = v84;
    v76 = v85;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.pommes);
    (*(v15 + 16))(v20, v40, v14);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v81 = v30;
      v51 = v50;
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315394;
      v53 = SISchemaComponentName.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v86);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = *(v15 + 8);
      v59(v20, v14);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v86);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_2232BB000, v48, v49, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v51, 0x16u);
      swift_arrayDestroy();
      v61 = v52;
      v40 = v84;
      MEMORY[0x223DE0F80](v61, -1, -1);
      MEMORY[0x223DE0F80](v51, -1, -1);

      v59(v81, v14);
    }

    else
    {

      v78 = *(v15 + 8);
      v78(v20, v14);
      v78(v30, v14);
    }

    v76 = v85;
    v77 = v40;
  }

  return (v82)(v76, v77, v14);
}

{
  v5 = v4;
  v85 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v79 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v79 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v84 = &v79 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v79 - v29;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of UUID?(v13);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v86 = v35;
      *v34 = 136315138;
      if (a3)
      {
        v36 = a2;
      }

      else
      {
        v36 = 7104878;
      }

      if (a3)
      {
        v37 = a3;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v86);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2232BB000, v32, v33, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    return UUID.init()();
  }

  v82 = *(v15 + 32);
  v83 = v15 + 32;
  v82(v30, v13, v14);
  v40 = v84;
  (*(*v5[3] + 88))(a1, v30);
  if (AFDeviceSupportsSAE())
  {
    v41 = 43;
  }

  else
  {
    v41 = 1;
  }

  v42 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v40, v41);
  if (v42)
  {
    v43 = v42;
    v44 = [objc_opt_self() processInfo];
    v45 = NSProcessInfo.isRunningUnitTests.getter();

    if (v45)
    {
      v46 = ((*v5)[12])();
    }

    else
    {
      v46 = [objc_opt_self() sharedStream];
    }

    [v46 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    (*(v15 + 16))(v24, v40, v14);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v65 = 136315394;
      v66 = SISchemaComponentName.description.getter();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v86);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v81 = v30;
      v72 = *(v15 + 8);
      v72(v24, v14);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v86);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_2232BB000, v63, v64, "[SELF Logging] Logged request link event with component:%s, ID: %s", v65, 0x16u);
      v74 = v80;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v65, -1, -1);

      v72(v81, v14);
    }

    else
    {

      v75 = *(v15 + 8);
      v75(v24, v14);
      v75(v30, v14);
    }

    v77 = v84;
    v76 = v85;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.pommes);
    (*(v15 + 16))(v20, v40, v14);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v81 = v30;
      v51 = v50;
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315394;
      v53 = SISchemaComponentName.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v86);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = *(v15 + 8);
      v59(v20, v14);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v86);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_2232BB000, v48, v49, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v51, 0x16u);
      swift_arrayDestroy();
      v61 = v52;
      v40 = v84;
      MEMORY[0x223DE0F80](v61, -1, -1);
      MEMORY[0x223DE0F80](v51, -1, -1);

      v59(v81, v14);
    }

    else
    {

      v78 = *(v15 + 8);
      v78(v20, v14);
      v78(v30, v14);
    }

    v76 = v85;
    v77 = v40;
  }

  return (v82)(v76, v77, v14);
}

{
  v5 = v4;
  v85 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v79 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v79 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v84 = &v79 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v79 - v29;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of UUID?(v13);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v86 = v35;
      *v34 = 136315138;
      if (a3)
      {
        v36 = a2;
      }

      else
      {
        v36 = 7104878;
      }

      if (a3)
      {
        v37 = a3;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v86);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2232BB000, v32, v33, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    return UUID.init()();
  }

  v82 = *(v15 + 32);
  v83 = v15 + 32;
  v82(v30, v13, v14);
  v40 = v84;
  (*(*v5[3] + 88))(a1, v30);
  if (AFDeviceSupportsSAE())
  {
    v41 = 43;
  }

  else
  {
    v41 = 1;
  }

  v42 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v40, v41);
  if (v42)
  {
    v43 = v42;
    v44 = [objc_opt_self() processInfo];
    v45 = NSProcessInfo.isRunningUnitTests.getter();

    if (v45)
    {
      v46 = ((*v5)[12])();
    }

    else
    {
      v46 = [objc_opt_self() sharedStream];
    }

    [v46 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    (*(v15 + 16))(v24, v40, v14);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v65 = 136315394;
      v66 = SISchemaComponentName.description.getter();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v86);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v81 = v30;
      v72 = *(v15 + 8);
      v72(v24, v14);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v86);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_2232BB000, v63, v64, "[SELF Logging] Logged request link event with component:%s, ID: %s", v65, 0x16u);
      v74 = v80;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v65, -1, -1);

      v72(v81, v14);
    }

    else
    {

      v75 = *(v15 + 8);
      v75(v24, v14);
      v75(v30, v14);
    }

    v77 = v84;
    v76 = v85;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.pommes);
    (*(v15 + 16))(v20, v40, v14);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v81 = v30;
      v51 = v50;
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315394;
      v53 = SISchemaComponentName.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v86);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = *(v15 + 8);
      v59(v20, v14);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v86);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_2232BB000, v48, v49, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v51, 0x16u);
      swift_arrayDestroy();
      v61 = v52;
      v40 = v84;
      MEMORY[0x223DE0F80](v61, -1, -1);
      MEMORY[0x223DE0F80](v51, -1, -1);

      v59(v81, v14);
    }

    else
    {

      v78 = *(v15 + 8);
      v78(v20, v14);
      v78(v30, v14);
    }

    v76 = v85;
    v77 = v40;
  }

  return (v82)(v76, v77, v14);
}

{
  v5 = v4;
  v85 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v79 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v79 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v84 = &v79 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v79 - v29;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of UUID?(v13);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v86 = v35;
      *v34 = 136315138;
      if (a3)
      {
        v36 = a2;
      }

      else
      {
        v36 = 7104878;
      }

      if (a3)
      {
        v37 = a3;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v86);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2232BB000, v32, v33, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    return UUID.init()();
  }

  v82 = *(v15 + 32);
  v83 = v15 + 32;
  v82(v30, v13, v14);
  v40 = v84;
  (*(*v5[3] + 88))(a1, v30);
  if (AFDeviceSupportsSAE())
  {
    v41 = 43;
  }

  else
  {
    v41 = 1;
  }

  v42 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v40, v41);
  if (v42)
  {
    v43 = v42;
    v44 = [objc_opt_self() processInfo];
    v45 = NSProcessInfo.isRunningUnitTests.getter();

    if (v45)
    {
      v46 = ((*v5)[12])();
    }

    else
    {
      v46 = [objc_opt_self() sharedStream];
    }

    [v46 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    (*(v15 + 16))(v24, v40, v14);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v65 = 136315394;
      v66 = SISchemaComponentName.description.getter();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v86);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v81 = v30;
      v72 = *(v15 + 8);
      v72(v24, v14);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v86);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_2232BB000, v63, v64, "[SELF Logging] Logged request link event with component:%s, ID: %s", v65, 0x16u);
      v74 = v80;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v65, -1, -1);

      v72(v81, v14);
    }

    else
    {

      v75 = *(v15 + 8);
      v75(v24, v14);
      v75(v30, v14);
    }

    v77 = v84;
    v76 = v85;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.pommes);
    (*(v15 + 16))(v20, v40, v14);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v81 = v30;
      v51 = v50;
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315394;
      v53 = SISchemaComponentName.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v86);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = *(v15 + 8);
      v59(v20, v14);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v86);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_2232BB000, v48, v49, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v51, 0x16u);
      swift_arrayDestroy();
      v61 = v52;
      v40 = v84;
      MEMORY[0x223DE0F80](v61, -1, -1);
      MEMORY[0x223DE0F80](v51, -1, -1);

      v59(v81, v14);
    }

    else
    {

      v78 = *(v15 + 8);
      v78(v20, v14);
      v78(v30, v14);
    }

    v76 = v85;
    v77 = v40;
  }

  return (v82)(v76, v77, v14);
}

{
  v5 = v4;
  v85 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v79 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v79 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v84 = &v79 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v79 - v29;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of UUID?(v13);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v86 = v35;
      *v34 = 136315138;
      if (a3)
      {
        v36 = a2;
      }

      else
      {
        v36 = 7104878;
      }

      if (a3)
      {
        v37 = a3;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v86);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2232BB000, v32, v33, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    return UUID.init()();
  }

  v82 = *(v15 + 32);
  v83 = v15 + 32;
  v82(v30, v13, v14);
  v40 = v84;
  (*(*v5[3] + 88))(a1, v30);
  if (AFDeviceSupportsSAE())
  {
    v41 = 43;
  }

  else
  {
    v41 = 1;
  }

  v42 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v40, v41);
  if (v42)
  {
    v43 = v42;
    v44 = [objc_opt_self() processInfo];
    v45 = NSProcessInfo.isRunningUnitTests.getter();

    if (v45)
    {
      v46 = ((*v5)[12])();
    }

    else
    {
      v46 = [objc_opt_self() sharedStream];
    }

    [v46 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    (*(v15 + 16))(v24, v40, v14);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v65 = 136315394;
      v66 = SISchemaComponentName.description.getter();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v86);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v81 = v30;
      v72 = *(v15 + 8);
      v72(v24, v14);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v86);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_2232BB000, v63, v64, "[SELF Logging] Logged request link event with component:%s, ID: %s", v65, 0x16u);
      v74 = v80;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v65, -1, -1);

      v72(v81, v14);
    }

    else
    {

      v75 = *(v15 + 8);
      v75(v24, v14);
      v75(v30, v14);
    }

    v77 = v84;
    v76 = v85;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.pommes);
    (*(v15 + 16))(v20, v40, v14);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v81 = v30;
      v51 = v50;
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315394;
      v53 = SISchemaComponentName.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v86);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = *(v15 + 8);
      v59(v20, v14);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v86);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_2232BB000, v48, v49, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v51, 0x16u);
      swift_arrayDestroy();
      v61 = v52;
      v40 = v84;
      MEMORY[0x223DE0F80](v61, -1, -1);
      MEMORY[0x223DE0F80](v51, -1, -1);

      v59(v81, v14);
    }

    else
    {

      v78 = *(v15 + 8);
      v78(v20, v14);
      v78(v30, v14);
    }

    v76 = v85;
    v77 = v40;
  }

  return (v82)(v76, v77, v14);
}