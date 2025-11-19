uint64_t SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:)()
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
    v8 = v0[26];
    v14 = v0[27];
    v9 = v0[25];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[35] = v10;
    v0[2] = v0;
    v0[3] = SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_64;
    [v13 registerForDelegateCallbacksWithPresenceIdentifier:v10 options:v14 completion:v0 + 10];
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
    v6 = SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:);
  }

  else
  {
    v6 = SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
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

uint64_t @objc closure #1 in SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:), v6, v5);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 48) = _Block_copy(*(v0 + 32));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 56) = v5;
  v7 = v3;
  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = @objc closure #1 in SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:);
  v10 = *(v0 + 40);
  v11 = *(v0 + 24);

  return SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:)(v4, v6, v11);
}

{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 24);
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

uint64_t SKAPresenceClientProxy.hasInitialCloudKitImportOccurred()()
{
  v1[25] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[29] = v6;
  v1[30] = v5;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.hasInitialCloudKitImportOccurred(), v6, v5);
}

{
  v1 = v0[25];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[31] = v4;
  if (v4)
  {
    v6 = v0[27];
    v5 = v0[28];
    v7 = v0[26];
    v0[2] = v0;
    v0[7] = v0 + 33;
    v0[3] = SKAPresenceClientProxy.hasInitialCloudKitImportOccurred();
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    v9 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?, @unowned Bool) -> () with result type Bool;
    v0[13] = &block_descriptor_68;
    [v9 hasInitialCloudKitImportOccurredWithCompletion_];
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
  *(*v0 + 256) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = SKAPresenceClientProxy.hasInitialCloudKitImportOccurred();
  }

  else
  {
    v6 = SKAPresenceClientProxy.hasInitialCloudKitImportOccurred();
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 264);

  v3 = *(v0 + 8);

  return v3(v2);
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[28];
  swift_willThrow();

  swift_getErrorValue();
  v4 = v0[21];
  Error.sanitizedError.getter(v0[22], v0[23]);
  swift_willThrow();

  v5 = v0[1];

  return v5(0);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.hasInitialCloudKitImportOccurred()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.hasInitialCloudKitImportOccurred(), v4, v3);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.hasInitialCloudKitImportOccurred()()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in SKAPresenceClientProxy.hasInitialCloudKitImportOccurred();
  v4 = *(v0 + 24);

  return SKAPresenceClientProxy.hasInitialCloudKitImportOccurred()();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.hasInitialCloudKitImportOccurred()(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11, 0);
  }

  else
  {
    (*(v10 + 16))(v10, 0, a1 & 1);
  }

  _Block_release(*(v6 + 32));
  v12 = *(v9 + 8);

  return v12();
}

id SKAPresenceClientProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor()
{
  result = lazy protocol witness table cache variable for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor;
  if (!lazy protocol witness table cache variable for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor)
  {
    type metadata accessor for SKAPrimaryQueueActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor);
  }

  return result;
}

uint64_t partial apply for closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(uint64_t a1)
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

  return closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)(a1, v4, v5, v6);
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(uint64_t a1)
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

  return closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)(a1, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.hasInitialCloudKitImportOccurred()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.hasInitialCloudKitImportOccurred()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)(v2, v3, v4);
}

uint64_t objectdestroy_74Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)(v2, v3, v4);
}

uint64_t objectdestroy_87Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_147Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)(v2, v3, v4);
}

uint64_t objectdestroy_102Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)(v2, v3, v4);
}

uint64_t objectdestroy_282Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7 + 8);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

