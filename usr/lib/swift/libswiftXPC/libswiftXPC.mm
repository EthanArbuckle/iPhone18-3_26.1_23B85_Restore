uint64_t XPCSession.__allocating_init(fromConnection:targetQueue:options:incomingMessageHandler:cancellationHandler:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = *a3;
  aBlock = 0;
  v12 = _swift__xpc_session_create_from_connection_4SWIFT(a1, a2);
  type metadata accessor for XPCSession();
  v13 = swift_allocObject();
  v14 = v13;
  if (!v12)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)();
  }

  v41 = v11;
  *(v13 + 16) = v12;
  if (a4)
  {
    v15 = v12;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4);
    v16 = v15;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4);
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
    v17 = ClientSpecifiedHandler.init(_:)(a4);
    v40 = a7;
    v19 = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
    *(v21 + 24) = v20;
    v39 = *(v14 + 16);
    v22 = swift_allocObject();
    *(v22 + 16) = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
    *(v22 + 24) = v21;
    v46 = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
    v47 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v45 = &block_descriptor_231;
    v23 = a6;
    v24 = _Block_copy(&aBlock);

    _swift_xpc_session_set_incoming_message_handler(v39, v24);
    v25 = v24;
    a6 = v23;
    _Block_release(v25);
    a7 = v40;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4);
    if (!v23)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v38 = v12;
  swift_unknownObjectRetain_n();
  if (a6)
  {
LABEL_4:
    v26 = swift_allocObject();
    *(v26 + 16) = a6;
    *(v26 + 24) = a7;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6);

    v27 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply);
    v29 = v28;
    v30 = a6;
    v31 = *(v14 + 16);
    v32 = swift_allocObject();
    *(v32 + 16) = v27;
    *(v32 + 24) = v29;
    v46 = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    v47 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v45 = &block_descriptor_216;
    v33 = _Block_copy(&aBlock);

    v34 = v31;
    a6 = v30;
    _swift_xpc_session_set_cancel_handler(v34, v33);
    _Block_release(v33);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v30);
  }

LABEL_5:
  if (v41)
  {
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  XPCSession.activate()();
  swift_unknownObjectRelease();

  if (!v35)
  {
LABEL_10:
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6);
    goto LABEL_11;
  }

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4);
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6);

LABEL_11:

  swift_unknownObjectRelease_n();
  v36 = *MEMORY[0x1E69E9840];
  return v14;
}

{
  v49 = *MEMORY[0x1E69E9840];
  v10 = *a3;
  aBlock = 0;
  v40 = v10;
  v11 = _swift__xpc_session_create_from_connection_4SWIFT(a1, a2);
  type metadata accessor for XPCSession();
  v12 = swift_allocObject();
  v13 = v12;
  if (!v11)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)();
  }

  *(v12 + 16) = v11;
  v41 = v12;
  if (a4)
  {
    v39 = a7;
    v14 = v11;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4);
    v15 = v14;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4);
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v16 = ClientSpecifiedHandler.init(_:)(a4);
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v18;
    v20 = *(v13 + 16);
    v21 = swift_allocObject();
    *(v21 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
    *(v21 + 24) = v19;
    v47 = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
    v48 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v46 = &block_descriptor_205;
    v22 = a6;
    v23 = _Block_copy(&aBlock);

    _swift_xpc_session_set_incoming_message_handler(v20, v23);
    v24 = v23;
    a6 = v22;
    _Block_release(v24);

    a7 = v39;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4);
    if (!v22)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v36 = v11;
  swift_unknownObjectRetain_n();
  if (a6)
  {
LABEL_4:
    v25 = swift_allocObject();
    *(v25 + 16) = a6;
    *(v25 + 24) = a7;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6);

    v26 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply);
    v28 = v27;
    v29 = a6;
    v30 = *(v41 + 16);
    v31 = swift_allocObject();
    *(v31 + 16) = v26;
    *(v31 + 24) = v28;
    v47 = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    v48 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v46 = &block_descriptor_194;
    v32 = _Block_copy(&aBlock);

    v33 = v30;
    a6 = v29;
    _swift_xpc_session_set_cancel_handler(v33, v32);
    _Block_release(v32);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v29);
  }

LABEL_5:
  if (v40)
  {
    swift_unknownObjectRelease();

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4);
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6);

    swift_unknownObjectRelease_n();
    v34 = v41;
  }

  else
  {
    v34 = v41;
    XPCSession.activate()();
    swift_unknownObjectRelease();

    if (v35)
    {

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4);
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6);
    }

    else
    {
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4);

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6);
    }

    swift_unknownObjectRelease_n();
  }

  v37 = *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id _swift__xpc_session_create_from_connection_4SWIFT(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _xpc_session_create_from_connection_4SWIFT();

  return v5;
}

uint64_t ClientSpecifiedHandler.init(_:)(uint64_t a1)
{

  return a1;
}

void _swift_xpc_session_set_incoming_message_handler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_session_set_incoming_message_handler(v3, v4);
}

void _swift_xpc_session_set_incoming_message_handler_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_session_set_incoming_message_handler(v3, v4);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (CodingUserInfoKey, Any)(v10, v6);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CodingUserInfoKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = outlined init with take of Any(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void _swift_xpc_session_set_cancel_handler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_session_set_cancel_handler(v3, v4);
}

void _swift_xpc_session_set_cancel_handler_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_session_set_cancel_handler(v3, v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XPCSession.activate()()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!_swift_xpc_session_activate(*(v0 + 16), v5))
  {
    if (!v5[0])
    {
      __XPC_INTERNAL_CRASH__(_:file:line:)();
    }

    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v2 = v1;
    v3 = swift_unknownObjectRetain_n();
    XPCRichError.init(_:)(v3, v2);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v4 = *MEMORY[0x1E69E9840];
}

BOOL _swift_xpc_session_activate(void *a1, xpc_rich_error_t *a2)
{
  v3 = a1;
  v4 = xpc_session_activate(v3, a2);

  return v4;
}

