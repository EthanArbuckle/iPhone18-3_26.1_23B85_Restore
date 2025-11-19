@interface SKAPresenceClientProxy
- (NSString)description;
- (SKAPresenceClient)underlyingClient;
- (SKAPresenceClientProxy)init;
- (SKAPresenceClientProxy)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 subscriptionManager:(id)a6 presenceManager:(id)a7 invitationManager:(id)a8 databaseManager:(id)a9;
- (void)assertPresenceForIdentifier:(NSString *)a3 withPresencePayload:(SKPresencePayload *)a4 assertionOptions:(SKPresenceAssertionOptions *)a5 completion:(id)a6;
- (void)fetchHandleInvitability:(SKHandle *)a3 fromHandle:(SKHandle *)a4 forPresenceIdentifier:(NSString *)a5 completion:(id)a6;
- (void)fetchPresenceCapability:(id)a3;
- (void)hasInitialCloudKitImportOccurredWithCompletion:(id)a3;
- (void)inviteHandles:(NSArray *)a3 fromSenderHandle:(SKHandle *)a4 presenceIdentifier:(NSString *)a5 completion:(id)a6;
- (void)invitedHandlesForPresenceIdentifier:(NSString *)a3 completion:(id)a4;
- (void)isHandleInvited:(SKHandle *)a3 fromSenderHandle:(SKHandle *)a4 forPresenceIdentifier:(NSString *)a5 completion:(id)a6;
- (void)presentDevicesForPresenceIdentifier:(NSString *)a3 completion:(id)a4;
- (void)registerForDelegateCallbacksWithPresenceIdentifier:(NSString *)a3 options:(SKPresenceOptions *)a4 completion:(id)a5;
- (void)releasePresenceForIdentifier:(NSString *)a3 completion:(id)a4;
- (void)releaseTransientSubscriptionAssertionForPresenceIdentifier:(NSString *)a3 completion:(id)a4;
- (void)removeInvitedHandles:(NSArray *)a3 presenceIdentifier:(NSString *)a4 completion:(id)a5;
- (void)retainTransientSubscriptionAssertionForPresenceIdentifier:(NSString *)a3 completion:(id)a4;
- (void)rollChannelForPresenceIdentifier:(NSString *)a3 completion:(id)a4;
- (void)setUnderlyingClient:(id)a3;
@end

@implementation SKAPresenceClientProxy

- (SKAPresenceClient)underlyingClient
{
  v3 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUnderlyingClient:(id)a3
{
  v5 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (SKAPresenceClientProxy)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 subscriptionManager:(id)a6 presenceManager:(id)a7 invitationManager:(id)a8 databaseManager:(id)a9
{
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = a3;
  v16 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = a8;
  swift_unknownObjectRetain();
  return SKAPresenceClientProxy.init(xpcConnection:queue:delegate:subscriptionManager:presenceManager:invitationManager:databaseManager:)(v15, v16, a5, a6, a7, v17, a9);
}

- (SKAPresenceClientProxy)init
{
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  SKAPresenceClientProxy.().init()();
}

- (NSString)description
{
  v2 = self;
  v3 = SKAPresenceClientProxy.description.getter();
  v5 = v4;

  v6 = MEMORY[0x223D76B00](v3, v5);

  return v6;
}

- (void)invitedHandlesForPresenceIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_273Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_278Tu, v15);
}

- (void)presentDevicesForPresenceIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_258Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_263Tu, v15);
}

- (void)isHandleInvited:(SKHandle *)a3 fromSenderHandle:(SKHandle *)a4 forPresenceIdentifier:(NSString *)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_243Tu;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_248Tu, v19);
}

- (void)fetchHandleInvitability:(SKHandle *)a3 fromHandle:(SKHandle *)a4 forPresenceIdentifier:(NSString *)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_228Tu;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_233Tu, v19);
}

- (void)inviteHandles:(NSArray *)a3 fromSenderHandle:(SKHandle *)a4 presenceIdentifier:(NSString *)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_213Tu;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_218Tu, v19);
}

- (void)removeInvitedHandles:(NSArray *)a3 presenceIdentifier:(NSString *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_198Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_203Tu, v17);
}

- (void)retainTransientSubscriptionAssertionForPresenceIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_183Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_188Tu, v15);
}

- (void)releaseTransientSubscriptionAssertionForPresenceIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_168Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_173Tu, v15);
}

- (void)assertPresenceForIdentifier:(NSString *)a3 withPresencePayload:(SKPresencePayload *)a4 assertionOptions:(SKPresenceAssertionOptions *)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_153Tu;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_158Tu, v19);
}

- (void)releasePresenceForIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_138Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_143Tu, v15);
}

- (void)fetchPresenceCapability:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTA_123Tu;
  v13[5] = v12;
  v14 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTA_128Tu, v13);
}

- (void)rollChannelForPresenceIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_108Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_113Tu, v15);
}

- (void)registerForDelegateCallbacksWithPresenceIdentifier:(NSString *)a3 options:(SKPresenceOptions *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.registerForDelegateCallbacks(withPresenceIdentifier:options:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_93Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_98Tu, v17);
}

- (void)hasInitialCloudKitImportOccurredWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &async function pointer to partial apply for @objc closure #1 in SKAPresenceClientProxy.hasInitialCloudKitImportOccurred();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTATu;
  v13[5] = v12;
  v14 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTATu, v13);
}

@end