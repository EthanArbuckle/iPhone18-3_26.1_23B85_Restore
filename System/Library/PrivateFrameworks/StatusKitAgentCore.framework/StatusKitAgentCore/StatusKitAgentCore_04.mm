uint64_t partial apply for closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(a1, v4, v5, v7, v6);
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #5 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1)
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
  v10[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #5 in SKALocalStatusServer.init(idsDeviceProvider:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LSKLocalStatusObservation<Data> and conformance <> LSKLocalStatusObservation<A>()
{
  result = lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance <> LSKLocalStatusObservation<A>;
  if (!lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance <> LSKLocalStatusObservation<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance <> LSKLocalStatusObservation<A>);
  }

  return result;
}

uint64_t objectdestroy_138Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #1 in closure #3 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #3 in SKALocalStatusServer.init(idsDeviceProvider:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #2 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #2 in SKALocalStatusServer.init(idsDeviceProvider:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_117Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in SKALocalStatusServer.handleIDSDevicesChanged()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKALocalStatusServer.handleIDSDevicesChanged()(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      specialized _NativeDictionary._delete(at:)(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t SKACALogger.SKACAEvent.description.getter(uint64_t a1)
{
  result = 0xD000000000000022;
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        return 0xD000000000000029;
      case 3:
        return 0xD000000000000032;
      case 4:
        return 0xD000000000000030;
    }

    goto LABEL_11;
  }

  if (!a1)
  {
    return 0xD000000000000026;
  }

  if (a1 != 1)
  {
LABEL_11:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SKACALogger.SKACAEvent@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SKACALogger.SKACAEvent.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SKACALogger.SKACALogKey@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SKACALogger.SKACALogKey.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SKACALogger.SKACALogToken.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SKACALogger.SKACALogToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKACALogger.SKACALogToken();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static SKACALogger.start(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SKACALogger.SKACALogToken();
  v7 = objc_allocWithZone(v6);
  static Date.now.getter();
  *&v7[OBJC_IVAR___SKACALogToken_event] = a1;
  v8 = &v7[OBJC_IVAR___SKACALogToken_client];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t static SKACALogger.logSuccess(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = *(a1 + OBJC_IVAR___SKACALogToken_event);
  v7 = *(a1 + OBJC_IVAR___SKACALogToken_client);
  v8 = *(a1 + OBJC_IVAR___SKACALogToken_client + 8);
  v9 = OBJC_IVAR___SKACALogToken_startTime;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v5, a1 + v9, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  specialized static SKACALogger._logSuccess(_:for:startTime:)(v6, v7, v8, v5);
  return outlined destroy of UUID?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t static SKACALogger.logFailure(with:for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a2 + OBJC_IVAR___SKACALogToken_event);
  v9 = *(a2 + OBJC_IVAR___SKACALogToken_client);
  v10 = *(a2 + OBJC_IVAR___SKACALogToken_client + 8);
  v11 = OBJC_IVAR___SKACALogToken_startTime;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2 + v11, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  specialized static SKACALogger._logFailure(with:event:for:startTime:)(a1, v8, v9, v10, v7);
  return outlined destroy of UUID?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t static SKACALogger.logSuccess(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  specialized static SKACALogger._logSuccess(_:for:startTime:)(a1, a2, a3, v9);
  return outlined destroy of UUID?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t static SKACALogger.logFailure(with:event:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  specialized static SKACALogger._logFailure(with:event:for:startTime:)(a1, a2, a3, a4, v11);
  return outlined destroy of UUID?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t static SKACALogger.log(_:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v7[3] = MEMORY[0x277D837D0];
  v7[4] = MEMORY[0x277D83808];
  v7[5] = MEMORY[0x277D837D8];
  v7[0] = a2;
  v7[1] = a3;

  specialized Dictionary.subscript.setter(v7, 0);
  v5 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);

  specialized static SKACALogger.logMetadata(_:for:)(v5, a1);
}

id SKACALogger.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id SKACALogger.init()()
{
  swift_defaultActor_initialize();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKACALogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t SKACALogger.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  outlined init with copy of (String, Sendable)(a1 + 32, &v40, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
  v7 = v40;
  v42 = v40;
  outlined init with take of Any(v41, v39);
  v8 = *a3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    v16 = *a3;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v15 & 1) != (v17 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v9;
  specialized _NativeDictionary.copy()();
  v9 = v20;
  if (v15)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v39);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v21[6] + 8 * v9) = v7;
  outlined init with take of Any(v39, (v21[7] + 32 * v9));
  v22 = v21[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v13)
  {
    v21[2] = v23;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v24 = a1 + 72;
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      outlined init with copy of (String, Sendable)(v24, &v40, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
      v26 = v40;
      v42 = v40;
      outlined init with take of Any(v41, v39);
      v27 = *a3;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v13 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v13)
      {
        goto LABEL_23;
      }

      v33 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v34 = *a3;
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v33)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v36[6] + 8 * v28) = v26;
      outlined init with take of Any(v39, (v36[7] + 32 * v28));
      v37 = v36[2];
      v13 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v13)
      {
        goto LABEL_24;
      }

      ++v25;
      v36[2] = v38;
      v24 += 40;
      if (v4 == v25)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(30);
  MEMORY[0x223D76B90](0xD00000000000001BLL, 0x80000002201ACBB0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x223D76B90](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t specialized SKACALogger.SKACAEvent.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t specialized SKACALogger.SKACALogKey.init(rawValue:)(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

uint64_t specialized static SKACALogger._logSuccess(_:for:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *&a2;
  v27 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMd, &_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 4;
  v19 = inited + 32;
  *(inited + 16) = xmmword_2201A7280;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UUID?(v19, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
  v30 = v20;
  if (a3)
  {
    v29 = MEMORY[0x277D837D0];
    v28[0] = v26;
    *&v28[1] = a3;

    specialized Dictionary.subscript.setter(v28, 0);
  }

  outlined init with copy of (String, Sendable)(a4, v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of UUID?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v22 = v21;
    v23 = *(v11 + 8);
    v23(v15, v10);
    Date.timeIntervalSinceReferenceDate.getter();
    v29 = MEMORY[0x277D839F8];
    v28[0] = v22 - v24;
    specialized Dictionary.subscript.setter(v28, 1);
    v23(v17, v10);
  }

  specialized static SKACALogger.logMetadata(_:for:)(v30, v27);
}

void specialized static SKACALogger._logFailure(with:event:for:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v39 = *&a3;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v38 = &v37 - v15;
  v16 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMd, &_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2201A7700;
  *(inited + 32) = 2;
  v18 = [v16 code];
  v19 = MEMORY[0x277D83B88];
  *(inited + 40) = v18;
  *(inited + 64) = v19;
  *(inited + 72) = 3;
  v20 = [v16 domain];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = MEMORY[0x277D837D0];
  *(inited + 80) = v21;
  *(inited + 88) = v23;
  *(inited + 104) = v24;
  *(inited + 112) = 4;
  *(inited + 144) = MEMORY[0x277D839B0];
  *(inited + 120) = 0;
  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
  swift_arrayDestroy();
  v45 = v25;
  if (a4)
  {
    v44 = v24;
    v42 = v39;
    v43 = a4;

    specialized Dictionary.subscript.setter(&v42, 0);
  }

  v26 = COERCE_DOUBLE(specialized static SKACALogger.getUnderlyingError(_:)(v16));
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    v44 = MEMORY[0x277D83B88];
    v42 = v26;
    specialized Dictionary.subscript.setter(&v42, 5);
    v44 = v24;
    v42 = v29;
    v43 = v30;
    specialized Dictionary.subscript.setter(&v42, 6);
  }

  outlined init with copy of (String, Sendable)(v40, v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of UUID?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v31 = v38;
    (*(v11 + 32))(v38, v9, v10);
    v32 = v37;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v34 = v33;
    v35 = *(v11 + 8);
    v35(v32, v10);
    Date.timeIntervalSinceReferenceDate.getter();
    v44 = MEMORY[0x277D839F8];
    v42 = v34 - v36;
    specialized Dictionary.subscript.setter(&v42, 1);
    v35(v31, v10);
  }

  specialized static SKACALogger.logMetadata(_:for:)(v45, v41);
}

void specialized static SKACALogger.log(_:with:)(uint64_t a1, void *a2)
{
  v15 = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = v4;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v15);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_220099000, oslog, v5, "Could not serialize custom metadata to dictionary: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D77FF0](v7, -1, -1);
    MEMORY[0x223D77FF0](v6, -1, -1);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type SKACALogger.SKACAEvent and conformance SKACALogger.SKACAEvent()
{
  result = lazy protocol witness table cache variable for type SKACALogger.SKACAEvent and conformance SKACALogger.SKACAEvent;
  if (!lazy protocol witness table cache variable for type SKACALogger.SKACAEvent and conformance SKACALogger.SKACAEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKACALogger.SKACAEvent and conformance SKACALogger.SKACAEvent);
  }

  return result;
}

uint64_t type metadata completion function for SKACALogger.SKACALogToken()
{
  result = type metadata accessor for Date();
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

uint64_t SKALogEvent.description.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x617373654D534449;
      }

      if (a1 == 3)
      {
        return 0xD000000000000011;
      }

      return 0xD000000000000012;
    }

    if (!a1)
    {
      return 0xD000000000000010;
    }

    if (a1 == 1)
    {
      return 0x4364657461657243;
    }

LABEL_22:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0x6269726373627553;
      case 8:
        return 0xD000000000000012;
      case 9:
        return 0x7263736275736E55;
    }

    goto LABEL_22;
  }

  if (a1 == 5)
  {
    return 0x656873696C627550;
  }

  else
  {
    return 0x6465766965636552;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SKALogEvent@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SKALogEvent.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t specialized SKALogEvent.init(rawValue:)(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SKALogEvent and conformance SKALogEvent()
{
  result = lazy protocol witness table cache variable for type SKALogEvent and conformance SKALogEvent;
  if (!lazy protocol witness table cache variable for type SKALogEvent and conformance SKALogEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKALogEvent and conformance SKALogEvent);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x546C656E6E616843;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x4449746E65696C43;
    }

    else
    {
      v5 = 0x546C656E6E616843;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6F6774754F6D754ELL;
    v6 = 0xEB00000000676E69;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6D6F636E496D754ELL;
    }

    else
    {
      v5 = 0x6369706F54;
    }

    if (v4 == 3)
    {
      v6 = 0xEB00000000676E69;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v7 = 0x6F6774754F6D754ELL;
  v8 = 0xEB00000000676E69;
  v9 = 0x6D6F636E496D754ELL;
  v10 = 0xEB00000000676E69;
  if (a2 != 3)
  {
    v9 = 0x6369706F54;
    v10 = 0xE500000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x4449746E65696C43;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for SKAPowerLogger(0)) init];
  static SKAPowerLogger.shared = result;
  return result;
}

id static SKAPowerLogger.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SKAPowerLogger.shared;

  return v1;
}