uint64_t static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, void **a4@<X8>)
{
  v5 = v4;
  empty = xpc_array_create_empty();
  v10 = one-time initialization token for xpcCodable;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for CodingUserInfoKey();
  v12 = __swift_project_value_buffer(v11, static CodingUserInfoKey.xpcCodable);
  v27 = &type metadata for XPCArray;
  *&v25 = empty;
  outlined init with take of Any(&v25, v29);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v12, isUniquelyReferenced_nonNull_native);
  v14 = v30;
  type metadata accessor for TopLevelGraphEncodingNode();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v27 = &type metadata for _TopLevelEncoder;
  v28 = lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder();
  v16 = swift_allocObject();
  *&v25 = v16;
  v17 = MEMORY[0x1E69E7CC0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v16[5] = a3;

  dispatch thunk of Encodable.encode(to:)();
  if (v5)
  {

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v25);

    SerializedEncodingGraph.init(of:)(v19, &protocol witness table for TopLevelGraphEncodingNode, &v25);
    v20 = v26;
    v21 = v27;
    *a4 = xpc_dictionary_create_empty();
    v22 = xpc_int64_create(1);
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(0xD000000000000014, 0x8000000197938DB0, v22, a4);
    swift_unknownObjectRelease();
    swift_unknownObjectRetain_n();
    specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEC00000079646F42, v20, a4);
    swift_unknownObjectRelease();
    v23 = xpc_BOOL_create(a2 & 1);
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEE00636E79537349, v23, a4);
    swift_unknownObjectRelease();
    swift_unknownObjectRetain_n();
    specialized String.withCString<A>(_:)(0xD000000000000011, 0x8000000197938E50, a4, v21);
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(0xD00000000000001FLL, 0x8000000197938EA0, a4, empty);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1978FC00C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t one-time initialization function for xpcCodable()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v4, static CodingUserInfoKey.xpcCodable);
  v5 = __swift_project_value_buffer(v4, static CodingUserInfoKey.xpcCodable);
  CodingUserInfoKey.init(rawValue:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        outlined init with take of Any((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        outlined init with copy of Any(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = outlined init with take of Any(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t XPCSession.send<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)(v5, 0, a2, &v10);

  if (!v3)
  {
    if (_swift_xpc_session_send_message(*(v2 + 16), v10))
    {
      lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
      swift_allocError();
      v8 = v7;
      v9 = swift_unknownObjectRetain();
      XPCRichError.init(_:)(v9, v8);
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CodingUserInfoKey();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v3 = MEMORY[0x19A8E95F0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

uint64_t _TopLevelEncoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for _KeyedEncodingContainer();
  _TopLevelEncoder._encodingContainer<A>(_:)(v9, a2, a3, a4, a5, v9, &protocol witness table for _KeyedEncodingContainer<A>);
  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder()
{
  result = lazy protocol witness table cache variable for type _TopLevelEncoder and conformance _TopLevelEncoder;
  if (!lazy protocol witness table cache variable for type _TopLevelEncoder and conformance _TopLevelEncoder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TopLevelEncoder and conformance _TopLevelEncoder);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = *v4;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return outlined init with take of Any(a1, v22);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t type metadata instantiation function for _KeyedEncodingContainer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v20 = a4;
  v21 = a5;
  v19 = a3;
  v22 = a7;
  v11 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = type metadata accessor for _KeyedEncodingContainer();
  v17 = *(a6 - 8);
  (*(v17 + 16))(v15, a1, a6);
  (*(v17 + 56))(v15, 0, 1, a6);
  _KeyedEncodingContainer._encodingContainer<A>(_:forKey:forType:)(v16, v15, 0, a2, v19, v20, v21, a6, v16, a8, &protocol witness table for _KeyedEncodingContainer<A>);
  (*(v12 + 8))(v15, v11);
  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t _KeyedEncodingContainer._ContainerCodingKey.encodingGraphKey.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return 0;
  }

  (*(v3 + 32))(v7, v10, v2);
  v13 = *(a1 + 24);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if ((v15 & 0x1000000000000000) != 0)
  {
    v16 = static String._copying(_:)();
  }

  else
  {
    v16 = v14;
  }

  (*(v3 + 8))(v7, v2);
  return v16;
}

uint64_t XPC_ERROR_KEY_DESCRIPTION.getter(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t _TopLevelEncoder._encodingContainer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a7 + 40);
  swift_unknownObjectRetain();

  result = v14(a3, a4, a5, v12, v13, a6, a7);
  if (!*(a2 + 16))
  {
    result = (*(a7 + 24))(a6, a7);
    if (*(a2 + 16))
    {
      __break(1u);
    }

    else
    {
      v16 = result;
      swift_getAssociatedTypeWitness();
      result = swift_getAssociatedConformanceWitness();
      *(a2 + 16) = v16;
      *(a2 + 24) = result;
    }
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pMd, &_ss9CodingKey_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO9Container_pGMd, &_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO9Container_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13EncodingGraphO9Container_pMd, &_s3XPC13EncodingGraphO9Container_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t outlined init with copy of CodingKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _KeyedEncodingContainer._encodingContainer<A>(_:forKey:forType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey();
  v17 = _KeyedEncodingContainer._ContainerCodingKey.encodingGraphKey.getter(v16);
  v33 = v18;
  v34 = v17;
  v19 = _KeyedEncodingContainer._existingNode(forKey:)(v17, v18, a4, a5, a6, a7);
  v31 = v20;
  v38 = v16;
  WitnessTable = swift_getWitnessTable();
  v21 = __swift_allocate_boxed_opaque_existential_1(&v35);
  (*(*(v16 - 8) + 16))(v21, a2, v16);
  v22 = CodingInfo.coding(forKey:forType:)(&v35, a3, a4);
  v24 = v23;
  v26 = v25;
  outlined destroy of CodingKey?(&v35);
  v27 = *(a11 + 40);
  swift_unknownObjectRetain();
  v27(v22, v24, v26, v19, v31, a9, a11);
  v28 = (*(a11 + 24))(a9, a11);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = v28;
  v36 = AssociatedConformanceWitness;
  v37 = 0;
  LOBYTE(v38) = 17;
  _KeyedEncodingContainer._encode(_:forKey:)(&v35, v34, v33);
  swift_unknownObjectRelease();

  return outlined consume of EncodingGraph.Value(v35, v36, v37, v38);
}

void *CodingInfo.coding(forKey:forType:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of CodingKey?(a1, &v7);
  if (v8)
  {
    outlined init with take of Encodable(&v7, v9);
    outlined init with copy of Decoder(v9, &v7);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a3[2] + 1, 1, a3);
    }

    v5 = a3[2];
    v4 = a3[3];
    if (v5 >= v4 >> 1)
    {
      a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, a3);
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
    a3[2] = v5 + 1;
    outlined init with take of Encodable(&v7, &a3[5 * v5 + 4]);
  }

  else
  {

    outlined destroy of CodingKey?(&v7);
  }

  return a3;
}

uint64_t protocol witness for _EncodingContainer.init(codingInfo:container:) in conformance _KeyedEncodingContainer<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = _KeyedEncodingContainer.init(codingInfo:container:)(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  a5[3] = v9;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _KeyedEncodingContainer.init(codingInfo:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    goto LABEL_4;
  }

  type metadata accessor for _KeyedGraphEncodingNode();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    __break(1u);
LABEL_4:
    type metadata accessor for _KeyedGraphEncodingNode();
    v5 = swift_allocObject();
    *(v5 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC3XPC13EncodingGraphO3KeyO_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v5 + 24) = &outlined read-only object #0 of _KeyedEncodingContainer.init(codingInfo:container:);
  }

  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC3XPC13EncodingGraphO3KeyO_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOSiGMd, &_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata completion function for _KeyedEncodingContainer._ContainerCodingKey(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t _KeyedEncodingContainer._existingNode(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = _KeyedGraphEncodingNode._valueIndex(forKey:)(a1, a2);
  if (v8)
  {
    return 0;
  }

  v10 = v7;
  result = swift_beginAccess();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(a6 + 24);
  if (v10 >= *(v11 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11 + 32 * v10;
  if (*(v12 + 56) != 17)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  return swift_unknownObjectRetain();
}

uint64_t _KeyedGraphEncodingNode._valueIndex(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v8 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  result = swift_beginAccess();
  v12 = *(v3 + 24);
  v13 = *(v12 + 16);
  if (v11 >= v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 >= v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v12 + 32 * v9;
  if (*(v14 + 56) != 14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = *(v14 + 40);
  if (v15)
  {
    if (a2)
    {
      v16 = *(v14 + 32) == a1 && v15 == a2;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v11;
      }

      __break(1u);
      goto LABEL_15;
    }
  }

  else if (!a2)
  {
    return v11;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with take of Encodable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t outlined init with copy of Decoder(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t outlined destroy of CodingKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _KeyedEncodingContainer._encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9[0] = *a1;
  v9[1] = v5;
  v9[2] = v6;
  v10 = v7;

  outlined copy of EncodingGraph.Value(v9[0], v5, v6, v7);
  return _KeyedGraphEncodingNode.subscript.setter(v9, a2, a3);
}

uint64_t outlined copy of EncodingGraph.Value(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 0xEu)
  {
    if (a4 == 15 || a4 == 17)
    {
      return swift_unknownObjectRetain();
    }
  }

  else if (a4 == 1 || a4 == 14)
  {
  }

  return result;
}

uint64_t _KeyedGraphEncodingNode.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (v4 == 255)
  {
    goto LABEL_18;
  }

  v5 = v3;
  v8 = *result;
  v9 = *(result + 8);
  v10 = *(result + 16);
  v11 = _KeyedGraphEncodingNode._valueIndex(forKey:)(a2, a3);
  if (v12)
  {
    swift_beginAccess();
    v13 = *(*(v3 + 24) + 16);
    swift_beginAccess();
    v14 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v31;
    swift_endAccess();
    swift_beginAccess();
    v16 = *(v3 + 24);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 24) = v16;
    if ((v17 & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      *(v5 + 24) = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v20 = &v16[32 * v19];
    *(v20 + 4) = a2;
    *(v20 + 5) = a3;
    *(v20 + 6) = 0;
    v20[56] = 14;
    *(v5 + 24) = v16;
    outlined copy of EncodingGraph.Value(v8, v9, v10, v4);
    *(v5 + 24) = v16;
    v22 = *(v16 + 2);
    v21 = *(v16 + 3);
    if (v22 >= v21 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v16);
    }

    *(v16 + 2) = v22 + 1;
    v23 = &v16[32 * v22];
    *(v23 + 4) = v8;
    *(v23 + 5) = v9;
    *(v23 + 6) = v10;
    v23[56] = v4;
    *(v5 + 24) = v16;
    swift_endAccess();
    return outlined consume of EncodingGraph.Value?(v8, v9, v10, v4);
  }

  v24 = v11;

  swift_beginAccess();
  v25 = *(v5 + 24);
  outlined copy of EncodingGraph.Value(v8, v9, v10, v4);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 24) = v25;
  if (result)
  {
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
    v25 = result;
    *(v5 + 24) = result;
    if ((v24 & 0x8000000000000000) == 0)
    {
LABEL_12:
      if (v24 < *(v25 + 16))
      {
        v26 = v25 + 32 * v24;
        v27 = *(v26 + 32);
        v28 = *(v26 + 40);
        v29 = *(v26 + 48);
        *(v26 + 32) = v8;
        *(v26 + 40) = v9;
        *(v26 + 48) = v10;
        v30 = *(v26 + 56);
        *(v26 + 56) = v4;
        *(v5 + 24) = v25;
        swift_endAccess();
        outlined consume of EncodingGraph.Value(v27, v28, v29, v30);
        return outlined consume of EncodingGraph.Value?(v8, v9, v10, v4);
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type EncodingGraph.Key and conformance EncodingGraph.Key()
{
  result = lazy protocol witness table cache variable for type EncodingGraph.Key and conformance EncodingGraph.Key;
  if (!lazy protocol witness table cache variable for type EncodingGraph.Key and conformance EncodingGraph.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodingGraph.Key and conformance EncodingGraph.Key);
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO5ValueOGMd, &_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO5ValueOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t EncodingGraph.Container.traverse<A>(initialResult:onContainerEnter:onValueEnter:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, void (*a4)(void *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v51 = a5;
  v43 = a2;
  v44 = a3;
  v41 = a8;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO9Container_pGMd, &_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO9Container_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_197937940;
  *(inited + 32) = v8;
  *(inited + 40) = a7;
  v40 = v13;
  v18 = *(v13 + 16);
  v42 = a6;
  v18(v16, a1, a6);
  v19 = *(inited + 16);
  swift_unknownObjectRetain();
  result = inited;
  do
  {
    while (v19)
    {
      v21 = 0;
      v45 = result + 32;
      v22 = MEMORY[0x1E69E7CC0];
      v46 = v19;
      v47 = result;
      do
      {
        if (v21 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v50 = v21;
        v23 = (v45 + 16 * v21);
        v25 = *v23;
        v24 = v23[1];
        v26 = swift_unknownObjectRetain();
        v43(v26, v24, v16);
        ObjectType = swift_getObjectType();
        v28 = *(v24 + 8);
        v49 = v25;
        v29 = v28(ObjectType, v24);
        v30 = *(v29 + 16);
        v48 = v29;
        if (v30)
        {
          v31 = (v29 + 56);
          do
          {
            v32 = *(v31 - 3);
            v33 = *(v31 - 2);
            v34 = *(v31 - 1);
            v35 = *v31;
            v52[0] = v32;
            v52[1] = v33;
            v52[2] = v34;
            v53 = v35;
            outlined copy of EncodingGraph.Value(v32, v33, v34, v35);
            a4(v52, v16);
            if (v35 == 17)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
              }

              v37 = v22[2];
              v36 = v22[3];
              if (v37 >= v36 >> 1)
              {
                v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v22);
              }

              v22[2] = v37 + 1;
              v38 = &v22[2 * v37];
              v38[4] = v32;
              v38[5] = v33;
            }

            else
            {
              outlined consume of EncodingGraph.Value(v32, v33, v34, v35);
            }

            v31 += 32;
            --v30;
          }

          while (v30);
        }

        v21 = v50 + 1;
        swift_unknownObjectRelease();

        result = v47;
      }

      while (v21 != v46);

      result = v22;
      v19 = v22[2];
      if (!v19)
      {
        goto LABEL_18;
      }
    }

    result = MEMORY[0x1E69E7CC0];
    v19 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  while (v19);
LABEL_18:

  return (*(v40 + 32))(v41, v16, v42);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOs6UInt32VGMd, &_ss18_DictionaryStorageCySOs6UInt32VGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v32 = v3;
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
      v22 = *(*(v5 + 56) + 4 * v20);
      result = MEMORY[0x19A8E95F0](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOSiGMd, &_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOSiGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v22)
      {
        MEMORY[0x19A8E9610](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x19A8E9610](0);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_38;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32V3XPC16DecodedContainerCGMd, &_ss18_DictionaryStorageCys6UInt32V3XPC16DecodedContainerCGMR);
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x19A8E95E0](*(v8 + 40), v22, 4);
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
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOAE5ValueOGMd, &_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOAE5ValueOGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 16 * v21);
      v23 = *(v5 + 56) + 32 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v40 = *(v23 + 16);
      v26 = *(v23 + 24);
      v41 = v22;
      v27 = *(&v22 + 1);
      if ((v39 & 1) == 0)
      {

        outlined copy of EncodingGraph.Value(v24, v25, v40, v26);
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v27)
      {
        MEMORY[0x19A8E9610](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x19A8E9610](0);
      }

      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v41;
      v17 = *(v8 + 56) + 32 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v40;
      *(v17 + 24) = v26;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_38;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t one-time initialization function for allTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
  inited = swift_initStackObject();
  v1 = MEMORY[0x1E69E9E58];
  *(inited + 32) = MEMORY[0x1E69E9ED0];
  *(inited + 40) = v1;
  v2 = MEMORY[0x1E69E9F18];
  *(inited + 48) = MEMORY[0x1E69E9EB0];
  *(inited + 56) = v2;
  v3 = MEMORY[0x1E69E9E78];
  *(inited + 64) = MEMORY[0x1E69E9E88];
  *(inited + 72) = v3;
  v4 = MEMORY[0x1E69E9F10];
  *(inited + 80) = MEMORY[0x1E69E9E70];
  *(inited + 88) = v4;
  v5 = MEMORY[0x1E69E9EA0];
  *(inited + 96) = MEMORY[0x1E69E9F20];
  *(inited + 104) = v5;
  v6 = MEMORY[0x1E69E9EC0];
  *(inited + 112) = MEMORY[0x1E69E9F08];
  *(inited + 120) = v6;
  v7 = MEMORY[0x1E69E9E80];
  *(inited + 128) = MEMORY[0x1E69E9E50];
  *(inited + 136) = v7;
  v8 = MEMORY[0x1E69E9E90];
  *(inited + 144) = MEMORY[0x1E69E9E98];
  *(inited + 152) = v8;
  v9 = MEMORY[0x1E69E9EB8];
  v10 = MEMORY[0x1E69E9EC8];
  *(inited + 16) = xmmword_1979365E0;
  *(inited + 160) = v9;
  *(inited + 168) = v10;
  *(inited + 176) = MEMORY[0x1E69E9EE8];
  v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs13OpaquePointerV_Tt0g5Tf4g_n(inited);
  result = swift_setDeallocating();
  static Set<>.allTypes = v11;
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs13OpaquePointerV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys13OpaquePointerVGMd, &_ss11_SetStorageCys13OpaquePointerVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x19A8E9610](v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x19A8E9610](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x19A8E9610](0);
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t SerializedEncodingGraph.init(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v19 = 0;
  DWORD2(v19) = 0;
  *&v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s6UInt32VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v13 = a1;
  v14 = a2;
  EncodingGraph.Container.traverse<A>(initialResult:onContainerEnter:onValueEnter:)(&v19, partial apply for closure #1 in SerializedEncodingGraph.init(of:), v12, closure #2 in SerializedEncodingGraph.init(of:), 0, &unk_1F0C09A70, a2, &v25);

  init(firstPass:) in SecondPass #1 in SerializedEncodingGraph.init(of:)(v26, &v25);
  v11[2] = a1;
  v11[3] = a2;
  EncodingGraph.Container.traverse<A>(initialResult:onContainerEnter:onValueEnter:)(&v25, partial apply for closure #3 in SerializedEncodingGraph.init(of:), v11, closure #4 in SerializedEncodingGraph.init(of:), 0, &unk_1F0C099E8, a2, v15);
  swift_unknownObjectRelease();
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v26;
  outlined destroy of SecondPass #1 in SerializedEncodingGraph.init(of:)(&v19);
  v29 = v17;
  v30 = v18;
  v27 = v15[2];
  v28 = v16;
  v25 = v15[0];
  v26 = v15[1];
  v7 = *(&v17 + 1);
  v6 = v18;
  v8 = *(&v16 + 1);
  v9 = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = outlined destroy of SecondPass #1 in SerializedEncodingGraph.init(of:)(&v25);
  *a3 = v9;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v8;
  return result;
}

uint64_t XPCData.init(underlyingData:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x19A8E9F90]() != MEMORY[0x1E69E9E70])
  {
    result = swift_unknownObjectRelease();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  length = xpc_data_get_length(a1);
  swift_getObjectType();
  result = OS_xpc_object.isCodable()();
  if (result)
  {
    result = xpc_copy(a1);
    if (result)
    {
      v7 = result;
      result = swift_unknownObjectRelease();
      *a2 = bytes_ptr;
      a2[1] = length;
      a2[2] = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined consume of EncodingGraph.Value(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 0xEu)
  {
    if (a4 == 15 || a4 == 17)
    {
      return swift_unknownObjectRelease();
    }
  }

  else if (a4 == 1 || a4 == 14)
  {
  }

  return result;
}

Swift::Bool __swiftcall OS_xpc_object.isCodable()()
{
  if (one-time initialization token for allTypes != -1)
  {
    swift_once();
  }

  v0 = static Set<>.allTypes;
  v1 = MEMORY[0x19A8E9F90]();

  return specialized Set.contains(_:)(v1, v0);
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x19A8E9610](a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t protocol witness for EncodingGraph.Container.values.getter in conformance TopLevelGraphEncodingNode()
{
  if (!*(v0 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  v4 = *(v1 + 8);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v1);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t encode #1 (value:buffer:nodeMap:) in SerializedEncodingGraph.init(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  switch(*(a1 + 24))
  {
    case 1:
      v9 = 3;
      goto LABEL_19;
    case 2:
      v12 = 4;
      goto LABEL_17;
    case 3:
      v11 = 5;
      goto LABEL_31;
    case 4:
      v11 = 6;
      goto LABEL_31;
    case 5:
      v21 = 7;
      goto LABEL_29;
    case 6:
      v10 = 8;
      goto LABEL_26;
    case 7:
      v12 = 9;
      goto LABEL_17;
    case 8:
      v11 = 10;
      goto LABEL_31;
    case 9:
      v11 = 11;
      goto LABEL_31;
    case 0xA:
      v21 = 12;
LABEL_29:
      specialized XPCBufferWriter.write<A>(_:)(v21);
      return specialized XPCBufferWriter.write<A>(_:)(v3);
    case 0xB:
      v10 = 13;
LABEL_26:
      specialized XPCBufferWriter.write<A>(_:)(v10);
      return specialized XPCBufferWriter.write<A>(_:)(v3);
    case 0xC:
      v12 = 14;
LABEL_17:
      specialized XPCBufferWriter.write<A>(_:)(v12);
      v16 = v3;
      return specialized XPCBufferWriter.write<A>(_:)(v16);
    case 0xD:
      v11 = 15;
LABEL_31:
      specialized XPCBufferWriter.write<A>(_:)(v11);
      return specialized XPCBufferWriter.write<A>(_:)(v3);
    case 0xE:
      if (v4)
      {
        v9 = 17;
LABEL_19:
        specialized XPCBufferWriter.write<A>(_:)(v9);
        v22[0] = v3;
        v22[1] = v4;

        specialized String.withUTF8<A>(_:)(v22, a2);
      }

      else
      {
        v7 = 16;
        return specialized XPCBufferWriter.write<A>(_:)(v7);
      }

    case 0xF:
      specialized XPCBufferWriter.write<A>(_:)(18);
      v13 = *(a2 + 56);
      swift_unknownObjectRetain();
      count = xpc_array_get_count(v13);
      v15 = swift_unknownObjectRetain();
      if (MEMORY[0x19A8E9F90](v15) == MEMORY[0x1E69E9E68])
      {
        xpc_array_set_connection(v13, 0xFFFFFFFFFFFFFFFFLL, v5);
      }

      else
      {
        xpc_array_set_value(v13, 0xFFFFFFFFFFFFFFFFLL, v5);
      }

      outlined consume of EncodingGraph.Value(v3, v4, v5, 0xFu);
      outlined consume of EncodingGraph.Value(v3, v4, v5, 0xFu);
      if (HIDWORD(count))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        JUMPOUT(0x1978FF8C4);
      }

      v16 = count;
      break;
    case 0x10:
      specialized XPCBufferWriter.write<A>(_:)(19);
      return specialized XPCBufferWriter.write<A>(_:)((v3 + 10));
    case 0x11:
      if (!*(a3 + 16))
      {
        goto LABEL_40;
      }

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(*a1);
      if ((v19 & 1) == 0)
      {
        goto LABEL_41;
      }

      v20 = *(*(a3 + 56) + 4 * v18);
      specialized XPCBufferWriter.write<A>(_:)(20);
      v16 = v20;
      break;
    case 0x12:
      v7 = 0;
      return specialized XPCBufferWriter.write<A>(_:)(v7);
    default:
      if (v3)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      return specialized XPCBufferWriter.write<A>(_:)(v7);
  }

  return specialized XPCBufferWriter.write<A>(_:)(v16);
}

uint64_t specialized String.withUTF8<A>(_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if ((v5 & 0x1000000000000000) != 0)
  {
    v11 = static String._copying(_:)();
    v13 = v12;

    v4 = v11;
    *a1 = v11;
    a1[1] = v13;
    v5 = v13;
    if ((v13 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v4 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = _StringObject.sharedUTF8.getter();
      if (v17 < 0)
      {
        __break(1u);
      }

      v7 = v16;
      v8 = v17;
    }

    specialized XPCBufferWriter.write<A>(_:)(v8);
    v9 = *(a2 + 32);
    if (v9 && v7)
    {
      memmove((v9 + *(a2 + 16)), v7, v8);
    }

    v10 = v8;
    goto LABEL_13;
  }

  v18[0] = v4;
  v18[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  specialized XPCBufferWriter.write<A>(_:)(HIBYTE(v5) & 0xF);
  v14 = *(a2 + 32);
  if (v14)
  {
    memcpy((v14 + *(a2 + 16)), v18, HIBYTE(v5) & 0xF);
  }

  v10 = HIBYTE(v5) & 0xF;
LABEL_13:
  XPCBufferWriter.advance(by:)(v10);
  return specialized XPCBufferWriter.write<A>(_:)(0);
}

uint64_t specialized XPCBufferWriter.write<A>(_:)(uint64_t result)
{
  v2 = v1[6];
  v3 = v1[4];
  *(v3 + v2) = result;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  *(v3 + v2 + 1) = BYTE1(result);
  if (__OFADD__(v2, 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v3 + v2 + 2) = BYTE2(result);
  if (__OFADD__(v2, 3))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + v2 + 3) = BYTE3(result);
  if (__OFADD__(v2, 4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v3 + v2 + 4) = BYTE4(result);
  if (__OFADD__(v2, 5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v3 + v2 + 5) = BYTE5(result);
  if (__OFADD__(v2, 6))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v3 + v2 + 6) = BYTE6(result);
  if (__OFADD__(v2, 7))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v3 + v2 + 7) = HIBYTE(result);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v5 - v4;
  v7 = v4 + 8;
  if (v6 < 8)
  {
    v7 = v1[3];
  }

  if (v5 < v7)
  {
    goto LABEL_20;
  }

  v1[2] = v7;
  v1[4] = v3;
  v8 = __OFADD__(v2, 8);
  v9 = v2 + 8;
  if (!v8)
  {
    v1[6] = v9;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

{
  v2 = v1[6];
  v3 = v1[4];
  *(v3 + v2) = result;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v3 + v2 + 1) = BYTE1(result);
  if (__OFADD__(v2, 2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v3 + v2 + 2) = BYTE2(result);
  if (__OFADD__(v2, 3))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + v2 + 3) = BYTE3(result);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v5 - v4;
  v7 = v4 + 4;
  if (v6 < 4)
  {
    v7 = v1[3];
  }

  if (v5 < v7)
  {
    goto LABEL_12;
  }

  v1[2] = v7;
  v1[4] = v3;
  v8 = __OFADD__(v2, 4);
  v9 = v2 + 4;
  if (!v8)
  {
    v1[6] = v9;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

{
  v2 = v1[6];
  v3 = v1[4];
  *(v3 + v2) = result;
  v4 = v1[2];
  v5 = v1[3];
  if (v5 == v4)
  {
    v6 = v1[3];
  }

  else
  {
    v6 = v4 + 1;
  }

  if (v5 < v6)
  {
    __break(1u);
  }

  else
  {
    v1[2] = v6;
    v1[4] = v3;
    v7 = __OFADD__(v2, 1);
    v8 = v2 + 1;
    if (!v7)
    {
      v1[6] = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = v1[6];
  v3 = v1[4];
  *(v3 + v2) = result;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v3 + v2 + 1) = BYTE1(result);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v5 - v4;
  v7 = v4 + 2;
  if (v6 < 2)
  {
    v7 = v1[3];
  }

  if (v5 < v7)
  {
    goto LABEL_8;
  }

  v1[2] = v7;
  v1[4] = v3;
  v8 = __OFADD__(v2, 2);
  v9 = v2 + 2;
  if (!v8)
  {
    v1[6] = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t protocol witness for EncodingGraph.Container.values.getter in conformance _KeyedGraphEncodingNode()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

xpc_rich_error_t _swift_xpc_session_send_message(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = xpc_session_send_message(v3, v4);

  return v5;
}

uint64_t init(firstPass:) in SecondPass #1 in SerializedEncodingGraph.init(of:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  alloc = dispatch_data_create_alloc();
  v5 = xpc_data_create_with_dispatch_data(alloc);
  empty = xpc_array_create_empty();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  XPCData.init(underlyingData:)(v5, v12);
  v7 = v13;
  if (!v13)
  {
    __break(1u);
  }

  v9 = v12[0];
  v8 = v12[1];

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = empty;
  a2[8] = v9;
  a2[9] = v8;
  a2[10] = v7;
  a2[11] = a1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_enum_tag_for_layout_string_3XPC13EncodingGraphO5ValueO(uint64_t a1)
{
  if ((*(a1 + 24) & 0x1Fu) <= 0x11)
  {
    return *(a1 + 24) & 0x1F;
  }

  else
  {
    return (*a1 + 18);
  }
}

uint64_t closure #2 in SerializedEncodingGraph.init(of:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v11[0] = *a1;
  v11[1] = v4;
  v11[2] = v5;
  v12 = v6;
  result = serializedLength #1 (of:) in SerializedEncodingGraph.init(of:)(v11);
  if (__OFADD__(*a2, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  *a2 += result;
  if (v6 != 17)
  {
    return result;
  }

  v8 = *(a2 + 8);
  swift_unknownObjectRetain();
  v9 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[0] = *(a2 + 16);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v3, isUniquelyReferenced_nonNull_native);
  result = outlined consume of EncodingGraph.Value(v3, v4, v5, 0x11u);
  *(a2 + 16) = v11[0];
  if (v8 == -1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(a2 + 8) = v8 + 1;
  return result;
}

uint64_t serializedLength #1 (of:) in SerializedEncodingGraph.init(of:)(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = 0;
  switch(*(a1 + 24))
  {
    case 1:
      v5 = *(a1 + 8);

      if ((v1 & 0x1000000000000000) != 0)
      {
        v8 = static String._copying(_:)();
        v10 = v9;
        outlined consume of EncodingGraph.Value(v2, v1, v3, 1u);
        v2 = v8;
        v1 = v10;
        if ((v10 & 0x2000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_19:

        v2 = HIBYTE(v1) & 0xF;
        goto LABEL_20;
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        goto LABEL_19;
      }

LABEL_8:
      if ((v2 & 0x1000000000000000) == 0)
      {
        goto LABEL_34;
      }

      for (v2 &= 0xFFFFFFFFFFFFuLL; ; v2 = v15)
      {

LABEL_20:
        if (!__OFADD__(v2, 8))
        {
          v4 = v2 + 9;
          if (!__OFADD__(v2 + 8, 1))
          {
            break;
          }

          __break(1u);
        }

        __break(1u);
LABEL_25:
        v11 = static String._copying(_:)();
        v13 = v12;
        outlined consume of EncodingGraph.Value(v2, v1, v3, 0xEu);
        v2 = v11;
        v1 = v13;
        if ((v13 & 0x2000000000000000) != 0)
        {
LABEL_26:

          v7 = HIBYTE(v1) & 0xF;
        }

        else
        {
LABEL_14:
          if ((v2 & 0x1000000000000000) != 0)
          {
            v7 = v2 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            _StringObject.sharedUTF8.getter();
            v7 = v16;
          }
        }

        if (__OFADD__(v7, 8))
        {
          goto LABEL_32;
        }

        v4 = v7 + 9;
        if (!__OFADD__(v7 + 8, 1))
        {
          break;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        _StringObject.sharedUTF8.getter();
      }

LABEL_29:
      result = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      return result;
    case 2:
    case 7:
    case 0xC:
    case 0xF:
    case 0x11:
      v4 = 4;
      goto LABEL_29;
    case 3:
    case 4:
    case 8:
    case 9:
    case 0xD:
      v4 = 8;
      goto LABEL_29;
    case 5:
    case 0xA:
    case 0x10:
      v4 = 1;
      goto LABEL_29;
    case 6:
    case 0xB:
      v4 = 2;
      goto LABEL_29;
    case 0xE:
      if (!v1)
      {
        v4 = 0;
        goto LABEL_29;
      }

      v6 = *(a1 + 8);

      if ((v1 & 0x1000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if ((v1 & 0x2000000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    default:
      goto LABEL_29;
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  v18 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 4 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 4 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #3 in SerializedEncodingGraph.init(of:)(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    return specialized XPCBufferWriter.write<A>(_:)(21);
  }

  return result;
}

uint64_t closure #4 in SerializedEncodingGraph.init(of:)(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return encode #1 (value:buffer:nodeMap:) in SerializedEncodingGraph.init(of:)(&v5, a2, *(a2 + 88));
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t closure #1 in XPCDictionary.forEach(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in closure #1 in XPCDictionary.forEach(_:);
  *(v7 + 24) = v6;
  aBlock[4] = thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_71;
  v8 = _Block_copy(aBlock);

  xpc_dictionary_apply(a3, v8);
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else if (v11)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

uint64_t sub_197900430()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t XPCSession.send<A>(_:replyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy3XPC18XPCReceivedMessageVAC12XPCRichErrorVGMd, &_ss6ResultOy3XPC18XPCReceivedMessageVAC12XPCRichErrorVGMR);
  v9 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply);
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;

  XPCSession._send<A>(_:replyHandler:)(a1, partial apply for implicit closure #2 in implicit closure #1 in XPCSession.send<A>(_:replyHandler:), v12, a4);
}

uint64_t XPCSession._send<A>(_:replyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)(v9, 0, a4, v16);

  if (!v5)
  {
    v11 = v16[0];
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v13 = *(v4 + 16);
    v14 = swift_allocObject();
    v14[2] = partial apply for closure #1 in XPCSession._send<A>(_:replyHandler:);
    v14[3] = v12;
    v16[4] = closure #1 in XPCSession._send(message:replyHandler:)partial apply;
    v16[5] = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?, @guaranteed OS_xpc_object?) -> ();
    v16[3] = &block_descriptor_306;
    v15 = _Block_copy(v16);

    _swift_xpc_session_send_message_with_reply_async(v13, v11, v15);
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized XPCSession.__allocating_init(machService:targetQueue:options:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v9 = *a4;
  v10 = String.utf8CString.getter();

  aBlock[0] = 0;
  v11 = _swift_xpc_session_create_mach_service((v10 + 32), a3, (v9 | 1), aBlock);
  v12 = aBlock[0];
  swift_unknownObjectRetain_n();

  type metadata accessor for XPCSession();
  v13 = swift_allocObject();
  v14 = v13;
  if (v11)
  {
    *(v13 + 16) = v11;
    if (a5)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a5;
      *(v15 + 24) = a6;
      v31 = a3;
      v16 = v11;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5);
      v17 = v16;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5);
      v18 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply);
      v20 = v19;
      v21 = *(v14 + 16);
      v22 = swift_allocObject();
      *(v22 + 2) = v18;
      *(v22 + 3) = v20;
      aBlock[4] = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      aBlock[3] = &block_descriptor_344;
      v23 = _Block_copy(aBlock);

      _swift_xpc_session_set_cancel_handler(v21, v23);
      _Block_release(v23);
      a3 = v31;

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5);
      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v27 = v11;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    XPCSession.activate()();
    if (v28)
    {

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5);

LABEL_11:

      swift_unknownObjectRelease_n();
      goto LABEL_12;
    }

LABEL_10:

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5);
    goto LABEL_11;
  }

  if (!v12)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)();
  }

  lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
  swift_allocError();
  v25 = v24;
  v26 = swift_unknownObjectRetain_n();
  XPCRichError.init(_:)(v26, v25);
  swift_willThrow();
  swift_unknownObjectRelease();

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  swift_unknownObjectRelease();
LABEL_12:
  v29 = *MEMORY[0x1E69E9840];
  return v14;
}

xpc_session_t _swift_xpc_session_create_mach_service(const char *a1, void *a2, xpc_session_create_flags_t a3, xpc_rich_error_t *a4)
{
  v7 = a2;
  mach_service = xpc_session_create_mach_service(a1, v7, a3, a4);

  return mach_service;
}

xpc_session_t _swift_xpc_session_create_mach_service_0(const char *a1, void *a2, xpc_session_create_flags_t a3, xpc_rich_error_t *a4)
{
  v7 = a2;
  mach_service = xpc_session_create_mach_service(a1, v7, a3, a4);

  return mach_service;
}

uint64_t XPCSession.setIncomingMessageHandler(_:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  v3 = ClientSpecifiedHandler.init(_:)(a1);
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:);
  *(v7 + 24) = v6;
  v8 = *(v1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
  *(v9 + 24) = v7;
  v12[4] = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
  v12[3] = &block_descriptor_78;
  v10 = _Block_copy(v12);

  _swift_xpc_session_set_incoming_message_handler(v8, v10);
  _Block_release(v10);
}

{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v3 = ClientSpecifiedHandler.init(_:)(a1);
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  v7 = *(v1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
  *(v8 + 24) = v6;
  v11[4] = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
  v11[3] = &block_descriptor_51;
  v9 = _Block_copy(v11);

  _swift_xpc_session_set_incoming_message_handler(v7, v9);
  _Block_release(v9);
}

uint64_t sub_197900DBC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t XPCSession.setCancellationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply);
  v8 = v7;
  v9 = *(v2 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v13[4] = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
  v13[3] = &block_descriptor_89;
  v11 = _Block_copy(v13);

  _swift_xpc_session_set_cancel_handler(v9, v11);
  _Block_release(v11);
}

uint64_t dispatch thunk of XPCSession.setIncomingMessageHandler(_:)()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 112))();
}

void thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_session) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t closure #1 in XPCListener.init(service:targetQueue:options:incomingSessionHandler:)(void *a1, void (*a2)(uint64_t))
{
  type metadata accessor for XPCListener.IncomingSessionRequest();
  v4 = swift_allocObject();
  *(v4 + 24) = 2;
  type metadata accessor for XPCSession();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v4 + 16) = v5;
  v8 = v4;
  v6 = a1;
  ClientSpecifiedHandler.callEventHandler(_:)(&v8, a2);
}

uint64_t ClientSpecifiedHandler.callEventHandler(_:)(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t XPCListener.IncomingSessionRequest.withUnsafeAuditToken<A>(_:)(uint64_t (*a1)())
{
  v3 = *(*(v1 + 16) + 16);
  _xpc_session_get_peer_audit_token_4SWIFT();
  return a1();
}

uint64_t XPCListener.IncomingSessionRequest.accept<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(char *, uint64_t, uint64_t)@<X4>, uint64_t (*a5)(char *, uint64_t, uint64_t)@<X5>, void (*a6)(uint64_t, uint64_t)@<X6>, _BYTE *a7@<X8>)
{
  v28 = a6;
  v29 = a7;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 16);

  a1(v18);

  v19 = a4(v16, a2, a3);
  v21 = v20;
  v22 = a5(v16, a2, a3);
  v24 = v23;
  v25 = *(v7 + 16);

  v28(v19, v21);

  XPCListener.IncomingSessionRequest._accept(cancellationHandler:)(&v30, v22, v24);

  result = (*(v13 + 8))(v16, a2);
  *v29 = v30;
  return result;
}

uint64_t XPCListener.IncomingSessionRequest.accept<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  return XPCListener.IncomingSessionRequest.accept<A>(_:)(a1, a2, a3, implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:), implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:), XPCSession.setIncomingMessageHandler(_:), a4);
}

{
  return XPCListener.IncomingSessionRequest.accept<A>(_:)(a1, a2, a3, implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:), implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:), XPCSession.setIncomingMessageHandler(_:), a4);
}

uint64_t dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)()
{
  return (*(*v0 + 256))();
}

{
  return (*(*v0 + 240))();
}

{
  return (*(*v0 + 248))();
}

uint64_t (*implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(__int128 *a1)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:);
}

uint64_t (*implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #4 in implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:);
}

{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #4 in implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:);
}

uint64_t XPCListener.IncomingSessionRequest._accept(cancellationHandler:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v7 = *(v3 + 16);
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed XPCDictionary) -> (@out XPCDictionary?))?(a2);
    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed XPCDictionary) -> (@out XPCDictionary?))?(a2);

    v9 = ClientSpecifiedHandler.init(_:)(_s3XPC12XPCRichErrorVIegn_ACytIegnr_TRTA_0);
    v11 = v10;
    v12 = *(v7 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    *(v13 + 24) = v11;
    v18[4] = partial apply for closure #1 in XPCSession.setCancellationHandler(_:);
    v18[5] = v13;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v18[3] = &block_descriptor_102;
    v14 = _Block_copy(v18);

    _swift_xpc_session_set_cancel_handler(v12, v14);
    _Block_release(v14);

    outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed XPCDictionary) -> (@out XPCDictionary?))?(a2);
  }

  LOBYTE(v18[0]) = 0;
  XPCListener.IncomingSessionRequest.decision.setter(v18);
  v15 = *(v3 + 24);
  if (v15 == 2)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)();
  }

  *a1 = v15 & 1;
  v16 = *(v3 + 16);
}

