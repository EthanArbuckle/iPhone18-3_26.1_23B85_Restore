void specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      return;
    }

LABEL_17:
    v12 = [v11 normalizedValue];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v22 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8), swift_dynamicCast(), (v11 = v28) == 0))
    {
LABEL_26:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      return;
    }

LABEL_17:
    v12 = [v11 value];
    if (!v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = MEMORY[0x231934530](v13);
    }

    v14 = [objc_allocWithZone(MEMORY[0x277D18A48]) initWithPrefixedURI_];

    if (v14)
    {
      v15 = [v14 unprefixedURI];

      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v19 = *(v22 + 2);
      v18 = *(v22 + 3);
      if (v19 >= v18 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v22);
      }

      *(v22 + 2) = v19 + 1;
      v20 = &v22[16 * v19];
      *(v20 + 4) = v21;
      *(v20 + 5) = v17;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, 0x277D186C0);
    lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, 0x277D186C0), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      return;
    }

LABEL_17:
    v12 = [v11 loginID];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned _SWCollaborationMetadata?, @unowned NSError?) -> () with result type (URL, _SWCollaborationMetadata)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So24_SWCollaborationMetadataCtMd, &_s10Foundation3URLV_So24_SWCollaborationMetadataCtMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = swift_allocError();
    *v18 = a4;
    v19 = a4;
    v20 = v16;
    v21 = v17;
  }

  else
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = (*(v8 + 32))(v15, v11, v7);
    if (a3)
    {
      *&v15[*(v12 + 48)] = a3;
      v22 = *(*(v16 + 64) + 40);
      v23 = a3;
      outlined init with take of (URL, _SWCollaborationMetadata)(v15, v22);
      return swift_continuation_throwingResume();
    }

    __break(1u);
  }

  return MEMORY[0x282200958](v20, v21);
}

uint64_t ThirdPartyCollaborationInitiationRequest.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC11SocialLayer40ThirdPartyCollaborationInitiationRequest_url);
  return v0;
}

uint64_t ThirdPartyCollaborationInitiationRequest.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC11SocialLayer40ThirdPartyCollaborationInitiationRequest_url);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t protocol witness for CollaborationInitiationRequest.initiateCollaboration() in conformance ThirdPartyCollaborationInitiationRequest(uint64_t a1)
{
  v4 = *(**v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v8(a1);
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, void *a2)
{
  v30 = a1;
  v4 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v28 = (&v28 - v10);
  v29 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v13 = *a2;
  NSObject.hash(into:)();
  v31 = v4;
  v14 = *(v4 + 20);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v32 = a2;
  dispatch thunk of Hashable.hash(into:)();
  v15 = Hasher._finalize()();
  v16 = -1 << *(v11 + 32);
  v17 = v15 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v19 = *(v5 + 72);
    while (1)
    {
      outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v11 + 48) + v19 * v17, v9);
      v20 = *v9;
      if (static NSObject.== infix(_:_:)())
      {
        v21 = v9 + *(v31 + 20);
        if (static URL.== infix(_:_:)())
        {
          break;
        }
      }

      outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v9);
      v17 = (v17 + 1) & v18;
      if (((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v9);
    outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v32);
    outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v11 + 48) + v19 * v17, v30);
    return 0;
  }

  else
  {
LABEL_7:
    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v32;
    v27 = v28;
    outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(v32, v28);
    v33 = *v23;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v27, v17, isUniquelyReferenced_nonNull_native);
    *v23 = v33;
    outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v26, v30);
    return 1;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t *a1, unint64_t a2, char a3)
{
  v29 = a1;
  v6 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v27 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_14;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v14 = *v29;
  NSObject.hash(into:)();
  v15 = *(v6 + 20);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  dispatch thunk of Hashable.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v12 + 32);
  a2 = v16 & ~v17;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v19 = *(v28 + 72);
    while (1)
    {
      outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v12 + 48) + v19 * a2, v9);
      v20 = *v9;
      if (static NSObject.== infix(_:_:)())
      {
        v21 = v9 + *(v6 + 20);
        if (static URL.== infix(_:_:)())
        {
          break;
        }
      }

      outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v9);
      a2 = (a2 + 1) & v18;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v9);
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_14:
  v22 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v29, *(v22 + 48) + *(v28 + 72) * a2);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMd, &_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v7 + 48) + v22, v6);
        result = outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMd, &_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v38 + 72);
      outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(v23 + v24 * (v20 | (v12 << 6)), v7);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      v26 = *v7;
      NSObject.hash(into:)();
      v27 = *(v39 + 20);
      type metadata accessor for URL();
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v36;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2319347D0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

uint64_t outlined init with take of (URL, _SWCollaborationMetadata)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So24_SWCollaborationMetadataCtMd, &_s10Foundation3URLV_So24_SWCollaborationMetadataCtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TUHandle and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUHandle and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUHandle and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUHandle and conformance NSObject);
  }

  return result;
}

uint64_t type metadata accessor for ThirdPartyCollaborationInitiationRequest.Response(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ThirdPartyCollaborationInitiationRequest()
{
  type metadata accessor for URL?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ThirdPartyCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v4 = *(*v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v8(a1);
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata completion function for ThirdPartyCollaborationInitiationRequest.Response()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Set<TUHandle>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for _SWCollaborationMetadata, 0x277CDC6C0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Set<TUHandle>()
{
  if (!lazy cache variable for type metadata for Set<TUHandle>)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<TUHandle>);
    }
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientV_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CloudKitCollaborationInitiationRequest.Response.Recipient and conformance CloudKitCollaborationInitiationRequest.Response.Recipient, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
  result = MEMORY[0x2319347D0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(v13, v7);
      specialized Set._Variant.insert(_:)(v9, v7);
      outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v9);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1)
{
  v2 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMd, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CollaborationInitiationResponsePayload();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(a1, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMd, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);

    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v8, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMd, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMR);
  }

  else
  {
    outlined init with take of CollaborationInitiationResponsePayload(a1, v12, type metadata accessor for CollaborationInitiationResponsePayload);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
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
      v19 = *v4;
      if (!v15)
      {
        specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMd, &_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMR);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = specialized _NativeDictionary._delete(at:)(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    result = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x277D84F90];
  v23 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(result + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_24:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      return v9;
    }

    while (1)
    {
      v15 = [v14 normalizedValue];
      if (!v15)
      {
        v15 = [v14 value];
      }

      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v9);
      }

      *(v9 + 2) = v21 + 1;
      v22 = &v9[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v4 = v12;
      v5 = v13;
      result = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
        swift_dynamicCast();
        v14 = v29;
        v12 = v4;
        v13 = v5;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for cloudKitCollaborationInitiation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.cloudKitCollaborationInitiation);
  __swift_project_value_buffer(v0, static Log.cloudKitCollaborationInitiation);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.cloudKitCollaborationInitiation.unsafeMutableAddressor()
{
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Log.cloudKitCollaborationInitiation);
}

uint64_t static Log.cloudKitCollaborationInitiation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Log.cloudKitCollaborationInitiation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t CloudKitCollaborationInitiationRequest.Response.Recipient.shareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient()
{
  result = type metadata singleton initialization cache for CloudKitCollaborationInitiationRequest.Response.Recipient;
  if (!type metadata singleton initialization cache for CloudKitCollaborationInitiationRequest.Response.Recipient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CloudKitCollaborationInitiationRequest.Response.Recipient.shareURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static CloudKitCollaborationInitiationRequest.Response.Recipient.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v4 = *a1;
  v5 = *a2;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient() + 20);

  return static URL.== infix(_:_:)();
}

uint64_t CloudKitCollaborationInitiationRequest.Response.Recipient.hash(into:)()
{
  v1 = *v0;
  NSObject.hash(into:)();
  LODWORD(v1) = *(type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient() + 20);
  type metadata accessor for URL();
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int CloudKitCollaborationInitiationRequest.Response.Recipient.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  NSObject.hash(into:)();
  LODWORD(v1) = *(type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient() + 20);
  type metadata accessor for URL();
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CloudKitCollaborationInitiationRequest.Response.Recipient.init(handle:shareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient() + 20);
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = *v1;
  NSObject.hash(into:)();
  v4 = *(a1 + 20);
  type metadata accessor for URL();
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  NSObject.hash(into:)();
  v5 = *(a2 + 20);
  type metadata accessor for URL();
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  NSObject.hash(into:)();
  v5 = *(a2 + 20);
  type metadata accessor for URL();
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v6 = *a1;
  v7 = *a2;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return static URL.== infix(_:_:)();
}

uint64_t CloudKitCollaborationInitiationRequest.Response.recipientPayloads.getter()
{
  v1 = type metadata accessor for CollaborationInitiationResponsePayload();
  v42 = *(v1 - 8);
  v2 = *(v42 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v42 - v6;
  v7 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + 8);
  v14 = *(v11 + 56);
  v13 = v11 + 56;
  v12 = v14;
  v15 = 1 << *(*(v0 + 8) + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v46 = *(v0 + 8);

  v19 = 0;
  v20 = MEMORY[0x277D84F98];
  while (v17)
  {
LABEL_11:
    outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v46 + 48) + *(v43 + 72) * (__clz(__rbit64(v17)) | (v19 << 6)), v10, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
    v22 = *v10;
    v23 = *(v44 + 20);
    v24 = type metadata accessor for URL();
    v25 = v10 + v23;
    v26 = v45;
    (*(*(v24 - 8) + 16))(v45, v25, v24);
    v27 = v5;
    outlined init with take of CollaborationInitiationResponsePayload(v26, v5, type metadata accessor for CollaborationInitiationResponsePayload);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v20;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
    v31 = v20[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      goto LABEL_23;
    }

    v35 = v30;
    if (v20[3] < v34)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v20 = v47;
      if (v35)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v40 = v29;
    specialized _NativeDictionary.copy()();
    v29 = v40;
    v20 = v47;
    if (v35)
    {
LABEL_4:
      v5 = v27;
      outlined assign with take of CollaborationInitiationResponsePayload(v27, v20[7] + *(v42 + 72) * v29);
      goto LABEL_5;
    }

LABEL_17:
    v20[(v29 >> 6) + 8] |= 1 << v29;
    *(v20[6] + 8 * v29) = v22;
    v5 = v27;
    outlined init with take of CollaborationInitiationResponsePayload(v27, v20[7] + *(v42 + 72) * v29, type metadata accessor for CollaborationInitiationResponsePayload);
    v37 = v20[2];
    v33 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v33)
    {
      goto LABEL_24;
    }

    v20[2] = v38;
    v39 = v22;
LABEL_5:
    v17 &= v17 - 1;
    outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v10);
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      return v20;
    }

    v17 = *(v13 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t CloudKitCollaborationInitiationRequest.Response.invitationTokens.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = [v3 containerOptions];
  v5 = [v4 isServiceManatee];

  if (!v5)
  {
    if (one-time initialization token for cloudKitCollaborationInitiation != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Log.cloudKitCollaborationInitiation);
    v40 = v2;

    v41 = v3;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_231772000, v42, v43, "Not returning any invitationTokens since the container isn't a Manatee service. %@", v44, 0xCu);
      outlined destroy of (CFStringRef, [CFStringRef? : Any])(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2319361B0](v45, -1, -1);
      MEMORY[0x2319361B0](v44, -1, -1);
    }

    return MEMORY[0x277D84F98];
  }

  v6 = [v2 participants];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_39:
    v10 = MEMORY[0x277D84F98];
LABEL_40:

    return v10;
  }

LABEL_38:
  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_39;
  }

LABEL_4:
  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  while (2)
  {
    v11 = v9;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x231934AB0](v11, v7);
      }

      else
      {
        if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v12 = *(v7 + 8 * v11 + 32);
      }

      v13 = v12;
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v14 = [v12 userIdentity];
      v15 = [v14 lookupInfo];

      if (v15)
      {
        v16 = [v15 phoneNumber];

        if (v16)
        {
          break;
        }
      }

      v17 = [v13 userIdentity];
      v18 = [v17 lookupInfo];

      if (v18)
      {
        v16 = [v18 emailAddress];

        if (v16)
        {
          break;
        }
      }

LABEL_7:
      ++v11;
      if (v9 == v8)
      {
        goto LABEL_40;
      }
    }

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [v13 invitationToken];
    if (!v22)
    {

      goto LABEL_7;
    }

    v48 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v21);
    v26 = v10[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      __break(1u);
      goto LABEL_43;
    }

    v30 = v25;
    if (v10[3] >= v29)
    {
      v32 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = v24;
        specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo36CKDeviceToDeviceShareInvitationTokenCGMd, &_ss18_DictionaryStorageCySSSo36CKDeviceToDeviceShareInvitationTokenCGMR);
        v24 = v38;
LABEL_22:
        v32 = v48;
      }

      if (v30)
      {
        v33 = v10[7];
        v34 = *(v33 + 8 * v24);
        *(v33 + 8 * v24) = v32;

        v13 = v34;
        goto LABEL_28;
      }

      v10[(v24 >> 6) + 8] |= 1 << v24;
      v35 = (v10[6] + 16 * v24);
      *v35 = v19;
      v35[1] = v21;
      *(v10[7] + 8 * v24) = v32;
      v36 = v10[2];
      v28 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (!v28)
      {
        v10[2] = v37;
LABEL_28:

        if (v9 != v8)
        {
          continue;
        }

        goto LABEL_40;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    break;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySSSo36CKDeviceToDeviceShareInvitationTokenCGMd, &_ss18_DictionaryStorageCySSSo36CKDeviceToDeviceShareInvitationTokenCGMR);
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v21);
  if ((v30 & 1) == (v31 & 1))
  {
    goto LABEL_22;
  }

LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t CloudKitCollaborationInitiationRequest.Response.init(share:recipients:containerSetupInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void *CloudKitCollaborationInitiationRequest.__allocating_init(recipients:shareOptions:share:containerSetupInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *CloudKitCollaborationInitiationRequest.init(recipients:shareOptions:share:containerSetupInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t CloudKitCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  v2[11] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudKitCollaborationInitiationRequest.initiateCollaboration(), 0, 0);
}

uint64_t CloudKitCollaborationInitiationRequest.initiateCollaboration()()
{
  v38 = v0;
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v2, static Log.cloudKitCollaborationInitiation);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v7 = 136315650;
    v10 = v6[2];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v11 = Set.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v37);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v6[4];
    *(v7 + 14) = v14;
    *v8 = v14;
    *(v7 + 22) = 2080;
    v15 = v6[3];
    v16 = v14;
    v17 = [v15 optionsGroups];

    if (!v17)
    {
      __break(1u);
      return MEMORY[0x282200430](v18, v19, v20, v21, v22);
    }

    v23 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for _SWCollaborationOptionsGroup, 0x277CDC6D0);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = MEMORY[0x231934700](v24, v23);
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v37);

    *(v7 + 24) = v28;
    _os_log_impl(&dword_231772000, v3, v4, "Received request to initiate collaboration with: %s, share: %@, optionsGroup: %s", v7, 0x20u);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v9, -1, -1);
    MEMORY[0x2319361B0](v7, -1, -1);
  }

  else
  {
  }

  v29 = v0[13];
  v30 = v0[10];
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = 3;
  *(v32 + 40) = &async function pointer to partial apply for closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  *(v32 + 48) = v30;
  *(v32 + 56) = partial apply for closure #1 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  *(v32 + 64) = v30;
  *(v32 + 72) = xmmword_23183DF40;
  swift_retain_n();
  v33 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10Foundation3URLV_So7CKShareCt_Tt2g5(0, 0, v29, &async function pointer to partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), v32);
  v0[19] = v33;
  v34 = *(MEMORY[0x277D857C8] + 4);
  v35 = swift_task_alloc();
  v0[20] = v35;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[21] = v21;
  *v35 = v0;
  v35[1] = CloudKitCollaborationInitiationRequest.initiateCollaboration();
  v20 = v0[11];
  v18 = v0[12];
  v22 = MEMORY[0x277D84950];
  v19 = v33;

  return MEMORY[0x282200430](v18, v19, v20, v21, v22);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 152);

  if (v0)
  {
    v6 = CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v6 = CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v42 = v0;
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = *(v0[12] + *(v0[11] + 48));
  (*(v3 + 32))(v1);
  (*(v3 + 16))(v2, v1, v4);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v13 = 136315394;
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v40 = *(v11 + 8);
    v40(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v41);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v14;
    *v38 = v14;
    v20 = v14;
    _os_log_impl(&dword_231772000, v7, v8, "Successfully initiated collaboration, url: %s, updatedShare: %@", v13, 0x16u);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x2319361B0](v39, -1, -1);
    MEMORY[0x2319361B0](v13, -1, -1);
  }

  else
  {

    v40 = *(v11 + 8);
    v40(v10, v12);
  }

  v21 = v0[22];
  v22 = v0[17];
  v23 = v0[14];
  v25 = v0[9];
  v24 = v0[10];
  v26 = *(v24 + 16);
  v27 = swift_task_alloc();
  *(v27 + 16) = v22;
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVs5NeverOTg5(partial apply for closure #3 in CloudKitCollaborationInitiationRequest.initiateCollaboration(), v27, v26);

  v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientV_SayAJGTt0g5Tf4g_n(v28);

  v30 = *(v24 + 40);
  *v25 = v6;
  v25[1] = v29;
  v25[2] = v30;
  v31 = v30;
  v40(v22, v23);
  v33 = v0[16];
  v32 = v0[17];
  v35 = v0[12];
  v34 = v0[13];

  v36 = v0[1];

  return v36();
}

{
  v44 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[10];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[21];
    v7 = v0[22];
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43 = v12;
    *v10 = 136315394;
    v0[8] = v7;
    v13 = v7;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v43);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    v17 = *(v9 + 32);
    *(v10 + 14) = v17;
    *v11 = v17;
    v18 = v17;
    _os_log_impl(&dword_231772000, v5, v6, "Failed to initiate collaboration error: %s on share: %@", v10, 0x16u);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2319361B0](v12, -1, -1);
    MEMORY[0x2319361B0](v10, -1, -1);
  }

  v19 = v0[22];
  swift_getErrorValue();
  v20 = v0[2];
  v21 = Error.underlyingCKError.getter(v0[3], v0[4]);
  if (v21)
  {
    v22 = v0[21];
    v0[6] = v21;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v23 = v0[7];
      v0[23] = v23;
      if ([v23 code] == 32)
      {
        v24 = v0[18];
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_231772000, v25, v26, "Caught collaborationError for managedAccount sharing. Generating OTL links for participants.", v27, 2u);
          MEMORY[0x2319361B0](v27, -1, -1);
        }

        v28 = v0[10];

        v29 = *(*v28 + 152);
        v42 = (v29 + *v29);
        v30 = v29[1];
        v31 = swift_task_alloc();
        v0[24] = v31;
        *v31 = v0;
        v31[1] = CloudKitCollaborationInitiationRequest.initiateCollaboration();
        v32 = v0[9];
        v33 = v0[10];

        return v42(v32);
      }
    }
  }

  v35 = v0[22];
  swift_willThrow();
  v36 = v0[22];
  v38 = v0[16];
  v37 = v0[17];
  v40 = v0[12];
  v39 = v0[13];

  v41 = v0[1];

  return v41();
}

{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v3 = CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 176);

  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = *(v0 + 176);

  v2 = *(v0 + 200);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in CloudKitCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1, uint64_t a2)
{
  swift_getErrorValue();
  result = Error.underlyingCKError.getter(v24, v25);
  if (!result)
  {
    return result;
  }

  v22[0] = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v23;
  if ([v23 code] != 14)
  {

    return 0;
  }

  v5 = [v23 userInfo];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *MEMORY[0x277CBBFE8];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v6 + 16))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
    v12 = v11;

    if (v12)
    {
      outlined init with copy of Any(*(v6 + 56) + 32 * v10, v22);

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x277CBC680);
      if (swift_dynamicCast())
      {
        v13 = v23;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_13:
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.cloudKitCollaborationInitiation);
  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v13;
    v20 = v15;
    _os_log_impl(&dword_231772000, v16, v17, "Received updated server record: %@", v18, 0xCu);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v19, -1, -1);
    MEMORY[0x2319361B0](v18, -1, -1);
  }

  v21 = *(a2 + 32);
  if (!v13)
  {
    v15 = v21;
  }

  *(a2 + 32) = v15;

  return 1;
}

id Error.underlyingCKError.getter(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v64 - v9;
  v11 = *(v4 + 16);
  v65 = v12;
  v11(&v64 - v9, v12, a1);
  v13 = _getErrorEmbeddedNSError<A>(_:)();
  v66 = a2;
  if (v13)
  {
    v14 = v13;
    (*(v4 + 8))(v10, a1);
  }

  else
  {
    v14 = swift_allocError();
    (*(v4 + 32))(v15, v10, a1);
  }

  v16 = _convertErrorToNSError(_:)();

  v17 = [v16 domain];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = *MEMORY[0x277CBBF50];
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v22)
  {

LABEL_16:
    v11(v8, v65, a1);
    v40 = _getErrorEmbeddedNSError<A>(_:)();
    if (v40)
    {
      v34 = v40;
      (*(v4 + 8))(v8, a1);
    }

    else
    {
      v34 = swift_allocError();
      (*(v4 + 32))(v41, v8, a1);
    }

    goto LABEL_44;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_16;
  }

  v25 = [v16 userInfo];
  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = *MEMORY[0x277CCA7E8];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v26 + 16))
  {

    v33 = &selRef_conversationIdentifier;
    goto LABEL_21;
  }

  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v29);
  v32 = v31;

  v33 = &selRef_conversationIdentifier;
  if ((v32 & 1) == 0)
  {

    goto LABEL_21;
  }

  outlined init with copy of Any(*(v26 + 56) + 32 * v30, v68);

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v34 = v67;
  v35 = [v67 domain];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  if (v36 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v38 != v39)
  {
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v63)
    {
LABEL_44:

      return v34;
    }

LABEL_21:
    v42 = [v16 userInfo];
    v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = *MEMORY[0x277CCA578];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v43 + 16))
    {
      v47 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
      v49 = v48;

      if (v49)
      {
        outlined init with copy of Any(*(v43 + 56) + 32 * v47, v68);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7NSErrorCGMd, &_sSaySo7NSErrorCGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_41:

          return 0;
        }

        v50 = v67;
        if (v67 >> 62)
        {
          goto LABEL_50;
        }

        for (i = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v52 = 0;
          v65 = v50 & 0xFFFFFFFFFFFFFF8;
          v66 = v50 & 0xC000000000000001;
          while (1)
          {
            if (v66)
            {
              v53 = MEMORY[0x231934AB0](v52, v50);
            }

            else
            {
              if (v52 >= *(v65 + 16))
              {
                goto LABEL_49;
              }

              v53 = *(v50 + 8 * v52 + 32);
            }

            v34 = v53;
            v54 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              break;
            }

            v55 = [v53 v33[72]];
            v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v57;

            if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
            {

              return v34;
            }

            v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v61)
            {
              goto LABEL_47;
            }

            ++v52;
            v33 = &selRef_conversationIdentifier;
            if (v54 == i)
            {
              goto LABEL_40;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          ;
        }
      }
    }

    else
    {
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_47:

  return v34;
}

uint64_t closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2[38] = a1;
  v2[39] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  v2[40] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration(), 0, 0);
}

