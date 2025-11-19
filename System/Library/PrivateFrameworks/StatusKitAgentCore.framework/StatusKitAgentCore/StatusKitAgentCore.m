uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v8();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return v7();
}

uint64_t partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return @objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(v2, v3, v5, v4);
}

uint64_t SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v7;
  v4[16] = v6;

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:), v7, v6);
}

uint64_t type metadata accessor for SKACALogger.SKACALogToken()
{
  result = type metadata singleton initialization cache for SKACALogger.SKACALogToken;
  if (!type metadata singleton initialization cache for SKACALogger.SKACALogToken)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = swift_task_alloc();
  v0[20] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "publishStatusRequest(_:statusTypeIdentifier:)";
  *(v3 + 32) = 45;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
  *(v3 + 56) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *v5 = v0;
  v5[1] = SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, partial apply for specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:), v3, v6);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = type metadata accessor for SKACALogger.SKACALogToken();
  v6 = objc_allocWithZone(v5);
  static Date.now.getter();
  *&v6[OBJC_IVAR___SKACALogToken_event] = 1;
  v7 = &v6[OBJC_IVAR___SKACALogToken_client];
  *v7 = v4;
  *(v7 + 1) = v1;
  *(v0 + 40) = v6;
  *(v0 + 48) = v5;

  *(v0 + 136) = objc_msgSendSuper2((v0 + 40), sel_init);
  *(v0 + 144) = *&v2[OBJC_IVAR___SKAStatusPublishingServiceClientProxy_queue];
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v1;

  v9 = v2;
  v10 = v3;

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:), 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v10 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v2 + 152);
    v8 = *(v2 + 160);

    *(v2 + 184) = *(v2 + 56);
    v5 = *(v2 + 120);
    v6 = *(v2 + 128);
    v4 = SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = v0[19];
  v2 = v0[20];

  v3 = v0[15];
  v4 = v0[16];

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:), v3, v4);
}

{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[14];
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

{
  v1 = v0[17];
  v2 = v0[14];
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
  v10 = v0[23];
  v11 = v0[24];

  return v9(v10, v11);
}

uint64_t partial apply for specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

{
  return specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), &_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR, &unk_2833DC850, &async function pointer to partial apply for specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

{
  return partial apply for specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

uint64_t specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v26 = a5;
  v24 = a3;
  v25 = a4;
  v27 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v15 + 32))(v21 + v19, v18, v14);
  v22 = (v21 + v20);
  *v22 = a6;
  v22[1] = a7;

  SKAAsyncQueue.enqueue(_:_:)(v24, v25, v26, a11, v21);
}

uint64_t specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  return specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7, &_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR, &unk_2833DC738, &async function pointer to partial apply for specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

{
  return specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMd, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMR, &unk_2833DC710, &async function pointer to partial apply for specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

uint64_t SKAAsyncQueue.enqueue(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV__GMd, &_sScS12ContinuationV11YieldResultOy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV__GMR);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v52 = &v50 - v14;
  v15 = type metadata accessor for SKAAsyncQueue.Item(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = (MEMORY[0x28223BE20])();
  v51 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v50 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v50 - v26;
  v28 = &v50 + *(v25 + 24) - v26;
  UUID.init()();
  *v27 = a4;
  *(v27 + 1) = a5;
  *(v27 + 2) = a1;
  *(v27 + 3) = a2;
  v27[32] = a3;
  if (*(v6 + 128) == 1)
  {
    v29 = one-time initialization token for logger;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, logger);
    outlined init with copy of SKAAsyncQueue.Item(v27, v24);
    outlined init with copy of SKAAsyncQueue.Item(v27, v21);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v33 = 136315650;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 112), *(v6 + 120), &v55);
      *(v33 + 12) = 2080;
      v34 = *(v15 + 24);
      type metadata accessor for UUID();
      v35 = v32;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      outlined destroy of SKAAsyncQueue.Item(v24);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v55);

      *(v33 + 14) = v39;
      *(v33 + 22) = 2080;
      v40 = *(v21 + 2);
      v41 = *(v21 + 3);
      v42 = v21[32];
      v43 = StaticString.description.getter();
      v45 = v44;
      outlined destroy of SKAAsyncQueue.Item(v21);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v55);

      *(v33 + 24) = v46;
      _os_log_impl(&dword_220099000, v31, v35, "[%s] Enqueueing request %s from %s", v33, 0x20u);
      v47 = v50;
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v47, -1, -1);
      MEMORY[0x223D77FF0](v33, -1, -1);
    }

    else
    {

      outlined destroy of SKAAsyncQueue.Item(v21);
      outlined destroy of SKAAsyncQueue.Item(v24);
    }
  }

  else
  {
  }

  outlined init with copy of SKAAsyncQueue.Item(v27, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMR);
  v48 = v52;
  AsyncStream.Continuation.yield(_:)();
  (*(v53 + 8))(v48, v54);
  return outlined destroy of SKAAsyncQueue.Item(v27);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of SKAAsyncQueue.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKAAsyncQueue.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SKAAsyncQueue.Item(uint64_t a1)
{
  v2 = type metadata accessor for SKAAsyncQueue.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:), v6, v5);
}

uint64_t sub_22009C834()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t type metadata accessor for SKAAsyncQueue.Item(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22009C8E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t outlined init with take of SKAAsyncQueue.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKAAsyncQueue.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(v0 + v3, v5);
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMd, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(v0 + v3, v5);
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(v0 + v3, v5);
}

uint64_t specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v6(v2 + 16);
}

{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v6();
}

{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v6(v2 + 16);
}

uint64_t closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR);
  v5[28] = v6;
  v7 = *(v6 - 8);
  v5[29] = v7;
  v8 = *(v7 + 64) + 15;
  v5[30] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[31] = v10;
  v5[32] = v9;

  return MEMORY[0x2822009F8](closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:), v10, v9);
}

void *sub_22009CD34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t partial apply for closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)()
{
  v1 = v0[24];
  v2 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[33] = v4;
  if (v4)
  {
    v5 = v0[29];
    v6 = v0[30];
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v14 = v0[25];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[34] = v10;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String?;
    v0[13] = &block_descriptor_196;
    [v13 publishStatusRequest:v14 statusTypeIdentifier:v10 completion:?];
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
  *(*v0 + 280) = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 248);
  if (v3)
  {
    v6 = closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
  }

  else
  {
    v6 = closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[30];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[35];

  return v5();
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  **(v0 + 184) = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id OUTLINED_FUNCTION_0_1(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id specialized static SKAError.errorWithCode(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SKAError();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___SKAError_code] = a1;
  v4 = &v3[OBJC_IVAR___SKAError_customDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR___SKAError_underlyingError] = 0;
  *&v3[OBJC_IVAR___SKAError_userInfo] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12.receiver = v3;
  v12.super_class = v2;
  v5 = objc_msgSendSuper2(&v12, sel_init);
  v6 = *&v5[OBJC_IVAR___SKAError_code];
  SKAError.errorUserInfo.getter();
  v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v8 = MEMORY[0x223D76B00](0x726F727245414B53, 0xEE006E69616D6F44);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v7 initWithDomain:v8 code:v6 userInfo:isa];

  return v10;
}

unint64_t SKAError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = specialized _dictionaryUpCast<A, B, C, D>(_:)(*(v0 + OBJC_IVAR___SKAError_userInfo));
  v3 = *MEMORY[0x277CCA068];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = *(v1 + OBJC_IVAR___SKAError_customDescription);
  v8 = *(v1 + OBJC_IVAR___SKAError_customDescription + 8);
  v21 = MEMORY[0x277D837D0];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = SKAErrorCode.defaultDescription.getter(*(v1 + OBJC_IVAR___SKAError_code));
  }

  *&v20 = v7;
  *(&v20 + 1) = v9;
  _sypWOb_0(&v20, v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v4, v6, isUniquelyReferenced_nonNull_native);

  v11 = *(v1 + OBJC_IVAR___SKAError_underlyingError);
  if (v11)
  {
    v12 = *MEMORY[0x277CCA7E8];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v21 = type metadata accessor for NSError();
    *&v20 = v11;
    _sypWOb_0(&v20, v19);
    v16 = v11;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v13, v15, v17);
  }

  return v2;
}

