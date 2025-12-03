@interface SBApplicationServer
+ (id)sharedInstance;
- (SBApplicationServerHarmonyDelegate)harmonyDelegate;
- (SBApplicationServerMiscDelegate)miscDelegate;
- (SBApplicationServerMultiwindowDelegate)multiwindowDelegate;
- (SBApplicationServerShortcutDelegate)shortcutDelegate;
- (id)_init;
- (void)_handleDeleteApplicationSnapshots:(void *)snapshots fromClient:;
- (void)_handleHarmonyFetchWhitePointAdaptivityStyleMessage:(void *)message fromClient:;
- (void)_handleMultiwindowShortcutRequestShelfPresentationMessage:(void *)message fromClient:;
- (void)_handleMultiwindowShortcutShowAllWindowsMessage:(void *)message fromClient:;
- (void)_handleShortcutFetchApplicationShortcutItemsMessage:(void *)message fromClient:;
- (void)_handleShortcutUpdateDynamicApplicationShortcutItemsMessage:(void *)message fromClient:;
- (void)dealloc;
- (void)noteDidReceiveMessage:(id)message withType:(int64_t)type fromClient:(id)client;
@end

@implementation SBApplicationServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10 != -1)
  {
    +[SBApplicationServer sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_6;

  return v3;
}

void __37__SBApplicationServer_sharedInstance__block_invoke()
{
  v0 = [[SBApplicationServer alloc] _init];
  v1 = sharedInstance___sharedInstance_6;
  sharedInstance___sharedInstance_6 = v0;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBApplicationServer.m" lineNumber:40 description:@"you can't deallocate the server"];

  v5.receiver = self;
  v5.super_class = SBApplicationServer;
  [(FBSServiceFacility *)&v5 dealloc];
}

- (void)noteDidReceiveMessage:(id)message withType:(int64_t)type fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  if (type > 2)
  {
    switch(type)
    {
      case 5:
        [(SBApplicationServer *)self _handleMultiwindowShortcutRequestShelfPresentationMessage:messageCopy fromClient:clientCopy];
        goto LABEL_12;
      case 4:
        [(SBApplicationServer *)self _handleMultiwindowShortcutShowAllWindowsMessage:messageCopy fromClient:clientCopy];
        goto LABEL_12;
      case 3:
        [(SBApplicationServer *)self _handleDeleteApplicationSnapshots:messageCopy fromClient:clientCopy];
        goto LABEL_12;
    }
  }

  else
  {
    switch(type)
    {
      case 0:
        [(SBApplicationServer *)self _handleHarmonyFetchWhitePointAdaptivityStyleMessage:messageCopy fromClient:clientCopy];
        goto LABEL_12;
      case 1:
        [(SBApplicationServer *)self _handleShortcutFetchApplicationShortcutItemsMessage:messageCopy fromClient:clientCopy];
        goto LABEL_12;
      case 2:
        [(SBApplicationServer *)self _handleShortcutUpdateDynamicApplicationShortcutItemsMessage:messageCopy fromClient:clientCopy];
        goto LABEL_12;
    }
  }

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SBApplicationServer noteDidReceiveMessage:clientCopy withType:v10 fromClient:?];
  }

LABEL_12:
}

uint64_t __86__SBApplicationServer__handleHarmonyFetchWhitePointAdaptivityStyleMessage_fromClient___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__SBApplicationServer__handleHarmonyFetchWhitePointAdaptivityStyleMessage_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v4[4] = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

void __86__SBApplicationServer__handleShortcutFetchApplicationShortcutItemsMessage_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__SBApplicationServer__handleShortcutFetchApplicationShortcutItemsMessage_fromClient___block_invoke_2;
  v6[3] = &unk_2783B07B8;
  v7 = v3;
  v5 = v3;
  [v4 sendReplyMessageWithPacker:v6];
}

- (SBApplicationServerMiscDelegate)miscDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_miscDelegate);

  return WeakRetained;
}

- (SBApplicationServerHarmonyDelegate)harmonyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_harmonyDelegate);

  return WeakRetained;
}

- (SBApplicationServerShortcutDelegate)shortcutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shortcutDelegate);

  return WeakRetained;
}

- (SBApplicationServerMultiwindowDelegate)multiwindowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_multiwindowDelegate);

  return WeakRetained;
}

- (id)_init
{
  selfCopy = self;
  if (self)
  {
    v2 = MEMORY[0x277D0AE00];
    Serial = BSDispatchQueueCreateSerial();
    v4 = [v2 queueWithDispatchQueue:Serial];

    v5 = *MEMORY[0x277D66EA0];
    v7.receiver = selfCopy;
    v7.super_class = SBApplicationServer;
    selfCopy = objc_msgSendSuper2(&v7, sel_initWithIdentifier_queue_, v5, v4);
  }

  return selfCopy;
}