uint64_t closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration()()
{
  v136 = v0;
  v135 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    isa = v0[39].super.isa;
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.cloudKitCollaborationInitiation);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[39].super.isa;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = *(v5 + 4);
      *(v6 + 4) = v8;
      *v7 = v8;
      v9 = v8;
      _os_log_impl(&dword_231772000, v3, v4, "Attempting to complete share: %@", v6, 0xCu);
      outlined destroy of (CFStringRef, [CFStringRef? : Any])(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2319361B0](v7, -1, -1);
      MEMORY[0x2319361B0](v6, -1, -1);
    }

    v10 = v0[39].super.isa;

    v11 = *(v10 + 3);
    v12 = [v11 optionsGroups];
    if (!v12)
    {
      __break(1u);
    }

    v13 = v12;
    v14 = v0[39].super.isa;
    v15 = CKSharingAccessTypeFromOptionsGroups();

    v16 = *(v14 + 2);
    v17 = MEMORY[0x277D84FA0];
    v130 = v15;
    v131 = v11;
    v132 = (v16 & 0xC000000000000001);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v133 = v16;
      v134 = MEMORY[0x277D84FA0];
      swift_bridgeObjectRetain_n();
      __CocoaSet.makeIterator()();
      v18 = __CocoaSet.Iterator.next()();
      if (v18)
      {
        v19 = v18;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
        v20 = v19;
        v21 = MEMORY[0x277D84FA0];
        do
        {
          v0[37].super.isa = v20;
          swift_dynamicCast();
          v22 = [(objc_class *)v0[36].super.isa type];
          v23 = v0[36].super.isa;
          if (v22 == 3)
          {
            v24 = *(v21 + 16);
            if (*(v21 + 24) <= v24)
            {
              specialized _NativeSet.resize(capacity:)(v24 + 1);
              v21 = v134;
            }

            v25 = NSObject._rawHashValue(seed:)(*(v21 + 40));
            v26 = v21 + 56;
            v27 = -1 << *(v21 + 32);
            v28 = v25 & ~v27;
            v29 = v28 >> 6;
            if (((-1 << v28) & ~*(v21 + 56 + 8 * (v28 >> 6))) != 0)
            {
              v30 = __clz(__rbit64((-1 << v28) & ~*(v21 + 56 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v31 = 0;
              v32 = (63 - v27) >> 6;
              do
              {
                if (++v29 == v32 && (v31 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_96;
                }

                v33 = v29 == v32;
                if (v29 == v32)
                {
                  v29 = 0;
                }

                v31 |= v33;
                v34 = *(v26 + 8 * v29);
              }

              while (v34 == -1);
              v30 = __clz(__rbit64(~v34)) + (v29 << 6);
            }

            *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
            *(*(v21 + 48) + 8 * v30) = v23;
            ++*(v21 + 16);
          }

          else
          {
          }

          v20 = __CocoaSet.Iterator.next()();
        }

        while (v20);
      }

      else
      {
        v21 = v17;
      }

      v16 = v133;
    }

    else
    {
      v35 = *(v16 + 32);
      v36 = v35 & 0x3F;
      v37 = ((1 << v35) + 63) >> 6;
      v38 = 8 * v37;
      v39 = swift_bridgeObjectRetain_n();
      if (v36 > 0xD)
      {

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v124 = swift_slowAlloc();
          v21 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v124, v37, v16, closure #1 in closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration());

          MEMORY[0x2319361B0](v124, -1, -1);
          goto LABEL_42;
        }
      }

      v128 = &v128;
      v129 = v37;
      MEMORY[0x28223BE20](v39);
      v40 = &v128 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v40, v38);
      v133 = 0;
      v41 = 0;
      v42 = v16;
      v43 = v16 + 56;
      v44 = 1 << *(v16 + 32);
      v45 = -1;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      v46 = v45 & *(v16 + 56);
      v47 = (v44 + 63) >> 6;
      while (v46)
      {
        v48 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
LABEL_35:
        v51 = v48 | (v41 << 6);
        if ([*(*(v42 + 48) + 8 * v51) type] == 3)
        {
          *&v40[(v51 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v51;
          v52 = __OFADD__(v133++, 1);
          if (v52)
          {
            __break(1u);
            goto LABEL_39;
          }
        }
      }

      v49 = v41;
      while (1)
      {
        v41 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_97;
        }

        if (v41 >= v47)
        {
          break;
        }

        v50 = *(v43 + 8 * v41);
        ++v49;
        if (v50)
        {
          v48 = __clz(__rbit64(v50));
          v46 = (v50 - 1) & v50;
          goto LABEL_35;
        }
      }

LABEL_39:
      v16 = v42;
      v21 = specialized _NativeSet.extractSubset(using:count:)(v40, v129, v133, v42);
    }

LABEL_42:
    v53 = specialized Sequence.compactMap<A>(_:)(v21);

    v133 = v53;
    v129 = 0;
    if (!v132)
    {
      break;
    }

    v134 = v17;
    __CocoaSet.makeIterator()();
    v55 = __CocoaSet.Iterator.next()();
    if (!v55)
    {
LABEL_61:

      goto LABEL_78;
    }

    v56 = v55;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    v57 = v56;
    v17 = MEMORY[0x277D84FA0];
    while (1)
    {
      v0[35].super.isa = v57;
      swift_dynamicCast();
      v58 = [(objc_class *)v0[34].super.isa type];
      v59 = v0[34].super.isa;
      if (v58 == 2)
      {
        break;
      }

LABEL_46:
      v57 = __CocoaSet.Iterator.next()();
      if (!v57)
      {
        goto LABEL_61;
      }
    }

    v60 = *(v17 + 16);
    if (*(v17 + 24) <= v60)
    {
      specialized _NativeSet.resize(capacity:)(v60 + 1);
    }

    v17 = v134;
    v61 = NSObject._rawHashValue(seed:)(*(v134 + 40));
    v62 = v17 + 56;
    v63 = -1 << *(v17 + 32);
    v64 = v61 & ~v63;
    v65 = v64 >> 6;
    if (((-1 << v64) & ~*(v17 + 56 + 8 * (v64 >> 6))) != 0)
    {
      v66 = __clz(__rbit64((-1 << v64) & ~*(v17 + 56 + 8 * (v64 >> 6)))) | v64 & 0x7FFFFFFFFFFFFFC0;
LABEL_60:
      *(v62 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
      *(*(v17 + 48) + 8 * v66) = v59;
      ++*(v17 + 16);
      goto LABEL_46;
    }

    v67 = 0;
    v68 = (63 - v63) >> 6;
    while (++v65 != v68 || (v67 & 1) == 0)
    {
      v69 = v65 == v68;
      if (v65 == v68)
      {
        v65 = 0;
      }

      v67 |= v69;
      v70 = *(v62 + 8 * v65);
      if (v70 != -1)
      {
        v66 = __clz(__rbit64(~v70)) + (v65 << 6);
        goto LABEL_60;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
  }

  v71 = *(v16 + 32);
  v72 = (((1 << v71) + 63) >> 6);
  if ((v71 & 0x3Fu) > 0xD)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_63;
    }

    v125 = swift_slowAlloc();
    v17 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v125, v72, v16, closure #3 in closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration());

    MEMORY[0x2319361B0](v125, -1, -1);
  }

  else
  {
LABEL_63:
    v132 = v72;
    v128 = &v128;
    MEMORY[0x28223BE20](v54);
    v74 = &v128 - ((v73 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v74, v73);
    v75 = 0;
    v76 = 0;
    v77 = v16;
    v78 = v16 + 56;
    v79 = 1 << *(v16 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v81 = v80 & *(v16 + 56);
    v82 = (v79 + 63) >> 6;
    while (v81)
    {
      v83 = __clz(__rbit64(v81));
      v81 &= v81 - 1;
LABEL_73:
      v86 = v83 | (v76 << 6);
      if ([*(*(v77 + 48) + 8 * v86) type] == 2)
      {
        *&v74[(v86 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v86;
        v52 = __OFADD__(v75++, 1);
        if (v52)
        {
          __break(1u);
          goto LABEL_77;
        }
      }
    }

    v84 = v76;
    while (1)
    {
      v76 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_98;
      }

      if (v76 >= v82)
      {
        break;
      }

      v85 = *(v78 + 8 * v76);
      ++v84;
      if (v85)
      {
        v83 = __clz(__rbit64(v85));
        v81 = (v85 - 1) & v85;
        goto LABEL_73;
      }
    }

LABEL_77:
    v17 = specialized _NativeSet.extractSubset(using:count:)(v74, v132, v75, v77);
  }

LABEL_78:
  v87 = v0[39].super.isa;
  specialized Sequence.compactMap<A>(_:)(v17);

  v88 = [*(v87 + 4) publicPermission];
  if (v88 == v130)
  {
LABEL_90:
    v110 = v0[39].super.isa;
    v111 = *(v87 + 4);
    v0[48].super.isa = v111;
    v112 = *(v110 + 5);
    v132 = v111;
    v113.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v0[49].super.isa = v113.super.isa;
    v114.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v0[50].super.isa = v114.super.isa;
    v115 = v131;
    v100 = [v131 optionsGroups];
    if (v100)
    {
      v116 = v100;
      v130 = v112;
      v117 = CKSharingPermissionTypeFromOptionsGroups();

      v100 = [v115 optionsGroups];
      if (v100)
      {
        v118 = v100;
        v105 = v0 + 2;
        v119 = v0[41].super.isa;

        v120 = objc_opt_self();

        v121 = CKSharingAllowOthersToInviteFromOptionsGroups();

        v0[2].super.isa = v0;
        v0[7].super.isa = v119;
        v0[3].super.isa = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
        v122 = swift_continuation_init();
        v0[25].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMd, &_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMR);
        v0[18].super.isa = MEMORY[0x277D85DD0];
        v0[19].super.isa = 1107296256;
        v0[20].super.isa = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned CKShare?, @unowned NSError?) -> () with result type (URL, CKShare);
        v0[21].super.isa = &block_descriptor_46;
        v0[22].super.isa = v122;
        [v120 addParticipantsToShare:v132 containerSetupInfo:v130 emailAddresses:v113.super.isa phoneNumbers:v114.super.isa permissionType:v117 allowOthersToInvite:v121 completionHandler:&v0[18]];
        goto LABEL_93;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_109;
  }

  v89 = [*(v87 + 4) currentUserParticipant];
  v90 = [*(v87 + 4) owner];
  v91 = v90;
  if (!v89)
  {
    if (!v90)
    {
      goto LABEL_84;
    }

LABEL_89:

    goto LABEL_90;
  }

  if (!v90)
  {
    v91 = v89;
    goto LABEL_89;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
  v92 = static NSObject.== infix(_:_:)();

  if ((v92 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_84:
  v93 = v0[39].super.isa;
  v94 = *(v87 + 4);
  v0[44].super.isa = v94;
  v95 = *(v93 + 5);
  v96 = v94;
  v97.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v0[45].super.isa = v97.super.isa;
  v98.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v0[46].super.isa = v98.super.isa;
  v99 = v131;
  v100 = [v131 optionsGroups];
  if (!v100)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v101 = v100;
  v132 = v96;
  v130 = CKSharingAccessTypeFromOptionsGroups();

  v100 = [v99 optionsGroups];
  if (!v100)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v102 = v100;
  v129 = v95;
  v103 = CKSharingPermissionTypeFromOptionsGroups();

  v100 = [v99 optionsGroups];
  if (!v100)
  {
LABEL_111:
    __break(1u);
    return MEMORY[0x282200938](v100);
  }

  v104 = v100;
  v105 = v0 + 10;
  v106 = v0[43].super.isa;

  v107 = objc_opt_self();

  v108 = CKSharingAllowOthersToInviteFromOptionsGroups();

  v0[10].super.isa = v0;
  v0[15].super.isa = v106;
  v0[11].super.isa = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  v109 = swift_continuation_init();
  v0[33].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMd, &_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMR);
  v0[26].super.isa = MEMORY[0x277D85DD0];
  v0[27].super.isa = 1107296256;
  v0[28].super.isa = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned CKShare?, @unowned NSError?) -> () with result type (URL, CKShare);
  v0[29].super.isa = &block_descriptor_50;
  v0[30].super.isa = v109;
  LOBYTE(v127) = v108;
  [v107 completeShare:v132 containerSetupInfo:v129 emailAddresses:v97.super.isa phoneNumbers:v98.super.isa accessType:v130 permissionType:v103 allowOthersToInvite:v127 completionHandler:&v0[26]];
LABEL_93:
  v123 = *MEMORY[0x277D85DE8];
  v100 = v105;

  return MEMORY[0x282200938](v100);
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v3 = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v13 = *MEMORY[0x277D85DE8];
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[40];
  v6 = v0[38];
  outlined init with take of (URL, CKShare)(v0[43], v4);
  v7 = *(v5 + 48);
  v8 = *(v4 + v7);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 32))(v6, v4, v9);
  *(v6 + v7) = v8;

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  if (v2)
  {
    v3 = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v3 = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v13 = *MEMORY[0x277D85DE8];
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[42];
  v5 = v0[40];
  v6 = v0[38];
  outlined init with take of (URL, CKShare)(v0[41], v4);
  v7 = *(v5 + 48);
  v8 = *(v4 + v7);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 32))(v6, v4, v9);
  *(v6 + v7) = v8;

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 376);
  swift_willThrow();
  v2 = *(v0 + 376);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v6 = *(v0 + 336);
  v5 = *(v0 + 344);
  v7 = *(v0 + 328);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 408);
  swift_willThrow();
  v2 = *(v0 + 408);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v6 = *(v0 + 336);
  v5 = *(v0 + 344);
  v7 = *(v0 + 328);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v23 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a8;
  v21[5] = a1;
  v21[6] = a6;
  v21[7] = a7;
  v21[8] = a4;
  v21[9] = a5;
  v21[10] = a2;
  v21[11] = a3;

  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v19, &async function pointer to partial apply for closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), v21);
}