_OWORD *_sypWOb_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Sendable)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = _sypWOb_0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t SKAErrorCode.defaultDescription.getter(uint64_t a1)
{
  if (a1 > 699)
  {
    if (a1 <= 999)
    {
      switch(a1)
      {
        case 700:
          return 0xD000000000000034;
        case 701:
          goto LABEL_48;
        case 702:
          goto LABEL_51;
        case 703:
          result = 0xD000000000000023;
          break;
        case 704:
          result = 0xD000000000000019;
          break;
        case 705:
          result = 0xD000000000000022;
          break;
        case 706:
          return 0xD000000000000030;
        case 800:
          result = ResponseStatus.serverResponseDescription.getter(1);
          break;
        case 801:
          result = ResponseStatus.serverResponseDescription.getter(2);
          break;
        case 802:
          result = ResponseStatus.serverResponseDescription.getter(3);
          break;
        case 803:
          result = ResponseStatus.serverResponseDescription.getter(4);
          break;
        case 804:
          result = ResponseStatus.serverResponseDescription.getter(5);
          break;
        case 805:
          result = ResponseStatus.serverResponseDescription.getter(6);
          break;
        case 806:
          result = ResponseStatus.serverResponseDescription.getter(7);
          break;
        case 807:
          result = ResponseStatus.serverResponseDescription.getter(8);
          break;
        case 808:
          goto LABEL_60;
        case 900:
          result = 0xD00000000000001CLL;
          break;
        case 901:
        case 903:
          result = 0xD000000000000029;
          break;
        case 902:
          result = 0xD000000000000014;
          break;
        case 904:
          return 0xD000000000000041;
        default:
          goto LABEL_75;
      }

      return result;
    }

    if (a1 <= 1101)
    {
      if (a1 > 1099)
      {
        if (a1 == 1100)
        {
          return 0xD00000000000002ALL;
        }

        else
        {
          return 0xD000000000000034;
        }
      }

      if (a1 == 1000)
      {
        return 0xD000000000000037;
      }

      if (a1 == 1001)
      {
        return 0xD00000000000001BLL;
      }
    }

    else
    {
      if (a1 <= 1103)
      {
        if (a1 == 1102)
        {
          return 0xD00000000000004FLL;
        }

        else
        {
          return 0xD000000000000038;
        }
      }

      switch(a1)
      {
        case 1104:
          return 0xD000000000000041;
        case 1105:
          return 0xD00000000000002CLL;
        case 9999:
          return 0xD000000000000047;
      }
    }

    goto LABEL_75;
  }

  if (a1 <= 399)
  {
    if (a1 <= 199)
    {
      switch(a1)
      {
        case 'd':
          return 0xD000000000000028;
        case 'e':
          return 0xD000000000000026;
        case 'f':
          return 0xD000000000000030;
      }
    }

    else
    {
      if (a1 <= 201)
      {
        if (a1 == 200)
        {
          return 0xD000000000000051;
        }

        _StringGuts.grow(_:)(86);
        MEMORY[0x223D76B90](0xD000000000000054, 0x80000002201ABFF0);
        MEMORY[0x223D76B90](0xD000000000000023, 0x80000002201AC050);
        return 0;
      }

      if (a1 == 202)
      {
        _StringGuts.grow(_:)(81);
        MEMORY[0x223D76B90](0xD00000000000004FLL, 0x80000002201ABF70);
        MEMORY[0x223D76B90](0xD000000000000021, 0x80000002201ABFC0);
        return 0;
      }

      if (a1 == 300)
      {
        return 0xD00000000000003FLL;
      }
    }

    goto LABEL_75;
  }

  if (a1 > 599)
  {
    if (a1 <= 601)
    {
      if (a1 == 600)
      {
        return 0xD000000000000031;
      }

      else
      {
        return 0xD00000000000002ELL;
      }
    }

    if (a1 == 602)
    {
      return 0xD000000000000017;
    }

    if (a1 == 603)
    {
      return 0xD000000000000013;
    }

LABEL_75:
    _StringGuts.grow(_:)(22);
    MEMORY[0x223D76B90](0xD000000000000014, 0x80000002201AB760);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  result = 0x6C6C6F722079654BLL;
  switch(a1)
  {
    case 400:
LABEL_51:
      result = 0xD00000000000001FLL;
      break;
    case 401:
      return result;
    case 402:
      return 0xD000000000000031;
    case 403:
      result = 0xD00000000000002FLL;
      break;
    case 404:
      result = 0xD000000000000023;
      break;
    case 405:
      result = 0xD000000000000018;
      break;
    case 406:
LABEL_48:
      result = 0xD000000000000027;
      break;
    case 500:
      result = 0xD00000000000004ELL;
      break;
    case 501:
      return 0xD00000000000001BLL;
    case 502:
      result = 0xD00000000000002DLL;
      break;
    case 503:
      result = 0xD000000000000061;
      break;
    case 504:
      return 0xD00000000000002CLL;
    case 505:
LABEL_60:
      result = 0xD00000000000001ALL;
      break;
    default:
      goto LABEL_75;
  }

  return result;
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
    __swift_destroy_boxed_opaque_existential_0(v23);

    return _sypWOb_0(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        _sypWOb_0(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = _sypWOb_0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo9IDSDeviceCGMd, &_ss18_DictionaryStorageCySSSo9IDSDeviceCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo37SKADatabasePublishedLocalStatusDeviceCGMd, &_ss18_DictionaryStorageCySSSo37SKADatabasePublishedLocalStatusDeviceCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo32SKADatabaseSubscribedLocalStatusCGMd, &_ss18_DictionaryStorageCySSSo32SKADatabaseSubscribedLocalStatusCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2S4name_SS15modelIdentifiertGMd, &_ss18_DictionaryStorageCyS2S4name_SS15modelIdentifiertGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 32 * v22);
      v26 = v25[1];
      v41 = *v25;
      v42 = *v23;
      v27 = v25[3];
      v40 = v25[2];
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v41;
      v18[1] = v26;
      v18[2] = v40;
      v18[3] = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMR);
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        _sypWOb_0(v22, v33);
      }

      else
      {
        outlined init with copy of Any(v22, v33);
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v21);
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = _sypWOb_0(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

      v3 = v32;
      goto LABEL_36;
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

LABEL_36:
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOSe_SEpGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOSe_SEpGMR);
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 48 * v20);
      if (a2)
      {
        outlined init with take of Decodable & Encodable(v22, v33);
      }

      else
      {
        outlined init with copy of Decodable & Encodable(v22, v33);
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v21);
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = outlined init with take of Decodable & Encodable(v33, (*(v8 + 56) + 48 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

      v3 = v32;
      goto LABEL_36;
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

LABEL_36:
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G16LogEventMetadataVGMd, &_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G16LogEventMetadataVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 48 * v22;
      v27 = *(v26 + 16);
      v28 = *(v26 + 24);
      v42 = v28;
      v43 = *v26;
      v41 = *(v26 + 40);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 48 * v16;
      *v18 = v43;
      *(v18 + 16) = v27;
      *(v18 + 24) = v42;
      *(v18 + 40) = v41;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
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

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = _sypWOb_0(a4, (a5[7] + 32 * a1));
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

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String?(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  else
  {
    v3 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[5];
  v0[4] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  else
  {
    v3 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[3];
  v0[2] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  else
  {
    v3 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMd, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[4];
  v0[3] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMd, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of (String, Sendable)(i, &v11, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = _sypWOb_0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x223D772F0](a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (a1 + *(type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  v7 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v7);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
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

{
  v4 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      outlined init with copy of SKALocalStatusServer.FailedDelivery.ID(*(v2 + 48) + v12 * v10, v8, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      lazy protocol witness table accessor for type SKAError and conformance SKAError(&lazy protocol witness table cache variable for type SKALocalStatusServer.FailedDelivery.ID and conformance SKALocalStatusServer.FailedDelivery.ID, 255, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      v13 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v8);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
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
      v7 = MEMORY[0x223D76FB0](v9, a1);
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

id specialized static SKACALogger.getUnderlyingError(_:)(void *a1)
{
  v1 = [a1 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v4 = [v7 code];
      v5 = [v7 domain];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }
  }

  else
  {
  }

  return 0;
}

_OWORD *specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    outlined destroy of UUID?(a1, &_sypSgMd, &_sypSgMR);
    v8 = *v2;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      outlined init with take of Any((*(v14 + 56) + 32 * v11), v17);
      specialized _NativeDictionary._delete(at:)(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return outlined destroy of UUID?(v17, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of Decodable & Encodable(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    outlined destroy of UUID?(a1, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
    v8 = *v2;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      outlined init with take of Decodable & Encodable((*(v14 + 56) + 48 * v11), v17);
      specialized _NativeDictionary._delete(at:)(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return outlined destroy of UUID?(v17, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v21);

    return _sypWOb_0(a1, v21);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = _sypWOb_0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void specialized static SKACALogger.logMetadata(_:for:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    outlined init with copy of Any(*(a1 + 56) + 32 * v12, v43);
    aBlock = v13;
    outlined init with copy of Any(v43, v44);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    if (swift_dynamicCast())
    {
      v40 = v43[6];
      if (v13 > 3)
      {
        if (v13 > 5)
        {
          if (v13 == 6)
          {
            v38 = 0xD000000000000015;
            v39 = 0x80000002201ACAA0;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_65:
              v44[0] = v13;
              goto LABEL_67;
            }

            v38 = 0xD00000000000001ALL;
            v39 = 0x80000002201ACA80;
          }
        }

        else
        {
          if (v13 == 4)
          {
            v39 = 0xE700000000000000;
            v14 = 0x73736563637573;
LABEL_23:
            v38 = v14;
            goto LABEL_24;
          }

          v38 = 0xD000000000000013;
          v39 = 0x80000002201ACAC0;
        }
      }

      else
      {
        if (v13 <= 1)
        {
          if (v13)
          {
            if (v13 != 1)
            {
              goto LABEL_65;
            }

            v39 = 0xE800000000000000;
            v14 = 0x6E6F697461727564;
          }

          else
          {
            v39 = 0xE600000000000000;
            v14 = 0x746E65696C63;
          }

          goto LABEL_23;
        }

        if (v13 == 2)
        {
          v39 = 0xE900000000000065;
          v14 = 0x646F43726F727265;
          goto LABEL_23;
        }

        v38 = 0x6D6F44726F727265;
        v39 = 0xEB000000006E6961;
      }

LABEL_24:
      outlined destroy of UUID?(&aBlock, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO3key_yp5valuetMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO3key_yp5valuetMR);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      }

      v16 = v9[2];
      v15 = v9[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v9);
        v17 = v16 + 1;
        v9 = v19;
      }

      v9[2] = v17;
      v18 = &v9[3 * v16];
      v18[4] = v38;
      v18[5] = v39;
      v18[6] = v40;
    }

    else
    {
      outlined destroy of UUID?(&aBlock, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO3key_yp5valuetMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO3key_yp5valuetMR);
    }
  }

  while (2)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v8 < v7)
    {
      v6 = *(v3 + 8 * v8);
      ++v10;
      if (v6)
      {
        goto LABEL_8;
      }

      continue;
    }

    break;
  }

  if (v9[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  v7 = 0xD000000000000022;
  aBlock = v20;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v21, 1, &aBlock);

  v3 = aBlock;
  if (one-time initialization token for logger != -1)
  {
LABEL_64:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315394;

    v27 = a2;
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_68;
        }

        v28 = "Kit.presence.subscription";
        v29 = 0xD000000000000022;
      }

      else
      {
        v28 = "Kit.status.publish";
        v29 = v7 + 4;
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          v28 = "tDuplicatedChannel";
          v29 = v7 + 7;
          break;
        case 3:
          v28 = "dPersistentStore";
          v29 = v7 + 16;
          break;
        case 4:
          v28 = "recipientDevicesChanged()";
          v29 = v7 + 14;
          break;
        default:
          goto LABEL_68;
      }
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28 | 0x8000000000000000, &aBlock);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    lazy protocol witness table accessor for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey();
    v31 = Dictionary.description.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &aBlock);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_220099000, v23, v24, "Logging event %s: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D77FF0](v26, -1, -1);
    MEMORY[0x223D77FF0](v25, -1, -1);
  }

  else
  {
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      v34 = "Kit.status.publish";
      v7 += 4;
      goto LABEL_62;
    }

    if (a2 == 1)
    {
      v34 = "Kit.presence.subscription";
      goto LABEL_62;
    }

    goto LABEL_66;
  }

  if (a2 == 2)
  {
    v34 = "tDuplicatedChannel";
    v7 += 7;
    goto LABEL_62;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      v34 = "recipientDevicesChanged()";
      v7 += 14;
      goto LABEL_62;
    }

LABEL_66:
    aBlock = a2;
    while (1)
    {
LABEL_67:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
LABEL_68:
      v44[0] = v27;
    }
  }

  v34 = "dPersistentStore";
  v7 += 16;
LABEL_62:
  v35 = MEMORY[0x223D76B00](v7, v34 | 0x8000000000000000);

  v36 = swift_allocObject();
  *(v36 + 16) = v3;
  v43[3] = partial apply for closure #2 in static SKACALogger.logMetadata(_:for:);
  v43[4] = v36;
  aBlock = MEMORY[0x277D85DD0];
  v43[0] = 1107296256;
  v43[1] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v43[2] = &block_descriptor_1;
  v37 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v37);
}

uint64_t sub_2200A000C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo31SKADatabasePublishedLocalStatusC_SStGMd, &_ss23_ContiguousArrayStorageCySo31SKADatabasePublishedLocalStatusC_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31SKADatabasePublishedLocalStatusC_SStMd, &_sSo31SKADatabasePublishedLocalStatusC_SStMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMd, &_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v18 = *a3;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
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
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v28 = *v5;
      v29 = *a3;

      v10 = v28;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v29[3] < v34)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, 1);
        v35 = *a3;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t lazy protocol witness table accessor for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey()
{
  result = lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey;
  if (!lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey;
  if (!lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey);
  }

  return result;
}