void *SKAStatusPublishingServiceClientProxy.underlyingClient.getter()
{
  v1 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SKAStatusPublishingServiceClientProxy.underlyingClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *SKAStatusPublishingServiceClientProxy.__allocating_init(xpcConnection:queue:delegate:databaseManager:invitationManager:publishingManager:channelManager:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(v7);
  *&v13[OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient] = 0;
  v14 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_queue;
  v15 = type metadata accessor for SKAAsyncQueue(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v13[v14] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000002ALL, 0x80000002201AD840, 1, 0);
  v27.receiver = v13;
  v27.super_class = v7;
  v18 = objc_msgSendSuper2(&v27, sel_init);
  v19 = objc_allocWithZone(SKAStatusPublishingServiceClient);
  v20 = v18;
  v21 = [v19 initWithXPCConnection:a1 queue:a2 delegate:a3 databaseManager:a4 invitationManager:a5 publishingManager:a6 channelManager:a7 daemonProtocolDelegate:v20];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v22 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v23 = *&v20[v22];
  *&v20[v22] = v21;

  return v20;
}

char *SKAStatusPublishingServiceClientProxy.init(xpcConnection:queue:delegate:databaseManager:invitationManager:publishingManager:channelManager:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient] = 0;
  v14 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_queue;
  v15 = type metadata accessor for SKAAsyncQueue(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v7[v14] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000002ALL, 0x80000002201AD840, 1, 0);
  v27.receiver = v7;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, sel_init);
  v19 = objc_allocWithZone(SKAStatusPublishingServiceClient);
  v20 = v18;
  v21 = [v19 initWithXPCConnection:a1 queue:a2 delegate:a3 databaseManager:a4 invitationManager:a5 publishingManager:a6 channelManager:a7 daemonProtocolDelegate:v20];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v22 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v23 = *&v20[v22];
  *&v20[v22] = v21;

  return v20;
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 48) = _Block_copy(*(v0 + 32));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 56) = v5;
  v7 = v3;
  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = @objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
  v10 = *(v0 + 40);
  v11 = *(v0 + 16);

  return SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(v11, v4, v6);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 64);
  v9 = *(*v3 + 56);
  v10 = *(*v3 + 40);
  v11 = *(*v3 + 16);
  v12 = *v3;

  if (v4)
  {
    a2 = _convertErrorToNSError(_:)();

    v13 = a2;
LABEL_3:
    v14 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    v13 = 0;
    goto LABEL_3;
  }

  v15 = MEMORY[0x223D76B00](a1, a2);

  v14 = v15;
  v13 = 0;
  a2 = v15;
LABEL_6:
  v16 = *(v7 + 48);
  (v16)[2](v16, v14, v13);

  _Block_release(v16);
  v17 = *(v12 + 8);

  return v17();
}

uint64_t SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:), v6, v5);
}

uint64_t SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v0[13] = *&v2[OBJC_IVAR___SKAStatusPublishingServiceClientProxy_queue];
  v5 = swift_allocObject();
  v0[14] = v5;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v1;
  v6 = v2;

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:), 0, 0);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "provisionPayloads(_:statusTypeIdentifier:)";
  *(v3 + 32) = 42;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:);
  *(v3 + 56) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24SKStatusProvisionPayloadCGMd, &_sSaySo24SKStatusProvisionPayloadCGMR);
  *v5 = v0;
  v5[1] = SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:);

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, partial apply for specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:), v3, v6);
}

{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:), 0, 0);
  }

  else
  {
    v4 = v3[14];
    v5 = v3[15];

    v6 = v3[5];
    v7 = v3[1];

    return v7(v6);
  }
}

{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[11];
  v4 = v0[12];

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:), v3, v4);
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

uint64_t closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMd, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMR);
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v8 = *(v7 + 64) + 15;
  v5[29] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[30] = v10;
  v5[31] = v9;

  return MEMORY[0x2822009F8](closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:), v10, v9);
}

uint64_t closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:)()
{
  v1 = v0[23];
  v2 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[32] = v4;
  if (v4)
  {
    v5 = v0[28];
    v14 = v0[29];
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[24];
    v9 = v0[25];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKStatusProvisionPayload, 0x277D68130);
    v15 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[33] = isa;
    v11 = MEMORY[0x223D76B00](v9, v7);
    v0[34] = v11;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24SKStatusProvisionPayloadCGMd, &_sSaySo24SKStatusProvisionPayloadCGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v14, v6);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKStatusProvisionPayload];
    v0[13] = &block_descriptor_192;
    [v15 provisionPayloads:isa statusTypeIdentifier:v11 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v6);
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
  v4 = *(v1 + 248);
  v5 = *(v1 + 240);
  if (v3)
  {
    v6 = closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:);
  }

  else
  {
    v6 = closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  **(v0 + 176) = *(v0 + 168);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[35];

  return v6();
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKStatusProvisionPayload](uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMd, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKStatusProvisionPayload, 0x277D68130);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMd, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:), v6, v5);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 48) = _Block_copy(*(v0 + 32));
  *(v0 + 56) = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKStatusProvisionPayload, 0x277D68130);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 64) = v4;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  *(v0 + 72) = v6;
  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = @objc closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:);
  v10 = *(v0 + 40);

  return SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:)(v4, v5, v7);
}

{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 40);
  v8 = *v1;

  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = *(v3 + 56);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v14 = *(v3 + 48);
  (v14)[2](v14, v11, v10);

  _Block_release(v14);
  v15 = *(v8 + 8);

  return v15();
}

uint64_t SKAStatusPublishingServiceClientProxy.invitedHandles(forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2)
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

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.invitedHandles(forStatusTypeIdentifier:), v8, v7);
}