uint64_t SKAPowerLogger.SKAPowerLogEventType.description.getter(uint64_t a1)
{
  if (!a1)
  {
    v1 = 0x696F6774756FLL;
    return v1 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
  }

  if (a1 == 1)
  {
    v1 = 0x696D6F636E69;
    return v1 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t SKAPowerLogger.SKAPowerLogEventType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance SKAPowerLogger.SKAPowerLogEventType@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SKAPowerLogger.SKAPowerLogEventType()
{
  if (!*v0)
  {
    v1 = 0x696F6774756FLL;
    return v1 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
  }

  if (*v0 == 1)
  {
    v1 = 0x696D6F636E69;
    return v1 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
  }

  v3 = *v0;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0x546C656E6E616843;
  v5 = 0x6F6774754F6D754ELL;
  v6 = 0xEB00000000676E69;
  v7 = 0x6D6F636E496D754ELL;
  v8 = 0xEB00000000676E69;
  if (v2 != 3)
  {
    v7 = 0x6369706F54;
    v8 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1)
  {
    v4 = 0x4449746E65696C43;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys()
{
  v1 = *v0;
  v2 = 0x546C656E6E616843;
  v3 = 0x6F6774754F6D754ELL;
  v4 = 0x6D6F636E496D754ELL;
  if (v1 != 3)
  {
    v4 = 0x6369706F54;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449746E65696C43;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SKAPowerLogger.SKAPowerLogEventMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18StatusKitAgentCore14SKAPowerLoggerC0H16LogEventMetadataV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy18StatusKitAgentCore14SKAPowerLoggerC0H16LogEventMetadataV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v18[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[5];
  v18[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

double protocol witness for Decodable.init(from:) in conformance SKAPowerLogger.SKAPowerLogEventMetadata@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized SKAPowerLogger.SKAPowerLogEventMetadata.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

id SKAPowerLogger.().init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = type metadata accessor for SKAPowerLogger.State(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x223D76B00](0x694B737574617453, 0xEE00746E65674174);
  v13 = MEMORY[0x223D76B00](0xD000000000000010, 0x80000002201ACCE0);
  v14 = PPSCreateTelemetryIdentifier();

  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v16 = v11 + *(v8 + 32);
  static ContinuousClock.now.getter();
  *v11 = v14;
  v11[1] = v15;
  *(v11 + *(v8 + 36)) = xmmword_2201A8140;
  *v6 = 0;
  v17 = *(v3 + 36);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5_CellVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  bzero(v6 + v17, *(*(v18 - 8) + 64));
  outlined init with copy of SKAPowerLogger.State(v11, v6 + v17);
  memcpy(&v0[OBJC_IVAR___SKAPowerLogger_state], v6, v4);
  v21.receiver = v0;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  outlined destroy of SKAPowerLogger.State(v11);
  return v19;
}

void SKAPowerLogger.log(_:type:on:)(unint64_t a1, uint64_t a2, id a3)
{
  v7 = [a3 channelType];
  if (!v7)
  {
    v8 = [a3 statusType];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_6:
    v10 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  if (v7 == 1)
  {
    v8 = [a3 presenceIdentifier];
    if (v8)
    {
LABEL_4:
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v12 = 0xE700000000000000;
  v10 = 0x6E776F6E6B6E75;
LABEL_8:

  v13 = [a3 channelType];
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
    v14 = 0xE700000000000000;
  }

  v15 = (v3 + OBJC_IVAR___SKAPowerLogger_state);
  os_unfair_lock_lock(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  _s18StatusKitAgentCore14SKAPowerLoggerC3log33_9FCD8C5B33CE418606FD932C9F8D29EFLL_4type2on11channelType10identifieryAA11SKALogEventO_AC0e3LogwT0OSSSo018SKADatabaseChannelT0VSStFyAC5StateAELLVzYuYTXEfU_((v15 + *(v16 + 28)), v10, v14, v13, a1, a2);

  os_unfair_lock_unlock(v15);
}

void SKAPowerLogger.log(_:type:on:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v23 = a3;
    v24 = __CocoaSet.count.getter();
    a3 = v23;
    v5 = v24;
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 >= 1)
  {
    v26 = a3 & 0xC000000000000001;
    v6 = (v3 + OBJC_IVAR___SKAPowerLogger_state);
    v7 = a3;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
    v9 = v7;
    v10 = 0;
    v25 = *(v8 + 28);
    v11 = v7;
    v12 = v5;
    while (1)
    {
      if (v26)
      {
        v13 = MEMORY[0x223D77050](v10, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = [v13 channelType];
      if (v15)
      {
        if (v15 != 1)
        {
          v20 = 0xE700000000000000;
          v18 = 0x6E776F6E6B6E75;
          goto LABEL_15;
        }

        v16 = [v14 presenceIdentifier];
        if (!v16)
        {
LABEL_13:
          v18 = 0;
          v20 = 0;
          goto LABEL_15;
        }
      }

      else
      {
        v16 = [v14 statusType];
        if (!v16)
        {
          goto LABEL_13;
        }
      }

      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

LABEL_15:
      v21 = [v14 channelType];
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v18 = 0x6E776F6E6B6E75;
        v22 = 0xE700000000000000;
      }

      os_unfair_lock_lock(v6);
      _s18StatusKitAgentCore14SKAPowerLoggerC3log33_9FCD8C5B33CE418606FD932C9F8D29EFLL_4type2on11channelType10identifieryAA11SKALogEventO_AC0e3LogwT0OSSSo018SKADatabaseChannelT0VSStFyAC5StateAELLVzYuYTXEfU_((v6 + v25), v18, v22, v21, a1, a2);
      ++v10;

      os_unfair_lock_unlock(v6);

      v9 = v11;
      if (v12 == v10)
      {
        return;
      }
    }
  }

  __break(1u);
  os_unfair_lock_unlock(v4);
  __break(1u);
}

void SKAPowerLogger.log(_:type:channelType:identifier:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (v5 + OBJC_IVAR___SKAPowerLogger_state);
  os_unfair_lock_lock(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  _s18StatusKitAgentCore14SKAPowerLoggerC3log33_9FCD8C5B33CE418606FD932C9F8D29EFLL_4type2on11channelType10identifieryAA11SKALogEventO_AC0e3LogwT0OSSSo018SKADatabaseChannelT0VSStFyAC5StateAELLVzYuYTXEfU_((v11 + *(v12 + 28)), a4, a5, a3, a1, a2);

  os_unfair_lock_unlock(v11);
}

uint64_t _s18StatusKitAgentCore14SKAPowerLoggerC3log33_9FCD8C5B33CE418606FD932C9F8D29EFLL_4type2on11channelType10identifieryAA11SKALogEventO_AC0e3LogwT0OSSSo018SKADatabaseChannelT0VSStFyAC5StateAELLVzYuYTXEfU_(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v114[4] = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for ContinuousClock.Instant();
  v105 = *(v13 - 8);
  v106 = v13;
  v14 = *(v105 + 64);
  MEMORY[0x28223BE20](v13);
  v104 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 == 1)
  {
    v16 = MEMORY[0x223D76B00](a2, a3);
    v17 = [v16 clientIDFromPresenceIdentifier];

    if (v17)
    {
      a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a3 = v18;
    }

    else
    {
      a3 = 0xE700000000000000;
      a2 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
  }

  v19 = a1[1];
  if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);

    if (a5 > 9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18StatusKitAgentCore14SKAPowerLoggerC0G16LogEventMetadataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    if (a5 > 9)
    {
      goto LABEL_20;
    }
  }

  if (((1 << a5) & 0x138) != 0)
  {
LABEL_21:
    v23 = 3;
    goto LABEL_22;
  }

  if (((1 << a5) & 0x280) != 0)
  {
    v23 = 1;
    goto LABEL_22;
  }

  if (a5 == 6)
  {
    v24 = 4;
    if (a4)
    {
      v24 = 5;
    }

    if (a4 == 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = v24;
    }

    goto LABEL_22;
  }

LABEL_20:
  if (a5 < 2)
  {
    goto LABEL_21;
  }

  if (a5 != 2)
  {
    goto LABEL_69;
  }

  v23 = 0;
LABEL_22:
  v101 = a5;
  v25 = SKALogEvent.description.getter(a5);
  v27 = v22[2];
  v102 = a1;
  v103 = a3;
  v107 = v6;
  if (v27)
  {
    v99 = a6;
    v28 = a2;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
    v31 = v30;

    if (v31)
    {
      v32 = (v22[7] + 48 * v29);
      v34 = *v32;
      v33 = v32[1];
      a5 = v32[2];
      v35 = v32[3];
      v36 = v32[4];
      *&v100 = v32[5];
      a2 = v28;
    }

    else
    {
      *&v100 = v23;
      v34 = a4;
      v36 = 0;
      v35 = 0;
      a5 = v103;
      a2 = v28;
      v33 = v28;
    }

    a6 = v99;
  }

  else
  {
    *&v100 = v23;
    a5 = a3;
    v34 = a4;

    v36 = 0;
    v35 = 0;
    v33 = a2;
  }

  if (a6 == 1)
  {
    v37 = __OFADD__(v36++, 1);
    if (!v37)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  if (a6)
  {
    for (*&v109 = a6; ; *&v109 = a5)
    {
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
LABEL_69:
      ;
    }
  }

  v37 = __OFADD__(v35++, 1);
  if (v37)
  {
LABEL_66:
    __break(1u);
  }

LABEL_34:
  v38 = a2;
  v39 = SKALogEvent.description.getter(v101);
  v41 = v40;
  *&v109 = v34;
  *(&v109 + 1) = v33;
  v110 = a5;
  v111 = v35;
  v112 = v36;
  v113 = v100;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114[0] = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, v39, v41, isUniquelyReferenced_nonNull_native);

  v43 = v114[0];
  v44 = v102;
  v45 = v102[1];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v114[0] = v44[1];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v38, v103, v46);

  v47 = v114[0];
  v44[1] = v114[0];
  v48 = type metadata accessor for SKAPowerLogger.State(0);
  v49 = *(v48 + 24);
  v50 = v104;
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  (*(v105 + 8))(v50, v106);
  v51 = (v44 + *(v48 + 28));
  v52 = *v51;
  v53 = v51[1];
  result = static Duration.< infix(_:_:)();
  if ((result & 1) == 0)
  {
    goto LABEL_62;
  }

  v55 = v107;
  if (!*v44)
  {
    v95 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    v44[1] = v95;
    v96 = v104;
    static ContinuousClock.now.getter();
    result = (*(v105 + 40))(v44 + v49, v96, v106);
    goto LABEL_62;
  }

  v98 = *v44;
  v99 = v49;
  v56 = v47 + 64;
  v57 = 1 << v47[32];
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v47 + 8);
  v60 = (v57 + 63) >> 6;

  v61 = 0;
  *&v62 = 136315138;
  v100 = v62;
  v101 = v60;
  v103 = v47;
  if (v59)
  {
    goto LABEL_42;
  }

  while (1)
  {
LABEL_43:
    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v63 >= v60)
    {
      break;
    }

    v59 = *&v56[8 * v63];
    ++v61;
    if (v59)
    {
      while (1)
      {
        v64 = __clz(__rbit64(v59));
        v59 &= v59 - 1;
        v65 = *(*(v47 + 7) + ((v63 << 9) | (8 * v64)));
        v66 = type metadata accessor for JSONEncoder();
        v67 = *(v66 + 48);
        v68 = *(v66 + 52);
        swift_allocObject();

        JSONEncoder.init()();
        v114[0] = v65;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS18StatusKitAgentCore14SKAPowerLoggerC0E16LogEventMetadataVGMd, &_sSDySS18StatusKitAgentCore14SKAPowerLoggerC0E16LogEventMetadataVGMR);
        lazy protocol witness table accessor for type [String : SKAPowerLogger.SKAPowerLogEventMetadata] and conformance <> [A : B]();
        v69 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        if (v55)
        {

          v55 = 0;
        }

        else
        {
          v71 = v69;
          v72 = v70;
          v107 = 0;

          v73 = objc_opt_self();
          isa = Data._bridgeToObjectiveC()().super.isa;
          v114[0] = 0;
          v75 = [v73 JSONObjectWithData:isa options:0 error:{v114, v98}];

          if (v75)
          {
            v76 = v114[0];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
            if (swift_dynamicCast())
            {

              specialized _dictionaryUpCast<A, B, C, D>(_:)(v108);

              v77 = Dictionary._bridgeToObjectiveC()().super.isa;

              PPSSendTelemetry();

              outlined consume of Data._Representation(v71, v72);
              v61 = v63;
              v55 = v107;
              v47 = v103;
              v60 = v101;
              if (!v59)
              {
                goto LABEL_43;
              }

              goto LABEL_42;
            }

            outlined consume of Data._Representation(v71, v72);
            v55 = v107;
          }

          else
          {
            v78 = v114[0];
            v79 = _convertNSErrorToError(_:)();

            swift_willThrow();
            outlined consume of Data._Representation(v71, v72);

            v55 = 0;
          }

          v60 = v101;
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        __swift_project_value_buffer(v80, logger);

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v114[0] = v84;
          *v83 = v100;
          v108 = v65;
          v85 = String.init<A>(describing:)();
          v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, v114);
          v107 = v81;
          v88 = v56;
          v89 = v55;
          v90 = v87;

          *(v83 + 4) = v90;
          v55 = v89;
          v56 = v88;
          v81 = v107;
          _os_log_impl(&dword_220099000, v107, v82, "Could not encode powerlog metadata to dictionary: %s", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v84);
          MEMORY[0x223D77FF0](v84, -1, -1);
          v91 = v83;
          v60 = v101;
          MEMORY[0x223D77FF0](v91, -1, -1);
        }

        else
        {
        }

        v61 = v63;
        v47 = v103;
        if (!v59)
        {
          goto LABEL_43;
        }

LABEL_42:
        v63 = v61;
      }
    }
  }

  v92 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  v93 = v102;
  v102[1] = v92;
  v94 = v104;
  static ContinuousClock.now.getter();
  result = (*(v105 + 40))(v93 + v99, v94, v106);
LABEL_62:
  v97 = *MEMORY[0x277D85DE8];
  return result;
}

id SKAPowerLogger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventType and conformance SKAPowerLogger.SKAPowerLogEventType()
{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventType and conformance SKAPowerLogger.SKAPowerLogEventType;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventType and conformance SKAPowerLogger.SKAPowerLogEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventType and conformance SKAPowerLogger.SKAPowerLogEventType);
  }

  return result;
}

void type metadata completion function for SKAPowerLogger()
{
  type metadata accessor for Mutex<SKAPowerLogger.State>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Mutex<SKAPowerLogger.State>()
{
  if (!lazy cache variable for type metadata for Mutex<SKAPowerLogger.State>)
  {
    type metadata accessor for SKAPowerLogger.State(255);
    v0 = type metadata accessor for Mutex();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Mutex<SKAPowerLogger.State>);
    }
  }
}

void type metadata completion function for SKAPowerLogger.State()
{
  type metadata accessor for OpaquePointer?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : SKAPowerLogger.SKAPowerLogMetadata]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContinuousClock.Instant();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for OpaquePointer?()
{
  if (!lazy cache variable for type metadata for OpaquePointer?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OpaquePointer?);
    }
  }
}

unint64_t type metadata accessor for SKADatabaseChannel()
{
  result = lazy cache variable for type metadata for SKADatabaseChannel;
  if (!lazy cache variable for type metadata for SKADatabaseChannel)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SKADatabaseChannel);
  }

  return result;
}

uint64_t outlined init with copy of SKAPowerLogger.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKAPowerLogger.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SKAPowerLogger.State(uint64_t a1)
{
  v2 = type metadata accessor for SKAPowerLogger.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata and conformance SKAPowerLogger.SKAPowerLogEventMetadata()
{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata and conformance SKAPowerLogger.SKAPowerLogEventMetadata;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata and conformance SKAPowerLogger.SKAPowerLogEventMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata and conformance SKAPowerLogger.SKAPowerLogEventMetadata);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SKAPowerLogger.SKAPowerLogEventMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SKAPowerLogger.SKAPowerLogEventMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys);
  }

  return result;
}

unint64_t specialized SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized SKAPowerLogger.SKAPowerLogEventMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18StatusKitAgentCore14SKAPowerLoggerC0H16LogEventMetadataV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy18StatusKitAgentCore14SKAPowerLoggerC0H16LogEventMetadataV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v22 = v12;
  v25 = 2;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 3;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 4;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v17 = v21;
  v18 = v22;
  *a2 = v11;
  a2[1] = v18;
  a2[2] = v14;
  a2[3] = v17;
  a2[4] = v20;
  a2[5] = v15;
  return result;
}

uint64_t getEnumTagSinglePayload for SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    outlined destroy of UUID?(v11, &_sScPSgMd, &_sScPSgMR);
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

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of UUID?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of UUID?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

char *one-time initialization function for all()
{
  v9 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v1 = v9;
  v3 = *(v9 + 16);
  v2 = *(v9 + 24);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1);
    v1 = v9;
    v2 = *(v9 + 24);
    v4 = v2 >> 1;
  }

  *(v1 + 16) = v5;
  v6 = v1 + 16 * v3;
  *(v6 + 32) = 0xD000000000000020;
  *(v6 + 40) = 0x80000002201ACDE0;
  v7 = v3 + 2;
  if (v4 <= v5)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v7, 1);
    v1 = v9;
  }

  *(v1 + 16) = v7;
  v8 = v1 + 16 * v5;
  *(v8 + 32) = 0xD000000000000023;
  *(v8 + 40) = 0x80000002201ACE10;
  static SKAAccountProvider.SKAAuthService.all = v1;
  return result;
}

id SKAAccountProvider.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[15] = 0;
  v1[14] = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id SKAAccountProvider.init()()
{
  swift_defaultActor_initialize();
  v0[15] = 0;
  v0[14] = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKAAccountProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SKAAccountProvider.getPrimaryiCloudAccount()()
{
  v1 = [*(v0 + 112) aida_accountForPrimaryiCloudAccount];
  if (v1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_220099000, v4, v5, "Found primary iCloud account: %@", v6, 0xCu);
      outlined destroy of UUID?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v7, -1, -1);
      MEMORY[0x223D77FF0](v6, -1, -1);
    }
  }

  else
  {
    v9 = type metadata accessor for SKAError();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR___SKAError_code] = 703;
    v11 = &v10[OBJC_IVAR___SKAError_customDescription];
    *v11 = 0;
    *(v11 + 1) = 0;
    *&v10[OBJC_IVAR___SKAError_underlyingError] = 0;
    *&v10[OBJC_IVAR___SKAError_userInfo] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v15.receiver = v10;
    v15.super_class = v9;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    lazy protocol witness table accessor for type SKAAccountProvider and conformance SKAAccountProvider(&lazy protocol witness table cache variable for type SKAError and conformance SKAError, 255, type metadata accessor for SKAError);
    swift_allocError();
    *v13 = v12;
    swift_willThrow();
  }

  return v1;
}

uint64_t SKAAccountProvider.getToken(for:error:)(char a1)
{
  v2 = SKAAccountProvider.getPrimaryiCloudAccount()();
  if (a1)
  {
    v3 = 0xD000000000000023;
  }

  else
  {
    v3 = 0xD000000000000020;
  }

  if (a1)
  {
    v4 = "redchannels.auth";
  }

  else
  {
    v4 = "d to be renewed with result: ";
  }

  v5 = MEMORY[0x223D76B00](v3, v4 | 0x8000000000000000);

  v6 = [v2 aida:v5 tokenWithExpiryCheckForService:?];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[1] = v9;
      v28 = v14;
      *v13 = 134218242;
      v27[0] = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      *(v13 + 4) = Optional<A>.hashValue.getter();

      *(v13 + 12) = 2080;
      if (a1)
      {
        v15 = 0xD00000000000002ELL;
      }

      else
      {
        v15 = 0xD000000000000029;
      }

      if (a1)
      {
        v16 = "redchannels.auth (status)";
      }

      else
      {
        v16 = "redexperiences.auth";
      }

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16 | 0x8000000000000000, &v28);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_220099000, v11, v12, "Retrieved token (hash: %ld) for service: %s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223D77FF0](v14, -1, -1);
      MEMORY[0x223D77FF0](v13, -1, -1);

      return v7;
    }

    else
    {

      return v7;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      if (a1)
      {
        v24 = 0xD00000000000002ELL;
      }

      else
      {
        v24 = 0xD000000000000029;
      }

      if (a1)
      {
        v25 = "redchannels.auth (status)";
      }

      else
      {
        v25 = "redexperiences.auth";
      }

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25 | 0x8000000000000000, v27);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_220099000, v20, v21, "No token was returned for service: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223D77FF0](v23, -1, -1);
      MEMORY[0x223D77FF0](v22, -1, -1);
    }

    return 0;
  }
}

id @objc SKAAccountProvider.statusJwtTokenForPrimaryAccountWithError(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  v5 = SKAAccountProvider.getToken(for:error:)(a4);
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x223D76B00](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t SKAAccountProvider.refreshCredentialForPrimaryAccount()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](SKAAccountProvider.refreshCredentialForPrimaryAccount(), v0, 0);
}