id closure #3 in CloudKitCollaborationInitiationRequest.initiateCollaboration()@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient() + 20);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 16))(&a3[v6], a2, v7);
  *a3 = v5;
  return v5;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v42 = a2;
  v8 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *(a3 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v51 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
    v46 = v51;
    if (v43)
    {
      v13 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v15 = -1 << *(a3 + 32);
      v13 = _HashTable.startBucket.getter();
      v14 = *(a3 + 36);
    }

    v48 = v13;
    v49 = v14;
    v50 = v43 != 0;
    if ((v11 & 0x8000000000000000) == 0)
    {
      v45 = v3;
      v16 = 0;
      v17 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 < 0)
      {
        v17 = a3;
      }

      v38 = a3 + 56;
      v39 = v17;
      v37 = a3 + 64;
      while (v16 < v11)
      {
        if (__OFADD__(v16++, 1))
        {
          goto LABEL_39;
        }

        isUniquelyReferenced_nonNull_native = v48;
        v5 = v49;
        LODWORD(v6) = v50;
        v20 = a3;
        specialized Set.subscript.getter(v48, v49, v50, a3);
        a3 = v21;
        v47[0] = v21;
        v22 = v45;
        v41(v47);
        v45 = v22;
        if (v22)
        {
          goto LABEL_44;
        }

        v23 = v46;
        v51 = v46;
        v25 = *(v46 + 16);
        v24 = *(v46 + 24);
        a3 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = a3;
        v26 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v46 = v23;
        result = outlined init with take of CollaborationInitiationResponsePayload(v44, v23 + v26 + *(v40 + 72) * v25, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
        if (v43)
        {
          if (!v6)
          {
            goto LABEL_45;
          }

          a3 = v20;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            isUniquelyReferenced_nonNull_native = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
          v18 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v18(v47, 0);
          if (v16 == v11)
          {
LABEL_36:
            outlined consume of Set<TUHandle>.Index._Variant(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v6)
          {
            goto LABEL_46;
          }

          if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          a3 = v20;
          v27 = 1 << *(v20 + 32);
          if (isUniquelyReferenced_nonNull_native >= v27)
          {
            goto LABEL_40;
          }

          v28 = isUniquelyReferenced_nonNull_native >> 6;
          v29 = *(v38 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
          if (((v29 >> isUniquelyReferenced_nonNull_native) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v20 + 36) != v5)
          {
            goto LABEL_42;
          }

          v30 = v29 & (-2 << (isUniquelyReferenced_nonNull_native & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | isUniquelyReferenced_nonNull_native & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v6 = v28 << 6;
            v31 = v28 + 1;
            v32 = (v37 + 8 * v28);
            while (v31 < (v27 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v6 += 64;
              ++v31;
              if (v34)
              {
                outlined consume of Set<TUHandle>.Index._Variant(isUniquelyReferenced_nonNull_native, v5, 0);
                v27 = __clz(__rbit64(v33)) + v6;
                goto LABEL_35;
              }
            }

            outlined consume of Set<TUHandle>.Index._Variant(isUniquelyReferenced_nonNull_native, v5, 0);
          }

LABEL_35:
          v35 = *(v20 + 36);
          v48 = v27;
          v49 = v35;
          v50 = 0;
          if (v16 == v11)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:

    outlined consume of Set<TUHandle>.Index._Variant(isUniquelyReferenced_nonNull_native, v5, v6);

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  return result;
}

uint64_t CloudKitCollaborationInitiationRequest.initiateOTLCollaboration()(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](CloudKitCollaborationInitiationRequest.initiateOTLCollaboration(), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = CloudKitCollaborationInitiationRequest.initiateOTLCollaboration();
  }

  else
  {

    v5 = CloudKitCollaborationInitiationRequest.initiateOTLCollaboration();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id CloudKitCollaborationInitiationRequest.initiateOTLCollaboration()()
{
  v75 = v0;
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
LABEL_53:
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  v0[11] = __swift_project_value_buffer(v2, static Log.cloudKitCollaborationInitiation);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v74 = v9;
    *v7 = 136315650;
    v10 = v6[2];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v11 = Set.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v74);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v6[4];
    *(v7 + 14) = v14;
    *v8 = v14;
    *(v7 + 22) = 2080;
    v15 = v6[3];
    v16 = v14;
    v17 = [v15 optionsGroups];

    if (!v17)
    {
LABEL_55:
      __break(1u);
      return result;
    }

    v19 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for _SWCollaborationOptionsGroup, 0x277CDC6D0);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = MEMORY[0x231934700](v20, v19);
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v74);

    *(v7 + 24) = v24;
    _os_log_impl(&dword_231772000, v3, v4, "Received request to initiate OTL-based collaboration with: %s, share: %@, optionsGroup: %s", v7, 0x20u);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v9, -1, -1);
    MEMORY[0x2319361B0](v7, -1, -1);
  }

  else
  {
  }

  v25 = v0[10];
  v26 = *(v25 + 16);
  if ((v26 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v27 = v0[2];
    v28 = v0[3];
    v29 = v0[4];
    v30 = v0[5];
    v31 = v0[6];
    v25 = v0[10];
  }

  else
  {
    v32 = -1 << *(v26 + 32);
    v28 = v26 + 56;
    v29 = ~v32;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v31 = v34 & *(v26 + 56);

    v30 = 0;
  }

  v35 = MEMORY[0x277D84F98];
  v36 = (v29 + 64) >> 6;
  v70 = v25;
  v71 = v0;
  v72 = v28;
  for (i = v27; ; v27 = i)
  {
    v0[12] = v35;
    if (v27 < 0)
    {
      v44 = __CocoaSet.Iterator.next()();
      if (!v44 || (v0[8] = v44, type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8), swift_dynamicCast(), v43 = v0[7], v41 = v30, v42 = v31, !v43))
      {
LABEL_43:
        v64 = v0[10];
        outlined consume of Set<TUHandle>.Iterator._Variant();
        v65 = *(v64 + 40);
        v0[13] = v65;
        v66 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerSetupInfo_];
        v0[14] = v66;
        v67 = *(v25 + 32);
        v0[15] = v67;
        v68 = v67;
        v69 = swift_task_alloc();
        v0[16] = v69;
        *v69 = v0;
        v69[1] = CloudKitCollaborationInitiationRequest.initiateOTLCollaboration();

        return SaveShareOperation.perform()(v68, v66);
      }
    }

    else
    {
      v39 = v30;
      v40 = v31;
      v41 = v30;
      if (!v31)
      {
        while (1)
        {
          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v41 >= v36)
          {
            goto LABEL_43;
          }

          v40 = *(v28 + 8 * v41);
          ++v39;
          if (v40)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_20:
      v42 = (v40 - 1) & v40;
      v43 = *(*(v27 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
      if (!v43)
      {
        goto LABEL_43;
      }
    }

    v45 = [objc_opt_self() oneTimeURLParticipant];
    result = [*(v25 + 24) optionsGroups];
    if (!result)
    {
      __break(1u);
      goto LABEL_55;
    }

    v46 = result;
    v47 = CKSharingPermissionTypeFromOptionsGroups();

    [v45 setPermission_];
    [*(v25 + 32) addParticipant_];
    if ((v35 & 0xC000000000000001) != 0)
    {
      if (v35 < 0)
      {
        v48 = v35;
      }

      else
      {
        v48 = v35 & 0xFFFFFFFFFFFFFF8;
      }

      v49 = v45;
      v50 = __CocoaSet.count.getter();
      if (__OFADD__(v50, 1))
      {
        goto LABEL_51;
      }

      v35 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8TUHandleC_So18CKShareParticipantCTt1g5(v48, v50 + 1);
    }

    else
    {
      v51 = v45;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v35;
    v54 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
    v55 = *(v35 + 16);
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_50;
    }

    v0 = v53;
    if (*(v35 + 24) < v57)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v60 = v42;
      if (v53)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v60 = v42;
      v35 = v74;
      if (v0)
      {
LABEL_13:
        v37 = *(v35 + 56);
        v38 = *(v37 + 8 * v54);
        *(v37 + 8 * v54) = v45;

        goto LABEL_14;
      }
    }

LABEL_39:
    *(v35 + 8 * (v54 >> 6) + 64) |= 1 << v54;
    *(*(v35 + 48) + 8 * v54) = v43;
    *(*(v35 + 56) + 8 * v54) = v45;

    v61 = *(v35 + 16);
    v62 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (v62)
    {
      goto LABEL_52;
    }

    *(v35 + 16) = v63;
LABEL_14:
    v30 = v41;
    v31 = v60;
    v25 = v70;
    v0 = v71;
    v28 = v72;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, isUniquelyReferenced_nonNull_native);
  v35 = v74;
  v58 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
  if ((v0 & 1) == (v59 & 1))
  {
    v54 = v58;
    v60 = v42;
    if (v0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t CloudKitCollaborationInitiationRequest.initiateOTLCollaboration()()
{
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[11];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = [*(v8 + 32) recordID];
    *(v9 + 4) = v11;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v7;
    *v10 = v11;
    v10[1] = v7;
    v12 = v7;
    _os_log_impl(&dword_231772000, v5, v6, "Completed share operation for share: %@, new share: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v10, -1, -1);
    MEMORY[0x2319361B0](v9, -1, -1);
  }

  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[12];
  v19 = v0[9];
  v18 = v0[10];

  v20 = *(v18 + 32);
  v21 = v14;
  v22 = v20;
  v23 = specialized Sequence.compactMap<A>(_:)(v17, v21);

  v24 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientV_SayAJGTt0g5Tf4g_n(v23);

  *v19 = v22;
  v19[1] = v24;
  v19[2] = v15;
  v25 = v15;
  v26 = v0[1];

  return v26();
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);
  v4 = *(v0 + 144);

  return v3();
}

uint64_t SaveShareOperation.perform()(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](SaveShareOperation.perform(), 0, 0);
}

uint64_t SaveShareOperation.perform()()
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKModifyRecordsOperation, 0x277CBC4A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23183DF50;
  v9 = *(v0 + 24);
  *(v1 + 32) = v9;
  v2 = v9;
  v11.value._rawValue = v1;
  v11.is_nil = 0;
  isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v11, v12).super.super.super.super.isa;
  *(v0 + 40) = isa;
  [(objc_class *)isa setQualityOfService:25];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = isa;
  *(v4 + 24) = v9;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x277CBC680);
  *v6 = v0;
  v6[1] = SaveShareOperation.perform();

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x286D726F66726570, 0xE900000000000029, partial apply for closure #1 in SaveShareOperation.perform(), v4, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = SaveShareOperation.perform();
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = SaveShareOperation.perform();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t CloudKitCollaborationInitiationRequest.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CloudKitCollaborationInitiationRequest.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t protocol witness for CollaborationInitiationRequest.initiateCollaboration() in conformance CloudKitCollaborationInitiationRequest(uint64_t a1)
{
  v4 = *(**v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v8(a1);
}

void closure #1 in SaveShareOperation.perform()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7CKShareCs5Error_pGMd, &_sScCySo7CKShareCs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in SaveShareOperation.perform();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [CKRecord]?, @guaranteed [CKRecordID]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);

  [a2 setModifyRecordsCompletionBlock_];
  _Block_release(v15);
  v16 = [a3 currentUserParticipant];
  v17 = [a3 owner];
  v18 = v17;
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_6;
    }

LABEL_8:

LABEL_9:
    v20 = &selRef_sharedCloudDatabase;
    goto LABEL_10;
  }

  if (!v17)
  {
    v18 = v16;
    goto LABEL_8;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v20 = &selRef_privateCloudDatabase;
LABEL_10:
  v21 = [a4 *v20];
  [v21 addOperation_];
}

unint64_t closure #1 in closure #1 in SaveShareOperation.perform()(unint64_t result, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7CKShareCs5Error_pGMd, &_sScCySo7CKShareCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  v4 = result;
  if (!result)
  {
    goto LABEL_15;
  }

  if (!(result >> 62))
  {
    result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_13:
    MEMORY[0x231934AB0](0, v4);
    goto LABEL_9;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 32);
LABEL_9:
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7CKShareCs5Error_pGMd, &_sScCySo7CKShareCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [CKRecord]?, @guaranteed [CKRecordID]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecord, 0x277CBC5A0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecordID, 0x277CBC5D0);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a4;
  v8(v6, a3, a4);
}

uint64_t specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v17;
  v8[14] = v18;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a1;
  v8[8] = a4;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock();
  v8[19] = v12;
  v13 = *(v12 - 8);
  v8[20] = v13;
  v14 = *(v13 + 64) + 15;
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), 0, 0);
}

void specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)()
{
  v1 = v0[8];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = v0[9];
      v0[22] = 0;
      v9 = (v2 + *v2);
      v3 = v2[1];
      v4 = swift_task_alloc();
      v0[23] = v4;
      *v4 = v0;
      v5 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    }

    else
    {
      static Task<>.checkCancellation()();
      v9 = (v0[9] + *v0[9]);
      v8 = *(v0[9] + 4);
      v4 = swift_task_alloc();
      v0[29] = v4;
      *v4 = v0;
      v5 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    }

    v4[1] = v5;
    v6 = v0[10];
    v7 = v0[7];

    v9(v7);
  }
}

uint64_t specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), 0, 0);
  }

  else
  {
    v4 = v3[21];
    v5 = v3[17];
    v6 = v3[18];

    v7 = v3[1];

    return v7();
  }
}

{
  v1 = *(v0 + 96);
  if ((*(v0 + 88))(*(v0 + 192)))
  {
    v2 = *(v0 + 168);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    static Clock<>.continuous.getter();
    *(v0 + 40) = v9;
    *(v0 + 48) = v7;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v10 = _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
    dispatch thunk of Clock.now.getter();
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v11 = *(v6 + 8);
    *(v0 + 200) = v11;
    *(v0 + 208) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v5, v8);
    v12 = *(MEMORY[0x277D85A58] + 4);
    v13 = swift_task_alloc();
    *(v0 + 216) = v13;
    *v13 = v0;
    v13[1] = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    v14 = *(v0 + 168);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);

    return MEMORY[0x2822008C8](v16, v0 + 16, v15, v10);
  }

  else
  {
    v17 = *(v0 + 192);
    swift_willThrow();
    v18 = *(v0 + 192);
    v19 = *(v0 + 168);
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);

    v22 = *(v0 + 8);

    return v22();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v10 = *v1;
  *(*v1 + 224) = v0;

  v4 = *(v2 + 208);
  if (v0)
  {
    (*(v2 + 200))(*(v2 + 144), *(v2 + 120));
    v5 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  else
  {
    v7 = *(v2 + 160);
    v6 = *(v2 + 168);
    v8 = *(v2 + 152);
    (*(v2 + 200))(*(v2 + 144), *(v2 + 120));
    (*(v7 + 8))(v6, v8);
    v5 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 176) + 1;

  if (v2 == v1)
  {
    v3 = *(v0 + 224);
    static Task<>.checkCancellation()();
    if (v3)
    {
      v4 = *(v0 + 168);
      v5 = *(v0 + 136);
      v6 = *(v0 + 144);

      v7 = *(v0 + 8);

      return v7();
    }

    v15 = (*(v0 + 72) + **(v0 + 72));
    v12 = *(*(v0 + 72) + 4);
    v10 = swift_task_alloc();
    *(v0 + 232) = v10;
    *v10 = v0;
    v11 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  else
  {
    ++*(v0 + 176);
    v15 = (*(v0 + 72) + **(v0 + 72));
    v9 = *(*(v0 + 72) + 4);
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v11 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  v10[1] = v11;
  v13 = *(v0 + 80);
  v14 = *(v0 + 56);

  return v15(v14);
}

{
  v1 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v2 = v0[28];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];

  v6 = v0[1];

  return v6();
}

{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v8 = *v0;

  v3 = v1[21];
  v4 = v1[18];
  v5 = v1[17];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v17;
  v8[14] = v18;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a1;
  v8[8] = a4;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock();
  v8[19] = v12;
  v13 = *(v12 - 8);
  v8[20] = v13;
  v14 = *(v13 + 64) + 15;
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), 0, 0);
}

void closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)()
{
  v1 = v0[8];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = v0[9];
      v0[22] = 0;
      v9 = (v2 + *v2);
      v3 = v2[1];
      v4 = swift_task_alloc();
      v0[23] = v4;
      *v4 = v0;
      v5 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    }

    else
    {
      static Task<>.checkCancellation()();
      v9 = (v0[9] + *v0[9]);
      v8 = *(v0[9] + 4);
      v4 = swift_task_alloc();
      v0[25] = v4;
      *v4 = v0;
      v5 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    }

    v4[1] = v5;
    v6 = v0[10];
    v7 = v0[7];

    v9(v7);
  }
}

uint64_t closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), 0, 0);
  }

  else
  {
    v4 = v3[21];
    v5 = v3[17];
    v6 = v3[18];

    v7 = v3[1];

    return v7();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v8 = *v0;

  v3 = v1[21];
  v4 = v1[18];
  v5 = v1[17];

  v6 = *(v8 + 8);

  return v6();
}

{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v10 = *v1;
  *(*v1 + 232) = v0;

  v4 = *(v2 + 216);
  if (v0)
  {
    (*(v2 + 208))(*(v2 + 144), *(v2 + 120));
    v5 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  else
  {
    v7 = *(v2 + 160);
    v6 = *(v2 + 168);
    v8 = *(v2 + 152);
    (*(v2 + 208))(*(v2 + 144), *(v2 + 120));
    (*(v7 + 8))(v6, v8);
    v5 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 176) + 1;

  if (v2 == v1)
  {
    v3 = *(v0 + 232);
    static Task<>.checkCancellation()();
    if (v3)
    {
      v4 = *(v0 + 168);
      v5 = *(v0 + 136);
      v6 = *(v0 + 144);

      v7 = *(v0 + 8);

      return v7();
    }

    v15 = (*(v0 + 72) + **(v0 + 72));
    v12 = *(*(v0 + 72) + 4);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v11 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  else
  {
    ++*(v0 + 176);
    v15 = (*(v0 + 72) + **(v0 + 72));
    v9 = *(*(v0 + 72) + 4);
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v11 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  v10[1] = v11;
  v13 = *(v0 + 80);
  v14 = *(v0 + 56);

  return v15(v14);
}

{
  v1 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v2 = v0[29];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 96);
  if ((*(v0 + 88))(*(v0 + 192)))
  {
    v2 = *(v0 + 168);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    static Clock<>.continuous.getter();
    *(v0 + 40) = v9;
    *(v0 + 48) = v7;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v10 = _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
    dispatch thunk of Clock.now.getter();
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v11 = *(v6 + 8);
    *(v0 + 208) = v11;
    *(v0 + 216) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v5, v8);
    v12 = *(MEMORY[0x277D85A58] + 4);
    v13 = swift_task_alloc();
    *(v0 + 224) = v13;
    *v13 = v0;
    v13[1] = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    v14 = *(v0 + 168);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);

    return MEMORY[0x2822008C8](v16, v0 + 16, v15, v10);
  }

  else
  {
    v17 = *(v0 + 192);
    swift_willThrow();
    v18 = *(v0 + 192);
    v19 = *(v0 + 168);
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10Foundation3URLV_So7CKShareCt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  outlined init with copy of TaskPriority?(a3, &v26[-1] - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter();
      v22 = *(v21 + 16);
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v21 + 32, v27, v26);

      v23 = v26[0];
      outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

id CKShareParticipant.handle.getter()
{
  v1 = v0;
  v2 = [v0 userIdentity];
  v3 = [v2 lookupInfo];

  if (!v3)
  {
    if (one-time initialization token for cloudKitCollaborationInitiation != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.cloudKitCollaborationInitiation);
    v8 = v1;
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35[0] = v11;
      *v10 = 136315138;
      v36 = v8;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
      v12 = v8;
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v35);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_231772000, v3, v9, "Missing user identity for participant: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x2319361B0](v11, -1, -1);
      MEMORY[0x2319361B0](v10, -1, -1);
    }

    goto LABEL_20;
  }

  v4 = [v3 emailAddress];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() normalizedEmailAddressHandleForValue_];

    if (!v6)
    {
LABEL_15:
      if (one-time initialization token for cloudKitCollaborationInitiation != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.cloudKitCollaborationInitiation);
      v25 = v1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35[0] = v29;
        *v28 = 136315138;
        v36 = v25;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
        v30 = v25;
        v31 = String.init<A>(reflecting:)();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v35);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_231772000, v26, v27, "Missing handle for participant: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x2319361B0](v29, -1, -1);
        MEMORY[0x2319361B0](v28, -1, -1);
      }

LABEL_20:
      return 0;
    }
  }

  else
  {
    v16 = [v3 phoneNumber];
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    v21 = PNCopyBestGuessCountryCodeForNumber();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v35[0] = 43;
      v35[1] = 0xE100000000000000;
      MEMORY[0x231934620](v18, v20);

      v23 = MEMORY[0x231934530](43, 0xE100000000000000);

      v22 = PNCopyBestGuessCountryCodeForNumber();
    }

    v6 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v17 isoCountryCode:v22];

    if (!v6)
    {
      goto LABEL_15;
    }
  }

  return v6;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFStringRef(0);
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

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
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFStringRef(0);
          _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
          v10 = v9;
          v11 = static _CFObject.== infix(_:_:)();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x231934A30](v9, a1);
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

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for CollaborationInitiationResponsePayload();
    v20 = *(v13 - 8);
    outlined init with take of CollaborationInitiationResponsePayload(v12 + *(v20 + 72) * v8, a2, type metadata accessor for CollaborationInitiationResponsePayload);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for CollaborationInitiationResponsePayload();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8TUHandleC_So18CKShareParticipantCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMd, &_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CollaborationInitiationResponsePayload();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8TUHandleC11SocialLayer38CollaborationInitiationResponsePayloadVGMd, &_ss18_DictionaryStorageCySo8TUHandleC11SocialLayer38CollaborationInitiationResponsePayloadVGMR);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        outlined init with take of CollaborationInitiationResponsePayload(v28, v9, type metadata accessor for CollaborationInitiationResponsePayload);
      }

      else
      {
        outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(v28, v9, type metadata accessor for CollaborationInitiationResponsePayload);
        v29 = v26;
      }

      result = NSObject._rawHashValue(seed:)(*(v13 + 40));
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = outlined init with take of CollaborationInitiationResponsePayload(v9, *(v13 + 56) + v27 * v21, type metadata accessor for CollaborationInitiationResponsePayload);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMd, &_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for CollaborationInitiationResponsePayload() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
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

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, a3 & 1);
    v19 = *v4;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v13 & 1) == (v21 & 1))
    {
      v9 = v20;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for CollaborationInitiationResponsePayload() - 8) + 72) * v9;

    return outlined assign with take of CollaborationInitiationResponsePayload(a1, v17);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v15);

  return a2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, &_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMd, &_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMR);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v24);
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMd, &_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMR);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v24);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for CollaborationInitiationResponsePayload();
  result = outlined init with take of CollaborationInitiationResponsePayload(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for CollaborationInitiationResponsePayload);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for CollaborationInitiationResponsePayload();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8TUHandleC11SocialLayer38CollaborationInitiationResponsePayloadVGMd, &_ss18_DictionaryStorageCySo8TUHandleC11SocialLayer38CollaborationInitiationResponsePayloadVGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v6 + 56) + v23, v5, type metadata accessor for CollaborationInitiationResponsePayload);
        *(*(v8 + 48) + 8 * v21) = v22;
        outlined init with take of CollaborationInitiationResponsePayload(v5, *(v8 + 56) + v23, type metadata accessor for CollaborationInitiationResponsePayload);
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMd, &_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t outlined assign with take of CollaborationInitiationResponsePayload(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationInitiationResponsePayload();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration()(a1, v1);
}

uint64_t partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(a1, v14, v4, v5, v6, v7, v8, v10);
}

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2319349F0](a1, a2, v7);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void *specialized Sequence.compactMap<A>(_:)(unint64_t a1, void *a2)
{
  v71 = a2;
  v68 = type metadata accessor for URL();
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v68);
  v67 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVSgMd, &_s11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v57 - v11);
  v74 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  v62 = *(v74 - 8);
  v13 = *(v62 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v59 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v57 - v16;
  v61 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v75 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v20 = -1 << *(a1 + 32);
    v18 = ~v20;
    v17 = a1 + 64;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(a1 + 64);
    v75 = a1;
  }

  v24 = 0;
  v60 = v18;
  v25 = (v18 + 64) >> 6;
  v65 = (v4 + 32);
  v69 = (v62 + 48);
  v70 = (v62 + 56);
  v63 = MEMORY[0x277D84F90];
  v64 = v25;
  while ((v75 & 0x8000000000000000) != 0)
  {
    v32 = __CocoaDictionary.Iterator.next()();
    if (!v32)
    {
      goto LABEL_27;
    }

    v34 = v33;
    v76 = v32;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    swift_dynamicCast();
    v30 = v77;
    v76 = v34;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
    swift_dynamicCast();
    v31 = v77;
    v73 = v19;
    if (!v30)
    {
LABEL_27:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      return v63;
    }

LABEL_17:
    v72 = v30;
    v35 = v31;
    v36 = CKShareParticipant.participantID.getter();
    v37 = MEMORY[0x231934530](v36);

    v38 = [v71 oneTimeURLForParticipantID_];

    if (v38)
    {
      v39 = v67;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = v66;
      v41 = *v65;
      v42 = v17;
      v43 = v12;
      v44 = v74;
      v45 = v39;
      v46 = v68;
      (*v65)(v66, v45, v68);
      v47 = v43 + *(v44 + 20);
      v48 = v40;
      v49 = v44;
      v12 = v43;
      v17 = v42;
      v25 = v64;
      v41(v47, v48, v46);
      *v12 = v72;
      (*v70)(v12, 0, 1, v49);
      v19 = v73;
      v50 = v35;
    }

    else
    {
      (*v70)(v12, 1, 1, v74);

      v50 = v72;
      v19 = v73;
    }

    if ((*v69)(v12, 1, v74) == 1)
    {
      result = outlined destroy of (CFStringRef, [CFStringRef? : Any])(v12, &_s11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVSgMd, &_s11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVSgMR);
    }

    else
    {
      v51 = v17;
      v52 = v58;
      outlined init with take of CollaborationInitiationResponsePayload(v12, v58, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
      outlined init with take of CollaborationInitiationResponsePayload(v52, v59, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
      }

      v54 = v63[2];
      v53 = v63[3];
      v17 = v51;
      if (v54 >= v53 >> 1)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v54 + 1, 1, v63);
      }

      v19 = v73;
      v55 = v62;
      v56 = v63;
      v63[2] = v54 + 1;
      result = outlined init with take of CollaborationInitiationResponsePayload(v59, v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v54, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
    }
  }

  v26 = v24;
  v27 = v19;
  if (v19)
  {
LABEL_13:
    v73 = (v27 - 1) & v27;
    v28 = (v24 << 9) | (8 * __clz(__rbit64(v27)));
    v29 = *(*(v75 + 56) + v28);
    v30 = *(*(v75 + 48) + v28);
    v31 = v29;
    if (!v30)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v24 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v24 >= v25)
    {
      goto LABEL_27;
    }

    v27 = *(v17 + 8 * v24);
    ++v26;
    if (v27)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation3URLVACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v13 = *(v1 + 80);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(a1, v3, v4, v6, v7, v8, v9, v10);
}

uint64_t dispatch thunk of CloudKitCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return v8(a1);
}

uint64_t dispatch thunk of CloudKitCollaborationInitiationRequest.initiateOTLCollaboration()(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return v8(a1);
}

uint64_t type metadata completion function for CloudKitCollaborationInitiationRequest.Response.Recipient()
{
  result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t partial apply for closure #1 in closure #1 in SaveShareOperation.perform()(unint64_t a1, int a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7CKShareCs5Error_pGMd, &_sScCySo7CKShareCs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in SaveShareOperation.perform()(a1, a2, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of CollaborationInitiationResponsePayload(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of Set<TUHandle>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined init with take of (URL, CKShare)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id CollaborationAttributionView.init(highlight:variant:)(void *a1, uint64_t a2)
{
  v3 = specialized CollaborationAttributionView.init(highlight:variant:)(a1, a2);

  return v3;
}

uint64_t CollaborationAttributionView.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CollaborationAttributionView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SLCollaborationAttributionView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CollaborationAttributionView.delegate.modify;
}

void CollaborationAttributionView.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t CollaborationAttributionView.remoteContentDidLoad.getter()
{
  v1 = (v0 + OBJC_IVAR___SLCollaborationAttributionView_remoteContentDidLoad);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_23177A430(v3);
  return v3;
}

uint64_t CollaborationAttributionView.remoteContentDidLoad.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SLCollaborationAttributionView_remoteContentDidLoad);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