uint64_t SKAStatusPublishingServiceClientProxy.invitedHandles(forStatusTypeIdentifier:)()
{
  v1 = v0[28];
  v2 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
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
    v0[13] = &block_descriptor_5;
    [v13 invitedHandlesForStatusTypeIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.invitedHandles(forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusPublishingServiceClientProxy.invitedHandles(forStatusTypeIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.invitedHandles(forStatusTypeIdentifier:)()
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

  return SKAStatusPublishingServiceClientProxy.invitedHandles(forStatusTypeIdentifier:)(v3, v5);
}

uint64_t SKAStatusPublishingServiceClientProxy.isHandleInvited(_:fromSenderHandle:forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.isHandleInvited(_:fromSenderHandle:forStatusTypeIdentifier:), v10, v9);
}

uint64_t SKAStatusPublishingServiceClientProxy.isHandleInvited(_:fromSenderHandle:forStatusTypeIdentifier:)()
{
  v1 = v0[29];
  v2 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
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
    v0[13] = &block_descriptor_13_0;
    [v13 isHandleInvited:v14 fromSenderHandle:v15 forStatusTypeIdentifier:v10 completion:v0 + 10];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInvited(_:fromSenderHandle:forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInvited(_:fromSenderHandle:forStatusTypeIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInvited(_:fromSenderHandle:forStatusTypeIdentifier:)()
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

  return SKAStatusPublishingServiceClientProxy.isHandleInvited(_:fromSenderHandle:forStatusTypeIdentifier:)(v14, v13, v5, v7);
}

uint64_t SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:), v10, v9);
}

uint64_t SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:)()
{
  v1 = v0[29];
  v2 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
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
    v0[3] = SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
    v0[13] = &block_descriptor_17;
    [v13 isHandleInviteable:v14 fromHandle:v15 forStatusTypeIdentifier:v10 completion:v0 + 10];
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
    v6 = SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:);
  }

  else
  {
    v6 = SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:)()
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
  v11[1] = @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:);
  v12 = *(v0 + 48);
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);

  return SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:)(v14, v13, v5, v7);
}

uint64_t SKAStatusPublishingServiceClientProxy.fetchHandleInvitability(_:from:forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.fetchHandleInvitability(_:from:forStatusTypeIdentifier:), v10, v9);
}

uint64_t SKAStatusPublishingServiceClientProxy.fetchHandleInvitability(_:from:forStatusTypeIdentifier:)()
{
  v1 = v0[30];
  v2 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
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
    v0[13] = &block_descriptor_21;
    [v13 fetchHandleInvitability:v14 fromHandle:v15 forStatusTypeIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.fetchHandleInvitability(_:from:forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusPublishingServiceClientProxy.fetchHandleInvitability(_:from:forStatusTypeIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.fetchHandleInvitability(_:from:forStatusTypeIdentifier:)()
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

  return SKAStatusPublishingServiceClientProxy.fetchHandleInvitability(_:from:forStatusTypeIdentifier:)(v14, v13, v5, v7);
}

uint64_t SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[29] = a5;
  v6[30] = v5;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6[31] = v7;
  v8 = *(v7 - 8);
  v6[32] = v8;
  v9 = *(v8 + 64) + 15;
  v6[33] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[34] = v11;
  v6[35] = v10;

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:), v11, v10);
}

uint64_t SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:)()
{
  v1 = v0[30];
  v2 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
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
    v17 = v0[27];
    v16 = v0[26];
    v10 = v0[25];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
    v15 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[37] = isa;
    v12 = MEMORY[0x223D76B00](v9, v8);
    v0[38] = v12;
    v0[2] = v0;
    v0[3] = SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_25;
    [v15 inviteHandles:isa fromSenderHandle:v16 withInvitationPayload:v17 statusTypeIdentifier:v12 completion:?];
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
  *(*v0 + 312) = v3;
  v4 = *(v1 + 280);
  v5 = *(v1 + 272);
  if (v3)
  {
    v6 = SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:);
  }

  else
  {
    v6 = SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);

  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[33];
  swift_willThrow();

  swift_getErrorValue();
  v6 = v0[21];
  Error.sanitizedError.getter(v0[22], v0[23]);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:), v8, v7);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:)()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 64) = _Block_copy(*(v0 + 48));
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  *(v0 + 80) = v8;
  v10 = v5;
  v11 = v3;
  v12 = v1;
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = @objc closure #1 in SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:);
  v14 = *(v0 + 56);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);

  return SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:)(v6, v15, v16, v7, v9);
}