- (void)_handleDeleteApplicationSnapshots:(void *)snapshots fromClient:
{
  v9 = OUTLINED_FUNCTION_4_5(self, a2, snapshots);
  if (v4)
  {
    payload = [v3 payload];
    v7 = payload;
    if (payload && object_getClass(payload) == MEMORY[0x277D86468])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 56));
      if (WeakRetained)
      {
        BSDeserializeStringFromXPCDictionaryWithKey();
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_15() applicationServer:? client:? deleteSnapshotsForApplicationIdentifier:?];
      }
    }
  }
}

- (void)_handleHarmonyFetchWhitePointAdaptivityStyleMessage:(void *)message fromClient:
{
  v5 = a2;
  messageCopy = message;
  if (self)
  {
    OUTLINED_FUNCTION_1_4();
    v17 = 3221225472;
    v18 = __86__SBApplicationServer__handleHarmonyFetchWhitePointAdaptivityStyleMessage_fromClient___block_invoke;
    v19 = &unk_2783ACA48;
    v7 = v5;
    v20 = v7;
    v8 = MEMORY[0x223D6F7F0](v16);
    payload = [v7 payload];
    v10 = payload;
    if (payload && object_getClass(payload) == MEMORY[0x277D86468])
    {
      WeakRetained = objc_loadWeakRetained((self + 64));
      if (WeakRetained)
      {
        xpc_dictionary_get_uint64(v10, *MEMORY[0x277D676A8]);
        [OUTLINED_FUNCTION_3_10() applicationServer:? client:? fetchWhitePointAdaptivityStyleForDisplayId:? withCompletion:?];
      }

      else
      {
        v14 = OUTLINED_FUNCTION_2_11();
        v15(v14);
      }
    }

    else
    {
      v11 = OUTLINED_FUNCTION_2_11();
      v12(v11);
    }
  }
}

- (void)_handleShortcutFetchApplicationShortcutItemsMessage:(void *)message fromClient:
{
  v5 = a2;
  messageCopy = message;
  if (self)
  {
    OUTLINED_FUNCTION_1_4();
    v18 = 3221225472;
    v19 = __86__SBApplicationServer__handleShortcutFetchApplicationShortcutItemsMessage_fromClient___block_invoke;
    v20 = &unk_2783B07E0;
    v7 = v5;
    v21 = v7;
    v8 = MEMORY[0x223D6F7F0](v17);
    payload = [v7 payload];
    v10 = payload;
    if (payload && object_getClass(payload) == MEMORY[0x277D86468])
    {
      WeakRetained = objc_loadWeakRetained((self + 72));
      if (WeakRetained)
      {
        v14 = BSDeserializeStringFromXPCDictionaryWithKey();
        xpc_dictionary_get_uint64(v10, *MEMORY[0x277D676D0]);
        [OUTLINED_FUNCTION_3_10() applicationServer:? client:? fetchApplicationShortcutItemsOfTypes:? forBundleIdentifier:? withCompletion:?];
      }

      else
      {
        v15 = OUTLINED_FUNCTION_2_11();
        v16(v15, 0);
      }
    }

    else
    {
      v11 = OUTLINED_FUNCTION_2_11();
      v12(v11, 0);
    }
  }
}

- (void)_handleShortcutUpdateDynamicApplicationShortcutItemsMessage:(void *)message fromClient:
{
  v10 = OUTLINED_FUNCTION_4_5(self, a2, message);
  if (v4)
  {
    payload = [v3 payload];
    v6 = payload;
    if (payload && object_getClass(payload) == MEMORY[0x277D86468])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 72));
      if (WeakRetained)
      {
        v8 = BSDeserializeStringFromXPCDictionaryWithKey();
        v9 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
        [WeakRetained applicationServer:v4 client:v10 setDynamicApplicationShortcutItems:v9 forBundleIdentifier:v8];
      }
    }
  }
}

- (void)_handleMultiwindowShortcutShowAllWindowsMessage:(void *)message fromClient:
{
  v9 = OUTLINED_FUNCTION_4_5(self, a2, message);
  if (v4)
  {
    payload = [v3 payload];
    v7 = payload;
    if (payload && object_getClass(payload) == MEMORY[0x277D86468])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 80));
      if (WeakRetained)
      {
        BSDeserializeStringFromXPCDictionaryWithKey();
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_15() applicationServer:? client:? showAllWindowsForBundleIdentifier:?];
      }
    }
  }
}

- (void)_handleMultiwindowShortcutRequestShelfPresentationMessage:(void *)message fromClient:
{
  v9 = OUTLINED_FUNCTION_4_5(self, a2, message);
  if (v4)
  {
    payload = [v3 payload];
    v7 = payload;
    if (payload && object_getClass(payload) == MEMORY[0x277D86468])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 80));
      if (WeakRetained)
      {
        BSDeserializeStringFromXPCDictionaryWithKey();
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_15() applicationServer:? client:? requestShelfPresentationForSceneWithIdentifier:?];
      }
    }
  }
}

- (void)noteDidReceiveMessage:(uint64_t)a1 withType:(void *)a2 fromClient:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 processHandle];
  v8 = 138543618;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Client process [%@] sent a message with an unknown format. Ignoring request.", &v8, 0x16u);
}

@end