{
  v1 = v0[2];
  v2 = *(v1 + 120);
  v0[4] = v2;
  if (v2)
  {
    v3 = one-time initialization token for logger;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, v6, "Awaiting previous credential renewal task", v7, 2u);
      MEMORY[0x223D77FF0](v7, -1, -1);
    }

    v8 = *(MEMORY[0x277D857C8] + 4);
    v9 = swift_task_alloc();
    v0[5] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v9 = v0;
    v11 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  else
  {
    v12 = v0[3];
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v15 = lazy protocol witness table accessor for type SKAAccountProvider and conformance SKAAccountProvider(&lazy protocol witness table cache variable for type SKAAccountProvider and conformance SKAAccountProvider, v14, type metadata accessor for SKAAccountProvider);
    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = v15;
    v16[4] = v1;
    swift_retain_n();
    v2 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount(), v16);
    v0[7] = v2;
    v17 = *(v1 + 120);
    *(v1 + 120) = v2;

    v18 = *(MEMORY[0x277D857C8] + 4);
    v9 = swift_task_alloc();
    v0[8] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v9 = v0;
    v11 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  v9[1] = v11;
  v19 = MEMORY[0x277D84950];
  v20 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v10, v2, v20, v10, v19);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  else
  {
    v6 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[4];

  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = *(v2 + 16);

    v6 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 16);
    v6 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v1 = v0[7];
  v2 = v0[2];

  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = v0[3];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[2];
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  v3 = v0[9];
  v4 = v0[3];

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMd, &_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMR);
  v4[26] = v6;
  v7 = *(v6 - 8);
  v4[27] = v7;
  v8 = *(v7 + 64) + 15;
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount(), a4, 0);
}

uint64_t closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()()
{
  v1 = v0[25];
  v2 = SKAAccountProvider.getPrimaryiCloudAccount()();
  v0[29] = v2;
  v3 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[30] = __swift_project_value_buffer(v4, logger);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_220099000, v6, v7, "Renewing credentials for account: %@", v8, 0xCu);
    outlined destroy of UUID?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v9, -1, -1);
    MEMORY[0x223D77FF0](v8, -1, -1);
  }

  v19 = v5;
  v11 = v0[25];

  v18 = *(v11 + 112);
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  v12 = v0[27];
  v13 = v0[28];
  v14 = v0[26];
  specialized _arrayForceCast<A, B>(_:)(static SKAAccountProvider.SKAAuthService.all);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[31] = isa;

  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount();
  swift_continuation_init();
  v0[17] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  type metadata accessor for ACAccountCredentialRenewResult(0);
  v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  CheckedContinuation.init(continuation:function:)();
  (*(v12 + 32))(boxed_opaque_existential_0, v13, v14);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned ACAccountCredentialRenewResult, @unowned NSError?) -> () with result type ACAccountCredentialRenewResult;
  v0[13] = &block_descriptor_2;
  [v18 aida:v19 renewCredentialsForAccount:isa services:? completion:?];
  (*(v12 + 8))(boxed_opaque_existential_0, v14);

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 200);
  if (v3)
  {
    v5 = closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  else
  {
    v5 = closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v31 = v0;
  receiver = v0[15].receiver;
  v2 = v0[11].receiver;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315138;
    v7 = 0xE600000000000000;
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
    if (v2 == 1)
    {
      v9 = 0x64657463656A6572;
      v8 = 0xE800000000000000;
    }

    if (v2 == 2)
    {
      v9 = 0x64656C696166;
    }

    else
    {
      v7 = v8;
    }

    if (v2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x646577656E6572;
    }

    if (v2)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v29);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_220099000, v3, v4, "Credential renewal returned with result: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D77FF0](v6, -1, -1);
    MEMORY[0x223D77FF0](v5, -1, -1);
  }

  if (v2)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v29 = 0xD00000000000002DLL;
    v30 = 0x80000002201ACDB0;
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
    if (v2 == 1)
    {
      v14 = 0x64657463656A6572;
      v13 = 0xE800000000000000;
    }

    if (v2 == 2)
    {
      v15 = 0x64656C696166;
    }

    else
    {
      v15 = v14;
    }

    if (v2 == 2)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = v13;
    }

    super_class = v0[14].super_class;
    MEMORY[0x223D76B90](v15, v16);

    v18 = v29;
    v19 = v30;
    v20 = type metadata accessor for SKAError();
    v21 = objc_allocWithZone(v20);
    *&v21[OBJC_IVAR___SKAError_code] = 702;
    v22 = &v21[OBJC_IVAR___SKAError_customDescription];
    *v22 = v18;
    v22[1] = v19;
    *&v21[OBJC_IVAR___SKAError_underlyingError] = 0;
    *&v21[OBJC_IVAR___SKAError_userInfo] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v0[10].receiver = v21;
    v0[10].super_class = v20;
    v23 = objc_msgSendSuper2(v0 + 10, sel_init);
    lazy protocol witness table accessor for type SKAAccountProvider and conformance SKAAccountProvider(&lazy protocol witness table cache variable for type SKAError and conformance SKAError, 255, type metadata accessor for SKAError);
    swift_allocError();
    *v24 = v23;
    swift_willThrow();

    v25 = v0[14].receiver;

    v26 = v0->super_class;
  }

  else
  {
    v27 = v0[14].receiver;

    v26 = v0->super_class;
  }

  return v26();
}

{
  receiver = v0[16].receiver;
  super_class = v0[16].super_class;
  v3 = v0[15].super_class;
  v4 = v0[14].super_class;
  swift_willThrow();

  v5 = type metadata accessor for SKAError();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___SKAError_code] = 701;
  v7 = &v6[OBJC_IVAR___SKAError_customDescription];
  *v7 = 0;
  *(v7 + 1) = 0;
  v0[11].super_class = super_class;
  v8 = super_class;
  type metadata accessor for NSError();
  v9 = swift_dynamicCast();
  v10 = v0[12].receiver;
  if (!v9)
  {
    v10 = 0;
  }

  *&v6[OBJC_IVAR___SKAError_underlyingError] = v10;
  *&v6[OBJC_IVAR___SKAError_userInfo] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v0[9].receiver = v6;
  v0[9].super_class = v5;
  v11 = objc_msgSendSuper2(v0 + 9, sel_init);
  lazy protocol witness table accessor for type SKAAccountProvider and conformance SKAAccountProvider(&lazy protocol witness table cache variable for type SKAError and conformance SKAError, 255, type metadata accessor for SKAError);
  swift_allocError();
  *v12 = v11;
  swift_willThrow();

  v13 = v0[14].receiver;

  v14 = v0->super_class;

  return v14();
}

uint64_t partial apply for closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()(a1, v4, v5, v6);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned ACAccountCredentialRenewResult, @unowned NSError?) -> () with result type ACAccountCredentialRenewResult(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMd, &_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMd, &_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount();

  return SKAAccountProvider.refreshCredentialForPrimaryAccount()();
}

uint64_t @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t SKAAccountProvider.deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SKAAccountProvider.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of SKAAccountProvider.refreshCredentialForPrimaryAccount()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v6();
}

uint64_t lazy protocol witness table accessor for type SKAAccountProvider and conformance SKAAccountProvider(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()(v2, v3);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SKAPresentDevicesManager.verifyPayloadTimeout.getter()
{
  v1 = (v0 + OBJC_IVAR___SKAPresentDevicesManager_verifyPayloadTimeout);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t SKAPresentDevicesManager.verifyPayloadTimeout.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SKAPresentDevicesManager_verifyPayloadTimeout);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SKAPresentDevicesManager.SKAPayloadVerificationContext.signedPayload.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t SKAPresentDevicesManager.SKAPayloadVerificationContext.tokenURI.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SKAPresentDevicesManager.SKAPayloadVerificationContext.assertionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext() + 32);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext()
{
  result = type metadata singleton initialization cache for SKAPresentDevicesManager.SKAPayloadVerificationContext;
  if (!type metadata singleton initialization cache for SKAPresentDevicesManager.SKAPayloadVerificationContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SKAPresentDevicesManager.__allocating_init(channelManager:databaseManager:messagingProvider:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___SKAPresentDevicesManager_queue;
  v11 = type metadata accessor for SKAAsyncQueue(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v9[v10] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000001DLL, 0x80000002201ACEE0, 0, 0);
  *&v9[OBJC_IVAR___SKAPresentDevicesManager_verifyPayloadTimeout] = xmmword_2201A85A0;
  *&v9[OBJC_IVAR___SKAPresentDevicesManager_channelManager] = a1;
  *&v9[OBJC_IVAR___SKAPresentDevicesManager_databaseManager] = a2;
  *&v9[OBJC_IVAR___SKAPresentDevicesManager_messagingProvider] = a3;
  *&v9[OBJC_IVAR___SKAPresentDevicesManager_delegate] = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

id SKAPresentDevicesManager.init(channelManager:databaseManager:messagingProvider:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR___SKAPresentDevicesManager_queue;
  v11 = type metadata accessor for SKAAsyncQueue(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v4[v10] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000001DLL, 0x80000002201ACEE0, 0, 0);
  *&v4[OBJC_IVAR___SKAPresentDevicesManager_verifyPayloadTimeout] = xmmword_2201A85A0;
  *&v4[OBJC_IVAR___SKAPresentDevicesManager_channelManager] = a1;
  *&v4[OBJC_IVAR___SKAPresentDevicesManager_databaseManager] = a2;
  *&v4[OBJC_IVAR___SKAPresentDevicesManager_messagingProvider] = a3;
  *&v4[OBJC_IVAR___SKAPresentDevicesManager_delegate] = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t SKAPresentDevicesManager._activePresentDevices(for:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v24 = 0;
  SKAAsyncQueue.precondition(_:)(&v24);
  v5 = *(v2 + OBJC_IVAR___SKAPresentDevicesManager_databaseManager);
  v6 = [v5 newBackgroundContext];
  v7 = [v5 presentDevicesForChannel:a1 databaseContext:v6];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo15SKPresentDeviceC_SayAEGTt0g5Tf4g_n(v8);

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);

  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v14 = 134218498;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *(v9 + 16);
    }

    *(v14 + 4) = v17;

    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v11;
    *(v14 + 22) = 2080;
    lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    v18 = v11;
    v19 = Set.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v23);

    *(v14 + 24) = v21;
    _os_log_impl(&dword_220099000, v12, v13, "Found %ld present devices for channel: %@ (%s)", v14, 0x20u);
    outlined destroy of UUID?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D77FF0](v16, -1, -1);
    MEMORY[0x223D77FF0](v14, -1, -1);
  }

  else
  {
  }

  return v9;
}

uint64_t SKAPresentDevicesManager.activePresentDevices(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___SKAPresentDevicesManager_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v9 = v3;
  v10 = a1;

  SKAAsyncQueue.enqueue(_:_:)("activePresentDevices(for:with:)", 31, 2, &async function pointer to partial apply for closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:), v8);
}

uint64_t closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:), 0, 0);
}

uint64_t closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  SKAPresentDevicesManager._activePresentDevices(for:)(*(v0 + 24));
  v2();

  v4 = *(v0 + 8);

  return v4();
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void SKAPresentDevicesManager._clearPresentDevices(for:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v30 = 0;
  SKAAsyncQueue.precondition(_:)(&v30);
  v5 = [a1 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136315138;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v29);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_220099000, v11, v12, "Clearing present devices for channel: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223D77FF0](v14, -1, -1);
      MEMORY[0x223D77FF0](v13, -1, -1);
    }

    else
    {
    }

    v22 = *(v2 + OBJC_IVAR___SKAPresentDevicesManager_databaseManager);
    oslog = [v22 newBackgroundContext];
    LODWORD(v22) = [v22 clearPresentDevicesForChannel:a1 databaseContext:?];
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    if (v22)
    {
      if (v25)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = "Found present devices to clear in DB";
LABEL_16:
        _os_log_impl(&dword_220099000, v23, v24, v27, v26, 2u);
        MEMORY[0x223D77FF0](v26, -1, -1);
      }
    }

    else if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "No present devices to clear in DB";
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);
  v17 = a1;
  oslog = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v17;
    *v20 = v17;
    v21 = v17;
    _os_log_impl(&dword_220099000, oslog, v18, "Channel identifier of channel %@ was nil", v19, 0xCu);
    outlined destroy of UUID?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v20, -1, -1);
    MEMORY[0x223D77FF0](v19, -1, -1);
  }

LABEL_18:
}

Swift::Void __swiftcall SKAPresentDevicesManager.clearPresentDevices(for:)(SKADatabaseChannel *a1)
{
  v3 = *&v1[OBJC_IVAR___SKAPresentDevicesManager_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = v1;
  v6 = a1;
  SKAAsyncQueue.enqueue(_:_:)("clearPresentDevices(for:)", 25, 2, &async function pointer to partial apply for closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:), v4);
}

uint64_t closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:), 0, 0);
}

uint64_t closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)()
{
  v1 = *(v0 + 16);
  SKAPresentDevicesManager._clearPresentDevices(for:)(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void SKAPresentDevicesManager.addPresentDevice(_:for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___SKAPresentDevicesManager_databaseManager);
  v12 = [v5 newBackgroundContext];
  if ([v5 createOrUpdatePresentDevice:a1 channel:a2 databaseContext:?])
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Successfully created or updated present device in DB";
LABEL_10:
      _os_log_impl(&dword_220099000, v7, v8, v10, v9, 2u);
      MEMORY[0x223D77FF0](v9, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Could not create or update present device in DB";
      goto LABEL_10;
    }
  }
}

void SKAPresentDevicesManager.removePresentDevice(_:for:)(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR___SKAPresentDevicesManager_databaseManager);
  v15 = [v5 newBackgroundContext];
  if ([v5 deletePresentDevice:a1 channel:a2 databaseContext:?])
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    v7 = a2;
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      *(v11 + 4) = v7;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v7;
      v12[1] = v8;
      v13 = v7;
      v14 = v8;
      _os_log_impl(&dword_220099000, v9, v10, "Present device deleted in DB for channel: %@ (%@)", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v12, -1, -1);
      MEMORY[0x223D77FF0](v11, -1, -1);
    }
  }
}

Swift::Void __swiftcall SKAPresentDevicesManager.setParticipantPayloads(_:for:)(Swift::OpaquePointer _, SKADatabaseChannel *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[OBJC_IVAR___SKAPresentDevicesManager_queue];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v3;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 1;
  *(v8 + 56) = _;
  *(v8 + 64) = 0;
  *(v8 + 72) = ObjectType;
  v9 = a2;
  v10 = v3;

  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &async function pointer to partial apply for closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), v8);
}

uint64_t SKAPresentDevicesManager.setParticipantPayloads(_:for:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *&v4[OBJC_IVAR___SKAPresentDevicesManager_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v5;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = 1;
  *(v12 + 56) = a1;
  *(v12 + 64) = 0;
  *(v12 + 72) = ObjectType;
  v13 = a2;
  v14 = v5;

  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v12);
}

uint64_t SKAPresentDevicesManager.handleParticipantPayloads(_:for:with:resetState:)(uint64_t a1, void *a2, int a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *&v4[OBJC_IVAR___SKAPresentDevicesManager_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v5;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = a4;
  *(v12 + 56) = a1;
  *(v12 + 64) = a3;
  *(v12 + 72) = ObjectType;
  v13 = a2;
  v14 = v5;

  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v12);
}

uint64_t closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 336) = a7;
  *(v8 + 48) = a6;
  *(v8 + 56) = a8;
  *(v8 + 340) = a5;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV__GMd, &_sScS12ContinuationV15BufferingPolicyOy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV__GMR);
  *(v8 + 96) = v13;
  v14 = *(v13 - 8);
  *(v8 + 104) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  *(v8 + 120) = v16;
  v17 = *(v16 - 8);
  *(v8 + 128) = v17;
  *(v8 + 136) = *(v17 + 64);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVGMd, &_sScSy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVGMR);
  *(v8 + 160) = v18;
  v19 = *(v18 - 8);
  *(v8 + 168) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMd, &_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMR) - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v22 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
  *(v8 + 208) = v22;
  v23 = *(v22 - 8);
  *(v8 + 216) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), 0, 0);
}

uint64_t closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v113 = v0;
  v1 = [*(v0 + 16) identifier];
  if (!v1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v59 = *(v0 + 16);
    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, logger);
    v61 = v59;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = *(v0 + 16);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      *(v65 + 4) = v64;
      *v66 = v64;
      v67 = v64;
      _os_log_impl(&dword_220099000, v62, v63, "Channel identifier of channel %@ was nil", v65, 0xCu);
      outlined destroy of UUID?(v66, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v66, -1, -1);
      MEMORY[0x223D77FF0](v65, -1, -1);
    }

    v68 = *(v0 + 24);
    v69 = *(v0 + 32);
    v70 = *(v0 + 16);

    v71 = *(v68 + OBJC_IVAR___SKAPresentDevicesManager_delegate);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    isa = Set._bridgeToObjectiveC()().super.isa;
    [v71 didUpdatePresentDevices:isa forChannel:v70];

    if (!v69)
    {
      goto LABEL_37;
    }

