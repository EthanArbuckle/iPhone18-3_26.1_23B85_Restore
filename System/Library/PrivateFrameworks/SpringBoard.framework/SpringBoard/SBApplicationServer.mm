@interface SBApplicationServer
+ (id)sharedInstance;
- (SBApplicationServerHarmonyDelegate)harmonyDelegate;
- (SBApplicationServerMiscDelegate)miscDelegate;
- (SBApplicationServerMultiwindowDelegate)multiwindowDelegate;
- (SBApplicationServerShortcutDelegate)shortcutDelegate;
- (id)_init;
- (void)_handleDeleteApplicationSnapshots:(void *)a3 fromClient:;
- (void)_handleHarmonyFetchWhitePointAdaptivityStyleMessage:(void *)a3 fromClient:;
- (void)_handleMultiwindowShortcutRequestShelfPresentationMessage:(void *)a3 fromClient:;
- (void)_handleMultiwindowShortcutShowAllWindowsMessage:(void *)a3 fromClient:;
- (void)_handleShortcutFetchApplicationShortcutItemsMessage:(void *)a3 fromClient:;
- (void)_handleShortcutUpdateDynamicApplicationShortcutItemsMessage:(void *)a3 fromClient:;
- (void)dealloc;
- (void)noteDidReceiveMessage:(id)a3 withType:(int64_t)a4 fromClient:(id)a5;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBApplicationServer.m" lineNumber:40 description:@"you can't deallocate the server"];

  v5.receiver = self;
  v5.super_class = SBApplicationServer;
  [(FBSServiceFacility *)&v5 dealloc];
}

- (void)noteDidReceiveMessage:(id)a3 withType:(int64_t)a4 fromClient:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 5:
        [(SBApplicationServer *)self _handleMultiwindowShortcutRequestShelfPresentationMessage:v8 fromClient:v9];
        goto LABEL_12;
      case 4:
        [(SBApplicationServer *)self _handleMultiwindowShortcutShowAllWindowsMessage:v8 fromClient:v9];
        goto LABEL_12;
      case 3:
        [(SBApplicationServer *)self _handleDeleteApplicationSnapshots:v8 fromClient:v9];
        goto LABEL_12;
    }
  }

  else
  {
    switch(a4)
    {
      case 0:
        [(SBApplicationServer *)self _handleHarmonyFetchWhitePointAdaptivityStyleMessage:v8 fromClient:v9];
        goto LABEL_12;
      case 1:
        [(SBApplicationServer *)self _handleShortcutFetchApplicationShortcutItemsMessage:v8 fromClient:v9];
        goto LABEL_12;
      case 2:
        [(SBApplicationServer *)self _handleShortcutUpdateDynamicApplicationShortcutItemsMessage:v8 fromClient:v9];
        goto LABEL_12;
    }
  }

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SBApplicationServer noteDidReceiveMessage:v9 withType:v10 fromClient:?];
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
  v1 = a1;
  if (a1)
  {
    v2 = MEMORY[0x277D0AE00];
    Serial = BSDispatchQueueCreateSerial();
    v4 = [v2 queueWithDispatchQueue:Serial];

    v5 = *MEMORY[0x277D66EA0];
    v7.receiver = v1;
    v7.super_class = SBApplicationServer;
    v1 = objc_msgSendSuper2(&v7, sel_initWithIdentifier_queue_, v5, v4);
  }

  return v1;
}

- (void)_handleDeleteApplicationSnapshots:(void *)a3 fromClient:
{
  v9 = OUTLINED_FUNCTION_4_5(a1, a2, a3);
  if (v4)
  {
    v6 = [v3 payload];
    v7 = v6;
    if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
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

- (void)_handleHarmonyFetchWhitePointAdaptivityStyleMessage:(void *)a3 fromClient:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    OUTLINED_FUNCTION_1_4();
    v17 = 3221225472;
    v18 = __86__SBApplicationServer__handleHarmonyFetchWhitePointAdaptivityStyleMessage_fromClient___block_invoke;
    v19 = &unk_2783ACA48;
    v7 = v5;
    v20 = v7;
    v8 = MEMORY[0x223D6F7F0](v16);
    v9 = [v7 payload];
    v10 = v9;
    if (v9 && object_getClass(v9) == MEMORY[0x277D86468])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 64));
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

- (void)_handleShortcutFetchApplicationShortcutItemsMessage:(void *)a3 fromClient:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    OUTLINED_FUNCTION_1_4();
    v18 = 3221225472;
    v19 = __86__SBApplicationServer__handleShortcutFetchApplicationShortcutItemsMessage_fromClient___block_invoke;
    v20 = &unk_2783B07E0;
    v7 = v5;
    v21 = v7;
    v8 = MEMORY[0x223D6F7F0](v17);
    v9 = [v7 payload];
    v10 = v9;
    if (v9 && object_getClass(v9) == MEMORY[0x277D86468])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
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

- (void)_handleShortcutUpdateDynamicApplicationShortcutItemsMessage:(void *)a3 fromClient:
{
  v10 = OUTLINED_FUNCTION_4_5(a1, a2, a3);
  if (v4)
  {
    v5 = [v3 payload];
    v6 = v5;
    if (v5 && object_getClass(v5) == MEMORY[0x277D86468])
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

- (void)_handleMultiwindowShortcutShowAllWindowsMessage:(void *)a3 fromClient:
{
  v9 = OUTLINED_FUNCTION_4_5(a1, a2, a3);
  if (v4)
  {
    v6 = [v3 payload];
    v7 = v6;
    if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
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

- (void)_handleMultiwindowShortcutRequestShelfPresentationMessage:(void *)a3 fromClient:
{
  v9 = OUTLINED_FUNCTION_4_5(a1, a2, a3);
  if (v4)
  {
    v6 = [v3 payload];
    v7 = v6;
    if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
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