uint64_t SKACALogger.SKACALogKey.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0xD000000000000015;
      }

      if (a1 == 7)
      {
        return 0xD00000000000001ALL;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 0x73736563637573;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x746E65696C63;
      }

      if (a1 == 1)
      {
        return 0x6E6F697461727564;
      }

LABEL_18:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0x646F43726F727265;
    }

    else
    {
      return 0x6D6F44726F727265;
    }
  }
}

id Error.sanitizedError.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v66 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v66 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  v73 = *(v6 + 16);
  v73(&v66 - v17, v3, a1);
  v19 = _getErrorEmbeddedNSError<A>(_:)();
  if (v19)
  {
    v20 = v19;
    (*(v6 + 8))(v18, a1);
  }

  else
  {
    v20 = swift_allocError();
    (*(v6 + 32))(v21, v18, a1);
  }

  v22 = _convertErrorToNSError(_:)();

  v23 = [v22 isSKAError];
  v72 = a2;
  v71 = v22;
  v70 = v10;
  v69 = v6 + 16;
  if (v23)
  {
    v24 = specialized SKAErrorCode.init(rawValue:)([v22 code]);
    v25 = v24;
    v27 = v26;
    if (v26)
    {
LABEL_6:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, logger);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = -1;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v76 = v33;
        *v32 = 136315138;
        v74 = v25;
        v75 = v27 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore12SKAErrorCodeOSgMd, &_s18StatusKitAgentCore12SKAErrorCodeOSgMR);
        v34 = String.init<A>(describing:)();
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v76);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_220099000, v29, v30, "Error was attempted to be sanitized, but the error code was not a valid SKAErrorCode: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x223D77FF0](v33, -1, -1);
        MEMORY[0x223D77FF0](v32, -1, -1);

        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (v24 <= 699)
    {
      v31 = 0;
      if (v24 > 499)
      {
        if (v24 < 505)
        {
          goto LABEL_66;
        }

        if (v24 <= 600)
        {
          if (v24 != 505)
          {
            if (v24 != 600)
            {
              goto LABEL_6;
            }

            goto LABEL_66;
          }
        }

        else if (v24 != 601)
        {
          if (v24 == 602)
          {
            goto LABEL_49;
          }

          if (v24 != 603)
          {
            goto LABEL_6;
          }

LABEL_20:
          v31 = 3;
          goto LABEL_49;
        }
      }

      else
      {
        if (v24 <= 399)
        {
          if ((v24 - 100) < 3)
          {
            goto LABEL_49;
          }

          if ((v24 - 200) < 3)
          {
            v31 = 1;
            goto LABEL_49;
          }

          if (v24 != 300)
          {
            goto LABEL_6;
          }

          goto LABEL_69;
        }

        if ((v24 - 400) >= 7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      if (v24 <= 899)
      {
        if ((v24 - 700) > 6)
        {
          if ((v24 - 802) <= 6)
          {
            if (((1 << (v24 - 34)) & 0x67) != 0)
            {
              goto LABEL_20;
            }

            if (v24 == 805)
            {
              goto LABEL_66;
            }

            goto LABEL_67;
          }

          if ((v24 - 800) >= 2)
          {
            goto LABEL_6;
          }

          goto LABEL_69;
        }

        if (v24 == 704)
        {
LABEL_67:
          v31 = 4;
          goto LABEL_49;
        }

LABEL_69:
        v31 = 2;
        goto LABEL_49;
      }

      if (v24 > 1099)
      {
        if (v24 <= 1101)
        {
          if (v24 == 1100)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if ((v24 - 1102) < 3)
          {
            goto LABEL_66;
          }

          if (v24 == 1105)
          {
            goto LABEL_67;
          }

          if (v24 != 9999)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        if (v24 < 903)
        {
          goto LABEL_66;
        }

        if (v24 <= 999)
        {
          if (v24 == 903)
          {
            goto LABEL_67;
          }

          if (v24 != 904)
          {
            goto LABEL_6;
          }

LABEL_66:
          v31 = 5;
          goto LABEL_49;
        }

        if (v24 == 1000)
        {
          goto LABEL_66;
        }

        if (v24 != 1001)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_48:
    v31 = -1;
    goto LABEL_49;
  }

  v37 = v73;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, logger);
  v37(v16, v3, a1);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.fault.getter();
  if (!os_log_type_enabled(v39, v40))
  {

    (*(v6 + 8))(v16, a1);
    goto LABEL_48;
  }

  v67 = v6;
  v68 = v3;
  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  *v41 = 138412290;
  v37(v13, v16, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v43 = v67;
    (*(v67 + 8))(v13, a1);
  }

  else
  {
    swift_allocError();
    v43 = v67;
    (*(v67 + 32))(v44, v13, a1);
  }

  v45 = _swift_stdlib_bridgeErrorToNSError();
  (*(v43 + 8))(v16, a1);
  *(v41 + 4) = v45;
  *v42 = v45;
  _os_log_impl(&dword_220099000, v39, v40, "Error was attempted to be sanitized, but the error was not a valid SKAError: %@", v41, 0xCu);
  outlined destroy of UUID?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v31 = -1;
  MEMORY[0x223D77FF0](v42, -1, -1);
  MEMORY[0x223D77FF0](v41, -1, -1);

  v3 = v68;
  v6 = v43;
LABEL_49:
  v46 = *MEMORY[0x277D68178];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2201A7270;
  v48 = *MEMORY[0x277CCA068];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v49;
  v50 = v46;
  v51 = StringFromSKStatusKitErrorCode();
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v52;
  *(inited + 56) = v54;
  v55 = *MEMORY[0x277CCA7E8];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v56;
  v57 = v70;
  v73(v70, v3, a1);
  v58 = _getErrorEmbeddedNSError<A>(_:)();
  if (v58)
  {
    v59 = v58;
    (*(v6 + 8))(v57, a1);
  }

  else
  {
    v59 = swift_allocError();
    (*(v6 + 32))(v60, v57, a1);
  }

  v61 = _convertErrorToNSError(_:)();

  *(inited + 120) = type metadata accessor for NSError();
  *(inited + 96) = v61;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v62 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v64 = [v62 initWithDomain:v50 code:v31 userInfo:isa];

  return v64;
}

uint64_t @objc NSError.isSKAError.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0x726F727245414B53 && v5 == 0xEE006E69616D6F44)
  {

    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t specialized SKAErrorCode.init(rawValue:)(uint64_t result)
{
  if (result <= 699)
  {
    if (result > 399)
    {
      if ((result - 400) >= 7 && (result - 500) >= 6 && (result - 600) >= 4)
      {
        return 0;
      }
    }

    else if ((result - 100) >= 3 && (result - 200) >= 3 && result != 300)
    {
      return 0;
    }
  }

  else if (result > 899)
  {
    if (result > 1099)
    {
      if ((result - 1100) >= 6 && result != 9999)
      {
        return 0;
      }
    }

    else if ((result - 900) >= 5 && (result - 1000) >= 2)
    {
      return 0;
    }
  }

  else if ((result - 800) >= 9 && (result - 700) >= 7)
  {
    return 0;
  }

  return result;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void closure #4 in SKALocalStatusServer.init(idsDeviceProvider:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = [a1 idsDeviceIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = a1;
    v19[5] = a2;
    v19[6] = v15;
    v19[7] = v17;
    v20 = a1;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, a4, v19);
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, log);
    v22 = a1;
    v29 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v29, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v22;
      *v25 = v22;
      v26 = v22;
      _os_log_impl(&dword_220099000, v29, v23, a5, v24, 0xCu);
      outlined destroy of UUID?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v25, -1, -1);
      MEMORY[0x223D77FF0](v24, -1, -1);
    }

    v27 = v29;
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1)
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

  return closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:), 0, 0);
}