LABEL_36:
    v73 = *(v0 + 40);
    (*(v0 + 32))();
LABEL_37:
    v75 = *(v0 + 256);
    v74 = *(v0 + 264);
    v77 = *(v0 + 240);
    v76 = *(v0 + 248);
    v79 = *(v0 + 224);
    v78 = *(v0 + 232);
    v81 = *(v0 + 192);
    v80 = *(v0 + 200);
    v83 = *(v0 + 176);
    v82 = *(v0 + 184);
    v98 = *(v0 + 152);
    v101 = *(v0 + 144);
    v104 = *(v0 + 112);
    v107 = *(v0 + 88);
    v111 = *(v0 + 80);

    v84 = *(v0 + 8);

    return v84();
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 272) = v5;
  if (one-time initialization token for logger != -1)
  {
LABEL_42:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  *(v0 + 280) = __swift_project_value_buffer(v6, logger);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v112[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v5, v112);
    _os_log_impl(&dword_220099000, v7, v8, "Updating present devices for channel: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D77FF0](v10, -1, -1);
    MEMORY[0x223D77FF0](v9, -1, -1);
  }

  if (*(v0 + 340) == 1)
  {
    v11 = *(v0 + 24);
    SKAPresentDevicesManager._clearPresentDevices(for:)(*(v0 + 16));
  }

  v12 = *(v0 + 48);
  v13 = *(v0 + 24);
  v108 = SKAPresentDevicesManager._activePresentDevices(for:)(*(v0 + 16));
  *(v0 + 288) = v108;
  if (!(v12 >> 62))
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_46:
    v87 = *(v0 + 24);
    v86 = *(v0 + 32);
    v88 = *(v0 + 16);

    v89 = *(v87 + OBJC_IVAR___SKAPresentDevicesManager_delegate);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    v90 = Set._bridgeToObjectiveC()().super.isa;

    [v89 didUpdatePresentDevices:v90 forChannel:v88];

    if (!v86)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*(v0 + 48) < 0)
  {
    v85 = *(v0 + 48);
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_46;
  }

LABEL_9:
  v15 = 0;
  v3 = 0;
  v102 = v12 & 0xFFFFFFFFFFFFFF8;
  v105 = v12 & 0xC000000000000001;
  v96 = *(v0 + 216);
  v99 = *(v0 + 48) + 32;
  v16 = (v96 + 48);
  v5 = MEMORY[0x277D84F90];
  do
  {
    if (v105)
    {
      v17 = MEMORY[0x223D77050](v15, *(v0 + 48));
    }

    else
    {
      if (v15 >= *(v102 + 16))
      {
        goto LABEL_41;
      }

      v17 = *(v99 + 8 * v15);
    }

    v18 = v17;
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v20 = v14;
    v21 = *(v0 + 200);
    v22 = *(v0 + 208);
    v23 = *(v0 + 56);
    v24 = *(v0 + 16);
    v25 = *(v0 + 24);
    v112[0] = v17;
    closure #1 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(v112, v24, v108, v25, v21);

    v26 = *v16;
    *(v0 + 296) = *v16;
    if (v26(v21, 1, v22) == 1)
    {
      outlined destroy of UUID?(*(v0 + 200), &_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMd, &_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMR);
      v14 = v20;
    }

    else
    {
      v28 = *(v0 + 256);
      v27 = *(v0 + 264);
      outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(*(v0 + 200), v27);
      outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(v27, v28);
      v14 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      }

      v30 = v5[2];
      v29 = v5[3];
      if (v30 >= v29 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v5);
      }

      v31 = *(v0 + 256);
      v5[2] = v30 + 1;
      outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(v31, v5 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v30);
    }

    *(v0 + 304) = v5;
    ++v15;
  }

  while (v19 != v14);
  v32 = v5[2];
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v34 = *(v0 + 248);
    v112[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v33 = v112[0];
    v35 = v5 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v109 = *(v96 + 72);
    do
    {
      v36 = *(v0 + 248);
      outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v35, v36);
      v38 = *(v34 + 32);
      v37 = *(v34 + 40);

      outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v36);
      v112[0] = v33;
      v40 = v33[2];
      v39 = v33[3];
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v33 = v112[0];
      }

      v33[2] = v40 + 1;
      v41 = &v33[2 * v40];
      v41[4] = v38;
      v41[5] = v37;
      v35 += v109;
      --v32;
    }

    while (v32);
  }

  *(v0 + 312) = v33;
  v42 = *(v0 + 208);
  v43 = *(v0 + 184);
  v97 = *(v0 + 168);
  v100 = *(v0 + 160);
  v103 = *(v0 + 176);
  v44 = *(v0 + 152);
  v45 = *(v0 + 128);
  v93 = *(v0 + 144);
  v94 = *(v0 + 136);
  v46 = *(v0 + 112);
  v92 = *(v0 + 120);
  v47 = *(v0 + 96);
  v48 = *(v0 + 104);
  v106 = *(v0 + 80);
  v110 = *(v0 + 88);
  v95 = *(v0 + 24);
  (*(v48 + 104))(v46, *MEMORY[0x277D85778], v47);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v48 + 8))(v46, v47);
  v49 = type metadata accessor for TaskPriority();
  (*(*(v49 - 8) + 56))(v110, 1, 1, v49);
  (*(v45 + 16))(v93, v44, v92);
  v50 = (*(v45 + 80) + 48) & ~*(v45 + 80);
  v51 = swift_allocObject();
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  *(v51 + 4) = v5;
  *(v51 + 5) = v95;
  (*(v45 + 32))(&v51[v50], v93, v92);
  *&v51[(v94 + v50 + 7) & 0xFFFFFFFFFFFFFFF8] = v33;

  v52 = v95;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v110, &async function pointer to partial apply for closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), v51);

  (*(v97 + 16))(v103, v43, v100);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<SKAPresentDevicesManager.SKAPayloadVerificationContext> and conformance AsyncStream<A>, &_sScSy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVGMd, &_sScSy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVGMR);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  *(v0 + 320) = MEMORY[0x277D84F90];
  v53 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<SKAPresentDevicesManager.SKAPayloadVerificationContext>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  v54 = *(MEMORY[0x277D856D0] + 4);
  v55 = swift_task_alloc();
  *(v0 + 328) = v55;
  *v55 = v0;
  v55[1] = closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  v56 = *(v0 + 192);
  v57 = *(v0 + 80);
  v58 = *(v0 + 64);

  return MEMORY[0x282200308](v56, v58, v53);
}

{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[40];
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[8];

    (*(v6 + 8))(v5, v7);

    v8 = destructiveProjectEnumData for SKAAsyncQueue.Condition;
  }

  else
  {
    v8 = closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 216) + 48;
  v3 = (*(v0 + 296))(v1, 1, *(v0 + 208));
  v4 = *(v0 + 320);
  if (v3 != 1)
  {
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(v1, v18);
    outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v18, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v0 + 320);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, *(v0 + 320));
    }

    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v21);
    }

    v24 = *(v0 + 232);
    v25 = *(v0 + 216);
    outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(*(v0 + 240));
    v21[2] = v23 + 1;
    outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(v24, v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23);
    *(v0 + 320) = v21;
    v26 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<SKAPresentDevicesManager.SKAPayloadVerificationContext>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
    v27 = *(MEMORY[0x277D856D0] + 4);
    v28 = swift_task_alloc();
    *(v0 + 328) = v28;
    *v28 = v0;
    v28[1] = closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
    v29 = *(v0 + 192);
    v30 = *(v0 + 80);
    v31 = *(v0 + 64);
    v32 = v26;

    return MEMORY[0x282200308](v29, v31, v32);
  }

  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 288);
  v8 = *(v0 + 272);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  outlined destroy of UUID?(v1, &_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMd, &_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMR);
  v118 = MEMORY[0x277D84F90];
  v9 = *(v4 + 16);
  if (!v9)
  {

    v116 = MEMORY[0x277D84F90];
    v34 = *(v0 + 336);
    if (v34)
    {
      goto LABEL_17;
    }

LABEL_33:
    if (v116 >> 62)
    {
      v29 = __CocoaSet.count.getter();
      v60 = v29;
      if (!v29)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v60 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v60)
      {
        goto LABEL_49;
      }
    }

    if (v60 >= 1)
    {
      v61 = 0;
      v114 = *(v0 + 16);
      v62 = v116 & 0xC000000000000001;
      do
      {
        if (v62)
        {
          v65 = MEMORY[0x223D77050](v61, v116);
        }

        else
        {
          v65 = *(v116 + 8 * v61 + 32);
        }

        v66 = *(v0 + 280);
        v67 = *(v0 + 16);
        v68 = v65;
        v69 = v67;
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = *(v0 + 16);
          v73 = swift_slowAlloc();
          v74 = v62;
          v75 = swift_slowAlloc();
          *v73 = 138412546;
          *(v73 + 4) = v68;
          *(v73 + 12) = 2112;
          *(v73 + 14) = v72;
          *v75 = v68;
          v75[1] = v114;
          v76 = v68;
          v77 = v72;
          _os_log_impl(&dword_220099000, v70, v71, "Adding device %@ to channel %@", v73, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          v78 = v75;
          v62 = v74;
          MEMORY[0x223D77FF0](v78, -1, -1);
          MEMORY[0x223D77FF0](v73, -1, -1);
        }

        ++v61;
        v64 = *(v0 + 16);
        v63 = *(v0 + 24);

        SKAPresentDevicesManager.addPresentDevice(_:for:)(v68, v64);
      }

      while (v60 != v61);
      goto LABEL_49;
    }

LABEL_56:
    __break(1u);
    return MEMORY[0x282200308](v29, v31, v32);
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 320) + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v12 = *(v10 + 72);
  v116 = MEMORY[0x277D84F90];
  do
  {
    v13 = *(v0 + 224);
    v14 = *(v0 + 24);
    outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v11, v13);
    v15 = specialized SKAPresentDevicesManager.createPresentDevice(with:on:)(v13);
    v16 = outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v13);
    if (v15)
    {
      MEMORY[0x223D76BD0](v16);
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v116 = v118;
    }

    v11 += v12;
    --v9;
  }

  while (v9);
  v33 = *(v0 + 320);

  v34 = *(v0 + 336);
  if (!v34)
  {
    goto LABEL_33;
  }

LABEL_17:
  if (v34 != 1)
  {
    v79 = *(v0 + 280);
    v80 = *(v0 + 16);

    v81 = v80;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = *(v0 + 16);
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      *(v85 + 4) = v84;
      *v86 = v84;
      v87 = v84;
      _os_log_impl(&dword_220099000, v82, v83, "Unknown update type on channel %@", v85, 0xCu);
      outlined destroy of UUID?(v86, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v86, -1, -1);
      MEMORY[0x223D77FF0](v85, -1, -1);
    }

    goto LABEL_50;
  }

  if (v116 >> 62)
  {
    v29 = __CocoaSet.count.getter();
    v35 = v29;
    if (v29)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v35 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
LABEL_20:
      if (v35 >= 1)
      {
        v36 = 0;
        v110 = *(v0 + 16);
        v112 = *(*(v0 + 24) + OBJC_IVAR___SKAPresentDevicesManager_databaseManager);
        do
        {
          if ((v116 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x223D77050](v36, v116);
          }

          else
          {
            v37 = *(v116 + 8 * v36 + 32);
          }

          v38 = v37;
          v39 = *(v0 + 280);
          v40 = *(v0 + 16);
          v41 = v38;
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = *(v0 + 16);
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *v45 = 138412546;
            *(v45 + 4) = v41;
            *(v45 + 12) = 2112;
            *(v45 + 14) = v44;
            *v46 = v41;
            v46[1] = v110;
            v47 = v44;
            v48 = v41;
            _os_log_impl(&dword_220099000, v42, v43, "Removing device %@ from channel %@", v45, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            MEMORY[0x223D77FF0](v46, -1, -1);
            MEMORY[0x223D77FF0](v45, -1, -1);
          }

          v49 = *(v0 + 16);

          v50 = [v112 newBackgroundContext];
          if ([v112 deletePresentDevice:v41 channel:v49 databaseContext:v50])
          {
            v51 = *(v0 + 280);
            v52 = *(v0 + 16);
            v53 = v41;
            v41 = Logger.logObject.getter();
            v54 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v41, v54))
            {
              v55 = *(v0 + 16);
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              *v56 = 138412546;
              *(v56 + 4) = v55;
              *(v56 + 12) = 2112;
              *(v56 + 14) = v53;
              *v57 = v110;
              v57[1] = v53;
              v58 = v55;
              v59 = v53;
              _os_log_impl(&dword_220099000, v41, v54, "Present device deleted in DB for channel: %@ (%@)", v56, 0x16u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              swift_arrayDestroy();
              MEMORY[0x223D77FF0](v57, -1, -1);
              MEMORY[0x223D77FF0](v56, -1, -1);
            }
          }

          ++v36;
        }

        while (v35 != v36);
        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_56;
    }
  }

LABEL_49:

LABEL_50:
  v88 = *(v0 + 24);
  v89 = *(v0 + 32);
  v90 = *(v0 + 16);
  SKAPresentDevicesManager._activePresentDevices(for:)(v90);
  v91 = *(v88 + OBJC_IVAR___SKAPresentDevicesManager_delegate);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v91 didUpdatePresentDevices:isa forChannel:v90];

  if (v89)
  {
    v93 = *(v0 + 40);
    (*(v0 + 32))();
  }

  v94 = *(v0 + 184);
  v95 = *(v0 + 160);
  v96 = *(v0 + 168);
  (*(*(v0 + 128) + 8))(*(v0 + 152), *(v0 + 120));
  (*(v96 + 8))(v94, v95);
  v98 = *(v0 + 256);
  v97 = *(v0 + 264);
  v100 = *(v0 + 240);
  v99 = *(v0 + 248);
  v102 = *(v0 + 224);
  v101 = *(v0 + 232);
  v104 = *(v0 + 192);
  v103 = *(v0 + 200);
  v106 = *(v0 + 176);
  v105 = *(v0 + 184);
  v109 = *(v0 + 152);
  v111 = *(v0 + 144);
  v113 = *(v0 + 112);
  v115 = *(v0 + 88);
  v117 = *(v0 + 80);

  v107 = *(v0 + 8);

  return v107();
}