uint64_t sub_197901860()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

_BYTE *XPCListener.IncomingSessionRequest.decision.setter(_BYTE *result)
{
  if (*(v1 + 24) != 2)
  {
    _StringGuts.grow(_:)(55);
    MEMORY[0x19A8E8E70](0xD000000000000035, 0x8000000197938D70);
    if (*(v1 + 24) == 2)
    {
      __break(1u);
    }

    _print_unlocked<A, B>(_:_:)();

    __XPC_API_MISUSE__(_:file:line:)();
  }

  *(v1 + 24) = *result;
  return result;
}

uint64_t XPCListener.IncomingSessionRequest.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

uint64_t SingleValueGraphEncodingNode.setValue(to:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(v1 + 16);
  if (*(v6 + 2) == 1)
  {
    swift_beginAccess();
    outlined copy of EncodingGraph.Value(v2, v3, v4, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 1, v6);
  *(v1 + 16) = v6;
LABEL_3:
  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[32 * v9];
  *(v10 + 4) = v2;
  *(v10 + 5) = v3;
  *(v10 + 6) = v4;
  v10[56] = v5;
  *(v1 + 16) = v6;
  return swift_endAccess();
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 4);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 13);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 8);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 9);
}

uint64_t _TopLevelEncoder.singleValueContainer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for _SingleValueEncodingContainer;
  a5[4] = lazy protocol witness table accessor for type _SingleValueEncodingContainer and conformance _SingleValueEncodingContainer();
  v10 = swift_allocObject();
  *a5 = v10;
  if (*(a1 + 16))
  {
    type metadata accessor for SingleValueGraphEncodingNode();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  type metadata accessor for SingleValueGraphEncodingNode();
  v12 = swift_allocObject();
  *(v12 + 16) = &outlined read-only object #0 of _TopLevelEncoder.singleValueContainer();
  *(a1 + 16) = v12;
  *(a1 + 24) = &protocol witness table for SingleValueGraphEncodingNode;

LABEL_5:
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = v11;

  return swift_unknownObjectRetain();
}

unint64_t lazy protocol witness table accessor for type _SingleValueEncodingContainer and conformance _SingleValueEncodingContainer()
{
  result = lazy protocol witness table cache variable for type _SingleValueEncodingContainer and conformance _SingleValueEncodingContainer;
  if (!lazy protocol witness table cache variable for type _SingleValueEncodingContainer and conformance _SingleValueEncodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SingleValueEncodingContainer and conformance _SingleValueEncodingContainer);
  }

  return result;
}

uint64_t _TopLevelEncoder.unkeyedContainer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for _UnkeyedEncodingContainer;
  a5[4] = lazy protocol witness table accessor for type _UnkeyedEncodingContainer and conformance _UnkeyedEncodingContainer();
  v10 = swift_allocObject();
  *a5 = v10;
  if (*(a1 + 16))
  {
    type metadata accessor for UnkeyedGraphEncodingNode();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  type metadata accessor for UnkeyedGraphEncodingNode();
  v12 = swift_allocObject();
  *(v12 + 16) = &outlined read-only object #0 of _TopLevelEncoder.unkeyedContainer();
  *(a1 + 16) = v12;
  *(a1 + 24) = &protocol witness table for UnkeyedGraphEncodingNode;

LABEL_5:
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = v11;

  return swift_unknownObjectRetain();
}

unint64_t lazy protocol witness table accessor for type _UnkeyedEncodingContainer and conformance _UnkeyedEncodingContainer()
{
  result = lazy protocol witness table cache variable for type _UnkeyedEncodingContainer and conformance _UnkeyedEncodingContainer;
  if (!lazy protocol witness table cache variable for type _UnkeyedEncodingContainer and conformance _UnkeyedEncodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UnkeyedEncodingContainer and conformance _UnkeyedEncodingContainer);
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 24);
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = a1;
  v8 = a4;
  return SingleValueGraphEncodingNode.setValue(to:)(v7);
}