void *CollaborationAttributionView.highlight.getter()
{
  v1 = OBJC_IVAR___SLCollaborationAttributionView_highlight;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CollaborationAttributionView.highlight.setter(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SLCollaborationAttributionView_highlight;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  if (a1)
  {
    if (v5)
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLHighlight, off_278924EC0);
      a1 = a1;
      v6 = v5;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {

        v5 = v6;
LABEL_17:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    CollaborationAttributionView.minViableGlyphSize()();
    v9 = v8;
    if (*&v2[OBJC_IVAR___SLCollaborationAttributionView_variant] == 4)
    {
      v10 = 44.0;
    }

    else
    {
      v10 = 0.0;
    }

    [v2 bounds];
    if (v11 > v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (v12 <= v10)
    {
      v12 = v10;
    }

    [v2 setMaxWidth_];
    v13 = [v2 slotView];
    [v13 _updateContent];

    [v2 invalidateIntrinsicContentSize];
    goto LABEL_17;
  }

  if (v5)
  {
    goto LABEL_8;
  }
}

void (*CollaborationAttributionView.highlight.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SLCollaborationAttributionView_highlight;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return CollaborationAttributionView.highlight.modify;
}

void CollaborationAttributionView.highlight.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v7)
      {
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLHighlight, off_278924EC0);
        v8 = v3;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

LABEL_24:
          goto LABEL_25;
        }
      }

      else
      {
        v8 = v3;
      }
    }

    else
    {
      if (!v7)
      {
LABEL_25:
        v11 = *v4;
        goto LABEL_36;
      }

      v8 = 0;
    }

    v14 = v2[4];
    CollaborationAttributionView.minViableGlyphSize()();
    v16 = v15;
    if (*&v14[OBJC_IVAR___SLCollaborationAttributionView_variant] == 4)
    {
      v17 = 44.0;
    }

    else
    {
      v17 = 0.0;
    }

    [v14 bounds];
    if (v18 > v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    if (v19 <= v17)
    {
      v19 = v17;
    }

    [v14 setMaxWidth_];
    v20 = [v14 slotView];
    [v20 _updateContent];

    [v14 invalidateIntrinsicContentSize];
    v8 = v7;
    goto LABEL_24;
  }

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_37;
    }

    v11 = 0;
    goto LABEL_27;
  }

  if (!v7)
  {
    v11 = v3;
    goto LABEL_27;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLHighlight, off_278924EC0);
  v11 = v3;
  v12 = v7;
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
LABEL_27:
    v21 = v2[4];
    CollaborationAttributionView.minViableGlyphSize()();
    v23 = v22;
    if (*&v21[OBJC_IVAR___SLCollaborationAttributionView_variant] == 4)
    {
      v24 = 44.0;
    }

    else
    {
      v24 = 0.0;
    }

    [v21 bounds];
    if (v25 > v23)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    if (v26 <= v24)
    {
      v26 = v24;
    }

    [v21 setMaxWidth_];
    v27 = [v21 slotView];
    [v27 _updateContent];

    [v21 invalidateIntrinsicContentSize];
    v11 = v7;
    goto LABEL_36;
  }

LABEL_36:
LABEL_37:

  free(v2);
}

uint64_t CollaborationAttributionView.title.getter()
{
  v1 = (v0 + OBJC_IVAR___SLCollaborationAttributionView_title);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t CollaborationAttributionView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SLCollaborationAttributionView_title);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t CollaborationAttributionView.automaticallyAdjustsMaxWidthToFitBounds.getter()
{
  v1 = OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds;
  swift_beginAccess();
  return *(v0 + v1);
}

id CollaborationAttributionView.automaticallyAdjustsMaxWidthToFitBounds.setter(char a1)
{
  v3 = OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = a1;
  if (v5 & 1) == 0 && (a1)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*CollaborationAttributionView.automaticallyAdjustsMaxWidthToFitBounds.modify(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return CollaborationAttributionView.automaticallyAdjustsMaxWidthToFitBounds.modify;
}

void CollaborationAttributionView.automaticallyAdjustsMaxWidthToFitBounds.modify(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if ((v5 & 1) == 0 && v4)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}

void CollaborationAttributionView.minViableGlyphSize()()
{
  v1 = [v0 lastRenderedSlotStyle];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration];
    [v3 minViableSizeWithStyle_];
  }

  else
  {
    v4 = [v0 traitCollection];
    [v4 displayScale];
    v6 = v5;

    v7 = [v0 traitCollection];
    v8 = [v7 layoutDirection];

    v9 = v8 == 1;
    v10 = [v0 traitCollection];
    v11 = [v10 userInterfaceStyle];

    [*&v0[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] minViableSizeWithDisplayScale:v9 RTL:v11 == 2 darkMode:v6];
  }
}

id CollaborationAttributionView.updatePlaceholderSymbol(scale:weight:pointSize:)(uint64_t a1, uint64_t a2, double a3)
{
  if ((a1 - 1) >= 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v7 = objc_allocWithZone(SLDImageSymbolConfiguration);
  v8 = MEMORY[0x231934530](0xD000000000000022, 0x80000002318465A0);
  v9 = [v7 initWithName:v8 coreUISize:v6 weight:a2 pointSize:a3];

  v10 = *&v3[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration];
  *&v3[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] = v9;
  v11 = v9;
  CollaborationAttributionView.placeholderGlyphConfiguration.didset();

  CollaborationAttributionView.minViableGlyphSize()();
  v13 = 44.0;
  if (*&v3[OBJC_IVAR___SLCollaborationAttributionView_variant] != 4)
  {
    v13 = 0.0;
  }

  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  [v3 maxWidth];
  if (v14 > v15)
  {
    v15 = v14;
  }

  return [v3 setMaxWidth_];
}

void CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9)
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for collaborationRenderer != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.collaborationRenderer);
  v17 = a2;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v40 = a3;
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v20 = 134219010;
    *(v20 + 4) = a1;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v17;
    *v38 = v17;
    *(v20 + 22) = 2080;
    v21 = v17;
    *(v20 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, a4, aBlock);
    *(v20 + 32) = 2080;
    v22 = MEMORY[0x231934700](a5, MEMORY[0x277D837D0]);
    v24 = a4;
    v25 = a7;
    v26 = a1;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, aBlock);

    *(v20 + 34) = v27;
    a1 = v26;
    a7 = v25;
    *(v20 + 42) = 2048;
    *(v20 + 44) = a9;
    _os_log_impl(&dword_231772000, v18, v19, "Received request to render remote content. layerID: %ld style: %@ title: %s attributionIdentifiers: %s maxWidth: %f", v20, 0x34u);
    outlined destroy of NSObject?(v38);
    MEMORY[0x2319361B0](v38, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v39, -1, -1);
    v28 = v20;
    a3 = v40;
    MEMORY[0x2319361B0](v28, -1, -1);
  }

  else
  {

    v24 = a4;
  }

  v29 = *(v41 + OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration);
  v30 = MEMORY[0x231934530](a3, v24);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v32 = *(v41 + OBJC_IVAR___SLCollaborationAttributionView_variant);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = v33;
  *(v34 + 32) = v17;
  *(v34 + 40) = a9;
  *(v34 + 48) = a7;
  *(v34 + 56) = a8;
  *(v34 + 64) = ObjectType;
  aBlock[4] = partial apply for closure #1 in CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:);
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UISSlotRemoteContent?) -> ();
  aBlock[3] = &block_descriptor_26;
  v35 = _Block_copy(aBlock);
  v36 = v17;
  v37 = v29;

  [a6 collaborationAttributionViewForTitle:v30 attributionIdentifiers:isa style:v36 placeholderGlyphConfiguration:v37 maxWidth:v32 variant:a1 layerContextID:a9 reply:v35];
  _Block_release(v35);
}

double CollaborationAttributionView.expectedHeight(for:)(double a1)
{
  [v1 frame];
  Width = CGRectGetWidth(v11);
  if (SL_CGFloatApproximatelyEqualToFloat(a1, Width) || (v4 = [v1 lastRenderedSlotStyle]) == 0)
  {
    v5 = [v1 slotView];
    [v5 intrinsicContentSize];
    v8 = v9;
  }

  else
  {
    v5 = v4;
    v6 = [objc_allocWithZone(SLDCollaborationAttributionViewEmptySlotContent) initWithStyle:v4 variant:*&v1[OBJC_IVAR___SLCollaborationAttributionView_variant] maxWidth:*&v1[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] placeholderGlyphConfig:0 forRemote:a1];
    [v6 contentSize];
    v8 = v7;
  }

  return v8;
}

uint64_t key path getter for CollaborationAttributionView.remoteContentDidLoad : CollaborationAttributionView@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for CollaborationAttributionView.remoteContentDidLoad : CollaborationAttributionView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  sub_23177A430(v3);
  return v7(v6, v5);
}

void CollaborationAttributionView.placeholderGlyphConfiguration.didset()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLDImageSymbolConfiguration, off_278924E68);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    CollaborationAttributionView.minViableGlyphSize()();
    v6 = v5;
    if (*&v1[OBJC_IVAR___SLCollaborationAttributionView_variant] == 4)
    {
      v7 = 44.0;
    }

    else
    {
      v7 = 0.0;
    }

    [v1 bounds];
    if (v8 > v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v9 <= v7)
    {
      v9 = v7;
    }

    [v1 setMaxWidth_];
    v10 = [v1 slotView];
    [v10 _updateContent];

    [v1 invalidateIntrinsicContentSize];
  }
}

id CollaborationAttributionView.__allocating_init(highlight:variant:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized CollaborationAttributionView.init(highlight:variant:)(a1, a2);

  return v6;
}

id CollaborationAttributionView.init(variant:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR___SLCollaborationAttributionView_remoteContentDidLoad];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR___SLCollaborationAttributionView_highlight] = 0;
  v4 = &v1[OBJC_IVAR___SLCollaborationAttributionView_title];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds] = 0;
  *&v1[OBJC_IVAR___SLCollaborationAttributionView_variant] = a1;
  v5 = objc_allocWithZone(SLDImageSymbolConfiguration);
  v6 = MEMORY[0x231934530](0xD000000000000022, 0x80000002318465A0);
  v7 = [v5 initWithName:v6 coreUISize:2 weight:3 pointSize:22.0];

  v8 = OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration;
  *&v1[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] = v7;
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  [*&v1[v8] minViableSizeWithDisplayScale:0 RTL:0 darkMode:v11];
  v13 = 44.0;
  if (a1 != 4)
  {
    v13 = 0.0;
  }

  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLDCollaborationAttributionViewService, off_278924DA8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CollaborationAttributionView();
  return objc_msgSendSuper2(&v17, sel_initWithServiceProxyClass_maxWidth_, ObjCClassFromMetadata, v14);
}

id CollaborationAttributionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t CollaborationAttributionView.init(coder:)(void *a1)
{
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall CollaborationAttributionView.layoutSubviews()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CollaborationAttributionView();
  v1 = objc_msgSendSuper2(&v7, sel_layoutSubviews);
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x100))(v1))
  {
    CollaborationAttributionView.minViableGlyphSize()();
    v3 = v2;
    if (*(v0 + OBJC_IVAR___SLCollaborationAttributionView_variant) == 4)
    {
      v4 = 44.0;
    }

    else
    {
      v4 = 0.0;
    }

    [v0 bounds];
    if (v5 > v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    if (v6 <= v4)
    {
      v6 = v4;
    }

    [v0 setMaxWidth_];
  }
}

Swift::Void __swiftcall CollaborationAttributionView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for CollaborationAttributionView();
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    isa = [(objc_class *)isa preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!isa)
  {

    goto LABEL_11;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    return;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    [v1 invalidateIntrinsicContentSize];
  }
}

id CollaborationAttributionView.makePlaceholderSlotContent(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR___SLCollaborationAttributionView_variant];
  v5 = v4 == 4 || v4 == 1;
  if (v5 && ([v2 maxWidth], v6 > 0.0))
  {
    v7 = *&v2[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration];
    v8 = objc_opt_self();
    v9 = v7;
    [v2 maxWidth];
    v10 = [v8 placeholderTagForMaxWidth:v9 placeholderGlyphConfiguration:?];
    v11 = [objc_allocWithZone(SLDCollaborationAttributionViewSlotDrawer) init];
    result = [v11 drawingWithStyle:a1 tag:v10 forRemote:0];
    if (result)
    {
      v13 = [objc_opt_self() contentWithDrawing:result style:a1];

      swift_unknownObjectRelease();
      return v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    [v2 bounds];
    return [objc_allocWithZone(SLDCollaborationAttributionViewEmptySlotContent) initWithStyle:a1 variant:v4 maxWidth:*&v2[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] placeholderGlyphConfig:0 forRemote:CGRectGetWidth(v14)];
  }

  return result;
}

void CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for collaborationRenderer != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.collaborationRenderer);
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40 = v16;
    v23 = v12;
    v24 = v9;
    v25 = v5;
    v26 = a3;
    v27 = a4;
    v28 = v22;
    *v21 = 134218242;
    *(v21 + 4) = v44;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = v18;
    v29 = v18;
    _os_log_impl(&dword_231772000, v19, v20, "Received request to render remote content for layerID: %ld style: %@", v21, 0x16u);
    outlined destroy of NSObject?(v28);
    v30 = v28;
    a4 = v27;
    a3 = v26;
    v5 = v25;
    v9 = v24;
    v12 = v23;
    v16 = v40;
    MEMORY[0x2319361B0](v30, -1, -1);
    MEMORY[0x2319361B0](v21, -1, -1);
  }

  v31 = [v5 serviceProxy];
  v32 = [v31 collaborationAttributionViewService];

  if (v32)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v33 = static OS_dispatch_queue.main.getter();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v36 = v44;
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v18;
    v35[5] = v32;
    v35[6] = a3;
    v35[7] = a4;
    aBlock[4] = partial apply for closure #1 in CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:);
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_1;
    v37 = _Block_copy(aBlock);
    v38 = v18;
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x2319348A0](0, v16, v12, v37);
    _Block_release(v37);
    swift_unknownObjectRelease();

    (*(v43 + 8))(v12, v9);
    (*(v41 + 8))(v16, v42);
  }
}