uint64_t closure #1 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = *a1;
  v15 = [*(a4 + OBJC_IVAR___SKAPresentDevicesManager_channelManager) serverTime];
  if (v15)
  {
    v16 = v15;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
  }

  else
  {
    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  }

  static SKAPresentDevicesManager.validatePayload(_:on:withPreviousDevices:currentServerTime:)(v14, a2, a3, v13, a5);
  return outlined destroy of UUID?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t static SKAPresentDevicesManager.validatePayload(_:on:withPreviousDevices:currentServerTime:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v269[1] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v249 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v264 = &v249 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v265 = &v249 - v21;
  MEMORY[0x28223BE20](v20);
  v266 = &v249 - v22;
  v23 = [a1 serverUpdateTimestampSeconds];
  v24 = [a1 encryptedParticipantPayload];
  if (v24)
  {
    v262 = v16;
    v25 = v24;
    v268 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = [a2 presencePeerKey];
    if (v28)
    {
      v258 = v15;
      v267 = v27;
      v263 = a5;
      v29 = v28;
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = objc_allocWithZone(SKAPresenceEncryptionKey);
      outlined copy of Data._Representation(v30, v32);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v35 = [v33 initWithKeyMaterial_];

      outlined consume of Data._Representation(v30, v32);
      if (v35)
      {
        v259 = v30;
        v260 = v32;
        v36 = v267;
        v37 = Data._bridgeToObjectiveC()().super.isa;
        v261 = v35;
        v38 = [v35 decryptPayload_];

        if (v38)
        {
          v254 = a3;
          v255 = v5;
          v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

          v42 = objc_allocWithZone(SignedParticipantPayload);
          outlined copy of Data._Representation(v39, v41);
          v43 = Data._bridgeToObjectiveC()().super.isa;
          v257 = v39;
          outlined consume of Data._Representation(v39, v41);
          v44 = [v42 initWithData_];

          if (v44)
          {
            v256 = v41;
            v45 = [v44 signature];
            a5 = v263;
            if (v45)
            {
              v46 = v45;
              v252 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v253 = v47;

              v48 = [v44 payload];
              if (v48)
              {
                v251 = v48;
                v49 = [v48 channelIdentifier];
                if (v49)
                {
                  v50 = v49;
                  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v53 = v52;
                }

                else
                {
                  v51 = 0;
                  v53 = 0;
                }

                v103 = [a2 identifier];
                if (!v103)
                {
                  v107 = v44;
                  v108 = v256;

                  if (one-time initialization token for logger != -1)
                  {
                    swift_once();
                  }

                  v109 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v109, logger);
                  v110 = a2;
                  v111 = Logger.logObject.getter();
                  v112 = static os_log_type_t.error.getter();

                  v113 = os_log_type_enabled(v111, v112);
                  v114 = v261;
                  v115 = v263;
                  if (v113)
                  {
                    v116 = swift_slowAlloc();
                    v117 = swift_slowAlloc();
                    *v116 = 138412290;
                    *(v116 + 4) = v110;
                    *v117 = v110;
                    v118 = v110;
                    _os_log_impl(&dword_220099000, v111, v112, "Channel identifier of channel %@ was nil", v116, 0xCu);
                    outlined destroy of UUID?(v117, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                    v119 = v117;
                    v36 = v267;
                    MEMORY[0x223D77FF0](v119, -1, -1);
                    MEMORY[0x223D77FF0](v116, -1, -1);
                  }

                  outlined consume of Data._Representation(v259, v260);
                  outlined consume of Data._Representation(v268, v36);
                  outlined consume of Data._Representation(v257, v108);
                  outlined consume of Data._Representation(v252, v253);

                  goto LABEL_94;
                }

                v104 = v103;
                v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v250 = v106;

                if (v53)
                {
                  if (v105 == v51 && v53 == v250)
                  {

                    goto LABEL_59;
                  }

                  v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v120)
                  {
LABEL_59:
                    v121 = &selRef_executeRequest_error_;
                    v122 = [v251 presenceIdentifier];
                    if (v122)
                    {
                      v123 = v122;
                      v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v126 = v125;

                      v121 = &selRef_executeRequest_error_;
                    }

                    else
                    {
                      v124 = 0;
                      v126 = 0;
                    }

                    v136 = [a2 v121[371]];
                    if (!v136)
                    {
                      v141 = v44;
                      v142 = v256;

                      v143 = v263;
                      if (one-time initialization token for logger != -1)
                      {
                        swift_once();
                      }

                      v144 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v144, logger);
                      v145 = a2;
                      v146 = Logger.logObject.getter();
                      v147 = static os_log_type_t.error.getter();

                      v148 = os_log_type_enabled(v146, v147);
                      v149 = v261;
                      if (v148)
                      {
                        v150 = swift_slowAlloc();
                        v151 = swift_slowAlloc();
                        *v150 = 138412290;
                        *(v150 + 4) = v145;
                        *v151 = v145;
                        v152 = v145;
                        _os_log_impl(&dword_220099000, v146, v147, "Presence identifier of channel %@ was nil", v150, 0xCu);
                        outlined destroy of UUID?(v151, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                        v153 = v151;
                        v36 = v267;
                        MEMORY[0x223D77FF0](v153, -1, -1);
                        MEMORY[0x223D77FF0](v150, -1, -1);
                      }

                      outlined consume of Data._Representation(v259, v260);
                      outlined consume of Data._Representation(v268, v36);
                      outlined consume of Data._Representation(v257, v142);
                      outlined consume of Data._Representation(v252, v253);

                      v154 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
                      v62 = *(*(v154 - 8) + 56);
                      v155 = *MEMORY[0x277D85DE8];
                      v64 = v154;
                      v65 = v143;
                      goto LABEL_22;
                    }

                    v137 = v136;
                    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v140 = v139;

                    v115 = v263;
                    if (v126)
                    {
                      if (v138 == v124 && v126 == v140)
                      {

LABEL_78:
                        v157 = v251;
                        v158 = [v251 tokenUri];
                        if (v158)
                        {
                          v249 = v140;
                          v159 = v158;
                          v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v162 = v161;

                          [v157 timestamp];
                          v163 = v266;
                          Date.init(timeIntervalSince1970:)();
                          outlined init with copy of Date?(a4, v14);
                          v164 = v262;
                          v165 = v258;
                          if ((*(v262 + 48))(v14, 1, v258) == 1)
                          {
                            v166 = v44;
                            v167 = v256;

                            outlined destroy of UUID?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                            v168 = v259;
                            if (one-time initialization token for logger != -1)
                            {
                              swift_once();
                            }

                            v169 = type metadata accessor for Logger();
                            __swift_project_value_buffer(v169, logger);
                            v170 = Logger.logObject.getter();
                            v171 = static os_log_type_t.error.getter();
                            v172 = os_log_type_enabled(v170, v171);
                            v173 = v260;
                            v174 = v266;
                            v175 = v263;
                            if (v172)
                            {
                              v176 = swift_slowAlloc();
                              *v176 = 0;
                              _os_log_impl(&dword_220099000, v170, v171, "Server time was nil", v176, 2u);
                              MEMORY[0x223D77FF0](v176, -1, -1);
                              outlined consume of Data._Representation(v268, v267);

                              outlined consume of Data._Representation(v252, v253);
                              outlined consume of Data._Representation(v257, v167);
                              outlined consume of Data._Representation(v168, v173);
                            }

                            else
                            {
                              outlined consume of Data._Representation(v168, v260);
                              outlined consume of Data._Representation(v257, v167);
                              outlined consume of Data._Representation(v268, v267);

                              outlined consume of Data._Representation(v252, v253);
                            }

                            (*(v262 + 8))(v174, v258);
                            v203 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
                            result = (*(*(v203 - 8) + 56))(v175, 1, 1, v203);
                            goto LABEL_117;
                          }

                          v190 = *(v164 + 32);
                          v190(v265, v14, v165);
                          static SKAPresentDevicesManager.mostRecentAssertionTime(for:withDevices:)(v160, v162, v254, v264);
                          Date.timeIntervalSince1970.getter();
                          v192 = v191;
                          Date.timeIntervalSince1970.getter();
                          if (v192 <= v193)
                          {
                            v204 = v162;
                            Date.timeIntervalSince1970.getter();
                            if (vabdd_f64(v205, v23) >= 600.0)
                            {

                              if (one-time initialization token for logger != -1)
                              {
                                swift_once();
                              }

                              v219 = type metadata accessor for Logger();
                              __swift_project_value_buffer(v219, logger);
                              v195 = Logger.logObject.getter();
                              v196 = static os_log_type_t.default.getter();
                              v220 = os_log_type_enabled(v195, v196);
                              v198 = v263;
                              v199 = v261;
                              v200 = v256;
                              if (!v220)
                              {
                                goto LABEL_116;
                              }

                              v201 = swift_slowAlloc();
                              *v201 = 0;
                              v202 = "Assertion time deviated too much from server received time! Asserting device clock out of sync or replay attack";
                            }

                            else
                            {
                              Date.timeIntervalSince1970.getter();
                              v207 = v206;
                              Date.timeIntervalSince1970.getter();
                              if (v207 - v208 < 86400.0)
                              {
                                v255 = v44;
                                v209 = [v251 clientPayload];
                                if (v209)
                                {
                                  v210 = v209;
                                  v211 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                                  v213 = v212;

                                  v214 = objc_allocWithZone(MEMORY[0x277D68108]);
                                  outlined copy of Data._Representation(v211, v213);
                                  v215 = Data._bridgeToObjectiveC()().super.isa;
                                  outlined consume of Data._Representation(v211, v213);
                                  v216 = [v214 initWithData_];

                                  v217 = objc_opt_self();
                                  v269[0] = 0;
                                  if (![v217 isClientPayloadValid:v216 withError:v269])
                                  {
                                    v236 = v269[0];

                                    v237 = _convertNSErrorToError(_:)();

                                    swift_willThrow();
                                    if (one-time initialization token for logger != -1)
                                    {
                                      swift_once();
                                    }

                                    v238 = type metadata accessor for Logger();
                                    __swift_project_value_buffer(v238, logger);
                                    v239 = v237;
                                    v240 = Logger.logObject.getter();
                                    v241 = static os_log_type_t.error.getter();

                                    if (os_log_type_enabled(v240, v241))
                                    {
                                      v242 = swift_slowAlloc();
                                      v243 = swift_slowAlloc();
                                      *v242 = 138412290;
                                      v244 = v237;
                                      v245 = _swift_stdlib_bridgeErrorToNSError();
                                      *(v242 + 4) = v245;
                                      *v243 = v245;
                                      _os_log_impl(&dword_220099000, v240, v241, "Incoming payload failed validation, payload was likely too large: %@", v242, 0xCu);
                                      outlined destroy of UUID?(v243, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                                      MEMORY[0x223D77FF0](v243, -1, -1);
                                      MEMORY[0x223D77FF0](v242, -1, -1);
                                    }

                                    outlined consume of Data._Representation(v268, v267);

                                    outlined consume of Data._Representation(v252, v253);
                                    outlined consume of Data._Representation(v211, v213);
                                    outlined consume of Data._Representation(v257, v256);
                                    outlined consume of Data._Representation(v259, v260);
                                    v246 = *(v262 + 8);
                                    v247 = v258;
                                    v246(v264, v258);
                                    v246(v265, v247);
                                    v246(v266, v247);
                                    v248 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
                                    result = (*(*(v248 - 8) + 56))(v263, 1, 1, v248);
                                    goto LABEL_117;
                                  }

                                  v218 = v269[0];
                                  outlined consume of Data._Representation(v268, v267);

                                  outlined consume of Data._Representation(v211, v213);
                                }

                                else
                                {

                                  v216 = [objc_allocWithZone(MEMORY[0x277D68108]) initWithData_];
                                  if (one-time initialization token for logger != -1)
                                  {
                                    swift_once();
                                  }

                                  v227 = type metadata accessor for Logger();
                                  __swift_project_value_buffer(v227, logger);
                                  v228 = Logger.logObject.getter();
                                  v229 = static os_log_type_t.default.getter();
                                  if (os_log_type_enabled(v228, v229))
                                  {
                                    v230 = swift_slowAlloc();
                                    *v230 = 0;
                                    _os_log_impl(&dword_220099000, v228, v229, "Incoming present device has no client-specified payload", v230, 2u);
                                    MEMORY[0x223D77FF0](v230, -1, -1);
                                  }

                                  outlined consume of Data._Representation(v268, v267);
                                }

                                outlined consume of Data._Representation(v257, v256);
                                outlined consume of Data._Representation(v259, v260);
                                v231 = *(v262 + 8);
                                v232 = v258;
                                v231(v264, v258);
                                v231(v265, v232);
                                v233 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
                                v234 = v263;
                                v190(v263 + *(v233 + 32), v266, v232);
                                v235 = v253;
                                *v234 = v252;
                                v234[1] = v235;
                                v234[2] = v251;
                                v234[3] = v216;
                                v234[4] = v160;
                                v234[5] = v204;
                                result = (*(*(v233 - 8) + 56))(v234, 0, 1, v233);
LABEL_117:
                                v226 = *MEMORY[0x277D85DE8];
                                return result;
                              }

                              if (one-time initialization token for logger != -1)
                              {
                                swift_once();
                              }

                              v221 = type metadata accessor for Logger();
                              __swift_project_value_buffer(v221, logger);
                              v195 = Logger.logObject.getter();
                              v196 = static os_log_type_t.error.getter();
                              v222 = os_log_type_enabled(v195, v196);
                              v198 = v263;
                              v199 = v261;
                              v200 = v256;
                              if (!v222)
                              {
LABEL_116:
                                outlined consume of Data._Representation(v268, v267);

                                outlined consume of Data._Representation(v252, v253);
                                outlined consume of Data._Representation(v257, v200);
                                outlined consume of Data._Representation(v259, v260);
                                v223 = *(v262 + 8);
                                v224 = v258;
                                v223(v264, v258);
                                v223(v265, v224);
                                v223(v163, v224);
                                v225 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
                                result = (*(*(v225 - 8) + 56))(v198, 1, 1, v225);
                                goto LABEL_117;
                              }

                              v201 = swift_slowAlloc();
                              *v201 = 0;
                              v202 = "Assertion time is more than a day in the future, dropping. Our clock might be out of sync";
                            }
                          }

                          else
                          {

                            if (one-time initialization token for logger != -1)
                            {
                              swift_once();
                            }

                            v194 = type metadata accessor for Logger();
                            __swift_project_value_buffer(v194, logger);
                            v195 = Logger.logObject.getter();
                            v196 = static os_log_type_t.error.getter();
                            v197 = os_log_type_enabled(v195, v196);
                            v198 = v263;
                            v199 = v261;
                            v200 = v256;
                            if (!v197)
                            {
                              goto LABEL_116;
                            }

                            v201 = swift_slowAlloc();
                            *v201 = 0;
                            v202 = "Assertion time is older than existing presence, dropping";
                          }

                          _os_log_impl(&dword_220099000, v195, v196, v202, v201, 2u);
                          MEMORY[0x223D77FF0](v201, -1, -1);
                          goto LABEL_116;
                        }

                        v107 = v44;
                        v177 = v256;

                        if (one-time initialization token for logger != -1)
                        {
                          swift_once();
                        }

                        v186 = type metadata accessor for Logger();
                        __swift_project_value_buffer(v186, logger);
                        v179 = Logger.logObject.getter();
                        v180 = static os_log_type_t.error.getter();
                        v187 = os_log_type_enabled(v179, v180);
                        v183 = v259;
                        v182 = v260;
                        if (!v187)
                        {
                          goto LABEL_93;
                        }

                        v184 = swift_slowAlloc();
                        *v184 = 0;
                        v185 = "Missing token URI";
                        goto LABEL_92;
                      }

                      v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v156)
                      {
                        goto LABEL_78;
                      }
                    }

                    v107 = v44;
                    v177 = v256;

                    if (one-time initialization token for logger != -1)
                    {
                      swift_once();
                    }

                    v178 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v178, logger);
                    v179 = Logger.logObject.getter();
                    v180 = static os_log_type_t.error.getter();
                    v181 = os_log_type_enabled(v179, v180);
                    v183 = v259;
                    v182 = v260;
                    if (!v181)
                    {
                      goto LABEL_93;
                    }

                    v184 = swift_slowAlloc();
                    *v184 = 0;
                    v185 = "Payload presence ID does not match the identifier of the channel it was published on";
LABEL_92:
                    _os_log_impl(&dword_220099000, v179, v180, v185, v184, 2u);
                    MEMORY[0x223D77FF0](v184, -1, -1);
LABEL_93:
                    outlined consume of Data._Representation(v183, v182);
                    outlined consume of Data._Representation(v268, v267);
                    outlined consume of Data._Representation(v257, v177);
                    outlined consume of Data._Representation(v252, v253);

LABEL_94:
                    v188 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
                    v62 = *(*(v188 - 8) + 56);
                    v189 = *MEMORY[0x277D85DE8];
                    v64 = v188;
                    v65 = v115;
                    goto LABEL_22;
                  }
                }

                v107 = v44;
                v127 = v256;

                if (one-time initialization token for logger != -1)
                {
                  swift_once();
                }

                v128 = type metadata accessor for Logger();
                __swift_project_value_buffer(v128, logger);
                v129 = Logger.logObject.getter();
                v130 = static os_log_type_t.error.getter();
                v131 = os_log_type_enabled(v129, v130);
                v132 = v260;
                v133 = v261;
                v134 = v259;
                v115 = v263;
                if (v131)
                {
                  v135 = swift_slowAlloc();
                  *v135 = 0;
                  _os_log_impl(&dword_220099000, v129, v130, "Payload channel ID does not match the channel it was published on", v135, 2u);
                  MEMORY[0x223D77FF0](v135, -1, -1);
                }

                outlined consume of Data._Representation(v134, v132);
                outlined consume of Data._Representation(v268, v267);
                outlined consume of Data._Representation(v257, v127);
                outlined consume of Data._Representation(v252, v253);

                goto LABEL_94;
              }

              v84 = v44;
              v96 = v256;
              v91 = v261;
              if (one-time initialization token for logger != -1)
              {
                swift_once();
              }

              v97 = type metadata accessor for Logger();
              __swift_project_value_buffer(v97, logger);
              v87 = Logger.logObject.getter();
              v98 = static os_log_type_t.error.getter();
              v99 = os_log_type_enabled(v87, v98);
              v101 = v259;
              v100 = v260;
              if (v99)
              {
                v102 = swift_slowAlloc();
                *v102 = 0;
                _os_log_impl(&dword_220099000, v87, v98, "Could not retrieve decrypted payload from signed payload", v102, 2u);
                MEMORY[0x223D77FF0](v102, -1, -1);
              }

              outlined consume of Data._Representation(v101, v100);
              outlined consume of Data._Representation(v268, v267);
              outlined consume of Data._Representation(v257, v96);
              v94 = v252;
              v95 = v253;
            }

            else
            {
              v84 = v44;
              v85 = v256;
              if (one-time initialization token for logger != -1)
              {
                swift_once();
              }

              v86 = type metadata accessor for Logger();
              __swift_project_value_buffer(v86, logger);
              v87 = Logger.logObject.getter();
              v88 = static os_log_type_t.error.getter();
              v89 = os_log_type_enabled(v87, v88);
              v90 = v260;
              v91 = v261;
              v92 = v259;
              if (v89)
              {
                v93 = swift_slowAlloc();
                *v93 = 0;
                _os_log_impl(&dword_220099000, v87, v88, "Payload data missing signature", v93, 2u);
                MEMORY[0x223D77FF0](v93, -1, -1);
              }

              outlined consume of Data._Representation(v92, v90);
              outlined consume of Data._Representation(v268, v267);
              v94 = v257;
              v95 = v85;
            }

            outlined consume of Data._Representation(v94, v95);

            goto LABEL_21;
          }

          v71 = v263;
          v73 = v261;
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v77 = type metadata accessor for Logger();
          __swift_project_value_buffer(v77, logger);
          v68 = Logger.logObject.getter();
          v78 = static os_log_type_t.error.getter();
          v79 = os_log_type_enabled(v68, v78);
          v80 = v260;
          if (v79)
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&dword_220099000, v68, v78, "Could not construct signed payload", v81, 2u);
            MEMORY[0x223D77FF0](v81, -1, -1);
          }

          outlined consume of Data._Representation(v259, v80);
          outlined consume of Data._Representation(v268, v267);
          v75 = v257;
          v76 = v41;
        }

        else
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v67 = type metadata accessor for Logger();
          __swift_project_value_buffer(v67, logger);
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.error.getter();
          v70 = os_log_type_enabled(v68, v69);
          v71 = v263;
          v72 = v260;
          v73 = v261;
          if (v70)
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_220099000, v68, v69, "Payload data failed to decrypt", v74, 2u);
            MEMORY[0x223D77FF0](v74, -1, -1);
          }

          outlined consume of Data._Representation(v259, v72);
          v76 = v267;
          v75 = v268;
        }

        outlined consume of Data._Representation(v75, v76);

        v82 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
        v62 = *(*(v82 - 8) + 56);
        v83 = *MEMORY[0x277D85DE8];
        v64 = v82;
        v65 = v71;
        goto LABEL_22;
      }

      outlined consume of Data._Representation(v30, v32);
      a5 = v263;
      v27 = v267;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, logger);
    v55 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_220099000, v55, v59, "Failed to instantiate peer key for decryption", v60, 2u);
      MEMORY[0x223D77FF0](v60, -1, -1);
    }

    outlined consume of Data._Representation(v268, v27);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, logger);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_220099000, v55, v56, "Payload data empty", v57, 2u);
      MEMORY[0x223D77FF0](v57, -1, -1);
    }
  }

