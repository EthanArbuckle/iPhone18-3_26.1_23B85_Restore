id UserInputResult.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserInputResult();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UserInputResult(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v6, v10, v2);
      v12 = specialized static FlowExtensionUserInputResultXPC.reformedInput(_:)();
      (*(v3 + 8))(v6, v2);
      return v12;
    }

    else
    {
      v17 = type metadata accessor for FlowExtensionUserInputResultXPC();
      v18 = objc_allocWithZone(v17);
      *&v18[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 0;
      *&v18[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
      *&v18[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
      v18[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = 0;
      return objc_msgSendSuper2(&v19, sel_init, v18, v17, v20.receiver, v20.super_class);
    }
  }

  else
  {
    v14 = *v10;
    v15 = type metadata accessor for FlowExtensionUserInputResultXPC();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 1;
    *&v16[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
    *&v16[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
    v16[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = v14;
    return objc_msgSendSuper2(&v20, sel_init, v19.receiver, v19.super_class, v16, v15);
  }
}

Swift::Void __swiftcall FlowExtensionUserInputResultXPC.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type);
  v4 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = (v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData);
  v6 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData + 8);
  if (v6 >> 60 != 15)
  {
    v7 = *v5;
    outlined copy of Data._Representation(*v5, *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData + 8));
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7A890);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v9];

    outlined consume of Data?(v7, v6);
  }

  v10 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error);
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x1E12A1410](0x726F727265, 0xE500000000000000);
    [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  }

  v13 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude);
  v14 = MEMORY[0x1E12A1410](0x6564756C637865, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];
}

uint64_t RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v7, v1, type metadata accessor for RemoteConversationService.State);
  RemoteConversationService.State.activeTurn.getter(v0 + 16);
  outlined destroy of RemoteConversationService.State(v1, type metadata accessor for RemoteConversationService.State);
  v8 = *(v2 + 168);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 56, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = *(v0 + 56);
  *(v9 + 40) = *(v0 + 72);
  *(v9 + 56) = *(v0 + 88);
  *(v9 + 64) = v2;
  *(v9 + 72) = v5;
  *(v9 + 80) = v4;
  *(v9 + 88) = v3;
  v10 = *(*v8 + 208);
  v11 = v6;

  v10(0xD000000000000039, 0x80000001DCA85AA0, &async function pointer to partial apply for closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), v9);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DC6EEC04()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  }

  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t RemoteConversationService.State.activeTurn.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteConversationService.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RemoteConversationService.State(v2, v7, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *(v7 + 10);

    outlined init with take of ReferenceResolutionClientProtocol(v7, v13);
    outlined destroy of ReferenceResolutionClientProtocol?((v7 + 40), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    return outlined init with take of ReferenceResolutionClientProtocol(v13, a1);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    outlined init with take of ReferenceResolutionClientProtocol(v7, v13);
    outlined destroy of RemoteConversationService.State(&v7[v9], type metadata accessor for SiriRequest);
    __swift_destroy_boxed_opaque_existential_1Tm(v7 + 5);
    return outlined init with take of ReferenceResolutionClientProtocol(v13, a1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return outlined destroy of RemoteConversationService.State(v7, type metadata accessor for RemoteConversationService.State);
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  aBlock[4] = a2;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = a3;
  v4 = _Block_copy(aBlock);

  v5 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v4);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    return v11;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    return 0;
  }
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMd, &_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      Task.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      v19 = *(v17 + 112);
      v20 = *(v17 + 120);

      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
  v37 = type metadata accessor for ConversationSessionKey();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMd, &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
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
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
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
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMd, &_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
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
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
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
    *v2 = v10;
  }

  return result;
}

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
  v37 = type metadata accessor for IntentTopic();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMd, &_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
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
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
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
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
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
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
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
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for UserID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMd, &_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
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
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
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
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

unint64_t lazy protocol witness table accessor for type Parse.DirectInvocation? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Parse.DirectInvocation and conformance Parse.DirectInvocation, MEMORY[0x1E69D0140]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Parse.DirectInvocation and conformance Parse.DirectInvocation, MEMORY[0x1E69D0140]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?);
  }

  return result;
}

void IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v9 = *v4;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  if (a1)
  {
    v13 = a1;
    [v13 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for INIntent();
    if (swift_dynamicCast())
    {
      v35 = v9;
      v36 = a3;
      v37 = a4;
      v14 = v38;
      v15 = [v13 intentId];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      (*(v11 + 16))(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
      v32 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v14;
      (*(v11 + 32))(v33 + v32, &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      *(v33 + ((v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
      v34 = v14;
      specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v17, v19, v36, v37, partial apply for closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:));
    }

    else
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.instrumentation);
      v24 = v13;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v39 = v28;
        *v27 = 136315138;
        v29 = INIntent.debugDescriptionLite.getter();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v39);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_1DC659000, v25, v26, "Unexpected failure when cloning intent: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1E12A2F50](v28, -1, -1);
        MEMORY[0x1E12A2F50](v27, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.instrumentation);
    v37 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v37, v21, "Intent is nil, not sending handleIntentStarted event.", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }
  }
}

uint64_t sub_1DC6F1278()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

unint64_t type metadata accessor for INIntent()
{
  result = lazy cache variable for type metadata for INIntent;
  if (!lazy cache variable for type metadata for INIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntent);
  }

  return result;
}

void specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    a5();
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.instrumentation);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v12);
      _os_log_impl(&dword_1DC659000, oslog, v8, "IntentLoggingEventSink ignoring %s event with missing intent Id", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ExecutionContextUpdate.init(coder:)(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18ContextUpdateScopeOSgMd, &_s11SiriKitFlow18ContextUpdateScopeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v199 = &v196 - v4;
  updated = type metadata accessor for ContextUpdateScope();
  v219 = *(updated - 8);
  v5 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v204 = &v196 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v197 = &v196 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v224 = &v196 - v10;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v11 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v203 = &v196 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v212 = &v196 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v217 = &v196 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v221 = &v196 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v226 = &v196 - v21;
  v240 = type metadata accessor for Siri_Nlu_External_Task();
  v237 = *(v240 - 8);
  v22 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v240);
  v234 = &v196 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v233 = &v196 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v236 = &v196 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v235 = &v196 - v29;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v30 = *(*(v200 - 8) + 64);
  MEMORY[0x1EEE9AC00](v200);
  v202 = &v196 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v201 = &v196 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v196 - v35;
  v37 = type metadata accessor for BinaryDecodingOptions();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v220 = &v196 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v225 = &v196 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v228 = &v196 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v229 = &v196 - v46;
  v47 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v230 = *(v47 - 8);
  v48 = v230[8];
  MEMORY[0x1EEE9AC00](v47);
  v239 = &v196 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v196 - v51;
  v206 = type metadata accessor for NSFastEnumerationIterator();
  v205 = *(v206 - 8);
  v53 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v227 = &v196 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v231 = &v196 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v232 = &v196 - v58;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SACFProvideContext, 0x1E69C7748);
  v208 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
  v207 = NSCoder.decodeObject<A>(of:forKey:)();
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v59 = swift_allocObject();
  v222 = xmmword_1DCA65720;
  *(v59 + 16) = xmmword_1DCA65720;
  v60 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v59 + 32) = v60;
  v238 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  *(v59 + 40) = v238;
  NSCoder.decodeObject(of:forKey:)();

  v211 = v36;
  v218 = a1;
  v210 = v60;
  if (!*(&v243 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v242, &_sypSgMd, &_sypSgMR);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v241 = 0;
    goto LABEL_16;
  }

  v196 = v247;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v248)
  {
    v215 = (v230 + 7);
    v61 = (v230 + 4);
    v214 = (v230 + 2);
    v241 = MEMORY[0x1E69E7CC0];
    v213 = v230 + 1;
    while (1)
    {
      outlined init with take of Any(&v247, &v242);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v62 = v245;
      v63 = v246;
      v244 = 0;
      v242 = 0u;
      v243 = 0u;
      outlined copy of Data._Representation(v245, v246);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemDialogAct and conformance Siri_Nlu_External_SystemDialogAct, MEMORY[0x1E69D0B48]);
      v64 = v229;
      Message.init<A>(contiguousBytes:extensions:partial:options:)();
      (*v215)(v64, 0, 1, v47);
      v65 = *v61;
      (*v61)(v52, v64, v47);
      (*v214)(v239, v52, v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v241 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v241 + 2) + 1, 1, v241);
      }

      v67 = *(v241 + 2);
      v66 = *(v241 + 3);
      if (v67 >= v66 >> 1)
      {
        v241 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v67 + 1, 1, v241);
      }

      outlined consume of Data._Representation(v62, v63);
      v68 = v230;
      (v230[1])(v52, v47);
      v69 = v241;
      *(v241 + 2) = v67 + 1;
      v65(&v69[((*(v68 + 80) + 32) & ~*(v68 + 80)) + v68[9] * v67], v239, v47);
      NSFastEnumerationIterator.next()();
      if (!v248)
      {
        goto LABEL_15;
      }
    }

    v174 = v218;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    __swift_project_value_buffer(v175, static Logger.executor);
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      *v178 = 0;
      _os_log_impl(&dword_1DC659000, v176, v177, "Element in decoded array is not Data", v178, 2u);
      MEMORY[0x1E12A2F50](v178, -1, -1);
    }

    (*(v205 + 8))(v232, v206);
    goto LABEL_97;
  }

  v241 = MEMORY[0x1E69E7CC0];
LABEL_15:
  (*(v205 + 8))(v232, v206);

  a1 = v218;
  v36 = v211;
LABEL_16:
  v70 = v212;
  v71 = type metadata accessor for JSONDecoder();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  v74 = JSONDecoder.init()();
  v75 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v75)
  {
    v76 = v75;
    v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
    lazy protocol witness table accessor for type [RREntity] and conformance <A> [A]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v77, v79);
    v228 = v242;
  }

  else
  {
    v228 = 0;
  }

  v80 = type metadata accessor for PommesContext();
  (*(*(v80 - 8) + 56))(v36, 1, 1, v80);
  v81 = NSCoder.decodeObject<A>(of:forKey:)();
  v239 = v74;
  if (v81)
  {
    v82 = v81;
    v83 = v70;
    v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;
    lazy protocol witness table accessor for type PommesContext? and conformance <A> A?();
    v87 = v201;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v36, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);

    outlined consume of Data._Representation(v84, v86);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v87, v36, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v93 = v240;
    v94 = v210;
    v70 = v83;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static Logger.executor);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    v91 = os_log_type_enabled(v89, v90);
    v94 = v210;
    if (v91)
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_1DC659000, v89, v90, "Can't decode PommesContext data into Data", v92, 2u);
      MEMORY[0x1E12A2F50](v92, -1, -1);
    }

    v93 = v240;
  }

  v95 = swift_allocObject();
  *(v95 + 16) = v222;
  v96 = v238;
  *(v95 + 32) = v94;
  *(v95 + 40) = v96;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v243 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v242, &_sypSgMd, &_sypSgMR);
    goto LABEL_38;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    v230 = 0;
    goto LABEL_41;
  }

  v215 = v247;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v248)
  {
    v232 = (v237 + 56);
    v97 = (v237 + 32);
    v229 = (v237 + 16);
    v98 = MEMORY[0x1E69E7CC0];
    v230 = (v237 + 8);
    while (1)
    {
      outlined init with take of Any(&v247, &v242);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v99 = v245;
      v100 = v246;
      v244 = 0;
      v242 = 0u;
      v243 = 0u;
      outlined copy of Data._Representation(v245, v246);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948]);
      v101 = v226;
      Message.init<A>(contiguousBytes:extensions:partial:options:)();
      (*v232)(v101, 0, 1, v93);
      v102 = v93;
      v103 = *v97;
      v104 = v98;
      v105 = v235;
      (*v97)(v235, v101, v102);
      v106 = v105;
      v98 = v104;
      (*v229)(v236, v106, v102);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104[2] + 1, 1, v104);
      }

      v108 = v98[2];
      v107 = v98[3];
      if (v108 >= v107 >> 1)
      {
        v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v107 > 1, v108 + 1, 1, v98);
      }

      outlined consume of Data._Representation(v99, v100);
      v109 = v237;
      v110 = v240;
      (*(v237 + 8))(v235, v240);
      v98[2] = v108 + 1;
      v103(v98 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v108, v236, v110);
      v93 = v110;
      NSFastEnumerationIterator.next()();
      if (!v248)
      {
        goto LABEL_40;
      }
    }

    v179 = v218;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v180 = type metadata accessor for Logger();
    __swift_project_value_buffer(v180, static Logger.executor);
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.error.getter();
    v183 = os_log_type_enabled(v181, v182);
    v184 = v211;
    if (v183)
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&dword_1DC659000, v181, v182, "Element in decoded array is not of type Data", v185, 2u);
      MEMORY[0x1E12A2F50](v185, -1, -1);
    }

    (*(v205 + 8))(v231, v206);
    goto LABEL_96;
  }

  v98 = MEMORY[0x1E69E7CC0];
LABEL_40:
  v230 = v98;
  (*(v205 + 8))(v231, v206);

  a1 = v218;
  v70 = v212;
  v94 = v210;
LABEL_41:
  v111 = swift_allocObject();
  *(v111 + 16) = v222;
  v112 = v238;
  *(v111 + 32) = v94;
  *(v111 + 40) = v112;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v243 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v242, &_sypSgMd, &_sypSgMR);
    goto LABEL_53;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_53:
    v240 = 0;
    v127 = updated;
    goto LABEL_56;
  }

  v231 = v247;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v248)
  {
    v113 = (v237 + 32);
    v235 = (v237 + 16);
    v236 = (v237 + 56);
    v114 = MEMORY[0x1E69E7CC0];
    v115 = MEMORY[0x1E6969080];
    v232 = (v237 + 8);
    while (1)
    {
      outlined init with take of Any(&v247, &v242);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v116 = v245;
      v117 = v246;
      v244 = 0;
      v242 = 0u;
      v243 = 0u;
      outlined copy of Data._Representation(v245, v246);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948]);
      v118 = v221;
      v119 = v115;
      Message.init<A>(contiguousBytes:extensions:partial:options:)();
      (*v236)(v118, 0, 1, v93);
      v120 = v93;
      v121 = *v113;
      v122 = v233;
      (*v113)(v233, v118, v120);
      (*v235)(v234, v122, v120);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v114 + 2) + 1, 1, v114);
      }

      v124 = *(v114 + 2);
      v123 = *(v114 + 3);
      if (v124 >= v123 >> 1)
      {
        v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v123 > 1, v124 + 1, 1, v114);
      }

      outlined consume of Data._Representation(v116, v117);
      v125 = v237;
      v126 = v240;
      (*(v237 + 8))(v233, v240);
      *(v114 + 2) = v124 + 1;
      v121(&v114[((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v124], v234, v126);
      v93 = v126;
      NSFastEnumerationIterator.next()();
      v115 = v119;
      if (!v248)
      {
        goto LABEL_55;
      }
    }

    v186 = v218;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v187 = type metadata accessor for Logger();
    __swift_project_value_buffer(v187, static Logger.executor);
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.error.getter();
    v190 = os_log_type_enabled(v188, v189);
    v184 = v211;
    if (v190)
    {
      v191 = swift_slowAlloc();
      *v191 = 0;
      _os_log_impl(&dword_1DC659000, v188, v189, "Element in decoded array is not of type Data", v191, 2u);
      MEMORY[0x1E12A2F50](v191, -1, -1);
    }

    (*(v205 + 8))(v227, v206);
LABEL_96:
    outlined destroy of ReferenceResolutionClientProtocol?(v184, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
LABEL_97:
    v192 = v209;
    swift_getObjectType();
    v193 = *((*MEMORY[0x1E69E7D40] & *v192) + 0x30);
    v194 = *((*MEMORY[0x1E69E7D40] & *v192) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v114 = MEMORY[0x1E69E7CC0];
LABEL_55:
  v240 = v114;
  (*(v205 + 8))(v227, v206);

  a1 = v218;
  v127 = updated;
  v70 = v212;
LABEL_56:
  v128 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v128 - 8) + 56))(v217, 1, 1, v128);
  v129 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v129)
  {
    v130 = v129;
    v131 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v132;
    lazy protocol witness table accessor for type Parse.DirectInvocation? and conformance <A> A?();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v140 = v217;
    outlined destroy of ReferenceResolutionClientProtocol?(v217, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined consume of Data._Representation(v131, v133);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v70, v140, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    v138 = v219;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v141 = type metadata accessor for Logger();
    __swift_project_value_buffer(v141, static Logger.executor);
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&dword_1DC659000, v142, v143, "Successfully decoded undoDirectInvocation data into Optional<Parse.DirectInvocation>", v144, 2u);
      MEMORY[0x1E12A2F50](v144, -1, -1);
    }

    v135 = v130;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v134 = type metadata accessor for Logger();
    __swift_project_value_buffer(v134, static Logger.executor);
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.error.getter();
    v137 = os_log_type_enabled(v135, v136);
    v138 = v219;
    if (v137)
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_1DC659000, v135, v136, "Can't decode undoDirectInvocation data into Data", v139, 2u);
      MEMORY[0x1E12A2F50](v139, -1, -1);
    }
  }

  v145 = *MEMORY[0x1E69CFF08];
  v146 = *(v138 + 104);
  v147 = v224;
  v146(v224, v145, v127);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v148 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v148)
  {
    v149 = v148;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v150 = v199;
    ContextUpdateScope.init(rawValue:)();

    (*(v138 + 8))(v147, v127);
    v151 = *(v138 + 48);
    if (v151(v150, 1, v127) == 1)
    {
      v152 = v197;
      v146(v197, v145, v127);
      v153 = v151(v150, 1, v127);
      v154 = v152;
      v138 = v219;
      if (v153 != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v150, &_s11SiriKitFlow18ContextUpdateScopeOSgMd, &_s11SiriKitFlow18ContextUpdateScopeOSgMR);
      }
    }

    else
    {
      v154 = v197;
      (*(v138 + 32))(v197, v150, v127);
    }

    (*(v138 + 32))(v224, v154, v127);
  }

  v155 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA7AE80);
  v156 = [a1 containsValueForKey_];

  if (v156)
  {
    v157 = NSCoder.decodeObject<A>(of:forKey:)();
    v158 = v224;
    if (v157)
    {
      v242 = 0uLL;
      v159 = v157;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v160 = v242;
      if (!*(&v242 + 1))
      {
        v160 = 0;
      }

      v237 = *(&v242 + 1);
      v238 = v160;
    }

    else
    {
      v237 = 0;
      v238 = 0;
    }
  }

  else
  {
    v237 = 0;
    v238 = 0;
    v158 = v224;
  }

  v161 = MEMORY[0x1E12A1410](0xD000000000000016, 0x80000001DCA7AEA0);
  LODWORD(v236) = [a1 decodeBoolForKey_];

  v162 = v209;
  ObjectType = swift_getObjectType();
  v164 = v217;
  v165 = v203;
  outlined init with copy of ReferenceResolutionClientProtocol?(v217, v203, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v166 = v211;
  v167 = v202;
  outlined init with copy of ReferenceResolutionClientProtocol?(v211, v202, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v168 = v219;
  v169 = v204;
  v170 = updated;
  (*(v219 + 16))(v204, v158, updated);
  v171 = (*(ObjectType + 168))(v208, v207, v241, v230, v240, v165, v228, v167, v169, v238, v237, v236);

  (*(v168 + 8))(v158, v170);
  outlined destroy of ReferenceResolutionClientProtocol?(v164, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v166, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v172 = *((*MEMORY[0x1E69E7D40] & *v162) + 0x30);
  v173 = *((*MEMORY[0x1E69E7D40] & *v162) + 0x34);
  swift_deallocPartialClassInstance();
  return v171;
}

void SessionStateContextKeysManager.updateValue(_:forKey:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ConversationSessionKey();
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
      specialized _NativeDictionary.copy()(MEMORY[0x1E69D0820], &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMR);
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
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21, MEMORY[0x1E69D0820]);
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
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  return outlined init with take of Any(a1, v22);
}

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
      specialized _NativeDictionary.copy()(MEMORY[0x1E69E6D30], &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMR);
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
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21, MEMORY[0x1E69E6D30]);
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
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  return outlined init with take of Any(a1, v22);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConversationSessionKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMR);
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
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
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

{
  v3 = v2;
  v6 = type metadata accessor for ConversationSessionKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMR);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v50 = v10;
    v51 = v6;
    v43 = v3;
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
    v44 = (v7 + 16);
    v45 = v7;
    v48 = (v7 + 32);
    v21 = result + 64;
    v46 = v11;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v49 = *(v7 + 72);
      v30 = v29 + v49 * v28;
      if (v47)
      {
        (*v48)(v50, v30, v51);
        v31 = (*(v11 + 56) + 32 * v28);
        v32 = v31[1];
        v52 = *v31;
        v53 = v32;
      }

      else
      {
        (*v44)(v50, v30, v51);
        outlined init with copy of ReferenceResolutionClientProtocol?(*(v11 + 56) + 32 * v28, &v52, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
      }

      v33 = *(v14 + 40);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v7 = v45;
        v11 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v7 = v45;
      v11 = v46;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v48)(*(v14 + 48) + v49 * v22, v50, v51);
      v23 = (*(v14 + 56) + 32 * v22);
      v24 = v53;
      *v23 = v52;
      v23[1] = v24;
      ++*(v14 + 16);
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v11 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
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
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for StringKeyedValue();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        outlined init with take of StringKeyedValue(v31, v45, type metadata accessor for StringKeyedValue);
      }

      else
      {
        outlined init with copy of StringKeyedValue(v31, v45);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = outlined init with take of StringKeyedValue(v45, *(v12 + 56) + v30 * v20, type metadata accessor for StringKeyedValue);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDVSayAEGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSayAEGGMR);
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7SiriCam12RankedActionV03topF0_SayAC0D5ParseOG17alternativeParsestGMd, &_ss18_DictionaryStorageCySS7SiriCam12RankedActionV03topF0_SayAC0D5ParseOG17alternativeParsestGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v2;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v31, v45, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      }

      else
      {
        outlined init with copy of ReferenceResolutionClientProtocol?(v31, v45, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v45, *(v12 + 56) + v30 * v20, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UserID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV0C10KitRuntime14ContextUpdaterCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV0C10KitRuntime14ContextUpdaterCGMR);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
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
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMR);
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

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo15AFSpeechPackageCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo15AFSpeechPackageCGMR);
}

{
  v3 = v2;
  v6 = type metadata accessor for UserID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV10Foundation4DataVGMR);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v52 = v6;
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
    v43 = v2;
    v44 = (v7 + 16);
    v45 = v10;
    v46 = v7;
    v49 = (v7 + 32);
    v20 = result + 64;
    v21 = v48;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v46 + 72) * v28;
      v50 = *(v46 + 72);
      v51 = v25;
      if (v47)
      {
        (*v49)(v21, v29, v52);
        v30 = (*(v10 + 56) + 16 * v28);
        v32 = *v30;
        v31 = v30[1];
      }

      else
      {
        (*v44)(v21, v29, v52);
        v33 = (*(v10 + 56) + 16 * v28);
        v32 = *v33;
        v31 = v33[1];
        outlined copy of Data._Representation(*v33, v31);
      }

      v34 = *(v13 + 40);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v21 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v13 + 48) + v50 * v22, v21, v52);
      v23 = (*(v13 + 56) + 16 * v22);
      *v23 = v32;
      v23[1] = v31;
      ++*(v13 + 16);
      v10 = v45;
      v18 = v51;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo16SAHomeMemberInfoCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo16SAHomeMemberInfoCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x1E69CE370], &_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMR);
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ConversationSessionKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, 255, MEMORY[0x1E69D0820]);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, 255, MEMORY[0x1E69D0820]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    specialized _NativeSet._delete(at:)(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

void specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = v12;
      v16 = (v14 + 1) & v12;
      v37 = v4[2];
      v38 = v4 + 2;
      v17 = v4[9];
      v35 = (v4 + 1);
      v36 = v9;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v11;
        v37(v7, *(v8 + 48) + v18 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        v25 = *(v21 + 40);
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, 255, MEMORY[0x1E69D0820]);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v35)(v7, v3);
        v27 = v26 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v27 >= v22 && a1 >= v27)
          {
LABEL_16:
            v8 = v24;
            v30 = *(v24 + 48);
            v18 = v19;
            v31 = v19 * a1;
            if (v19 * a1 < v20 || v30 + v19 * a1 >= (v30 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v31 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v27 >= v22 || a1 >= v27)
        {
          goto LABEL_16;
        }

        v8 = v24;
        v18 = v19;
LABEL_5:
        v11 = (v11 + 1) & v15;
        v9 = v36;
      }

      while (((*(v36 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v8 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v34;
    ++*(v8 + 36);
  }
}

uint64_t ContextUpdater.domainHints.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_domainHints;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.toLegacyNLContext()@<X0>(uint64_t a1@<X8>)
{
  v32 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_LegacyNLContext.LegacyContextSource();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_LegacyNLContext.init()();
  Com_Apple_Siri_Product_Proto_PromptContext.dictationPrompt.getter();
  Siri_Nlu_External_LegacyNLContext.dictationPrompt.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.getter();
  Siri_Nlu_External_LegacyNLContext.strictPrompt.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.previousDomainName.getter();
  Siri_Nlu_External_LegacyNLContext.previousDomainName.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.listenAfterSpeaking.getter();
  Siri_Nlu_External_LegacyNLContext.listenAfterSpeaking.setter();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D0B18], v5);
  Siri_Nlu_External_LegacyNLContext.legacyContextSource.setter();
  v10 = Com_Apple_Siri_Product_Proto_PromptContext.responseOptions.getter();
  v11 = *(v10 + 16);
  if (v11)
  {
    v28[2] = a1;
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v33;
    v14 = *(v2 + 16);
    v13 = v2 + 16;
    v15 = *(v13 + 64);
    v28[1] = v10;
    v16 = v10 + ((v15 + 32) & ~v15);
    v29 = *(v13 + 56);
    v30 = v14;
    v17 = (v13 - 8);
    do
    {
      v18 = v31;
      v19 = v32;
      v20 = v13;
      v30(v31, v16, v32);
      v21 = Com_Apple_Siri_Product_Proto_SemanticValue.serializedValue.getter();
      v23 = v22;
      (*v17)(v18, v19);
      v33 = v12;
      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v12 = v33;
      }

      *(v12 + 16) = v25 + 1;
      v26 = v12 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v16 += v29;
      --v11;
      v13 = v20;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  return MEMORY[0x1E129C3A0](v12);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_ypSgTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOypSgGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOypSgGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v10, v6, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ConversationSessionKey();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 32 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

uint64_t protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:executionSource:) in conformance AceServiceInvokerImpl(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a3;
  *(v4 + 32) = *v3;
  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:executionSource:) in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:executionSource:) in conformance AceServiceInvokerImpl()
{
  v1 = *(v0 + 32);
  v2 = AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:)(*(v0 + 16), *(v0 + 64), *(v0 + 24));
  *(v0 + 40) = v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:executionSource:) in conformance AceServiceInvokerImpl;
  v4 = *(v0 + 32);

  return AceServiceInvokerImpl._submitAllSerialExecute(_:)(v2);
}

