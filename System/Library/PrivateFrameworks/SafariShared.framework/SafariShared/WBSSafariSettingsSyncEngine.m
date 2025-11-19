@interface WBSSafariSettingsSyncEngine
- (WBSSafariSettingsSyncEngine)init;
- (void)deleteBackgroundImageFromCloudKitWithCompletionHandler:(id)a3;
- (void)registerDiagnosticInfo:(id)a3;
- (void)registerDiagnosticWithPayloadProvider:(id)a3;
- (void)saveSettingWithDictionaryRepresentation:(id)a3 successCompletionHandler:(id)a4;
- (void)scheduleCloudBackgroundImageSaveWithURL:(id)a3 isLightAppearance:(BOOL)a4 successCompletionHandler:(id)a5;
- (void)syncPerSiteSettingsDownWithCompletion:(id)a3;
- (void)syncPerSiteSettingsUpWithCompletion:(id)a3;
- (void)syncSettingsDownWithCompletion:(id)a3;
- (void)syncSettingsUpWithCompletion:(id)a3;
@end

@implementation WBSSafariSettingsSyncEngine

- (WBSSafariSettingsSyncEngine)init
{
  v8.receiver = self;
  v8.super_class = WBSSafariSettingsSyncEngine;
  v2 = [(WBSSafariSettingsSyncEngine *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.WBSSafariSettingsSyncEngine.internalQueue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    v5 = [MEMORY[0x1E69C8A08] sharedProxy];
    [v5 fetchCloudSettingsChangesImmediately];

    v6 = v2;
  }

  return v2;
}

- (void)saveSettingWithDictionaryRepresentation:(id)a3 successCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__WBSSafariSettingsSyncEngine_saveSettingWithDictionaryRepresentation_successCompletionHandler___block_invoke;
  v11[3] = &unk_1E7FB6F08;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, v11);
}

void __96__WBSSafariSettingsSyncEngine_saveSettingWithDictionaryRepresentation_successCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 saveCloudSettingWithDictionaryRepresentation:*(a1 + 32) successCompletionHandler:*(a1 + 40)];
}

- (void)deleteBackgroundImageFromCloudKitWithCompletionHandler:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__WBSSafariSettingsSyncEngine_deleteBackgroundImageFromCloudKitWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7FB7B80;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, block);
}

void __86__WBSSafariSettingsSyncEngine_deleteBackgroundImageFromCloudKitWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 deleteBackgroundImageFromCloudKitWithCompletionHandler:*(a1 + 32)];
}

- (void)scheduleCloudBackgroundImageSaveWithURL:(id)a3 isLightAppearance:(BOOL)a4 successCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__WBSSafariSettingsSyncEngine_scheduleCloudBackgroundImageSaveWithURL_isLightAppearance_successCompletionHandler___block_invoke;
  block[3] = &unk_1E7FCA5A8;
  v16 = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(internalQueue, block);
}

void __114__WBSSafariSettingsSyncEngine_scheduleCloudBackgroundImageSaveWithURL_isLightAppearance_successCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 scheduleCloudBackgroundImageSaveWithURL:*(a1 + 32) isLightAppearance:*(a1 + 48) successCompletionHandler:*(a1 + 40)];
}

void __78__WBSSafariSettingsSyncEngine_triggerImmediateBackgroundImageSaveIfApplicable__block_invoke()
{
  v0 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v0 triggerImmediateBackgroundImageSaveIfApplicable];
}

- (void)syncSettingsDownWithCompletion:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSSafariSettingsSyncEngine_syncSettingsDownWithCompletion___block_invoke;
  block[3] = &unk_1E7FB7B80;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, block);
}

void __62__WBSSafariSettingsSyncEngine_syncSettingsDownWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 syncDownSafariSettingsSyncWithCompletion:*(a1 + 32)];
}

- (void)syncSettingsUpWithCompletion:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WBSSafariSettingsSyncEngine_syncSettingsUpWithCompletion___block_invoke;
  block[3] = &unk_1E7FB7B80;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, block);
}

void __60__WBSSafariSettingsSyncEngine_syncSettingsUpWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 syncUpSafariSettingsSyncWithCompletion:*(a1 + 32)];
}

- (void)registerDiagnosticInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__WBSSafariSettingsSyncEngine_registerDiagnosticInfo___block_invoke;
  v6[3] = &unk_1E7FCA5D0;
  v7 = v4;
  v5 = v4;
  [(WBSSafariSettingsSyncEngine *)self registerDiagnosticWithPayloadProvider:v6];
}

- (void)registerDiagnosticWithPayloadProvider:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x1E69C8868] registeredStateCollectorWithLogLabel:@"Safari Start Page State" payloadProvider:?];
  stateCollector = self->_stateCollector;
  self->_stateCollector = v4;
}

- (void)syncPerSiteSettingsDownWithCompletion:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__WBSSafariSettingsSyncEngine_syncPerSiteSettingsDownWithCompletion___block_invoke;
  block[3] = &unk_1E7FB7B80;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, block);
}

void __69__WBSSafariSettingsSyncEngine_syncPerSiteSettingsDownWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 syncDownSafariPerSiteSettingsSyncWithCompletion:*(a1 + 32)];
}

- (void)syncPerSiteSettingsUpWithCompletion:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSSafariSettingsSyncEngine_syncPerSiteSettingsUpWithCompletion___block_invoke;
  block[3] = &unk_1E7FB7B80;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, block);
}

void __67__WBSSafariSettingsSyncEngine_syncPerSiteSettingsUpWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 syncUpSafariPerSiteSettingsSyncWithCompletion:*(a1 + 32)];
}

@end