LABEL_21:
  v61 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
  v62 = *(*(v61 - 8) + 56);
  v63 = *MEMORY[0x277D85DE8];
  v64 = v61;
  v65 = a5;
LABEL_22:

  return v62(v65, 1, 1, v64);
}

uint64_t closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v7[9] = *(v9 + 64);
  v7[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), 0, 0);
}

uint64_t closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  v21 = v4;
  v6 = v0[4];
  v5 = v0[5];
  v23 = v0[9];
  v7 = v0[3];
  v24 = v0[6];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v22 = *(v3 + 16);
  v22(v2, v5, v4);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v0[12] = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  v20 = *(v3 + 32);
  v20(v10 + v9, v2, v4);
  *(v10 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v22(v2, v5, v4);
  v11 = swift_allocObject();
  v0[13] = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v24;
  v20(v11 + v9, v2, v21);
  v12 = *(MEMORY[0x277D54938] + 4);
  v13 = v6;
  swift_bridgeObjectRetain_n();
  v14 = v13;

  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  v16 = v0[11];
  v17 = v0[2];
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821B5F00](v17, v16, &async function pointer to partial apply for closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), v10, &async function pointer to partial apply for closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), v11, v18);
}

void closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[12];
    v5 = v2[13];
    v8 = v2 + 10;
    v7 = v2[10];
    outlined destroy of UUID?(v8[1], &_sScPSgMd, &_sScPSgMR);

    v9 = *(v4 + 8);

    v9();
  }
}

uint64_t closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV__GMd, &_sScS12ContinuationV11YieldResultOy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV__GMR);
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v8 = *(v7 + 64) + 15;
  v5[29] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySo6IDSURICSo28IDSPayloadVerificationResultCGs5Error_pGMd, &_sScCySDySo6IDSURICSo28IDSPayloadVerificationResultCGs5Error_pGMR);
  v5[30] = v9;
  v10 = *(v9 - 8);
  v5[31] = v10;
  v11 = *(v10 + 64) + 15;
  v5[32] = swift_task_alloc();
  v12 = *(type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext() - 8);
  v5[33] = v12;
  v13 = *(v12 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), 0, 0);
}

uint64_t closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v51 = v0;
  v1 = v0[23];
  v49 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  v0[39] = v2;
  if (v2)
  {
    v3 = v0[38];
    v43 = v0[37];
    v4 = v0[33];
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v46 = *(v4 + 72);
    do
    {
      outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v5, v0[38]);
      v6 = *(v3 + 32);
      v7 = *(v3 + 40);
      v8 = objc_allocWithZone(MEMORY[0x277D18A48]);
      v9 = MEMORY[0x223D76B00](v6, v7);
      v10 = [v8 initWithPrefixedURI_];

      if (v10)
      {
        v11 = *v0[38];
        v12 = *(v3 + 8);
        v13 = [*(v3 + 16) data];
        if (!v13)
        {
          __break(1u);
          return MEMORY[0x282200938](v13);
        }

        v14 = v13;
        v47 = v0[38];
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = objc_allocWithZone(MEMORY[0x277D189E0]);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v20 = Data._bridgeToObjectiveC()().super.isa;
        v21 = [v18 initWithSignedPayload:isa payloadData:v20 remoteURI:v10];

        v0 = v45;
        outlined consume of Data._Representation(v15, v17);

        v22 = outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v47);
        v3 = v44;
        if (v21)
        {
          MEMORY[0x223D76BD0](v22);
          if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v36 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v24 = v0[37];
        v23 = v0[38];
        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, logger);
        outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v23, v24);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        v28 = os_log_type_enabled(v26, v27);
        v29 = v0[37];
        if (v28)
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v50 = v31;
          *v30 = 136315138;
          v32 = *(v43 + 32);
          v33 = *(v43 + 40);

          outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v29);
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v50);

          *(v30 + 4) = v34;
          _os_log_impl(&dword_220099000, v26, v27, "IDSURI for tokenURI %s was nil", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          v35 = v31;
          v3 = v44;
          MEMORY[0x223D77FF0](v35, -1, -1);
          v0 = v45;
          MEMORY[0x223D77FF0](v30, -1, -1);
        }

        else
        {

          outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v29);
        }

        outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v0[38]);
      }

      v5 += v46;
      --v2;
    }

    while (v2);
  }

  v37 = v0[31];
  v38 = v0[32];
  v39 = v0[30];
  v48 = *(v0[24] + OBJC_IVAR___SKAPresentDevicesManager_messagingProvider);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSPayloadVerificationContext, 0x277D189E0);
  v40 = Array._bridgeToObjectiveC()().super.isa;
  v0[40] = v40;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  swift_continuation_init();
  v0[17] = v39;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo6IDSURICSo28IDSPayloadVerificationResultCGMd, &_sSDySo6IDSURICSo28IDSPayloadVerificationResultCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  CheckedContinuation.init(continuation:function:)();
  (*(v37 + 32))(boxed_opaque_existential_0, v38, v39);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?, @unowned NSDictionary?) -> () with result type [IDSURI : IDSPayloadVerificationResult];
  v0[13] = &block_descriptor_3;
  [v48 verifySignedPayloads:v40 completion:?];
  (*(v37 + 8))(boxed_opaque_existential_0, v39);
  v13 = v0 + 2;

  return MEMORY[0x282200938](v13);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  }

  else
  {
    v3 = closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v31 = v0;
  v1 = v0[40];
  v2 = v0[41];
  swift_willThrow();

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = v0[41];
  v4 = v0[26];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);

  v6 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[41];
  if (v9)
  {
    v11 = v0[26];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v12 = 136315394;
    v15 = MEMORY[0x223D76C00](v11, MEMORY[0x277D837D0]);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v30);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_220099000, v7, v8, "Signature verification for URIs (%s) failed with error %@", v12, 0x16u);
    outlined destroy of UUID?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223D77FF0](v14, -1, -1);
    MEMORY[0x223D77FF0](v12, -1, -1);
  }

  else
  {
  }

  v21 = v0[37];
  v20 = v0[38];
  v23 = v0[35];
  v22 = v0[36];
  v24 = v0[34];
  v25 = v0[32];
  v26 = v0[29];
  v27 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  AsyncStream.Continuation.finish()();

  v28 = v0[1];

  return v28();
}

void closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v82 = v0;
  v71 = v0 + 18;
  v1 = v0[40];
  v80 = v0[18];
  if ((v80 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaDictionary.makeIterator()();

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v80 = v2 | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(v80 + 32);
    v4 = ~v6;
    v7 = *(v80 + 64);

    v3 = v80 + 64;
    if (-v6 < 64)
    {
      v8 = ~(-1 << -v6);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & v7;
  }

  v9 = 0;
  v10 = (v4 + 64) >> 6;
  v69 = (v0[28] + 8);
  v77 = v0[35];
  v70 = v0[33];
  v72 = v3;
  v73 = v0;
  v74 = v10;
  while ((v80 & 0x8000000000000000) != 0)
  {
    v19 = __CocoaDictionary.Iterator.next()();
    if (!v19)
    {
      goto LABEL_41;
    }

    v21 = v20;
    v71[2] = v19;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSURI, 0x277D18A48);
    swift_dynamicCast();
    v22 = v71[1];
    v71[4] = v21;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSPayloadVerificationResult, 0x277D189E8);
    v17 = v22;
    swift_dynamicCast();
    v18 = v71[3];
    v13 = v9;
    v14 = v5;
    if (!v17)
    {
LABEL_41:
      sub_2200A4D24();
      v61 = v0[37];
      v60 = v0[38];
      v63 = v0[35];
      v62 = v0[36];
      v64 = v0[34];
      v65 = v0[32];
      v66 = v0[29];
      v67 = v0[25];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
      AsyncStream.Continuation.finish()();

      v68 = v0[1];

      v68();
      return;
    }

LABEL_18:
    v79 = v17;
    v23 = [v18 uri];
    v24 = [v23 prefixedURI];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = [v18 error];
    v78 = v18;
    if (v28)
    {
      v29 = v28;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, logger);

      v31 = v29;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v75 = v14;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v81 = v36;
        *v34 = 136315394;
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v81);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2112;
        v38 = v31;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v39;
        *v35 = v39;
        _os_log_impl(&dword_220099000, v32, v33, "Signature verification for %s failed with error %@", v34, 0x16u);
        outlined destroy of UUID?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v40 = v35;
        v3 = v72;
        MEMORY[0x223D77FF0](v40, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v0 = v73;
        MEMORY[0x223D77FF0](v36, -1, -1);
        MEMORY[0x223D77FF0](v34, -1, -1);

        v9 = v13;
        v10 = v74;
        v5 = v75;
      }

      else
      {

        v9 = v13;
        v5 = v14;
        v10 = v74;
      }
    }

    else
    {
      v76 = v14;
      if ([v18 verified])
      {
        if (v0[39])
        {
          v41 = 0;
          v42 = v0[23] + ((*(v70 + 80) + 32) & ~*(v70 + 80));
          v43 = *(v70 + 72);
          while (1)
          {
            outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v42, v0[35]);
            v44 = *(v77 + 32) == v25 && *(v77 + 40) == v27;
            if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            ++v41;
            v45 = v0[39];
            outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v0[35]);
            v42 += v43;
            if (v41 == v45)
            {
              goto LABEL_32;
            }
          }

          v54 = v0[35];
          v53 = v0[36];
          v55 = v0[34];
          v56 = v0[29];
          v57 = v73[27];
          v58 = v73[25];

          v59 = v54;
          v10 = v74;
          outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(v59, v53);
          outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v53, v55);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
          AsyncStream.Continuation.yield(_:)();

          v0 = v73;
          (*v69)(v56, v57);
          outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v53);
        }

        else
        {
LABEL_32:
        }

        v9 = v13;
        v5 = v76;
        v3 = v72;
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        __swift_project_value_buffer(v46, logger);

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v81 = v50;
          *v49 = 136315138;
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v81);

          *(v49 + 4) = v51;
          v0 = v73;
          _os_log_impl(&dword_220099000, v47, v48, "Payload data signature for %s failed to verify", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          v52 = v50;
          v3 = v72;
          MEMORY[0x223D77FF0](v52, -1, -1);
          MEMORY[0x223D77FF0](v49, -1, -1);
        }

        else
        {
        }

        v9 = v13;
        v5 = v76;
      }
    }
  }

  v11 = v9;
  v12 = v5;
  v13 = v9;
  if (v5)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v12)));
    v16 = *(*(v80 + 56) + v15);
    v17 = *(*(v80 + 48) + v15);
    v18 = v16;
    if (!v17)
    {
      goto LABEL_41;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_41;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = type metadata accessor for ContinuousClock();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), 0, 0);
}

uint64_t closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v1 = v0[10];
  v2 = (v0[5] + OBJC_IVAR___SKAPresentDevicesManager_verifyPayloadTimeout);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  v6 = v0[10];

  return specialized Clock.sleep(for:tolerance:)(v4, v3, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  v5 = v2[10];
  v6 = v2[9];
  v7 = v2[8];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v16 = v0;
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = v0[6];
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[6];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      v8 = MEMORY[0x223D76C00](v5, MEMORY[0x277D837D0]);
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_220099000, v3, v4, "Participant payload verification for URIs (%s) timed out", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223D77FF0](v7, -1, -1);
      MEMORY[0x223D77FF0](v6, -1, -1);
    }

    v11 = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
    AsyncStream.Continuation.finish()();
  }

  v12 = v0[10];

  v13 = v0[1];

  return v13();
}