{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:);
  }

  else
  {
    v3 = protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:executionSource:) in conformance AceServiceInvokerImpl;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:)(uint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for RequestSummary.ExecutionSource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  if (a2)
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = &outlined read-only object #0 of AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v16 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a1;
  *(v17 + 5) = v3;
  *(v17 + 6) = v14;
  (*(v8 + 32))(&v17[v16], &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  v18 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo13SABaseCommandCSg_Tt2g5Tm(0, 0, v13, &async function pointer to partial apply for closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), v17, &_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  v19 = *(*(v3 + 160) + 16);
  os_unfair_lock_lock((v19 + 24));
  closure #1 in SubmissionTaskRegistry.register(_:)partial apply((v19 + 16), &v22);
  os_unfair_lock_unlock((v19 + 24));

  return v18;
}

uint64_t sub_1DC6F5674()
{
  v1 = type metadata accessor for RequestSummary.ExecutionSource();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t AceServiceInvokerImpl._submitAllSerialExecute(_:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v4 = *(MEMORY[0x1E69E86A8] + 4);
  v5 = swift_task_alloc();
  v2[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2[13] = v7;
  *v5 = v2;
  v5[1] = AceServiceInvokerImpl._submitAllSerialExecute(_:);
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v2 + 7, a1, v6, v7, v8);
}

uint64_t partial apply for closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1)
{
  v4 = *(type metadata accessor for RequestSummary.ExecutionSource() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), 0, 0);
}

uint64_t partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(a1, a2, v6, v7, v9, v8);
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = type metadata accessor for RequestSummary.ExecutionSource();
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v6[18] = *(v8 + 64);
  v6[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), 0, 0);
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 96);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v35 = *(v4 + 96);
    }

    v6 = __CocoaSet.count.getter();
    *(v4 + 176) = v6;
    if (v6)
    {
LABEL_3:
      v7 = *(v4 + 96);
      *(v4 + 184) = 0;
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12A1FE0](0);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DAC8](v6, v7, a3, a4);
        }

        v8 = *(v7 + 32);
      }

      v9 = v8;
      *(v4 + 192) = v8;
      *(v4 + 200) = 1;
      v10 = *(v4 + 168);
      v11 = *(v4 + 152);
      v41 = v10;
      v43 = *(v4 + 160);
      v12 = *(v4 + 128);
      v13 = *(v4 + 136);
      v14 = *(v4 + 112);
      v15 = *(v4 + 120);
      v42 = *(v4 + 104);
      v16 = type metadata accessor for TaskPriority();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v10, 1, 1, v16);
      v18 = v15;
      v19 = v12;
      (*(v13 + 16))(v11, v18, v12);
      v20 = (*(v13 + 80) + 56) & ~*(v13 + 80);
      v21 = swift_allocObject();
      v21[2] = 0;
      v44 = v21 + 2;
      v21[3] = 0;
      v21[4] = v42;
      v21[5] = v9;
      v21[6] = v14;
      (*(v13 + 32))(v21 + v20, v11, v19);
      outlined init with copy of ReferenceResolutionClientProtocol?(v41, v43, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v13) = (*(v17 + 48))(v43, 1, v16);

      v22 = v9;

      v23 = *(v4 + 160);
      if (v13 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v4 + 160), &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v17 + 8))(v23, v16);
      }

      if (*v44)
      {
        v24 = v21[3];
        v25 = *v44;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = dispatch thunk of Actor.unownedExecutor.getter();
        v28 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = **(v4 + 88);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      v30 = v28 | v26;
      if (v28 | v26)
      {
        v30 = v4 + 16;
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *(v4 + 32) = v26;
        *(v4 + 40) = v28;
      }

      v31 = *(v4 + 168);
      *(v4 + 48) = 1;
      *(v4 + 56) = v30;
      *(v4 + 64) = v29;
      swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(v31, &_sScPSgMd, &_sScPSgMR);
      v32 = *(MEMORY[0x1E69E8708] + 4);
      v33 = swift_task_alloc();
      *(v4 + 208) = v33;
      a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgySo13SABaseCommandCSgs5Error_pGMd, &_sScgySo13SABaseCommandCSgs5Error_pGMR);
      *v33 = v4;
      v33[1] = closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
      v34 = *(v4 + 88);
      v6 = v4 + 72;
      v7 = 0;
      a3 = 0;

      return MEMORY[0x1EEE6DAC8](v6, v7, a3, a4);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v4 + 176) = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v37 = *(v4 + 160);
  v36 = *(v4 + 168);
  v38 = *(v4 + 152);
  **(v4 + 80) = 0;

  v39 = *(v4 + 8);

  return v39();
}

uint64_t sub_1DC6F6094()
{
  v1 = type metadata accessor for RequestSummary.ExecutionSource();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DC6F66B8()
{
  v1 = type metadata accessor for RequestSummary.ExecutionSource();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);
  outlined consume of Result<SABaseCommand?, Error>(*(v0 + v5));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 9, v3 | 7);
}

void closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(uint64_t a1, void *a2, uint64_t a3, objc_class *a4, void *a5, int a6)
{
  v169 = a6;
  v171 = a5;
  v168 = a4;
  v184 = a3;
  v170 = a1;
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v161 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v162 = &v156 - v12;
  v164 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v13 = *(v164 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v16 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v156 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v180 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v183 = &v156 - v24;
  v25 = type metadata accessor for RequestSummary.ExecutionSource();
  v181 = *(v25 - 8);
  v182 = v25;
  v26 = v181[8];
  MEMORY[0x1EEE9AC00](v25);
  v178 = (&v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v179 = (&v156 - v29);
  updated = type metadata accessor for ContextUpdateScope();
  v176 = *(updated - 8);
  v31 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v175 = &v156 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v174 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v173 = &v156 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v172 = &v156 - v40;
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v167 = type metadata accessor for Logger();
  __swift_project_value_buffer(v167, static Logger.ace);
  v41 = a2;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  v163 = v13;
  v160 = v19;
  v159 = v16;
  if (v44)
  {
    v45 = updated;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&aBlock = v47;
    *v46 = 136315138;
    v48 = [v41 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &aBlock);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_1DC659000, v42, v43, "Submitting command: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1E12A2F50](v47, -1, -1);
    updated = v45;
    MEMORY[0x1E12A2F50](v46, -1, -1);
  }

  objc_opt_self();
  v53 = swift_dynamicCastObjCClass();
  v54 = MEMORY[0x1E69CFF08];
  v177 = v41;
  v165 = updated;
  if (v53)
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1DC659000, v55, v56, "Appending ContextUpdate to reflect remote execution", v57, 2u);
      MEMORY[0x1E12A2F50](v57, -1, -1);
    }

    v58 = type metadata accessor for Parse.DirectInvocation();
    v59 = v172;
    (*(*(v58 - 8) + 56))(v172, 1, 1, v58);
    v60 = type metadata accessor for PommesContext();
    v61 = v173;
    (*(*(v60 - 8) + 56))(v173, 1, 1, v60);
    v62 = *v54;
    v63 = v176;
    v64 = v175;
    (*(v176 + 104))(v175, v62, updated);
    v65 = type metadata accessor for ExecutionContextUpdate();
    v66 = objc_allocWithZone(v65);
    v67 = v174;
    outlined init with copy of ReferenceResolutionClientProtocol?(v61, v174, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v67, 0);
    *&v66[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v66[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = 0;
    *&v66[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v66[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v66[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v59, &v66[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v66[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v67, &v66[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v63 + 16))(&v66[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v64, updated);
    v68 = &v66[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v68 = 0;
    v68[1] = 0;
    v66[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 1;
    v185.receiver = v66;
    v185.super_class = v65;
    v166 = objc_msgSendSuper2(&v185, sel_init);
    (*(v63 + 8))(v64, updated);
    outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  }

  else
  {
    v166 = 0;
  }

  v70 = *(v184 + 40);
  v69 = *(v184 + 48);
  v71 = v182;
  v72 = v181[2];
  v73 = v179;
  v72(v179, v168, v182);
  v74 = type metadata accessor for FlowOutputMessage.InAppResponse();
  v75 = v183;
  (*(*(v74 - 8) + 56))(v183, 1, 1, v74);
  v76 = v178;
  v72(v178, v73, v71);
  v77 = v180;
  outlined init with copy of ReferenceResolutionClientProtocol?(v75, v180, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v168 = type metadata accessor for ExecutionOutput();
  v78 = objc_allocWithZone(v168);
  v79 = &v78[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v79 = v70;
  *(v79 + 1) = v69;
  v80 = &v78[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v80 = 0;
  *(v80 + 1) = 0;
  v81 = &v78[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v81 = 0;
  *(v81 + 1) = 0;
  v82 = &v78[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  *v82 = 0;
  *(v82 + 1) = 0;
  v83 = &v78[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v83 = 0;
  *(v83 + 1) = 0;
  v72(&v78[OBJC_IVAR___SKRExecutionOutput_executionSource], v76, v71);
  outlined init with copy of ReferenceResolutionClientProtocol?(v77, &v78[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  objc_opt_self();
  v84 = v177;
  v85 = swift_dynamicCastObjCClass();
  v86 = v166;
  if (!v85 || v166)
  {
    v125 = one-time initialization token for executor;
    v126 = v84;
    v127 = v86;

    if (v125 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v167, static Logger.executor);
    v128 = v126;
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *&aBlock = v133;
      *v131 = 136315394;
      *(v131 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
      *(v131 + 12) = 2112;
      *(v131 + 14) = v128;
      *v132 = v84;
      v134 = v128;
      _os_log_impl(&dword_1DC659000, v129, v130, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v131, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v132, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v132, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      MEMORY[0x1E12A2F50](v133, -1, -1);
      MEMORY[0x1E12A2F50](v131, -1, -1);
    }

    *&v78[OBJC_IVAR___SKRExecutionOutput_command] = v84;
    *&v78[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v86;
    v135 = v128;
    v124 = v127;
  }

  else
  {
    v87 = v85;
    v88 = one-time initialization token for executor;
    v89 = v84;

    if (v88 != -1)
    {
      swift_once();
    }

    v90 = __swift_project_value_buffer(v167, static Logger.executor);
    v91 = v89;
    v167 = v90;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();

    v94 = os_log_type_enabled(v92, v93);
    v95 = v164;
    v96 = v163;
    if (v94)
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&aBlock = v99;
      *v97 = 136315394;
      *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
      *(v97 + 12) = 2112;
      *(v97 + 14) = v87;
      *v98 = v87;
      v100 = v91;
      _os_log_impl(&dword_1DC659000, v92, v93, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v97, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v98, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v98, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      MEMORY[0x1E12A2F50](v99, -1, -1);
      MEMORY[0x1E12A2F50](v97, -1, -1);
    }

    v101 = v162;
    v102 = [v87 promptContextProto];
    v158 = v87;
    v157 = v78;
    if (v102)
    {
      v103 = v102;
      v104 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v105;

      v189 = 0;
      aBlock = 0u;
      v188 = 0u;
      outlined copy of Data._Representation(v104, v106);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, 255, MEMORY[0x1E69D1500]);
      Message.init(serializedData:extensions:partial:options:)();
      (*(v96 + 56))(v101, 0, 1, v95);
      v146 = v160;
      (*(v96 + 32))(v160, v101, v95);
      v147 = v159;
      (*(v96 + 16))(v159, v146, v95);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        *&aBlock = v167;
        *v150 = 136315394;
        *(v150 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
        *(v150 + 12) = 2080;
        LODWORD(v166) = v149;
        v151 = Message.textFormatString()();
        v152 = *(v96 + 8);
        v152(v147, v95);
        v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151._countAndFlagsBits, v151._object, &aBlock);

        *(v150 + 14) = v153;
        _os_log_impl(&dword_1DC659000, v148, v166, "ExecutionOutput: %s: NFCU has prompt context %s", v150, 0x16u);
        v154 = v167;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v154, -1, -1);
        MEMORY[0x1E12A2F50](v150, -1, -1);

        outlined consume of Data._Representation(v104, v106);
        v152(v160, v95);
      }

      else
      {

        outlined consume of Data._Representation(v104, v106);
        v155 = *(v96 + 8);
        v155(v147, v95);
        v155(v160, v95);
      }
    }

    else
    {
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *&aBlock = v110;
        *v109 = 136315138;
        *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
        _os_log_impl(&dword_1DC659000, v107, v108, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v110);
        MEMORY[0x1E12A2F50](v110, -1, -1);
        MEMORY[0x1E12A2F50](v109, -1, -1);
      }
    }

    v111 = type metadata accessor for Parse.DirectInvocation();
    v112 = v172;
    (*(*(v111 - 8) + 56))(v172, 1, 1, v111);
    v113 = type metadata accessor for PommesContext();
    v114 = v173;
    (*(*(v113 - 8) + 56))(v173, 1, 1, v113);
    v115 = v176;
    v116 = v175;
    v117 = v165;
    (*(v176 + 104))(v175, *MEMORY[0x1E69CFF08], v165);
    v118 = type metadata accessor for ExecutionContextUpdate();
    v119 = objc_allocWithZone(v118);
    v120 = v174;
    outlined init with copy of ReferenceResolutionClientProtocol?(v114, v174, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v121 = v158;
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v120, v158);
    *&v119[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v119[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v121;
    *&v119[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v119[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v119[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v112, &v119[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v119[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v120, &v119[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v115 + 16))(&v119[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v116, v117);
    v122 = &v119[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v122 = 0;
    v122[1] = 0;
    v119[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    v186.receiver = v119;
    v186.super_class = v118;
    v123 = objc_msgSendSuper2(&v186, sel_init);
    (*(v115 + 8))(v116, v117);
    outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v120, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v124 = 0;
    v78 = v157;
    *&v157[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v123;
    *&v78[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    v84 = v177;
  }

  v191.receiver = v78;
  v191.super_class = v168;
  v136 = objc_msgSendSuper2(&v191, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v180, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v137 = v182;
  v138 = v181[1];
  v138(v178, v182);

  outlined destroy of ReferenceResolutionClientProtocol?(v183, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v138(v179, v137);
  v139 = v184;
  AceServiceInvokerImpl.closeServerRequestIfRequired(givenCommand:)();
  v140 = *(v139 + 16);
  v141 = swift_allocObject();
  v142 = v170;
  *(v141 + 16) = v84;
  *(v141 + 24) = v142;
  v143 = v171;
  *(v141 + 32) = v171;
  *(v141 + 40) = v169 & 1;
  v189 = partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:);
  v190 = v141;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v188 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  *(&v188 + 1) = &block_descriptor_237;
  v144 = _Block_copy(&aBlock);
  v145 = v84;

  outlined copy of Result<SABaseCommand?, Error>(v143);

  [v140 submitWithExecutionOutput:v136 completion:v144];

  _Block_release(v144);
}

uint64_t sub_1DC6F7D8C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  outlined consume of Result<SABaseCommand?, Error>(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1)
{
  v4 = *(type metadata accessor for RequestSummary.ExecutionSource() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), 0, 0);
}

uint64_t AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 25) = a3;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = type metadata accessor for CancellationError();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = type metadata accessor for RequestSummary.ExecutionSource();
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  *(v5 + 136) = *(v10 + 64);
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:), 0, 0);
}

void partial apply for closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(uint64_t a1)
{
  v3 = *(type metadata accessor for RequestSummary.ExecutionSource() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(a1, v5, v6, (v1 + v4), v8, v9);
}

uint64_t specialized static ViewMetricsLogger.logAnalytics(view:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.instrumentation);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DC659000, v9, v10, "Logging AddViews to AFAnalytics", v11, 2u);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v26 = v12;
  v13 = specialized static ViewMetricsLogger.getSparseAddViews(addViews:)(a1);
  v14 = [v13 dictionary];
  if (v14)
  {
    v15 = v14;
    v25 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x1E695DF90);
    *&v24 = v15;
    outlined init with take of Any(&v24, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
    v17 = v22;
    v26 = v22;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6C46746E65696C43, 0xEE0077656956776FLL, &v24);
    outlined destroy of Any?(&v24);
    v17 = v26;
  }

  v18 = [objc_opt_self() sharedAnalytics];
  if (v18)
  {
    v19 = v18;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v17);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v19 logEventWithType:3700 context:isa];
  }

  else
  {
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v3 + 8))(v6, v2);
}

void closure #1 in AceServiceInvokerImpl.closeServerRequest()(_BYTE *a1, void *a2)
{
  if (*a1)
  {
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.ace);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "Request is already closed.", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.ace);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DC659000, v9, v10, "Closing server request.", v11, 2u);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v12 = a2[2];
    v13 = MEMORY[0x1E12A1410](a2[5], a2[6]);
    [v12 closeServerRequestForExecutionRequestId_];

    *a1 = 1;
  }
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 144))(v1, v2, ObjectType, v5);
  v7 = v0[1];

  return v7();
}

void specialized RunSiriKitExecutorProcessorExecutionDelegate.closeServerRequest(forExecutionRequestId:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x80000001DCA7ED50, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Need not do %s for RSKE initiated execution", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

Swift::Void __swiftcall ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)(Swift::String forExecutionRequestId)
{
  object = forExecutionRequestId._object;
  countAndFlagsBits = forExecutionRequestId._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = one-time initialization token for shared;

  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static MessageBusActor.shared;
  v11 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = v1;
  v12[5] = countAndFlagsBits;
  v12[6] = object;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:), v12);
}

uint64_t objectdestroy_19Tm(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  a1(v1[6]);

  return MEMORY[0x1EEE6BDD0](v1, 56, 7);
}

uint64_t specialized static ViewMetricsLogger.getSparseAddViews(addViews:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  v9 = [a1 dialogPhase];
  if (v9)
  {
    v10 = v9;
    [v8 setDialogPhase_];
  }

  isa = [a1 views];
  if (!isa)
  {
    goto LABEL_18;
  }

  v12 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_16:

LABEL_17:
    isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_18:
    [v8 setViews_];

    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_8:
  v23 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v20 = v12;
    v21 = v3;
    v22 = v2;
    v16 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1E12A1FE0](v16, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v16 + 32);
      }

      v18 = v17;
      ++v16;
      specialized static ViewMetricsLogger.getSparseView(view:)(v17);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = *(v23 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v14 != v16);

    v2 = v22;
    v3 = v21;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id specialized static ViewMetricsLogger.getSparseView(view:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = specialized static ViewMetricsLogger.getSparseAssistantUtteranceView(assistantUtteranceView:)(v3);
LABEL_3:
    v6 = v5;

    return v6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = objc_allocWithZone(MEMORY[0x1E69C7B30]);
    v11 = a1;
    v12 = [v10 init];
    v13 = [v9 confirmText];
    [v12 setConfirmText_];

    v14 = [v9 denyText];
    [v12 setDenyText_];

    v15 = v12;
    v16 = [v9 speakableText];
LABEL_8:
    v23 = v16;
    [v15 setSpeakableText_];

    return v15;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = objc_allocWithZone(MEMORY[0x1E69C7B10]);
    v11 = a1;
    v20 = [v19 init];
    v21 = [v18 text];
    [v20 setText_];

    v22 = [v18 secondaryText];
    [v20 setSecondaryText_];

    v15 = v20;
    v16 = [v18 speakableText];
    goto LABEL_8;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v4 = a1;
    v5 = specialized static ViewMetricsLogger.getSparseDisambiguationList(disambiguationList:)(v25);
    goto LABEL_3;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v4 = a1;
    v5 = specialized static ViewMetricsLogger.getSparseCardSnippet(cardSnippet:)(v27);
    goto LABEL_3;
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v4 = a1;
    v5 = specialized static ViewMetricsLogger.getSparseSettingSnippet(snippet:)(v29);
    goto LABEL_3;
  }

  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (v30)
  {
    v31 = v30;
    v4 = a1;
    v5 = specialized static ViewMetricsLogger.getSparseIntentGroupSnippet(snippet:)(v31);
    goto LABEL_3;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.instrumentation);
  v33 = a1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v36 = 136315138;
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9SAAceViewCmMd, &_sSo9SAAceViewCmMR);
    v38 = String.init<A>(describing:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v41);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1DC659000, v34, v35, "Logging SAAceView skipped : %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1E12A2F50](v37, -1, -1);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  return [objc_allocWithZone(MEMORY[0x1E69C7708]) init];
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t closure #1 in ConversationOutputSubmitter.sendFlowOutputMessage(command:commandExecutionInfo:executionSource:inAppResponse:requestId:assistantId:sessionId:invocationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9, void *a10, uint64_t a11, uint64_t a12)
{
  v46 = a7;
  v47 = a8;
  v44 = a6;
  v45 = a5;
  v42[1] = a2;
  v43 = a4;
  v48 = a10;
  v49 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v50 = v42 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes14RequestSummaryV15ExecutionSourceOSgMd, &_s16SiriMessageTypes14RequestSummaryV15ExecutionSourceOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v42 - v22;
  v24 = type metadata accessor for UUID();
  v42[0] = *(v24 - 8);
  v25 = *(v42[0] + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = v42 - v30;
  v32 = *MEMORY[0x1E69D0460];
  v33 = type metadata accessor for MessageSource();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v31, v32, v33);
  (*(v34 + 56))(v31, 0, 1, v33);
  FlowOutputMessage.Builder.source.setter();
  if (!a3)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v42[0] + 8))(v27, v24);
  }

  FlowOutputMessage.Builder.assistantId.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v43, v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  FlowOutputMessage.Builder.sessionId.setter();
  if (!v44)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v42[0] + 8))(v27, v24);
  }

  FlowOutputMessage.Builder.requestId.setter();

  FlowOutputMessage.Builder.invocationId.setter();
  v35 = v49;
  v36 = *v49;
  FlowOutputMessage.Builder.command.setter();
  v37 = v48;
  FlowOutputMessage.Builder.commandExecutionInfo.setter();
  if (*v35)
  {
    v38 = *v35;
    SABaseCommand.isListenAfterSpeaking.getter();
  }

  FlowOutputMessage.Builder.listenAfterSpeaking.setter();
  v39 = type metadata accessor for RequestSummary.ExecutionSource();
  v40 = *(v39 - 8);
  (*(v40 + 16))(v19, a11, v39);
  (*(v40 + 56))(v19, 0, 1, v39);
  FlowOutputMessage.Builder.executionSource.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(a12, v50, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  return FlowOutputMessage.Builder.inAppResponse.setter();
}

void closure #1 in ContextUpdater.applyRREntities(_:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - v9;
  if (a2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationBridge);
    v12 = a1;
    v35 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    outlined consume of Result<(), Error>(a1, 1);
    if (os_log_type_enabled(v35, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v36);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1DC659000, v35, v13, "#ContextUpdater: Entity donation to RRaaS was unsuccessful as %s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E12A2F50](v15, -1, -1);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    else
    {
      v30 = v35;
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.conversationBridge);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "#ContextUpdater: Entity donation to RRaaS was successful", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
      v26 = one-time initialization token for shared;

      if (v26 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v27 = static MessageBusActor.shared;
      v28 = lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
      v29 = swift_allocObject();
      v29[2] = v27;
      v29[3] = v28;
      v29[4] = v24;
      v29[5] = a4;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in ContextUpdater.applyRREntities(_:), v29);
    }

    else
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DC659000, v31, v32, "#ContextUpdater: Entity donation to RRaaS was unsuccessful as self is no more.", v33, 2u);
        MEMORY[0x1E12A2F50](v33, -1, -1);
      }
    }
  }
}