uint64_t objectdestroy_4Tm(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];

  v6 = v2[3];

  a1(v2[5]);

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in XPCSession._setIncomingMessageHandler(_:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  result = MEMORY[0x19A8E9F90]();
  if (result == MEMORY[0x1E69E9E80])
  {
    swift_unknownObjectRetain();
    v5 = xpc_dictionary_expects_reply();
    v6 = a1;
    a2(&v7, &v6);
    if (v7)
    {
      if (v5)
      {
        if (xpc_dictionary_expects_reply())
        {
          xpc_dictionary_send_reply_4SWIFT();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in XPCSession._setIncomingMessageHandler(_:)@<X0>(void **a1@<X0>, void (*a2)(__int128 *__return_ptr, void *)@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  swift_unknownObjectRetain_n();
  v6 = specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEE00636E79537349, v5);
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = MEMORY[0x19A8E9F90](v6) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  type metadata accessor for XPCReceivedMessage.XPCReceivedMessageMetadata();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 17) = v7;
  v13[0] = v5;
  v13[1] = v8;
  a2(&v14, v13);
  if (v15)
  {
    outlined init with take of Encodable(&v14, v16);
    v9 = v17;
    v10 = __swift_project_boxed_opaque_existential_1(v16, v17);
    *&v14 = v5;
    *(&v14 + 1) = v8;
    XPCReceivedMessage.reply<A>(_:)(v10, v9);

    swift_unknownObjectRelease();
    *a3 = 0;
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    outlined destroy of Encodable?(&v14);
    if (xpc_dictionary_expects_reply() && (*(v8 + 17) & 1) != 0 && (*(v8 + 16) & 1) != 0)
    {
      v16[0] = xpc_dictionary_create_empty();
      MEMORY[0x1EEE9AC00](v16[0]);
      v12[2] = 0xD000000000000074;
      v12[3] = 0x8000000197938120;
      v12[4] = v16;
      specialized String.withCString<A>(_:)(partial apply for closure #1 in XPCDictionary.subscript.setter, v12, 0x656C6261646F435FLL, 0xED0000726F727245);
      swift_unknownObjectRetain();
      if (xpc_dictionary_expects_reply())
      {
        xpc_dictionary_send_reply_4SWIFT();
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    result = swift_unknownObjectRelease();
    *a3 = 0;
  }

  return result;
}

id specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *key = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      value = xpc_dictionary_get_value(xdict, key);
      return value;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      value = xpc_dictionary_get_value(xdict, ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
      return value;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pSgMd, "x ");
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return result;
}

__int128 *SerializedEncodingGraph.decode()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  *&v182 = *v0;
  *(&v182 + 1) = v2;
  if (v2 < 0)
  {
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    JUMPOUT(0x197903968);
  }

  *&v184 = v2;
  *(&v184 + 1) = v1;
  v185 = v2;
  v183 = v3;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_3XPC16DecodedContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for DecodedContainer();
  v6 = swift_allocObject();
  *(v6 + 2) = 0;
  xarray = v3;
  swift_unknownObjectRetain();

  if (!v2)
  {
    v9 = v6;
    goto LABEL_203;
  }

  v8 = v6;
  v6 = 0;
  v174 = 0;
  v175 = v8;
  v177 = v8;
  while (2)
  {
    if (v2 - v6 < 1)
    {
LABEL_201:
      v158 = 0x8000000197938940;
      lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
      swift_allocError();
      v160 = 0xD000000000000023;
    }

    else
    {
      v12 = v2 - (v6 + 1);
      if (v2 < v6 + 1)
      {
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        v168 = v7;

        _StringGuts.grow(_:)(42);

        *&v178 = 0xD000000000000028;
        *(&v178 + 1) = 0x80000001979389F0;
        LOBYTE(v186) = v168;
        goto LABEL_225;
      }

      v13 = *(&v184 + 1);
      v7 = *(*(&v184 + 1) + *(&v185 + 1));
      *(&v183 + 1) = v6 + 1;
      v14 = *(&v185 + 1) + 1;
      if (__OFADD__(*(&v185 + 1), 1))
      {
        goto LABEL_223;
      }

      ++*(&v185 + 1);
      switch(specialized SerializedEncodingGraph.Tag.init(rawValue:)(v7))
      {
        case 1u:
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v69 = *(v4 + 2);
          v68 = *(v4 + 3);
          if (v69 >= v68 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v69 + 1;
          v67 = &v4[32 * v69];
          *(v67 + 6) = 0;
          *(v67 + 4) = 1;
          goto LABEL_73;
        case 2u:
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v66 = *(v4 + 2);
          v65 = *(v4 + 3);
          if (v66 >= v65 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v66 + 1;
          v67 = &v4[32 * v66];
          *(v67 + 6) = 0;
          *(v67 + 4) = 0;
LABEL_73:
          *(v67 + 5) = 0;
          v67[56] = 0;
          goto LABEL_7;
        case 3u:
          v111 = v5;
          v6 = &v182;
          _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm();
          if (v113)
          {
            goto LABEL_207;
          }

          v114 = v112 + 1;
          if (__OFADD__(v112, 1))
          {
            goto LABEL_231;
          }

          v115 = v184;
          if (v184 - *(&v183 + 1) < v114)
          {
            goto LABEL_207;
          }

          v116 = *(&v185 + 1);
          if (__OFADD__(*(&v185 + 1), v112))
          {
            goto LABEL_240;
          }

          if (*(*(&v184 + 1) + *(&v185 + 1) + v112))
          {
            goto LABEL_207;
          }

          if (v114 < 0)
          {
            goto LABEL_242;
          }

          v117 = *(&v183 + 1) + v114;
          if (*(&v183 + 1) + v114 < *(&v183 + 1))
          {
            goto LABEL_243;
          }

          if (!*(&v184 + 1))
          {
            goto LABEL_248;
          }

          v118 = MEMORY[0x19A8E8E40](*(&v184 + 1) + *(&v183 + 1));
          if (!v119)
          {
LABEL_207:
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            *v164 = 0xD000000000000026;
            v164[1] = 0x8000000197938A80;
            swift_willThrow();

            goto LABEL_217;
          }

          v120 = v118;
          v121 = v119;
          if (v114)
          {
            if (v115 < v117)
            {
              goto LABEL_245;
            }

            *(&v183 + 1) = v117;
          }

          if (__OFADD__(v116, v114))
          {
            goto LABEL_244;
          }

          *(&v185 + 1) = v116 + v114;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v5 = v111;
          v123 = *(v4 + 2);
          v122 = *(v4 + 3);
          if (v123 >= v122 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v123 + 1;
          v124 = &v4[32 * v123];
          *(v124 + 4) = v120;
          *(v124 + 5) = v121;
          *(v124 + 6) = 0;
          v124[56] = 1;
          goto LABEL_7;
        case 4u:
          if (v12 < 4)
          {
            goto LABEL_206;
          }

          if (__OFADD__(v14, 1) || __OFADD__(v14, 2) || __OFADD__(v14, 3))
          {
            goto LABEL_230;
          }

          if (v2 < v6 + 5)
          {
            goto LABEL_232;
          }

          v103 = v5;
          v104 = *(v13 + v14 + 2);
          v105 = *(v13 + v14 + 1);
          v106 = *(v13 + v14);
          v107 = *(v13 + v14 + 3);
          *(&v183 + 1) = v6 + 5;
          if (__OFADD__(v14, 4))
          {
            goto LABEL_233;
          }

          *(&v185 + 1) = v14 + 4;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v109 = *(v4 + 2);
          v108 = *(v4 + 3);
          if (v109 >= v108 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v109 + 1;
          v110 = &v4[32 * v109];
          *(v110 + 5) = 0;
          *(v110 + 6) = 0;
          *(v110 + 4) = v106 | (v105 << 8) | (v104 << 16) | (v107 << 24);
          v110[56] = 2;
          v5 = v103;
          goto LABEL_7;
        case 5u:
          if (v12 < 8)
          {
            goto LABEL_209;
          }

          if (__OFADD__(v14, 1) || __OFADD__(v14, 2) || __OFADD__(v14, 3) || __OFADD__(v14, 4) || __OFADD__(v14, 5) || __OFADD__(v14, 6) || __OFADD__(v14, 7))
          {
            goto LABEL_228;
          }

          v70 = v6 + 9;
          if (v2 < v6 + 9)
          {
            goto LABEL_235;
          }

          v171 = *(v13 + v14 + 6);
          v173 = v5;
          v71 = *(v13 + v14 + 5);
          v72 = *(v13 + v14 + 4);
          v73 = *(v13 + v14 + 3);
          v74 = *(v13 + v14 + 2);
          v75 = *(v13 + v14 + 1);
          v76 = *(v13 + v14);
          v77 = *(v13 + v14 + 7);
          *(&v183 + 1) = v70;
          if (__OFADD__(v14, 8))
          {
            goto LABEL_237;
          }

          *(&v185 + 1) = v14 + 8;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v79 = *(v4 + 2);
          v78 = *(v4 + 3);
          v80 = v79 + 1;
          if (v79 >= v78 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v4);
            v80 = v79 + 1;
            v4 = v7;
          }

          *(v4 + 2) = v80;
          v81 = &v4[32 * v79];
          *(v81 + 5) = 0;
          *(v81 + 6) = 0;
          *(v81 + 4) = v76 | (v75 << 8) | (v74 << 16) | (v73 << 24) | (v72 << 32) | (v71 << 40) | (v171 << 48) | (v77 << 56);
          v82 = 3;
          goto LABEL_104;
        case 6u:
          if (v12 < 8)
          {
            goto LABEL_211;
          }

          if (__OFADD__(v14, 1) || __OFADD__(v14, 2) || __OFADD__(v14, 3) || __OFADD__(v14, 4) || __OFADD__(v14, 5) || __OFADD__(v14, 6) || __OFADD__(v14, 7))
          {
            __break(1u);
LABEL_228:
            __break(1u);
            goto LABEL_229;
          }

          v83 = v6 + 9;
          if (v2 < v6 + 9)
          {
            goto LABEL_234;
          }

          v172 = *(v13 + v14 + 6);
          v173 = v5;
          v84 = *(v13 + v14 + 5);
          v85 = *(v13 + v14 + 4);
          v86 = *(v13 + v14 + 3);
          v87 = *(v13 + v14 + 2);
          v88 = *(v13 + v14 + 1);
          v89 = *(v13 + v14);
          v90 = *(v13 + v14 + 7);
          *(&v183 + 1) = v83;
          if (__OFADD__(v14, 8))
          {
            goto LABEL_236;
          }

          *(&v185 + 1) = v14 + 8;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v92 = *(v4 + 2);
          v91 = *(v4 + 3);
          v93 = v92 + 1;
          if (v92 >= v91 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v4);
            v93 = v92 + 1;
            v4 = v7;
          }

          *(v4 + 2) = v93;
          v81 = &v4[32 * v92];
          *(v81 + 5) = 0;
          *(v81 + 6) = 0;
          *(v81 + 4) = v89 | (v88 << 8) | (v87 << 16) | (v86 << 24) | (v85 << 32) | (v84 << 40) | (v172 << 48) | (v90 << 56);
          v82 = 4;
LABEL_104:
          v81[56] = v82;
          v5 = v173;
          goto LABEL_7;
        case 7u:
          v6 = &v182;
          v61 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs5UInt8V_Tt0g5();
          if ((v61 & 0x100) != 0)
          {
            goto LABEL_208;
          }

          v62 = v61;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v64 = *(v4 + 2);
          v63 = *(v4 + 3);
          if (v64 >= v63 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v64 + 1;
          v10 = &v4[32 * v64];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v62;
          v11 = 5;
          goto LABEL_6;
        case 8u:
          v6 = &v182;
          v98 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt16V_Tt0g5();
          if ((v98 & 0x10000) != 0)
          {
            goto LABEL_210;
          }

          v99 = v98;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v101 = *(v4 + 2);
          v100 = *(v4 + 3);
          if (v101 >= v100 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v101 + 1;
          v10 = &v4[32 * v101];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v99;
          v11 = 6;
          goto LABEL_6;
        case 9u:
          v6 = &v182;
          v37 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt32V_Tt0g5();
          if ((v37 & 0x100000000) != 0)
          {
            goto LABEL_206;
          }

          v38 = v37;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v40 = *(v4 + 2);
          v39 = *(v4 + 3);
          if (v40 >= v39 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v40 + 1;
          v41 = &v4[32 * v40];
          *(v41 + 5) = 0;
          *(v41 + 6) = 0;
          *(v41 + 4) = v38;
          v41[56] = 7;
          goto LABEL_7;
        case 0xAu:
          v6 = &v182;
          _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm();
          if (v33)
          {
            goto LABEL_209;
          }

          v34 = v32;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v36 = *(v4 + 2);
          v35 = *(v4 + 3);
          if (v36 >= v35 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v36 + 1;
          v10 = &v4[32 * v36];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v34;
          v11 = 8;
          goto LABEL_6;
        case 0xBu:
          v6 = &v182;
          _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm();
          if (v126)
          {
LABEL_211:
            v158 = 0x8000000197938B10;
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            v160 = 0xD000000000000024;
            break;
          }

          v127 = v125;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v129 = *(v4 + 2);
          v128 = *(v4 + 3);
          if (v129 >= v128 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v129 + 1;
          v10 = &v4[32 * v129];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v127;
          v11 = 9;
LABEL_6:
          v10[56] = v11;
LABEL_7:
          v6 = *(&v183 + 1);
          v2 = v184;
          if (*(&v183 + 1) != v184)
          {
            continue;
          }

          v9 = v177;
          v161 = *(v177 + 2);
          v6 = v175;
LABEL_203:
          *(v9 + 2) = v4;

          if (v5[2])
          {
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            *v162 = 0xD000000000000020;
            v162[1] = 0x8000000197938B70;
            swift_willThrow();

LABEL_216:

LABEL_217:
            v178 = v182;
            v179 = v183;
            v180 = v184;
            v181 = v185;
            outlined destroy of BufferReader(&v178);
          }

          else
          {

            v178 = v182;
            v179 = v183;
            v180 = v184;
            v181 = v185;
            outlined destroy of BufferReader(&v178);
          }

          return v6;
        case 0xCu:
          v6 = &v182;
          v94 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs5UInt8V_Tt0g5();
          if ((v94 & 0x100) != 0)
          {
            goto LABEL_208;
          }

          v95 = v94;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v97 = *(v4 + 2);
          v96 = *(v4 + 3);
          if (v97 >= v96 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v97 + 1;
          v10 = &v4[32 * v97];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v95;
          v11 = 10;
          goto LABEL_6;
        case 0xDu:
          v6 = &v182;
          v28 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt16V_Tt0g5();
          if ((v28 & 0x10000) == 0)
          {
            v29 = v28;
            LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
            if ((v7 & 1) == 0)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
              v4 = v7;
            }

            v31 = *(v4 + 2);
            v30 = *(v4 + 3);
            if (v31 >= v30 >> 1)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v4);
              v4 = v7;
            }

            *(v4 + 2) = v31 + 1;
            v10 = &v4[32 * v31];
            *(v10 + 5) = 0;
            *(v10 + 6) = 0;
            *(v10 + 4) = v29;
            v11 = 11;
            goto LABEL_6;
          }

LABEL_210:
          v163 = "Cannot read a valid UInt16 from buffer";
          goto LABEL_214;
        case 0xEu:
          v6 = &v182;
          v135 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt32V_Tt0g5();
          if ((v135 & 0x100000000) != 0)
          {
            goto LABEL_206;
          }

          v136 = v135;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v138 = *(v4 + 2);
          v137 = *(v4 + 3);
          if (v138 >= v137 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v138 + 1;
          v10 = &v4[32 * v138];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v136;
          v11 = 12;
          goto LABEL_6;
        case 0xFu:
          v6 = &v182;
          _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm();
          if ((v131 & 1) == 0)
          {
            v132 = v130;
            LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
            if ((v7 & 1) == 0)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
              v4 = v7;
            }

            v134 = *(v4 + 2);
            v133 = *(v4 + 3);
            if (v134 >= v133 >> 1)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1, v4);
              v4 = v7;
            }

            *(v4 + 2) = v134 + 1;
            v10 = &v4[32 * v134];
            *(v10 + 5) = 0;
            *(v10 + 6) = 0;
            *(v10 + 4) = v132;
            v11 = 13;
            goto LABEL_6;
          }

LABEL_209:
          v163 = "Cannot read a valid UInt64 from buffer";
          goto LABEL_214;
        case 0x10u:
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v140 = *(v4 + 2);
          v139 = *(v4 + 3);
          if (v140 >= v139 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v140 + 1;
          v10 = &v4[32 * v140];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = 0;
          v11 = 14;
          goto LABEL_6;
        case 0x11u:
          v6 = &v182;
          BufferReader.read(_:)();
          if (v56)
          {
            v57 = v55;
            v58 = v56;
            LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
            if ((v7 & 1) == 0)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
              v4 = v7;
            }

            v60 = *(v4 + 2);
            v59 = *(v4 + 3);
            if (v60 >= v59 >> 1)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v4);
              v4 = v7;
            }

            *(v4 + 2) = v60 + 1;
            v10 = &v4[32 * v60];
            *(v10 + 4) = v57;
            *(v10 + 5) = v58;
            *(v10 + 6) = 0;
            v11 = 14;
            goto LABEL_6;
          }

          v163 = "Cannot read a valid string from buffer";
          goto LABEL_214;
        case 0x12u:
          v6 = &v182;
          v17 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt32V_Tt0g5();
          if ((v17 & 0x100000000) != 0)
          {
            goto LABEL_206;
          }

          v18 = v17;
          v19 = xpc_array_get_value(xarray, v17);
          if (!v19)
          {

            _StringGuts.grow(_:)(37);

            *&v178 = 0xD000000000000023;
            *(&v178 + 1) = 0x8000000197938A20;
            v186 = v18;
            goto LABEL_225;
          }

          v20 = v19;
          v21 = swift_unknownObjectRetain();
          if (MEMORY[0x19A8E9F90](v21) != MEMORY[0x1E69E9E70])
          {

            swift_unknownObjectRelease();
            *&v178 = 0;
            *(&v178 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(44);
            MEMORY[0x19A8E8E70](0xD00000000000002ALL, 0x8000000197938A50);
            v186 = v20;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, &_sSo13OS_xpc_object_pMR);
            _print_unlocked<A, B>(_:_:)();
            v6 = 0xE000000000000000;
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            *v167 = v178;
            swift_willThrow();

            swift_unknownObjectRelease();
            goto LABEL_216;
          }

          bytes_ptr = xpc_data_get_bytes_ptr(v20);
          length = xpc_data_get_length(v20);
          swift_getObjectType();
          if (!OS_xpc_object.isCodable()())
          {
            goto LABEL_241;
          }

          v24 = xpc_copy(v20);
          if (!v24)
          {
            goto LABEL_247;
          }

          v25 = v24;
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
          }

          v27 = *(v4 + 2);
          v26 = *(v4 + 3);
          if (v27 >= v26 >> 1)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v4);
          }

          LOBYTE(v7) = swift_unknownObjectRelease();
          *(v4 + 2) = v27 + 1;
          v10 = &v4[32 * v27];
          *(v10 + 4) = bytes_ptr;
          *(v10 + 5) = length;
          *(v10 + 6) = v25;
          v11 = 15;
          goto LABEL_6;
        case 0x13u:
          v6 = &v182;
          LOWORD(v7) = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs5UInt8V_Tt0g5();
          if ((v7 & 0x100) == 0)
          {
            switch(v7)
            {
              case 0xAu:
                LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
                v102 = 0;
                if (v7)
                {
                  goto LABEL_189;
                }

                break;
              case 0xBu:
                LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
                v102 = 1;
                if (v7)
                {
                  v102 = 1;
                  goto LABEL_189;
                }

                break;
              case 0xCu:
                LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
                v102 = 2;
                if (v7)
                {
                  v102 = 2;
LABEL_189:
                  v152 = *(v4 + 2);
                  v151 = *(v4 + 3);
                  if (v152 >= v151 >> 1)
                  {
                    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v151 > 1), v152 + 1, 1, v4);
                    v4 = v7;
                  }

                  *(v4 + 2) = v152 + 1;
                  v10 = &v4[32 * v152];
                  *(v10 + 5) = 0;
                  *(v10 + 6) = 0;
                  *(v10 + 4) = v102;
                  v11 = 16;
                  goto LABEL_6;
                }

                break;
              default:
                goto LABEL_224;
            }

            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
            goto LABEL_189;
          }

LABEL_208:
          v158 = 0x80000001979389C0;
          lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
          swift_allocError();
          v160 = 0xD000000000000025;
          goto LABEL_215;
        case 0x14u:
          v6 = &v182;
          v42 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt32V_Tt0g5();
          if ((v42 & 0x100000000) == 0)
          {
            v43 = v42;
            if (!v5[2] || (specialized __RawDictionaryStorage.find<A>(_:)(v42), (v44 & 1) == 0))
            {
              v45 = swift_allocObject();
              *(v45 + 16) = 0;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v178 = v5;
              v47 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
              v49 = v5[2];
              v50 = (v48 & 1) == 0;
              v51 = __OFADD__(v49, v50);
              v52 = v49 + v50;
              if (v51)
              {
                goto LABEL_238;
              }

              v53 = v48;
              if (v5[3] >= v52)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v153 = v47;
                  specialized _NativeDictionary.copy()();
                  v47 = v153;
                  v5 = v178;
                  if (v53)
                  {
                    goto LABEL_185;
                  }

                  goto LABEL_194;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, isUniquelyReferenced_nonNull_native);
                v47 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
                if ((v53 & 1) != (v54 & 1))
                {
                  goto LABEL_249;
                }
              }

              v5 = v178;
              if (v53)
              {
LABEL_185:
                v149 = v5[7];
                v150 = *(v149 + 8 * v47);
                *(v149 + 8 * v47) = v45;

LABEL_196:
                LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
                if ((v7 & 1) == 0)
                {
                  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
                  v4 = v7;
                }

                v157 = *(v4 + 2);
                v156 = *(v4 + 3);
                if (v157 >= v156 >> 1)
                {
                  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v156 > 1), v157 + 1, 1, v4);
                  v4 = v7;
                }

                *(v4 + 2) = v157 + 1;
                v10 = &v4[32 * v157];
                *(v10 + 4) = v45;
                *(v10 + 5) = &protocol witness table for DecodedContainer;
                *(v10 + 6) = 0;
                v11 = 17;
                goto LABEL_6;
              }

LABEL_194:
              v5[(v47 >> 6) + 8] |= 1 << v47;
              *(v5[6] + 4 * v47) = v43;
              *(v5[7] + 8 * v47) = v45;
              v154 = v5[2];
              v51 = __OFADD__(v154, 1);
              v155 = v154 + 1;
              if (v51)
              {
                goto LABEL_246;
              }

              v5[2] = v155;
              goto LABEL_196;
            }

            _StringGuts.grow(_:)(31);

            *&v178 = 0xD00000000000001DLL;
            *(&v178 + 1) = 0x80000001979389A0;
            LODWORD(v186) = v43;
LABEL_225:
            v169 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x19A8E8E70](v169);

            v6 = *(&v178 + 1);
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            *v170 = v178;
            swift_willThrow();
            goto LABEL_226;
          }

LABEL_206:
          v163 = "Cannot read a valid UInt32 from buffer";
LABEL_214:
          v158 = (v163 - 32) | 0x8000000000000000;
          lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
          swift_allocError();
          v160 = 0xD000000000000026;
          break;
        case 0x15u:
          v141 = *(v177 + 2);
          *(v177 + 2) = v4;

          if (!v5[2] || (v6 = v5, v142 = specialized __RawDictionaryStorage.find<A>(_:)(v174), (v143 & 1) == 0))
          {
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            *v165 = 0xD000000000000022;
            v165[1] = 0x8000000197938B40;
            swift_willThrow();
LABEL_226:

            goto LABEL_216;
          }

          v144 = *(v5[7] + 8 * v142);
          v145 = specialized __RawDictionaryStorage.find<A>(_:)(v174);
          v147 = v146;

          if (v147)
          {
            *&v178 = v5;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              specialized _NativeDictionary.copy()();
              v5 = v178;
            }

            v148 = *(v5[7] + 8 * v145);

            specialized _NativeDictionary._delete(at:)(v145, v5);
          }

          if (v174 == -1)
          {
            goto LABEL_239;
          }

          ++v174;
          v177 = v144;
          v4 = MEMORY[0x1E69E7CC0];
          goto LABEL_7;
        case 0x16u:
          goto LABEL_201;
        default:
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v16 = *(v4 + 2);
          v15 = *(v4 + 3);
          if (v16 >= v15 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v16 + 1;
          v10 = &v4[32 * v16];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = 0;
          v11 = 18;
          goto LABEL_6;
      }
    }

    break;
  }