uint64_t static SKAPresentDevicesManager.mostRecentAssertionTime(for:withDevices:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55 - v15;
  v17 = objc_opt_self();
  v18 = MEMORY[0x223D76B00](a1, a2);
  isa = [v17 deviceTokenForTokenURI_];

  if (isa)
  {
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    outlined copy of Data._Representation(v20, v22);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v57 = v22;
    v58 = v20;
    outlined consume of Data._Representation(v20, v22);
  }

  else
  {
    v57 = 0xF000000000000000;
    v58 = 0;
  }

  v63 = specialized static SKAPresentDevicesManager.deviceIdentifier(for:)(isa);
  v65 = v23;

  v61 = a4;
  v62 = v8;
  v59 = v16;
  v60 = v9;
  v55 = v12;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    Set.Iterator.init(_cocoa:)();
    result = v68;
    v25 = v69;
    v26 = v70;
    v27 = v71;
    v28 = v72;
  }

  else
  {
    v29 = -1 << *(a3 + 32);
    v25 = a3 + 56;
    v26 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(a3 + 56);

    v27 = 0;
  }

  v56 = v26;
  v32 = (v26 + 64) >> 6;
  v64 = result;
  while (result < 0)
  {
    v38 = __CocoaSet.Iterator.next()();
    if (!v38 || (v66 = v38, type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118), swift_dynamicCast(), v37 = v67, v35 = v27, v36 = v28, !v67))
    {
LABEL_29:
      sub_2200A4D24();

      v46 = v59;
      v45 = v60;
      v47 = v62;
      (*(v60 + 56))(v59, 1, 1, v62);
      Date.init(timeIntervalSince1970:)();
      outlined consume of Data?(v58, v57);
      result = (*(v45 + 48))(v46, 1, v47);
      if (result != 1)
      {
        return outlined destroy of UUID?(v46, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      return result;
    }

LABEL_22:
    v39 = [v37 deviceIdentifier];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (v65)
    {
      if (v40 == v63 && v65 == v42)
      {

LABEL_32:
        sub_2200A4D24();

        v48 = [v37 assertionTime];

        v49 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        outlined consume of Data?(v58, v57);

        v51 = v59;
        v50 = v60;
        v52 = *(v60 + 32);
        v53 = v49;
        v54 = v62;
        v52(v59, v53, v62);
        (*(v50 + 56))(v51, 0, 1, v54);
        return (v52)(v61, v51, v54);
      }

      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v44)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    v27 = v35;
    v28 = v36;
    result = v64;
  }

  v33 = v27;
  v34 = v28;
  v35 = v27;
  if (v28)
  {
LABEL_18:
    v36 = (v34 - 1) & v34;
    v37 = *(*(result + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
    if (!v37)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      goto LABEL_29;
    }

    v34 = *(v25 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

id SKAPresentDevicesManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SKAPresentDevicesManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SKAPresentDevicesManager.activePresentDevices(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](SKAPresentDevicesManager.activePresentDevices(for:), 0, 0);
}

uint64_t SKAPresentDevicesManager.activePresentDevices(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo15SKPresentDeviceCGMd, &_sShySo15SKPresentDeviceCGMR);
  *v3 = v0;
  v3[1] = SKAPresentDevicesManager.activePresentDevices(for:);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001ALL, 0x80000002201ACFB0, partial apply for closure #1 in SKAPresentDevicesManager.activePresentDevices(for:), v1, v4);
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](SKAPresentDevicesManager.activePresentDevices(for:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t closure #1 in SKAPresentDevicesManager.activePresentDevices(for:)(uint64_t a1, char *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyShySo15SKPresentDeviceCGs5NeverOGMd, &_sScCyShySo15SKPresentDeviceCGs5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  (*(v7 + 16))(&v18 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = *&a2[OBJC_IVAR___SKAPresentDevicesManager_queue];
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = partial apply for closure #1 in closure #1 in SKAPresentDevicesManager.activePresentDevices(for:);
  v14[5] = v12;
  v15 = a2;
  v16 = a3;

  SKAAsyncQueue.enqueue(_:_:)("activePresentDevices(for:with:)", 31, 2, &closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)partial apply, v14);
}

uint64_t closure #1 in closure #1 in SKAPresentDevicesManager.activePresentDevices(for:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyShySo15SKPresentDeviceCGs5NeverOGMd, &_sScCyShySo15SKPresentDeviceCGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t partial apply for closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)(v2, v3, v5, v4);
}

uint64_t partial apply for closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)(v2, v3);
}

uint64_t partial apply for closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized static SKAPresentDevicesManager.deviceIdentifier(for:)(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v7 = a1;
  result = [v7 ska_hexString];
  if (result)
  {
    v9 = result;
    v10 = [result ska_sha256Hash];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v19[0] = v11;
    v19[1] = v13;
    static String.Encoding.ascii.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v14 = StringProtocol.cString(using:)();
    (*(v3 + 8))(v6, v2);

    if (v14)
    {
      v15 = v14 + 32;
    }

    else
    {
      v15 = 0;
    }

    v16 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];

    v17 = [v16 UUIDString];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v18;
  }

  __break(1u);
  return result;
}

void *specialized SKAPresentDevicesManager.createPresentDevice(with:on:)(void *a1)
{
  v3 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v90 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v8 = a1[4];
  v7 = a1[5];
  v9 = MEMORY[0x223D76B00](v8, v7);
  v10 = [v6 deviceTokenForTokenURI_];

  if (v10)
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = *(v1 + OBJC_IVAR___SKAPresentDevicesManager_messagingProvider);
  v15 = [v14 deviceToken];
  if (v15)
  {
    v16 = v15;
    v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v94 = 0;
    v18 = 0xF000000000000000;
  }

  v93 = v11;
  if (v13 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    outlined copy of Data._Representation(v11, v13);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v11, v13);
  }

  v91 = specialized static SKAPresentDevicesManager.deviceIdentifier(for:)(isa);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_23;
  }

  v92 = v18;
  v89 = v3;
  if (v18 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v23 = v7;
    v24 = a1;
    v25 = v13;
    v26 = v8;
    v27 = v94;
    outlined copy of Data._Representation(v94, v18);
    v22 = Data._bridgeToObjectiveC()().super.isa;
    v28 = v27;
    v8 = v26;
    v13 = v25;
    a1 = v24;
    v7 = v23;
    outlined consume of Data?(v28, v18);
  }

  v29 = specialized static SKAPresentDevicesManager.deviceIdentifier(for:)(v22);
  v31 = v30;

  if (!v31)
  {

    v18 = v92;
LABEL_23:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, logger);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v93;
    if (v50)
    {
      v52 = v18;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_220099000, v48, v49, "Could not get device identifiers", v53, 2u);
      MEMORY[0x223D77FF0](v53, -1, -1);
      outlined consume of Data?(v51, v13);
      v54 = v94;
      v55 = v52;
    }

    else
    {
      outlined consume of Data?(v93, v13);
      v54 = v94;
      v55 = v18;
    }

    goto LABEL_28;
  }

  v32 = MEMORY[0x223D76B00](v8, v7);
  v33 = [v6 handleForTokenURI_];

  if (!v33)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, logger);
    v58 = v90;
    outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(a1, v90);
    v48 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    v60 = os_log_type_enabled(v48, v59);
    v61 = v93;
    if (!v60)
    {
      outlined consume of Data?(v93, v13);
      outlined consume of Data?(v94, v92);

      outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v58);
      return 0;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v95 = v63;
    *v62 = 136315138;
    v64 = *(v58 + 32);
    v65 = *(v58 + 40);

    outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v58);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v95);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_220099000, v48, v59, "Could not get handle for token: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x223D77FF0](v63, -1, -1);
    MEMORY[0x223D77FF0](v62, -1, -1);
    outlined consume of Data?(v61, v13);
    v54 = v94;
    v55 = v92;
LABEL_28:
    outlined consume of Data?(v54, v55);

    return 0;
  }

  v88 = v29;
  v85 = v33;
  v86 = [v14 isHandleAvailableToMessageFrom_];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = __swift_project_value_buffer(v34, logger);

  v90 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v87 = v7;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v95 = v40;
    *v39 = 136315138;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v31, &v95);
    _os_log_impl(&dword_220099000, v36, v37, "Self device identifier: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x223D77FF0](v40, -1, -1);
    MEMORY[0x223D77FF0](v39, -1, -1);
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v95 = v44;
    *v43 = 136315138;
    v45 = v91;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v21, &v95);
    _os_log_impl(&dword_220099000, v41, v42, "Other device identifier: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x223D77FF0](v44, -1, -1);
    MEMORY[0x223D77FF0](v43, -1, -1);

    v46 = v89;
  }

  else
  {

    v46 = v89;
    v45 = v91;
  }

  if (v45 == v88 && v21 == v31)
  {
    v67 = 1;
  }

  else
  {
    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v68 = a1[3];
  v69 = *(v46 + 32);
  v70 = objc_allocWithZone(MEMORY[0x277D68118]);
  v71 = v85;
  v72 = MEMORY[0x223D76B00](v45, v21);

  v73 = MEMORY[0x223D76B00](v8, v87);
  v74 = Date._bridgeToObjectiveC()().super.isa;
  LOBYTE(v83) = v67 & 1;
  v75 = [v70 initWithHandle:v71 deviceIdentifier:v72 deviceTokenURI:v73 payload:v68 assertionTime:v74 selfHandle:v86 selfDevice:v83];

  v76 = v75;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  v79 = v76;

  if (os_log_type_enabled(v77, v78))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138412290;
    *(v80 + 4) = v79;
    *v81 = v79;
    v82 = v79;
    _os_log_impl(&dword_220099000, v77, v78, "Constructed SKPresentDevice from payload: %@", v80, 0xCu);
    outlined destroy of UUID?(v81, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v81, -1, -1);
    MEMORY[0x223D77FF0](v80, -1, -1);
  }

  outlined consume of Data?(v93, v13);
  outlined consume of Data?(v94, v92);

  return v79;
}

uint64_t type metadata completion function for SKAPresentDevicesManager.SKAPayloadVerificationContext()
{
  result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for DecryptedParticipantPayload, off_27843D378);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for SKPresencePayload, 0x277D68108);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t objectdestroy_7Tm()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)partial apply()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)(v2, v3);
}

uint64_t partial apply for closure #1 in closure #1 in SKAPresentDevicesManager.activePresentDevices(for:)()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyShySo15SKPresentDeviceCGs5NeverOGMd, &_sScCyShySo15SKPresentDeviceCGs5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in SKAPresentDevicesManager.activePresentDevices(for:)();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(uint64_t a1)
{
  v2 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t partial apply for closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(a1, v6, v7, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OS_dispatch_queue(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?, @unowned Bool) -> () with result type Bool(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

void *SKAPresenceClientProxy.underlyingClient.getter()
{
  v1 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SKAPresenceClientProxy.underlyingClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *SKAPresenceClientProxy.__allocating_init(xpcConnection:queue:delegate:subscriptionManager:presenceManager:invitationManager:databaseManager:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___SKAPresenceClientProxy_underlyingClient] = 0;
  v15 = OBJC_IVAR___SKAPresenceClientProxy_queue;
  v16 = type metadata accessor for SKAAsyncQueue(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v14[v15] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000001BLL, 0x80000002201AD270, 1, 0);
  v19 = [objc_opt_self() clientIDForConnection_];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
  }

  v24 = &v14[OBJC_IVAR___SKAPresenceClientProxy_clientID];
  *v24 = v21;
  v24[1] = v23;
  v34.receiver = v14;
  v34.super_class = v8;
  v25 = objc_msgSendSuper2(&v34, sel_init);
  v26 = objc_allocWithZone(SKAPresenceClient);
  v27 = v25;
  v28 = [v26 initWithXPCConnection:a1 queue:a2 delegate:a3 subscriptionManager:a4 presenceManager:a5 invitationManager:a6 databaseManager:a7 daemonProtocolDelegate:v27];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v29 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  v30 = *&v27[v29];
  *&v27[v29] = v28;

  return v27;
}

char *SKAPresenceClientProxy.init(xpcConnection:queue:delegate:subscriptionManager:presenceManager:invitationManager:databaseManager:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR___SKAPresenceClientProxy_underlyingClient] = 0;
  v15 = OBJC_IVAR___SKAPresenceClientProxy_queue;
  v16 = type metadata accessor for SKAAsyncQueue(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v7[v15] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000001BLL, 0x80000002201AD270, 1, 0);
  v19 = [objc_opt_self() clientIDForConnection_];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
  }

  v24 = &v8[OBJC_IVAR___SKAPresenceClientProxy_clientID];
  *v24 = v21;
  v24[1] = v23;
  v34.receiver = v8;
  v34.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v34, sel_init);
  v26 = objc_allocWithZone(SKAPresenceClient);
  v27 = v25;
  v28 = [v26 initWithXPCConnection:a1 queue:a2 delegate:a3 subscriptionManager:a4 presenceManager:a5 invitationManager:a6 databaseManager:a7 daemonProtocolDelegate:v27];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v29 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  v30 = *&v27[v29];
  *&v27[v29] = v28;

  return v27;
}

void SKAPresenceClientProxy.().init()()
{
  *(v0 + OBJC_IVAR___SKAPresenceClientProxy_underlyingClient) = 0;
  v1 = OBJC_IVAR___SKAPresenceClientProxy_queue;
  v2 = type metadata accessor for SKAAsyncQueue(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + v1) = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000001BLL, 0x80000002201AD270, 1, 0);
  v5 = Selector.description.getter();
  MEMORY[0x223D76B90](v5);

  MEMORY[0x223D76B90](0x64616574736E6920, 0xE90000000000002ELL);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *SKAPresenceClientProxy.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(30);

  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  result = *(v1 + v2);
  if (result)
  {
    v4 = [result description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    MEMORY[0x223D76B90](v5, v7);

    MEMORY[0x223D76B90](15934, 0xE200000000000000);
    return 0xD00000000000001ALL;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8SKHandleCGSgs5Error_pGMd, &_sScCySaySo8SKHandleCGSgs5Error_pGMR);
  v3[29] = v4;
  v5 = *(v4 - 8);
  v3[30] = v5;
  v6 = *(v5 + 64) + 15;
  v3[31] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[32] = v8;
  v3[33] = v7;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:), v8, v7);
}

uint64_t SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)()
{
  v1 = v0[28];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[34] = v4;
  if (v4)
  {
    v5 = v0[30];
    v6 = v0[31];
    v7 = v0[29];
    v9 = v0[26];
    v8 = v0[27];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[35] = v10;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8SKHandleCGSgMd, &_sSaySo8SKHandleCGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKHandle]?;
    v0[13] = &block_descriptor_4;
    [v13 invitedHandlesForPresenceIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 264);
  v5 = *(v1 + 256);
  if (v3)
  {
    v6 = SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:);
  }

  else
  {
    v6 = SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 192);

  v4 = *(v0 + 8);

  return v4(v3);
}

{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[31];
  swift_willThrow();

  swift_getErrorValue();
  v5 = v0[21];
  Error.sanitizedError.getter(v0[22], v0[23]);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  *(v0 + 48) = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:);
  v8 = *(v0 + 32);

  return SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)(v3, v5);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 32);
  v9 = *v2;

  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v10 = a1;
LABEL_3:
    v11 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v10 = 0;
    goto LABEL_3;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = isa;
  v10 = 0;
  a1 = isa;
LABEL_6:
  v13 = *(v5 + 40);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v9 + 8);

  return v14();
}

uint64_t SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15SKPresentDeviceCGSgs5Error_pGMd, &_sScCySaySo15SKPresentDeviceCGSgs5Error_pGMR);
  v3[29] = v4;
  v5 = *(v4 - 8);
  v3[30] = v5;
  v6 = *(v5 + 64) + 15;
  v3[31] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[32] = v8;
  v3[33] = v7;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:), v8, v7);
}

uint64_t SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)()
{
  v1 = v0[28];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[34] = v4;
  if (v4)
  {
    v5 = v0[30];
    v6 = v0[31];
    v7 = v0[29];
    v9 = v0[26];
    v8 = v0[27];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[35] = v10;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15SKPresentDeviceCGSgMd, &_sSaySo15SKPresentDeviceCGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKPresentDevice]?;
    v0[13] = &block_descriptor_4_0;
    [v13 presentDevicesForPresenceIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 264);
  v5 = *(v1 + 256);
  if (v3)
  {
    v6 = SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:);
  }

  else
  {
    v6 = SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKHandle]?(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v13 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      type metadata accessor for OS_dispatch_queue(0, a6, a7);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  *(v0 + 48) = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:);
  v8 = *(v0 + 32);

  return SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)(v3, v5);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 32);
  v9 = *v2;

  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v10 = a1;
LABEL_3:
    v11 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v10 = 0;
    goto LABEL_3;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = isa;
  v10 = 0;
  a1 = isa;
LABEL_6:
  v13 = *(v5 + 40);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v9 + 8);

  return v14();
}

uint64_t SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v5[30] = v6;
  v7 = *(v6 - 8);
  v5[31] = v7;
  v8 = *(v7 + 64) + 15;
  v5[32] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[33] = v10;
  v5[34] = v9;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:), v10, v9);
}