uint64_t sub_1DC6FA394()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in ContextUpdater.applyRREntities(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in ContextUpdater.applyRREntities(_:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in closure #1 in ContextUpdater.applyRREntities(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ContextUpdater.applyRREntities(_:), v6, 0);
}

uint64_t closure #1 in closure #1 in ContextUpdater.applyRREntities(_:)()
{
  v1 = v0[5];
  ContextUpdater.applyDisplayHints(_:)(v0[6]);
  v2 = v0[1];

  return v2();
}

void ContextUpdater.applyDisplayHints(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ConversationSessionKey();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(type metadata accessor for RREntity() - 8);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    v10 = MEMORY[0x1E69E7CC0];
    v44 = v8;
    v45 = v5;
    v46 = v9;
    while (1)
    {
      RREntity.usoEntity.getter();
      v11 = UsoEntity.attributes.getter();

      if (!*(v11 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v13 & 1) == 0))
      {
LABEL_3:

        goto LABEL_4;
      }

      v14 = *(*(v11 + 56) + 8 * v12);

      if (v14 >> 62)
      {
        v15 = __CocoaSet.count.getter();
        if (!v15)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_3;
        }
      }

      if (v15 < 1)
      {
        __break(1u);
        goto LABEL_31;
      }

      v47 = v6;
      for (i = 0; i != v15; ++i)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](i, v14);
          v17 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
          if (!v18)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v19 = *(v14 + 8 * i + 32);

          v17 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
          if (!v18)
          {
LABEL_11:

            continue;
          }
        }

        v20 = v17;
        v21 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        }

        v23 = *(v10 + 2);
        v22 = *(v10 + 3);
        if (v23 >= v22 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v10);
        }

        *(v10 + 2) = v23 + 1;
        v24 = &v10[16 * v23];
        *(v24 + 4) = v20;
        *(v24 + 5) = v21;
      }

      v5 = v45;
      v6 = v47;
LABEL_4:
      if (++v6 == v5)
      {
        goto LABEL_26;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v25 = *(v40 + 232);
  v48[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v48[0] = v10;
  v27 = v41;
  v26 = v42;
  v28 = v43;
  (*(v42 + 104))(v41, *MEMORY[0x1E69D07C0], v43);
  v29 = *(*v25 + 152);

  v29(v48, v27);
  (*(v26 + 8))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  if (one-time initialization token for conversationBridge != -1)
  {
LABEL_31:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.conversationBridge);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48[0] = v34;
    *v33 = 136642819;

    v36 = MEMORY[0x1E12A16D0](v35, MEMORY[0x1E69E6158]);
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v48);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_1DC659000, v31, v32, "#ContextUpdater: Saving to SessionState displayHints:%{sensitive}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }
}

void closure #1 in SessionStateContextKeysManager.updateValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyOSgMd, &_s16SiriMessageTypes22ConversationSessionKeyOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v30 - v7 + 16;
  v9 = type metadata accessor for ConversationSessionKey();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - v16 + 16;
  v29 = v10;
  v18 = *(v10 + 16);
  v18(v30 - v16 + 16, a2, v9, v15);
  outlined init with copy of Any(a3, v30);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v30, v17);
  swift_endAccess();
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(a2, v8);
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s16SiriMessageTypes22ConversationSessionKeyOSgMd, &_s16SiriMessageTypes22ConversationSessionKeyOSgMR);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.conversationBridge);
  (v18)(v13, a2, v9);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  v22 = v13;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30[0] = v24;
    *v23 = 136315138;
    (v18)(v17, v22, v9);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    (*(v29 + 8))(v22, v9);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v30);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1DC659000, v20, v21, "StateKey: %s appended for update", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  else
  {

    (*(v29 + 8))(v13, v9);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), MEMORY[0x1E69D0820], specialized Dictionary._Variant.removeValue(forKey:));
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(a2, v15);
    return outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    v19 = type metadata accessor for UUID();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(a2, v15);
    return outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
  }

  else
  {
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a1, v13, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = type metadata accessor for UUID();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), MEMORY[0x1E69E6D30], specialized Dictionary._Variant.removeValue(forKey:));
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(a2, v15);
    return outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
  }

  else
  {
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a1, v13, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = type metadata accessor for UUID();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t, uint64_t), uint64_t (*a4)(void), void (*a5)(_OWORD *__return_ptr, uint64_t))
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v16);
    v9 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    a3(v16, a2, isUniquelyReferenced_nonNull_native);
    v11 = a4(0);
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v5 = v15;
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    a5(v16, a2);
    v14 = a4(0);
    (*(*(v14 - 8) + 8))(a2, v14);
    return outlined destroy of ReferenceResolutionClientProtocol?(v16, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in FlowAgent.execute(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in FlowAgent.execute(timeout:)(a1, v1);
}

uint64_t closure #1 in closure #1 in FlowAgent.execute(timeout:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in FlowAgent.execute(timeout:), 0, 0);
}

uint64_t closure #1 in closure #1 in FlowAgent.execute(timeout:)()
{
  v1 = v0[4];
  type metadata accessor for SiriEnvironment();
  v2 = *(v1 + 112);
  v0[5] = v2;
  v0[2] = v2;
  v3 = *(MEMORY[0x1E69D33F8] + 4);

  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = type metadata accessor for AnyFlow();
  v6 = type metadata accessor for ExecuteResponse();
  v7 = lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in FlowAgent.execute(timeout:);
  v8 = v0[3];
  v9 = v0[4];

  return MEMORY[0x1EEE40DB8](v8, v0 + 2, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:), v9, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:)(a1, v1);
}

uint64_t closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for ExecuteResponseType();
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for ExecuteResponse();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:)()
{
  v0[10] = *(v0[4] + 112);
  v1 = *(MEMORY[0x1E69CF980] + 4);
  v5 = (*MEMORY[0x1E69CF980] + MEMORY[0x1E69CF980]);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:);
  v3 = v0[3];

  return v5(v3);
}

{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:), 0, 0);
}

{
  v32 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  (*(v2 + 16))(v1, v4, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    v12 = v0[6];
    v29 = v0[5];
    v30 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315394;
    v0[2] = v9;
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v31);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    ExecuteResponse.type.getter();
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v11 + 8))(v10, v30);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v31);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1DC659000, v7, v8, "[Conversation] %s execute returned with response type %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  else
  {
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[7];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[9];
  v26 = v0[6];

  v27 = v0[1];

  return v27();
}

uint64_t protocol witness for DeviceState.isCarPlay.getter in conformance DefaultDeviceState(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = type metadata accessor for DeviceRestrictions();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = *v3 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands;
  v14 = Restrictions.deviceRestrictions.getter();
  a3(v14);
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions();
  LOBYTE(v13) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v12, v5);
  return v13 & 1;
}

uint64_t protocol witness for DeviceState.isHomePod.getter in conformance DefaultDeviceState(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v19 = a4;
  v6 = type metadata accessor for DeviceIdiom();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v13 = v7[13];
  v13(v11, *MEMORY[0x1E69D34B8], v6, v9);
  v14 = static DeviceIdiom.== infix(_:_:)();
  v15 = v7[1];
  v15(v11, v6);
  if (v14)
  {
    v16 = *(v12 + *a3);
  }

  else
  {
    (v13)(v11, *v19, v6);
    v16 = static DeviceIdiom.== infix(_:_:)();
    v15(v11, v6);
  }

  return v16 & 1;
}

uint64_t protocol witness for DeviceState.isWatch.getter in conformance DefaultDeviceState(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for DeviceIdiom();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = v6[13];
  v12(v10, *MEMORY[0x1E69D34B8], v5, v8);
  v13 = static DeviceIdiom.== infix(_:_:)();
  v14 = v6[1];
  v14(v10, v5);
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    (v12)(v10, *a3, v5);
    v15 = static DeviceIdiom.== infix(_:_:)();
    v14(v10, v5);
  }

  return v15 & 1;
}

uint64_t protocol witness for AceServiceInvokerAsync.submit<A>(_:setRefId:) in conformance AceServiceInvokerImpl(uint64_t a1, char a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AceServiceInvokerAsync.submit<A>(_:setRefId:) in conformance AceServiceInvokerImpl;

  return AceServiceInvokerImpl.submit<A>(_:setRefId:)(a1, a2, a3);
}

uint64_t AceServiceInvokerImpl.submit<A>(_:setRefId:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.submit<A>(_:setRefId:), 0, 0);
}

uint64_t AceServiceInvokerImpl.submit<A>(_:setRefId:)()
{
  v1 = *(v0 + 32);
  v2 = AceServiceInvokerImpl._submitPrep<A>(_:setRefId:responseType:)(*(v0 + 16), *(v0 + 72), *(v0 + 24));
  *(v0 + 40) = v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = AceServiceInvokerImpl.submit<A>(_:setRefId:);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return AceServiceInvokerImpl._submitExecute<A>(_:)(v2, v4);
}

uint64_t AceServiceInvokerImpl._submitPrep<A>(_:setRefId:responseType:)(void *a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for RequestSummary.ExecutionSource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = &outlined read-only object #0 of AceServiceInvokerImpl._submitPrep<A>(_:setRefId:responseType:);
  }

  (*(v8 + 104))(v12, *MEMORY[0x1E69D0678], v7, v10);
  v14 = AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(a1, v13, v12, a3);

  (*(v8 + 8))(v12, v7);
  v15 = *(*(v3 + 160) + 16);
  os_unfair_lock_lock((v15 + 24));
  closure #1 in SubmissionTaskRegistry.register(_:)partial apply((v15 + 16), &v18);
  os_unfair_lock_unlock((v15 + 24));

  return v14;
}

uint64_t AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v7 = type metadata accessor for RequestSummary.ExecutionSource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = AceServiceInvokerImpl.preparedCommand(_:options:)(a1, a2);
  v15 = SABaseCommand.forcedBargeInResult<A>(forExpectedResponseType:)(a4);
  LOBYTE(a4) = v16;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v7);
  v18 = (*(v8 + 80) + 57) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v21;
  *(v19 + 40) = v14;
  *(v19 + 48) = v15;
  *(v19 + 56) = a4 & 1;
  (*(v8 + 32))(v19 + v18, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo13SABaseCommandCSg_Tt2g5Tm(0, 0, v13, &async function pointer to partial apply for closure #1 in AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:), v19, &_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
}

uint64_t sub_1DC6FBF2C()
{
  v1 = type metadata accessor for RequestSummary.ExecutionSource();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = *(v0 + 56);
  outlined consume of Result<SABaseCommand?, Error>(*(v0 + 48));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id SABaseCommand.forcedBargeInResult<A>(forExpectedResponseType:)(uint64_t a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    if (!a1)
    {
      type metadata accessor for SABaseCommand();
    }

    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  else
  {
    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type BargeInError and conformance BargeInError();
    v3 = swift_allocError();
    BargeInError.init(rawError:)();
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type BargeInError and conformance BargeInError()
{
  result = lazy protocol witness table cache variable for type BargeInError and conformance BargeInError;
  if (!lazy protocol witness table cache variable for type BargeInError and conformance BargeInError)
  {
    type metadata accessor for BargeInError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BargeInError and conformance BargeInError);
  }

  return result;
}

uint64_t AceServiceInvokerImpl._submitExecute<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  v3[6] = v2;
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = AceServiceInvokerImpl._submitExecute<A>(_:);

  return specialized AceServiceInvokerImpl.getResponse<A>(from:)(a1, a2);
}

uint64_t specialized AceServiceInvokerImpl.getResponse<A>(from:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v4 = *(MEMORY[0x1E69E86A8] + 4);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  v2[6] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v5 = v2;
  v5[1] = specialized AceServiceInvokerImpl.getResponse<A>(from:);
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v2 + 2, a1, v6, v7, v8);
}

uint64_t partial apply for closure #1 in AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(uint64_t a1)
{
  v4 = *(type metadata accessor for RequestSummary.ExecutionSource() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t closure #1 in AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(a5, a6, a7 & 1, a8);
}

unint64_t lazy protocol witness table accessor for type [RREntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type RREntity and conformance RREntity, MEMORY[0x1E69D2948]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type RREntity and conformance RREntity, MEMORY[0x1E69D2948]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A]);
  }

  return result;
}

id ExecutionContextUpdate.__allocating_init(provideContextCommand:nativeFlowContextCommand:nluSystemDialogActs:nluActiveTasks:nluCompletedTasks:undoDirectInvocation:rrEntities:pommesContext:contextUpdateScope:restoreSessionForRequestId:executedOnRemoteDevice:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v13 = v12;
  v35 = a7;
  v41 = a12;
  v40 = a11;
  v38 = a8;
  v39 = a10;
  v37 = a9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v34 - v23;
  v25 = objc_allocWithZone(v13);
  outlined init with copy of ReferenceResolutionClientProtocol?(a8, v24, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v24, a2);
  *&v25[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = a1;
  *&v25[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = a2;
  *&v25[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = a3;
  *&v25[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = a4;
  *&v25[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = a5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &v25[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  *&v25[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = v35;
  outlined init with copy of ReferenceResolutionClientProtocol?(v24, &v25[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v26 = OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope;
  updated = type metadata accessor for ContextUpdateScope();
  v28 = *(updated - 8);
  v29 = v37;
  (*(v28 + 16))(&v25[v26], v37, updated);
  v30 = &v25[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
  v31 = v40;
  *v30 = v39;
  v30[1] = v31;
  v25[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = v41;
  v42.receiver = v25;
  v42.super_class = v36;
  v32 = objc_msgSendSuper2(&v42, sel_init);
  (*(v28 + 8))(v29, updated);
  outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a6, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  return v32;
}

void ConversationOutputSubmitter.sendSiriWillPrompt(assistantId:sessionId:requestId:)()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for SiriWillPromptMessage());
  v3 = SiriWillPromptMessage.init(build:)();
  if (v3)
  {
    v4 = v3;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationBridge);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "Going to post SiriWillPromptMessage", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v9 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v4 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DC659000, v4, v11, "Could not create SiriWillPromptMessage", v12, 2u);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }
  }
}

uint64_t closure #1 in ConversationOutputSubmitter.sendSiriWillPrompt(assistantId:sessionId:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *), void (*a8)(uint64_t, uint64_t), void (*a9)(char *), uint64_t (*a10)(uint64_t, uint64_t))
{
  v29 = a8;
  v30 = a4;
  v32 = a10;
  v33 = a5;
  v31 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v28 - v20;
  v22 = *MEMORY[0x1E69D0460];
  v23 = type metadata accessor for MessageSource();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v21, v22, v23);
  (*(v24 + 56))(v21, 0, 1, v23);
  a7(v21);

  v29(a2, a3);
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v17, v30, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  v31(v17);

  return v32(v33, a6);
}

void closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v6[4] = partial apply for closure #1 in closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  v6[5] = a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  v6[3] = &block_descriptor_289;
  v5 = _Block_copy(v6);

  [v4 submitWithExecutionOutput:a3 completion:v5];
  _Block_release(v5);
}

uint64_t @objc ServiceBridgeErrorHandlingProxy.submit(executionOutput:completion:)(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(id, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;

  a5(v9, a1, v8);
  _Block_release(v8);
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.submit(executionOutput:completion:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a2, a3);
  _Block_release(a3);
  if (v7)
  {
    v10[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned SABaseCommand?, @unowned NSError?) -> ();
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    v10[3] = &block_descriptor_201;
    v8 = _Block_copy(v10);

    [v7 submitWithExecutionOutput:a1 completion:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }

  else
  {
  }
}

uint64_t sub_1DC6FD1B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void closure #1 in closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v31 - v6);
  if (!a2)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v8 = a1;
    specialized ManagedContinuation.updateState(continuation:result:)(v7, a1, 0);
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
LABEL_9:

    return;
  }

  v8 = _convertErrorToNSError(_:)();
  v9 = [v8 domain];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == 0x55747865746E6F43 && v12 == 0xEE00726574616470)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v16 = [v8 userInfo];
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *(v17 + 16);

  if (v18 == 1)
  {
    v19 = [v8 userInfo];
    v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v20 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001DCA7C530);
      v22 = v21;

      if (v22)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        __swift_project_value_buffer(v23, static Logger.executor);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_1DC659000, v24, v25, "Ignored errorApplyingRREntities as we don't want to issue an error dialog just because entities didn't donate to SRR successfully.", v26, 2u);
          MEMORY[0x1E12A2F50](v26, -1, -1);
        }

        v27 = [objc_allocWithZone(MEMORY[0x1E69C7780]) init];
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
        (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
        specialized ManagedContinuation.updateState(continuation:result:)(v7, v27, 0);
        outlined destroy of ReferenceResolutionClientProtocol?(v7, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

LABEL_20:

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  v30 = a2;
  specialized ManagedContinuation.updateState(continuation:result:)(v7, a2, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
}

id ConversationCommitResultXPC.init(coder:)(void *a1)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v146 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v155 = &v137 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v145 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v137 - v12;
  v14 = type metadata accessor for Siri_Nlu_External_Task();
  v156 = *(v14 - 8);
  v15 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v149 = &v137 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v137 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v159 = (&v137 - v23);
  v144 = type metadata accessor for NSFastEnumerationIterator();
  v148 = *(v144 - 8);
  v24 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v147 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v157 = &v137 - v27;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v28 = swift_allocObject();
  v141 = xmmword_1DCA65720;
  *(v28 + 16) = xmmword_1DCA65720;
  v29 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v28 + 32) = v29;
  v143 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  *(v28 + 40) = v143;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v162 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v161, &_sypSgMd, &_sypSgMR);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.executor);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = a1;
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1DC659000, v42, v43, "Could not deserialize proto ActiveTasks array", v45, 2u);
      MEMORY[0x1E12A2F50](v45, -1, -1);
    }

    else
    {
    }

    goto LABEL_43;
  }

  v137 = v29;
  v140 = a1;
  v139 = v1;
  v138 = v167;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v168)
  {
    v154 = (v156 + 56);
    v158 = (v156 + 32);
    v152 = (v156 + 16);
    v160 = MEMORY[0x1E69E7CC0];
    v151 = v156 + 8;
    v153 = v21;
    while (1)
    {
      outlined init with take of Any(&v167, &v161);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v31 = v164;
      v30 = v165;
      v163 = 0;
      v161 = 0u;
      v162 = 0u;
      outlined copy of Data._Representation(v164, v165);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948]);
      Message.init<A>(contiguousBytes:extensions:partial:options:)();
      (*v154)(v13, 0, 1, v14);
      v32 = *v158;
      v33 = v14;
      v34 = v159;
      (*v158)(v159, v13, v33);
      v35 = v34;
      v14 = v33;
      (*v152)(v21, v35, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v160[2] + 1, 1, v160);
      }

      v37 = v160[2];
      v36 = v160[3];
      if (v37 >= v36 >> 1)
      {
        v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v160);
      }

      outlined consume of Data._Representation(v31, v30);
      v38 = v156;
      (*(v156 + 8))(v159, v33);
      v39 = v160;
      v160[2] = v37 + 1;
      v40 = v39 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37;
      v21 = v153;
      v32(v40, v153, v33);
      NSFastEnumerationIterator.next()();
      if (!v168)
      {
        goto LABEL_19;
      }
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.executor);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1DC659000, v62, v63, "Element in decoded array is not of type Data", v64, 2u);
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }

    (*(v148 + 8))(v157, v144);
    goto LABEL_43;
  }

  v160 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v46 = v148 + 8;
  v47 = *(v148 + 8);
  v47(v157, v144);
  v48 = swift_allocObject();
  *(v48 + 16) = v141;
  v49 = v143;
  *(v48 + 32) = v137;
  *(v48 + 40) = v49;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v162 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v161, &_sypSgMd, &_sypSgMR);

LABEL_37:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.executor);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1DC659000, v66, v67, "Could not deserialize proto ActiveTasks array", v68, 2u);
      MEMORY[0x1E12A2F50](v68, -1, -1);
    }

    v69 = v140;
    goto LABEL_42;
  }

  v148 = v46;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_37;
  }

  v154 = v47;
  v155 = v167;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v168)
  {
    v158 = (v156 + 56);
    v50 = (v156 + 32);
    v51 = (v156 + 16);
    v159 = MEMORY[0x1E69E7CC0];
    v157 = (v156 + 8);
    while (1)
    {
      outlined init with take of Any(&v167, &v161);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v53 = v164;
      v52 = v165;
      v163 = 0;
      v161 = 0u;
      v162 = 0u;
      outlined copy of Data._Representation(v164, v165);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948]);
      v54 = v145;
      Message.init<A>(contiguousBytes:extensions:partial:options:)();
      (*v158)(v54, 0, 1, v14);
      v55 = *v50;
      v56 = v149;
      (*v50)(v149, v54, v14);
      (*v51)(v150, v56, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v159[2] + 1, 1, v159);
      }

      v58 = v159[2];
      v57 = v159[3];
      if (v58 >= v57 >> 1)
      {
        v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1, v159);
      }

      outlined consume of Data._Representation(v53, v52);
      v59 = v156;
      (*(v156 + 8))(v149, v14);
      v60 = v159;
      v159[2] = v58 + 1;
      v55(&v60[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58], v150, v14);
      NSFastEnumerationIterator.next()();
      if (!v168)
      {
        goto LABEL_45;
      }
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static Logger.executor);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    v100 = os_log_type_enabled(v98, v99);
    v101 = v154;
    if (v100)
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_1DC659000, v98, v99, "Element in decoded array is not of type Data", v102, 2u);
      MEMORY[0x1E12A2F50](v102, -1, -1);
    }

    v101(v147, v144);
    goto LABEL_43;
  }

  v159 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v154(v147, v144);
  v71 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7A8E0);
  v72 = [v140 decodeIntegerForKey_];

  v73 = specialized FlowUnhandledReasonXPC.init(rawValue:)(v72);
  if (v74)
  {

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.executor);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_1DC659000, v76, v77, "Error decoding ConversationCommitResultXPC: Unknown FlowUnhandledReasonXPC", v78, 2u);
      MEMORY[0x1E12A2F50](v78, -1, -1);
    }

    v69 = v155;
LABEL_42:

LABEL_43:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v79 = v73;
  if (v73 == 4 && (v80 = MEMORY[0x1E12A1410](0x6269726373657270, 0xEE006C6F6F546465), v81 = v140, v82 = [v140 containsValueForKey_], v80, v82))
  {
    v83 = MEMORY[0x1E12A1410](0x6269726373657270, 0xEE006C6F6F546465);
    v84 = [v81 decodeIntegerForKey_];

    v85 = v84 > 1;
    if (v84 <= 1)
    {
      v86 = v84;
    }

    else
    {
      v86 = 0;
    }

    v158 = v86;
  }

  else
  {
    v158 = 0;
    v85 = 1;
  }

  v87 = v140;
  v88 = NSCoder.decodeObject<A>(of:forKey:)();
  v89 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000);
  v90 = [v87 decodeIntegerForKey_];

  v91 = specialized ConversationCommitResultTypeXPC.init(rawValue:)(v90);
  if (v92)
  {

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, static Logger.executor);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_1DC659000, v94, v95, "Error decoding ConversationCommitResultXPC: Unknown ConversationCommitResultTypeXPC", v96, 2u);
      MEMORY[0x1E12A2F50](v96, -1, -1);
    }

    goto LABEL_43;
  }

  v156 = v91;
  LODWORD(v157) = v85;
  v103 = MEMORY[0x1E12A1410](0x726F727265, 0xE500000000000000);
  v104 = [v87 containsValueForKey_];

  if (v104)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
    v105 = NSCoder.decodeObject<A>(of:forKey:)();
    v106 = v105;
  }

  else
  {
    v105 = 0;
  }

  v107 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA7A930);
  v108 = [v87 containsValueForKey_];

  if (v108 && (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0), (v109 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
  {
    v110 = v109;
    v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = v111;
  }

  else
  {
    v154 = 0;
    v153 = 0;
  }

  v112 = MEMORY[0x1E12A1410](0x5565737261706572, 0xED00004449726573);
  v113 = [v140 containsValueForKey_];

  if (v113 && (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0), (v114 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
  {
    v115 = v114;
    v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v118 = v117;
  }

  else
  {
    v116 = 0;
    v118 = 0;
  }

  if (v79 == 5 && (v119 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7A960), v120 = [v140 containsValueForKey_], v119, v120))
  {
    type metadata accessor for SiriXRedirectContextXPC();
    v121 = NSCoder.decodeObject<A>(of:forKey:)();
    v122 = v121;
  }

  else
  {
    v121 = 0;
  }

  if (v88)
  {
    v123 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v124;
  }

  else
  {
    v123 = 0;
    v125 = 0xF000000000000000;
  }

  v126 = type metadata accessor for ConversationCommitResultXPC();
  v127 = objc_allocWithZone(v126);
  *&v127[OBJC_IVAR___SKRConversationCommitResult_type] = v156;
  v128 = v159;
  *&v127[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = v160;
  *&v127[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = v128;
  *&v127[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = v79;
  v129 = &v127[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v129 = v158;
  v129[8] = v157;
  *&v127[OBJC_IVAR___SKRConversationCommitResult_error] = v105;
  v130 = &v127[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData];
  *v130 = v123;
  v130[1] = v125;
  v131 = &v127[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  v132 = v153;
  *v131 = v154;
  *(v131 + 1) = v132;
  v133 = &v127[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v133 = v116;
  v133[1] = v118;
  *&v127[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = v121;
  v134 = v105;
  outlined copy of Data?(v123, v125);
  v166.receiver = v127;
  v166.super_class = v126;
  v135 = v121;
  v136 = objc_msgSendSuper2(&v166, sel_init);

  outlined consume of Data?(v123, v125);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v136;
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned SABaseCommand?, @unowned NSError?) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.submit(executionOutput:completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_215;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v18;
  }

  else
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
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v15 = swift_allocError();
    _Block_copy(a2);
    v16 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v16);

    _Block_release(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.submitExternalActivationRequest(withRequestInfo:completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_75;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v18;
  }

  else
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
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v15 = swift_allocError();
    _Block_copy(a2);
    v16 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v16);

    _Block_release(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.postToMessageBus(message:completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_54;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v18;
  }

  else
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
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v15 = swift_allocError();
    _Block_copy(a2);
    v16 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v16);

    _Block_release(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

uint64_t sub_1DC6FF97C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

Swift::Void __swiftcall ExecutionOutput.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR___SKRExecutionOutput_executionRequestId), *(v1 + OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8));
  v5 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7AEC0);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR___SKRExecutionOutput_command);
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E12A1410](0x646E616D6D6F63, 0xE700000000000000);
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  }

  v9 = *(v2 + OBJC_IVAR___SKRExecutionOutput_contextUpdate);
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0x1E12A1410](0x55747865746E6F63, 0xED00006574616470);
    [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  }

  if (*(v2 + OBJC_IVAR___SKRExecutionOutput_fullPrint + 8))
  {
    v12 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKRExecutionOutput_fullPrint));
    v13 = MEMORY[0x1E12A1410](0x6E6972506C6C7566, 0xE900000000000074);
    [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];
  }

  if (*(v2 + OBJC_IVAR___SKRExecutionOutput_fullSpeak + 8))
  {
    v14 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKRExecutionOutput_fullSpeak));
    v15 = MEMORY[0x1E12A1410](0x616570536C6C7566, 0xE90000000000006BLL);
    [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];
  }

  if (*(v2 + OBJC_IVAR___SKRExecutionOutput_redactedFullPrint + 8))
  {
    v16 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKRExecutionOutput_redactedFullPrint));
    v17 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7AEF0);
    [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
  }

  if (*(v2 + OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak + 8))
  {
    v18 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak));
    v19 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7AF10);
    [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
  }

  v20 = type metadata accessor for JSONEncoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for RequestSummary.ExecutionSource();
  _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type RequestSummary.ExecutionSource and conformance RequestSummary.ExecutionSource, MEMORY[0x1E69D0690]);
  v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v25 = v24;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v27 = MEMORY[0x1E12A1410](0x6F69747563657865, 0xEF656372756F536ELL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v27];

  outlined consume of Data._Representation(v23, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  lazy protocol witness table accessor for type FlowOutputMessage.InAppResponse? and conformance <A> A?();
  v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v30 = v29;
  v31 = Data._bridgeToObjectiveC()().super.isa;
  v32 = MEMORY[0x1E12A1410](0x7365527070416E69, 0xED000065736E6F70);
  [(objc_class *)with.super.isa encodeObject:v31 forKey:v32];

  outlined consume of Data._Representation(v28, v30);
}