{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *(*v1 + 56);
  v9 = *(*v1 + 32);
  v10 = *(*v1 + 24);
  v11 = *v1;

  v12 = *(v3 + 64);
  if (v2)
  {
    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 64), 0);
  }

  _Block_release(*(v4 + 64));
  v14 = *(v11 + 8);

  return v14();
}

uint64_t SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:), v9, v8);
}

uint64_t SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:)()
{
  v1 = v0[28];
  v2 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
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
    v10 = v0[25];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
    v15 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[35] = isa;
    v12 = MEMORY[0x223D76B00](v9, v8);
    v0[36] = v12;
    v0[2] = v0;
    v0[3] = SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_29;
    [v15 removeInvitedHandles:isa statusTypeIdentifier:v12 completion:?];
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
  v4 = *(v1 + 264);
  v5 = *(v1 + 256);
  if (v3)
  {
    v6 = SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:);
  }

  else
  {
    v6 = SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);

  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  swift_willThrow();

  swift_getErrorValue();
  v6 = v0[21];
  Error.sanitizedError.getter(v0[22], v0[23]);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:), v6, v5);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:)()
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

  return SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:)(v4, v5, v7);
}

uint64_t SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[31] = v8;
  v3[32] = v7;

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:), v8, v7);
}

uint64_t SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:)()
{
  v1 = v0[27];
  v2 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[33] = v4;
  if (v4)
  {
    v6 = v0[29];
    v5 = v0[30];
    v7 = v0[28];
    v9 = v0[25];
    v8 = v0[26];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[34] = v10;
    v0[2] = v0;
    v0[3] = SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_33;
    [v13 removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier:v10 completion:v0 + 10];
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
  *(*v0 + 280) = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 248);
  if (v3)
  {
    v6 = SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:);
  }

  else
  {
    v6 = SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:)()
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

  return SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:)(v3, v5);
}

uint64_t SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[31] = v8;
  v3[32] = v7;

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:), v8, v7);
}

uint64_t SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)()
{
  v1 = v0[27];
  v2 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[33] = v4;
  if (v4)
  {
    v6 = v0[29];
    v5 = v0[30];
    v7 = v0[28];
    v9 = v0[25];
    v8 = v0[26];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[34] = v10;
    v0[2] = v0;
    v0[3] = SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_37;
    [v13 registerForDelegateCallbacksWithStatusTypeIdentifier:v10 completion:v0 + 10];
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
  *(*v0 + 280) = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 248);
  if (v3)
  {
    v6 = SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:);
  }

  else
  {
    v6 = SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);

  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[30];
  swift_willThrow();

  swift_getErrorValue();
  v5 = v0[21];
  Error.sanitizedError.getter(v0[22], v0[23]);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)()
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

  return SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)(v3, v5);
}

id SKAStatusPublishingServiceClientProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:)(v2, v3, v4, v5, v7, v6);
}