uint64_t SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)()
{
  v1 = v0[29];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[35] = v4;
  if (v4)
  {
    v5 = v0[31];
    v6 = v0[32];
    v7 = v0[30];
    v9 = v0[27];
    v8 = v0[28];
    v14 = v0[25];
    v15 = v0[26];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[36] = v10;
    v0[2] = v0;
    v0[7] = v0 + 38;
    v0[3] = SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
    v0[13] = &block_descriptor_8;
    [v13 isHandleInvited:v14 fromSenderHandle:v15 forPresenceIdentifier:v10 completion:v0 + 10];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 296) = v3;
  v4 = *(v1 + 272);
  v5 = *(v1 + 264);
  if (v3)
  {
    v6 = SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:);
  }

  else
  {
    v6 = SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 304);

  v4 = *(v0 + 8);

  return v4(v3);
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  swift_willThrow();

  swift_getErrorValue();
  v5 = v0[21];
  Error.sanitizedError.getter(v0[22], v0[23]);
  swift_willThrow();

  v6 = v0[1];

  return v6(0);
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v0 + 56) = _Block_copy(*(v0 + 40));
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  *(v0 + 64) = v6;
  v8 = v4;
  v9 = v3;
  v10 = v1;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = @objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:);
  v12 = *(v0 + 48);
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);

  return SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)(v14, v13, v5, v7);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 72);
  v8 = *(*v2 + 64);
  v9 = *(*v2 + 48);
  v10 = *(*v2 + 24);
  v11 = *(*v2 + 16);
  v12 = *v2;

  v13 = *(v5 + 56);
  if (v3)
  {
    v14 = _convertErrorToNSError(_:)();

    (*(v13 + 16))(v13, 0, v14);
  }

  else
  {
    (*(v13 + 16))(*(v5 + 56), a1 & 1, 0);
  }

  _Block_release(*(v6 + 56));
  v15 = *(v12 + 8);

  return v15();
}

uint64_t SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo20SKHandleInvitabilityCSgs5Error_pGMd, &_sScCySo20SKHandleInvitabilityCSgs5Error_pGMR);
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v8 = *(v7 + 64) + 15;
  v5[33] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[34] = v10;
  v5[35] = v9;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:), v10, v9);
}

uint64_t SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)()
{
  v1 = v0[30];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[36] = v4;
  if (v4)
  {
    v5 = v0[32];
    v6 = v0[33];
    v7 = v0[31];
    v9 = v0[28];
    v8 = v0[29];
    v14 = v0[26];
    v15 = v0[27];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[37] = v10;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SKHandleInvitabilityCSgMd, &_sSo20SKHandleInvitabilityCSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned SKHandleInvitability?, @unowned NSError?) -> () with result type SKHandleInvitability?;
    v0[13] = &block_descriptor_12;
    [v13 fetchHandleInvitability:v14 fromHandle:v15 forPresenceIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  v4 = *(v1 + 280);
  v5 = *(v1 + 272);
  if (v3)
  {
    v6 = SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:);
  }

  else
  {
    v6 = SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = *(v0 + 192);

  v4 = *(v0 + 8);

  return v4(v3);
}

{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[33];
  swift_willThrow();

  swift_getErrorValue();
  v5 = v0[21];
  Error.sanitizedError.getter(v0[22], v0[23]);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned SKHandleInvitability?, @unowned NSError?) -> () with result type SKHandleInvitability?(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo20SKHandleInvitabilityCSgs5Error_pGMd, &_sScCySo20SKHandleInvitabilityCSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo20SKHandleInvitabilityCSgs5Error_pGMd, &_sScCySo20SKHandleInvitabilityCSgs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v0 + 56) = _Block_copy(*(v0 + 40));
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  *(v0 + 64) = v6;
  v8 = v4;
  v9 = v3;
  v10 = v1;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = @objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:);
  v12 = *(v0 + 48);
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);

  return SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)(v14, v13, v5, v7);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 56);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (v12)[2](v12, 0, v13);
    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 56), a1, 0);
    _Block_release(v12);
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:), v7, v6);
}

uint64_t SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v0[13] = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v6 = swift_allocObject();
  v0[14] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v1;
  v7 = v4;

  v8 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:), 0, 0);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "invite(_:fromSenderHandle:presenceIdentifier:)";
  *(v3 + 32) = 46;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  *(v3 + 56) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, partial apply for specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:), v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[14];
    v8 = v2[15];

    v5 = v2[11];
    v6 = v2[12];
    v4 = SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[11];
  v4 = v0[12];

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:), v3, v4);
}

{
  v1 = v0[17];
  swift_getErrorValue();
  v2 = v0[2];
  Error.sanitizedError.getter(v0[3], v0[4]);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[21] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[29] = v11;
  v6[30] = v10;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:), v11, v10);
}

uint64_t closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[31] = v4;
  if (v4)
  {
    v5 = v0[27];
    v6 = v0[28];
    v8 = v0[25];
    v7 = v0[26];
    v9 = v0[24];
    v16 = v0[23];
    v10 = v0[22];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
    v15 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[32] = isa;
    v12 = MEMORY[0x223D76B00](v9, v8);
    v0[33] = v12;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_322;
    [v15 inviteHandles:isa fromSenderHandle:v16 presenceIdentifier:v12 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  }

  else
  {
    v6 = closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[28];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[34];

  return v6();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v0 + 56) = _Block_copy(*(v0 + 40));
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 64) = v5;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  *(v0 + 72) = v7;
  v9 = v3;
  v10 = v1;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = @objc closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  v12 = *(v0 + 48);
  v13 = *(v0 + 24);

  return SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(v5, v13, v6, v8);
}

{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 24);
  v10 = *v1;

  v11 = *(v3 + 56);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v4 + 56));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:), v6, v5);
}

uint64_t SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v0[12] = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v5 = swift_allocObject();
  v0[13] = v5;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v1;
  v6 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:), 0, 0);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "removeInvitedHandles(_:presenceIdentifier:)";
  *(v3 + 32) = 43;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
  *(v3 + 56) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[14];

    v5 = v2[10];
    v6 = v2[11];
    v4 = SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:), v3, v4);
}

{
  v1 = v0[16];
  swift_getErrorValue();
  v2 = v0[2];
  Error.sanitizedError.getter(v0[3], v0[4]);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  v8 = *(v7 + 64) + 15;
  v5[27] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v10;
  v5[29] = v9;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:), v10, v9);
}

uint64_t closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[30] = v4;
  if (v4)
  {
    v5 = v0[26];
    v6 = v0[27];
    v8 = v0[24];
    v7 = v0[25];
    v9 = v0[22];
    v10 = v0[23];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
    v15 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[31] = isa;
    v12 = MEMORY[0x223D76B00](v10, v8);
    v0[32] = v12;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_313;
    [v15 removeInvitedHandles:isa presenceIdentifier:v12 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
  }

  else
  {
    v6 = closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[27];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[33];

  return v6();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:), v6, v5);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 48) = _Block_copy(*(v0 + 32));
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v4;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  *(v0 + 64) = v6;
  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = @objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
  v10 = *(v0 + 40);

  return SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(v4, v5, v7);
}

{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 40);
  v9 = *v1;

  v10 = *(v3 + 48);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:), v6, v5);
}

uint64_t SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v5 = *&v2[OBJC_IVAR___SKAPresenceClientProxy_clientID];
  v4 = *&v2[OBJC_IVAR___SKAPresenceClientProxy_clientID + 8];
  v6 = type metadata accessor for SKACALogger.SKACALogToken();
  v7 = objc_allocWithZone(v6);
  static Date.now.getter();
  *&v7[OBJC_IVAR___SKACALogToken_event] = 2;
  v8 = &v7[OBJC_IVAR___SKACALogToken_client];
  *v8 = v5;
  *(v8 + 1) = v4;
  *(v0 + 40) = v7;
  *(v0 + 48) = v6;

  *(v0 + 112) = objc_msgSendSuper2((v0 + 40), sel_init);
  *(v0 + 120) = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v9 = swift_allocObject();
  *(v0 + 128) = v9;
  v9[2] = v2;
  v9[3] = v3;
  v9[4] = v1;
  v10 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:), 0, 0);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "retainTransientSubscriptionAssertion(forPresenceIdentifier:)";
  *(v3 + 32) = 60;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
  *(v3 + 56) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[16];
    v8 = v2[17];

    v5 = v2[12];
    v6 = v2[13];
    v4 = SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = v0[14];
  v2 = v0[11];
  v3 = *&v1[OBJC_IVAR___SKACALogToken_event];
  v4 = *&v1[OBJC_IVAR___SKACALogToken_client];
  v5 = *&v1[OBJC_IVAR___SKACALogToken_client + 8];
  v6 = OBJC_IVAR___SKACALogToken_startTime;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2, &v1[v6], v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  specialized static SKACALogger._logSuccess(_:for:startTime:)(v3, v4, v5, v2);
  outlined destroy of Date?(v2);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[16];
  v2 = v0[17];

  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:), v3, v4);
}

{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[11];
  v4 = *&v2[OBJC_IVAR___SKACALogToken_event];
  v5 = *&v2[OBJC_IVAR___SKACALogToken_client];
  v6 = *&v2[OBJC_IVAR___SKACALogToken_client + 8];
  v7 = OBJC_IVAR___SKACALogToken_startTime;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3, &v2[v7], v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  specialized static SKACALogger._logFailure(with:event:for:startTime:)(v1, v4, v5, v6, v3);
  outlined destroy of Date?(v3);
  swift_getErrorValue();
  v10 = v0[2];
  Error.sanitizedError.getter(v0[3], v0[4]);
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[21] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v9;
  v4[28] = v8;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:), v9, v8);
}

uint64_t closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[29] = v4;
  if (v4)
  {
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[30] = v10;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_309;
    [v13 retainTransientSubscriptionAssertionForPresenceIdentifier:v10 completion:v0 + 10];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  v4 = *(v1 + 224);
  v5 = *(v1 + 216);
  if (v3)
  {
    v6 = closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  }

  else
  {
    v6 = closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  *(v0 + 48) = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  v8 = *(v0 + 32);

  return SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)(v3, v5);
}

uint64_t SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:), v5, v4);
}

uint64_t SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v0[11] = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v4 = swift_allocObject();
  v0[12] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:), 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "releaseTransientSubscriptionAssertion(forPresenceIdentifier:)";
  *(v3 + 32) = 61;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  *(v3 + 56) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[12];
    v8 = v2[13];

    v5 = v2[9];
    v6 = v2[10];
    v4 = SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[9];
  v4 = v0[10];

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:), v3, v4);
}

uint64_t closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[21] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v9;
  v4[28] = v8;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:), v9, v8);
}

uint64_t closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[29] = v4;
  if (v4)
  {
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[30] = v10;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_305;
    [v13 releaseTransientSubscriptionAssertionForPresenceIdentifier:v10 completion:v0 + 10];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  *(v0 + 48) = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  v8 = *(v0 + 32);

  return SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)(v3, v5);
}

uint64_t SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:), v8, v7);
}

uint64_t SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v7 = *&v1[OBJC_IVAR___SKAPresenceClientProxy_clientID];
  v6 = *&v1[OBJC_IVAR___SKAPresenceClientProxy_clientID + 8];
  v8 = type metadata accessor for SKACALogger.SKACALogToken();
  v9 = objc_allocWithZone(v8);
  static Date.now.getter();
  *&v9[OBJC_IVAR___SKACALogToken_event] = 0;
  v10 = &v9[OBJC_IVAR___SKACALogToken_client];
  *v10 = v7;
  *(v10 + 1) = v6;
  *(v0 + 40) = v9;
  *(v0 + 48) = v8;

  *(v0 + 128) = objc_msgSendSuper2((v0 + 40), sel_init);
  *(v0 + 136) = *&v1[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v11 = swift_allocObject();
  *(v0 + 144) = v11;
  v11[2] = v1;
  v11[3] = v5;
  v11[4] = v3;
  v11[5] = v4;
  v11[6] = v2;
  v12 = v4;
  v13 = v2;
  v14 = v1;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:), 0, 0);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "assertPresence(forIdentifier:with:assertionOptions:)";
  *(v3 + 32) = 52;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  *(v3 + 56) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[18];
    v8 = v2[19];

    v5 = v2[14];
    v6 = v2[15];
    v4 = SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = v0[16];
  v2 = v0[13];
  v3 = *&v1[OBJC_IVAR___SKACALogToken_event];
  v4 = *&v1[OBJC_IVAR___SKACALogToken_client];
  v5 = *&v1[OBJC_IVAR___SKACALogToken_client + 8];
  v6 = OBJC_IVAR___SKACALogToken_startTime;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2, &v1[v6], v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  specialized static SKACALogger._logSuccess(_:for:startTime:)(v3, v4, v5, v2);
  outlined destroy of Date?(v2);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[18];
  v2 = v0[19];

  v3 = v0[14];
  v4 = v0[15];

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:), v3, v4);
}

{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[13];
  v4 = *&v2[OBJC_IVAR___SKACALogToken_event];
  v5 = *&v2[OBJC_IVAR___SKACALogToken_client];
  v6 = *&v2[OBJC_IVAR___SKACALogToken_client + 8];
  v7 = OBJC_IVAR___SKACALogToken_startTime;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3, &v2[v7], v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  specialized static SKACALogger._logFailure(with:event:for:startTime:)(v1, v4, v5, v6, v3);
  outlined destroy of Date?(v3);
  swift_getErrorValue();
  v10 = v0[2];
  Error.sanitizedError.getter(v0[3], v0[4]);
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[21] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[29] = v11;
  v6[30] = v10;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:), v11, v10);
}

uint64_t closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[31] = v4;
  if (v4)
  {
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[26];
    v8 = v0[23];
    v14 = v0[24];
    v15 = v0[25];
    v9 = v0[22];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[32] = v10;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_301;
    [v13 assertPresenceForIdentifier:v10 withPresencePayload:v14 assertionOptions:v15 completion:v0 + 10];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  }

  else
  {
    v6 = closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[28];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[33];

  return v5();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:), v7, v6);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v0 + 56) = _Block_copy(*(v0 + 40));
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  *(v0 + 64) = v6;
  v8 = v3;
  v9 = v2;
  v10 = v1;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = @objc closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  v12 = *(v0 + 48);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);

  return SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(v5, v7, v13, v14);
}

{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *v1;

  v11 = *(v3 + 56);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v4 + 56));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t SKAPresenceClientProxy.releasePresence(forIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.releasePresence(forIdentifier:), v5, v4);
}

uint64_t SKAPresenceClientProxy.releasePresence(forIdentifier:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v0[11] = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v4 = swift_allocObject();
  v0[12] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.releasePresence(forIdentifier:), 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "releasePresence(forIdentifier:)";
  *(v3 + 32) = 31;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:);
  *(v3 + 56) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v6);
}

uint64_t closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[21] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v9;
  v4[28] = v8;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:), v9, v8);
}

uint64_t closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[29] = v4;
  if (v4)
  {
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[30] = v10;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_297;
    [v13 releasePresenceForIdentifier:v10 completion:v0 + 10];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  *(v0 + 48) = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  v8 = *(v0 + 32);

  return SKAPresenceClientProxy.releasePresence(forIdentifier:)(v3, v5);
}

uint64_t SKAPresenceClientProxy.fetchPresenceCapability()()
{
  v1[21] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v6;
  v1[26] = v5;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.fetchPresenceCapability(), v6, v5);
}

{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[27] = v4;
  if (v4)
  {
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[22];
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = SKAPresenceClientProxy.fetchPresenceCapability();
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    v9 = v4;
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
    v0[13] = &block_descriptor_54;
    [v9 fetchPresenceCapability_];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.fetchPresenceCapability(), v2, v1);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability(), v4, v3);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability()()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability();
  v4 = *(v0 + 24);

  return SKAPresenceClientProxy.fetchPresenceCapability()();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability()(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:), v5, v4);
}

uint64_t SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v0[11] = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v4 = swift_allocObject();
  v0[12] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:), 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "rollChannel(forPresenceIdentifier:)";
  *(v3 + 32) = 35;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
  *(v3 + 56) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[12];
    v8 = v2[13];

    v5 = v2[9];
    v6 = v2[10];
    v4 = SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  return (*(v0 + 8))();
}

{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[9];
  v4 = v0[10];

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:), v3, v4);
}

{
  v1 = v0[15];
  swift_getErrorValue();
  v2 = v0[2];
  Error.sanitizedError.getter(v0[3], v0[4]);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[21] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v9;
  v4[28] = v8;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:), v9, v8);
}

uint64_t closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[29] = v4;
  if (v4)
  {
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[30] = v10;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_293;
    [v13 rollChannelForPresenceIdentifier:v10 completion:v0 + 10];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  v4 = *(v1 + 224);
  v5 = *(v1 + 216);
  if (v3)
  {
    v6 = closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
  }

  else
  {
    v6 = closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[26];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[31];

  return v5();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  *(v0 + 48) = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
  v8 = *(v0 + 32);

  return SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)(v3, v5);
}

{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 32);
  v8 = *v1;

  v9 = *(v3 + 40);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v7 = *(v6 + 64) + 15;
  v4[31] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[32] = v9;
  v4[33] = v8;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:), v9, v8);
}