uint64_t ExecutionOutput.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v78 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v78 - v11);
  v13 = type metadata accessor for RequestSummary.ExecutionSource();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v98 = &v78 - v22;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v23 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v23)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.executor);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DC659000, v40, v41, "Could not decode ExecutionOutput: missing executionRequestId", v42, 2u);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    goto LABEL_19;
  }

  v99 = v23;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
  v96 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for ExecutionContextUpdate();
  v97 = NSCoder.decodeObject<A>(of:forKey:)();
  v100 = NSCoder.decodeObject<A>(of:forKey:)();
  v101 = NSCoder.decodeObject<A>(of:forKey:)();
  v103 = NSCoder.decodeObject<A>(of:forKey:)();
  v102 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v24 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v24)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.executor);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DC659000, v44, v45, "Can't decode ExecutionSource data into Data", v46, 2u);
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

    goto LABEL_20;
  }

  v93 = v14;
  ObjectType = v12;
  v25 = v24;
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v29)
  {
    v47 = v26;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.executor);
    v40 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v50 = v28;
    v51 = v47;
    if (os_log_type_enabled(v40, v49))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1DC659000, v40, v49, "Can't decode InAppResponse data into Data", v52, 2u);
      MEMORY[0x1E12A2F50](v52, -1, -1);
    }

    outlined consume of Data._Representation(v51, v50);
LABEL_19:

LABEL_20:
    swift_getObjectType();
    v54 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v55 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v94 = v2;
  v89 = v17;
  v30 = v29;
  v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = type metadata accessor for JSONDecoder();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = JSONDecoder.init()();
  _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type RequestSummary.ExecutionSource and conformance RequestSummary.ExecutionSource, MEMORY[0x1E69D0690]);
  v91 = v26;
  v92 = v28;
  v38 = v37;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  (*(v93 + 32))(v98, v20, v13);
  v53 = type metadata accessor for FlowOutputMessage.InAppResponse();
  _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type FlowOutputMessage.InAppResponse and conformance FlowOutputMessage.InAppResponse, MEMORY[0x1E69D0248]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v87 = v31;
  v88 = v33;
  (*(*(v53 - 8) + 56))(v9, 0, 1, v53);
  v57 = ObjectType;
  outlined init with take of FlowOutputMessage.InAppResponse?(v9, ObjectType);
  ObjectType = swift_getObjectType();
  if (v100)
  {
    v104 = 0;
    v105 = 0;
    v58 = v100;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v59 = v104;
    v85 = v105;
    if (!v105)
    {
      v59 = 0;
    }

    v84 = v59;
    v60 = v101;
    if (v101)
    {
LABEL_25:
      v104 = 0;
      v105 = 0;
      v61 = v60;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v62 = v104;
      v83 = v105;
      if (!v105)
      {
        v62 = 0;
      }

      v82 = v62;
      v63 = v103;
      if (v103)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v60 = v101;
    if (v101)
    {
      goto LABEL_25;
    }
  }

  v82 = 0;
  v83 = 0;
  v63 = v103;
  if (v103)
  {
LABEL_28:
    v104 = 0;
    v105 = 0;
    v64 = v63;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v65 = v104;
    v81 = v105;
    if (!v105)
    {
      v65 = 0;
    }

    v80 = v65;
    goto LABEL_34;
  }

LABEL_33:
  v80 = 0;
  v81 = 0;
LABEL_34:
  v86 = v38;
  if (v102)
  {
    v104 = 0;
    v105 = 0;
    v66 = v102;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v67 = v104;
    v68 = v105;
    if (!v105)
    {
      v67 = 0;
    }

    v79 = v67;
  }

  else
  {
    v79 = 0;
    v68 = 0;
  }

  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;
  v72 = v93;
  v73 = v89;
  (*(v93 + 16))(v89, v98, v13);
  v74 = v95;
  outlined init with copy of ReferenceResolutionClientProtocol?(v57, v95, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v75 = ObjectType[19](v96, v97, v84, v85, v82, v83, v80, v81, v79, v68, v69, v71, v73, v74);

  outlined consume of Data._Representation(v87, v88);
  outlined consume of Data._Representation(v91, v92);

  outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  (*(v72 + 8))(v98, v13);
  v76 = *((*MEMORY[0x1E69E7D40] & *v94) + 0x30);
  v77 = *((*MEMORY[0x1E69E7D40] & *v94) + 0x34);
  swift_deallocPartialClassInstance();
  return v75;
}

uint64_t lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void closure #1 in closure #1 in FlowAgent.execute(timeout:)()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    v6();
  }
}

void ConversationRequestAwareBridgeBase.handleEndRequestInternal(_:)(NSObject *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a1;
  v10 = RequestMessageBase.requestId.getter();
  v12 = v11;
  v86[4] = v10;
  v86[5] = v11;
  v13 = (*(*v2 + 416))(v86);
  v14 = *(v4 + 320);
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  v15 = v13(v86, 0);
  v16 = v87;
  if (v87)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v86[0] = v20;
      *v19 = 136315138;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v86);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_1DC659000, v17, v18, "Found candidate request processor with matching requestId: %s. Removing it.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    else
    {
    }

    (*(*v2 + 496))(v85, v16);

    return;
  }

  v83 = v6;
  v84 = v10;
  v22 = (*v2 + 376);
  v23 = *v22;
  v24 = (*v22)(v15);
  if (!v24)
  {
    goto LABEL_11;
  }

  v26 = *(v24 + 64);
  v25 = *(v24 + 72);

  if (v26 == v84 && v25 == v12)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {

LABEL_11:
      v30 = v5;
      v31 = v9;
      if ((*(v2 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) & 1) == 0)
      {
        if (!v23(v24))
        {

          v64 = v85;
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v65, v66))
          {

            goto LABEL_41;
          }

          v67 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v86[0] = v85;
          *v67 = 136315650;
          MessageBase.messageId.getter();
          _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v68 = dispatch thunk of CustomStringConvertible.description.getter();
          v70 = v69;
          (*(v83 + 8))(v9, v30);
          v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v86);

          *(v67 + 4) = v71;
          *(v67 + 12) = 2080;
          swift_getObjectType();
          v72 = _typeName(_:qualified:)();
          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v86);

          *(v67 + 14) = v74;
          *(v67 + 22) = 2080;
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v12, v86);

          *(v67 + 24) = v75;
          _os_log_impl(&dword_1DC659000, v65, v66, "Got end request message for non-existing request, messageId: %s type: %s requestId: %s, current requestId is not set. Dropping the message", v67, 0x20u);
          v76 = v85;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v76, -1, -1);
          v77 = v67;
LABEL_40:
          MEMORY[0x1E12A2F50](v77, -1, -1);
LABEL_41:

          return;
        }
      }

      v32 = v23;

      v33 = v85;

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v82 = v35;
        v85 = v34;
        v36 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v86[0] = v81;
        *v36 = 136315906;
        MessageBase.messageId.getter();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        (*(v83 + 8))(v31, v30);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v86);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        swift_getObjectType();
        v41 = _typeName(_:qualified:)();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v86);

        *(v36 + 14) = v43;
        *(v36 + 22) = 2080;
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v12, v86);

        *(v36 + 24) = v44;
        *(v36 + 32) = 2080;
        v46 = v32(v45);
        if (v46)
        {
          v48 = *(v46 + 64);
          v47 = *(v46 + 72);
        }

        else
        {
          v47 = 0xE700000000000000;
          v48 = 0x74657320746F6ELL;
        }

        v78 = v82;
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v86);

        *(v36 + 34) = v79;
        v65 = v85;
        _os_log_impl(&dword_1DC659000, v85, v78, "Got end request message to non exists request, messageId: %s type: %s requestId: %s, current requestId: %s dropping the message", v36, 0x2Au);
        v80 = v81;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v80, -1, -1);
        v77 = v36;
        goto LABEL_40;
      }

      goto LABEL_32;
    }
  }

  v49 = v23(v29);
  if (v49)
  {
    (*(*v2 + 496))(v85, v49);
  }

  v50 = v23(v49);
  if (!v50)
  {

    v53 = v84;
    goto LABEL_30;
  }

  v52 = *(v50 + 64);
  v51 = *(v50 + 72);

  v53 = v84;
  if (v84 != v52 || v12 != v51)
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v54)
    {
      goto LABEL_28;
    }

LABEL_30:

    v34 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v86[0] = v62;
      *v61 = 136315394;
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v12, v86);

      *(v61 + 4) = v63;
      *(v61 + 12) = 2080;
      *(v61 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v86);
      _os_log_impl(&dword_1DC659000, v34, v60, "Request %s for bridge %s was already changed, not setting processor to 'nil'", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v62, -1, -1);
      MEMORY[0x1E12A2F50](v61, -1, -1);
LABEL_33:

      return;
    }

LABEL_32:

    goto LABEL_33;
  }

LABEL_28:

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v86[0] = v58;
    *v57 = 136315394;
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v12, v86);

    *(v57 + 4) = v59;
    *(v57 + 12) = 2080;
    *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v86);
    _os_log_impl(&dword_1DC659000, v55, v56, "Setting request processor of requestId %s for bridge %s to 'nil'", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v58, -1, -1);
    MEMORY[0x1E12A2F50](v57, -1, -1);
  }

  else
  {
  }

  (*(*v2 + 384))(0);
}

void ConversationRequestProcessor.handleEndRequest(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for RREntity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.conversationBridge);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v57 = v10;
    v21 = v11;
    v22 = v15;
    v23 = v12;
    v24 = v20;
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v17;
    *v25 = v17;
    v26 = v17;
    _os_log_impl(&dword_1DC659000, v18, v19, "ConversationBridge received message: %@", v24, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v25, -1, -1);
    v27 = v24;
    v12 = v23;
    v15 = v22;
    v11 = v21;
    v10 = v57;
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  v28 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker);
  (*(*v2 + 424))(v59);
  (*(*v28 + 232))(v59);
  v29 = __swift_destroy_boxed_opaque_existential_1Tm(v59);
  v30 = (*(*v2 + 608))(v29);
  if (v30)
  {
    v31 = v30;
    type metadata accessor for RequestCompletedMessage();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_18;
    }

    v32 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    if (*v32 >> 62 != 1)
    {
      goto LABEL_18;
    }

    v33 = v32[1];
    if (!v33)
    {
      goto LABEL_18;
    }

    v34 = v33;
    v35 = [v34 af_userUtteranceValue];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 bestTextInterpretation];

      if (v37)
      {
        type metadata accessor for ConversationRequestProcessor();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        static ConversationRequestProcessor.createUtteranceRREntity(utterance:)(v10);

        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
        }

        else
        {
          (*(v12 + 32))(v15, v10, v11);
          v47 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient + 24);
          v57 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient + 32);
          __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient), v47);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR);
          v48 = *(v12 + 72);
          v49 = v12;
          v50 = (*(v12 + 80) + 32) & ~*(v12 + 80);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1DCA66060;
          (*(v49 + 16))(v51 + v50, v15, v11);
          v52 = type metadata accessor for RRFilter();
          v53 = v58;
          (*(*(v52 - 8) + 56))(v58, 1, 1, v52);
          dispatch thunk of ReferenceResolutionClientProtocol.siriMentioned(entities:configuration:completion:)();

          outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
          (*(v49 + 8))(v15, v11);
        }

LABEL_18:
        (*(*v2 + 408))(1, 0, 3);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v59[0] = v41;
      *v40 = 136315138;
      v42 = (*(*v2 + 400))();
      if (v44 > 1u)
      {
        if (v44 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v42, v43, 2);
          v45 = 0xEC00000064657472;
          v46 = 0x617473206E727574;
        }

        else
        {
          v54 = (v42 | v43) == 0;
          if (v42 | v43)
          {
            v46 = 0x6574656C706D6F63;
          }

          else
          {
            v46 = 1701602409;
          }

          if (v54)
          {
            v45 = 0xE400000000000000;
          }

          else
          {
            v45 = 0xE800000000000000;
          }
        }
      }

      else if (v44)
      {
        v45 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v42, v43, 1);
        v46 = 0xD00000000000001DLL;
      }

      else
      {
        v45 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v42, v43, 0);
        v46 = 0xD000000000000011;
      }

      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, v59);

      *(v40 + 4) = v55;
      _os_log_impl(&dword_1DC659000, v38, v39, "ConversationBridge ignoring EndRequest: Not in a turn. State = %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x1E12A2F50](v41, -1, -1);
      MEMORY[0x1E12A2F50](v40, -1, -1);
    }
  }
}

void closure #1 in ContextUpdater.updateServerContext()(uint64_t a1, void *a2)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v8 = Optional.debugDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, oslog, v5, "Sent NativeFlowContextUpdate to server. Error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  else
  {
  }
}

void TaskService.onExistingXPCTask(_:)(_DWORD *a1)
{
  v6 = v1;
  swift_beginAccess();
  v8 = *(v1 + 32);
  if (v8 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
LABEL_16:
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.instrumentation);
      v4 = a1;

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_40;
      }

      a1 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v32 = v5;
      *a1 = 136315394;
      v6 = *(v6 + 32);
      if (!(v6 >> 62))
      {
        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          if ((v6 & 0xC000000000000001) != 0)
          {

            MEMORY[0x1E12A1FE0](0, v6);

            goto LABEL_24;
          }

          if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v20 = *(v6 + 32);

LABEL_24:

            v21 = FlowTask.description.getter();
            v23 = v22;

LABEL_39:
            v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v32);

            *(a1 + 1) = v31;
            *(a1 + 6) = 2080;
            *(a1 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id), *(v4 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8), &v32);
            _os_log_impl(&dword_1DC659000, v2, v3, "TaskService - Current task is %s; don't adopt from XPC: %s)", a1, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v5, -1, -1);
            MEMORY[0x1E12A2F50](a1, -1, -1);
LABEL_40:

            return;
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_38:
        v23 = 0xE500000000000000;
        v21 = 0x3E4C494E3CLL;
        goto LABEL_39;
      }

LABEL_37:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_21;
      }

      goto LABEL_38;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v2 = MEMORY[0x1E12A1FE0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v2 = *(v8 + 32);
  }

  v4 = 0x64657461657263;
  if (*(v2 + 32) && *(v2 + 32) != 1)
  {

    goto LABEL_16;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {

    goto LABEL_16;
  }

  if (one-time initialization token for instrumentation != -1)
  {
LABEL_43:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.instrumentation);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315394;
    v15 = *(v2 + 16);
    v16 = *(v2 + 24);

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    if (*(v2 + 32))
    {
      if (*(v2 + 32) == 1)
      {
        v18 = 0xE700000000000000;
        v4 = 0x676E696F676E6FLL;
      }

      else
      {
        v18 = 0xE500000000000000;
        v4 = 0x6465646E65;
      }
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v18, &v32);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1DC659000, v11, v12, "TaskService - Task %s has state %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  if ((TaskService.hasLastXPCTaskEnded(flowTaskXPC:)(a1) & 1) == 0)
  {
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_1DC659000, v26, v27, "TaskService - begin adopting existing task from XPC: %@", v28, 0xCu);
      outlined destroy of NSObject?(v29);
      MEMORY[0x1E12A2F50](v29, -1, -1);
      MEMORY[0x1E12A2F50](v28, -1, -1);
    }

    TaskService.addNewTask(id:state:isClientInitiated:creationTime:)(*(v25 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id), *(v25 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8), *(v25 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state), *(v25 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated), v25 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_creationTime);
  }
}

uint64_t TaskService.hasLastXPCTaskEnded(flowTaskXPC:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.instrumentation);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1DC659000, v6, v7, "TaskService - handling XPC task ending for flowTaskXPC: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  swift_beginAccess();
  v11 = *(v1 + 32);
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
      goto LABEL_7;
    }

LABEL_15:

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43[0] = v20;
      *v19 = 136315138;
      v21 = *(v2 + 32);
      v22 = type metadata accessor for FlowTask(0);

      v24 = MEMORY[0x1E12A16D0](v23, v22);
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v43);

      *(v19 + 4) = v27;
      _os_log_impl(&dword_1DC659000, v17, v18, "TaskService - not able to identify previous task for end/terminal state for managed tasks: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    v28 = 0;
    return v28 & 1;
  }

  if (v11 < 0)
  {
    v16 = *(v1 + 32);
  }

  if (__CocoaSet.count.getter() < 2)
  {
    goto LABEL_15;
  }

LABEL_7:
  result = swift_beginAccess();
  v13 = *(v1 + 32);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = 1;
    v29 = MEMORY[0x1E12A1FE0](1);
    swift_endAccess();
    v30 = *(v29 + 32);
    swift_unknownObjectRelease();
    if (v30 >= 2)
    {
      goto LABEL_20;
    }

LABEL_19:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_20;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  v14 = *(v13 + 40);
  swift_endAccess();
  if (!*(v14 + 32) || *(v14 + 32) == 1)
  {
    goto LABEL_19;
  }

  v15 = 1;
LABEL_20:

  result = swift_beginAccess();
  v31 = *(v1 + 32);
  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x1E12A1FE0](1);
    goto LABEL_23;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v32 = *(v31 + 40);

LABEL_23:
    swift_endAccess();
    v34 = *(v32 + 16);
    v33 = *(v32 + 24);
    swift_bridgeObjectRetain_n();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43[0] = v38;
      *v37 = 67109378;
      *(v37 + 4) = v15 & 1;
      *(v37 + 8) = 2080;
      *(v37 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, v43);
      _os_log_impl(&dword_1DC659000, v35, v36, "TaskService - previous task .ended state is %{BOOL}d; previous taskId %s", v37, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1E12A2F50](v38, -1, -1);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    if (v34 == *&v5[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id] && v33 == *&v5[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8])
    {
      v39 = 1;
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67109120;
      *(v42 + 4) = v39 & 1;
      _os_log_impl(&dword_1DC659000, v40, v41, "TaskService - previous task same taskId as xpc one - %{BOOL}d", v42, 8u);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    v28 = v15 & v39;
    return v28 & 1;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t FlowTaskXPC.description.getter()
{
  v5[8] = 0;
  _StringGuts.grow(_:)(71);
  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA8BAA0);
  MEMORY[0x1E12A1580](*(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8));
  MEMORY[0x1E12A1580](0x3A6574617473202CLL, 0xE900000000000020);
  *v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA8BA60);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA8BA80);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v3);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return *&v5[1];
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC706B00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *initializeWithCopy for ConversationCommitResult(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = type metadata accessor for PluginAction();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
      v10 = a2[2];
      v11 = a2[3];
      a1[2] = v10;
      a1[3] = v11;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for FlowUnhandledReason();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *a1 = v5;
    a1[1] = v6;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for ConversationCommitResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v10 = type metadata accessor for PluginAction();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
      }

      else
      {
        v12 = a2[1];
        *a1 = *a2;
        a1[1] = v12;
        v13 = a2[2];
        v14 = a2[3];
        a1[2] = v13;
        a1[3] = v14;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v11 = type metadata accessor for FlowUnhandledReason();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
    }

    else
    {
      v7 = *a2;
      v8 = a2[1];
      *a1 = v7;
      a1[1] = v8;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

unint64_t specialized ConversationCommitResultTypeXPC.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t closure #1 in RemoteConversationClient.commit(bridge:)()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.commit(bridge:), 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = swift_allocObject();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.commit(bridge:);
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for ConversationCommitResult();
  *v5 = v0;
  v5[1] = closure #1 in RemoteConversationClient.commit(bridge:);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v3, v6);
}

{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t closure #1 in RemoteConversationClient.prepare(bridge:)()
{
  v1 = swift_allocObject();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.prepare(bridge:);
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = closure #1 in RemoteConversationClient.prepare(bridge:);
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v3, v7);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.prepare(bridge:), 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t InterruptibleTaskResult.get()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7, v5);
  if (!swift_getEnumCaseMultiPayload())
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v7);
  }

  v9 = *v7;
  return swift_willThrow();
}

uint64_t ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)()
{
  v2 = *v1;
  v3 = *(*v1 + 1384);
  v9 = *v1;
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v4 = v2[168];
    v5 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  else
  {
    v6 = v2[172];
    v7 = v2[148];

    v5 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(*v0 + 1424);
  v2 = *(*v0 + 1184);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v2, 0);
}