uint64_t partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.fetchHandleInvitability(_:from:forStatusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusPublishingServiceClientProxy.fetchHandleInvitability(_:from:forStatusTypeIdentifier:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInvited(_:fromSenderHandle:forStatusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInvited(_:fromSenderHandle:forStatusTypeIdentifier:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.invitedHandles(forStatusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusPublishingServiceClientProxy.invitedHandles(forStatusTypeIdentifier:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:)(v2, v3, v5, v4);
}

void *SKAStatusSubscriptionServiceClientProxy.underlyingClient.getter()
{
  v1 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SKAStatusSubscriptionServiceClientProxy.underlyingClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *SKAStatusSubscriptionServiceClientProxy.__allocating_init(xpcConnection:queue:delegate:databaseManager:subscriptionManager:encryptionManager:inTrafficMode:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  v13 = objc_allocWithZone(v7);
  *&v13[OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient] = 0;
  v14 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_queue;
  v15 = type metadata accessor for SKAAsyncQueue(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v13[v14] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000002CLL, 0x80000002201ADA90, 1, 0);
  v28.receiver = v13;
  v28.super_class = v7;
  v18 = objc_msgSendSuper2(&v28, sel_init);
  v19 = objc_allocWithZone(SKAStatusSubscriptionServiceClient);
  v20 = v18;
  LOBYTE(v25) = a7;
  v21 = [v19 initWithXPCConnection:a1 queue:a2 delegate:a3 databaseManager:a4 subscriptionManager:a5 encryptionManager:a6 inTrafficMode:v25 daemonProtocolDelegate:v20];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v22 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v23 = *&v20[v22];
  *&v20[v22] = v21;

  return v20;
}

char *SKAStatusSubscriptionServiceClientProxy.init(xpcConnection:queue:delegate:databaseManager:subscriptionManager:encryptionManager:inTrafficMode:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient] = 0;
  v14 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_queue;
  v15 = type metadata accessor for SKAAsyncQueue(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v7[v14] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000002CLL, 0x80000002201ADA90, 1, 0);
  v28.receiver = v7;
  v28.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v28, sel_init);
  v19 = objc_allocWithZone(SKAStatusSubscriptionServiceClient);
  v20 = v18;
  LOBYTE(v25) = a7;
  v21 = [v19 initWithXPCConnection:a1 queue:a2 delegate:a3 databaseManager:a4 subscriptionManager:a5 encryptionManager:a6 inTrafficMode:v25 daemonProtocolDelegate:v20];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v22 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v23 = *&v20[v22];
  *&v20[v22] = v21;

  return v20;
}

uint64_t SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28SKStatusSubscriptionMetadataCSgs5Error_pGMd, &_sScCySo28SKStatusSubscriptionMetadataCSgs5Error_pGMR);
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v4[32] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[33] = v9;
  v4[34] = v8;

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:), v9, v8);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:)()
{
  v1 = v0[29];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
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
    v14 = v0[26];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[36] = v10;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28SKStatusSubscriptionMetadataCSgMd, &_sSo28SKStatusSubscriptionMetadataCSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned SKStatusSubscriptionMetadata?, @unowned NSError?) -> () with result type SKStatusSubscriptionMetadata?;
    v0[13] = &block_descriptor_6;
    [v13 subscriptionMetadataForHandle:v14 statusTypeIdentifier:v10 completion:?];
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
    v6 = SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:);
  }

  else
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 192);

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

  return v6();
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:), v6, v5);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:)()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 48) = _Block_copy(*(v0 + 32));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 56) = v5;
  v7 = v3;
  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:);
  v10 = *(v0 + 40);
  v11 = *(v0 + 16);

  return SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:)(v11, v4, v6);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 48);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 48), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 216) = a2;
  *(v4 + 224) = v3;
  *(v4 + 296) = a3;
  *(v4 + 208) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMd, &_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMR);
  *(v4 + 232) = v5;
  v6 = *(v5 - 8);
  *(v4 + 240) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 256) = v9;
  *(v4 + 264) = v8;

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:), v9, v8);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:)()
{
  v1 = *(v0 + 224);
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  *(v0 + 272) = v4;
  if (v4)
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    v7 = *(v0 + 232);
    v14 = *(v0 + 296);
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    *(v0 + 280) = v10;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:);
    swift_continuation_init();
    *(v0 + 136) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo28SKStatusSubscriptionMetadataCGSgMd, &_sSaySo28SKStatusSubscriptionMetadataCGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKStatusSubscriptionMetadata]?;
    *(v0 + 104) = &block_descriptor_4_1;
    [v13 allSubscriptionMetadatasForStatusTypeIdentifier:v10 includingPersonalSubscription:v14 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = v0 + 16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKStatusSubscriptionMetadata]?(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMd, &_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      type metadata accessor for SKStatusSubscriptionMetadata();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMd, &_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:), v6, v5);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:)()
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
  v7[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:);
  v8 = *(v0 + 32);
  v9 = *(v0 + 64);

  return SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:)(v3, v5, v9);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMd, &_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMR);
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

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:), v8, v7);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:)()
{
  v1 = v0[28];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo28SKStatusSubscriptionMetadataCGSgMd, &_sSaySo28SKStatusSubscriptionMetadataCGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKStatusSubscriptionMetadata]?;
    v0[13] = &block_descriptor_8_0;
    [v13 allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:)()
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
  v7[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:);
  v8 = *(v0 + 32);

  return SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:)(v3, v5);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:)(void *a1)
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

  type metadata accessor for SKStatusSubscriptionMetadata();
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