uint64_t closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_220099000, v4, v5, "receiveStatusCompanionLink deviceFound {device: %@}", v7, 0xCu);
    outlined destroy of UUID?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v8, -1, -1);
    MEMORY[0x223D77FF0](v7, -1, -1);
  }

  v10 = v0[10];
  v11 = v0[6];

  static Date.now.getter();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);

  return MEMORY[0x2822009F8](closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:), v11, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  outlined init with copy of (String, Sendable)(v1, v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v2, v4, v3);
  swift_endAccess();
  outlined destroy of UUID?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  return MEMORY[0x2822009F8](closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:), 0, 0);
}

{
  v18 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  strcpy(v17, "deviceFound[");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;

  v5 = specialized Collection.prefix(_:)(8, v2, v1, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x223D76B60](v5, v7, v9, v11);
  v14 = v13;

  MEMORY[0x223D76B90](v12, v14);

  MEMORY[0x223D76B90](93, 0xE100000000000000);
  v15 = v17[1];
  v0[11] = v17[0];
  v0[12] = v15;

  return MEMORY[0x2822009F8](closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:), v3, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];
  SKALocalStatusServer.reconcileObservations(reason:)(v0[11], v0[12]);

  v4 = v0[1];

  return v4();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    outlined destroy of UUID?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of UUID?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = *v5;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

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
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t SKALocalStatusServer.reconcileObservations(reason:)(uint64_t a1, uint64_t isUniquelyReferenced_nonNull_native)
{
  v265[3] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetSgMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v232 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v242 = &v232 - v9;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v243 = *(v253 - 8);
  v10 = *(v243 + 64);
  v11 = MEMORY[0x28223BE20](v253);
  v237 = &v232 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v234 = &v232 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v254 = &v232 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v240 = &v232 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v232 - v19;
  if (one-time initialization token for log != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v21 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v21, log);

    v261 = v22;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v265[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, isUniquelyReferenced_nonNull_native, v265);
      _os_log_impl(&dword_220099000, v23, v24, "reconcileObservations START {reason: %s}", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223D77FF0](v26, -1, -1);
      MEMORY[0x223D77FF0](v25, -1, -1);
    }

    v27 = v250;
    v28 = [*(v250 + 184) idsDevices];
    if (!v28)
    {
      v59 = type metadata accessor for LSKError();
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
      v60 = swift_allocError();
      *v61 = 0x6369766544736469;
      v61[1] = 0xEA00000000007365;
      (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D24380], v59);
      swift_willThrow();