{
  v599 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  outlined init with take of DecisionEngineResponse(*(v0 + 1024), v1, type metadata accessor for ConversationCommitResult);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v1, v2, type metadata accessor for ConversationCommitResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = *(v0 + 1016);
      v6 = *(v0 + 360);
      *(v0 + 1400) = *v5;
      *(v0 + 1408) = v5[1];
      ObjectType = swift_getObjectType();
      *(v0 + 1416) = ObjectType;
      v8 = swift_task_alloc();
      *(v0 + 1424) = v8;
      *v8 = v0;
      v8[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
      v10 = *(v0 + 360);
      v9 = *(v0 + 368);

      return ServiceBridgeDelegate.fetchSelfReflectionDecision()(v0 + 1604, ObjectType, v9);
    }

    v36 = *(v0 + 1588);
    v37 = *(v0 + 960);
    v38 = *(v0 + 952);
    v39 = *(v0 + 944);
    v40 = *(v0 + 936);
    (*(v39 + 32))(v37, *(v0 + 1016), v40);
    (*(v39 + 16))(v38, v37, v40);
    v41 = (*(v39 + 88))(v38, v40);
    if (v41 == v36)
    {
      v42 = *(v0 + 1280);
      v43 = *(v0 + 1184);
      v44 = *(v0 + 968);
      v45 = *(v0 + 952);
      v46 = *(v0 + 944);
      v47 = *(v0 + 936);

      (*(v46 + 96))(v45, v47);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v45, v44, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1DC659000, v48, v49, "[ConversationService] Falling back to IntelligenceFlow because Flow returned .unhandled(reason: .needsIntelligenceFlowFallback)", v50, 2u);
        MEMORY[0x1E12A2F50](v50, -1, -1);
      }

      v51 = *(v0 + 1344);
      v52 = *(v0 + 1288);
      v568 = *(v0 + 1032);
      v581 = *(v0 + 1336);
      v53 = *(v0 + 968);
      v556 = *(v0 + 960);
      v54 = *(v0 + 944);
      v55 = *(v0 + 936);
      v56 = *(v0 + 384);
      v57 = *(v0 + 360);
      v58 = *(v0 + 368);

      v59 = swift_getObjectType();
      (*(v58 + 64))(v53, v59, v58);

      outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
      (*(v54 + 8))(v556, v55);
      outlined destroy of ConversationService.EagerResult(v568, type metadata accessor for ConversationCommitResult);

      v60 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
      goto LABEL_16;
    }

    if (v41 != *(v0 + 1592))
    {
      if (v41 == *MEMORY[0x1E69CFB70])
      {
        v199 = *(v0 + 1280);
        v200 = *(v0 + 1184);
        v201 = *(v0 + 384);

        v202 = *(**(v201 + 208) + 192);

        v202(v203);

        v204 = Logger.logObject.getter();
        v205 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&dword_1DC659000, v204, v205, "[ConversationService] Falling back to server because Flow returned .unhandled(reason: .needsServerExecution)", v206, 2u);
          MEMORY[0x1E12A2F50](v206, -1, -1);
        }

        v500 = *(v0 + 1312);
        v528 = *(v0 + 1288);
        v539 = *(v0 + 1344);
        v509 = *(v0 + 1208);
        v518 = *(v0 + 1320);
        v573 = *(v0 + 1032);
        v588 = *(v0 + 1336);
        v207 = *(v0 + 944);
        v549 = *(v0 + 936);
        v561 = *(v0 + 960);
        v208 = *(v0 + 928);
        v209 = *(v0 + 904);
        v210 = *(v0 + 384);
        v484 = *(v0 + 368);
        v492 = *(v0 + 1200);
        v477 = *(v0 + 360);
        v211 = *(v0 + 352);

        v213 = *(v211 + 16);
        v212 = *(v211 + 24);
        v214 = type metadata accessor for Siri_Nlu_External_UserParse();
        (*(*(v214 - 8) + 56))(v208, 1, 1, v214);
        v215 = *MEMORY[0x1E69D0780];
        v216 = type metadata accessor for ServerFallbackReason();
        v217 = *(v216 - 8);
        v218 = v215;
        v56 = v210;
        (*(v217 + 104))(v209, v218, v216);
        (*(v217 + 56))(v209, 0, 1, v216);
        ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v477, v484, v500, v518, v492, v509, v213, v212, 1u, v208, v209);

        outlined destroy of ReferenceResolutionClientProtocol?(v209, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v208, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
        (*(v207 + 8))(v561, v549);
        outlined destroy of ConversationService.EagerResult(v573, type metadata accessor for ConversationCommitResult);

        v60 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
      }

      else if (v41 == *MEMORY[0x1E69CFB78])
      {
        v259 = *(v0 + 1280);
        v260 = *(v0 + 1184);
        v261 = *(v0 + 384);

        v262 = *(**(v261 + 208) + 192);

        v262(v263);

        v264 = Logger.logObject.getter();
        v265 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v264, v265))
        {
          v266 = swift_slowAlloc();
          *v266 = 0;
          _os_log_impl(&dword_1DC659000, v264, v265, "[ConversationService] Falling back to POMMES because Flow returned .unhandled(reason: .needsInfoDomainFallback)", v266, 2u);
          MEMORY[0x1E12A2F50](v266, -1, -1);
        }

        v591 = *(v0 + 1336);
        v267 = *(v0 + 1320);
        v268 = *(v0 + 1312);
        v269 = *(v0 + 1288);
        v563 = *(v0 + 1344);
        v575 = *(v0 + 1032);
        v551 = *(v0 + 960);
        v270 = *(v0 + 944);
        v271 = *(v0 + 936);
        v272 = *(v0 + 384);
        v273 = *(v0 + 360);
        v274 = *(v0 + 368);

        v275 = swift_getObjectType();
        v276 = *(v274 + 56);
        v277 = v274;
        v56 = v272;
        v276(v268, v267, v275, v277);

        (*(v270 + 8))(v551, v271);
        outlined destroy of ConversationService.EagerResult(v575, type metadata accessor for ConversationCommitResult);

        v60 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
      }

      else
      {
        v278 = *(v0 + 1184);
        v279 = *MEMORY[0x1E69CFB68];
        v280 = v41;

        v281 = *(v0 + 1280);
        if (v280 == v279)
        {
          v282 = Logger.logObject.getter();
          v283 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v282, v283))
          {
            v284 = swift_slowAlloc();
            *v284 = 0;
            _os_log_impl(&dword_1DC659000, v282, v283, "[ConversationService] Received .unhandled(reason: .needsExecutionRerun). Clearing state and rerunning", v284, 2u);
            MEMORY[0x1E12A2F50](v284, -1, -1);
          }

          v511 = *(v0 + 1312);
          v520 = *(v0 + 1320);
          v530 = *(v0 + 1288);
          v541 = *(v0 + 1344);
          v576 = *(v0 + 1032);
          v592 = *(v0 + 1336);
          v285 = *(v0 + 944);
          v552 = *(v0 + 936);
          v564 = *(v0 + 960);
          v286 = *(v0 + 896);
          v287 = *(v0 + 880);
          v502 = *(v0 + 872);
          v288 = *(v0 + 384);
          v290 = *(v0 + 360);
          v289 = *(v0 + 368);

          v291 = *(**(v288 + 208) + 192);

          v291(v292);

          v293 = swift_getObjectType();
          (*(v287 + 56))(v286, 1, 1, v502);
          v294 = *(v289 + 88);
          v295 = v289;
          v56 = v288;
          v294(v511, v520, v286, v293, v295);

          outlined destroy of ReferenceResolutionClientProtocol?(v286, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
          (*(v285 + 8))(v564, v552);
          outlined destroy of ConversationService.EagerResult(v576, type metadata accessor for ConversationCommitResult);

          v60 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
        }

        else
        {
          v343 = Logger.logObject.getter();
          v344 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v343, v344))
          {
            v345 = swift_slowAlloc();
            v346 = swift_slowAlloc();
            v597[0] = v346;
            *v345 = 136315138;
            *(v345 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x80000001DCA81580, v597);
            _os_log_impl(&dword_1DC659000, v343, v344, "[ConversationService]: %s", v345, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v346);
            MEMORY[0x1E12A2F50](v346, -1, -1);
            MEMORY[0x1E12A2F50](v345, -1, -1);
          }

          v347 = *(v0 + 1344);
          v348 = *(v0 + 1288);
          v554 = *(v0 + 960);
          v567 = *(v0 + 1032);
          v579 = *(v0 + 952);
          v594 = *(v0 + 1336);
          v349 = *(v0 + 944);
          v350 = *(v0 + 936);
          v351 = *(v0 + 384);
          v352 = *(v0 + 360);
          v353 = *(v0 + 368);
          v354 = swift_getObjectType();
          (*(v353 + 32))(v348, 0xD00000000000002BLL, 0x80000001DCA81580, v354, v353);

          v56 = v351;

          v355 = *(v349 + 8);
          v355(v554, v350);
          outlined destroy of ConversationService.EagerResult(v567, type metadata accessor for ConversationCommitResult);
          v355(v579, v350);

          v60 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
        }
      }

      goto LABEL_16;
    }

    v585 = *(v0 + 1596);
    v159 = *(v0 + 1312);
    v160 = *(v0 + 952);
    v161 = *(v0 + 888);
    v162 = *(v0 + 880);
    v163 = *(v0 + 872);
    v164 = *(v0 + 840);
    v165 = *(v0 + 832);
    v559 = *(v0 + 1320);
    v571 = *(v0 + 824);
    v167 = *(v0 + 360);
    v166 = *(v0 + 368);
    (*(*(v0 + 944) + 96))(v160, *(v0 + 936));
    (*(v162 + 32))(v161, v160, v163);
    v168 = swift_getObjectType();
    *(v0 + 1432) = v168;
    (*(v166 + 80))(v159, v559, v161, v168, v166);
    SiriXRedirectContext.reason.getter();
    if ((*(v165 + 88))(v164, v571) == v585)
    {
      v169 = *(v0 + 864);
      v170 = *(v0 + 856);
      v171 = *(v0 + 848);
      v172 = *(v0 + 840);
      (*(*(v0 + 832) + 96))(v172, *(v0 + 824));
      (*(v170 + 32))(v169, v172, v171);
      SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
      if (v173)
      {
        v476 = *(v0 + 1312);
        v483 = *(v0 + 1320);
        v174 = *(v0 + 1184);
        v548 = *(v0 + 1032);
        v560 = *(v0 + 1336);
        v538 = *(v0 + 960);
        v175 = *(v0 + 944);
        v517 = *(v0 + 1344);
        v527 = *(v0 + 936);
        v176 = *(v0 + 896);
        v177 = *(v0 + 888);
        v178 = *(v0 + 880);
        v179 = *(v0 + 872);
        v508 = *(v0 + 864);
        v180 = *(v0 + 856);
        v491 = *(v0 + 1288);
        v499 = *(v0 + 848);
        v572 = v168;
        v586 = *(v0 + 384);
        v181 = *(v0 + 360);
        v182 = *(v0 + 368);

        (*(v178 + 16))(v176, v177, v179);
        (*(v178 + 56))(v176, 0, 1, v179);
        v56 = v586;
        (*(v182 + 88))(v476, v483, v176, v572, v182);

        outlined destroy of ReferenceResolutionClientProtocol?(v176, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
        (*(v180 + 8))(v508, v499);
        (*(v178 + 8))(v177, v179);
        (*(v175 + 8))(v538, v527);
        outlined destroy of ConversationService.EagerResult(v548, type metadata accessor for ConversationCommitResult);

        v60 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
LABEL_16:
        v423 = v60;
        v79 = *(v56 + 216);
        v80 = *(v0 + 1176);
        v81 = *(v0 + 1168);
        v82 = *(v0 + 1160);
        v83 = *(v0 + 1152);
        v410 = *(v0 + 1144);
        v411 = *(v0 + 1136);
        v412 = *(v0 + 1128);
        v413 = *(v0 + 1120);
        v414 = *(v0 + 1112);
        v415 = *(v0 + 1104);
        v416 = *(v0 + 1096);
        v417 = *(v0 + 1088);
        v418 = *(v0 + 1080);
        v419 = *(v0 + 1072);
        v420 = *(v0 + 1064);
        v421 = *(v0 + 1056);
        v422 = *(v0 + 1032);
        v424 = *(v0 + 1024);
        v426 = *(v0 + 1016);
        v428 = *(v0 + 1000);
        v430 = *(v0 + 976);
        v432 = *(v0 + 968);
        v434 = *(v0 + 960);
        v436 = *(v0 + 952);
        v438 = *(v0 + 928);
        v440 = *(v0 + 920);
        v442 = *(v0 + 912);
        v444 = *(v0 + 904);
        v446 = *(v0 + 896);
        v425 = *(v0 + 888);
        v427 = *(v0 + 864);
        v429 = *(v0 + 840);
        v431 = *(v0 + 816);
        v433 = *(v0 + 792);
        v435 = *(v0 + 784);
        v437 = *(v0 + 776);
        v439 = *(v0 + 768);
        v441 = *(v0 + 760);
        v443 = *(v0 + 752);
        v445 = *(v0 + 728);
        v447 = *(v0 + 704);
        v448 = *(v0 + 680);
        v450 = *(v0 + 672);
        v451 = *(v0 + 664);
        v454 = *(v0 + 656);
        v457 = *(v0 + 648);
        v459 = *(v0 + 624);
        v463 = *(v0 + 616);
        v466 = *(v0 + 608);
        v470 = *(v0 + 600);
        v474 = *(v0 + 592);
        v481 = *(v0 + 584);
        v489 = *(v0 + 576);
        v497 = *(v0 + 568);
        v506 = *(v0 + 544);
        v515 = *(v0 + 536);
        v525 = *(v0 + 512);
        v535 = *(v0 + 488);
        v546 = *(v0 + 464);
        v558 = *(v0 + 440);
        v84 = *(v0 + 384);
        v570 = *(v0 + 416);
        v583 = *(v0 + 392);
        v85 = *(*v79 + 208);

        v85(0xD00000000000005BLL, 0x80000001DCA814E0, v423, v84);

        v86 = *(v0 + 8);

        return v86();
      }

      v306 = *(v0 + 1280);
      v307 = Logger.logObject.getter();
      v308 = static os_log_type_t.debug.getter();
      v309 = os_log_type_enabled(v307, v308);
      v310 = *(v0 + 864);
      v311 = *(v0 + 856);
      v312 = *(v0 + 848);
      if (v309)
      {
        v313 = swift_slowAlloc();
        *v313 = 0;
        _os_log_impl(&dword_1DC659000, v307, v308, "needsSiriXRedirect was invoked without a rewritten utterance. Attempting to restart execution from existing RC state.", v313, 2u);
        MEMORY[0x1E12A2F50](v313, -1, -1);
      }

      (*(v311 + 8))(v310, v312);
      v219 = *(v0 + 376);
      if (!v219)
      {
LABEL_67:
        v314 = *(v0 + 1184);

        v315 = *(v0 + 1280);
        v316 = *(v0 + 376);

        v317 = Logger.logObject.getter();
        v318 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v317, v318))
        {
          v319 = *(v0 + 376);
          v320 = swift_slowAlloc();
          v321 = swift_slowAlloc();
          v597[0] = v321;
          *v320 = 136315138;
          *(v0 + 312) = v319;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputCSgMd, &_s14SiriKitRuntime21ConversationUserInputCSgMR);
          v322 = String.init<A>(describing:)();
          v324 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v322, v323, v597);

          *(v320 + 4) = v324;
          _os_log_impl(&dword_1DC659000, v317, v318, "[ConversationService] Conversation wanted to fall back to Siri X, but could not find a plugin to handle it. Will fall back to server. ConversationUserInput: %s", v320, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v321);
          MEMORY[0x1E12A2F50](v321, -1, -1);
          MEMORY[0x1E12A2F50](v320, -1, -1);
        }

        v325 = *(v0 + 376);
        v326 = *(v0 + 352);
        v565 = *(v326 + 24);
        v577 = *(v326 + 16);
        if (v325)
        {
          v327 = *(*(v325 + 56) + 16);
          v328 = *(v327 + 16);
          v329 = type metadata accessor for Siri_Nlu_External_UserParse();
          v330 = *(v329 - 8);
          if (v328)
          {
            (*(*(v329 - 8) + 16))(*(v0 + 920), v327 + ((*(*(v329 - 8) + 80) + 32) & ~*(*(v329 - 8) + 80)), v329);
            v331 = 0;
LABEL_80:
            v469 = *(v0 + 1312);
            v487 = *(v0 + 1288);
            v495 = *(v0 + 1344);
            v473 = *(v0 + 1208);
            v479 = *(v0 + 1320);
            v465 = *(v0 + 1200);
            v543 = *(v0 + 1032);
            v555 = *(v0 + 1336);
            v356 = *(v0 + 944);
            v522 = *(v0 + 936);
            v532 = *(v0 + 960);
            v357 = *(v0 + 920);
            v358 = *(v0 + 904);
            v359 = *(v0 + 880);
            v504 = *(v0 + 872);
            v513 = *(v0 + 888);
            v595 = *(v0 + 384);
            v361 = *(v0 + 360);
            v360 = *(v0 + 368);
            (*(v330 + 56))(v357, v331, 1, v329);
            v362 = *MEMORY[0x1E69D0780];
            v363 = type metadata accessor for ServerFallbackReason();
            v364 = *(v363 - 8);
            (*(v364 + 104))(v358, v362, v363);
            (*(v364 + 56))(v358, 0, 1, v363);
            v365 = v361;
            v56 = v595;
            ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v365, v360, v469, v479, v465, v473, v577, v565, 0, v357, v358);

            outlined destroy of ReferenceResolutionClientProtocol?(v358, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v357, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
            (*(v359 + 8))(v513, v504);
            (*(v356 + 8))(v532, v522);
            outlined destroy of ConversationService.EagerResult(v543, type metadata accessor for ConversationCommitResult);

            v60 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
            goto LABEL_16;
          }
        }

        else
        {
          v329 = type metadata accessor for Siri_Nlu_External_UserParse();
          v330 = *(v329 - 8);
        }

        v331 = 1;
        goto LABEL_80;
      }
    }

    else
    {
      (*(*(v0 + 832) + 8))(*(v0 + 840), *(v0 + 824));
      v219 = *(v0 + 376);
      if (!v219)
      {
        goto LABEL_67;
      }
    }

    v220 = v219[7];
    *(v0 + 1440) = v220;
    if (*(v220 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo))
    {
      v485 = *(v0 + 1600);
      v221 = *(v0 + 904);
      v468 = *(v0 + 880);
      v472 = *(v0 + 872);
      v478 = *(v0 + 888);
      v222 = *(v0 + 816);
      v223 = *(v0 + 808);
      v224 = *(v0 + 800);
      v225 = *(v0 + 792);
      v461 = v225;
      v226 = *(v0 + 784);
      v449 = v226;
      v574 = *(v0 + 768);
      v589 = *(v0 + 776);
      v493 = *(v0 + 760);
      v501 = *(v0 + 752);
      v540 = *(v0 + 744);
      v550 = *(v0 + 736);
      v510 = *(v0 + 728);
      v519 = *(v0 + 720);
      v529 = *(v0 + 712);
      v562 = *(v0 + 384);
      v227 = *(v220 + 16);
      v456 = *(v220 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
      (*(v223 + 16))(v222, v220 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode, v224);
      outlined init with copy of ReferenceResolutionClientProtocol?(v220 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, v225, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
      v228 = *(v220 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult + 8);
      v453 = *(v220 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
      outlined init with copy of ReferenceResolutionClientProtocol?(v220 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, v221, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      v229 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
      (*(*(v229 - 8) + 56))(v226, 1, 1, v229);
      v230 = type metadata accessor for NLResponse(0);
      v231 = *(v230 + 48);
      v232 = *(v230 + 52);
      v233 = swift_allocObject();
      *(v0 + 1448) = v233;
      *(v233 + 16) = v227;
      (*(v223 + 32))(v233 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode, v222, v224);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v461, v233 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
      v234 = (v233 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
      *v234 = v453;
      v234[1] = v228;
      *(v233 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo) = v456;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v221, v233 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v449, v233 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
      v235 = v219[3];
      v462 = v219[2];
      v236 = v219[6];
      outlined init with copy of ReferenceResolutionClientProtocol?(v219 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision, v589, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      (*(v468 + 16))(v574, v478, v472);
      v237 = type metadata accessor for FlowRedirectContext();
      v238 = *(v237 - 8);
      (*(v238 + 104))(v574, v485, v237);
      (*(v238 + 56))(v574, 0, 1, v237);
      v239 = v236;

      static ExecutionLocation.unknown.getter();
      static ExecutionLocation.unknown.getter();
      v240 = type metadata accessor for ConversationUserInput(0);
      v241 = *(v240 + 48);
      v242 = *(v240 + 52);
      v243 = swift_allocObject();
      *(v0 + 1456) = v243;
      *(v243 + 2) = v462;
      *(v243 + 3) = v235;
      UUID.init()();
      v244 = UUID.uuidString.getter();
      v246 = v245;
      v247 = *(v519 + 8);
      *(v0 + 1464) = v247;
      *(v0 + 1472) = (v519 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v247(v510, v529);
      *(v243 + 4) = v244;
      *(v243 + 5) = v246;
      *(v243 + 6) = v236;
      *(v243 + 7) = v233;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v589, &v243[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      *&v243[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser] = 0;
      *&v243[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold] = 0;
      *&v243[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_executionOverrideContext] = 0;
      v248 = &v243[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance];
      *v248 = 0;
      *(v248 + 1) = 0;
      v249 = *(v540 + 32);
      v249(&v243[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation], v493, v550);
      v249(&v243[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation], v501, v550);
      v243[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession] = 0;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v574, &v243[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      v250 = v562[6];
      __swift_project_boxed_opaque_existential_1(v562 + 2, v562[5]);
      if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
      {
        v251 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14SiriKitRuntime24RemoteConversationClientC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v251 = MEMORY[0x1E69E7CD0];
      }

      *(v0 + 1480) = v251;
      v252 = *(v250 + 8);
      v590 = v252 + *v252;
      v253 = v252[1];
      v254 = swift_task_alloc();
      *(v0 + 1488) = v254;
      *v254 = v0;
      v254[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
      v255 = *(v0 + 680);
      v256 = *(v0 + 360);
      v257 = *(v0 + 368);
      v258 = *(v0 + 352);
      v601 = v250;

      __asm { BRAA            X8, X16 }
    }

    v578 = v168;
    v332 = *(v0 + 1280);
    v333 = *(v0 + 1184);

    v334 = Logger.logObject.getter();
    v335 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v334, v335))
    {
      v336 = swift_slowAlloc();
      *v336 = 0;
      _os_log_impl(&dword_1DC659000, v334, v335, "Falling back to Siri X because Flow returned .unhandled(reason: .needsSiriXFallback) and PommesInfo is nil", v336, 2u);
      MEMORY[0x1E12A2F50](v336, -1, -1);
    }

    v593 = *(v0 + 1336);
    v486 = *(v0 + 1312);
    v494 = *(v0 + 1320);
    v512 = *(v0 + 1288);
    v521 = *(v0 + 1344);
    v553 = *(v0 + 960);
    v566 = *(v0 + 1032);
    v337 = *(v0 + 944);
    v338 = *(v0 + 896);
    v531 = *(v0 + 888);
    v542 = *(v0 + 936);
    v339 = *(v0 + 880);
    v340 = *(v0 + 872);
    v56 = *(v0 + 384);
    v503 = *(v0 + 376);
    v341 = *(v0 + 360);
    v342 = *(v0 + 368);

    (*(v339 + 56))(v338, 1, 1, v340);
    (*(v342 + 88))(v486, v494, v338, v578, v342);

    outlined destroy of ReferenceResolutionClientProtocol?(v338, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
    (*(v339 + 8))(v531, v340);
    (*(v337 + 8))(v553, v542);
    outlined destroy of ConversationService.EagerResult(v566, type metadata accessor for ConversationCommitResult);

    v60 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v61 = *(v0 + 1280);
    v62 = *(v0 + 1184);
    v63 = *(v0 + 1016);

    v65 = *v63;
    v64 = v63[1];
    v569 = v63[2];
    v582 = v63[3];

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v597[0] = v69;
      *v68 = 136315138;
      *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, v597);
      _os_log_impl(&dword_1DC659000, v66, v67, "[ConversationService] Retriggering NL for request %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x1E12A2F50](v69, -1, -1);
      MEMORY[0x1E12A2F50](v68, -1, -1);
    }

    v70 = *(v0 + 1344);
    v71 = *(v0 + 1288);
    v72 = *(v0 + 1208);
    v73 = *(v0 + 1200);
    v545 = *(v0 + 1032);
    v557 = *(v0 + 1336);
    v74 = *(v0 + 384);
    v75 = *(v0 + 360);
    v76 = *(v0 + 368);
    v77 = swift_getObjectType();
    v78 = *(v76 + 136);
    v409 = v76;
    v56 = v74;
    v78(v65, v64, v569, v582, v73, v72, destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0, v77, v409);

    outlined destroy of ConversationService.EagerResult(v545, type metadata accessor for ConversationCommitResult);

    v60 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
    goto LABEL_16;
  }

  v12 = *(v0 + 1344);
  v13 = *(v0 + 1280);
  v14 = *(v0 + 544);
  v15 = *(v0 + 536);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v18 = *(v0 + 384);
  (*(v16 + 32))(v14, *(v0 + 1016), v17);
  v19 = *(**(v18 + 208) + 192);

  v19(v20);

  (*(v16 + 16))(v15, v14, v17);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1344);
    v24 = *(v0 + 536);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v27 = swift_slowAlloc();
    v580 = swift_slowAlloc();
    v597[0] = v580;
    *v27 = 136315394;
    v28 = *(v23 + 112);
    v29 = *(v23 + 120);

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v597);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, 255, MEMORY[0x1E69CFE08]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v34 = *(v25 + 8);
    v34(v24, v26);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v597);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_1DC659000, v21, v22, "[ConversationService] Conversation %s wants to redirect to plugin action: %s)", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v580, -1, -1);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  else
  {
    v87 = *(v0 + 536);
    v88 = *(v0 + 528);
    v89 = *(v0 + 520);

    v34 = *(v88 + 8);
    v34(v87, v89);
  }

  *(v0 + 1504) = v34;
  v90 = *(v0 + 1336);
  v91 = *(v0 + 544);
  v92 = PluginAction.flowHandlerId.getter();
  if (*(v90 + 16))
  {
    v94 = *(v0 + 1336);
    v95 = specialized __RawDictionaryStorage.find<A>(_:)(v92, v93);
    v97 = v96;

    v98 = *(v0 + 1336);
    if ((v97 & 1) != 0 && *(*(v98 + 56) + v95) == 1)
    {
      v99 = *(v0 + 1344);
      v100 = *(v0 + 1280);
      v101 = *(v0 + 1184);
      v102 = *(v0 + 544);

      v597[0] = 0;
      v597[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v597[0] = 0xD00000000000001ALL;
      v597[1] = 0x80000001DCA81540;
      v103 = *(v99 + 112);
      v104 = *(v99 + 120);

      MEMORY[0x1E12A1580](v103, v104);

      MEMORY[0x1E12A1580](0x6F74206B63616220, 0xE900000000000020);
      v105 = PluginAction.flowHandlerId.getter();
      MEMORY[0x1E12A1580](v105);

      v106 = *v597;

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v597[0] = v110;
        *v109 = 136315138;
        *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, *(&v106 + 1), v597);
        _os_log_impl(&dword_1DC659000, v107, v108, "[ConversationService] %s", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v110);
        MEMORY[0x1E12A2F50](v110, -1, -1);
        MEMORY[0x1E12A2F50](v109, -1, -1);
      }

      v526 = *(v0 + 1264);
      v536 = *(v0 + 1272);
      v516 = *(v0 + 1256);
      v490 = *(v0 + 1240);
      v498 = *(v0 + 1248);
      v482 = *(v0 + 1584);
      v467 = *(v0 + 1224);
      v471 = *(v0 + 1232);
      v464 = *(v0 + 1216);
      v111 = *(v0 + 1200);
      v452 = *(v0 + 1208);
      v455 = *(v0 + 1144);
      v507 = *(v0 + 1136);
      v458 = *(v0 + 1080);
      v475 = *(v0 + 1072);
      v460 = *(v0 + 1040);
      v112 = *(v0 + 728);
      v113 = *(v0 + 720);
      v114 = *(v0 + 712);
      v115 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
      UUID.init()();
      v116 = UUID.uuidString.getter();
      v118 = v117;
      (*(v113 + 8))(v112, v114);
      v119 = MEMORY[0x1E12A1410](v116, v118);

      [v115 setAceId_];

      [v115 setErrorCode_];
      v120 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA81560);
      [v115 setReason_];

      v121 = v115;
      v122 = MEMORY[0x1E12A1410](v111, v452);
      [v121 setRefId_];

      v467(v455, 1, 1, v464);
      v490(v458, v482, v460);
      v516(v475, v458, v460);
      outlined init with copy of ReferenceResolutionClientProtocol?(v455, v507, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v123 = objc_allocWithZone(v536);
      v124 = &v123[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
      *v124 = v111;
      *(v124 + 1) = v452;
      v125 = v121;
      v126 = &v123[OBJC_IVAR___SKRExecutionOutput_fullPrint];
      *v126 = 0;
      *(v126 + 1) = 0;
      v127 = &v123[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
      *v127 = 0;
      *(v127 + 1) = 0;
      v128 = &v123[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
      *v128 = 0;
      *(v128 + 1) = 0;
      v129 = &v123[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
      *v129 = 0;
      *(v129 + 1) = 0;
      v516(&v123[OBJC_IVAR___SKRExecutionOutput_executionSource], v475, v460);
      v584 = v123;
      outlined init with copy of ReferenceResolutionClientProtocol?(v507, &v123[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      objc_opt_self();
      v130 = swift_dynamicCastObjCClass();
      v131 = *(v0 + 1280);
      v132 = *(v0 + 1208);
      v547 = v121;
      if (!v130)
      {

        v296 = v121;
        v297 = Logger.logObject.getter();
        v298 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v297, v298))
        {
          v299 = swift_slowAlloc();
          v300 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          v597[0] = v301;
          *v299 = 136315394;
          *(v299 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v597);
          *(v299 + 12) = 2112;
          *(v299 + 14) = v296;
          *v300 = v125;
          v302 = v296;
          _os_log_impl(&dword_1DC659000, v297, v298, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v299, 0x16u);
          outlined destroy of ReferenceResolutionClientProtocol?(v300, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1E12A2F50](v300, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v301);
          MEMORY[0x1E12A2F50](v301, -1, -1);
          MEMORY[0x1E12A2F50](v299, -1, -1);
        }

        v303 = off_1E8646000;
        *&v584[OBJC_IVAR___SKRExecutionOutput_command] = v125;
        *&v584[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
        v304 = v296;
        v305 = v584;
        goto LABEL_86;
      }

      v133 = v130;
      v134 = v121;

      v135 = v134;
      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v597[0] = v140;
        *v138 = 136315394;
        *(v138 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v597);
        *(v138 + 12) = 2112;
        *(v138 + 14) = v133;
        *v139 = v133;
        v141 = v135;
        _os_log_impl(&dword_1DC659000, v136, v137, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v138, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v139, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v139, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v140);
        MEMORY[0x1E12A2F50](v140, -1, -1);
        MEMORY[0x1E12A2F50](v138, -1, -1);
      }

      v142 = [v133 promptContextProto];
      v537 = v133;
      if (v142)
      {
        v143 = *(v0 + 1392);
        v144 = *(v0 + 632);
        v145 = *(v0 + 616);
        v146 = *(v0 + 600);
        v147 = v142;
        v148 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v150 = v149;

        v598 = 0;
        memset(v597, 0, sizeof(v597));
        outlined copy of Data._Representation(v148, v150);
        BinaryDecodingOptions.init()();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, 255, MEMORY[0x1E69D1500]);
        Message.init(serializedData:extensions:partial:options:)();
        if (!v143)
        {
          v366 = *(v0 + 1280);
          v367 = *(v0 + 656);
          v368 = *(v0 + 648);
          v369 = *(v0 + 640);
          v370 = *(v0 + 632);
          v371 = *(v0 + 616);
          (*(v369 + 56))(v371, 0, 1, v370);
          (*(v369 + 32))(v367, v371, v370);
          (*(v369 + 16))(v368, v367, v370);
          v372 = Logger.logObject.getter();
          v373 = static os_log_type_t.debug.getter();
          v374 = os_log_type_enabled(v372, v373);
          v375 = *(v0 + 656);
          v376 = *(v0 + 648);
          v377 = *(v0 + 640);
          v378 = *(v0 + 632);
          if (v374)
          {
            v533 = *(v0 + 656);
            v379 = swift_slowAlloc();
            v523 = swift_slowAlloc();
            v597[0] = v523;
            *v379 = 136315394;
            *(v379 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v597);
            *(v379 + 12) = 2080;
            v380 = Message.textFormatString()();
            v381 = *(v377 + 8);
            v381(v376, v378);
            v382 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v380._countAndFlagsBits, v380._object, v597);

            *(v379 + 14) = v382;
            _os_log_impl(&dword_1DC659000, v372, v373, "ExecutionOutput: %s: NFCU has prompt context %s", v379, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v523, -1, -1);
            MEMORY[0x1E12A2F50](v379, -1, -1);

            outlined consume of Data._Representation(v148, v150);
            v381(v533, v378);
          }

          else
          {

            outlined consume of Data._Representation(v148, v150);
            v383 = *(v377 + 8);
            v383(v376, v378);
            v383(v375, v378);
          }

LABEL_85:
          v384 = *(v0 + 592);
          v385 = *(v0 + 584);
          v386 = *(v0 + 576);
          v387 = *(v0 + 568);
          v388 = *(v0 + 560);
          v389 = *(v0 + 552);
          v390 = type metadata accessor for Parse.DirectInvocation();
          (*(*(v390 - 8) + 56))(v384, 1, 1, v390);
          v391 = type metadata accessor for PommesContext();
          (*(*(v391 - 8) + 56))(v385, 1, 1, v391);
          (*(v388 + 104))(v387, *MEMORY[0x1E69CFF08], v389);
          v392 = type metadata accessor for ExecutionContextUpdate();
          v393 = objc_allocWithZone(v392);
          outlined init with copy of ReferenceResolutionClientProtocol?(v385, v386, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v386, v537);
          *&v393[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
          *&v393[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v537;
          *&v393[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
          *&v393[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
          *&v393[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v384, &v393[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          *&v393[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v386, &v393[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          (*(v388 + 16))(&v393[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v387, v389);
          v394 = &v393[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
          *v394 = 0;
          v394[1] = 0;
          v393[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
          *(v0 + 176) = v393;
          *(v0 + 184) = v392;
          v303 = off_1E8646000;
          v395 = objc_msgSendSuper2((v0 + 176), sel_init);
          (*(v388 + 8))(v387, v389);
          outlined destroy of ReferenceResolutionClientProtocol?(v385, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v384, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v386, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          v305 = v584;
          *&v584[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v395;
          *&v584[OBJC_IVAR___SKRExecutionOutput_command] = 0;
LABEL_86:
          v544 = *(v0 + 1336);
          v396 = *(v0 + 1304);
          v397 = *(v0 + 1296);
          v496 = *(v0 + 1288);
          v398 = *(v0 + 1272);
          v488 = *(v0 + 1144);
          v399 = *(v0 + 1136);
          v480 = *(v0 + 1080);
          v400 = *(v0 + 1072);
          v401 = *(v0 + 1040);
          v524 = *(v0 + 1344);
          v534 = *(v0 + 1032);
          v402 = *(v0 + 528);
          v505 = *(v0 + 520);
          v514 = *(v0 + 544);
          v596 = *(v0 + 384);
          v403 = *(v0 + 360);
          v404 = *(v0 + 368);
          *(v0 + 160) = v305;
          *(v0 + 168) = v398;
          v405 = objc_msgSendSuper2((v0 + 160), v303[390]);
          outlined destroy of ReferenceResolutionClientProtocol?(v399, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
          v397(v400, v401);

          v397(v480, v401);
          outlined destroy of ReferenceResolutionClientProtocol?(v488, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
          v406 = swift_getObjectType();
          v407 = *(v404 + 32);
          v408 = v404;
          v56 = v596;
          v407(v405, v106, *(&v106 + 1), v406, v408);

          (*(v402 + 8))(v514, v505);
          outlined destroy of ConversationService.EagerResult(v534, type metadata accessor for ConversationCommitResult);

          v60 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
          goto LABEL_16;
        }

        v151 = *(v0 + 640);
        v152 = *(v0 + 632);
        v153 = *(v0 + 616);

        outlined consume of Data._Representation(v148, v150);
        (*(v151 + 56))(v153, 1, 1, v152);
        outlined destroy of ReferenceResolutionClientProtocol?(v153, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
      }

      v154 = *(v0 + 1280);
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v597[0] = v158;
        *v157 = 136315138;
        *(v157 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v597);
        _os_log_impl(&dword_1DC659000, v155, v156, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v157, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v158);
        MEMORY[0x1E12A2F50](v158, -1, -1);
        MEMORY[0x1E12A2F50](v157, -1, -1);
      }

      goto LABEL_85;
    }
  }

  else
  {

    v98 = *(v0 + 1336);
  }

  v183 = *(v0 + 1344);
  v184 = *(v0 + 544);
  v185 = *(v0 + 384);
  v186 = *(v183 + 112);
  v187 = *(v183 + 120);

  LOBYTE(v184) = PluginAction.preventCircularRedirect.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v597[0] = v98;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v184 & 1, v186, v187, isUniquelyReferenced_nonNull_native);

  *(v0 + 1512) = v597[0];
  v189 = v185[5];
  v190 = v185[6];
  __swift_project_boxed_opaque_existential_1(v185 + 2, v189);
  v191 = *(v190 + 24);
  v587 = (v191 + *v191);
  v192 = v191[1];
  v193 = swift_task_alloc();
  *(v0 + 1520) = v193;
  *v193 = v0;
  v193[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  v194 = *(v0 + 360);
  v195 = *(v0 + 368);
  v196 = *(v0 + 344);
  v197 = *(v0 + 352);
  v198 = *(v0 + 544);

  return v587(v198, v196, v197, v194, v195, v189, v190);
}

{
  v116 = v0;
  if (*(v0 + 1604) == 6)
  {
    v1 = *(v0 + 1408);
    v2 = *(v0 + 1400);
    v3 = *(v0 + 1280);
    v4 = *(v0 + 1184);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v114 = v8;
      *v7 = 136315138;
      v115 = 6;
      v9 = SelfReflectionAgentDecision.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v114);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DC659000, v5, v6, "[ConversationService] Falling back to IntelligenceFlow because Self Reflection's decision %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v12 = *(v0 + 1416);
    v13 = *(v0 + 1344);
    v14 = *(v0 + 1336);
    v15 = *(v0 + 1288);
    v16 = *(v0 + 1032);
    v17 = *(v0 + 976);
    v18 = *(v0 + 384);
    v19 = *(v0 + 360);
    v20 = *(v0 + 368);
    v21 = type metadata accessor for PrescribedTool();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    (*(v20 + 64))(v17, v12, v20);

    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
    outlined destroy of ConversationService.EagerResult(v16, type metadata accessor for ConversationCommitResult);

    v22 = *(v18 + 216);
    v23 = *(v0 + 1176);
    v24 = *(v0 + 1168);
    v25 = *(v0 + 1160);
    v26 = *(v0 + 1152);
    v52 = *(v0 + 1144);
    v53 = *(v0 + 1136);
    v54 = *(v0 + 1128);
    v55 = *(v0 + 1120);
    v56 = *(v0 + 1112);
    v57 = *(v0 + 1104);
    v58 = *(v0 + 1096);
    v59 = *(v0 + 1088);
    v60 = *(v0 + 1080);
    v61 = *(v0 + 1072);
    v62 = *(v0 + 1064);
    v63 = *(v0 + 1056);
    v64 = *(v0 + 1032);
    v65 = *(v0 + 1024);
    v67 = *(v0 + 1016);
    v69 = *(v0 + 1000);
    v71 = *(v0 + 976);
    v73 = *(v0 + 968);
    v75 = *(v0 + 960);
    v77 = *(v0 + 952);
    v79 = *(v0 + 928);
    v81 = *(v0 + 920);
    v83 = *(v0 + 912);
    v85 = *(v0 + 904);
    v87 = *(v0 + 896);
    v66 = *(v0 + 888);
    v68 = *(v0 + 864);
    v70 = *(v0 + 840);
    v72 = *(v0 + 816);
    v74 = *(v0 + 792);
    v76 = *(v0 + 784);
    v78 = *(v0 + 776);
    v80 = *(v0 + 768);
    v82 = *(v0 + 760);
    v84 = *(v0 + 752);
    v86 = *(v0 + 728);
    v88 = *(v0 + 704);
    v89 = *(v0 + 680);
    v90 = *(v0 + 672);
    v91 = *(v0 + 664);
    v92 = *(v0 + 656);
    v93 = *(v0 + 648);
    v94 = *(v0 + 624);
    v95 = *(v0 + 616);
    v96 = *(v0 + 608);
    v97 = *(v0 + 600);
    v98 = *(v0 + 592);
    v99 = *(v0 + 584);
    v100 = *(v0 + 576);
    v101 = *(v0 + 568);
    v102 = *(v0 + 544);
    v103 = *(v0 + 536);
    v104 = *(v0 + 512);
    v105 = *(v0 + 488);
    v106 = *(v0 + 464);
    v107 = *(v0 + 440);
    v27 = *(v0 + 384);
    v109 = *(v0 + 416);
    v111 = *(v0 + 392);
    v28 = *(*v22 + 208);

    v28(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v27);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 1408);
    v32 = *(v0 + 1400);
    v33 = *(v0 + 592);
    v108 = v33;
    v34 = *(v0 + 584);
    v35 = *(v0 + 576);
    v36 = *(v0 + 568);
    v37 = *(v0 + 560);
    v38 = *(v0 + 552);
    v112 = *(v0 + 384);
    v39 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v39 - 8) + 56))(v33, 1, 1, v39);
    v40 = type metadata accessor for PommesContext();
    v41 = v34;
    v110 = v34;
    (*(*(v40 - 8) + 56))(v34, 1, 1, v40);
    (*(v37 + 104))(v36, *MEMORY[0x1E69CFF08], v38);
    v42 = type metadata accessor for ExecutionContextUpdate();
    v43 = objc_allocWithZone(v42);
    outlined init with copy of ReferenceResolutionClientProtocol?(v41, v35, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);

    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v35, 0);
    *&v43[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v43[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = 0;
    *&v43[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v43[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = v32;
    *&v43[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = v31;
    outlined init with copy of ReferenceResolutionClientProtocol?(v108, &v43[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v43[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v35, &v43[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v37 + 16))(&v43[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v36, v38);
    v44 = &v43[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v44 = 0;
    v44[1] = 0;
    v43[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    *(v0 + 256) = v43;
    *(v0 + 264) = v42;
    *(v0 + 1544) = objc_msgSendSuper2((v0 + 256), sel_init);
    (*(v37 + 8))(v36, v38);
    outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v108, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v45 = *(**(v112 + 208) + 184);

    v45(v32, v31);

    v46 = *(v112 + 40);
    v47 = *(v112 + 48);
    __swift_project_boxed_opaque_existential_1((v112 + 16), v46);
    v48 = *(v47 + 32);
    v113 = (v48 + *v48);
    v49 = v48[1];
    v50 = swift_task_alloc();
    *(v0 + 1552) = v50;
    *v50 = v0;
    v50[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
    v51 = *(v0 + 1344);

    return v113(v51, v46, v47);
  }
}

{
  v1 = *(*v0 + 1552);
  v2 = *(*v0 + 1184);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v2, 0);
}

{
  v41 = v0;
  v38 = *(v0 + 1280);
  v39 = *(v0 + 1544);
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1240);
  v5 = *(v0 + 1584);
  v6 = *(v0 + 1232);
  v36 = *(v0 + 1208);
  v37 = *(v0 + 1272);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);
  v34 = v8;
  v35 = *(v0 + 1200);
  v9 = *(v0 + 1064);
  v10 = *(v0 + 1056);
  v11 = *(v0 + 1040);
  (*(v0 + 1224))(v7, 1, 1, *(v0 + 1216));
  v4(v9, v5, v11);
  v2(v10, v9, v11);
  outlined init with copy of ReferenceResolutionClientProtocol?(v7, v34, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v12 = objc_allocWithZone(v37);
  v13 = &v12[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v13 = v35;
  *(v13 + 1) = v36;
  v14 = &v12[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v12[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v12[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v17 = 0;
  *(v17 + 1) = 0;
  v2(&v12[OBJC_IVAR___SKRExecutionOutput_executionSource], v10, v11);
  outlined init with copy of ReferenceResolutionClientProtocol?(v34, &v12[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40 = v22;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v40);
    *(v20 + 12) = 2112;
    *(v20 + 14) = 0;
    *v21 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v20, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1E12A2F50](v22, -1, -1);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  v23 = *(v0 + 1304);
  v24 = *(v0 + 1296);
  v25 = *(v0 + 1272);
  v26 = *(v0 + 1128);
  v27 = *(v0 + 1120);
  v28 = *(v0 + 1064);
  v29 = *(v0 + 1056);
  v30 = *(v0 + 1040);
  *&v12[OBJC_IVAR___SKRExecutionOutput_command] = 0;
  *&v12[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v39;
  *(v0 + 272) = v12;
  *(v0 + 280) = v25;
  *(v0 + 1560) = objc_msgSendSuper2((v0 + 272), sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v24(v29, v30);
  v24(v28, v30);
  outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v31 = swift_task_alloc();
  *(v0 + 1568) = v31;
  *v31 = v0;
  v31[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  v32 = *(v0 + 1344);

  return RemoteConversationClient.isEmpty()();
}

{
  if (*(v0 + 1606))
  {
    v1 = *(v0 + 1280);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "[ConversationService] Conversation complete, removing from active conversations", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 1576) = v5;
    *v5 = v0;
    v5[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
    v6 = *(v0 + 1344);

    return RemoteConversationClient.isCorrectable()();
  }

  else
  {
    v8 = *(v0 + 1184);
    v9 = *(v0 + 384);

    if ((*(v9 + 104) & 0xC000000000000001) != 0)
    {

      __CocoaSet.count.getter();
    }

    v10 = *(v0 + 1560);
    v11 = *(v0 + 1344);
    v12 = *(v0 + 1336);
    v13 = *(v0 + 1288);
    v14 = *(v0 + 1032);
    v15 = *(v0 + 360);
    (*(*(v0 + 368) + 16))(v10, (*(v0 + 1606) & 1) == 0, *(v0 + 1416));

    outlined destroy of ConversationService.EagerResult(v14, type metadata accessor for ConversationCommitResult);

    v16 = *(v0 + 384);
    v80 = *(v0 + 392);
    v17 = *(v0 + 1176);
    v18 = *(v0 + 1168);
    v19 = *(v0 + 1160);
    v20 = *(v0 + 1152);
    v23 = *(v0 + 1144);
    v24 = *(v0 + 1136);
    v25 = *(v0 + 1128);
    v26 = *(v0 + 1120);
    v27 = *(v0 + 1112);
    v28 = *(v0 + 1104);
    v29 = *(v0 + 1096);
    v30 = *(v0 + 1088);
    v31 = *(v0 + 1080);
    v32 = *(v0 + 1072);
    v33 = *(v0 + 1064);
    v34 = *(v0 + 1056);
    v35 = *(v0 + 1032);
    v36 = *(v0 + 1024);
    v37 = *(v0 + 1016);
    v38 = *(v0 + 1000);
    v39 = *(v0 + 976);
    v40 = *(v0 + 968);
    v41 = *(v0 + 960);
    v42 = *(v0 + 952);
    v43 = *(v0 + 928);
    v44 = *(v0 + 920);
    v45 = *(v0 + 912);
    v46 = *(v0 + 904);
    v47 = *(v0 + 896);
    v48 = *(v0 + 888);
    v49 = *(v0 + 864);
    v50 = *(v0 + 840);
    v51 = *(v0 + 816);
    v52 = *(v0 + 792);
    v53 = *(v0 + 784);
    v54 = *(v0 + 776);
    v55 = *(v0 + 768);
    v56 = *(v0 + 760);
    v57 = *(v0 + 752);
    v58 = *(v0 + 728);
    v59 = *(v0 + 704);
    v60 = *(v0 + 680);
    v61 = *(v0 + 672);
    v62 = *(v0 + 664);
    v63 = *(v0 + 656);
    v64 = *(v0 + 648);
    v65 = *(v0 + 624);
    v66 = *(v0 + 616);
    v67 = *(v0 + 608);
    v68 = *(v0 + 600);
    v69 = *(v0 + 592);
    v70 = *(v0 + 584);
    v71 = *(v0 + 576);
    v72 = *(v0 + 568);
    v73 = *(v0 + 544);
    v74 = *(v0 + 536);
    v75 = *(v0 + 512);
    v76 = *(v0 + 488);
    v77 = *(v0 + 464);
    v78 = *(v0 + 440);
    v79 = *(v0 + 416);
    v21 = *(**(v16 + 216) + 208);

    v21(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v16);

    v22 = *(v0 + 8);

    return v22();
  }
}

{
  v1 = *(v0 + 384);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 1192) = v6;
  *v6 = v0;
  v6[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);

  return v8(v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1360);
  v9 = *v1;
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v4 = *(v2 + 1344);
    v5 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  else
  {
    v6 = *(v2 + 1352);
    v7 = *(v2 + 1344);

    v5 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), *(v0 + 1344), 0);
}

{
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1280);
  v12 = *(v0 + 360);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = swift_allocObject();
  *(v0 + 1376) = v5;
  *(v5 + 16) = v12;
  v6 = *(v4 + 8);
  swift_unknownObjectRetain();
  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 1384) = v8;
  *v8 = v0;
  v8[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  v9 = *(v0 + 1024);
  v10 = *(v0 + 1008);

  return v13(v9, &async function pointer to partial apply for closure #1 in RemoteConversationClient.commit(bridge:), v5, v10, v3, v4);
}

{
  v1 = *(*v0 + 1192);
  v2 = *(*v0 + 1184);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v2, 0);
}

{
  v56 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1104);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 384);
  v8 = *(v0 + 352);
  v54 = *(v0 + 336);
  swift_beginAccess();
  v9 = *(v7 + 280);
  *(v7 + 280) = 0;

  v10 = *v8;
  *(v0 + 1200) = *v8;
  v11 = v8[1];
  *(v0 + 1208) = v11;
  v12 = type metadata accessor for FlowOutputMessage.InAppResponse();
  *(v0 + 1216) = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  *(v0 + 1224) = v14;
  *(v0 + 1232) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v1, 1, 1, v12);
  *(v0 + 1584) = *MEMORY[0x1E69D0678];
  v15 = *(v5 + 104);
  *(v0 + 1240) = v15;
  *(v0 + 1248) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v15(v3);
  v16 = *(v5 + 16);
  *(v0 + 1256) = v16;
  *(v0 + 1264) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v4, v3, v6);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1, v2, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v17 = type metadata accessor for ExecutionOutput();
  *(v0 + 1272) = v17;
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v19 = v10;
  *(v19 + 1) = v11;
  v20 = &v18[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v18[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v18[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v18[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v23 = 0;
  *(v23 + 1) = 0;
  v16(&v18[OBJC_IVAR___SKRExecutionOutput_executionSource], v4, v6);
  outlined init with copy of ReferenceResolutionClientProtocol?(v2, &v18[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v24 = one-time initialization token for executor;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  *(v0 + 1280) = __swift_project_value_buffer(v25, static Logger.executor);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v55 = v30;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v55);
    *(v28 + 12) = 2112;
    *(v28 + 14) = 0;
    *v29 = 0;
    _os_log_impl(&dword_1DC659000, v26, v27, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v28, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1E12A2F50](v30, -1, -1);
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  v31 = *(v0 + 1176);
  v32 = *(v0 + 1168);
  v33 = *(v0 + 1112);
  v34 = *(v0 + 1104);
  v35 = *(v0 + 1048);
  v36 = *(v0 + 1040);
  v37 = *(v0 + 344);
  *&v18[OBJC_IVAR___SKRExecutionOutput_command] = 0;
  *&v18[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
  *(v0 + 112) = v18;
  *(v0 + 120) = v17;
  *(v0 + 1288) = objc_msgSendSuper2((v0 + 112), sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v38 = *(v35 + 8);
  *(v0 + 1296) = v38;
  *(v0 + 1304) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v34, v36);
  v38(v33, v36);
  outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v39 = v37 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId;
  *(v0 + 1312) = *(v37 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  *(v0 + 1320) = *(v39 + 8);
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v41 = MEMORY[0x1E69CFB58];
  *(v0 + 1588) = *MEMORY[0x1E69CFB50];
  *(v0 + 1592) = *v41;
  *(v0 + 1596) = *MEMORY[0x1E69CFA20];
  *(v0 + 1600) = *MEMORY[0x1E69CFB30];
  v42 = *(v0 + 1605);
  v43 = *(v0 + 336);
  *(v0 + 1344) = v43;
  *(v0 + 1336) = v40;
  *(v0 + 1328) = 1;
  v44 = *(v0 + 384);
  swift_beginAccess();
  v45 = *(v44 + 104);
  if ((v45 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v46 = __CocoaSet.count.getter();

      if (v46)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
        v47 = static _SetStorage.allocate(capacity:)();
      }

      else
      {
        v47 = MEMORY[0x1E69E7CD0];
      }

      *(*(v0 + 384) + 104) = v47;
    }
  }

  else if (*(v45 + 16))
  {
    v48 = *(v0 + 384);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v48 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMR);
    _NativeSet.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v48 + 104) = v55;
  }

  v50 = *(v0 + 384);

  specialized Set._Variant.insert(_:)(&v55, v43);
  swift_endAccess();

  if (v42)
  {
    v51 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
    v52 = v43;
  }

  else
  {
    v52 = *(v0 + 1344);
    v51 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  return MEMORY[0x1EEE6DFA0](v51, v52, 0);
}

{
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1280);
  v9 = *(v0 + 360);
  Logger.debugF(file:function:)();
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v4 = swift_allocObject();
  *(v0 + 1352) = v4;
  *(v4 + 16) = v9;
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 1360) = v7;
  *v7 = v0;
  v7[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);

  return v10();
}

{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1184);

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v2, 0);
}

{
  v1 = v0[171];
  v2 = v0[168];
  v3 = v0[167];
  v4 = v0[161];
  v5 = v0[148];
  v77 = v0[48];
  v7 = v0[45];
  v6 = v0[46];

  ObjectType = swift_getObjectType();
  _StringGuts.grow(_:)(32);

  v0[40] = v1;
  v9 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v10);

  (*(v6 + 32))(v4, 0xD00000000000001ELL, 0x80000001DCA81600, ObjectType, v6);

  v11 = *(v77 + 216);
  v12 = v0[147];
  v13 = v0[146];
  v14 = v0[145];
  v15 = v0[144];
  v20 = v0[143];
  v21 = v0[142];
  v22 = v0[141];
  v23 = v0[140];
  v24 = v0[139];
  v25 = v0[138];
  v26 = v0[137];
  v27 = v0[136];
  v28 = v0[135];
  v29 = v0[134];
  v30 = v0[133];
  v31 = v0[132];
  v32 = v0[129];
  v33 = v0[128];
  v35 = v0[127];
  v37 = v0[125];
  v39 = v0[122];
  v41 = v0[121];
  v43 = v0[120];
  v45 = v0[119];
  v47 = v0[116];
  v49 = v0[115];
  v51 = v0[114];
  v53 = v0[113];
  v55 = v0[112];
  v34 = v0[111];
  v36 = v0[108];
  v38 = v0[105];
  v40 = v0[102];
  v42 = v0[99];
  v44 = v0[98];
  v46 = v0[97];
  v48 = v0[96];
  v50 = v0[95];
  v52 = v0[94];
  v54 = v0[91];
  v56 = v0[88];
  v57 = v0[85];
  v58 = v0[84];
  v59 = v0[83];
  v60 = v0[82];
  v61 = v0[81];
  v62 = v0[78];
  v63 = v0[77];
  v64 = v0[76];
  v65 = v0[75];
  v66 = v0[74];
  v67 = v0[73];
  v68 = v0[72];
  v69 = v0[71];
  v70 = v0[68];
  v71 = v0[67];
  v72 = v0[64];
  v73 = v0[61];
  v74 = v0[58];
  v75 = v0[55];
  v16 = v0[48];
  v76 = v0[52];
  v78 = v0[49];
  v17 = *(*v11 + 208);

  v17(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v16);

  v18 = v0[1];

  return v18();
}

{
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1184);

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v2, 0);
}

{
  v106 = v0;
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 984);

  *(v0 + 288) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 1280);
    (*(*(v0 + 992) + 8))(*(v0 + 1000), *(v0 + 984));
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "Conversation was cancelled during commit. Will not call bridge.close()", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    v10 = *(v0 + 1392);
    v11 = *(v0 + 1344);
    v12 = *(v0 + 1336);
    v13 = *(v0 + 384);

    v14 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
  }

  else
  {
    v15 = *(v0 + 1392);
    v16 = *(v0 + 1280);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 1392);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v104 = v22;
      *v21 = 136315138;
      *(v0 + 304) = v20;
      v23 = v20;
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v104);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1DC659000, v18, v19, "Error commiting conversation: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v27 = *(v0 + 1392);
    v28 = *(v0 + 1344);
    v29 = *(v0 + 1336);
    v30 = *(v0 + 1288);
    v13 = *(v0 + 384);
    v32 = *(v0 + 360);
    v31 = *(v0 + 368);
    ObjectType = swift_getObjectType();
    v104 = 0;
    v105 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v104 = 0xD00000000000001FLL;
    v105 = 0x80000001DCA814C0;
    *(v0 + 296) = v27;
    v33 = v27;
    v34 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v34);

    (*(v31 + 32))(v30, v104, v105, ObjectType, v31);

    v14 = &async function pointer to partial apply for closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  v46 = v14;

  v35 = *(v13 + 216);
  v36 = *(v0 + 1176);
  v37 = *(v0 + 1168);
  v38 = *(v0 + 1160);
  v39 = *(v0 + 1152);
  v44 = *(v0 + 1144);
  v45 = *(v0 + 1136);
  v47 = *(v0 + 1128);
  v48 = *(v0 + 1120);
  v49 = *(v0 + 1112);
  v50 = *(v0 + 1104);
  v51 = *(v0 + 1096);
  v52 = *(v0 + 1088);
  v53 = *(v0 + 1080);
  v54 = *(v0 + 1072);
  v55 = *(v0 + 1064);
  v56 = *(v0 + 1056);
  v57 = *(v0 + 1032);
  v58 = *(v0 + 1024);
  v60 = *(v0 + 1016);
  v62 = *(v0 + 1000);
  v64 = *(v0 + 976);
  v66 = *(v0 + 968);
  v68 = *(v0 + 960);
  v70 = *(v0 + 952);
  v72 = *(v0 + 928);
  v74 = *(v0 + 920);
  v76 = *(v0 + 912);
  v78 = *(v0 + 904);
  v80 = *(v0 + 896);
  v59 = *(v0 + 888);
  v61 = *(v0 + 864);
  v63 = *(v0 + 840);
  v65 = *(v0 + 816);
  v67 = *(v0 + 792);
  v69 = *(v0 + 784);
  v71 = *(v0 + 776);
  v73 = *(v0 + 768);
  v75 = *(v0 + 760);
  v77 = *(v0 + 752);
  v79 = *(v0 + 728);
  v81 = *(v0 + 704);
  v82 = *(v0 + 680);
  v83 = *(v0 + 672);
  v84 = *(v0 + 664);
  v85 = *(v0 + 656);
  v86 = *(v0 + 648);
  v87 = *(v0 + 624);
  v88 = *(v0 + 616);
  v89 = *(v0 + 608);
  v90 = *(v0 + 600);
  v91 = *(v0 + 592);
  v92 = *(v0 + 584);
  v93 = *(v0 + 576);
  v94 = *(v0 + 568);
  v95 = *(v0 + 544);
  v96 = *(v0 + 536);
  v97 = *(v0 + 512);
  v98 = *(v0 + 488);
  v99 = *(v0 + 464);
  v100 = *(v0 + 440);
  v40 = *(v0 + 384);
  v101 = *(v0 + 416);
  v103 = *(v0 + 392);
  v41 = *(*v35 + 208);

  v41(0xD00000000000005BLL, 0x80000001DCA814E0, v46, v40);

  v42 = *(v0 + 8);

  return v42();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1488);
  v4 = *v1;
  *(*v1 + 1496) = v0;

  v5 = *(v2 + 1480);
  v6 = *(v2 + 1184);

  if (v0)
  {
    v7 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  else
  {
    v7 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v343 = v0;
  v1 = *(v0 + 680);
  if ((*(*(v0 + 696) + 48))(v1, 1, *(v0 + 688)) == 1)
  {
    v2 = *(v0 + 1456);
    v3 = *(v0 + 1448);
    v4 = *(v0 + 1440);
    v5 = *(v0 + 1184);
    v6 = *(v0 + 376);

    outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
    goto LABEL_24;
  }

  v7 = *(v0 + 704);
  outlined init with take of DecisionEngineResponse(v1, v7, type metadata accessor for DecisionEngineResponse);
  v8 = *v7;
  if (!*v7)
  {
    v117 = *(v0 + 1456);
    v118 = *(v0 + 1448);
    v119 = *(v0 + 1440);
    v120 = *(v0 + 1184);
    v121 = *(v0 + 376);
    outlined destroy of ConversationService.EagerResult(*(v0 + 704), type metadata accessor for DecisionEngineResponse);

LABEL_24:
    v122 = *(v0 + 1280);
    v123 = *(v0 + 376);

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = *(v0 + 376);
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v341[0] = v128;
      *v127 = 136315138;
      *(v0 + 312) = v126;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputCSgMd, &_s14SiriKitRuntime21ConversationUserInputCSgMR);
      v129 = String.init<A>(describing:)();
      v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, v341);

      *(v127 + 4) = v131;
      _os_log_impl(&dword_1DC659000, v124, v125, "[ConversationService] Conversation wanted to fall back to Siri X, but could not find a plugin to handle it. Will fall back to server. ConversationUserInput: %s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v128);
      MEMORY[0x1E12A2F50](v128, -1, -1);
      MEMORY[0x1E12A2F50](v127, -1, -1);
    }

    v132 = *(v0 + 376);
    v133 = *(v0 + 352);
    v336 = *(v133 + 24);
    v339 = *(v133 + 16);
    if (v132)
    {
      v134 = *(*(v132 + 56) + 16);
      v135 = *(v134 + 16);
      v136 = type metadata accessor for Siri_Nlu_External_UserParse();
      v137 = *(v136 - 8);
      if (v135)
      {
        (*(*(v136 - 8) + 16))(*(v0 + 920), v134 + ((*(*(v136 - 8) + 80) + 32) & ~*(*(v136 - 8) + 80)), v136);
        v138 = 0;
LABEL_31:
        v282 = *(v0 + 1312);
        v296 = *(v0 + 1288);
        v301 = *(v0 + 1344);
        v286 = *(v0 + 1208);
        v291 = *(v0 + 1320);
        v330 = *(v0 + 1032);
        v333 = *(v0 + 1336);
        v139 = *(v0 + 944);
        v318 = *(v0 + 936);
        v325 = *(v0 + 960);
        v140 = *(v0 + 920);
        v141 = *(v0 + 904);
        v142 = *(v0 + 880);
        v307 = *(v0 + 872);
        v312 = *(v0 + 888);
        v274 = *(v0 + 384);
        v278 = *(v0 + 1200);
        v144 = *(v0 + 360);
        v143 = *(v0 + 368);
        (*(v137 + 56))(v140, v138, 1, v136);
        v145 = *MEMORY[0x1E69D0780];
        v146 = type metadata accessor for ServerFallbackReason();
        v147 = *(v146 - 8);
        (*(v147 + 104))(v141, v145, v146);
        (*(v147 + 56))(v141, 0, 1, v146);
        ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v144, v143, v282, v291, v278, v286, v339, v336, 0, v140, v141);

        outlined destroy of ReferenceResolutionClientProtocol?(v141, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v140, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
        (*(v142 + 8))(v312, v307);
        (*(v139 + 8))(v325, v318);
        outlined destroy of ConversationService.EagerResult(v330, type metadata accessor for ConversationCommitResult);

        v148 = v274 + 216;
        v149 = *(v0 + 384);
        v150 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
LABEL_32:
        v151 = *(v0 + 1176);
        v152 = *(v0 + 1168);
        v153 = *(v0 + 1160);
        v154 = *(v0 + 1152);
        v215 = *(v0 + 1144);
        v216 = v150;
        v217 = *(v0 + 1136);
        v218 = *(v0 + 1128);
        v219 = *(v0 + 1120);
        v220 = *(v0 + 1112);
        v221 = *(v0 + 1104);
        v222 = *(v0 + 1096);
        v223 = *(v0 + 1088);
        v224 = *(v0 + 1080);
        v225 = *(v0 + 1072);
        v226 = *(v0 + 1064);
        v227 = *(v0 + 1056);
        v228 = *(v0 + 1032);
        v230 = *(v0 + 1024);
        v232 = *(v0 + 1016);
        v234 = *(v0 + 1000);
        v236 = *(v0 + 976);
        v238 = *(v0 + 968);
        v240 = *(v0 + 960);
        v242 = *(v0 + 952);
        v244 = *(v0 + 928);
        v246 = *(v0 + 920);
        v248 = *(v0 + 912);
        v251 = *(v0 + 904);
        v255 = *(v0 + 896);
        v229 = *(v0 + 888);
        v231 = *(v0 + 864);
        v233 = *(v0 + 840);
        v235 = *(v0 + 816);
        v237 = *(v0 + 792);
        v239 = *(v0 + 784);
        v241 = *(v0 + 776);
        v243 = *(v0 + 768);
        v245 = *(v0 + 760);
        v247 = *(v0 + 752);
        v250 = *(v0 + 728);
        v253 = *(v0 + 704);
        v257 = *(v0 + 680);
        v259 = *(v0 + 672);
        v262 = *(v0 + 664);
        v265 = *(v0 + 656);
        v268 = *(v0 + 648);
        v271 = *(v0 + 624);
        v275 = *(v0 + 616);
        v279 = *(v0 + 608);
        v283 = *(v0 + 600);
        v287 = *(v0 + 592);
        v292 = *(v0 + 584);
        v297 = *(v0 + 576);
        v302 = *(v0 + 568);
        v308 = *(v0 + 544);
        v313 = *(v0 + 536);
        v319 = *(v0 + 512);
        v326 = *(v0 + 488);
        v331 = *(v0 + 464);
        v334 = *(v0 + 440);
        v155 = *(v0 + 384);
        v337 = *(v0 + 416);
        v340 = *(v0 + 392);
        v156 = *(**v148 + 208);

        v156(0xD00000000000005BLL, 0x80000001DCA814E0, v216, v155);

        v157 = *(v0 + 8);

        return v157();
      }
    }

    else
    {
      v136 = type metadata accessor for Siri_Nlu_External_UserParse();
      v137 = *(v136 - 8);
    }

    v138 = 1;
    goto LABEL_31;
  }

  v9 = *(v0 + 1344);
  v10 = *(v0 + 1280);
  v11 = *v7;
  swift_retain_n();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 1344);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v341[0] = v16;
    *v15 = 136315394;
    v17 = *(v14 + 112);
    v18 = *(v14 + 120);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v341);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = *(v8 + 112);
    v21 = *(v8 + 120);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v341);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1DC659000, v12, v13, "[ConversationService] Attempts to fall back to Siri X because .unhandled(reason: .needsSiriXFallback) from: %s to %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v23 = *(v0 + 1336);
  v338 = v8;
  if (*(v23 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(*(v8 + 112), *(v8 + 120));
    v23 = *(v0 + 1336);
    if ((v25 & 1) != 0 && *(*(v23 + 56) + v24) == 1)
    {
      v26 = *(v0 + 1344);
      v27 = *(v0 + 1280);
      v28 = *(v0 + 1184);

      v341[0] = 0;
      v341[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v341[0] = 0xD00000000000001ALL;
      v341[1] = 0x80000001DCA81540;
      v29 = *(v26 + 112);
      v30 = *(v26 + 120);

      MEMORY[0x1E12A1580](v29, v30);

      MEMORY[0x1E12A1580](0x6F74206B63616220, 0xE900000000000020);
      v31 = *(v8 + 112);
      v32 = *(v8 + 120);

      MEMORY[0x1E12A1580](v31, v32);

      v33 = *v341;

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v341[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, *(&v33 + 1), v341);
        _os_log_impl(&dword_1DC659000, v34, v35, "[ConversationService] %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x1E12A2F50](v37, -1, -1);
        MEMORY[0x1E12A2F50](v36, -1, -1);
      }

      v38 = *(v0 + 1472);
      v39 = *(v0 + 1464);
      v316 = *(v0 + 1264);
      v322 = *(v0 + 1272);
      v310 = *(v0 + 1256);
      v294 = *(v0 + 1240);
      v299 = *(v0 + 1248);
      v289 = *(v0 + 1584);
      v277 = *(v0 + 1224);
      v281 = *(v0 + 1232);
      v273 = *(v0 + 1216);
      v40 = *(v0 + 1200);
      v261 = *(v0 + 1208);
      v264 = *(v0 + 1160);
      v305 = *(v0 + 1152);
      v267 = *(v0 + 1096);
      v285 = *(v0 + 1088);
      v270 = *(v0 + 1040);
      v41 = *(v0 + 728);
      v42 = *(v0 + 712);
      v43 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
      UUID.init()();
      v44 = UUID.uuidString.getter();
      v46 = v45;
      v39(v41, v42);
      v47 = MEMORY[0x1E12A1410](v44, v46);

      [v43 setAceId_];

      [v43 setErrorCode_];
      v48 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA81560);
      [v43 setReason_];

      v49 = v43;
      v50 = MEMORY[0x1E12A1410](v40, v261);
      [v49 setRefId_];

      v277(v264, 1, 1, v273);
      v294(v267, v289, v270);
      v310(v285, v267, v270);
      outlined init with copy of ReferenceResolutionClientProtocol?(v264, v305, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v51 = objc_allocWithZone(v322);
      v52 = &v51[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
      *v52 = v40;
      *(v52 + 1) = v261;
      v53 = v49;
      v54 = &v51[OBJC_IVAR___SKRExecutionOutput_fullPrint];
      *v54 = 0;
      *(v54 + 1) = 0;
      v55 = &v51[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
      *v55 = 0;
      *(v55 + 1) = 0;
      v56 = &v51[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
      *v56 = 0;
      *(v56 + 1) = 0;
      v57 = &v51[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
      *v57 = 0;
      *(v57 + 1) = 0;
      v310(&v51[OBJC_IVAR___SKRExecutionOutput_executionSource], v285, v270);
      outlined init with copy of ReferenceResolutionClientProtocol?(v305, &v51[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      objc_opt_self();
      v58 = swift_dynamicCastObjCClass();
      v59 = *(v0 + 1280);
      v60 = *(v0 + 1208);
      v328 = v53;
      if (!v58)
      {

        v179 = v53;
        v180 = Logger.logObject.getter();
        v181 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v184 = v51;
          v185 = swift_slowAlloc();
          v341[0] = v185;
          *v182 = 136315394;
          *(v182 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v341);
          *(v182 + 12) = 2112;
          *(v182 + 14) = v179;
          *v183 = v53;
          v186 = v179;
          _os_log_impl(&dword_1DC659000, v180, v181, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v182, 0x16u);
          outlined destroy of ReferenceResolutionClientProtocol?(v183, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1E12A2F50](v183, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v185);
          v187 = v185;
          v51 = v184;
          MEMORY[0x1E12A2F50](v187, -1, -1);
          MEMORY[0x1E12A2F50](v182, -1, -1);
        }

        *&v51[OBJC_IVAR___SKRExecutionOutput_command] = v53;
        *&v51[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
        v188 = v179;
        goto LABEL_54;
      }

      v61 = v58;
      v62 = v53;

      v63 = v62;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();

      v249 = v51;
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v341[0] = v68;
        *v66 = 136315394;
        *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v341);
        *(v66 + 12) = 2112;
        *(v66 + 14) = v61;
        *v67 = v61;
        v69 = v63;
        _os_log_impl(&dword_1DC659000, v64, v65, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v66, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v67, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v67, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x1E12A2F50](v68, -1, -1);
        MEMORY[0x1E12A2F50](v66, -1, -1);
      }

      v70 = [v61 promptContextProto];
      v323 = v61;
      if (v70)
      {
        v71 = *(v0 + 1496);
        v72 = *(v0 + 632);
        v73 = *(v0 + 624);
        v74 = *(v0 + 608);
        v75 = v70;
        v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        v342 = 0;
        memset(v341, 0, sizeof(v341));
        outlined copy of Data._Representation(v76, v78);
        BinaryDecodingOptions.init()();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, 255, MEMORY[0x1E69D1500]);
        Message.init(serializedData:extensions:partial:options:)();
        if (!v71)
        {
          v198 = *(v0 + 1280);
          v199 = *(v0 + 672);
          v200 = *(v0 + 664);
          v201 = *(v0 + 640);
          v202 = *(v0 + 632);
          v203 = *(v0 + 624);
          (*(v201 + 56))(v203, 0, 1, v202);
          (*(v201 + 32))(v199, v203, v202);
          (*(v201 + 16))(v200, v199, v202);
          v204 = Logger.logObject.getter();
          v205 = static os_log_type_t.debug.getter();
          v206 = os_log_type_enabled(v204, v205);
          v321 = *(v0 + 672);
          v207 = *(v0 + 664);
          v208 = *(v0 + 640);
          v209 = *(v0 + 632);
          if (v206)
          {
            v304 = v205;
            v210 = swift_slowAlloc();
            v315 = swift_slowAlloc();
            v341[0] = v315;
            *v210 = 136315394;
            *(v210 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v341);
            *(v210 + 12) = 2080;
            v211 = Message.textFormatString()();
            v212 = *(v208 + 8);
            v212(v207, v209);
            v213 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v211._countAndFlagsBits, v211._object, v341);

            *(v210 + 14) = v213;
            _os_log_impl(&dword_1DC659000, v204, v304, "ExecutionOutput: %s: NFCU has prompt context %s", v210, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v315, -1, -1);
            MEMORY[0x1E12A2F50](v210, -1, -1);

            outlined consume of Data._Representation(v76, v78);
            v212(v321, v209);
          }

          else
          {

            outlined consume of Data._Representation(v76, v78);
            v214 = *(v208 + 8);
            v214(v207, v209);
            v214(v321, v209);
          }

LABEL_20:
          v87 = *(v0 + 592);
          v88 = *(v0 + 584);
          v89 = *(v0 + 576);
          v90 = *(v0 + 568);
          v91 = *(v0 + 560);
          v92 = *(v0 + 552);
          v93 = type metadata accessor for Parse.DirectInvocation();
          (*(*(v93 - 8) + 56))(v87, 1, 1, v93);
          v94 = type metadata accessor for PommesContext();
          (*(*(v94 - 8) + 56))(v88, 1, 1, v94);
          (*(v91 + 104))(v90, *MEMORY[0x1E69CFF08], v92);
          v95 = type metadata accessor for ExecutionContextUpdate();
          v96 = objc_allocWithZone(v95);
          outlined init with copy of ReferenceResolutionClientProtocol?(v88, v89, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v89, v323);
          *&v96[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
          *&v96[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v323;
          *&v96[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
          *&v96[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
          *&v96[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v87, &v96[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          *&v96[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v89, &v96[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          (*(v91 + 16))(&v96[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v90, v92);
          v97 = &v96[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
          *v97 = 0;
          v97[1] = 0;
          v96[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
          *(v0 + 240) = v96;
          *(v0 + 248) = v95;
          v98 = objc_msgSendSuper2((v0 + 240), sel_init);
          (*(v91 + 8))(v90, v92);
          outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          v51 = v249;
          *&v249[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v98;
          *&v249[OBJC_IVAR___SKRExecutionOutput_command] = 0;
LABEL_54:
          v266 = *(v0 + 1456);
          v276 = *(v0 + 1448);
          v269 = *(v0 + 1440);
          v260 = *(v0 + 1432);
          v284 = *(v0 + 1344);
          v327 = *(v0 + 1336);
          v189 = *(v0 + 1304);
          v190 = *(v0 + 1296);
          v263 = *(v0 + 1288);
          v191 = *(v0 + 1272);
          v256 = *(v0 + 1160);
          v192 = *(v0 + 1152);
          v252 = *(v0 + 1096);
          v193 = *(v0 + 1088);
          v194 = *(v0 + 1040);
          v298 = *(v0 + 944);
          v303 = *(v0 + 936);
          v309 = *(v0 + 960);
          v280 = *(v0 + 880);
          v288 = *(v0 + 872);
          v293 = *(v0 + 888);
          v272 = *(v0 + 704);
          v314 = *(v0 + 384);
          v320 = *(v0 + 1032);
          v258 = *(v0 + 376);
          v195 = *(v0 + 368);
          v254 = *(v0 + 360);
          *(v0 + 224) = v51;
          *(v0 + 232) = v191;
          v196 = objc_msgSendSuper2((v0 + 224), sel_init);
          outlined destroy of ReferenceResolutionClientProtocol?(v192, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
          v190(v193, v194);

          v190(v252, v194);
          outlined destroy of ReferenceResolutionClientProtocol?(v256, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
          (*(v195 + 32))(v196, v33, *(&v33 + 1), v260, v195);

          outlined destroy of ConversationService.EagerResult(v272, type metadata accessor for DecisionEngineResponse);
          (*(v280 + 8))(v293, v288);
          (*(v298 + 8))(v309, v303);
          outlined destroy of ConversationService.EagerResult(v320, type metadata accessor for ConversationCommitResult);

          v148 = v314 + 216;
          v197 = *(v0 + 384);
          v150 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
          goto LABEL_32;
        }

        v79 = *(v0 + 640);
        v80 = *(v0 + 632);
        v81 = *(v0 + 624);

        outlined consume of Data._Representation(v76, v78);
        (*(v79 + 56))(v81, 1, 1, v80);
        outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
      }

      v82 = *(v0 + 1280);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v341[0] = v86;
        *v85 = 136315138;
        *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v341);
        _os_log_impl(&dword_1DC659000, v83, v84, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        MEMORY[0x1E12A2F50](v86, -1, -1);
        MEMORY[0x1E12A2F50](v85, -1, -1);
      }

      goto LABEL_20;
    }
  }

  v99 = *(v0 + 1344);
  v100 = *(v0 + 1280);
  v101 = *(v99 + 112);
  v102 = *(v99 + 120);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v341[0] = v23;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v101, v102, isUniquelyReferenced_nonNull_native);

  v335 = v341[0];

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();

  v106 = os_log_type_enabled(v104, v105);
  v107 = v8;
  v108 = *(v0 + 1456);
  v300 = *(v0 + 1440);
  v306 = *(v0 + 1448);
  v109 = *(v0 + 1032);
  v110 = *(v0 + 960);
  v111 = *(v0 + 944);
  v329 = *(v0 + 888);
  v332 = *(v0 + 936);
  v112 = *(v0 + 880);
  v324 = *(v0 + 872);
  v311 = *(v0 + 1344);
  v317 = *(v0 + 704);
  v295 = *(v0 + 376);
  if (v106)
  {
    v113 = swift_slowAlloc();
    v290 = v110;
    v114 = swift_slowAlloc();
    v341[0] = v114;
    *v113 = 136315138;
    *(v0 + 208) = 0;
    *(v0 + 216) = 0xE000000000000000;

    _StringGuts.grow(_:)(17);
    v115 = *(v0 + 216);

    strcpy((v0 + 192), "FlowExtension(");
    *(v0 + 207) = -18;
    MEMORY[0x1E12A1580](*(v107 + 112), *(v107 + 120));
    MEMORY[0x1E12A1580](41, 0xE100000000000000);

    v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 192), *(v0 + 200), v341);

    *(v113 + 4) = v116;
    _os_log_impl(&dword_1DC659000, v104, v105, "[ConversationService] Falling back to Siri X because Flow returned .unhandled(reason: .needsSiriXFallback) Conversation: %s", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    MEMORY[0x1E12A2F50](v114, -1, -1);
    MEMORY[0x1E12A2F50](v113, -1, -1);

    outlined destroy of ConversationService.EagerResult(v317, type metadata accessor for DecisionEngineResponse);
    (*(v112 + 8))(v329, v324);
    (*(v111 + 8))(v290, v332);
  }

  else
  {

    outlined destroy of ConversationService.EagerResult(v317, type metadata accessor for DecisionEngineResponse);
    (*(v112 + 8))(v329, v324);
    (*(v111 + 8))(v110, v332);
  }

  outlined destroy of ConversationService.EagerResult(v109, type metadata accessor for ConversationCommitResult);
  v159 = *(v0 + 1328) + 1;
  if (*(v0 + 1328) == 10)
  {
    v160 = *(v0 + 1280);
    v161 = *(v0 + 1184);

    v341[0] = 0;
    v341[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1E12A1580](0xD000000000000030, 0x80000001DCA81620);
    *(v0 + 328) = 10;
    v162 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v162);

    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA81660);
    v163 = *v341;

    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v341[0] = v167;
      *v166 = 136315138;
      *(v166 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, *(&v163 + 1), v341);
      _os_log_impl(&dword_1DC659000, v164, v165, "[ConversationService] %s", v166, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v167);
      MEMORY[0x1E12A2F50](v167, -1, -1);
      MEMORY[0x1E12A2F50](v166, -1, -1);
    }

    v168 = *(v0 + 1288);
    v169 = *(v0 + 360);
    v170 = *(v0 + 368);
    ObjectType = swift_getObjectType();
    (*(v170 + 32))(v168, v163, *(&v163 + 1), ObjectType, v170);

    v148 = *(v0 + 384) + 216;
    v150 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
    goto LABEL_32;
  }

  *(v0 + 1344) = v338;
  *(v0 + 1336) = v335;
  *(v0 + 1328) = v159;
  v172 = *(v0 + 384);
  swift_beginAccess();
  v173 = *(v172 + 104);
  if ((v173 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v174 = __CocoaSet.count.getter();

      if (v174)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
        v175 = static _SetStorage.allocate(capacity:)();
      }

      else
      {
        v175 = MEMORY[0x1E69E7CD0];
      }

      *(*(v0 + 384) + 104) = v175;
    }
  }

  else if (*(v173 + 16))
  {
    v176 = *(v0 + 384);
    v177 = swift_isUniquelyReferenced_nonNull_native();
    v341[0] = *(v176 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMR);
    _NativeSet.removeAll(isUnique:)(v177);
    *(v176 + 104) = v341[0];
  }

  v178 = *(v0 + 384);

  specialized Set._Variant.insert(_:)(v341, v338);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v338, 0);
}

{
  v160 = v0;
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1280);
  if (!v1)
  {
    v19 = *(v0 + 1184);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "[ConversationService] Conversation wanted to redirect via a PluginAction, but could not find a plugin to handle it. Will fall back to server.", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    v23 = *(v0 + 544);
    v24 = *(v0 + 512);
    v26 = *(v0 + 456);
    v25 = *(v0 + 464);
    v27 = *(v0 + 448);
    v28 = *(v0 + 352);

    v154 = *(v28 + 24);
    v156 = *(v28 + 16);
    PluginAction.input.getter();
    Input.parse.getter();
    if ((*(v26 + 88))(v25, v27) == *MEMORY[0x1E69D0168])
    {
      v29 = *(v0 + 912);
      v30 = (v0 + 488);
      v31 = (v0 + 480);
      v33 = *(v0 + 480);
      v32 = *(v0 + 488);
      v34 = (v0 + 472);
      v36 = *(v0 + 464);
      v35 = *(v0 + 472);
      (*(*(v0 + 456) + 96))(v36, *(v0 + 448));
      (*(v33 + 32))(v32, v36, v35);
      USOParse.userParse.getter();
      v37 = 0;
    }

    else
    {
      v30 = (v0 + 464);
      v31 = (v0 + 456);
      v34 = (v0 + 448);
      v37 = 1;
    }

    v59 = *v30;
    v60 = *v34;
    v61 = *v31;
    v149 = *(v0 + 1504);
    v151 = *(v0 + 1512);
    v131 = *(v0 + 1312);
    v137 = *(v0 + 1288);
    v139 = *(v0 + 1344);
    v133 = *(v0 + 1208);
    v135 = *(v0 + 1320);
    v129 = *(v0 + 1200);
    v62 = *(v0 + 912);
    v63 = *(v0 + 904);
    v145 = *(v0 + 544);
    v147 = *(v0 + 1032);
    v65 = *(v0 + 504);
    v64 = *(v0 + 512);
    v66 = *(v0 + 496);
    v53 = *(v0 + 384);
    v68 = *(v0 + 360);
    v67 = *(v0 + 368);
    v141 = *(v0 + 528) + 8;
    v143 = *(v0 + 520);
    (*(v61 + 8))(v59, v60);
    v69 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v69 - 8) + 56))(v62, v37, 1, v69);
    (*(v65 + 8))(v64, v66);
    v70 = *MEMORY[0x1E69D0780];
    v71 = type metadata accessor for ServerFallbackReason();
    v72 = *(v71 - 8);
    (*(v72 + 104))(v63, v70, v71);
    (*(v72 + 56))(v63, 0, 1, v71);
    ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v68, v67, v131, v135, v129, v133, v156, v154, 0, v62, v63);

    outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    v149(v145, v143);
    outlined destroy of ConversationService.EagerResult(v147, type metadata accessor for ConversationCommitResult);

    v73 = *(v0 + 384);
    v54 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
    goto LABEL_19;
  }

  v3 = *(v0 + 1528);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1504);
  v8 = *(v0 + 1344);
  v9 = *(v0 + 1032);
  v10 = *(v0 + 544);
  v11 = *(v0 + 520);
  v12 = *(v0 + 528) + 8;
  if (v6)
  {
    v13 = swift_slowAlloc();
    v153 = v7;
    v14 = swift_slowAlloc();
    v158 = v14;
    *v13 = 136315138;
    *(v0 + 144) = 0;
    *(v0 + 152) = 0xE000000000000000;

    _StringGuts.grow(_:)(17);
    v15 = *(v0 + 152);

    strcpy((v0 + 128), "FlowExtension(");
    *(v0 + 143) = -18;
    MEMORY[0x1E12A1580](*(v1 + 112), *(v1 + 120));
    MEMORY[0x1E12A1580](41, 0xE100000000000000);

    v16 = v11;
    v17 = v10;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 128), *(v0 + 136), &v158);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DC659000, v4, v5, "[ConversationService] Discovered a Conversation which can handle the redirected PluginAction: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);

    v153(v17, v16);
  }

  else
  {

    v7(v10, v11);
  }

  outlined destroy of ConversationService.EagerResult(v9, type metadata accessor for ConversationCommitResult);
  v38 = *(v0 + 1512);
  v39 = *(v0 + 1328) + 1;
  if (*(v0 + 1328) == 10)
  {
    v40 = *(v0 + 1280);
    v41 = *(v0 + 1184);

    v158 = 0;
    v159 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1E12A1580](0xD000000000000030, 0x80000001DCA81620);
    *(v0 + 328) = 10;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v42);

    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA81660);
    v44 = v158;
    v43 = v159;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v158 = v48;
      *v47 = 136315138;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, &v158);
      _os_log_impl(&dword_1DC659000, v45, v46, "[ConversationService] %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1E12A2F50](v48, -1, -1);
      MEMORY[0x1E12A2F50](v47, -1, -1);
    }

    v49 = *(v0 + 1288);
    v50 = *(v0 + 360);
    v51 = *(v0 + 368);
    ObjectType = swift_getObjectType();
    (*(v51 + 32))(v49, v44, v43, ObjectType, v51);

    v53 = *(v0 + 384);
    v54 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
LABEL_19:
    v74 = *(v0 + 1176);
    v75 = *(v0 + 1168);
    v76 = *(v0 + 1160);
    v84 = *(v0 + 1152);
    v85 = *(v0 + 1144);
    v86 = *(v0 + 1136);
    v87 = *(v0 + 1128);
    v88 = *(v0 + 1120);
    v89 = *(v0 + 1112);
    v90 = *(v0 + 1104);
    v91 = *(v0 + 1096);
    v92 = *(v0 + 1088);
    v93 = *(v0 + 1080);
    v94 = *(v0 + 1072);
    v95 = *(v0 + 1064);
    v96 = *(v0 + 1056);
    v97 = *(v0 + 1032);
    v99 = *(v0 + 1024);
    v101 = *(v0 + 1016);
    v103 = *(v0 + 1000);
    v105 = *(v0 + 976);
    v107 = *(v0 + 968);
    v109 = *(v0 + 960);
    v111 = *(v0 + 952);
    v113 = *(v0 + 928);
    v115 = *(v0 + 920);
    v117 = *(v0 + 912);
    v119 = *(v0 + 904);
    v121 = *(v0 + 896);
    v98 = *(v0 + 888);
    v100 = *(v0 + 864);
    v102 = *(v0 + 840);
    v104 = *(v0 + 816);
    v106 = *(v0 + 792);
    v108 = *(v0 + 784);
    v110 = *(v0 + 776);
    v112 = *(v0 + 768);
    v114 = *(v0 + 760);
    v116 = *(v0 + 752);
    v118 = *(v0 + 728);
    v120 = *(v0 + 704);
    v122 = *(v0 + 680);
    v123 = *(v0 + 672);
    v124 = *(v0 + 664);
    v125 = *(v0 + 656);
    v126 = *(v0 + 648);
    v127 = *(v0 + 624);
    v128 = *(v0 + 616);
    v130 = *(v0 + 608);
    v132 = *(v0 + 600);
    v134 = *(v0 + 592);
    v136 = *(v0 + 584);
    v138 = *(v0 + 576);
    v140 = *(v0 + 568);
    v142 = *(v0 + 544);
    v144 = *(v0 + 536);
    v146 = *(v0 + 512);
    v148 = *(v0 + 488);
    v150 = *(v0 + 464);
    v152 = *(v0 + 440);
    v77 = *(v0 + 384);
    v155 = *(v0 + 416);
    v157 = *(v0 + 392);
    v78 = *(**(v53 + 216) + 208);

    v78(0xD00000000000005BLL, 0x80000001DCA814E0, v54, v77);

    v79 = *(v0 + 8);

    return v79();
  }

  *(v0 + 1344) = v1;
  *(v0 + 1336) = v38;
  *(v0 + 1328) = v39;
  v55 = *(v0 + 384);
  swift_beginAccess();
  v56 = *(v55 + 104);
  if ((v56 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v57 = __CocoaSet.count.getter();

      if (v57)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
        v58 = static _SetStorage.allocate(capacity:)();
      }

      else
      {
        v58 = MEMORY[0x1E69E7CD0];
      }

      *(*(v0 + 384) + 104) = v58;
    }
  }

  else if (*(v56 + 16))
  {
    v81 = *(v0 + 384);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158 = *(v81 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMR);
    _NativeSet.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v81 + 104) = v158;
  }

  v83 = *(v0 + 384);

  specialized Set._Variant.insert(_:)(&v158, v1);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v1, 0);
}

{
  v1 = *(v0 + 1607);
  v2 = *(v0 + 1184);

  if (v1 == 1)
  {
    v3 = *(v0 + 1280);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "[ConversationService] Conversation is correctable. Setting up Siri Corrections signals", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v7 = *(v0 + 344);

    static CorrectionsContext.builder.getter();
    v8 = *(v7 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    if (v8)
    {
      v9 = (v8 + OBJC_IVAR___SKEUserSpecificInfo_userId);
      v10 = *v9;
      v11 = v9[1];
    }

    v92 = *(v0 + 1312);
    v94 = *(v0 + 1320);
    v12 = *(v0 + 1208);
    v13 = *(v0 + 1200);
    v14 = *(v0 + 432);
    v15 = *(v0 + 416);
    v100 = *(v0 + 424);
    v102 = *(v0 + 408);
    v16 = *(v0 + 392);
    v104 = *(v0 + 400);
    v106 = *(v0 + 1344);
    v96 = *(v0 + 440);
    v98 = *(v0 + 384);
    v17 = *(v0 + 352);
    dispatch thunk of CorrectionsContext.Builder.userId(_:)();

    dispatch thunk of CorrectionsContext.Builder.executionRequestId(_:)();

    v18 = (*(v17 + *(type metadata accessor for RemoteConversationTurnData(0) + 32)) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId);
    v19 = *v18;
    v20 = v18[1];

    dispatch thunk of CorrectionsContext.Builder.assistantId(_:)();

    dispatch thunk of CorrectionsContext.Builder.resultCandidateId(_:)();

    dispatch thunk of CorrectionsContext.Builder.build()();

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    CorrectionsDirectInvocation.init(identifier:userData:)();
    v21 = *(v98 + 184);
    (*(v14 + 16))(v16, v96, v100);
    (*(v14 + 56))(v16, 0, 1, v100);
    dispatch thunk of CorrectionsPlatformClient.setUndoInvocation(directInvocation:context:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
    (*(v102 + 8))(v15, v104);
    (*(v14 + 8))(v96, v100);
    v22 = *(v98 + 280);
    *(v98 + 280) = v106;
  }

  v23 = *(v0 + 1344);
  v24 = *(v0 + 384);
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v23);
  swift_endAccess();
  v25 = *(v0 + 384);

  v26 = *(v25 + 104);
  if ((v26 & 0xC000000000000001) != 0)
  {
    if (v26 < 0)
    {
      v27 = *(v25 + 104);
    }

    __CocoaSet.count.getter();
  }

  v28 = *(v0 + 1560);
  v29 = *(v0 + 1344);
  v30 = *(v0 + 1336);
  v31 = *(v0 + 1288);
  v32 = *(v0 + 1032);
  v33 = *(v0 + 360);
  (*(*(v0 + 368) + 16))(v28, (*(v0 + 1606) & 1) == 0, *(v0 + 1416));

  outlined destroy of ConversationService.EagerResult(v32, type metadata accessor for ConversationCommitResult);

  v34 = *(v0 + 384);
  v107 = *(v0 + 392);
  v35 = *(v0 + 1176);
  v36 = *(v0 + 1168);
  v37 = *(v0 + 1160);
  v38 = *(v0 + 1152);
  v42 = *(v0 + 1144);
  v43 = *(v0 + 1136);
  v44 = *(v0 + 1128);
  v45 = *(v0 + 1120);
  v46 = *(v0 + 1112);
  v47 = *(v0 + 1104);
  v48 = *(v0 + 1096);
  v49 = *(v0 + 1088);
  v50 = *(v0 + 1080);
  v51 = *(v0 + 1072);
  v52 = *(v0 + 1064);
  v53 = *(v0 + 1056);
  v54 = *(v0 + 1032);
  v55 = *(v0 + 1024);
  v56 = *(v0 + 1016);
  v57 = *(v0 + 1000);
  v58 = *(v0 + 976);
  v59 = *(v0 + 968);
  v60 = *(v0 + 960);
  v61 = *(v0 + 952);
  v62 = *(v0 + 928);
  v63 = *(v0 + 920);
  v64 = *(v0 + 912);
  v65 = *(v0 + 904);
  v66 = *(v0 + 896);
  v67 = *(v0 + 888);
  v68 = *(v0 + 864);
  v69 = *(v0 + 840);
  v70 = *(v0 + 816);
  v71 = *(v0 + 792);
  v72 = *(v0 + 784);
  v73 = *(v0 + 776);
  v74 = *(v0 + 768);
  v75 = *(v0 + 760);
  v76 = *(v0 + 752);
  v77 = *(v0 + 728);
  v78 = *(v0 + 704);
  v79 = *(v0 + 680);
  v80 = *(v0 + 672);
  v81 = *(v0 + 664);
  v82 = *(v0 + 656);
  v83 = *(v0 + 648);
  v84 = *(v0 + 624);
  v85 = *(v0 + 616);
  v86 = *(v0 + 608);
  v87 = *(v0 + 600);
  v88 = *(v0 + 592);
  v89 = *(v0 + 584);
  v90 = *(v0 + 576);
  v91 = *(v0 + 568);
  v93 = *(v0 + 544);
  v95 = *(v0 + 536);
  v97 = *(v0 + 512);
  v99 = *(v0 + 488);
  v101 = *(v0 + 464);
  v103 = *(v0 + 440);
  v105 = *(v0 + 416);
  v39 = *(**(v34 + 216) + 208);

  v39(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v34);

  v40 = *(v0 + 8);

  return v40();
}

{
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1440);
  v4 = *(v0 + 1344);
  v5 = *(v0 + 1184);
  v78 = *(v0 + 1032);
  v80 = *(v0 + 1336);
  v6 = *(v0 + 944);
  v74 = *(v0 + 936);
  v76 = *(v0 + 960);
  v72 = *(v0 + 888);
  v7 = *(v0 + 880);
  v8 = *(v0 + 872);
  v9 = *(v0 + 376);

  (*(v7 + 8))(v72, v8);
  (*(v6 + 8))(v76, v74);
  outlined destroy of ConversationService.EagerResult(v78, type metadata accessor for ConversationCommitResult);

  v81 = *(v0 + 1496);
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1168);
  v12 = *(v0 + 1160);
  v13 = *(v0 + 1152);
  v18 = *(v0 + 1144);
  v19 = *(v0 + 1136);
  v20 = *(v0 + 1128);
  v21 = *(v0 + 1120);
  v22 = *(v0 + 1112);
  v23 = *(v0 + 1104);
  v24 = *(v0 + 1096);
  v25 = *(v0 + 1088);
  v26 = *(v0 + 1080);
  v27 = *(v0 + 1072);
  v28 = *(v0 + 1064);
  v29 = *(v0 + 1056);
  v30 = *(v0 + 1032);
  v32 = *(v0 + 1024);
  v34 = *(v0 + 1016);
  v36 = *(v0 + 1000);
  v38 = *(v0 + 976);
  v40 = *(v0 + 968);
  v42 = *(v0 + 960);
  v44 = *(v0 + 952);
  v46 = *(v0 + 928);
  v48 = *(v0 + 920);
  v50 = *(v0 + 912);
  v52 = *(v0 + 904);
  v54 = *(v0 + 896);
  v31 = *(v0 + 888);
  v33 = *(v0 + 864);
  v35 = *(v0 + 840);
  v37 = *(v0 + 816);
  v39 = *(v0 + 792);
  v41 = *(v0 + 784);
  v43 = *(v0 + 776);
  v45 = *(v0 + 768);
  v47 = *(v0 + 760);
  v49 = *(v0 + 752);
  v51 = *(v0 + 728);
  v53 = *(v0 + 704);
  v55 = *(v0 + 680);
  v56 = *(v0 + 672);
  v57 = *(v0 + 664);
  v58 = *(v0 + 656);
  v59 = *(v0 + 648);
  v60 = *(v0 + 624);
  v61 = *(v0 + 616);
  v62 = *(v0 + 608);
  v63 = *(v0 + 600);
  v64 = *(v0 + 592);
  v65 = *(v0 + 584);
  v66 = *(v0 + 576);
  v67 = *(v0 + 568);
  v68 = *(v0 + 544);
  v69 = *(v0 + 536);
  v70 = *(v0 + 512);
  v71 = *(v0 + 488);
  v73 = *(v0 + 464);
  v75 = *(v0 + 440);
  v77 = *(v0 + 416);
  v14 = *(v0 + 384);
  v79 = *(v0 + 392);
  v15 = *(**(v14 + 216) + 208);

  v15(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v14);

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = *(v0 + 1512);
  v2 = *(v0 + 1504);
  v3 = *(v0 + 1344);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 544);
  v7 = *(v0 + 528);
  v8 = *(v0 + 520);

  v2(v6, v8);
  outlined destroy of ConversationService.EagerResult(v5, type metadata accessor for ConversationCommitResult);

  v75 = *(v0 + 1536);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1168);
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1152);
  v17 = *(v0 + 1144);
  v18 = *(v0 + 1136);
  v19 = *(v0 + 1128);
  v20 = *(v0 + 1120);
  v21 = *(v0 + 1112);
  v22 = *(v0 + 1104);
  v23 = *(v0 + 1096);
  v24 = *(v0 + 1088);
  v25 = *(v0 + 1080);
  v26 = *(v0 + 1072);
  v27 = *(v0 + 1064);
  v28 = *(v0 + 1056);
  v29 = *(v0 + 1032);
  v31 = *(v0 + 1024);
  v33 = *(v0 + 1016);
  v35 = *(v0 + 1000);
  v37 = *(v0 + 976);
  v39 = *(v0 + 968);
  v41 = *(v0 + 960);
  v43 = *(v0 + 952);
  v45 = *(v0 + 928);
  v47 = *(v0 + 920);
  v49 = *(v0 + 912);
  v51 = *(v0 + 904);
  v53 = *(v0 + 896);
  v30 = *(v0 + 888);
  v32 = *(v0 + 864);
  v34 = *(v0 + 840);
  v36 = *(v0 + 816);
  v38 = *(v0 + 792);
  v40 = *(v0 + 784);
  v42 = *(v0 + 776);
  v44 = *(v0 + 768);
  v46 = *(v0 + 760);
  v48 = *(v0 + 752);
  v50 = *(v0 + 728);
  v52 = *(v0 + 704);
  v54 = *(v0 + 680);
  v55 = *(v0 + 672);
  v56 = *(v0 + 664);
  v57 = *(v0 + 656);
  v58 = *(v0 + 648);
  v59 = *(v0 + 624);
  v60 = *(v0 + 616);
  v61 = *(v0 + 608);
  v62 = *(v0 + 600);
  v63 = *(v0 + 592);
  v64 = *(v0 + 584);
  v65 = *(v0 + 576);
  v66 = *(v0 + 568);
  v67 = *(v0 + 544);
  v68 = *(v0 + 536);
  v69 = *(v0 + 512);
  v70 = *(v0 + 488);
  v71 = *(v0 + 464);
  v72 = *(v0 + 440);
  v73 = *(v0 + 416);
  v13 = *(v0 + 384);
  v74 = *(v0 + 392);
  v14 = *(**(v13 + 216) + 208);

  v14(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v13);

  v15 = *(v0 + 8);

  return v15();
}