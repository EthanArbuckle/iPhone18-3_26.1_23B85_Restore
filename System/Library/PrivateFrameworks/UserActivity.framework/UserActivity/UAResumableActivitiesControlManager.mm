@interface UAResumableActivitiesControlManager
+ (id)resumableActivitiesControlManager;
- (BOOL)getAdvertisedBytes:(id)bytes completionHandler:(id)handler;
- (UAResumableActivitiesControlManager)init;
- (id)advertisedItemUUID;
- (id)allUUIDsOfType:(unint64_t)type;
- (id)currentAdvertisedItemUUID;
- (id)debuggingInfo;
- (id)dynamicUserActivities;
- (id)enabledUUIDs;
- (id)matchingUUIDForString:(id)string;
- (id)recentActions:(BOOL)actions;
- (id)simulatorStatus;
- (id)status;
- (id)status:(id)status options:(id)options;
- (int)serverPID;
- (void)callWillSaveDelegate:(id)delegate completionHandler:(id)handler;
- (void)connectToRemote:(id)remote port:(int64_t)port;
- (void)fetchMoreAppSuggestions;
- (void)injectBTLEItem:(id)item type:(unint64_t)type identifier:(id)identifier title:(id)title activityPayload:(id)payload webPageURL:(id)l remoteModel:(id)model duration:(double)self0 payloadDelay:(double)self1;
- (void)peerDevices:(id)devices completionHandler:(id)handler;
- (void)replayCommands:(id)commands completionHandler:(id)handler;
- (void)restartServer;
- (void)setDebugOption:(id)option value:(id)value;
- (void)setDefault:(id)default value:(id)value;
- (void)synchronize;
- (void)terminateServer;
@end

@implementation UAResumableActivitiesControlManager

+ (id)resumableActivitiesControlManager
{
  v2 = objc_alloc_init(UAResumableActivitiesControlManager);

  return v2;
}

- (UAResumableActivitiesControlManager)init
{
  v11.receiver = self;
  v11.super_class = UAResumableActivitiesControlManager;
  v2 = [(UAResumableActivitiesControlManager *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE80]);
    v4 = UAResumableActivitiesManagerServiceName();
    v5 = [v3 initWithMachServiceName:v4 options:0];
    connection = v2->connection;
    v2->connection = v5;

    [(NSXPCConnection *)v2->connection setRemoteObjectInterface:0];
    [(NSXPCConnection *)v2->connection setExportedObject:v2];
    v7 = _LSGetResumableActivitiesAdministrativeProtocolInterface();
    [(NSXPCConnection *)v2->connection setRemoteObjectInterface:v7];

    [(NSXPCConnection *)v2->connection setInterruptionHandler:&__block_literal_global_2];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__UAResumableActivitiesControlManager_init__block_invoke_2;
    v9[3] = &unk_2785C3D18;
    v10 = v2;
    [(NSXPCConnection *)v2->connection setInvalidationHandler:v9];
    [(NSXPCConnection *)v2->connection resume];
  }

  return v2;
}

- (int)serverPID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(v9 + 6) = selfCopy->_pid;
  objc_sync_exit(selfCopy);

  v3 = *(v9 + 6);
  if (!v3)
  {
    v4 = [(NSXPCConnection *)selfCopy->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_5];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__UAResumableActivitiesControlManager_serverPID__block_invoke_9;
    v7[3] = &unk_2785C3D60;
    v7[4] = selfCopy;
    v7[5] = &v8;
    [v4 doNOP:@"serverPID" withCompletionHandler:v7];

    v5 = selfCopy;
    objc_sync_enter(v5);
    selfCopy->_pid = *(v9 + 6);
    objc_sync_exit(v5);

    v3 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v3;
}

