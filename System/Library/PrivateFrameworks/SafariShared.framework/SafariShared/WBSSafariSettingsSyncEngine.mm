@interface WBSSafariSettingsSyncEngine
- (WBSSafariSettingsSyncEngine)init;
- (void)deleteBackgroundImageFromCloudKitWithCompletionHandler:(id)handler;
- (void)registerDiagnosticInfo:(id)info;
- (void)registerDiagnosticWithPayloadProvider:(id)provider;
- (void)saveSettingWithDictionaryRepresentation:(id)representation successCompletionHandler:(id)handler;
- (void)scheduleCloudBackgroundImageSaveWithURL:(id)l isLightAppearance:(BOOL)appearance successCompletionHandler:(id)handler;
- (void)syncPerSiteSettingsDownWithCompletion:(id)completion;
- (void)syncPerSiteSettingsUpWithCompletion:(id)completion;
- (void)syncSettingsDownWithCompletion:(id)completion;
- (void)syncSettingsUpWithCompletion:(id)completion;
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

    mEMORY[0x1E69C8A08] = [MEMORY[0x1E69C8A08] sharedProxy];
    [mEMORY[0x1E69C8A08] fetchCloudSettingsChangesImmediately];

    v6 = v2;
  }

  return v2;
}

- (void)saveSettingWithDictionaryRepresentation:(id)representation successCompletionHandler:(id)handler
{
  representationCopy = representation;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__WBSSafariSettingsSyncEngine_saveSettingWithDictionaryRepresentation_successCompletionHandler___block_invoke;
  v11[3] = &unk_1E7FB6F08;
  v12 = representationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = representationCopy;
  dispatch_async(internalQueue, v11);
}

void __96__WBSSafariSettingsSyncEngine_saveSettingWithDictionaryRepresentation_successCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 saveCloudSettingWithDictionaryRepresentation:*(a1 + 32) successCompletionHandler:*(a1 + 40)];
}

- (void)deleteBackgroundImageFromCloudKitWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__WBSSafariSettingsSyncEngine_deleteBackgroundImageFromCloudKitWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7FB7B80;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __86__WBSSafariSettingsSyncEngine_deleteBackgroundImageFromCloudKitWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 deleteBackgroundImageFromCloudKitWithCompletionHandler:*(a1 + 32)];
}

- (void)scheduleCloudBackgroundImageSaveWithURL:(id)l isLightAppearance:(BOOL)appearance successCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__WBSSafariSettingsSyncEngine_scheduleCloudBackgroundImageSaveWithURL_isLightAppearance_successCompletionHandler___block_invoke;
  block[3] = &unk_1E7FCA5A8;
  appearanceCopy = appearance;
  v14 = lCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = lCopy;
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

- (void)syncSettingsDownWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSSafariSettingsSyncEngine_syncSettingsDownWithCompletion___block_invoke;
  block[3] = &unk_1E7FB7B80;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(internalQueue, block);
}

void __62__WBSSafariSettingsSyncEngine_syncSettingsDownWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 syncDownSafariSettingsSyncWithCompletion:*(a1 + 32)];
}

- (void)syncSettingsUpWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WBSSafariSettingsSyncEngine_syncSettingsUpWithCompletion___block_invoke;
  block[3] = &unk_1E7FB7B80;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(internalQueue, block);
}

void __60__WBSSafariSettingsSyncEngine_syncSettingsUpWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 syncUpSafariSettingsSyncWithCompletion:*(a1 + 32)];
}

- (void)registerDiagnosticInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__WBSSafariSettingsSyncEngine_registerDiagnosticInfo___block_invoke;
  v6[3] = &unk_1E7FCA5D0;
  v7 = infoCopy;
  v5 = infoCopy;
  [(WBSSafariSettingsSyncEngine *)self registerDiagnosticWithPayloadProvider:v6];
}

- (void)registerDiagnosticWithPayloadProvider:(id)provider
{
  providerCopy = provider;
  v4 = [MEMORY[0x1E69C8868] registeredStateCollectorWithLogLabel:@"Safari Start Page State" payloadProvider:?];
  stateCollector = self->_stateCollector;
  self->_stateCollector = v4;
}

- (void)syncPerSiteSettingsDownWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__WBSSafariSettingsSyncEngine_syncPerSiteSettingsDownWithCompletion___block_invoke;
  block[3] = &unk_1E7FB7B80;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(internalQueue, block);
}

void __69__WBSSafariSettingsSyncEngine_syncPerSiteSettingsDownWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 syncDownSafariPerSiteSettingsSyncWithCompletion:*(a1 + 32)];
}

- (void)syncPerSiteSettingsUpWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSSafariSettingsSyncEngine_syncPerSiteSettingsUpWithCompletion___block_invoke;
  block[3] = &unk_1E7FB7B80;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(internalQueue, block);
}

void __67__WBSSafariSettingsSyncEngine_syncPerSiteSettingsUpWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 syncUpSafariPerSiteSettingsSyncWithCompletion:*(a1 + 32)];
}

@end