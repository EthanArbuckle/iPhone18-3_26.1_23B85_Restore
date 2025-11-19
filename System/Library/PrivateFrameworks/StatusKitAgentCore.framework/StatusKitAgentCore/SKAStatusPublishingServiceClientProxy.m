@interface SKAStatusPublishingServiceClientProxy
- (SKAStatusPublishingServiceClient)underlyingClient;
- (SKAStatusPublishingServiceClientProxy)init;
- (SKAStatusPublishingServiceClientProxy)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 databaseManager:(id)a6 invitationManager:(id)a7 publishingManager:(id)a8 channelManager:(id)a9;
- (void)fetchHandleInvitability:(SKHandle *)a3 fromHandle:(SKHandle *)a4 forStatusTypeIdentifier:(NSString *)a5 completion:(id)a6;
- (void)inviteHandles:(NSArray *)a3 fromSenderHandle:(SKHandle *)a4 withInvitationPayload:(SKInvitationPayload *)a5 statusTypeIdentifier:(NSString *)a6 completion:(id)a7;
- (void)invitedHandlesForStatusTypeIdentifier:(NSString *)a3 completion:(id)a4;
- (void)isHandleInviteable:(SKHandle *)a3 fromHandle:(SKHandle *)a4 forStatusTypeIdentifier:(NSString *)a5 completion:(id)a6;
- (void)isHandleInvited:(SKHandle *)a3 fromSenderHandle:(SKHandle *)a4 forStatusTypeIdentifier:(NSString *)a5 completion:(id)a6;
- (void)provisionPayloads:(NSArray *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5;
- (void)publishStatusRequest:(SKStatusPublishRequest *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5;
- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(NSString *)a3 completion:(id)a4;
- (void)removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier:(NSString *)a3 completion:(id)a4;
- (void)removeInvitedHandles:(NSArray *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5;
- (void)setUnderlyingClient:(id)a3;
@end

@implementation SKAStatusPublishingServiceClientProxy

- (void)publishStatusRequest:(SKStatusPublishRequest *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_182Tu;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_187Tu, v16);
}

- (SKAStatusPublishingServiceClient)underlyingClient
{
  v3 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUnderlyingClient:(id)a3
{
  v5 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (SKAStatusPublishingServiceClientProxy)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 databaseManager:(id)a6 invitationManager:(id)a7 publishingManager:(id)a8 channelManager:(id)a9
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
  v17 = a7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return SKAStatusPublishingServiceClientProxy.init(xpcConnection:queue:delegate:databaseManager:invitationManager:publishingManager:channelManager:)(v15, v16, a5, a6, v17, a8, a9);
}

- (SKAStatusPublishingServiceClientProxy)init
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

  *(&self->super.isa + OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient) = 0;
  v4 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_queue;
  v5 = type metadata accessor for SKAAsyncQueue(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(&self->super.isa + v4) = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000002ALL, 0x80000002201AD840, 1, 0);
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(SKAStatusPublishingServiceClientProxy *)&v9 init];
}

- (void)provisionPayloads:(NSArray *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5
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
  v16[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_167Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_172Tu, v17);
}

- (void)invitedHandlesForStatusTypeIdentifier:(NSString *)a3 completion:(id)a4
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
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.invitedHandles(forStatusTypeIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_152Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_157Tu, v15);
}

- (void)isHandleInvited:(SKHandle *)a3 fromSenderHandle:(SKHandle *)a4 forStatusTypeIdentifier:(NSString *)a5 completion:(id)a6
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
  v18[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInvited(_:fromSenderHandle:forStatusTypeIdentifier:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_137Tu;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_142Tu, v19);
}

- (void)isHandleInviteable:(SKHandle *)a3 fromHandle:(SKHandle *)a4 forStatusTypeIdentifier:(NSString *)a5 completion:(id)a6
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
  v18[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_122Tu;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_127Tu, v19);
}

- (void)fetchHandleInvitability:(SKHandle *)a3 fromHandle:(SKHandle *)a4 forStatusTypeIdentifier:(NSString *)a5 completion:(id)a6
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
  v18[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.fetchHandleInvitability(_:from:forStatusTypeIdentifier:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_107Tu;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_112Tu, v19);
}

- (void)inviteHandles:(NSArray *)a3 fromSenderHandle:(SKHandle *)a4 withInvitationPayload:(SKInvitationPayload *)a5 statusTypeIdentifier:(NSString *)a6 completion:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:);
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &_sIeghH_IeAgH_TRTA_92Tu;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v16, &_sIeAgH_ytIeAgHr_TRTA_97Tu, v21);
}

- (void)removeInvitedHandles:(NSArray *)a3 statusTypeIdentifier:(NSString *)a4 completion:(id)a5
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
  v16[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_77Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_82Tu, v17);
}

- (void)removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier:(NSString *)a3 completion:(id)a4
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
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_62Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_67Tu, v15);
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
  v14[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTATu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTATu, v15);
}

@end