void __48__UAResumableActivitiesControlManager_serverPID__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_ERROR, "Error from server, %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __48__UAResumableActivitiesControlManager_serverPID__block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) connection];
    v7 = [v6 processIdentifier];
    v8 = [*(a1 + 32) connection];
    v11[0] = 67240706;
    v11[1] = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_INFO, "Connected to server, pid=%{public}d connection=%{public}@ error=%{public}@", v11, 0x1Cu);
  }

  v9 = [*(a1 + 32) connection];
  *(*(*(a1 + 40) + 8) + 24) = [v9 processIdentifier];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)matchingUUIDForString:(id)string
{
  v24 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:stringCopy];
  v6 = v15[5];
  v15[5] = v5;

  if (!v15[5])
  {
    v7 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_13];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__UAResumableActivitiesControlManager_matchingUUIDForString___block_invoke_2;
    v13[3] = &unk_2785C3D88;
    v13[4] = &v14;
    [v7 doFindMatchingUserActivityForString:stringCopy withCompletionHandler:v13];
  }

  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = v15[5];
    *buf = 138478083;
    v21 = stringCopy;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "(%{private}@), result = %{public}@", buf, 0x16u);
  }

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __61__UAResumableActivitiesControlManager_matchingUUIDForString___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)advertisedItemUUID
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v2 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_16];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__UAResumableActivitiesControlManager_advertisedItemUUID__block_invoke_2;
  v8[3] = &unk_2785C3D88;
  v8[4] = &v9;
  [v2 doCopyAdvertisedUUIDWithCompletionHandler:v8];

  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = v10[5];
    *buf = 138543362;
    v16 = v4;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "result=%{public}@", buf, 0xCu);
  }

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void __57__UAResumableActivitiesControlManager_advertisedItemUUID__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)allUUIDsOfType:(unint64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = suggestedActionTypeString(type);
    *buf = 67109378;
    typeCopy2 = type;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "(%d/%{public}@)", buf, 0x12u);
  }

  v7 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__UAResumableActivitiesControlManager_allUUIDsOfType___block_invoke_2;
  v14[3] = &unk_2785C3DB0;
  v14[4] = &v15;
  [v7 doCopyAllUUIDsOfType:type withCompletionHandler:v14];

  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = suggestedActionTypeString(type);
    v10 = v16[5];
    *buf = 67109634;
    typeCopy2 = type;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "(%d/%{public}@), result=%{public}@", buf, 0x1Cu);
  }

  v11 = [v16[5] copy];
  _Block_object_dispose(&v15, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __54__UAResumableActivitiesControlManager_allUUIDsOfType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)enabledUUIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v2 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_21];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__UAResumableActivitiesControlManager_enabledUUIDs__block_invoke_2;
  v5[3] = &unk_2785C3DB0;
  v5[4] = &v6;
  [v2 doCopyEnabledUUIDsWithCompletionHandler:v5];

  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__UAResumableActivitiesControlManager_enabledUUIDs__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)currentAdvertisedItemUUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v2 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_23];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__UAResumableActivitiesControlManager_currentAdvertisedItemUUID__block_invoke_2;
  v5[3] = &unk_2785C3D88;
  v5[4] = &v6;
  [v2 doGetCurrentAdvertisedItemUUID:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __64__UAResumableActivitiesControlManager_currentAdvertisedItemUUID__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)debuggingInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v2 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_25];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__UAResumableActivitiesControlManager_debuggingInfo__block_invoke_2;
  v5[3] = &unk_2785C3DD8;
  v5[4] = &v6;
  [v2 doCopyDebuggingInfo:0 completionHandler:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__UAResumableActivitiesControlManager_debuggingInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)dynamicUserActivities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v2 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_28];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__UAResumableActivitiesControlManager_dynamicUserActivities__block_invoke_2;
  v5[3] = &unk_2785C3E00;
  v5[4] = &v6;
  [v2 doCopyDynamicUserActivitiesString:0 completionHandler:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __60__UAResumableActivitiesControlManager_dynamicUserActivities__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v2 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_31];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__UAResumableActivitiesControlManager_status__block_invoke_2;
  v5[3] = &unk_2785C3E00;
  v5[4] = &v6;
  [v2 doCopyStatusString:@"status" options:0 completionHandler:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__UAResumableActivitiesControlManager_status__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)recentActions:(BOOL)actions
{
  actionsCopy = actions;
  v18[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v4 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_36];
  if (actionsCopy)
  {
    v5 = MEMORY[0x277CBEC38];
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  v17 = @"clear";
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__UAResumableActivitiesControlManager_recentActions___block_invoke_2;
  v10[3] = &unk_2785C3DB0;
  v10[4] = &v11;
  [v4 doCopyRecentActions:v6 completionHandler:v10];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)simulatorStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v2 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_42];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__UAResumableActivitiesControlManager_simulatorStatus__block_invoke_2;
  v5[3] = &unk_2785C3E00;
  v5[4] = &v6;
  [v2 doCopyStatusString:@"simulatorStatus" options:0 completionHandler:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__UAResumableActivitiesControlManager_simulatorStatus__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)status:(id)status options:(id)options
{
  statusCopy = status;
  optionsCopy = options;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v8 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_47];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__UAResumableActivitiesControlManager_status_options___block_invoke_2;
  v11[3] = &unk_2785C3E00;
  v11[4] = &v12;
  [v8 doCopyStatusString:statusCopy options:optionsCopy completionHandler:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __54__UAResumableActivitiesControlManager_status_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)fetchMoreAppSuggestions
{
  v2 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_49];
  [v2 doFetchMoreAppSuggestions];
}

