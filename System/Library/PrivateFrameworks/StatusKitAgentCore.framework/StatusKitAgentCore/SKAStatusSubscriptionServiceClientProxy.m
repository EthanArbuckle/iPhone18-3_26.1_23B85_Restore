@interface SKAStatusSubscriptionServiceClientProxy
- (SKAStatusSubscriptionServiceClient)underlyingClient;
- (SKAStatusSubscriptionServiceClientProxy)init;
- (SKAStatusSubscriptionServiceClientProxy)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 databaseManager:(id)a6 subscriptionManager:(id)a7 encryptionManager:(id)a8 inTrafficMode:(BOOL)a9;
- (void)allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5;
- (void)allSubscriptionMetadatasForStatusTypeIdentifier:(NSString *)a3 includingPersonalSubscription:(BOOL)a4 completion:(id)a5;
- (void)allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier:(NSString *)a3 completion:(id)a4;
- (void)allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier:(NSString *)a3 completion:(id)a4;
- (void)deleteSubscriptionWithIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5;
- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(NSString *)a3 completion:(id)a4;
- (void)releasePersistentSubscriptionAssertionForSubscriptionIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 applicationIdentifier:(NSString *)a5 completion:(id)a6;
- (void)releaseTransientSubscriptionAssertionForSubscriptionIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5;
- (void)retainPersistentSubscriptionAssertionForSubscriptionIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 applicationIdentifier:(NSString *)a5 completion:(id)a6;
- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5;
- (void)setUnderlyingClient:(id)a3;
- (void)subscriptionMetadataForHandle:(SKHandle *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5;
- (void)subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier:(NSString *)a3 completion:(id)a4;
- (void)subscriptionValidationTokensForHandle:(SKHandle *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5;
- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:(SKSubscriptionValidationTokens *)a3 fromSender:(SKHandle *)a4 statusTypeIdentifier:(NSString *)a5 completion:(id)a6;
@end

@implementation SKAStatusSubscriptionServiceClientProxy

- (SKAStatusSubscriptionServiceClient)underlyingClient
{
  v3 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUnderlyingClient:(id)a3
{
  v5 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (SKAStatusSubscriptionServiceClientProxy)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 databaseManager:(id)a6 subscriptionManager:(id)a7 encryptionManager:(id)a8 inTrafficMode:(BOOL)a9
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
  return SKAStatusSubscriptionServiceClientProxy.init(xpcConnection:queue:delegate:databaseManager:subscriptionManager:encryptionManager:inTrafficMode:)(v15, v16, a5, a6, a7, a8, a9);
}

- (SKAStatusSubscriptionServiceClientProxy)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient) = 0;
  v4 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_queue;
  v5 = type metadata accessor for SKAAsyncQueue(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(&self->super.isa + v4) = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000002CLL, 0x80000002201ADA90, 1, 0);
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(SKAStatusSubscriptionServiceClientProxy *)&v9 init];
}

- (void)subscriptionMetadataForHandle:(SKHandle *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5
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
  v16[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_266Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_271Tu, v17);
}

- (void)allSubscriptionMetadatasForStatusTypeIdentifier:(NSString *)a3 includingPersonalSubscription:(BOOL)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_251Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_256Tu, v17);
}

- (void)allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier:(NSString *)a3 completion:(id)a4
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
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_236Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_241Tu, v15);
}

- (void)allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier:(NSString *)a3 completion:(id)a4
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
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveSubscriptions(forStatusTypeIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_221Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_226Tu, v15);
}

- (void)allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5
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
  v16[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_206Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_211Tu, v17);
}

- (void)subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier:(NSString *)a3 completion:(id)a4
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
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_191Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_196Tu, v15);
}

- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(NSString *)a3 completion:(id)a4
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
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_176Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_181Tu, v15);
}

- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5
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
  v16[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_161Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_166Tu, v17);
}

- (void)releaseTransientSubscriptionAssertionForSubscriptionIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5
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
  v16[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_146Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_151Tu, v17);
}

- (void)retainPersistentSubscriptionAssertionForSubscriptionIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 applicationIdentifier:(NSString *)a5 completion:(id)a6
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
  v18[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_131Tu;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_136Tu, v19);
}

- (void)releasePersistentSubscriptionAssertionForSubscriptionIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 applicationIdentifier:(NSString *)a5 completion:(id)a6
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
  v18[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_116Tu;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_121Tu, v19);
}

- (void)deleteSubscriptionWithIdentifier:(NSString *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5
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
  v16[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.deleteSubscription(withIdentifier:statusTypeIdentifier:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_101Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_106Tu, v17);
}

- (void)subscriptionValidationTokensForHandle:(SKHandle *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5
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
  v16[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_86Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_91Tu, v17);
}

- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:(SKSubscriptionValidationTokens *)a3 fromSender:(SKHandle *)a4 statusTypeIdentifier:(NSString *)a5 completion:(id)a6
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
  v18[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTATu;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTATu, v19);
}

@end