LABEL_215:
  *v159 = v160;
  v159[1] = v158;
  swift_willThrow();

  goto LABEL_216;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = *(a4 + 16);
  v11 = *(a4 + 24);
  return _KeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, _KeyedEncodingContainer.encode(_:forKey:));
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, _KeyedEncodingContainer.encode(_:forKey:));
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, _KeyedEncodingContainer.encode(_:forKey:));
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, _KeyedEncodingContainer.encode(_:forKey:));
}

uint64_t XPCSession.sendSync(message:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v14[0] = 0;
  v5 = _swift_xpc_session_send_message_with_reply_sync(*(v2 + 16), v4, v14);
  if (v5)
  {
    v6 = v5;
    v7 = swift_unknownObjectRetain();
    v8 = MEMORY[0x19A8E9F90](v7);
    swift_unknownObjectRelease();
    if (v8 != MEMORY[0x1E69E9E80])
    {
      __break(1u);
    }

    *a2 = v6;
  }

  else
  {
    if (!v14[0])
    {
      __XPC_INTERNAL_CRASH__(_:file:line:)();
    }

    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v10 = v9;
    v11 = swift_unknownObjectRetain_n();
    XPCRichError.init(_:)(v11, v10);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectRelease();
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

id _swift_xpc_session_send_message_with_reply_sync(void *a1, void *a2, xpc_rich_error_t *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = xpc_session_send_message_with_reply_sync(v5, v6, a3);

  return v7;
}

uint64_t XPCSession.sendSync<A>(_:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)(v5, 1, a1, &v8);

  if (!v2)
  {
    v7 = v8;
    XPCSession.sendSync(message:)(&v7, &v8);
    XPCReceivedMessage.init(dictionary:)(&v8, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t _KeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v27 = a6;
  v25 = a4;
  *&v26 = a5;
  v28 = a1;
  v29 = a10;
  v14 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  v19 = *(a7 - 8);
  (*(v19 + 16))(&v24 - v17, a2, a7);
  (*(v19 + 56))(v18, 0, 1, a7);
  _KeyedEncodingContainer._encodingContainer<A>(_:forKey:forType:)(&type metadata for _TopLevelEncoder, v18, a8, a3, v25, v26, v27, a7, &type metadata for _TopLevelEncoder, a9, &protocol witness table for _TopLevelEncoder);
  (*(v15 + 8))(v18, v14);
  v20 = lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder();
  v26 = v31;
  v27 = v30;
  *(&v31 + 1) = &type metadata for _TopLevelEncoder;
  v32 = v20;
  v21 = swift_allocObject();
  *&v30 = v21;
  v22 = v26;
  *(v21 + 16) = v27;
  *(v21 + 32) = v22;
  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

uint64_t sub_197903EE8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t protocol witness for _EncodingContainer.init(codingInfo:container:) in conformance _TopLevelEncoder@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (!a4)
  {
    goto LABEL_4;
  }

  type metadata accessor for TopLevelGraphEncodingNode();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    __break(1u);
LABEL_4:
    v11 = a5;
    type metadata accessor for TopLevelGraphEncodingNode();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v11;
  }

  *a6 = result;
  a6[1] = a1;
  a6[2] = a2;
  a6[3] = a3;
  return result;
}

uint64_t _KeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = static String._copying(_:)();
    v6 = v5;

    a2 = v6;
  }

  *&v7 = a1;
  *(&v7 + 1) = a2;
  v8 = 0;
  v9 = 1;
  _KeyedEncodingContainer._encode(_:forKey:)(&v7);
  return outlined consume of EncodingGraph.Value(v7, *(&v7 + 1), v8, v9);
}

uint64_t _KeyedEncodingContainer._encode(_:forKey:)(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v9 = *a1;
  v10 = v1;
  v11 = v2;
  v3 = dispatch thunk of CodingKey.stringValue.getter();
  v5 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    v3 = static String._copying(_:)();
    v8 = v7;

    v5 = v8;
  }

  _KeyedEncodingContainer._encode(_:forKey:)(&v9, v3, v5);
}

uint64_t outlined consume of EncodingGraph.Value?(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return outlined consume of EncodingGraph.Value(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s6UInt32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOs6UInt32VGMd, &_ss18_DictionaryStorageCySOs6UInt32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t partial apply for closure #1 in SerializedEncodingGraph.init(of:)(uint64_t result, uint64_t a2, void *a3)
{
  if (*(v3 + 16) != result)
  {
    if (__OFADD__(*a3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a3;
    }
  }

  return result;
}

unint64_t XPCBufferWriter.advance(by:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v1[2];
    v2 = v1[3];
    if (!result || (v4 = v1[3], v2 - v3 >= result))
    {
      v4 = v3 + result;
      if (v2 < (v3 + result))
      {
        goto LABEL_9;
      }
    }

    v1[2] = v4;
    v5 = v1[6];
    v6 = __OFADD__(v5, result);
    v7 = v5 + result;
    if (!v6)
    {
      v1[6] = v7;
      return result;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, _xpc_connection_s *a3, void **a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v7 = MEMORY[0x19A8E9F90](a3);
      v8 = MEMORY[0x1E69E9E68];
      v9 = *a4;
      v10 = (v6 + 32);
      goto LABEL_6;
    }

LABEL_10:
    _StringGuts._slowWithCString<A>(_:)();
    return swift_unknownObjectRelease();
  }

  *key = a1;
  v13 = a2 & 0xFFFFFFFFFFFFFFLL;
  v7 = MEMORY[0x19A8E9F90](a3);
  v8 = MEMORY[0x1E69E9E68];
  v9 = *a4;
  v10 = key;
LABEL_6:
  if (v7 == v8)
  {
    xpc_dictionary_set_connection(v9, v10, a3);
  }

  else
  {
    xpc_dictionary_set_value(v9, v10, a3);
  }

  return swift_unknownObjectRelease();
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, void **a3, xpc_object_t value)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *key = a1;
    v8 = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = *a3;
    v5 = key;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    _StringGuts._slowWithCString<A>(_:)();
    return swift_unknownObjectRelease();
  }

  v4 = *a3;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  xpc_dictionary_set_value(v4, v5, value);
  return swift_unknownObjectRelease();
}

uint64_t TopLevelGraphEncodingNode.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t _KeyedGraphEncodingNode.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t protocol witness for EncodingGraph.Container.values.getter in conformance SingleValueGraphEncodingNode()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2Sm_xts0C5ErrorOYKF(a1, *v2, v2[1], v2[2], v2[3], *(a2 + 16), *(a2 + 24), v10);
  if (v3)
  {
    v12 = result;
    swift_allocError();
    (*(v7 + 32))(v13, v10, v6);
    return v12;
  }

  return result;
}

uint64_t _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2Sm_xts0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v26 = a7;
  v14 = type metadata accessor for DecodingError();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v25 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v20 = v24 - v19;
  v21 = v27;
  v24[1] = a6;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(a1, a4, a5, a6, v26, v24 - v19, &v32);
  if (v21)
  {
    (*(v15 + 32))(v35, v20, v14);
  }

  else
  {
    v29 = v32;
    v30 = v33;
    v31 = v34;
    v28[3] = type metadata accessor for _KeyedDecodingContainer();
    v28[4] = &protocol witness table for _KeyedDecodingContainer<A>;
    v22 = swift_allocObject();
    v28[0] = v22;
    v22[2] = a2;
    v22[3] = a3;
    v22[4] = a4;
    v22[5] = a5;

    a6 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2Sm_AA18_DecodingContainer_pts0H5ErrorOYKF(v28, v25);
    outlined consume of EncodingGraph.Value(v29, *(&v29 + 1), v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return a6;
}

uint64_t _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A855175LL6forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v29[6] = a2;
  v13 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a3 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v17 = v16;

    if (v17)
    {
      v18 = *(a3 + 56) + 32 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *a7 = *v18;
      *(a7 + 8) = v20;
      *(a7 + 16) = v21;
      v22 = *(v18 + 24);
      *(a7 + 24) = v22;
      return outlined copy of EncodingGraph.Value(v19, v20, v21, v22);
    }
  }

  else
  {
  }

  v29[3] = a4;
  v29[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v25 = type metadata accessor for _KeyedDecodingContainer();
  _DecodingContainer.codingPath.getter(v25, &protocol witness table for _KeyedDecodingContainer<A>);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd, &_ss9CodingKey_p_s13DecodingErrorO7ContextVtMR) + 48);
  outlined init with copy of Decoder(v29, a6);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v27 = *MEMORY[0x1E69E6AF0];
  v28 = type metadata accessor for DecodingError();
  (*(*(v28 - 8) + 104))(a6, v27, v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return swift_willThrowTypedImpl();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  outlined consume of EncodingGraph.Value(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t objectdestroyTm_0(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];

  v6 = v2[3];

  a1(v2[5]);

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  v3 = v1[2];

  v4 = v1[3];

  v5 = v1[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A855175LL6forKeyAA13EncodingGraphO5ValueOAA01_boD0V01_d6CodingN0Oyx_G_ts0C5ErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v26 = a3;
  v7 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey();
  v8 = _KeyedEncodingContainer._ContainerCodingKey.encodingGraphKey.getter(v7);
  if (*(a2 + 16))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
    v12 = v11;

    if (v12)
    {
      v13 = *(a2 + 56) + 32 * v10;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      *a4 = *v13;
      *(a4 + 8) = v15;
      *(a4 + 16) = v16;
      v17 = *(v13 + 24);
      *(a4 + 24) = v17;
      return outlined copy of EncodingGraph.Value(v14, v15, v16, v17);
    }
  }

  else
  {
  }

  v25[3] = v7;
  v25[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
  v20 = type metadata accessor for _KeyedDecodingContainer();
  _DecodingContainer.codingPath.getter(v20, &protocol witness table for _KeyedDecodingContainer<A>);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd, &_ss9CodingKey_p_s13DecodingErrorO7ContextVtMR) + 48);
  v22 = v26;
  outlined init with copy of Decoder(v25, v26);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v23 = *MEMORY[0x1E69E6AF0];
  v24 = type metadata accessor for DecodingError();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return swift_willThrowTypedImpl();
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:)(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v5 = *a1;
  return (*(v2 + 24))(&v5);
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *key = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = key;
LABEL_6:
      result = xpc_dictionary_get_string(xdict, v4);
      if (result)
      {
        return String.init(cString:)();
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return result;
}

uint64_t XPCReceivedMessage.decode<A>(as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *v4;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  XPCReceivedMessage.decode<A>(as:userInfo:)(a1, v9, a2, a3, a4);
}

uint64_t XPCReceivedMessage.decode<A>(as:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *v5;

  swift_unknownObjectRetain();
  v13 = specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xED0000726F727245, v12);
  v15 = v14;
  swift_unknownObjectRelease();
  if (v15)
  {

    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    *(v16 + 8) = v13;
    *(v16 + 16) = v15;
    *v16 = 0;
    return swift_willThrow();
  }

  v47 = a5;
  v48 = a4;
  v17 = _s3XPC13XPCDictionaryV_2asxSgSS_xmtcSzRzluigs5Int64V_Tt1B5(0xD000000000000014, 0x8000000197938DB0, v12);
  if ((v18 & 1) != 0 || v17 != 1)
  {

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v28 = a1;
LABEL_13:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6B08], v26);
    return swift_willThrow();
  }

  swift_unknownObjectRetain();
  v19 = specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEC00000079646F42, v12);
  swift_unknownObjectRelease();
  v20 = a1;
  if (!v19)
  {
LABEL_12:

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v30;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v28 = a1;
    goto LABEL_13;
  }

  swift_unknownObjectRetain();
  specialized String.withCString<A>(_:)(v12, 0xD000000000000011, 0x8000000197938E50, &v50);
  v21 = v50;
  if (!v50)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v22 = swift_unknownObjectRetain();
  XPCData.init(underlyingData:)(v22, &v50);
  if (v51)
  {
    v52 = v21;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v23 = SerializedEncodingGraph.decode()();
    if (v6)
    {
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v23;
      v37 = v24;
      swift_unknownObjectRetain();
      specialized String.withCString<A>(_:)(v12, 0xD00000000000001FLL, 0x8000000197938EA0, &v50);
      v38 = v50;
      if (v50)
      {
        v39 = a2;
        if (one-time initialization token for xpcCodable != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for CodingUserInfoKey();
        v41 = __swift_project_value_buffer(v40, static CodingUserInfoKey.xpcCodable);
        v52 = &type metadata for XPCArray;
        *&v50 = v38;
        outlined init with take of Any(&v50, v49);
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v39;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, v41, isUniquelyReferenced_nonNull_native);
        v53 = MEMORY[0x1E69E7CC0];
        v54 = v58;
        v55 = a3;
        v56 = v36;
        v57 = v37;
        swift_unknownObjectRetain();
        _TopLevelDecoder.decode<A>(_:)(a3, v48, v47);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
      }

      else
      {

        v43 = type metadata accessor for DecodingError();
        swift_allocError();
        v45 = v44;
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
        *v45 = v20;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6B08], v43);
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease_n();
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {

    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v34 = a1;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6B08], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }
}