void closure #1 in CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a2;
  v86 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v80 = a3;
  v81 = a4;
  v82 = a6;
  v83 = v18;
  v84 = v15;
  v20 = MEMORY[0x277D85000];
  v21 = *((*MEMORY[0x277D85000] & *Strong) + 0xB8);
  v88 = Strong;
  v22 = v21();
  if (v22)
  {
    v23 = v22;
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (!v24)
    {
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v88;
  v26 = (*((*v20 & *v88) + 0xE8))();
  if (!v27)
  {
    if (v24)
    {
      v29 = [v24 fileName];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v30;

      v25 = v88;
      v28 = v21();
      if (v28)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v87 = 0x8000000231846880;
      v79 = 0xD000000000000017;
      v28 = (v21)(v26);
      if (v28)
      {
        goto LABEL_11;
      }
    }

LABEL_34:

    if (one-time initialization token for collaborationRenderer != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Log.collaborationRenderer);
    v65 = v25;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      aBlock[0] = v69;
      *v68 = 136315138;
      v90 = v21();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11SLHighlightCSgMd, &_sSo11SLHighlightCSgMR);
      v70 = String.init<A>(describing:)();
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, aBlock);

      *(v68 + 4) = v72;
      _os_log_impl(&dword_231772000, v66, v67, "AttributionIdentifiers for highlight: %s are nil, dropping remote render request.", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x2319361B0](v69, -1, -1);
      MEMORY[0x2319361B0](v68, -1, -1);
    }

    else
    {
    }

    return;
  }

  v79 = v26;
  v87 = v27;
  v28 = v21();
  if (!v28)
  {
    goto LABEL_34;
  }

LABEL_11:
  v31 = v28;
  v32 = [v28 attributions];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLAttribution, off_278924CF8);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v33 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v74 = v13;
    v75 = v14;
    v76 = v10;
    v77 = v9;
    v78 = v24;
    v24 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v35 = 0;
    v89 = v33 & 0xC000000000000001;
    while (1)
    {
      if (v89)
      {
        v36 = MEMORY[0x231934AB0](v35, v33);
      }

      else
      {
        if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v36 = *(v33 + 8 * v35 + 32);
      }

      v10 = v36;
      v37 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v13 = i;
      v38 = [v36 uniqueIdentifier];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
      }

      v14 = v24[2];
      v41 = v24[3];
      v10 = (v14 + 1);
      if (v14 >= v41 >> 1)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v14 + 1, 1, v24);
      }

      v24[2] = v10;
      v42 = &v24[2 * v14];
      v42[4] = v9;
      v42[5] = v40;
      ++v35;
      i = v13;
      if (v37 == v13)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_26:

  v43 = v88;
  [v43 maxWidth];
  if (v44 <= 0.0)
  {

    if (one-time initialization token for collaborationRenderer != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Log.collaborationRenderer);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v78;
    if (v61)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_231772000, v59, v60, "maxWidth is 0.0, dropping remote render request.", v63, 2u);
      MEMORY[0x2319361B0](v63, -1, -1);
    }
  }

  else
  {
    v45 = [v43 remoteRenderingQueue];

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v85;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v79;
    v50 = v80;
    v47[4] = v80;
    v47[5] = v49;
    v51 = v86;
    v47[6] = v87;
    v47[7] = v24;
    v52 = v82;
    v47[8] = v81;
    v47[9] = v51;
    v47[10] = v52;
    aBlock[4] = partial apply for closure #2 in closure #1 in CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:);
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_46_0;
    v53 = _Block_copy(aBlock);

    v54 = v50;
    swift_unknownObjectRetain();

    v55 = v83;
    static DispatchQoS.unspecified.getter();
    v90 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v56 = v74;
    v57 = v77;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x2319348A0](0, v55, v56, v53);
    _Block_release(v53);

    (v76[1])(v56, v57);
    (*(v84 + 8))(v55, v75);
  }
}

void closure #2 in closure #1 in CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong maxWidth];
    CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:)(a2, a3, a4, a5, a6, a7, a8, a9, v18);
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t closure #1 in CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:)(void *a1, uint64_t a2, double a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v38 = a7;
  v39 = a5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v16 = *(v40 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v40);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for collaborationRenderer != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.collaborationRenderer);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = a2;
    v25 = v23;
    *v23 = 134217984;
    *(v23 + 4) = v24;
    _os_log_impl(&dword_231772000, v21, v22, "Finished render request layerID: %ld", v23, 0xCu);
    MEMORY[0x2319361B0](v25, -1, -1);
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v26 = static OS_dispatch_queue.main.getter();
  v27 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v29 = swift_allocObject();
  v30 = v39;
  *(v29 + 16) = v27;
  *(v29 + 24) = v30;
  *(v29 + 32) = a1;
  *(v29 + 40) = a3;
  *(v29 + 48) = a6;
  v31 = v36;
  *(v29 + 56) = v38;
  *(v29 + 64) = v31;
  aBlock[4] = partial apply for closure #1 in closure #1 in CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:);
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_33;
  v32 = _Block_copy(aBlock);
  v33 = a1;

  v34 = v30;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2319348A0](0, v19, v15, v32);
  _Block_release(v32);

  (*(v37 + 8))(v15, v12);
  return (*(v16 + 8))(v19, v40);
}

void closure #1 in closure #1 in CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:)(double a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [v10 setLastRenderedSlotStyle_];
    [v10 setRemoteContentIsLoaded_];

    if (a4)
    {
      v11 = a4;
      a5();
      [v10 setNeedsLayout];
      v12 = [v10 layoutIfNeeded];
      v13 = (*((*MEMORY[0x277D85000] & *v10) + 0x88))(v12);
      if (v13)
      {
        [v13 collaborationAttributionViewDidLoadNewRemoteContent_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_23183D7F0;
      swift_getMetatypeMetadata();
      v15 = String.init<A>(describing:)();
      v17 = v16;
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      *(v14 + 96) = type metadata accessor for CollaborationAttributionView();
      *(v14 + 104) = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CollaborationAttributionView and conformance NSObject, v18, type metadata accessor for CollaborationAttributionView);
      *(v14 + 72) = v10;
      *(v14 + 136) = MEMORY[0x277D85048];
      *(v14 + 144) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v14 + 112) = a1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
      v19 = v10;
      v11 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UISSlotRemoteContent?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id CollaborationAttributionView.__allocating_init(serviceProxyClass:maxWidth:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v3 initWithServiceProxyClass:ObjCClassFromMetadata maxWidth:a1];
}

id CollaborationAttributionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CollaborationAttributionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollaborationAttributionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized CollaborationAttributionView.init(highlight:variant:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR___SLCollaborationAttributionView_remoteContentDidLoad];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR___SLCollaborationAttributionView_highlight;
  *&v2[OBJC_IVAR___SLCollaborationAttributionView_highlight] = 0;
  v7 = &v2[OBJC_IVAR___SLCollaborationAttributionView_title];
  *v7 = 0;
  v7[1] = 0;
  v2[OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds] = 0;
  swift_beginAccess();
  *&v2[v6] = a1;
  v8 = objc_allocWithZone(SLDImageSymbolConfiguration);
  v9 = a1;
  v10 = MEMORY[0x231934530](0xD000000000000022, 0x80000002318465A0);
  v11 = [v8 initWithName:v10 coreUISize:2 weight:3 pointSize:22.0];

  v12 = OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration;
  *&v2[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] = v11;
  *&v2[OBJC_IVAR___SLCollaborationAttributionView_variant] = a2;
  v13 = [objc_opt_self() mainScreen];
  [v13 scale];
  v15 = v14;

  [*&v2[v12] minViableSizeWithDisplayScale:0 RTL:0 darkMode:v15];
  v17 = 44.0;
  if (a2 != 4)
  {
    v17 = 0.0;
  }

  if (v16 > v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLDCollaborationAttributionViewService, off_278924DA8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CollaborationAttributionView();
  return objc_msgSendSuper2(&v21, sel_initWithServiceProxyClass_maxWidth_, ObjCClassFromMetadata, v18);
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
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

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void partial apply for closure #1 in closure #1 in CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  closure #1 in closure #1 in CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:)(*(v0 + 40), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 48));
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

BOOL static NodeIdentity.< infix(_:_:)()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  NodeIdentity.hash.getter(&v12 - v6);
  v8 = SHA256Digest.hashValue.getter();
  v9 = *(v1 + 8);
  v9(v7, v0);
  NodeIdentity.hash.getter(v5);
  v10 = SHA256Digest.hashValue.getter();
  v9(v5, v0);
  return v8 < v10;
}

uint64_t NodeIdentity.hash.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SHA256();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for P256.Signing.PublicKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for NodeIdentity(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of NodeIdentity(v1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v16, v8);
    v17 = SHA256.init()();
    v18 = MEMORY[0x2319343F0](v17);
    v20 = v19;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v18, v19);
    outlined consume of Data._Representation(v18, v20);
    SHA256.finalize()();
    (*(v9 + 8))(v12, v8);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v22 = type metadata accessor for SHA256Digest();
    return (*(*(v22 - 8) + 32))(a1, v16, v22);
  }
}

uint64_t outlined init with copy of NodeIdentity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static NodeIdentity.== infix(_:_:)()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  NodeIdentity.hash.getter(&v11 - v6);
  NodeIdentity.hash.getter(v5);
  lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
  v8 = static Digest.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance NodeIdentity()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  NodeIdentity.hash.getter(&v12 - v6);
  v8 = SHA256Digest.hashValue.getter();
  v9 = *(v1 + 8);
  v9(v7, v0);
  NodeIdentity.hash.getter(v5);
  v10 = SHA256Digest.hashValue.getter();
  v9(v5, v0);
  return v8 < v10;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance NodeIdentity()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  NodeIdentity.hash.getter(&v12 - v6);
  v8 = SHA256Digest.hashValue.getter();
  v9 = *(v1 + 8);
  v9(v7, v0);
  NodeIdentity.hash.getter(v5);
  v10 = SHA256Digest.hashValue.getter();
  v9(v5, v0);
  return v8 >= v10;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance NodeIdentity()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  NodeIdentity.hash.getter(&v12 - v6);
  v8 = SHA256Digest.hashValue.getter();
  v9 = *(v1 + 8);
  v9(v7, v0);
  NodeIdentity.hash.getter(v5);
  v10 = SHA256Digest.hashValue.getter();
  v9(v5, v0);
  return v8 >= v10;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance NodeIdentity()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  NodeIdentity.hash.getter(&v12 - v6);
  v8 = SHA256Digest.hashValue.getter();
  v9 = *(v1 + 8);
  v9(v7, v0);
  NodeIdentity.hash.getter(v5);
  v10 = SHA256Digest.hashValue.getter();
  v9(v5, v0);
  return v8 < v10;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeIdentity()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  NodeIdentity.hash.getter(&v11 - v6);
  NodeIdentity.hash.getter(v5);
  lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
  v8 = static Digest.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t MerkleNode.parent.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t MerkleNode.parent.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t MerkleNode.hash.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SHA256();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for P256.Signing.PublicKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for NodeIdentity(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of NodeIdentity(v1 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v16, v8);
    v17 = SHA256.init()();
    v18 = MEMORY[0x2319343F0](v17);
    v20 = v19;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v18, v19);
    outlined consume of Data._Representation(v18, v20);
    SHA256.finalize()();
    (*(v9 + 8))(v12, v8);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v22 = type metadata accessor for SHA256Digest();
    return (*(*(v22 - 8) + 32))(a1, v16, v22);
  }
}

uint64_t MerkleNode.__allocating_init(node:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_parent) = 0;
  *(v5 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_left) = 0;
  *(v5 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_right) = 0;
  outlined init with take of NodeIdentity(a1, v5 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);
  return v5;
}

uint64_t MerkleNode.init(node:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_parent) = 0;
  *(v1 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_left) = 0;
  *(v1 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_right) = 0;
  outlined init with take of NodeIdentity(a1, v1 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);
  return v1;
}

uint64_t MerkleNode.deinit()
{
  outlined destroy of NodeIdentity(v0 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);
  v1 = *(v0 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_parent);

  v2 = *(v0 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_left);

  v3 = *(v0 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_right);

  return v0;
}