void __48__UAResumableActivitiesControlManager_defaults___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setDefault:(id)default value:(id)value
{
  connection = self->connection;
  valueCopy = value;
  defaultCopy = default;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:0];

  [remoteObjectProxy doSetDefaults:defaultCopy archivedValue:v8];
}

- (void)restartServer
{
  [(UAResumableActivitiesControlManager *)self terminateServer];
  sleep(1u);
  v3 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_55];
  [v3 doNOP:@"Hello withCompletionHandler:{world!", &__block_literal_global_60}];
}

- (void)terminateServer
{
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "Asking useractivityd server to exit.", buf, 2u);
  }

  v4 = dispatch_group_create();
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__UAResumableActivitiesControlManager_terminateServer__block_invoke;
  block[3] = &unk_2785C3D18;
  block[4] = self;
  dispatch_group_async(v4, v5, block);

  v6 = dispatch_time(0, 1000000000);
  dispatch_group_wait(v4, v6);
}

void __54__UAResumableActivitiesControlManager_terminateServer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v1 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_62];
  [v1 doTerminateServer];
}

- (void)setDebugOption:(id)option value:(id)value
{
  connection = self->connection;
  valueCopy = value;
  optionCopy = option;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy doSetDebugOption:optionCopy value:valueCopy];
}

- (void)injectBTLEItem:(id)item type:(unint64_t)type identifier:(id)identifier title:(id)title activityPayload:(id)payload webPageURL:(id)l remoteModel:(id)model duration:(double)self0 payloadDelay:(double)self1
{
  connection = self->connection;
  modelCopy = model;
  lCopy = l;
  payloadCopy = payload;
  titleCopy = title;
  identifierCopy = identifier;
  itemCopy = item;
  v26 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_64];
  [v26 doInjectBTLEItem:itemCopy type:type identifier:identifierCopy title:titleCopy activityPayload:payloadCopy webPageURL:lCopy remoteModel:duration duration:delay payloadDelay:modelCopy];
}

- (void)callWillSaveDelegate:(id)delegate completionHandler:(id)handler
{
  connection = self->connection;
  handlerCopy = handler;
  delegateCopy = delegate;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy doWillSaveDelegate:delegateCopy completionHandler:handlerCopy];
}

- (void)connectToRemote:(id)remote port:(int64_t)port
{
  connection = self->connection;
  remoteCopy = remote;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy doSetupNetworkedPairs:remoteCopy port:port];
}

- (void)peerDevices:(id)devices completionHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__UAResumableActivitiesControlManager_peerDevices_completionHandler___block_invoke;
  v11[3] = &unk_2785C3E70;
  v12 = handlerCopy;
  v8 = handlerCopy;
  devicesCopy = devices;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  [v10 doGetPairedDevices:devicesCopy completionHandler:v8];
}

void __69__UAResumableActivitiesControlManager_peerDevices_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-1 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void __81__UAResumableActivitiesControlManager_getSysdiagnoseStringsIncludingPrivateData___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEA60];
  v4 = [a2 description];
  v5 = [v3 arrayWithObject:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);

  dispatch_group_leave(v8);
}

void __81__UAResumableActivitiesControlManager_getSysdiagnoseStringsIncludingPrivateData___block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)replayCommands:(id)commands completionHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__UAResumableActivitiesControlManager_replayCommands_completionHandler___block_invoke;
  v11[3] = &unk_2785C3E70;
  v12 = handlerCopy;
  v8 = handlerCopy;
  commandsCopy = commands;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  [v10 doReplayCommands:commandsCopy completionHandler:v8];
}

- (void)synchronize
{
  v2 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_70];
  [v2 doNOP:@"synchronize" withCompletionHandler:&__block_literal_global_75];
}

- (BOOL)getAdvertisedBytes:(id)bytes completionHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__UAResumableActivitiesControlManager_getAdvertisedBytes_completionHandler___block_invoke;
  v12[3] = &unk_2785C3E70;
  v13 = handlerCopy;
  v8 = handlerCopy;
  bytesCopy = bytes;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v10 doGetSFActivityAdvertisement:bytesCopy completionHandler:v8];

  return 1;
}

@end