uint64_t _s3XPC13XPCDictionaryV_2asxSgSS_xmtcSzRzluigs5Int64V_Tt1B5(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v6 = specialized String.withCString<A>(_:)(a1, a2, a3);
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = MEMORY[0x19A8E9F90](v6);
    if (v7 == MEMORY[0x1E69E9EB0])
    {
      value = xpc_int64_get_value(v6);
      swift_unknownObjectRelease();
      return value;
    }

    if (v7 == MEMORY[0x1E69E9F18])
    {
      v10 = xpc_uint64_get_value(v6);
      swift_unknownObjectRelease();
      return v10 & ~(v10 >> 63);
    }

    if (v7 == MEMORY[0x1E69E9E88])
    {
      v11 = xpc_double_get_value(v6);
      v12 = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int64V_SdTt1g5(&v13, v11);
      swift_unknownObjectRelease();
      if (v12 && (v14 & 1) == 0)
      {
        return v13;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t specialized String.withCString<A>(_:)@<X0>(xpc_object_t xdict@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC8XPCArrayVSgMd, &_s3XPC8XPCArrayVSgMR);
    _StringGuts._slowWithCString<A>(_:)();
    return swift_unknownObjectRelease();
  }

  v6 = xpc_dictionary_get_array(xdict, ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32));
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  a2 = MEMORY[0x19A8E9F90](v6);
  if (a2 == MEMORY[0x1E69E9E50])
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_7:
  *key = a2;
  v11 = a3 & 0xFFFFFFFFFFFFFFLL;
  v8 = xpc_dictionary_get_array(xdict, key);
  v7 = v8;
  if (!v8 || (result = MEMORY[0x19A8E9F90](v8), result == MEMORY[0x1E69E9E50]))
  {
LABEL_9:
    *a4 = v7;
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

{
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    _StringGuts._slowWithCString<A>(_:)();
    return swift_unknownObjectRelease();
  }

  v6 = xpc_dictionary_get_dictionary(xdict, ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32));
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  a2 = MEMORY[0x19A8E9F90](v6);
  if (a2 == MEMORY[0x1E69E9E80])
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_7:
  *key = a2;
  v11 = a3 & 0xFFFFFFFFFFFFFFLL;
  v8 = xpc_dictionary_get_dictionary(xdict, key);
  v7 = v8;
  if (!v8 || (result = MEMORY[0x19A8E9F90](v8), result == MEMORY[0x1E69E9E80]))
  {
LABEL_9:
    *a4 = v7;
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_3XPC16DecodedContainerCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32V3XPC16DecodedContainerCGMd, &_ss18_DictionaryStorageCys6UInt32V3XPC16DecodedContainerCGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized SerializedEncodingGraph.Tag.init(rawValue:)(uint64_t result)
{
  if (result >= 0x16u)
  {
    return 22;
  }

  else
  {
    return result;
  }
}

uint64_t _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs5UInt8V_Tt0g5()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v2 - v1;
  if (v2 - v1 < 1)
  {
    v6 = 0;
    return v6 | ((v3 < 1) << 8);
  }

  v4 = v1 + 1;
  if (v2 < v1 + 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[7];
    v6 = *(v0[5] + v5);
    v0[3] = v4;
    if (!__OFADD__(v5, 1))
    {
      v0[7] = v5 + 1;
      return v6 | ((v3 < 1) << 8);
    }
  }

  __break(1u);
  return result;
}

void BufferReader.read(_:)()
{
  _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm();
  if ((v2 & 1) == 0)
  {
    v3 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    else
    {
      v4 = v0[3];
      if (v0[4] - v4 < v3)
      {
        return;
      }

      v5 = v0[7];
      v6 = v5 + v1;
      if (!__OFADD__(v5, v1))
      {
        v7 = v0[5];
        if (*(v7 + v6))
        {
          return;
        }

        if ((v3 & 0x8000000000000000) == 0)
        {
          if (v4 + v3 >= v4)
          {
            if (v7)
            {
              MEMORY[0x19A8E8E40](v7 + v4);
              if (v8)
              {
                BufferReader.advance(by:)(v3);
              }

              return;
            }

LABEL_16:
            __break(1u);
            return;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_14;
  }
}

void _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v2 - v1 > 7)
  {
    v3 = v0[7];
    if (__OFADD__(v3, 1) || __OFADD__(v3, 2) || __OFADD__(v3, 3) || __OFADD__(v3, 4) || __OFADD__(v3, 5) || __OFADD__(v3, 6) || __OFADD__(v3, 7))
    {
      __break(1u);
    }

    else
    {
      v4 = v1 + 8;
      if (v2 >= v1 + 8)
      {
        v5 = v0[5];
        v6 = *(v5 + v3 + 6);
        v7 = *(v5 + v3 + 5);
        v8 = *(v5 + v3 + 4);
        v9 = *(v5 + v3 + 3);
        v10 = *(v5 + v3 + 2);
        v11 = *(v5 + v3 + 1);
        v12 = *(v5 + v3);
        v13 = *(v5 + v3 + 7);
        v0[3] = v4;
        v14 = __OFADD__(v3, 8);
        v15 = v3 + 8;
        if (!v14)
        {
          v0[7] = v15;
          return;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

unint64_t BufferReader.advance(by:)(unint64_t result)
{
  if (!result)
  {
LABEL_6:
    v5 = v1[7];
    v6 = __OFADD__(v5, result);
    v7 = v5 + result;
    if (!v6)
    {
      v1[7] = v7;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1[3];
  v3 = v1[4];
  if (v3 - v2 >= result)
  {
    v4 = v2 + result;
    if (v3 < v4)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v1[3] = v4;
    goto LABEL_6;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt32V_Tt0g5()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v2 - v1;
  if (v2 - v1 <= 3)
  {
    v4 = 0;
    return v4 | ((v3 < 4) << 32);
  }

  v5 = v0[7];
  if (__OFADD__(v5, 1) || __OFADD__(v5, 2) || __OFADD__(v5, 3))
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v1 + 4;
  if (v2 < v1 + 4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v0[5];
  v8 = *(v7 + v5 + 2);
  v9 = *(v7 + v5 + 1);
  v10 = *(v7 + v5);
  v11 = *(v7 + v5 + 3);
  v0[3] = v6;
  v12 = v5 + 4;
  if (!__OFADD__(v5, 4))
  {
    v4 = v10 | (v9 << 8) | (v8 << 16) | (v11 << 24);
    v0[7] = v12;
    return v4 | ((v3 < 4) << 32);
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1)
{
  v3 = MEMORY[0x19A8E95E0](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
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
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x19A8E95E0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
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
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

uint64_t _TopLevelDecoder.decode<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a2;
  v4 = v3;
  v40 = a3;
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  v42 = v6;
  v43 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Optional();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v36 - v14);
  v41 = *(a1 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 24);
  v20 = *(v4 + 32);
  ObjectType = swift_getObjectType();
  v23 = *v4;
  v22 = *(v4 + 8);
  v24 = *v4;
  v37 = a1;
  v25 = v44;
  _s3XPC13EncodingGraphO9ContainerPAAE18tryDecodeAsXPCData_2atqd__Sgqd__m_Says9CodingKey_pGts13DecodingErrorOYKSeRd__lF(a1, v24, ObjectType, a1, v20, v10, v15);
  if (v25)
  {
    v26 = v42;
    swift_allocError();
    return (*(v43 + 32))(v27, v10, v26);
  }

  else
  {
    v43 = v22;
    v44 = v23;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v37;
    if ((*(v41 + 48))(v15, 1, v37) == 1)
    {
      (*(v29 + 8))(v15, v30);
      v50 = v43;
      v48 = &type metadata for _TopLevelDecoder;
      v49 = lazy protocol witness table accessor for type _TopLevelDecoder and conformance _TopLevelDecoder();
      v33 = swift_allocObject();
      v47 = v33;
      v34 = *(v4 + 16);
      *(v33 + 16) = *v4;
      *(v33 + 32) = v34;
      *(v33 + 48) = *(v4 + 32);

      outlined init with copy of [CodingUserInfoKey : Any](&v50, v46);
      swift_unknownObjectRetain();
      return dispatch thunk of Decodable.init(from:)();
    }

    else
    {
      v35 = *(v41 + 32);
      v35(v18, v15, v32);
      return (v35)(v31, v18, v32);
    }
  }
}

uint64_t _s3XPC13EncodingGraphO9ContainerPAAE18tryDecodeAsXPCData_2atqd__Sgqd__m_Says9CodingKey_pGts13DecodingErrorOYKSeRd__lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X6>, uint64_t *a7@<X8>)
{
  v53 = a2;
  v51 = a1;
  v12 = type metadata accessor for Optional();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  EncodingGraph.Container.maybeFoundationData.getter(a3, a5, &v57);
  if (!v58)
  {
    return (*(*(a4 - 8) + 56))(a7, 1, 1, a4);
  }

  v47 = a7;
  v52 = v58;
  v48 = *(&v57 + 1);
  v16 = v57;
  v49 = a6;
  v17 = swift_conformsToProtocol2();
  if (!v17 || !a4)
  {
    result = (*(a5 + 8))(a3, a5);
    if (*(result + 16) < 2uLL)
    {
      __break(1u);
      return result;
    }

    v30 = *(result + 64);
    v31 = *(result + 72);
    v32 = *(result + 80);
    v33 = *(result + 88);
    outlined copy of EncodingGraph.Value(v30, v31, v32, v33);

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    v35 = v49;
    *v49 = v51;
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(16);
    v54 = v57;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v57 = v30;
    *(&v57 + 1) = v31;
    v58 = v32;
    v59 = v33;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    outlined consume of EncodingGraph.Value(v30, v31, v32, v33);
    v36 = *MEMORY[0x1E69E6AF8];
    v37 = type metadata accessor for DecodingError();
    (*(*(v37 - 8) + 104))(v35, v36, v37);
    swift_willThrowTypedImpl();
    return swift_unknownObjectRelease();
  }

  v18 = v17;
  v51 = v16;
  v60 = v52;
  v19 = *(v17 + 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v13 + 15;
  v22 = v21;
  v23 = &v47 - (v20 & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  v19(&v60, a4, v18);
  v24 = *(a4 - 8);
  if ((*(v24 + 48))(v23, 1, a4) == 1)
  {
    (*(v50 + 8))(v23, v12);
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v54 = v57;
    MEMORY[0x19A8E8E70](0xD000000000000015, 0x8000000197938BA0);
    v25 = _typeName(_:qualified:)();
    MEMORY[0x19A8E8E70](v25);

    MEMORY[0x19A8E8E70](0x206D6F726620, 0xE600000000000000);
    *&v57 = v51;
    *(&v57 + 1) = v48;
    v58 = v22;
    _print_unlocked<A, B>(_:_:)();

    v26 = v49;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v27 = *MEMORY[0x1E69E6B00];
    v28 = type metadata accessor for DecodingError();
    (*(*(v28 - 8) + 104))(v26, v27, v28);
    swift_willThrowTypedImpl();
    return swift_unknownObjectRelease();
  }

  v55 = a4;
  v56 = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v54);
  v39 = *(v24 + 32);
  v39(boxed_opaque_existential_1, v23, a4);
  outlined init with take of Encodable(&v54, &v57);
  outlined init with copy of Decoder(&v57, &v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC29XPCCodableObjectRepresentable_pMd, &_s3XPC29XPCCodableObjectRepresentable_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v57);
    swift_unknownObjectRelease();
    v40 = *(v24 + 56);
    v40(v15, 0, 1, a4);
    v41 = v47;
    v39(v47, v15, a4);
    return (v40)(v41, 0, 1, a4);
  }

  else
  {
    (*(v24 + 56))(v15, 1, 1, a4);
    (*(v50 + 8))(v15, v12);
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    *&v54 = 0xD00000000000001ELL;
    *(&v54 + 1) = 0x8000000197938BC0;
    v42 = _typeName(_:qualified:)();
    MEMORY[0x19A8E8E70](v42);

    MEMORY[0x19A8E8E70](544175136, 0xE400000000000000);
    v43 = _typeName(_:qualified:)();
    MEMORY[0x19A8E8E70](v43);

    v44 = v49;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v45 = *MEMORY[0x1E69E6B00];
    v46 = type metadata accessor for DecodingError();
    (*(*(v46 - 8) + 104))(v44, v45, v46);
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v57);
  }
}

uint64_t EncodingGraph.Container.maybeFoundationData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 8);
  v7 = *(v6() + 16);

  if (v7 != 2)
  {
    goto LABEL_10;
  }

  result = (v6)(a1, a2);
  if (*(result + 16))
  {
    v9 = *(result + 32);
    v10 = *(result + 48);
    v11 = *(result + 56);
    v20 = *(result + 40);
    outlined copy of EncodingGraph.Value(v9, v20, v10, v11);

    if (v11 != 16)
    {
      v16 = v9;
      v17 = v20;
      v18 = v10;
      v19 = v11;
LABEL_9:
      result = outlined consume of EncodingGraph.Value(v16, v17, v18, v19);
      goto LABEL_10;
    }

    if (v9 != 1)
    {
LABEL_10:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return result;
    }

    result = (v6)(a1, a2);
    if (*(result + 16) >= 2uLL)
    {
      v12 = *(result + 64);
      v13 = *(result + 72);
      v14 = *(result + 80);
      v15 = *(result + 88);
      outlined copy of EncodingGraph.Value(v12, v13, v14, v15);

      if (v15 == 15)
      {
        *a3 = v12;
        a3[1] = v13;
        a3[2] = v14;
        return result;
      }

      v16 = v12;
      v17 = v13;
      v18 = v14;
      v19 = v15;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for EncodingGraph.Container.values.getter in conformance DecodedContainer()
{
  result = *(v0 + 16);
  if (result)
  {
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _TopLevelDecoder and conformance _TopLevelDecoder()
{
  result = lazy protocol witness table cache variable for type _TopLevelDecoder and conformance _TopLevelDecoder;
  if (!lazy protocol witness table cache variable for type _TopLevelDecoder and conformance _TopLevelDecoder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TopLevelDecoder and conformance _TopLevelDecoder);
  }

  return result;
}

uint64_t _TopLevelDecoder.container<A>(keyedBy:)()
{
  v1 = type metadata accessor for _KeyedDecodingContainer();
  result = _TopLevelDecoder._container<A>(_:)(v1, &protocol witness table for _KeyedDecodingContainer<A>, &v3);
  if (!v0)
  {
    swift_getWitnessTable();
    return KeyedDecodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t protocol witness for Decoder.container<A>(keyedBy:) in conformance _TopLevelDecoder()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return _TopLevelDecoder.container<A>(keyedBy:)();
}

uint64_t _TopLevelDecoder._container<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v6 = type metadata accessor for DecodingError();
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = v3[1];
  v13 = v3[2];
  v12 = v3[3];
  v14 = v3[4];
  v15 = *(a2 + 16);

  swift_unknownObjectRetain();
  v16 = v10;
  v17 = v25;
  result = v15(v16, v11, v13, v12, v14, v9, a1, a2);
  if (v17)
  {
    v19 = v23;
    swift_allocError();
    return (*(v22 + 32))(v20, v9, v19);
  }

  return result;
}

uint64_t _s3XPC23_KeyedDecodingContainerV16decodeDictionary33_75B0D857E5E60FECD69B41037A855175LL4from2atSDyAA13EncodingGraphO3KeyOAI5ValueOGSayAMG_Says06CodingR0_pGts0C5ErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC3XPC13EncodingGraphO3KeyO_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8 = *(a1 + 16);
  if ((v8 & 1) == 0)
  {

    _StringGuts.grow(_:)(62);
    MEMORY[0x19A8E8E70](0xD00000000000001ELL, 0x8000000197938660);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x19A8E8E70](v9);

    MEMORY[0x19A8E8E70](0xD00000000000001ELL, 0x8000000197938680);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v10 = *MEMORY[0x1E69E6B00];
    v7 = type metadata accessor for DecodingError();
    (*(*(v7 - 8) + 104))(a5, v10, v7);
    swift_willThrowTypedImpl();
    return v7;
  }

  if (v8 == 1)
  {
    return v7;
  }

  v53 = a5;
  v11 = (v8 - 1) >> 1;
  v12 = v8 >> 1;
  v13 = (a1 + 64);
  while (v12)
  {
    if (!v11)
    {
      goto LABEL_28;
    }

    v19 = *v13;
    v20 = *(v13 + 2);
    v21 = *(v13 + 24);
    v22 = *(v13 + 4);
    v23 = *(v13 + 5);
    v24 = *(v13 + 6);
    v25 = *(v13 + 56);
    v26 = *(v13 + 1);
    v59 = v23;
    v60 = v22;
    if (v21 != 14)
    {
      v43 = *(v13 + 5);
      v44 = v19;
      v45 = v20;
      outlined copy of EncodingGraph.Value(v19, v26, v20, v21);
      outlined copy of EncodingGraph.Value(v22, v43, v24, v25);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v7 = *MEMORY[0x1E69E6B00];
      v46 = type metadata accessor for DecodingError();
      (*(*(v46 - 8) + 104))(v53, v7, v46);
      swift_willThrowTypedImpl();
      outlined consume of EncodingGraph.Value(v44, v26, v45, v21);
      v48 = v59;
      v47 = v22;
      v49 = v24;
      v50 = v25;
LABEL_25:
      outlined consume of EncodingGraph.Value(v47, v48, v49, v50);
      return v7;
    }

    v56 = v12;
    v57 = *v13;
    v27 = *v13;
    v58 = *(v13 + 2);
    outlined copy of EncodingGraph.Value(v19, v26, v20, 0xEu);
    if (v25 == 14)
    {
      outlined copy of EncodingGraph.Value(v22, v23, v24, 0xEu);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v7 = *MEMORY[0x1E69E6B00];
      v51 = type metadata accessor for DecodingError();
      (*(*(v51 - 8) + 104))(v53, v7, v51);
      swift_willThrowTypedImpl();
      outlined consume of EncodingGraph.Value(v27, v26, v58, 0xEu);
      v47 = v22;
      v48 = v23;
      v49 = v24;
      v50 = 14;
      goto LABEL_25;
    }

    v54 = v11;
    outlined copy of EncodingGraph.Value(v22, v23, v24, v25);
    outlined copy of EncodingGraph.Value(v27, v26, v58, 0xEu);
    v55 = v24;
    outlined copy of EncodingGraph.Value(v22, v23, v24, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
    v31 = *(v7 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_29;
    }

    v34 = v29;
    if (*(v7 + 24) >= v33)
    {
      v38 = v57;
      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = v58;
        if (v29)
        {
          goto LABEL_5;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v38 = v57;
        v37 = v58;
        if (v34)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_31;
      }

      v30 = v35;
      v37 = v58;
      v38 = v57;
      if (v34)
      {
LABEL_5:
        outlined consume of EncodingGraph.Value(v27, v26, v37, 0xEu);
        v14 = *(v7 + 56) + 32 * v30;
        v15 = *v14;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        *v14 = v60;
        *(v14 + 8) = v59;
        *(v14 + 16) = v55;
        v18 = *(v14 + 24);
        *(v14 + 24) = v25;
        outlined consume of EncodingGraph.Value(v15, v16, v17, v18);
        outlined consume of EncodingGraph.Value(v60, v59, v55, v25);
        outlined consume of EncodingGraph.Value(v27, v26, v37, 0xEu);
        goto LABEL_6;
      }
    }

    *(v7 + 8 * (v30 >> 6) + 64) |= 1 << v30;
    *(*(v7 + 48) + 16 * v30) = v38;
    v39 = *(v7 + 56) + 32 * v30;
    *v39 = v60;
    *(v39 + 8) = v59;
    *(v39 + 16) = v55;
    *(v39 + 24) = v25;
    outlined consume of EncodingGraph.Value(v60, v59, v55, v25);
    outlined consume of EncodingGraph.Value(v27, v26, v37, 0xEu);
    v40 = *(v7 + 16);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_30;
    }

    *(v7 + 16) = v42;
LABEL_6:
    v12 = v56 - 1;
    v13 += 4;
    --v11;
    if (v54 == 1)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s3XPC23_KeyedDecodingContainerV10_container33_75B0D857E5E60FECD69B41037A855175LL_6forKey0M4Typeqd__qd__m_AA01_b8EncodingD0V01_d6CodingN0Oyx_GypXpSgts0C5ErrorOYKAA01_cD0Rd__lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v47 = a3;
  v48 = a8;
  v49 = a1;
  v54 = a12;
  v58 = a10;
  v52 = type metadata accessor for DecodingError();
  v17 = *(v52 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v52);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - v22;
  v46 = a2;
  v50 = a4;
  v51 = a5;
  v24 = v53;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOAA01_boD0V01_d6CodingN0Oyx_G_ts0C5ErrorOYKF(a2, a7, &v41 - v22, v55);
  if (v24)
  {
    return (*(v17 + 32))(v54, v23, v52);
  }

  v44 = a7;
  v53 = a6;
  v43 = v21;
  v45 = v17;
  v26 = v55[0];
  v27 = v55[1];
  v28 = v55[2];
  v29 = v56;
  v30 = _s3XPC13EncodingGraphO5ValueO19unwrapIntoContainerAC0G0_pyAA18EarlyDecodingErrorVYKF();
  v32 = v31;
  LODWORD(v44) = v29;
  v41 = v26;
  v42 = v27;
  v49 = v28;
  v33 = v30;
  v34 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey();
  v56 = v34;
  WitnessTable = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v46, v34);
  v36 = CodingInfo.coding(forKey:forType:)(v55, v47, v50);
  v38 = v37;
  v40 = v39;
  outlined destroy of [CodingKey](v55, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
  (*(a11 + 16))(v36, v38, v40, v33, v32, v43, a9, a11);
  return outlined consume of EncodingGraph.Value(v41, v42, v49, v44);
}

uint64_t _KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v34 = a5;
  v30 = a7;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v28 = a8;
  v12 = type metadata accessor for DecodingError();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  v21 = *(a6 - 8);
  (*(v21 + 16))(&v27 - v19, a1, a6);
  (*(v21 + 56))(v20, 0, 1, a6);
  v22 = v30;
  v23 = v35;
  _s3XPC23_KeyedDecodingContainerV10_container33_75B0D857E5E60FECD69B41037A855175LL_6forKey0M4Typeqd__qd__m_AA01_b8EncodingD0V01_d6CodingN0Oyx_GypXpSgts0C5ErrorOYKAA01_cD0Rd__lF(&type metadata for _TopLevelDecoder, v20, v30, v31, v32, v33, v34, v36, &type metadata for _TopLevelDecoder, a9, &protocol witness table for _TopLevelDecoder, v15);
  (*(v17 + 8))(v20, v16);
  if (v23)
  {
    swift_allocError();
    return (*(v29 + 32))(v24, v15, v12);
  }

  else
  {
    v38 = v36[0];
    v39 = v36[1];
    v40 = v37;
    _TopLevelDecoder.decode<A>(_:)(v22, a10, v28);
    v26 = *(&v38 + 1);
    v42 = v38;
    outlined destroy of [CodingKey](&v42, &_sSays9CodingKey_pGMd, &_sSays9CodingKey_pGMR);
    v41 = v26;
    outlined destroy of [CodingKey](&v41, &_sSDys17CodingUserInfoKeyVypGMd, &_sSDys17CodingUserInfoKeyVypGMR);
    return swift_unknownObjectRelease();
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

char *_s3XPC23_KeyedDecodingContainerV10codingInfo9containerACyxGAA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v48 = a1;
  v49 = a2;
  v14 = type metadata accessor for DecodingError();
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - v19;
  ObjectType = swift_getObjectType();
  v22 = *(a5 + 8);
  v56 = a4;
  v23 = v22(ObjectType, a5);
  v24 = v23;
  v25 = *(v23 + 16);
  if (!v25 || *(v23 + 56) != 16)
  {

    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v50 = 0xD00000000000001FLL;
    v51 = 0x80000001979385F0;
    type metadata accessor for _KeyedDecodingContainer();
    v28 = _typeName(_:qualified:)();
    v18 = v29;
    MEMORY[0x19A8E8E70](v28);

    goto LABEL_7;
  }

  if (*(v23 + 32))
  {
    if (*(v23 + 32) == 1)
    {

      v50 = 0;
      v51 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);
      MEMORY[0x19A8E8E70](0xD00000000000001FLL, 0x80000001979385D0);
      type metadata accessor for _KeyedDecodingContainer();
      v26 = _typeName(_:qualified:)();
      v18 = v27;
      MEMORY[0x19A8E8E70](v26);

      MEMORY[0x19A8E8E70](0x20646E756F66202CLL, 0xE800000000000000);
      LOBYTE(v54) = 1;
      _print_unlocked<A, B>(_:_:)();
LABEL_7:
      v30 = v47;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();

      (*(v45 + 104))(v30, *MEMORY[0x1E69E6B00], v46);
      swift_willThrowTypedImpl();
      swift_unknownObjectRelease();
      return v18;
    }

    if (v25 != 2)
    {

      v50 = 0;
      v51 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);
      MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
      LOBYTE(v54) = 2;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x19A8E8E70](0x20726F6620, 0xE500000000000000);
      type metadata accessor for _KeyedDecodingContainer();
      v35 = _typeName(_:qualified:)();
      MEMORY[0x19A8E8E70](v35);

      MEMORY[0x19A8E8E70](0xD000000000000016, 0x8000000197938610);
      v54 = v25;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v37;
      MEMORY[0x19A8E8E70](v36);

      MEMORY[0x19A8E8E70](0x74616D73696D2029, 0xEA00000000006863);
      goto LABEL_7;
    }

    if (*(v23 + 88) != 17)
    {
      v50 = 0;
      v51 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v54 = v50;
      v55 = v51;
      MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
      LOBYTE(v50) = 2;
      v18 = MEMORY[0x1E69E7068];
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x19A8E8E70](0x20726F6620, 0xE500000000000000);
      type metadata accessor for _KeyedDecodingContainer();
      v38 = _typeName(_:qualified:)();
      MEMORY[0x19A8E8E70](v38);

      MEMORY[0x19A8E8E70](0xD00000000000002CLL, 0x8000000197938630);
      v39 = *(v24 + 64);
      v40 = *(v24 + 72);
      v41 = *(v24 + 80);
      v42 = *(v24 + 88);
      outlined copy of EncodingGraph.Value(v39, v40, v41, v42);

      v50 = v39;
      v51 = v40;
      v52 = v41;
      v53 = v42;
      _print_unlocked<A, B>(_:_:)();
      outlined consume of EncodingGraph.Value(v39, v40, v41, v42);
      goto LABEL_7;
    }

    v33 = *(v23 + 64);
    v32 = *(v23 + 72);
    swift_unknownObjectRetain();

    v34 = _s3XPC23_KeyedDecodingContainerV10codingInfo9containerACyxGAA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(v48, v49, a3, v33, v32, a6, a7, v18);
    if (v8)
    {
      swift_unknownObjectRelease();
      (*(v45 + 32))(v47, v18, v46);
    }

    else
    {
      v43 = v34;
      swift_unknownObjectRelease();
      return v43;
    }
  }

  else
  {
    v18 = v48;
    _s3XPC23_KeyedDecodingContainerV16decodeDictionary33_75B0D857E5E60FECD69B41037A8551754from2atSDyAA13EncodingGraphO3KeyOAI5ValueOGSayAMG_Says06CodingR0_pGts0C5ErrorOYKFZ(v23, v48, a6, a7, v20);
    if (v8)
    {
      swift_unknownObjectRelease();

      (*(v45 + 32))(v47, v20, v46);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return v18;
}

char *_s3XPC23_KeyedDecodingContainerVyxGAA01_cD0A2aEP10codingInfo9containerxAA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfCTW@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>)
{
  v25 = a8;
  v26 = a6;
  v14 = type metadata accessor for DecodingError();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v27;
  result = _s3XPC23_KeyedDecodingContainerV10codingInfo9containerACyxGAA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(a1, a2, a3, a4, a5, *(a7 + 16), *(a7 + 24), v18);
  if (v19)
  {
    return (*(v15 + 32))(v26, v18, v14);
  }

  v24 = v25;
  *v25 = result;
  v24[1] = v21;
  v24[2] = v22;
  v24[3] = v23;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC3XPC13EncodingGraphO3KeyO_AE5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOAE5ValueOGMd, &_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOAE5ValueOGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      outlined copy of EncodingGraph.Value(v7, v8, v9, v10);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3forS2Sm_AA18_DecodingContainer_pts0H5ErrorOYKF(void *a1, void *a2)
{
  v5 = type metadata accessor for DecodingError();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v38 - v12;
  v15 = *v2;
  v14 = *(v2 + 8);
  v16 = *(v2 + 16);
  v17 = *(v2 + 24);
  if (v17 == 17)
  {
    v39 = *(v2 + 16);
    v38 = v11;
    v40 = a2;
    v41 = v10;
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    v21 = *(v20 + 8);
    swift_unknownObjectRetain();
    v22 = v21(v19, v20);
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v24 = CodingInfo.coding(forKey:forType:)(v42, v23, v22);
    v26 = v25;
    v28 = v27;

    outlined destroy of CodingKey?(v42);
    swift_unknownObjectRetain();
    v29 = v50;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v24, v26, v28, v14, v13, &v44);
    if (v29)
    {
      outlined consume of EncodingGraph.Value(v15, v14, v39, 0x11u);
      (*(v38 + 32))(v40, v13, v41);
    }

    else
    {
      v48[0] = v44;
      v48[1] = v45;
      v48[2] = v46;
      v49 = v47;
      v37 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2Sms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v9);
      v50 = 0;
      outlined consume of EncodingGraph.Value(v15, v14, v39, 0x11u);
      outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v48);
      return v37;
    }
  }

  else if (v17 == 1)
  {
    v18 = *(v2 + 8);
  }

  else
  {
    v30 = a2;
    v31 = a1[3];
    v32 = a1[4];
    v41 = v10;
    v33 = a1;
    v34 = v11;
    v35 = v16;
    __swift_project_boxed_opaque_existential_1(v33, v31);
    (*(v32 + 8))(v31, v32);

    LODWORD(v32) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v30 = MEMORY[0x1E69E6158];
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v42[0] = v44;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v44 = v15;
    *(&v44 + 1) = v14;
    *&v45 = v35;
    BYTE8(v45) = v17;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v34 + 104))(v30, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrowTypedImpl();
  }

  return v15;
}

char *closure #1 in XPCSession.setCancellationHandler(_:)(_xpc_rich_error_s *a1, void (*a2)(uint64_t))
{
  result = MEMORY[0x19A8E9F90]();
  if (result == MEMORY[0x1E69E9EE8])
  {
    result = xpc_rich_error_copy_description(a1);
    if (result)
    {
      v5 = result;
      v6 = String.init(cString:)();
      v8 = v7;
      can_retry = xpc_rich_error_can_retry(a1);
      free(v5);
      v10[0] = can_retry;
      v11 = v6;
      v12 = v8;
      ClientSpecifiedHandler.callEventHandler(_:)(v10, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t _s3XPC13EncodingGraphO5ValueO19unwrapIntoContainerAC0G0_pyAA18EarlyDecodingErrorVYKF()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4 == 14 || v4 == 16)
  {
    _StringGuts.grow(_:)(33);
    MEMORY[0x19A8E8E70](0x7520746F6E6E6143, 0xEE0020706172776ELL);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0xD000000000000011, 0x80000001979388F0);
    v6 = 0;
    lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
    swift_willThrowTypedImpl();
  }

  else
  {
    if (v4 == 17)
    {
      v6 = *v0;
    }

    else
    {
      type metadata accessor for DecodedContainer();
      v6 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO5ValueOGMd, &_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO5ValueOGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_197937550;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 2;
      *(v7 + 56) = 16;
      *(v7 + 64) = v2;
      *(v7 + 72) = v1;
      *(v7 + 80) = v3;
      *(v7 + 88) = v4;
      *(v6 + 16) = v7;
    }

    outlined copy of EncodingGraph.Value(v2, v1, v3, v4);
  }

  return v6;
}

uint64_t outlined destroy of [CodingKey](uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s3XPC25_UnkeyedDecodingContainerV10codingInfo9containerAcA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v36 = a5;
  v37 = a1;
  v45 = a2;
  v10 = type metadata accessor for DecodingError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v16 = (*(a4 + 8))(ObjectType, a4);
  v17 = *(v16 + 16);
  if (!v17 || *(v16 + 56) != 16)
  {

LABEL_9:
    v27 = v36;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();

    (*(v11 + 104))(v27, *MEMORY[0x1E69E6B00], v10);
    swift_willThrowTypedImpl();
    return swift_unknownObjectRelease();
  }

  v18 = v16 + 32;
  if (!*(v16 + 32))
  {

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    MEMORY[0x19A8E8E70](0xD00000000000001FLL, 0x80000001979385D0);
    MEMORY[0x19A8E8E70](0xD000000000000019, 0x8000000197936F60);
    MEMORY[0x19A8E8E70](0x20646E756F66202CLL, 0xE800000000000000);
    LOBYTE(v42) = 0;
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_9;
  }

  if (*(v16 + 32) == 1)
  {
    v19 = v16;
    result = swift_unknownObjectRelease();
    if (*(v19 + 16) >= v17)
    {
      v21 = v19;
      v22 = 0;
      v23 = 1;
      v24 = (2 * v17) | 1;
      v25 = v45;
      v26 = v37;
LABEL_7:
      *a6 = v26;
      a6[1] = v25;
      a6[2] = a3;
      a6[3] = v21;
      a6[4] = v18;
      a6[5] = v23;
      a6[6] = v24;
      a6[7] = v22;
      return result;
    }

    __break(1u);
    return result;
  }

  if (v17 != 2)
  {

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    LOBYTE(v42) = 2;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x20726F6620, 0xE500000000000000);
    MEMORY[0x19A8E8E70](0xD000000000000019, 0x8000000197936F60);
    MEMORY[0x19A8E8E70](0xD000000000000016, 0x8000000197938610);
    v42 = v17;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x19A8E8E70](v30);

    MEMORY[0x19A8E8E70](0x74616D73696D2029, 0xEA00000000006863);
    goto LABEL_9;
  }

  if (*(v16 + 88) != 17)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    v31 = v16;
    _StringGuts.grow(_:)(61);
    v42 = v38;
    v43 = v39;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    LOBYTE(v38) = 2;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x20726F6620, 0xE500000000000000);
    MEMORY[0x19A8E8E70](0xD000000000000019, 0x8000000197936F60);
    MEMORY[0x19A8E8E70](0xD00000000000002CLL, 0x8000000197938630);
    v32 = *(v31 + 64);
    v33 = *(v31 + 72);
    v34 = *(v31 + 80);
    v35 = *(v31 + 88);
    outlined copy of EncodingGraph.Value(v32, v33, v34, v35);

    v38 = v32;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    _print_unlocked<A, B>(_:_:)();
    outlined consume of EncodingGraph.Value(v32, v33, v34, v35);
    goto LABEL_9;
  }

  v29 = *(v16 + 64);
  v28 = *(v16 + 72);
  swift_unknownObjectRetain();

  _s3XPC25_UnkeyedDecodingContainerV10codingInfo9containerAcA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(v44, v37, v45, a3, v29, v28, v14);
  if (!v6)
  {
    result = swift_unknownObjectRelease();
    v18 = v44[4];
    v23 = v44[5];
    v24 = v44[6];
    v22 = v44[7];
    v26 = v44[0];
    v25 = v44[1];
    a3 = v44[2];
    v21 = v44[3];
    goto LABEL_7;
  }

  swift_unknownObjectRelease();
  return (*(v11 + 32))(v36, v14, v10);
}

double protocol witness for Decoder.unkeyedContainer() in conformance _TopLevelDecoder@<D0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for DecodingError();
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  a1[3] = &type metadata for _UnkeyedDecodingContainer;
  a1[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
  v15 = swift_allocObject();
  *a1 = v15;

  swift_unknownObjectRetain();
  v16 = v29;
  _s3XPC25_UnkeyedDecodingContainerV10codingInfo9containerAcA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(v10, v11, v12, v14, v7, v26);
  if (v16)
  {
    v17 = *(v24 + 32);
    v18 = v7;
    v19 = v25;
    v17(v9, v18, v25);
    swift_allocError();
    v17(v20, v9, v19);
    __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  else
  {
    v22 = v26[1];
    v15[1] = v26[0];
    v15[2] = v22;
    result = *&v27;
    v23 = v28;
    v15[3] = v27;
    v15[4] = v23;
  }

  return result;
}

uint64_t _s3XPC23_KeyedDecodingContainerV06nestedD07keyedBy6forKeys0bcD0Vyqd__Gqd__m_xts0C5ErrorOYKs06CodingI0Rd__lF@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v27[0] = a8;
  v14 = type metadata accessor for DecodingError();
  v28 = *(v14 - 8);
  v29 = v14;
  v15 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v27 - v21;
  v27[1] = a7;
  v23 = type metadata accessor for _KeyedDecodingContainer();
  v24 = *(a6 - 8);
  (*(v24 + 16))(v22, a1, a6);
  (*(v24 + 56))(v22, 0, 1, a6);
  v25 = v35;
  _s3XPC23_KeyedDecodingContainerV10_container33_75B0D857E5E60FECD69B41037A855175LL_6forKey0M4Typeqd__qd__m_AA01_b8EncodingD0V01_d6CodingN0Oyx_GypXpSgts0C5ErrorOYKAA01_cD0Rd__lF(v23, v22, 0, v30, v31, v32, v33, &v34, v23, a9, &protocol witness table for _KeyedDecodingContainer<A>, v17);
  (*(v19 + 8))(v22, v18);
  if (v25)
  {
    return (*(v28 + 32))(a11, v17, v29);
  }

  swift_getWitnessTable();
  return KeyedDecodingContainer.init<A>(_:)();
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.nestedContainer<A>(keyedBy:forKey:) in conformance _KeyedDecodingContainer<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for DecodingError();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v19[1];
  result = _s3XPC23_KeyedDecodingContainerV06nestedD07keyedBy6forKeys0bcD0Vyqd__Gqd__m_xts0C5ErrorOYKs06CodingI0Rd__lF(a1, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(a4 + 16), a2, a5, *(a4 + 24), a3, v15);
  if (v16)
  {
    swift_allocError();
    return (*(v12 + 32))(v18, v15, v11);
  }

  return result;
}

uint64_t _KeyedDecodingContainer.allKeys.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVy3XPC13EncodingGraphO3KeyOAE5ValueO_GMd, &_sSD4KeysVy3XPC13EncodingGraphO3KeyOAE5ValueO_GMR);
  lazy protocol witness table accessor for type [EncodingGraph.Key : EncodingGraph.Value].Keys and conformance [A : B].Keys();
  v0 = Sequence.compactMap<A>(_:)();

  return v0;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.allKeys.getter in conformance _KeyedDecodingContainer<A>(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return _KeyedDecodingContainer.allKeys.getter();
}

uint64_t SingleValueGraphEncodingNode.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t _s3XPC16_TopLevelDecoderVAA18_DecodingContainerA2aDP10codingInfo9containerxAA06CodingH0V_AA13EncodingGraphO0F0_pts0E5ErrorOYKcfCTW@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t XPCReceivedMessage.init(dictionary:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  v4 = specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEE00636E79537349, v3);
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = MEMORY[0x19A8E9F90](v4) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  type metadata accessor for XPCReceivedMessage.XPCReceivedMessageMetadata();
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 17) = v5;
  *a2 = v3;
  a2[1] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer()
{
  result = lazy protocol witness table cache variable for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer;
  if (!lazy protocol witness table cache variable for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EncodingGraph.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EncodingGraph.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t closure #1 in _KeyedDecodingContainer.allKeys.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[1])
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  v3 = *a1;
  v4 = a1[1];

  return dispatch thunk of CodingKey.init(stringValue:)();
}

BOOL protocol witness for UnkeyedDecodingContainer.isAtEnd.getter in conformance _UnkeyedDecodingContainer()
{
  v1 = v0[5];
  v2 = v0[6] >> 1;
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if (!v3)
  {
    return v0[7] == v4;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v8 = v4;
  v9 = v5;
  return (*(v2 + 32))(v7);
}

{
  v2 = *(v1 + 24);
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 40) & ~*(*(*(v1 + 16) - 8) + 80);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v8 = v4;
  v9 = v5;
  return (*(v2 + 32))(v7);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(double a1)
{
  v2 = *(v1 + 24);
  *v4 = a1;
  v4[1] = 0;
  v4[2] = 0;
  v5 = 3;
  return SingleValueGraphEncodingNode.setValue(to:)(v4);
}

uint64_t XPCSession.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = static String._copying(_:)();
    v8 = v7;

    a2 = v8;
  }

  v9[0] = a1;
  v9[1] = a2;
  v9[2] = 0;
  v10 = 1;
  SingleValueGraphEncodingNode.setValue(to:)(v9);
}

uint64_t outlined destroy of Encodable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t XPCReceivedMessage.reply<A>(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  XPCReceivedMessage.reply<A>(_:userInfo:)(a1, v5, a2);
}

uint64_t XPCReceivedMessage.reply<A>(_:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)(a2, 0, a3, &v6);
  if (xpc_dictionary_expects_reply())
  {
    xpc_dictionary_send_reply_4SWIFT();
  }

  return swift_unknownObjectRelease();
}