LABEL_34:
      v63 = 0;
      goto LABEL_35;
    }

    v29 = v28;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSDevice, 0x277D186E0);
    isUniquelyReferenced_nonNull_native = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = [*(v27 + 168) newBackgroundContext];
    v31 = *(v27 + 176);
    v265[0] = 0;
    v32 = [v31 allSubscribedLocalStatusesInDatabaseContext:v30 error:v265];
    v33 = v265[0];
    if (!v32)
    {
      v62 = v265[0];

      v60 = _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_34;
    }

    v34 = v32;
    v233 = v30;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabaseSubscribedLocalStatus, off_27843D3D8);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v33;

    v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedcD0CGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v258 = a1;
    if (a1 >> 62)
    {
      v110 = __CocoaSet.count.getter();
      a1 = v258;
      v37 = v110;
    }

    else
    {
      v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v257 = isUniquelyReferenced_nonNull_native;
    v251 = v8;
    if (v37)
    {
      v38 = 0;
      v247 = 0;
      v252 = 0;
      v262 = a1 & 0xC000000000000001;
      v39 = a1 & 0xFFFFFFFFFFFFFF8;
      v260 = v243 + 16;
      v40 = (v243 + 8);
      while (1)
      {
        if (v262)
        {
          v41 = MEMORY[0x223D77050](v38, a1);
        }

        else
        {
          if (v38 >= *(v39 + 16))
          {
            goto LABEL_68;
          }

          v41 = *(a1 + 8 * v38 + 32);
        }

        v8 = v41;
        a1 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_67;
        }

        v42 = v252;
        SKADatabasePublishedLocalStatus.key.getter(v20);
        v252 = v42;
        if (v42)
        {

          v60 = v252;
          v63 = v247;
LABEL_35:
          v64 = v60;
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *v67 = 138412290;
            v69 = v60;
            v70 = _swift_stdlib_bridgeErrorToNSError();
            *(v67 + 4) = v70;
            *v68 = v70;
            _os_log_impl(&dword_220099000, v65, v66, "reconcileObservations FAILED {error: %@}", v67, 0xCu);
            outlined destroy of UUID?(v68, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x223D77FF0](v68, -1, -1);
            MEMORY[0x223D77FF0](v67, -1, -1);
          }

          else
          {
          }

          v71 = v63;
LABEL_39:
          result = _sxRi_zRi0_zlySaySo32SKADatabaseSubscribedLocalStatusCGIsegr_SgWOe(v71);
          v73 = *MEMORY[0x277D85DE8];
          return result;
        }

        _sxRi_zRi0_zlySaySo32SKADatabaseSubscribedLocalStatusCGIsegr_SgWOe(v247);
        v43 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v265[0] = v36;
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
        v46 = v36[2];
        v47 = (v45 & 1) == 0;
        v48 = __OFADD__(v46, v47);
        v49 = v46 + v47;
        if (v48)
        {
          goto LABEL_69;
        }

        v50 = v45;
        if (v43[3] >= v49)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v45 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_native = v44;
            specialized _NativeDictionary.copy()();
            v44 = isUniquelyReferenced_nonNull_native;
            v43 = v265[0];
            if ((v50 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
          isUniquelyReferenced_nonNull_native = v265[0];
          v44 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
          if ((v50 & 1) != (v51 & 1))
          {
            goto LABEL_143;
          }

          v43 = isUniquelyReferenced_nonNull_native;
          if ((v50 & 1) == 0)
          {
LABEL_22:
            v43[(v44 >> 6) + 8] |= 1 << v44;
            v52 = v44;
            (*(v243 + 16))(v43[6] + *(v243 + 72) * v44, v20, v253);
            *(v43[7] + 8 * v52) = MEMORY[0x277D84F90];
            v53 = v43[2];
            v48 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v48)
            {
              goto LABEL_72;
            }

            v44 = v52;
            v43[2] = v54;
          }
        }

        isUniquelyReferenced_nonNull_native = v43;
        v55 = (v43[7] + 8 * v44);
        v56 = v8;
        MEMORY[0x223D76BD0]();
        if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v58 = *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v40)(v20, v253);
        ++v38;
        v247 = specialized thunk for @callee_guaranteed () -> (@owned [SKADatabaseSubscribedLocalStatus]);
        v57 = a1 == v37;
        v8 = v251;
        v36 = isUniquelyReferenced_nonNull_native;
        a1 = v258;
        if (v57)
        {
          goto LABEL_41;
        }
      }
    }

    v247 = 0;
    v252 = 0;
LABEL_41:
    v238 = v36;
    v264 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS4name_SS15modelIdentifiertTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v74 = v257;
    if (v257 >> 62)
    {
      v75 = __CocoaSet.count.getter();
      if (!v75)
      {
LABEL_77:

        v111 = v238 + 8;
        v112 = 1 << *(v238 + 32);
        v113 = -1;
        if (v112 < 64)
        {
          v113 = ~(-1 << v112);
        }

        v114 = v113 & v238[8];
        v244 = OBJC_IVAR___SKALocalStatusServer_subscriptionSubjects;
        v235 = (v112 + 63) >> 6;
        v245 = (v243 + 16);
        v246 = (v243 + 32);
        v241 = (v243 + 8);

        v115 = 0;
        *&v116 = 136315138;
        v236 = v116;
        *&v116 = 136315394;
        v256 = v116;
        v239 = v111;
        while (2)
        {
          if (v114)
          {
            v249 = v115;
            v119 = v115;
LABEL_93:
            v248 = (v114 - 1) & v114;
            v122 = __clz(__rbit64(v114)) | (v119 << 6);
            v123 = v238;
            v124 = v243;
            v125 = v240;
            v126 = v253;
            (*(v243 + 16))(v240, v238[6] + *(v243 + 72) * v122, v253);
            v127 = *(v123[7] + 8 * v122);
            v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMR);
            v129 = *(v128 + 48);
            (*(v124 + 32))(v8, v125, v126);
            *&v8[v129] = v127;
            (*(*(v128 - 8) + 56))(v8, 0, 1, v128);
          }

          else
          {
            if (v235 <= v115 + 1)
            {
              v120 = v115 + 1;
            }

            else
            {
              v120 = v235;
            }

            v121 = v120 - 1;
            while (1)
            {
              v119 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
                goto LABEL_139;
              }

              if (v119 >= v235)
              {
                break;
              }

              v114 = v111[v119];
              ++v115;
              if (v114)
              {
                v249 = v119;
                goto LABEL_93;
              }
            }

            v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMR);
            (*(*(v173 - 8) + 56))(v8, 1, 1, v173);
            v248 = 0;
            v249 = v121;
          }

          v130 = v242;
          outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v8, v242, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetSgMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetSgMR);
          v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMR);
          v132 = &selRef_executeRequest_error_;
          if ((*(*(v131 - 8) + 48))(v130, 1, v131) == 1)
          {

            v226 = Logger.logObject.getter();
            v227 = static os_log_type_t.default.getter();
            v228 = os_log_type_enabled(v226, v227);
            v229 = v233;
            v230 = v247;
            if (v228)
            {
              v231 = swift_slowAlloc();
              *v231 = 0;
              _os_log_impl(&dword_220099000, v226, v227, "reconcileObservations END", v231, 2u);
              MEMORY[0x223D77FF0](v231, -1, -1);
            }

            v71 = v230;
            goto LABEL_39;
          }

          v133 = *(v130 + *(v131 + 48));
          (*v246)(v254, v130, v253);
          v134 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So32SKADatabaseSubscribedLocalStatusCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          if (!(v133 >> 62))
          {
            v135 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v135)
            {
              goto LABEL_97;
            }

LABEL_120:

            MEMORY[0x28223BE20](v174);
            *(&v232 - 4) = &v264;
            v175 = v254;
            *(&v232 - 3) = v250;
            *(&v232 - 2) = v175;

            v176 = v252;
            v177 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in SKALocalStatusServer.reconcileObservations(reason:), (&v232 - 6), v134);
            v252 = v176;

            v178 = Logger.logObject.getter();
            v179 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v178, v179))
            {
              v180 = swift_slowAlloc();
              v181 = swift_slowAlloc();
              v265[0] = v181;
              *v180 = v236;
              v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
              v183 = MEMORY[0x223D76C00](v177, v182);
              v185 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v184, v265);

              *(v180 + 4) = v185;
              _os_log_impl(&dword_220099000, v178, v179, "reconcileObservations - Observations %s", v180, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v181);
              MEMORY[0x223D77FF0](v181, -1, -1);
              MEMORY[0x223D77FF0](v180, -1, -1);
            }

            v186 = v250;
            v187 = v244;
            swift_beginAccess();
            v188 = *(v186 + v187);
            if (*(v188 + 16) && (v189 = specialized __RawDictionaryStorage.find<A>(_:)(v254), (v190 & 1) != 0))
            {
              v191 = *(*(v188 + 56) + 8 * v189);
              swift_endAccess();

              CurrentValueSubject.value.getter();
              v192 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14LocalStatusKit08LSKLocalC11ObservationVy10Foundation4DataVG_Tt1g5(v265[0], v177);

              v193 = v241;
              if (v192)
              {

                v117 = *v193;
                v118 = v253;
                goto LABEL_82;
              }

              v262 = v134;
              v265[0] = v177;
              CurrentValueSubject.send(_:)();

              v202 = v234;
              v203 = v253;
              (*v245)(v234, v254, v253);
              swift_retain_n();
              v204 = Logger.logObject.getter();
              v218 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v204, v218))
              {
                v206 = swift_slowAlloc();
                v207 = swift_slowAlloc();
                v265[0] = v207;
                *v206 = v256;
                lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
                v219 = dispatch thunk of CustomStringConvertible.description.getter();
                v220 = v202;
                v221 = v219;
                v223 = v222;
                v117 = *v241;
                (*v241)(v220, v203);
                v224 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v221, v223, v265);

                *(v206 + 4) = v224;
                *(v206 + 12) = 2048;
                CurrentValueSubject.value.getter();
                v225 = *(v263 + 16);

                *(v206 + 14) = v225;

                v215 = v218;
                v216 = v204;
                v217 = "reconcileObservations publishing observations to exisitng subject {identifier: %s, observations.count: %ld}";
LABEL_128:
                _os_log_impl(&dword_220099000, v216, v215, v217, v206, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v207);
                MEMORY[0x223D77FF0](v207, -1, -1);
                MEMORY[0x223D77FF0](v206, -1, -1);