uint64_t SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveSubscriptions(forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMd, &_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMR);
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

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveSubscriptions(forStatusTypeIdentifier:), v8, v7);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveSubscriptions(forStatusTypeIdentifier:)()
{
  v1 = v0[28];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo28SKStatusSubscriptionMetadataCGSgMd, &_sSaySo28SKStatusSubscriptionMetadataCGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKStatusSubscriptionMetadata]?;
    v0[13] = &block_descriptor_12_0;
    [v13 allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveSubscriptions(forStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveSubscriptions(forStatusTypeIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveSubscriptions(forStatusTypeIdentifier:)()
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
  v7[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:);
  v8 = *(v0 + 32);

  return SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveSubscriptions(forStatusTypeIdentifier:)(v3, v5);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMd, &_sScCySaySo28SKStatusSubscriptionMetadataCGSgs5Error_pGMR);
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

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:), v10, v9);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:)()
{
  v1 = v0[30];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
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
    v11 = v0[26];
    v10 = v0[27];
    v16 = v4;
    v15 = MEMORY[0x223D76B00](v11, v10);
    v0[37] = v15;
    v12 = MEMORY[0x223D76B00](v9, v8);
    v0[38] = v12;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo28SKStatusSubscriptionMetadataCGSgMd, &_sSaySo28SKStatusSubscriptionMetadataCGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKStatusSubscriptionMetadata]?;
    v0[13] = &block_descriptor_16;
    [v16 allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:v15 statusTypeIdentifier:v12 completion:?];
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
  *(*v0 + 312) = v3;
  v4 = *(v1 + 280);
  v5 = *(v1 + 272);
  if (v3)
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:);
  }

  else
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 264);
  v4 = *(v0 + 192);

  v5 = *(v0 + 8);

  return v5(v4);
}

{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[33];
  swift_willThrow();

  swift_getErrorValue();
  v6 = v0[21];
  Error.sanitizedError.getter(v0[22], v0[23]);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:), v6, v5);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 48) = _Block_copy(*(v0 + 32));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 56) = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  *(v0 + 64) = v8;
  v10 = v1;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:);
  v12 = *(v0 + 40);

  return SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:)(v4, v6, v7, v9);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  v8 = *(*v2 + 56);
  v9 = *(*v2 + 40);
  v10 = *v2;

  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v11 = a1;
LABEL_3:
    v12 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v11 = 0;
    goto LABEL_3;
  }

  type metadata accessor for SKStatusSubscriptionMetadata();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = isa;
  v11 = 0;
  a1 = isa;
LABEL_6:
  v14 = *(v5 + 48);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v10 + 8);

  return v15();
}

uint64_t SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28SKStatusSubscriptionMetadataCSgs5Error_pGMd, &_sScCySo28SKStatusSubscriptionMetadataCSgs5Error_pGMR);
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

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:), v8, v7);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:)()
{
  v1 = v0[28];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28SKStatusSubscriptionMetadataCSgMd, &_sSo28SKStatusSubscriptionMetadataCSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned SKStatusSubscriptionMetadata?, @unowned NSError?) -> () with result type SKStatusSubscriptionMetadata?;
    v0[13] = &block_descriptor_20;
    [v13 subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:)()
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
  v7[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:);
  v8 = *(v0 + 32);

  return SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:)(v3, v5);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 32);
  v9 = *v2;

  v10 = *(v5 + 40);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 40), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t SKAStatusSubscriptionServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[31] = v8;
  v3[32] = v7;

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:), v8, v7);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)()
{
  v1 = v0[27];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[33] = v4;
  if (v4)
  {
    v6 = v0[29];
    v5 = v0[30];
    v7 = v0[28];
    v9 = v0[25];
    v8 = v0[26];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[34] = v10;
    v0[2] = v0;
    v0[3] = SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_24;
    [v13 registerForDelegateCallbacksWithStatusTypeIdentifier:v10 completion:v0 + 10];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)()
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

  return SKAStatusSubscriptionServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)(v3, v5);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
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

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:), v10, v9);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)()
{
  v1 = v0[29];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
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
    v11 = v0[25];
    v10 = v0[26];
    v16 = v4;
    v12 = MEMORY[0x223D76B00](v11, v10);
    v0[36] = v12;
    v13 = MEMORY[0x223D76B00](v9, v8);
    v0[37] = v13;
    v0[2] = v0;
    v0[3] = SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_28;
    [v16 retainTransientSubscriptionAssertionForSubscriptionIdentifier:v12 statusTypeIdentifier:v13 completion:?];
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
  v4 = *(v1 + 272);
  v5 = *(v1 + 264);
  if (v3)
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
  }

  else
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);

  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  swift_willThrow();

  swift_getErrorValue();
  v6 = v0[21];
  Error.sanitizedError.getter(v0[22], v0[23]);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:), v6, v5);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 48) = _Block_copy(*(v0 + 32));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 56) = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  *(v0 + 64) = v8;
  v10 = v1;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = @objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
  v12 = *(v0 + 40);

  return SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)(v4, v6, v7, v9);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
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

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:), v10, v9);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)()
{
  v1 = v0[29];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
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
    v11 = v0[25];
    v10 = v0[26];
    v16 = v4;
    v12 = MEMORY[0x223D76B00](v11, v10);
    v0[36] = v12;
    v13 = MEMORY[0x223D76B00](v9, v8);
    v0[37] = v13;
    v0[2] = v0;
    v0[3] = SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_32;
    [v16 releaseTransientSubscriptionAssertionForSubscriptionIdentifier:v12 statusTypeIdentifier:v13 completion:?];
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
  v4 = *(v1 + 272);
  v5 = *(v1 + 264);
  if (v3)
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
  }

  else
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:), v6, v5);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 48) = _Block_copy(*(v0 + 32));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 56) = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  *(v0 + 64) = v8;
  v10 = v1;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
  v12 = *(v0 + 40);

  return SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)(v4, v6, v7, v9);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[30] = a6;
  v7[31] = v6;
  v7[28] = a4;
  v7[29] = a5;
  v7[26] = a2;
  v7[27] = a3;
  v7[25] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7[32] = v8;
  v9 = *(v8 - 8);
  v7[33] = v9;
  v10 = *(v9 + 64) + 15;
  v7[34] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[35] = v12;
  v7[36] = v11;

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:), v12, v11);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)()
{
  v1 = v0[31];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[37] = v4;
  if (v4)
  {
    v5 = v0[33];
    v18 = v0[34];
    v6 = v0[32];
    v8 = v0[29];
    v7 = v0[30];
    v9 = v0[27];
    v10 = v0[28];
    v11 = v0[25];
    v12 = v0[26];
    v19 = v4;
    v13 = MEMORY[0x223D76B00](v11, v12);
    v0[38] = v13;
    v14 = MEMORY[0x223D76B00](v9, v10);
    v0[39] = v14;
    v15 = MEMORY[0x223D76B00](v8, v7);
    v0[40] = v15;
    v0[2] = v0;
    v0[3] = SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
    swift_continuation_init();
    v0[17] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v18, v6);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_36;
    [v19 retainPersistentSubscriptionAssertionForSubscriptionIdentifier:v13 statusTypeIdentifier:v14 applicationIdentifier:v15 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v6);
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
  *(*v0 + 328) = v3;
  v4 = *(v1 + 288);
  v5 = *(v1 + 280);
  if (v3)
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
  }

  else
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 272);

  v5 = *(v0 + 8);

  return v5();
}