uint64_t *protocol witness for Decoder.singleValueContainer() in conformance _TopLevelDecoder@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for DecodingError();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v12 = v1[3];
  v14 = v1[4];
  a1[3] = &type metadata for _SingleValueDecodingContainer;
  a1[4] = lazy protocol witness table accessor for type _SingleValueDecodingContainer and conformance _SingleValueDecodingContainer();
  v15 = swift_allocObject();
  *a1 = v15;

  swift_unknownObjectRetain();
  v16 = v15 + 16;
  v17 = v23;
  result = _s3XPC29_SingleValueDecodingContainerV10codingInfo9containerAcA06CodingG0V_AA13EncodingGraphO0E0_pts0D5ErrorOYKcfC(v10, v11, v13, v12, v14, v7, v16);
  if (v17)
  {
    v19 = *(v22 + 32);
    v19(v9, v7, v3);
    swift_allocError();
    v19(v20, v9, v3);
    return __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_19790A81C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  outlined consume of EncodingGraph.Value(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

unint64_t lazy protocol witness table accessor for type _SingleValueDecodingContainer and conformance _SingleValueDecodingContainer()
{
  result = lazy protocol witness table cache variable for type _SingleValueDecodingContainer and conformance _SingleValueDecodingContainer;
  if (!lazy protocol witness table cache variable for type _SingleValueDecodingContainer and conformance _SingleValueDecodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SingleValueDecodingContainer and conformance _SingleValueDecodingContainer);
  }

  return result;
}

uint64_t _s3XPC29_SingleValueDecodingContainerV10codingInfo9containerAcA06CodingG0V_AA13EncodingGraphO0E0_pts0D5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  ObjectType = swift_getObjectType();
  v14 = (*(a5 + 8))(ObjectType, a5);
  v15 = *(v14 + 16);
  if (v15 && *(v14 + 56) == 16)
  {
    if (*(v14 + 32) != 2)
    {

      v17 = 0;
      v18 = 17;
      v16 = a4;
      goto LABEL_7;
    }

    if (v15 == 2)
    {
      v16 = *(v14 + 64);
      a5 = *(v14 + 72);
      v17 = *(v14 + 80);
      v18 = *(v14 + 88);
      outlined copy of EncodingGraph.Value(v16, a5, v17, v18);
      swift_unknownObjectRelease();

LABEL_7:
      *a7 = a1;
      *(a7 + 8) = a2;
      *(a7 + 16) = a3;
      *(a7 + 24) = v16;
      *(a7 + 32) = a5;
      *(a7 + 40) = v17;
      *(a7 + 48) = v18;
      return result;
    }
  }

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();

  v20 = *MEMORY[0x1E69E6B00];
  v21 = type metadata accessor for DecodingError();
  (*(*(v21 - 8) + 104))(a6, v20, v21);
  swift_willThrowTypedImpl();
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(uint64_t a1, uint64_t a2)
{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ims0D5ErrorOYKFAA01_bcdE0V_Tt0B5);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for _SingleValueDecodingContainer, &protocol witness table for _SingleValueDecodingContainer, &unk_1F0C08F80, outlined init with copy of _SingleValueDecodingContainer);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for _SingleValueDecodingContainer, &protocol witness table for _SingleValueDecodingContainer, &unk_1F0C08F80, outlined init with copy of _SingleValueDecodingContainer) & 1;
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt16VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5UInt8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5UInt8VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt64VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors4Int8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5UInt8VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt32VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int64VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ums0D5ErrorOYKFAA01_bcdE0V_Tt0B5);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt16VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt32VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ims0D5ErrorOYKFAA01_bcdE0V_Tt0B5(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[0] = *(v1 + 24);
  *(v16 + 9) = *(v1 + 33);
  *v15 = *(v1 + 24);
  *&v15[9] = *(v1 + 33);
  v14[3] = &type metadata for _SingleValueDecodingContainer;
  v14[4] = &protocol witness table for _SingleValueDecodingContainer;
  v9 = swift_allocObject();
  v14[0] = v9;
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  outlined init with copy of EncodingGraph.Value(v16, v13);
  outlined init with copy of _SingleValueDecodingContainer(v1, v13);
  v11 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2im_AA18_DecodingContainer_pts0H5ErrorOYKF(v14, v8);
  outlined consume of EncodingGraph.Value(*v15, *&v15[8], *&v15[16], v15[24]);
  if (v2)
  {
    (*(v5 + 32))(a1, v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  v15[0] = *v3;
  v15[1] = v11;
  v15[2] = *(v3 + 32);
  v16 = *(v3 + 48);
  result = a3(v10);
  if (v4)
  {
    v13 = result;
    swift_allocError();
    (*(v7 + 32))(v14, v10, v6);
    return v13;
  }

  return result;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3forS2im_AA18_DecodingContainer_pts0H5ErrorOYKF(void *a1, void *a2)
{
  v5 = type metadata accessor for DecodingError();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v35 - v12;
  v14 = *v2;
  v15 = *(v2 + 24);
  if (v15 != 4)
  {
    v37 = v11;
    v38 = v10;
    v16 = *(v2 + 16);
    v39 = *(v2 + 8);
    v40 = a2;
    if (v15 == 17)
    {
      v36 = v16;
      v18 = a1[3];
      v17 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v18);
      v19 = *(v17 + 8);
      swift_unknownObjectRetain();
      v20 = v19(v18, v17);
      v42 = 0;
      memset(v41, 0, sizeof(v41));
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
      v22 = CodingInfo.coding(forKey:forType:)(v41, v21, v20);
      v24 = v23;
      v26 = v25;

      outlined destroy of CodingKey?(v41);
      swift_unknownObjectRetain();
      v27 = v26;
      v28 = v39;
      v29 = v49;
      _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v22, v24, v27, v39, v13, &v43);
      if (v29)
      {
        outlined consume of EncodingGraph.Value(v14, v28, v36, 0x11u);
        (*(v37 + 32))(v40, v13, v38);
      }

      else
      {
        v47[0] = v43;
        v47[1] = v44;
        v47[2] = v45;
        v48 = v46;
        v33 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ims0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v9);
        v49 = 0;
        outlined consume of EncodingGraph.Value(v14, v28, v36, 0x11u);
        outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v47);
        return v33;
      }
    }

    else
    {
      v30 = a1[3];
      v31 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v30);
      (*(v31 + 8))(v30, v31);

      LODWORD(v30) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      v32 = v40;
      *v40 = MEMORY[0x1E69E6530];
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v41[0] = v43;
      MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
      *&v43 = v14;
      *(&v43 + 1) = v39;
      *&v44 = v16;
      BYTE8(v44) = v15;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(v37 + 104))(v32, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrowTypedImpl();
    }
  }

  return v14;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.contains(_:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return _KeyedDecodingContainer.contains(_:)(a1, a2, a3, a4, *(v4 + 24));
}