LABEL_81:
                v118 = v203;
LABEL_82:
                v111 = v239;
                v117(v254, v118);
                v8 = v251;
                v115 = v249;
                v114 = v248;
                continue;
              }
            }

            else
            {
              v262 = v134;
              swift_endAccess();
              v265[0] = MEMORY[0x277D84F90];
              v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMR);
              v195 = *(v194 + 48);
              v196 = *(v194 + 52);
              swift_allocObject();
              v197 = CurrentValueSubject.init(_:)();
              v198 = v244;
              swift_beginAccess();

              v199 = *(v186 + v198);
              v200 = swift_isUniquelyReferenced_nonNull_native();
              v263 = *(v186 + v198);
              *(v186 + v198) = 0x8000000000000000;
              v201 = v254;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v197, v254, v200);
              *(v186 + v198) = v263;
              swift_endAccess();
              v265[0] = v177;
              CurrentValueSubject.send(_:)();

              v202 = v237;
              v203 = v253;
              (*v245)(v237, v201, v253);
              swift_retain_n();
              v204 = Logger.logObject.getter();
              v205 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v204, v205))
              {
                v206 = swift_slowAlloc();
                v207 = swift_slowAlloc();
                v265[0] = v207;
                *v206 = v256;
                lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
                v208 = dispatch thunk of CustomStringConvertible.description.getter();
                v209 = v202;
                v210 = v208;
                v212 = v211;
                v117 = *v241;
                (*v241)(v209, v203);
                v213 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v210, v212, v265);

                *(v206 + 4) = v213;
                *(v206 + 12) = 2048;
                CurrentValueSubject.value.getter();
                v214 = *(v263 + 16);

                *(v206 + 14) = v214;

                v215 = v205;
                v216 = v204;
                v217 = "reconcileObservations published observations to new subject {identifier: %s, observations.count: %ld}";
                goto LABEL_128;
              }
            }

            v117 = *v241;
            (*v241)(v202, v203);

            goto LABEL_81;
          }

          break;
        }

        v135 = __CocoaSet.count.getter();
        if (!v135)
        {
          goto LABEL_120;
        }

LABEL_97:
        v136 = 0;
        v259 = v135;
        v260 = v133 & 0xC000000000000001;
        v255 = v133 & 0xFFFFFFFFFFFFFF8;
        while (2)
        {
          if (v260)
          {
            v140 = MEMORY[0x223D77050](v136, v133);
            v141 = v136 + 1;
            if (__OFADD__(v136, 1))
            {
              goto LABEL_135;
            }
          }

          else
          {
            if (v136 >= *(v255 + 16))
            {
              goto LABEL_138;
            }

            v140 = *(v133 + 8 * v136 + 32);
            v141 = v136 + 1;
            if (__OFADD__(v136, 1))
            {
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
              goto LABEL_141;
            }
          }

          v262 = v141;
          v142 = v140;
          v143 = Logger.logObject.getter();
          v144 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v143, v144))
          {
            v145 = swift_slowAlloc();
            v257 = swift_slowAlloc();
            v258 = swift_slowAlloc();
            v265[0] = v258;
            *v145 = v256;
            v146 = v134;
            v147 = [v142 v132[76]];
            v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v149 = v133;
            v151 = v150;

            v134 = v146;
            v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v151, v265);
            v133 = v149;

            *(v145 + 4) = v152;
            v132 = &selRef_executeRequest_error_;
            *(v145 + 12) = 2112;
            *(v145 + 14) = v142;
            v153 = v257;
            *v257 = v142;
            v154 = v142;
            _os_log_impl(&dword_220099000, v143, v144, "status.idsIdentifier %s, status %@", v145, 0x16u);
            outlined destroy of UUID?(v153, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x223D77FF0](v153, -1, -1);
            v155 = v258;
            __swift_destroy_boxed_opaque_existential_0(v258);
            MEMORY[0x223D77FF0](v155, -1, -1);
            MEMORY[0x223D77FF0](v145, -1, -1);
          }

          v156 = [v142 v132[76]];
          v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v159 = v158;

          v160 = v142;
          v161 = swift_isUniquelyReferenced_nonNull_native();
          v265[0] = v134;
          v162 = specialized __RawDictionaryStorage.find<A>(_:)(v157, v159);
          v164 = v134[2];
          v165 = (v163 & 1) == 0;
          v48 = __OFADD__(v164, v165);
          v166 = v164 + v165;
          if (v48)
          {
            goto LABEL_136;
          }

          v167 = v163;
          if (v134[3] >= v166)
          {
            if (v161)
            {
              goto LABEL_113;
            }

            v172 = v162;
            specialized _NativeDictionary.copy()();
            v162 = v172;
            v132 = &selRef_executeRequest_error_;
            if (v167)
            {
              goto LABEL_98;
            }

LABEL_114:
            v134 = v265[0];
            *(v265[0] + (v162 >> 6) + 8) |= 1 << v162;
            v169 = (v134[6] + 16 * v162);
            *v169 = v157;
            v169[1] = v159;
            *(v134[7] + 8 * v162) = v160;

            v170 = v134[2];
            v48 = __OFADD__(v170, 1);
            v171 = v170 + 1;
            if (v48)
            {
              goto LABEL_137;
            }

            v134[2] = v171;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v166, v161);
            v162 = specialized __RawDictionaryStorage.find<A>(_:)(v157, v159);
            if ((v167 & 1) != (v168 & 1))
            {
              goto LABEL_142;
            }

LABEL_113:
            if ((v167 & 1) == 0)
            {
              goto LABEL_114;
            }

LABEL_98:
            v137 = v162;

            v134 = v265[0];
            v138 = *(v265[0] + 7);
            v139 = *(v138 + 8 * v137);
            *(v138 + 8 * v137) = v160;
          }

          ++v136;
          if (v262 == v259)
          {
            goto LABEL_120;
          }

          continue;
        }
      }
    }

    else
    {
      v75 = *((v257 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v75)
      {
        goto LABEL_77;
      }
    }

    v20 = 0;
    v259 = v74 & 0xC000000000000001;
    v255 = v74 & 0xFFFFFFFFFFFFFF8;
    *&v256 = v75;
LABEL_46:
    if (v259)
    {
      v76 = MEMORY[0x223D77050](v20, v74);
    }

    else
    {
      if (v20 >= *(v255 + 16))
      {
        goto LABEL_71;
      }

      v76 = *(v74 + 8 * v20 + 32);
    }

    v8 = v76;
    isUniquelyReferenced_nonNull_native = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      break;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v77 = [v76 uniqueID];
  if (!v77)
  {

    v8 = v251;
LABEL_45:
    ++v20;
    if (isUniquelyReferenced_nonNull_native == v75)
    {
      goto LABEL_77;
    }

    goto LABEL_46;
  }

  v78 = v77;
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  v82 = [v8 name];
  if (!v82)
  {
    goto LABEL_140;
  }

  v83 = v82;
  v260 = v20 + 1;
  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v262 = v84;

  v85 = [v8 modelIdentifier];
  if (!v85)
  {
LABEL_141:
    __break(1u);
  }

  v86 = v85;
  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  isUniquelyReferenced_nonNull_native = v88;

  v89 = swift_isUniquelyReferenced_nonNull_native();
  v90 = v264;
  v265[0] = v264;
  v91 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v81);
  v93 = v90[2];
  v94 = (v92 & 1) == 0;
  v48 = __OFADD__(v93, v94);
  v95 = v93 + v94;
  if (v48)
  {
    goto LABEL_70;
  }

  v96 = v92;
  if (v90[3] >= v95)
  {
    if ((v89 & 1) == 0)
    {
      v104 = v91;
      specialized _NativeDictionary.copy()();
      v91 = v104;
      if (v96)
      {
        goto LABEL_60;
      }

      goto LABEL_62;
    }

LABEL_59:
    if (v96)
    {
LABEL_60:
      v98 = v91;

      v99 = v265[0];
      v100 = (*(v265[0] + 7) + 32 * v98);
      v101 = v100[1];
      v102 = v100[3];
      v103 = v262;
      *v100 = a1;
      v100[1] = v103;
      v100[2] = v87;
      v100[3] = isUniquelyReferenced_nonNull_native;

LABEL_64:
      v264 = v99;
      v8 = v251;
      v74 = v257;
      v75 = v256;
      isUniquelyReferenced_nonNull_native = v260;
      goto LABEL_45;
    }

LABEL_62:
    v99 = v265[0];
    *(v265[0] + (v91 >> 6) + 8) |= 1 << v91;
    v105 = (v99[6] + 16 * v91);
    *v105 = v79;
    v105[1] = v81;
    v106 = (v99[7] + 32 * v91);
    v107 = v262;
    *v106 = a1;
    v106[1] = v107;
    v106[2] = v87;
    v106[3] = isUniquelyReferenced_nonNull_native;

    v108 = v99[2];
    v48 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (v48)
    {
      goto LABEL_73;
    }

    v99[2] = v109;
    goto LABEL_64;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v95, v89);
  v91 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v81);
  if ((v96 & 1) == (v97 & 1))
  {
    goto LABEL_59;
  }