{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v6 = v0[34];
  swift_willThrow();

  swift_getErrorValue();
  v7 = v0[21];
  Error.sanitizedError.getter(v0[22], v0[23]);
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v0 + 56) = _Block_copy(*(v0 + 40));
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  *(v0 + 64) = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  *(v0 + 72) = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  *(v0 + 80) = v12;
  v14 = v1;
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  v15[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
  v16 = *(v0 + 48);

  return SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)(v5, v7, v8, v10, v11, v13);
}

{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *(*v1 + 64);
  v9 = *(*v1 + 48);
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

uint64_t SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[30] = a6;
  v7[31] = v6;
  v7[28] = a4;
  v7[29] = a5;
  v7[26] = a2;
  v7[27] = a3;
  v7[25] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7[32] = v8;
  v9 = *(v8 - 8);
  v7[33] = v9;
  v10 = *(v9 + 64) + 15;
  v7[34] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[35] = v12;
  v7[36] = v11;

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:), v12, v11);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)()
{
  v1 = v0[31];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[37] = v4;
  if (v4)
  {
    v5 = v0[33];
    v18 = v0[34];
    v6 = v0[32];
    v8 = v0[29];
    v7 = v0[30];
    v9 = v0[27];
    v10 = v0[28];
    v11 = v0[25];
    v12 = v0[26];
    v19 = v4;
    v13 = MEMORY[0x223D76B00](v11, v12);
    v0[38] = v13;
    v14 = MEMORY[0x223D76B00](v9, v10);
    v0[39] = v14;
    v15 = MEMORY[0x223D76B00](v8, v7);
    v0[40] = v15;
    v0[2] = v0;
    v0[3] = SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
    swift_continuation_init();
    v0[17] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v18, v6);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_40;
    [v19 releasePersistentSubscriptionAssertionForSubscriptionIdentifier:v13 statusTypeIdentifier:v14 applicationIdentifier:v15 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v6);
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
  *(*v0 + 328) = v3;
  v4 = *(v1 + 288);
  v5 = *(v1 + 280);
  if (v3)
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
  }

  else
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v0 + 56) = _Block_copy(*(v0 + 40));
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  *(v0 + 64) = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  *(v0 + 72) = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  *(v0 + 80) = v12;
  v14 = v1;
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  v15[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
  v16 = *(v0 + 48);

  return SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)(v5, v7, v8, v10, v11, v13);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.deleteSubscription(withIdentifier:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
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

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.deleteSubscription(withIdentifier:statusTypeIdentifier:), v10, v9);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.deleteSubscription(withIdentifier:statusTypeIdentifier:)()
{
  v1 = v0[29];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
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
    v11 = v0[25];
    v10 = v0[26];
    v16 = v4;
    v12 = MEMORY[0x223D76B00](v11, v10);
    v0[36] = v12;
    v13 = MEMORY[0x223D76B00](v9, v8);
    v0[37] = v13;
    v0[2] = v0;
    v0[3] = SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_44;
    [v16 deleteSubscriptionWithIdentifier:v12 statusTypeIdentifier:v13 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.deleteSubscription(withIdentifier:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.deleteSubscription(withIdentifier:statusTypeIdentifier:), v6, v5);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.deleteSubscription(withIdentifier:statusTypeIdentifier:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 48) = _Block_copy(*(v0 + 32));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 56) = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  *(v0 + 64) = v8;
  v10 = v1;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
  v12 = *(v0 + 40);

  return SKAStatusSubscriptionServiceClientProxy.deleteSubscription(withIdentifier:statusTypeIdentifier:)(v4, v6, v7, v9);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo30SKSubscriptionValidationTokensCSgs5Error_pGMd, &_sScCySo30SKSubscriptionValidationTokensCSgs5Error_pGMR);
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v4[32] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[33] = v9;
  v4[34] = v8;

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:), v9, v8);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:)()
{
  v1 = v0[29];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
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
    v14 = v0[26];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[36] = v10;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30SKSubscriptionValidationTokensCSgMd, &_sSo30SKSubscriptionValidationTokensCSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned SKSubscriptionValidationTokens?, @unowned NSError?) -> () with result type SKSubscriptionValidationTokens?;
    v0[13] = &block_descriptor_48;
    [v13 subscriptionValidationTokensForHandle:v14 statusTypeIdentifier:v10 completion:?];
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
    v6 = SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:);
  }

  else
  {
    v6 = SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned SKStatusSubscriptionMetadata?, @unowned NSError?) -> () with result type SKStatusSubscriptionMetadata?(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:), v6, v5);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:)()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 48) = _Block_copy(*(v0 + 32));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 56) = v5;
  v7 = v3;
  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:);
  v10 = *(v0 + 40);
  v11 = *(v0 + 16);

  return SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:)(v11, v4, v6);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo43SKStatusSubscriptionValidationTokenValidityVs5Error_pGMd, &_sScCySo43SKStatusSubscriptionValidationTokenValidityVs5Error_pGMR);
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

  return MEMORY[0x2822009F8](SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:), v10, v9);
}