uint64_t _KeyedDecodingContainer.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a5 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v9 = v8;
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

BOOL _s3XPC23_KeyedDecodingContainerV9decodeNil6forKeySbx_ts0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v29 = a3;
  v14 = type metadata accessor for DecodingError();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  v21 = v29;
  v27[0] = a4;
  v27[1] = a6;
  v22 = a4;
  v23 = a5;
  v24 = v37;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(v19, v22, a5, a6, a7, v18, &v34);
  if (v24)
  {
    (*(v15 + 32))(v28, v18, v14);
  }

  else
  {
    v31 = v34;
    v32 = v35;
    v33 = v36;
    v30[0] = v20;
    v30[1] = v21;
    v30[2] = v27[0];
    v30[3] = a5;
    v25 = type metadata accessor for _KeyedDecodingContainer();

    v23 = specialized EncodingGraph.Value.decodeNil(for:)(v30, &v31, v25, &protocol witness table for _KeyedDecodingContainer<A>);
    outlined consume of EncodingGraph.Value(v31, *(&v31 + 1), v32, v33);
  }

  return v23;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeNil(forKey:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void, void, void, void, char *))
{
  v9 = type metadata accessor for DecodingError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a4(a1, *v4, v4[1], v4[2], v4[3], *(a2 + 16), *(a2 + 24), v13);
  if (v5)
  {
    swift_allocError();
    (*(v10 + 32))(v15, v13, v9);
  }

  return v14 & 1;
}

BOOL specialized EncodingGraph.Value.decodeNil(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DecodingError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, a3);
  v18 = *(a2 + 8);
  v19 = *(a2 + 24);
  if (v19 == 17)
  {
    v31[1] = v9;
    v21 = *(a4 + 8);
    swift_unknownObjectRetain();
    v22 = v21(a3, a4);
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v22, v23, v24, v18, v13, v32);
    v26 = v32[3];
    v27 = v32[4];
    v28 = v32[5];
    v29 = v33;

    v20 = v29 == 18 && (v27 | v26 | v28) == 0;
    outlined consume of EncodingGraph.Value(v26, v27, v28, v29);
  }

  else
  {
    v20 = v19 == 18 && (*a2 | *(a2 + 16) | v18) == 0;
  }

  (*(v14 + 8))(v17, a3);
  return v20;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?, @guaranteed OS_xpc_object?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6(a2, a3);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in XPCSession._send(message:replyHandler:)(uint64_t a1, _xpc_rich_error_s *a2, void (*a3)(uint64_t *))
{
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    v7 = swift_unknownObjectRetain();
    if (MEMORY[0x19A8E9F90](v7) == MEMORY[0x1E69E9EE8])
    {
      v8 = xpc_rich_error_copy_description(a2);
      if (v8)
      {
        v9 = v8;
        v10 = String.init(cString:)();
        v12 = v11;
        can_retry = xpc_rich_error_can_retry(a2);
        free(v9);
        v15 = can_retry;
        v16 = v10;
        v17 = v12;
        v18 = 1;
        a3(&v15);
        swift_unknownObjectRelease();
        return outlined consume of Result<XPCDictionary, XPCRichError>(v15, v16, v17, v18);
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __XPC_INTERNAL_CRASH__(_:file:line:)();
  }

  v5 = swift_unknownObjectRetain();
  if (MEMORY[0x19A8E9F90](v5) != MEMORY[0x1E69E9E80])
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = 0;
  v17 = 0;
  v15 = a1;
  v18 = 0;
  a3(&v15);
  return outlined consume of Result<XPCDictionary, XPCRichError>(v15, v16, v17, v18);
}

void protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v12 = type metadata accessor for DecodingError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 16);
  v19[0] = *v6;
  v19[1] = v17;
  v19[2] = *(v6 + 32);
  v20 = *(v6 + 48);
  _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2dms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(v16, a3, a4, a5, a6);
  if (v7)
  {
    swift_allocError();
    (*(v13 + 32))(v18, v16, v12);
  }
}

{
  v12 = type metadata accessor for DecodingError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 16);
  v19[0] = *v6;
  v19[1] = v17;
  v19[2] = *(v6 + 32);
  v20 = *(v6 + 48);
  _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2fms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(v16, a3, a4, a5, a6);
  if (v7)
  {
    swift_allocError();
    (*(v13 + 32))(v18, v16, v12);
  }
}

void protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(uint64_t a1, uint64_t a2)
{
  protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for _SingleValueDecodingContainer, &protocol witness table for _SingleValueDecodingContainer, &unk_1F0C08F80, outlined init with copy of _SingleValueDecodingContainer);
}

{
  protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for _SingleValueDecodingContainer, &protocol witness table for _SingleValueDecodingContainer, &unk_1F0C08F80, outlined init with copy of _SingleValueDecodingContainer);
}

double _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2dms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v21 = a1;
  v10 = type metadata accessor for DecodingError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25[0] = *(v5 + 24);
  *(v25 + 9) = *(v5 + 33);
  *v24 = *(v5 + 24);
  *&v24[9] = *(v5 + 33);
  v23[3] = a2;
  v23[4] = a3;
  v15 = swift_allocObject();
  v23[0] = v15;
  v16 = *(v5 + 16);
  *(v15 + 16) = *v5;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v5 + 32);
  *(v15 + 64) = *(v5 + 48);
  outlined init with copy of EncodingGraph.Value(v25, v22);
  a5(v5, v22);
  _s3XPC13EncodingGraphO5ValueO6decode2as3forS2dm_AA18_DecodingContainer_pts0H5ErrorOYKF(v23, v14);
  v18 = v17;
  outlined consume of EncodingGraph.Value(*v24, *&v24[8], *&v24[16], v24[24]);
  if (v6)
  {
    (*(v11 + 32))(v21, v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t closure #1 in XPCSession._send<A>(_:replyHandler:)(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = *a1;
  if (*(a1 + 24))
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v11 = *a1 & 1;
    v12 = v5;
    v13 = v4;
    v14 = 1;

    a2(&v11);
  }

  else
  {
    v6 = *a1;
    swift_unknownObjectRetain_n();
    v7 = specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEE00636E79537349, v3);
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = MEMORY[0x19A8E9F90](v7) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v7);
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0;
    }

    type metadata accessor for XPCReceivedMessage.XPCReceivedMessageMetadata();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 17) = v8;
    v11 = v3;
    v12 = v9;
    v13 = 0;
    v14 = 0;
    swift_unknownObjectRetain();

    a2(&v11);

    swift_unknownObjectRelease();
  }

  return outlined consume of Result<XPCReceivedMessage, XPCRichError>(v11, v12, v13, v14);
}

uint64_t implicit closure #2 in implicit closure #1 in XPCSession.send(message:replyHandler:)(__int128 *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 24);
  v9 = *a1;
  v10 = v6;
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return ClientSpecifiedHandler.callEventHandler(_:)(&v9, a2);
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3forS2dm_AA18_DecodingContainer_pts0H5ErrorOYKF(void *a1, void *a2)
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v14 = &v39 - v13;
  v16 = *v2;
  v15 = *(v2 + 8);
  v17 = *(v2 + 16);
  v18 = *(v2 + 24);
  if (v18 == 17)
  {
    v42 = *(v2 + 16);
    v40 = v12;
    v43 = a2;
    v44 = result;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v41 = v15;
    v22 = *(v21 + 8);
    swift_unknownObjectRetain();
    v23 = v22(v20, v21);
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    v25 = CodingInfo.coding(forKey:forType:)(v45, v24, v23);
    v27 = v26;
    v29 = v28;

    outlined destroy of CodingKey?(v45);
    swift_unknownObjectRetain();
    v30 = v29;
    v31 = v41;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v25, v27, v30, v41, v14, &v47);
    if (v3)
    {
      outlined consume of EncodingGraph.Value(v16, v31, v42, 0x11u);
      return (*(v40 + 32))(v43, v14, v44);
    }

    else
    {
      v51[0] = v47;
      v51[1] = v48;
      v51[2] = v49;
      v52 = v50;
      _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2dms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v10);
      outlined consume of EncodingGraph.Value(v16, v31, v42, 0x11u);
      return outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v51);
    }
  }

  else if (v18 == 3)
  {
    v19 = *v2;
  }

  else
  {
    v32 = a2;
    v33 = *(v2 + 8);
    v34 = a1[3];
    v35 = a1[4];
    v44 = result;
    v36 = a1;
    v37 = v12;
    v38 = v17;
    __swift_project_boxed_opaque_existential_1(v36, v34);
    (*(v35 + 8))(v34, v35);

    LODWORD(v34) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v32 = MEMORY[0x1E69E63B0];
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v45[0] = v47;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v47 = v16;
    *(&v47 + 1) = v33;
    *&v48 = v38;
    BYTE8(v48) = v18;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v37 + 104))(v32, *MEMORY[0x1E69E6AF8], v44);
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v12 = type metadata accessor for DecodingError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 16);
  v21[0] = *v6;
  v21[1] = v17;
  v21[2] = *(v6 + 32);
  v22 = *(v6 + 48);
  result = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2Sms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(v16, a3, a4, a5, a6);
  if (v7)
  {
    v19 = result;
    swift_allocError();
    (*(v13 + 32))(v20, v16, v12);
    return v19;
  }

  return result;
}

{
  v12 = type metadata accessor for DecodingError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 16);
  v21[0] = *v6;
  v21[1] = v17;
  v21[2] = *(v6 + 32);
  v22 = *(v6 + 48);
  v18 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2bms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(v16, a3, a4, a5, a6);
  if (v7)
  {
    swift_allocError();
    (*(v13 + 32))(v19, v16, v12);
  }

  return v18 & 1;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2Sms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v23 = a1;
  v10 = type metadata accessor for DecodingError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[0] = *(v5 + 24);
  *(v22 + 9) = *(v5 + 33);
  *v21 = *(v5 + 24);
  *&v21[9] = *(v5 + 33);
  v20[3] = a2;
  v20[4] = a3;
  v15 = swift_allocObject();
  v20[0] = v15;
  v16 = *(v5 + 16);
  *(v15 + 16) = *v5;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v5 + 32);
  *(v15 + 64) = *(v5 + 48);
  outlined init with copy of EncodingGraph.Value(v22, v19);
  a5(v5, v19);
  v17 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2Sm_AA18_DecodingContainer_pts0H5ErrorOYKF(v20, v14);
  outlined consume of EncodingGraph.Value(*v21, *&v21[8], *&v21[16], v21[24]);
  if (v6)
  {
    (*(v11 + 32))(v23, v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v17;
}

uint64_t type metadata instantiation function for _KeyedDecodingContainer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(char a1)
{
  v2 = *(v1 + 24);
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = a1 & 1;
  v5 = 0;
  return SingleValueGraphEncodingNode.setValue(to:)(v4);
}

uint64_t outlined consume of Result<XPCReceivedMessage, XPCRichError>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t outlined consume of Result<XPCDictionary, XPCRichError>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return swift_unknownObjectRelease();
  }
}

uint64_t _UnkeyedEncodingContainer.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a4;
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v15 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v26 - v16;
  v30 = a2;
  v31 = v28;
  v32 = v29;
  v33 = a5;
  v18 = v36;
  result = dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (v34 == 2 || (v34 & 1) == 0)
  {
    v36 = v18;
    (*(v10 + 16))(v13, a1, a6);
    dispatch thunk of Sequence.makeIterator()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    if ((v35 & 1) == 0)
    {
      v20 = v34;
      do
      {
        swift_beginAccess();
        v21 = *(a5 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 16) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
          *(a5 + 16) = v21;
        }

        v24 = *(v21 + 2);
        v23 = *(v21 + 3);
        if (v24 >= v23 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
        }

        *(v21 + 2) = v24 + 1;
        v25 = &v21[32 * v24];
        *(v25 + 5) = 0;
        *(v25 + 6) = 0;
        *(v25 + 4) = v20;
        v25[56] = 10;
        *(a5 + 16) = v21;
        swift_endAccess();
        dispatch thunk of IteratorProtocol.next()();
        v20 = v34;
      }

      while (v35 != 1);
    }

    return (*(v27 + 8))(v17, AssociatedTypeWitness);
  }

  return result;
}

uint64_t partial apply for closure #1 in _UnkeyedEncodingContainer.encode<A>(contentsOf:)@<X0>(const void *a1@<X0>, size_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return closure #1 in _UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a2, v3[4], v3[5], a3);
}

uint64_t closure #1 in _UnkeyedEncodingContainer.encode<A>(contentsOf:)@<X0>(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, char *a5@<X8>)
{
  result = swift_conformsToProtocol2();
  v11 = 0;
  if (!result || !a3)
  {
LABEL_10:
    *a5 = v11;
    return result;
  }

  if (a1)
  {
    v12 = xpc_data_create(a1, a2);
    swift_getObjectType();
    v13 = v12;
    if (!OS_xpc_object.isCodable()())
    {
      __break(1u);
      goto LABEL_12;
    }

    result = xpc_copy(v12);
    if (result)
    {
      v13 = result;
      swift_unknownObjectRelease();
      swift_beginAccess();
      v12 = *(a4 + 16);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 16) = v12;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_7:
        v16 = v12[2];
        v15 = v12[3];
        if (v16 >= v15 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
        }

        v12[2] = v16 + 1;
        v17 = &v12[4 * v16];
        v17[4] = a1;
        v17[5] = a2;
        v17[6] = v13;
        *(v17 + 56) = 15;
        *(a4 + 16) = v12;
        swift_endAccess();
        result = swift_unknownObjectRelease();
        v11 = 1;
        goto LABEL_10;
      }

LABEL_12:
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      *(a4 + 16) = v12;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2bms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v23 = a1;
  v10 = type metadata accessor for DecodingError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[0] = *(v5 + 24);
  *(v22 + 9) = *(v5 + 33);
  *v21 = *(v5 + 24);
  *&v21[9] = *(v5 + 33);
  v20[3] = a2;
  v20[4] = a3;
  v15 = swift_allocObject();
  v20[0] = v15;
  v16 = *(v5 + 16);
  *(v15 + 16) = *v5;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v5 + 32);
  *(v15 + 64) = *(v5 + 48);
  outlined init with copy of EncodingGraph.Value(v22, v19);
  a5(v5, v19);
  v17 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2bm_AA18_DecodingContainer_pts0H5ErrorOYKF(v20, v14);
  outlined consume of EncodingGraph.Value(*v21, *&v21[8], *&v21[16], v21[24]);
  if (v6)
  {
    (*(v11 + 32))(v23, v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v17 & 1;
}