LABEL_142:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_143:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedcD0CGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedaB0CGtMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedaB0CGtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGSaySo021SKADatabaseSubscribedcD0CGGMd, &_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGSaySo021SKADatabaseSubscribedcD0CGGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Sendable)(v10, v6, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedaB0CGtMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedaB0CGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So37SKADatabasePublishedLocalStatusDeviceCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _sxRi_zRi0_zlySaySo32SKADatabaseSubscribedLocalStatusCGIsegr_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *_sSo30ACAccountCredentialRenewResultVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2200A41FC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v4 | 7);
}

uint64_t sub_2200A42C4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v4 | 7);
}

uint64_t sub_2200A4378()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2200A4424()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVGMd, &_sScSy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (v9 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 16);

  return MEMORY[0x2821FE8E8](v0, ((v11 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_2200A459C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A4654()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2200A474C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2200A4808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2200A48D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2200A49AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2200A4A0C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2200A4AEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2200A4B24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A4BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A4C9C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  result = LSKKey.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2200A4CDC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2200A4D2C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2200A4D64()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2200A4DBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A4E9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  v8 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A4F84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A4FE0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2200A5010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ContinuousClock.Instant();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2200A50BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ContinuousClock.Instant();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2200A5160()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2200A51A0()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A51EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A5230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2200A52DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2200A5380()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2200A53B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyShySo15SKPresentDeviceCGs5NeverOGMd, &_sScCyShySo15SKPresentDeviceCGs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A544C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2200A5540()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2200A562C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A5728()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2200A5778()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2200A57C4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2200A58F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2200A5938()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2200A59FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A5A40()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t *OUTLINED_FUNCTION_2_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_2200AABA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2200AB2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2200AF5B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_2200B2550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t AuthCredentialReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 2)
      {
        [a1 clearOneofValuesForAuthCredentialOneof];
        *(a1 + 32) |= 1u;
        *(a1 + 8) = 2;
        v21 = objc_alloc_init(SharedOwnershipAuth);
        objc_storeStrong((a1 + 16), v21);
        v24[0] = 0;
        v24[1] = 0;
        if (!PBReaderPlaceMark() || !SharedOwnershipAuthReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        [a1 clearOneofValuesForAuthCredentialOneof];
        *(a1 + 32) |= 1u;
        *(a1 + 8) = 1;
        v19 = PBReaderReadString();
        v20 = *(a1 + 24);
        *(a1 + 24) = v19;
      }

      else if (v13)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = 0;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((SLOBYTE(v24[0]) & 0x80000000) == 0)
          {
            break;
          }

          if (v14++ > 8)
          {
            goto LABEL_36;
          }
        }

        [a2 hasError];
      }

LABEL_36:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityActivationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v15 = PBReaderReadString();
            v16 = 16;
            goto LABEL_64;
          }

          if (v13 == 8)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v41) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v41 & 0x7F) << v17;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_78;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_78:
            v38 = 48;
            goto LABEL_79;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v41) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v41 & 0x7F) << v24;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_70;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_70:
            *(a1 + 8) = v30;
            goto LABEL_80;
          }

          if (v13 == 6)
          {
            v15 = PBReaderReadData();
            v16 = 40;
LABEL_64:
            v37 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_80;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            LOBYTE(v41) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v41 & 0x7F) << v31;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_74;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v33;
          }

LABEL_74:
          v38 = 52;
LABEL_79:
          *(a1 + v38) = v23;
          goto LABEL_80;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadData();
          v16 = 56;
          goto LABEL_64;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(AuthCredential);
          objc_storeStrong((a1 + 24), v14);
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !AuthCredentialReadFrom(v14, a2))
          {
LABEL_82:

            return 0;
          }

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ChannelIdentity);
          objc_storeStrong((a1 + 32), v14);
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !ChannelIdentityReadFrom(v14, a2))
          {
            goto LABEL_82;
          }

LABEL_44:
          PBReaderRecallMark();

          goto LABEL_80;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_80:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityActivationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v65[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v65[0] & 0x7F) << v5;
        if ((v65[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v65[0]) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v65[0] & 0x7F) << v42;
              if ((v65[0] & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_113;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v44;
            }

LABEL_113:
            v61 = 16;
            goto LABEL_127;
          }

          if (v13 == 4)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 64) |= 4u;
            while (1)
            {
              LOBYTE(v65[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v65[0] & 0x7F) << v23;
              if ((v65[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_101;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_101:
            v61 = 24;
            goto LABEL_127;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 64) |= 0x20u;
            while (1)
            {
              LOBYTE(v65[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v65[0] & 0x7F) << v36;
              if ((v65[0] & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_109;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v38;
            }

LABEL_109:
            v62 = 48;
            goto LABEL_122;
          }

          if (v13 == 2)
          {
            v21 = PBReaderReadData();
            v22 = *(a1 + 56);
            *(a1 + 56) = v21;

            goto LABEL_128;
          }
        }

        goto LABEL_96;
      }

      if (v13 > 6)
      {
        break;
      }

      if (v13 != 5)
      {
        if (v13 == 6)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v65[0] & 0x7F) << v30;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v32;
          }

LABEL_105:
          v62 = 40;
          goto LABEL_122;
        }

LABEL_96:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_128;
      }

      v54 = objc_alloc_init(ChannelActivityParticipantPayload);
      [a1 addParticipantPayload:v54];
      v65[0] = 0;
      v65[1] = 0;
      if (!PBReaderPlaceMark() || !ChannelActivityParticipantPayloadReadFrom(v54, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_128:
      v63 = [a2 position];
      if (v63 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 7:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 64) |= 0x40u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v65[0] & 0x7F) << v48;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_117;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v50;
        }

LABEL_117:
        v62 = 52;
        goto LABEL_122;
      case 8:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 64) |= 1u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v65[0] & 0x7F) << v55;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_126;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v57;
        }

LABEL_126:
        v61 = 8;
LABEL_127:
        *(a1 + v61) = v29;
        goto LABEL_128;
      case 9:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 64) |= 0x10u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v65[0] & 0x7F) << v14;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_121;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_121:
        v62 = 44;
LABEL_122:
        *(a1 + v62) = v20;
        goto LABEL_128;
    }

    goto LABEL_96;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityDeactivationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(AuthCredential);
          objc_storeStrong((a1 + 24), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !AuthCredentialReadFrom(v16, a2))
          {
LABEL_49:

            return 0;
          }

          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(ChannelIdentity);
          objc_storeStrong((a1 + 32), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !ChannelIdentityReadFrom(v16, a2))
          {
            goto LABEL_49;
          }

LABEL_40:
          PBReaderRecallMark();

          goto LABEL_47;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = 40;
            goto LABEL_28;
          case 4:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v27 & 0x7F) << v18;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_46;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_46:
            *(a1 + 8) = v24;
            goto LABEL_47;
          case 5:
            v14 = PBReaderReadString();
            v15 = 16;
LABEL_28:
            v17 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityDeactivationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 40) |= 8u;
          while (1)
          {
            v47 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v47 & 0x7F) << v36;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_74;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v38;
          }

LABEL_74:
          v44 = 28;
LABEL_79:
          *(a1 + v44) = v20;
          goto LABEL_80;
        }

        if (v13 != 2)
        {
LABEL_60:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_80;
        }

        v21 = PBReaderReadData();
        v22 = *(a1 + 32);
        *(a1 + 32) = v21;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v49 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v49 & 0x7F) << v23;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_65;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_65:
            v43 = 8;
            break;
          case 4:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              v48 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v48 & 0x7F) << v30;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_69;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v32;
            }

LABEL_69:
            v43 = 16;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              v50 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v50 & 0x7F) << v14;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_78;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_78:
            v44 = 24;
            goto LABEL_79;
          default:
            goto LABEL_60;
        }

        *(a1 + v43) = v29;
      }