uint64_t MerkleNode.__deallocating_deinit()
{
  outlined destroy of NodeIdentity(v0 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);
  v1 = *(v0 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_parent);

  v2 = *(v0 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_left);

  v3 = *(v0 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_right);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t MerkleTree.root.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t MerkleTree.root.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t MerkleTree.rootHash.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*v1 + 96))();
  if (v3)
  {
    (*(*v3 + 184))(v3);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for SHA256Digest();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t MerkleTree.__allocating_init(nodeIdentities:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MerkleTree.init(nodeIdentities:)(a1);
  return v2;
}

uint64_t MerkleTree.init(nodeIdentities:)(uint64_t a1)
{
  v3 = type metadata accessor for NodeIdentity(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  v8 = *(a1 + 16);
  if (v8)
  {
    v22[1] = v1 + 24;
    v23 = v1;
    v24 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(v4 + 80);
    v22[0] = a1;
    v10 = a1 + ((v9 + 32) & ~v9);
    v11 = *(v4 + 72);
    do
    {
      outlined init with copy of NodeIdentity(v10, v7);
      v12 = type metadata accessor for MerkleNode(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      v15 = swift_allocObject();
      *(v15 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_parent) = 0;
      *(v15 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_left) = 0;
      *(v15 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_right) = 0;
      outlined init with take of NodeIdentity(v7, v15 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = *(v24 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      --v8;
    }

    while (v8);

    v1 = v23;
    v17 = v24;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  *(v1 + 16) = v17;

  v19 = MerkleTree.buildTree(nodes:)(v18);

  swift_beginAccess();
  v20 = *(v1 + 24);
  *(v1 + 24) = v19;

  return v1;
}

uint64_t MerkleTree.verify(node:)(uint64_t a1)
{
  v53 = a1;
  v54[2] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for SHA256();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  MEMORY[0x28223BE20](v3);
  v43 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for P256.Signing.PublicKey();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for NodeIdentity(0);
  v10 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v42 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = *(v1 + 16);
  if (v20 >> 62)
  {
LABEL_35:
    v2 = v20;
    result = __CocoaSet.count.getter();
    v20 = v2;
    if (!result)
    {
      goto LABEL_31;
    }
  }

  else
  {
    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_31;
    }
  }

  v35[1] = v1;
  v22 = 0;
  v48 = v20 & 0xFFFFFFFFFFFFFF8;
  v49 = v20 & 0xC000000000000001;
  v41 = (v13 + 32);
  v39 = v3;
  v40 = (v7 + 32);
  v37 = (v4 + 8);
  v38 = (v7 + 8);
  v46 = (v13 + 8);
  v47 = v17;
  v13 = v42;
  v7 = v43;
  v36 = v19;
  v44 = result;
  v45 = v20;
  while (!v49)
  {
    if (v22 >= *(v48 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v3 = *(v20 + 8 * v22 + 32);

    v17 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
      goto LABEL_29;
    }

LABEL_7:
    outlined init with copy of NodeIdentity(v53, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = v50;
      (*v40)(v50, v13, v51);
      v23 = SHA256.init()();
      v24 = MEMORY[0x2319343F0](v23);
      v13 = v24;
      v7 = v20;
      v25 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v25 != 2)
        {
          lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
          memset(v54, 0, 14);
          goto LABEL_22;
        }

        v19 = *(v24 + 16);
        v27 = *(v24 + 24);
        v1 = v20 & 0x3FFFFFFFFFFFFFFFLL;
        if (__DataStorage._bytes.getter())
        {
          v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
          if (__OFSUB__(v19, __DataStorage._offset.getter()))
          {
            __break(1u);
LABEL_38:
            __break(1u);
          }
        }

        v28 = __OFSUB__(v27, v19);
        v4 = (v27 - v19);
        if (v28)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (!v25)
        {
          v54[0] = v24;
          LOWORD(v54[1]) = v20;
          BYTE2(v54[1]) = BYTE2(v20);
          BYTE3(v54[1]) = BYTE3(v20);
          BYTE4(v54[1]) = BYTE4(v20);
          BYTE5(v54[1]) = BYTE5(v20);
          lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
LABEL_22:
          v29 = v43;
          v30 = v39;
          dispatch thunk of HashFunction.update(bufferPointer:)();
          outlined consume of Data._Representation(v13, v7);
          goto LABEL_23;
        }

        v4 = v24;
        v19 = ((v24 >> 32) - v24);
        if (v24 >> 32 < v24)
        {
          goto LABEL_33;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v13, __DataStorage._offset.getter()))
        {
          goto LABEL_38;
        }
      }

      MEMORY[0x231933EB0]();
      lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      v29 = v43;
      v30 = v39;
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v13, v7);
      v19 = v36;
LABEL_23:
      SHA256.finalize()();
      (*v38)(v50, v51);
      v26 = (*v37)(v29, v30);
      v7 = v29;
      v13 = v42;
      goto LABEL_24;
    }

    v26 = (*v41)(v19, v13, v12);
LABEL_24:
    v2 = v19;
    v19 = v47;
    (*(*v3 + 184))(v26);
    lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
    if (static Digest.== infix(_:_:)())
    {
      goto LABEL_30;
    }

    v1 = v46;
    v4 = *v46;
    (*v46)(v19, v12);
    v4(v2, v12);
    ++v22;
    v20 = v45;
    v19 = v2;
    if (v17 == v44)
    {
      result = 0;
      goto LABEL_31;
    }
  }

  v3 = MEMORY[0x231934AB0](v22, v20);
  v17 = (v22 + 1);
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_7;
  }

LABEL_29:
  __break(1u);
LABEL_30:

  v32 = MerkleTree.generateProofOfInclusion(node:)(v31);

  v33 = *v46;
  (*v46)(v19, v12);
  v33(v2, v12);
  result = v32;
LABEL_31:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MerkleTree.buildTree(nodes:)(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return v3;
  }

LABEL_3:
  if (v3 != 1)
  {
    v5 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
    if (v3 < 1)
    {
LABEL_24:
      v11 = MerkleTree.buildTree(nodes:)(v5);

      return v11;
    }

    v6 = 0;
    while ((a1 & 0xC000000000000001) == 0)
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v2 = (a1 + 8 * v6);
      v7 = v2[4];

      if ((v6 + 1) >= v3)
      {
        goto LABEL_18;
      }

      if (v6 + 1 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v8 = v2[5];

LABEL_19:
      specialized MerkleTree.createParent(leftNode:rightNode:)(v7, v8);

      MEMORY[0x2319346D0](v9);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v2 = &v13;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v10 = v6 + 2;
      if (__OFADD__(v6, 2))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v3 = __CocoaSet.count.getter();
        if (!v3)
        {
          return v3;
        }

        goto LABEL_3;
      }

      v6 += 2;
      if (v10 >= v3)
      {
        v5 = v13;
        goto LABEL_24;
      }
    }

    v7 = MEMORY[0x231934AB0](v6, a1);
    if ((v6 + 1) < v3)
    {
      v8 = MEMORY[0x231934AB0]();
      goto LABEL_19;
    }

LABEL_18:

    v8 = v7;
    goto LABEL_19;
  }

  if (!v2)
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    return 0;
  }

LABEL_6:
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x231934AB0](0, a1);
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in MerkleTree.createParent(leftNode:rightNode:)()
{
  MEMORY[0x2319346B0]();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

void *MerkleTree.generateProofOfInclusion(node:)(uint64_t a1)
{
  v3 = type metadata accessor for SHA256Digest();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  if (!a1)
  {
    return result;
  }

  v9 = *(*v1 + 96);

  v11 = v9(v10);
  if (v11)
  {
    v12 = v11;

    if (v12 == a1)
    {
      goto LABEL_15;
    }
  }

  v13 = *(*a1 + 112);
  v14 = v13();
  if (v14)
  {
    v15 = (*(*v14 + 136))(v14);

    if (v15)
    {

      if (v15 == a1)
      {
        v17 = (v13)(v16);
        if (v17)
        {
          v18 = (*(*v17 + 160))(v17);
          goto LABEL_11;
        }

LABEL_15:

        return MEMORY[0x277D84F90];
      }
    }
  }

  v19 = v13();
  if (!v19)
  {
    goto LABEL_15;
  }

  v18 = (*(*v19 + 136))(v19);
LABEL_11:
  v20 = v18;

  if (!v20)
  {
    goto LABEL_15;
  }

  (*(*v20 + 184))(v21);
  v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = v22[2];
  v23 = v22[3];
  v25 = v24 + 1;
  if (v24 >= v23 >> 1)
  {
    v29 = v24 + 1;
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v22);
    v25 = v29;
    v22 = v28;
  }

  v22[2] = v25;
  v26 = (*(v4 + 32))(v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v7, v3);
  v30 = v22;
  (*(*v20 + 112))(v26);
  v27 = MerkleTree.generateProofOfInclusion(node:)();

  specialized Array.append<A>(contentsOf:)(v27);

  return v30;
}

uint64_t MerkleTree.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t MerkleTree.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t outlined init with take of NodeIdentity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NodeIdentity(uint64_t a1)
{
  v2 = type metadata accessor for NodeIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for NodeIdentity()
{
  result = type metadata accessor for SHA256Digest();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for P256.Signing.PublicKey();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for MerkleNode()
{
  result = type metadata accessor for NodeIdentity(319);
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

uint64_t specialized MerkleTree.createParent(leftNode:rightNode:)(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for NodeIdentity(0);
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SHA256Digest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = SHA256.init()();
  (*(*a1 + 184))(v16);
  v35 = v15;
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v17 = *(v8 + 8);
  v18 = v17(v11, v7);
  (*(*a2 + 184))(v18);
  v34 = v15;
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v17(v11, v7);
  SHA256.finalize()();
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for MerkleNode(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_parent) = 0;
  *(v22 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_left) = 0;
  *(v22 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_right) = 0;
  outlined init with take of NodeIdentity(v6, v22 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);
  v23 = *(*a1 + 120);
  v24 = swift_retain_n();
  v23(v24);
  (*(*a2 + 120))(v22);
  v25 = OBJC_IVAR____TtC11SocialLayer10MerkleNode_left;
  swift_beginAccess();
  v26 = *(v22 + v25);
  *(v22 + v25) = a1;

  v27 = OBJC_IVAR____TtC11SocialLayer10MerkleNode_right;
  swift_beginAccess();
  v28 = *(v22 + v27);
  *(v22 + v27) = a2;

  (*(v32 + 8))(v15, v33);
  return v22;
}

uint64_t ProcessVerifierError.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProcessVerifierError()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ProcessVerifier.useStaticKeyForTesting.getter()
{
  v1 = OBJC_IVAR___SLDProcessVerifier_useStaticKeyForTesting;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ProcessVerifier.useStaticKeyForTesting.setter(char a1)
{
  v3 = OBJC_IVAR___SLDProcessVerifier_useStaticKeyForTesting;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ProcessVerifier.staticTestingKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SymmetricKeySize();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgSgMd, &_s9CryptoKit12SymmetricKeyVSgSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = OBJC_IVAR___SLDProcessVerifier____lazy_storage___staticTestingKey;
  swift_beginAccess();
  outlined init with copy of (NSAttributedStringKey, Any)(v1 + v12, v11, &_s9CryptoKit12SymmetricKeyVSgSgMd, &_s9CryptoKit12SymmetricKeyVSgSgMR);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return outlined init with take of SymmetricKey?(v11, a1);
  }

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v11, &_s9CryptoKit12SymmetricKeyVSgSgMd, &_s9CryptoKit12SymmetricKeyVSgSgMR);
  v15 = OBJC_IVAR___SLDProcessVerifier_useStaticKeyForTesting;
  swift_beginAccess();
  if (*(v1 + v15) == 1)
  {
    static SymmetricKeySize.bits128.getter();
    SymmetricKey.init(size:)();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = type metadata accessor for SymmetricKey();
  (*(*(v18 - 8) + 56))(a1, v16, 1, v18);
  outlined init with copy of (NSAttributedStringKey, Any)(a1, v9, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  outlined assign with take of SymmetricKey??(v9, v1 + v12);
  return swift_endAccess();
}

uint64_t static ProcessVerifier.tagData(from:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static String.Encoding.utf8.getter();
    a2 = String.data(using:allowLossyConversion:)();
    (*(v4 + 8))(v7, v3);
  }

  return a2;
}

uint64_t ProcessVerifier.sign(process:tag:)(void *a1, uint64_t a2, unint64_t a3)
{
  v46[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SymmetricKey();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v45 = 0;
  v12 = [v11 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v45];
  v13 = v45;
  if (!v12)
  {
    v17 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  v42 = v7;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  ProcessVerifier.acquireKey()(v10);
  if (v3)
  {
    outlined consume of Data._Representation(v14, v16);
LABEL_6:
    if (one-time initialization token for ProcessVerifier != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.ProcessVerifier);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46[0] = v23;
      *v22 = 136315138;
      v45 = ObjectType;
      swift_getMetatypeMetadata();
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v46);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_231772000, v20, v21, "sign() caught error: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2319361B0](v23, -1, -1);
      MEMORY[0x2319361B0](v22, -1, -1);
    }

    swift_willThrow();
    goto LABEL_11;
  }

  v18 = v14;
  v21 = specialized ProcessVerifier.createSealedBox(from:using:tag:)(v14, v16, v10, a2, a3);
  ObjectType = v16;
  if (one-time initialization token for ProcessVerifier != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Log.ProcessVerifier);
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v42;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v41 = v18;
    v36 = v35;
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v30;
    *v37 = v30;
    v38 = v30;
    _os_log_impl(&dword_231772000, v31, v32, "sign() successfully signed process: %@", v36, 0xCu);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v37, -1, -1);
    v39 = v36;
    v18 = v41;
    v34 = v42;
    MEMORY[0x2319361B0](v39, -1, -1);
  }

  outlined consume of Data._Representation(v18, ObjectType);

  (*(v43 + 8))(v10, v34);
LABEL_11:
  v27 = *MEMORY[0x277D85DE8];
  return v21;
}