uint64_t SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:)()
{
  v1 = v0[30];
  v2 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
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
    type metadata accessor for SKStatusSubscriptionValidationTokenValidity(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned SKStatusSubscriptionValidationTokenValidity, @unowned NSError?) -> () with result type SKStatusSubscriptionValidationTokenValidity;
    v0[13] = &block_descriptor_52;
    [v13 validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:v14 fromSender:v15 statusTypeIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned SKStatusSubscriptionValidationTokenValidity, @unowned NSError?) -> () with result type SKStatusSubscriptionValidationTokenValidity(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo43SKStatusSubscriptionValidationTokenValidityVs5Error_pGMd, &_sScCySo43SKStatusSubscriptionValidationTokenValidityVs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo43SKStatusSubscriptionValidationTokenValidityVs5Error_pGMd, &_sScCySo43SKStatusSubscriptionValidationTokenValidityVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:)()
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
  v11[1] = @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:);
  v12 = *(v0 + 48);
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);

  return SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:)(v14, v13, v5, v7);
}

uint64_t @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:)(uint64_t a1)
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
    (*(v13 + 16))(*(v5 + 56), a1, 0);
  }

  _Block_release(*(v6 + 56));
  v15 = *(v12 + 8);

  return v15();
}

id SKAStatusSubscriptionServiceClientProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of TaskPriority?(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    outlined destroy of TaskPriority?(a3);

    return v22;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:)(v2, v3, v4, v5, v6);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_73(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.deleteSubscription(withIdentifier:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.deleteSubscription(withIdentifier:statusTypeIdentifier:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:)(v2, v3, v5, v4);
}

unint64_t type metadata accessor for SKStatusSubscriptionMetadata()
{
  result = lazy cache variable for type metadata for SKStatusSubscriptionMetadata;
  if (!lazy cache variable for type metadata for SKStatusSubscriptionMetadata)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SKStatusSubscriptionMetadata);
  }

  return result;
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveSubscriptions(forStatusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveSubscriptions(forStatusTypeIdentifier:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:)(v2, v3, v5, v4);
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB58]();
}