LABEL_80:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityParticipantPayloadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityPollingRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(AuthCredential);
          objc_storeStrong((a1 + 16), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !AuthCredentialReadFrom(v16, a2))
          {
LABEL_49:

            return 0;
          }

          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(ChannelIdentity);
          objc_storeStrong((a1 + 24), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !ChannelIdentityReadFrom(v16, a2))
          {
            goto LABEL_49;
          }

LABEL_40:
          PBReaderRecallMark();

          goto LABEL_47;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v27 & 0x7F) << v17;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_46;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_46:
            *(a1 + 32) = v23;
            goto LABEL_47;
          case 4:
            v14 = PBReaderReadData();
            v15 = 40;
            goto LABEL_37;
          case 5:
            v14 = PBReaderReadString();
            v15 = 8;
LABEL_37:
            v24 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityPollingResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59[0] & 0x7F) << v5;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v59[0] & 0x7F) << v43;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v45;
            }

LABEL_95:
            v56 = 8;
            goto LABEL_108;
          }

          if (v13 == 4)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v59[0] & 0x7F) << v23;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_107;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_107:
            v56 = 16;
LABEL_108:
            *(a1 + v56) = v29;
            goto LABEL_114;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 56) |= 0x10u;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v59[0] & 0x7F) << v36;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v38;
            }

LABEL_91:
            v55 = 40;
LABEL_113:
            *(a1 + v55) = v22;
            goto LABEL_114;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadData();
            v15 = *(a1 + 48);
            *(a1 + 48) = v14;

            goto LABEL_114;
          }
        }

        goto LABEL_86;
      }

      if (v13 > 6)
      {
        break;
      }

      if (v13 != 5)
      {
        if (v13 == 6)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            LOBYTE(v59[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v59[0] & 0x7F) << v16;
            if ((v59[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_103;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_103:
          v55 = 32;
          goto LABEL_113;
        }

        goto LABEL_86;
      }

      v42 = objc_alloc_init(ChannelActivityParticipantPayload);
      [a1 addParticipantPayload:v42];
      v59[0] = 0;
      v59[1] = 0;
      if (!PBReaderPlaceMark() || !ChannelActivityParticipantPayloadReadFrom(v42, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_114:
      v57 = [a2 position];
      if (v57 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 7)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      *(a1 + 56) |= 0x20u;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v59[0] & 0x7F) << v49;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v11 = v50++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_99;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v51;
      }

LABEL_99:
      v55 = 44;
      goto LABEL_113;
    }

    if (v13 == 8)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 56) |= 8u;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v59[0] & 0x7F) << v30;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_112;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v32;
      }

LABEL_112:
      v55 = 36;
      goto LABEL_113;
    }

LABEL_86:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_114;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityUpdateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 24);
        *(a1 + 24) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_44:
          v30 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_50;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v30 = 8;
        }

        *(a1 + v30) = v20;
      }

LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityUpdatePayloadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = PBReaderReadData();
        v23 = *(a1 + 8);
        *(a1 + 8) = v22;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(ChannelActivityParticipantPayload);
        [a1 addParticipantPayload:v21];
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !ChannelActivityParticipantPayloadReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_38:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelDeferredPublishInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(ChannelIdentity);
          objc_storeStrong((a1 + 16), v16);
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !ChannelIdentityReadFrom(v16, a2))
          {
LABEL_61:

            return 0;
          }

          goto LABEL_47;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(SharedChannelProvisionOffGridPacketInfo);
          [a1 addChannelProvisionOffGridPacketInfo:v16];
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !SharedChannelProvisionOffGridPacketInfoReadFrom(v16, a2))
          {
            goto LABEL_61;
          }

LABEL_47:
          PBReaderRecallMark();

          goto LABEL_59;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v33 & 0x7F) << v17;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_53;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_53:
            v30 = 32;
            goto LABEL_58;
          case 4:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v33 & 0x7F) << v24;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_57;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v26;
            }

LABEL_57:
            v30 = 36;
LABEL_58:
            *(a1 + v30) = v23;
            goto LABEL_59;
          case 5:
            v14 = PBReaderReadString();
            v15 = *(a1 + 8);
            *(a1 + 8) = v14;

            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelIdentityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadData();
        v15 = 24;
LABEL_36:
        v24 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_41;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v27 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v27 & 0x7F) << v16;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_40;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_40:
      *(a1 + 16) = v22;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 32;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = PBReaderReadData();
      v15 = 8;
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelPublishPayloadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v62[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62[0] & 0x7F) << v5;
        if ((v62[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 40;
          goto LABEL_61;
        }

        if (v13 == 4)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            LOBYTE(v62[0]) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v62[0] & 0x7F) << v17;
            if ((v62[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_94:
          v57 = 16;
          goto LABEL_101;
        }

        goto LABEL_89;
      }

      if (v13 == 1)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 60) |= 1u;
        while (1)
        {
          LOBYTE(v62[0]) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v62[0] & 0x7F) << v31;
          if ((v62[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_100;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v33;
        }

LABEL_100:
        v57 = 8;
LABEL_101:
        *(a1 + v57) = v23;
        goto LABEL_114;
      }

      if (v13 != 2)
      {
        goto LABEL_89;
      }

      v16 = objc_alloc_init(ChannelIdentity);
      objc_storeStrong((a1 + 32), v16);
      v62[0] = 0;
      v62[1] = 0;
      if (!PBReaderPlaceMark() || !ChannelIdentityReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_114:
      v60 = [a2 position];
      if (v60 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 60) |= 4u;
        while (1)
        {
          LOBYTE(v62[0]) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v62[0] & 0x7F) << v44;
          if ((v62[0] & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v50 = 0;
            goto LABEL_108;
          }
        }

        if ([a2 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v46;
        }

LABEL_108:
        v59 = 48;
        goto LABEL_113;
      }

      if (v13 == 6)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 60) |= 0x10u;
        while (1)
        {
          LOBYTE(v62[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v62[0] & 0x7F) << v24;
          if ((v62[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            LOBYTE(v30) = 0;
            goto LABEL_96;
          }
        }

        v30 = (v26 != 0) & ~[a2 hasError];
LABEL_96:
        v58 = 56;
        goto LABEL_104;
      }
    }

    else
    {
      switch(v13)
      {
        case 7:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 60) |= 0x20u;
          while (1)
          {
            LOBYTE(v62[0]) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v62[0] & 0x7F) << v38;
            if ((v62[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_103;
            }
          }

          v30 = (v40 != 0) & ~[a2 hasError];
LABEL_103:
          v58 = 57;
LABEL_104:
          *(a1 + v58) = v30;
          goto LABEL_114;
        case 8:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            LOBYTE(v62[0]) = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v62[0] & 0x7F) << v51;
            if ((v62[0] & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v50 = 0;
              goto LABEL_112;
            }
          }

          if ([a2 hasError])
          {
            v50 = 0;
          }

          else
          {
            v50 = v53;
          }

LABEL_112:
          v59 = 52;
LABEL_113:
          *(a1 + v59) = v50;
          goto LABEL_114;
        case 9:
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_61:
          v37 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_114;
      }
    }

LABEL_89:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_114;
  }

  return [a2 hasError] ^ 1;
}

uint64_t DecryptedParticipantPayloadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_36;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_36;
          case 4:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v27 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v27 & 0x7F) << v16;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_44;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_44:
            *(a1 + 8) = v22;
            goto LABEL_37;
          case 5:
            v14 = PBReaderReadData();
            v15 = 24;
LABEL_36:
            v23 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelActivityRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 1)
      {
        if (v13 == 2)
        {
          [a1 clearOneofValuesForRequest];
          *(a1 + 36) |= 1u;
          *(a1 + 32) = 2;
          v14 = objc_alloc_init(ChannelActivityDeactivationRequest);
          objc_storeStrong((a1 + 16), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !ChannelActivityDeactivationRequestReadFrom(v14, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 3)
        {
          [a1 clearOneofValuesForRequest];
          *(a1 + 36) |= 1u;
          *(a1 + 32) = 3;
          v14 = objc_alloc_init(ChannelActivityPollingRequest);
          objc_storeStrong((a1 + 24), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !ChannelActivityPollingRequestReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (!v13)
        {
          v15 = 0;
          while (1)
          {
            LOBYTE(v22) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            if ((v22 & 0x80000000) == 0)
            {
              break;
            }

            if (v15++ > 8)
            {
              goto LABEL_42;
            }
          }

          [a2 hasError];
          goto LABEL_42;
        }

        if (v13 == 1)
        {
          [a1 clearOneofValuesForRequest];
          *(a1 + 36) |= 1u;
          *(a1 + 32) = 1;
          v14 = objc_alloc_init(ChannelActivityActivationRequest);
          objc_storeStrong((a1 + 8), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !ChannelActivityActivationRequestReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}