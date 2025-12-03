@interface VCVoiceShortcutClient
+ (VCVoiceShortcutClient)standardClient;
- (BOOL)markMenuBarWorkflowAsMigratedWithIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)requestDataMigration:(id *)migration;
- (BOOL)resetAutomationConfirmationStatusWithError:(id *)error;
- (BOOL)userHasAutomationsWithError:(id *)error;
- (VCVoiceShortcutClient)initWithListenerEndpoint:(id)endpoint;
- (VCVoiceShortcutClient)initWithMachServiceName:(id)name options:(unint64_t)options interfaceSetupBlock:(id)block;
- (VCVoiceShortcutClient)initWithXPCConnection:(id)connection XPCConnectionCreationBlock:(id)block XPCInterfaceSetupBlock:(id)setupBlock;
- (VCVoiceShortcutClient)initWithXPCConnectionCreationBlock:(id)block XPCInterfaceSetupBlock:(id)setupBlock;
- (id)accessibilityWatchWorkflowsWithError:(id *)error;
- (id)accessibilityWorkflowForIdentifier:(id)identifier error:(id *)error;
- (id)accessibilityWorkflowWithIdentifier:(id)identifier error:(id *)error;
- (id)accessibilityWorkflowsForSurface:(unint64_t)surface error:(id *)error;
- (id)accessibilityWorkflowsWithError:(id *)error;
- (id)archiveAction:(id)action withActionMetadata:(id)metadata error:(id *)error;
- (id)asynchronousRemoteDataStoreWithErrorHandler:(id)handler synchronous:(BOOL)synchronous;
- (id)colorsForBundleIdentifier:(id)identifier error:(id *)error;
- (id)contextualActionsForContext:(id)context error:(id *)error;
- (id)createBookmarkWithBookmarkableString:(id)string path:(id)path workflowID:(id)d error:(id *)error;
- (id)createBookmarkWithURL:(id)l workflowID:(id)d error:(id *)error;
- (id)drawGlyphs:(id)glyphs atSize:(CGSize)size withBackgroundColorValues:(id)values padding:(double)padding error:(id *)error;
- (id)fetchURLForFPItem:(id)item error:(id *)error;
- (id)filteredContextualActions:(id)actions forContext:(id)context byType:(unint64_t)type error:(id *)error;
- (id)firstUnsortedWorkflowWithBackgroundColorValue:(id *)value error:(id *)error;
- (id)foldersWithError:(id *)error;
- (id)getResultsForQuery:(id)query resultClass:(Class)class resultState:(id *)state error:(id *)error;
- (id)getValueForDescriptor:(id)descriptor resultClass:(Class)class error:(id *)error;
- (id)getVaultItemsAccessForBackgroundRunner;
- (id)linkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier serializedParameterStates:(id)states error:(id *)error;
- (id)menuBarWorkflowsWithGlyphSize:(CGSize)size error:(id *)error;
- (id)migratedAppIntentWithINIntent:(id)intent error:(id *)error;
- (id)observableStingWorkflowWithIdentifier:(id)identifier error:(id *)error;
- (id)observableStingWorkflowsWithError:(id *)error;
- (id)resolveBookmarkData:(id)data updatedData:(id *)updatedData error:(id *)error;
- (id)resolveCrossDeviceItemID:(id)d error:(id *)error;
- (id)resolveFilePath:(id)path workflowID:(id)d error:(id *)error;
- (id)runShortcutIntentForWorkflow:(id)workflow error:(id *)error;
- (id)serializedParametersForLinkAction:(id)action actionMetadata:(id)metadata error:(id *)error;
- (id)shareSheetWorkflowsForExtensionMatchingDictionaries:(id)dictionaries resolvedActivityItems:(id)items hostBundleIdentifier:(id)identifier iconSize:(CGSize)size iconScale:(double)scale error:(id *)error;
- (id)shortcutWithIdentifier:(id)identifier glyphSize:(CGSize)size error:(id *)error;
- (id)shortcutsInCollectionWithIdentifier:(id)identifier error:(id *)error;
- (id)stingWorkflowWithIdentifier:(id)identifier error:(id *)error;
- (id)stingWorkflowsWithError:(id *)error;
- (id)unarchiveActionFromData:(id)data withActionMetadata:(id)metadata error:(id *)error;
- (id)unsafePopConnectionErrorHandlers;
- (id)visibleShortcutsWithError:(id *)error;
- (void)archiveAction:(id)action withActionMetadata:(id)metadata completion:(id)completion;
- (void)callErrorHandlerIfNeeded:(id)needed withError:(id)error;
- (void)checkTriggerStateWithIdentifier:(id)identifier completion:(id)completion;
- (void)checkTriggerStateWithKeyPath:(id)path completion:(id)completion;
- (void)computeRepresentativeSizesForFinderResizingImages:(id)images toSizes:(id)sizes completion:(id)completion;
- (void)configuredStaccatoActionFromTemplate:(id)template valuesByParameterKey:(id)key completion:(id)completion;
- (void)createVoiceShortcut:(id)shortcut phrase:(id)phrase completion:(id)completion;
- (void)dealloc;
- (void)defaultStaccatoActionWithCompletion:(id)completion;
- (void)deleteTriggerWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteVoiceShortcutWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteVoiceShortcutWithName:(id)name completion:(id)completion;
- (void)dismissToastedSessionKitSessionsWithReason:(id)reason completion:(id)completion;
- (void)fetchAllValueSectionsForStaccatoParameter:(id)parameter completion:(id)completion;
- (void)fetchAllValuesForStaccatoParameter:(id)parameter completion:(id)completion;
- (void)fetchAvailableStaccatoActions:(id)actions;
- (void)filterContextualActions:(id)actions forContext:(id)context byType:(unint64_t)type completion:(id)completion;
- (void)generateSingleUseTokenForWorkflowIdentifier:(id)identifier completion:(id)completion;
- (void)getConfiguredTriggerDescriptionsWithCompletion:(id)completion;
- (void)getContextualActionsForContext:(id)context completion:(id)completion;
- (void)getLinkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier expandingParameterName:(id)name limit:(int64_t)limit completion:(id)completion;
- (void)getNumberOfVoiceShortcutsWithCompletion:(id)completion;
- (void)getOnScreenContentWithOptions:(id)options completion:(id)completion;
- (void)getOnScreenContentWithOptions:(id)options completionHandler:(id)handler;
- (void)getResultsForQuery:(id)query resultClass:(Class)class completion:(id)completion;
- (void)getShortcutSuggestionsForAllAppsWithLimit:(unint64_t)limit completion:(id)completion;
- (void)getShortcutSuggestionsForAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getSiriAutoShortcutsEnablementForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getSiriPodcastsDatabaseURLWithCompletion:(id)completion;
- (void)getSuggestedShortcutsWithLimit:(int64_t)limit completion:(id)completion;
- (void)getUpcomingMediaForBundleIdentifier:(id)identifier limit:(int64_t)limit completion:(id)completion;
- (void)getValueForDescriptor:(id)descriptor resultClass:(Class)class completion:(id)completion;
- (void)getVoiceShortcutWithIdentifier:(id)identifier completion:(id)completion;
- (void)getVoiceShortcutWithPhrase:(id)phrase completion:(id)completion;
- (void)getVoiceShortcutsForAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getVoiceShortcutsWithCompletion:(id)completion;
- (void)getWidgetWorkflowWithIdentifier:(id)identifier completion:(id)completion;
- (void)getWidgetWorkflowsInCollectionWithIdentifier:(id)identifier limit:(unint64_t)limit completion:(id)completion;
- (void)handleXPCConnectionInterruption;
- (void)handleXPCConnectionInvalidation;
- (void)importSharedShortcutFromURL:(id)l completion:(id)completion;
- (void)importSharedShortcutFromURL:(id)l withName:(id)name shortcutSource:(id)source completion:(id)completion;
- (void)importShortcutWithRecordData:(id)data name:(id)name shortcutSource:(id)source completion:(id)completion;
- (void)importTopLevelShortcutFromURL:(id)l withName:(id)name completion:(id)completion;
- (void)listModulesWithCompletionHandler:(id)handler;
- (void)loadDataWithItemProviderRequestMetadata:(id)metadata type:(id)type completion:(id)completion;
- (void)logRunOfContextualAction:(id)action;
- (void)obliterateShortcuts:(id)shortcuts;
- (void)postNotificationAboutFailure:(id)failure inWorkflow:(id)workflow dialogAttribution:(id)attribution runningContext:(id)context;
- (void)postNotificationWithRequest:(id)request presentationMode:(unint64_t)mode runningContext:(id)context;
- (void)refreshTriggerWithIdentifier:(id)identifier completion:(id)completion;
- (void)removeAllSerializedParametersForQueryName:(id)name completion:(id)completion;
- (void)sendAceCommandDictionary:(id)dictionary completion:(id)completion;
- (void)serializedParametersForAppEntityIdentifier:(id)identifier completion:(id)completion;
- (void)setInteger:(int64_t)integer forKey:(id)key inDomain:(id)domain completionHandler:(id)handler;
- (void)setPerWorkflowStateData:(id)data forSmartPromptWithActionUUID:(id)d reference:(id)reference completion:(id)completion;
- (void)setShortcutSuggestions:(id)suggestions forAppWithBundleIdentifier:(id)identifier;
- (void)setSpotlightAutoShortcutsEnablement:(BOOL)enablement forBundleIdentifier:(id)identifier completion:(id)completion;
- (void)setSpotlightAutoShortcutsEnablement:(BOOL)enablement forBundleIdentifier:(id)identifier phraseSignature:(id)signature completion:(id)completion;
- (void)showSingleStepCompletionForWebClip:(id)clip completion:(id)completion;
- (void)storeSerializedParameters:(id)parameters forAppEntityIdentifier:(id)identifier queryName:(id)name badgeType:(unint64_t)type completion:(id)completion;
- (void)subscribeToVoiceShortcutDataUpdateNotifications;
- (void)toastSessionKitSessionWithIdentifier:(id)identifier forDuration:(id)duration completion:(id)completion;
- (void)triggerFullContextualActionReindexWithCompletion:(id)completion;
- (void)unarchiveActionFromData:(id)data withActionMetadata:(id)metadata completion:(id)completion;
- (void)unregisterTriggerWithIdentifier:(id)identifier triggerBacking:(int64_t)backing completion:(id)completion;
- (void)unsafeSetupXPCConnection;
- (void)unsubscribeFromVoiceShortcutDataUpdateNotifications;
- (void)updateAppShortcutsWithCompletion:(id)completion;
- (void)updateVoiceShortcutWithIdentifier:(id)identifier phrase:(id)phrase shortcut:(id)shortcut completion:(id)completion;
@end

@implementation VCVoiceShortcutClient

+ (VCVoiceShortcutClient)standardClient
{
  if (standardClient_onceToken != -1)
  {
    dispatch_once(&standardClient_onceToken, &__block_literal_global_21087);
  }

  v3 = standardClient_standardClient;

  return v3;
}

uint64_t __39__VCVoiceShortcutClient_standardClient__block_invoke()
{
  standardClient_standardClient = [[VCVoiceShortcutClient alloc] initWithMachServiceName:@"com.apple.siri.VoiceShortcuts.xpc" options:0 interfaceSetupBlock:0];

  return MEMORY[0x1EEE66BB8]();
}

- (void)subscribeToVoiceShortcutDataUpdateNotifications
{
  v10 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, VCVoiceShortcutDataDidUpdateNotificationHandler, @"com.apple.siri.VoiceShortcuts.DataDidUpdateNotification", 0, 0);
  v4 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[VCVoiceShortcutClient subscribeToVoiceShortcutDataUpdateNotifications]";
    v8 = 2112;
    v9 = @"com.apple.siri.VoiceShortcuts.DataDidUpdateNotification";
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_DEBUG, "%s Subscribed to notification: (%@)", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)unsafeSetupXPCConnection
{
  v24 = *MEMORY[0x1E69E9840];
  xpcConnection = self->_xpcConnection;
  xpcQueue = [(VCVoiceShortcutClient *)self xpcQueue];
  [(NSXPCConnection *)xpcConnection _setQueue:xpcQueue];

  v5 = VCVoiceShortcutManagerXPCInterface();
  interfaceSetupBlock = [(VCVoiceShortcutClient *)self interfaceSetupBlock];

  if (interfaceSetupBlock)
  {
    interfaceSetupBlock2 = [(VCVoiceShortcutClient *)self interfaceSetupBlock];
    (interfaceSetupBlock2)[2](interfaceSetupBlock2, v5);
  }

  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v5];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__VCVoiceShortcutClient_unsafeSetupXPCConnection__block_invoke;
  v13[3] = &unk_1E7B02828;
  objc_copyWeak(&v14, &location);
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__VCVoiceShortcutClient_unsafeSetupXPCConnection__block_invoke_181;
  v11[3] = &unk_1E7B02828;
  objc_copyWeak(&v12, &location);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v11];
  [(NSXPCConnection *)self->_xpcConnection resume];
  v8 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_xpcConnection;
    *buf = 136315906;
    v17 = "[VCVoiceShortcutClient unsafeSetupXPCConnection]";
    v18 = 2112;
    selfCopy = self;
    v20 = 2112;
    v21 = v9;
    v22 = 2114;
    v23 = @"com.apple.siri.VoiceShortcuts.xpc";
    _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_DEFAULT, "%s %@ XPCConnection=%@ resumed to machServiceName=%{public}@", buf, 0x2Au);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v10 = *MEMORY[0x1E69E9840];
}

- (id)getVaultItemsAccessForBackgroundRunner
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__20936;
  v11 = __Block_byref_object_dispose__20937;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__VCVoiceShortcutClient_getVaultItemsAccessForBackgroundRunner__block_invoke;
  v6[3] = &unk_1E7B028A0;
  v6[4] = &v7;
  v2 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__VCVoiceShortcutClient_getVaultItemsAccessForBackgroundRunner__block_invoke_2;
  v5[3] = &unk_1E7B029C0;
  v5[4] = &v7;
  [v2 getVaultItemsAccessForBackgroundRunner:v5];

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (void)listModulesWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1B1E050C0(&unk_1B1F2A340, v5);
}

- (BOOL)markMenuBarWorkflowAsMigratedWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__VCVoiceShortcutClient_MenuBar__markMenuBarWorkflowAsMigratedWithIdentifiers_error___block_invoke;
  v11[3] = &unk_1E7B028A0;
  v11[4] = &v12;
  v7 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__VCVoiceShortcutClient_MenuBar__markMenuBarWorkflowAsMigratedWithIdentifiers_error___block_invoke_2;
  v10[3] = &unk_1E7B028A0;
  v10[4] = &v12;
  [v7 markMenuBarWorkflowAsMigratedWithIdentifiers:identifiersCopy completion:v10];

  if (error)
  {
    *error = v13[5];
  }

  v8 = v13[5] == 0;
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)runShortcutIntentForWorkflow:(id)workflow error:(id *)error
{
  workflowCopy = workflow;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__VCVoiceShortcutClient_MenuBar__runShortcutIntentForWorkflow_error___block_invoke;
  v11[3] = &unk_1E7B028A0;
  v11[4] = &v18;
  v7 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__VCVoiceShortcutClient_MenuBar__runShortcutIntentForWorkflow_error___block_invoke_2;
  v10[3] = &unk_1E7AFFA00;
  v10[4] = &v12;
  v10[5] = &v18;
  [v7 getRunShortcutIntentForWorkflow:workflowCopy completion:v10];

  if (error)
  {
    *error = v19[5];
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __69__VCVoiceShortcutClient_MenuBar__runShortcutIntentForWorkflow_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)menuBarWorkflowsWithGlyphSize:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  v7 = [[WFWorkflowQuery alloc] initWithWorkflowType:@"MenuBar"];
  height = [WFObservableArrayResult getResultWithQuery:v7 valueType:objc_opt_class() glyphSize:error error:width, height];

  return height;
}

- (id)stingWorkflowWithIdentifier:(id)identifier error:(id *)error
{
  v4 = [(VCVoiceShortcutClient *)self observableStingWorkflowWithIdentifier:identifier error:error];
  value = [v4 value];

  return value;
}

- (id)stingWorkflowsWithError:(id *)error
{
  v3 = [(VCVoiceShortcutClient *)self observableStingWorkflowsWithError:error];
  values = [v3 values];

  return values;
}

- (id)observableStingWorkflowWithIdentifier:(id)identifier error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v6 = [[WFDatabaseObjectDescriptor alloc] initWithIdentifier:identifierCopy objectType:0];
    v7 = [WFObservableObjectResult getResultWithDescriptor:v6 valueType:objc_opt_class() glyphSize:error error:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }

  else
  {
    v8 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "[VCVoiceShortcutClient(Sting) observableStingWorkflowWithIdentifier:error:]";
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)observableStingWorkflowsWithError:(id *)error
{
  v4 = [[WFWorkflowQuery alloc] initWithWorkflowType:@"Watch"];
  v5 = [WFObservableArrayResult getResultWithQuery:v4 valueType:objc_opt_class() glyphSize:error error:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  return v5;
}

- (void)loadDataWithItemProviderRequestMetadata:(id)metadata type:(id)type completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__VCVoiceShortcutClient_AppIntents__loadDataWithItemProviderRequestMetadata_type_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v9 = completionCopy;
  v17 = v9;
  typeCopy = type;
  metadataCopy = metadata;
  v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__VCVoiceShortcutClient_AppIntents__loadDataWithItemProviderRequestMetadata_type_completion___block_invoke_2;
  v14[3] = &unk_1E7B01690;
  v15 = v9;
  v13 = v9;
  [v12 loadDataWithItemProviderRequestMetadata:metadataCopy type:typeCopy completion:v14];
}

- (id)serializedParametersForLinkAction:(id)action actionMetadata:(id)metadata error:(id *)error
{
  actionCopy = action;
  metadataCopy = metadata;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1764;
  v26 = __Block_byref_object_dispose__1765;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1764;
  v20 = __Block_byref_object_dispose__1765;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__VCVoiceShortcutClient_AppIntents__serializedParametersForLinkAction_actionMetadata_error___block_invoke;
  v15[3] = &unk_1E7B028A0;
  v15[4] = &v22;
  v10 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__VCVoiceShortcutClient_AppIntents__serializedParametersForLinkAction_actionMetadata_error___block_invoke_2;
  v14[3] = &unk_1E7B000B8;
  v14[4] = &v16;
  v14[5] = &v22;
  [v10 getSerializedParametersForLinkAction:actionCopy actionMetadata:metadataCopy completion:v14];

  v11 = v17[5];
  if (error && !v11)
  {
    *error = v23[5];
    v11 = v17[5];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __92__VCVoiceShortcutClient_AppIntents__serializedParametersForLinkAction_actionMetadata_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)migratedAppIntentWithINIntent:(id)intent error:(id *)error
{
  intentCopy = intent;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1764;
  v23 = __Block_byref_object_dispose__1765;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1764;
  v17 = __Block_byref_object_dispose__1765;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__VCVoiceShortcutClient_AppIntents__migratedAppIntentWithINIntent_error___block_invoke;
  v12[3] = &unk_1E7B028A0;
  v12[4] = &v19;
  v7 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__VCVoiceShortcutClient_AppIntents__migratedAppIntentWithINIntent_error___block_invoke_2;
  v11[3] = &unk_1E7B00090;
  v11[4] = &v13;
  v11[5] = &v19;
  [v7 getMigratedAppIntentWithINIntent:intentCopy completion:v11];

  v8 = v14[5];
  if (error && !v8)
  {
    *error = v20[5];
    v8 = v14[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __73__VCVoiceShortcutClient_AppIntents__migratedAppIntentWithINIntent_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)linkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier serializedParameterStates:(id)states error:(id *)error
{
  identifierCopy = identifier;
  intentIdentifierCopy = intentIdentifier;
  statesCopy = states;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1764;
  v29 = __Block_byref_object_dispose__1765;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1764;
  v23 = __Block_byref_object_dispose__1765;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __123__VCVoiceShortcutClient_AppIntents__linkActionWithAppBundleIdentifier_appIntentIdentifier_serializedParameterStates_error___block_invoke;
  v18[3] = &unk_1E7B028A0;
  v18[4] = &v25;
  v13 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __123__VCVoiceShortcutClient_AppIntents__linkActionWithAppBundleIdentifier_appIntentIdentifier_serializedParameterStates_error___block_invoke_2;
  v17[3] = &unk_1E7B00068;
  v17[4] = &v19;
  v17[5] = &v25;
  [v13 getLinkActionWithAppBundleIdentifier:identifierCopy appIntentIdentifier:intentIdentifierCopy serializedParameterStates:statesCopy completion:v17];

  v14 = v20[5];
  if (error && !v14)
  {
    *error = v26[5];
    v14 = v20[5];
  }

  v15 = v14;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v15;
}

void __123__VCVoiceShortcutClient_AppIntents__linkActionWithAppBundleIdentifier_appIntentIdentifier_serializedParameterStates_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)unarchiveActionFromData:(id)data withActionMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__VCVoiceShortcutClient_AppIntents__unarchiveActionFromData_withActionMetadata_completion___block_invoke;
  v13[3] = &unk_1E7B02940;
  v14 = completionCopy;
  v9 = completionCopy;
  metadataCopy = metadata;
  dataCopy = data;
  v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v13];
  [v12 unarchiveActionFromData:dataCopy withActionMetadata:metadataCopy completion:v9];
}

- (void)archiveAction:(id)action withActionMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__VCVoiceShortcutClient_AppIntents__archiveAction_withActionMetadata_completion___block_invoke;
  v13[3] = &unk_1E7B02940;
  v14 = completionCopy;
  v9 = completionCopy;
  metadataCopy = metadata;
  actionCopy = action;
  v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v13];
  [v12 archiveAction:actionCopy withActionMetadata:metadataCopy completion:v9];
}

- (id)unarchiveActionFromData:(id)data withActionMetadata:(id)metadata error:(id *)error
{
  dataCopy = data;
  metadataCopy = metadata;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1764;
  v26 = __Block_byref_object_dispose__1765;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1764;
  v20 = __Block_byref_object_dispose__1765;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__VCVoiceShortcutClient_AppIntents__unarchiveActionFromData_withActionMetadata_error___block_invoke;
  v15[3] = &unk_1E7B00040;
  v15[4] = &v22;
  v15[5] = &v16;
  v10 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__VCVoiceShortcutClient_AppIntents__unarchiveActionFromData_withActionMetadata_error___block_invoke_2;
  v14[3] = &unk_1E7B00068;
  v14[4] = &v22;
  v14[5] = &v16;
  [v10 unarchiveActionFromData:dataCopy withActionMetadata:metadataCopy completion:v14];

  v11 = v23[5];
  if (error && !v11)
  {
    *error = v17[5];
    v11 = v23[5];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __86__VCVoiceShortcutClient_AppIntents__unarchiveActionFromData_withActionMetadata_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __86__VCVoiceShortcutClient_AppIntents__unarchiveActionFromData_withActionMetadata_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)archiveAction:(id)action withActionMetadata:(id)metadata error:(id *)error
{
  actionCopy = action;
  metadataCopy = metadata;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1764;
  v26 = __Block_byref_object_dispose__1765;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1764;
  v20 = __Block_byref_object_dispose__1765;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__VCVoiceShortcutClient_AppIntents__archiveAction_withActionMetadata_error___block_invoke;
  v15[3] = &unk_1E7B00040;
  v15[4] = &v22;
  v15[5] = &v16;
  v10 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__VCVoiceShortcutClient_AppIntents__archiveAction_withActionMetadata_error___block_invoke_2;
  v14[3] = &unk_1E7B02C18;
  v14[4] = &v22;
  v14[5] = &v16;
  [v10 archiveAction:actionCopy withActionMetadata:metadataCopy completion:v14];

  v11 = v23[5];
  if (error && !v11)
  {
    *error = v17[5];
    v11 = v23[5];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __76__VCVoiceShortcutClient_AppIntents__archiveAction_withActionMetadata_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __76__VCVoiceShortcutClient_AppIntents__archiveAction_withActionMetadata_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)triggerFullContextualActionReindexWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__VCVoiceShortcutClient_Spotlight__triggerFullContextualActionReindexWithCompletion___block_invoke;
  v7[3] = &unk_1E7B02940;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v7];
  [v6 triggerFullContextualActionReindexWithCompletion:v5];
}

- (id)colorsForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(WFAppShortcutColorFetcher);
  v7 = [(WFAppShortcutColorFetcher *)v6 colorsForBundleIdentifier:identifierCopy error:error];

  return v7;
}

- (void)getLinkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier expandingParameterName:(id)name limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __140__VCVoiceShortcutClient_TopHitContextual__getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke;
  v18[3] = &unk_1E7B02940;
  v19 = completionCopy;
  v13 = completionCopy;
  nameCopy = name;
  intentIdentifierCopy = intentIdentifier;
  identifierCopy = identifier;
  v17 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v18];
  [v17 getLinkActionWithAppBundleIdentifier:identifierCopy appIntentIdentifier:intentIdentifierCopy expandingParameterName:nameCopy limit:limit completion:v13];
}

- (void)getUpcomingMediaForBundleIdentifier:(id)identifier limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__VCVoiceShortcutClient_TopHitContextual__getUpcomingMediaForBundleIdentifier_limit_completion___block_invoke;
  v12[3] = &unk_1E7B02940;
  v13 = completionCopy;
  v9 = completionCopy;
  identifierCopy = identifier;
  v11 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v12];
  [v11 getUpcomingMediaForBundleIdentifier:identifierCopy limit:limit completion:v9];
}

- (void)getSuggestedShortcutsWithLimit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__VCVoiceShortcutClient_TopHitContextual__getSuggestedShortcutsWithLimit_completion___block_invoke;
  v9[3] = &unk_1E7B02940;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v9];
  [v8 getSuggestedShortcutsWithLimit:limit completion:v7];
}

- (void)importTopLevelShortcutFromURL:(id)l withName:(id)name completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__VCVoiceShortcutClient_VoiceShortcuts__importTopLevelShortcutFromURL_withName_completion___block_invoke;
  v10[3] = &unk_1E7B011E8;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(VCVoiceShortcutClient *)self importSharedShortcutFromURL:l withName:name shortcutSource:@"ShortcutSourceSiriTopLevelShortcut" completion:v10];
}

void __91__VCVoiceShortcutClient_VoiceShortcuts__importTopLevelShortcutFromURL_withName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [*(a1 + 32) voiceShortcutCache];
    [v6 clear];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteVoiceShortcutWithName:(id)name completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  completionCopy = completion;
  v9 = completionCopy;
  if (nameCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "[VCVoiceShortcutClient(VoiceShortcuts) deleteVoiceShortcutWithName:completion:]";
    v23 = 2112;
    v24 = nameCopy;
    _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEBUG, "%s Deleting VoiceShortcut with name=%@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__VCVoiceShortcutClient_VoiceShortcuts__deleteVoiceShortcutWithName_completion___block_invoke;
  v19[3] = &unk_1E7B02940;
  v11 = v9;
  v20 = v11;
  v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__VCVoiceShortcutClient_VoiceShortcuts__deleteVoiceShortcutWithName_completion___block_invoke_2;
  v17[3] = &unk_1E7B011C0;
  v17[4] = self;
  v18 = v11;
  v13 = v11;
  [v12 deleteVoiceShortcutWithIdentifier:0 name:nameCopy completion:v17];

  v14 = *MEMORY[0x1E69E9840];
}

void __80__VCVoiceShortcutClient_VoiceShortcuts__deleteVoiceShortcutWithName_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = [*(a1 + 32) voiceShortcutCache];
    [v5 clear];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteVoiceShortcutWithIdentifier:(id)identifier completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (identifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "[VCVoiceShortcutClient(VoiceShortcuts) deleteVoiceShortcutWithIdentifier:completion:]";
    v23 = 2112;
    v24 = identifierCopy;
    _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEBUG, "%s Deleting VoiceShortcut with id=%@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__VCVoiceShortcutClient_VoiceShortcuts__deleteVoiceShortcutWithIdentifier_completion___block_invoke;
  v19[3] = &unk_1E7B02940;
  v11 = v9;
  v20 = v11;
  v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__VCVoiceShortcutClient_VoiceShortcuts__deleteVoiceShortcutWithIdentifier_completion___block_invoke_2;
  v17[3] = &unk_1E7B011C0;
  v17[4] = self;
  v18 = v11;
  v13 = v11;
  [v12 deleteVoiceShortcutWithIdentifier:identifierCopy name:0 completion:v17];

  v14 = *MEMORY[0x1E69E9840];
}

void __86__VCVoiceShortcutClient_VoiceShortcuts__deleteVoiceShortcutWithIdentifier_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = [*(a1 + 32) voiceShortcutCache];
    [v5 clear];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getVoiceShortcutsForAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__VCVoiceShortcutClient_VoiceShortcuts__getVoiceShortcutsForAppWithBundleIdentifier_completion___block_invoke;
  v14[3] = &unk_1E7B02940;
  v15 = v9;
  v10 = v9;
  v11 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v14];
  [v11 getVoiceShortcutsForAppWithBundleIdentifier:identifierCopy completion:v10];
}

- (void)getVoiceShortcutsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  objc_initWeak(&location, self);
  voiceShortcutCache = [(VCVoiceShortcutClient *)self voiceShortcutCache];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__VCVoiceShortcutClient_VoiceShortcuts__getVoiceShortcutsWithCompletion___block_invoke;
  v9[3] = &unk_1E7B01198;
  objc_copyWeak(&v11, &location);
  v7 = completionCopy;
  v10 = v7;
  [voiceShortcutCache getCachedVoiceShortcuts:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __73__VCVoiceShortcutClient_VoiceShortcuts__getVoiceShortcutsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[VCVoiceShortcutClient(VoiceShortcuts) getVoiceShortcutsWithCompletion:]_block_invoke";
      _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_INFO, "%s Returning cached voice shortcuts.", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [WeakRetained voiceShortcutCache];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__VCVoiceShortcutClient_VoiceShortcuts__getVoiceShortcutsWithCompletion___block_invoke_65;
    v9[3] = &unk_1E7B01170;
    v9[4] = v5;
    v10 = *(a1 + 32);
    [v7 setCachedVoiceShortcuts:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __73__VCVoiceShortcutClient_VoiceShortcuts__getVoiceShortcutsWithCompletion___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__VCVoiceShortcutClient_VoiceShortcuts__getVoiceShortcutsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E7B02940;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v5 = [v4 asynchronousRemoteDataStoreWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__VCVoiceShortcutClient_VoiceShortcuts__getVoiceShortcutsWithCompletion___block_invoke_3;
  v7[3] = &unk_1E7B01148;
  v8 = v3;
  v9 = *(a1 + 40);
  v6 = v3;
  [v5 getVoiceShortcutsWithCompletion:v7];
}

void __73__VCVoiceShortcutClient_VoiceShortcuts__getVoiceShortcutsWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

- (void)getVoiceShortcutWithPhrase:(id)phrase completion:(id)completion
{
  phraseCopy = phrase;
  completionCopy = completion;
  v9 = completionCopy;
  if (!phraseCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__VCVoiceShortcutClient_VoiceShortcuts__getVoiceShortcutWithPhrase_completion___block_invoke;
  v14[3] = &unk_1E7B02940;
  v15 = v9;
  v10 = v9;
  v11 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v14];
  [v11 getVoiceShortcutWithPhrase:phraseCopy completion:v10];
}

- (void)getVoiceShortcutWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__VCVoiceShortcutClient_VoiceShortcuts__getVoiceShortcutWithIdentifier_completion___block_invoke;
  v14[3] = &unk_1E7B02940;
  v15 = v9;
  v10 = v9;
  v11 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v14];
  [v11 getVoiceShortcutWithIdentifier:identifierCopy completion:v10];
}

- (void)getNumberOfVoiceShortcutsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_VoiceShortcuts.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__VCVoiceShortcutClient_VoiceShortcuts__getNumberOfVoiceShortcutsWithCompletion___block_invoke;
  v9[3] = &unk_1E7B02940;
  v10 = completionCopy;
  v6 = completionCopy;
  v7 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v9];
  [v7 getNumberOfVoiceShortcutsWithCompletion:v6];
}

- (void)updateAppShortcutsWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__VCVoiceShortcutClient_AutoShortcuts__updateAppShortcutsWithCompletion___block_invoke;
  v10[3] = &unk_1E7B02940;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__VCVoiceShortcutClient_AutoShortcuts__updateAppShortcutsWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7B02940;
  v9 = v5;
  v7 = v5;
  [v6 updateAppShortcutsWithCompletion:v8];
}

- (void)removeAllSerializedParametersForQueryName:(id)name completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__VCVoiceShortcutClient_AutoShortcuts__removeAllSerializedParametersForQueryName_completion___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = completionCopy;
  v14 = v7;
  nameCopy = name;
  v9 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__VCVoiceShortcutClient_AutoShortcuts__removeAllSerializedParametersForQueryName_completion___block_invoke_2;
  v11[3] = &unk_1E7B02940;
  v12 = v7;
  v10 = v7;
  [v9 removeAllSerializedParametersForQueryName:nameCopy completion:v11];
}

- (void)storeSerializedParameters:(id)parameters forAppEntityIdentifier:(id)identifier queryName:(id)name badgeType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __120__VCVoiceShortcutClient_AutoShortcuts__storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion___block_invoke;
  v21[3] = &unk_1E7B02940;
  v13 = completionCopy;
  v22 = v13;
  nameCopy = name;
  identifierCopy = identifier;
  parametersCopy = parameters;
  v17 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __120__VCVoiceShortcutClient_AutoShortcuts__storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion___block_invoke_2;
  v19[3] = &unk_1E7B02940;
  v20 = v13;
  v18 = v13;
  [v17 storeSerializedParameters:parametersCopy forAppEntityIdentifier:identifierCopy queryName:nameCopy badgeType:type completion:v19];
}

- (void)serializedParametersForAppEntityIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__VCVoiceShortcutClient_AutoShortcuts__serializedParametersForAppEntityIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = completionCopy;
  v14 = v7;
  identifierCopy = identifier;
  v9 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__VCVoiceShortcutClient_AutoShortcuts__serializedParametersForAppEntityIdentifier_completion___block_invoke_2;
  v11[3] = &unk_1E7B01690;
  v12 = v7;
  v10 = v7;
  [v9 serializedParametersForAppEntityIdentifier:identifierCopy completion:v11];
}

- (void)setSpotlightAutoShortcutsEnablement:(BOOL)enablement forBundleIdentifier:(id)identifier phraseSignature:(id)signature completion:(id)completion
{
  v6 = MEMORY[0x1E696ABC0];
  completionCopy = completion;
  v8 = [v6 vc_voiceShortcutErrorWithCode:1014 reason:@"Individual App Shortcuts can no longer be hidden from Spotlight."];
  completionCopy[2](completionCopy, v8);
}

- (void)setSpotlightAutoShortcutsEnablement:(BOOL)enablement forBundleIdentifier:(id)identifier completion:(id)completion
{
  v5 = MEMORY[0x1E696ABC0];
  completionCopy = completion;
  v7 = [v5 vc_voiceShortcutErrorWithCode:1014 reason:@"This setting is now managed by the global Show Content in Search setting."];
  completionCopy[2](completionCopy, v7);
}

- (void)getSiriAutoShortcutsEnablementForBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__VCVoiceShortcutClient_AutoShortcuts__getSiriAutoShortcutsEnablementForBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7B02940;
  v7 = completionCopy;
  v14 = v7;
  identifierCopy = identifier;
  v9 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__VCVoiceShortcutClient_AutoShortcuts__getSiriAutoShortcutsEnablementForBundleIdentifier_completion___block_invoke_2;
  v11[3] = &unk_1E7B01668;
  v12 = v7;
  v10 = v7;
  [v9 getSiriAutoShortcutsEnablementForBundleIdentifier:identifierCopy completion:v11];
}

- (id)accessibilityWorkflowWithIdentifier:(id)identifier error:(id *)error
{
  v4 = [(VCVoiceShortcutClient *)self accessibilityWorkflowForIdentifier:identifier error:error];
  value = [v4 value];

  return value;
}

- (id)accessibilityWatchWorkflowsWithError:(id *)error
{
  v3 = [(VCVoiceShortcutClient *)self accessibilityWorkflowsForSurface:1 error:error];
  values = [v3 values];

  return values;
}

- (id)accessibilityWorkflowsWithError:(id *)error
{
  v3 = [(VCVoiceShortcutClient *)self accessibilityWorkflowsForSurface:0 error:error];
  values = [v3 values];

  return values;
}

- (id)accessibilityWorkflowForIdentifier:(id)identifier error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v6 = [[WFDatabaseObjectDescriptor alloc] initWithIdentifier:identifierCopy objectType:0];
    v7 = [WFObservableObjectResult getResultWithDescriptor:v6 valueType:objc_opt_class() glyphSize:error error:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }

  else
  {
    v8 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "[VCVoiceShortcutClient(Accessibility) accessibilityWorkflowForIdentifier:error:]";
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)accessibilityWorkflowsForSurface:(unint64_t)surface error:(id *)error
{
  v6 = [WFWorkflowQuery alloc];
  if (surface == 1)
  {
    v7 = [(WFWorkflowQuery *)v6 initWithWorkflowType:@"Watch"];
  }

  else
  {
    v7 = [(WFWorkflowQuery *)v6 initWithLocation:0];
  }

  v8 = v7;
  v9 = [WFObservableArrayResult getResultWithQuery:v7 valueType:objc_opt_class() glyphSize:error error:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  return v9;
}

- (void)defaultStaccatoActionWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VCVoiceShortcutClient(Staccato) defaultStaccatoActionWithCompletion:]";
    _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_DEFAULT, "%s Client requesting default system action.", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__VCVoiceShortcutClient_Staccato__defaultStaccatoActionWithCompletion___block_invoke;
  v9[3] = &unk_1E7B02940;
  v10 = completionCopy;
  v6 = completionCopy;
  v7 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v9];
  [v7 defaultStaccatoActionWithCompletion:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)configuredStaccatoActionFromTemplate:(id)template valuesByParameterKey:(id)key completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  templateCopy = template;
  keyCopy = key;
  completionCopy = completion;
  v11 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[VCVoiceShortcutClient(Staccato) configuredStaccatoActionFromTemplate:valuesByParameterKey:completion:]";
    v19 = 2112;
    v20 = templateCopy;
    v21 = 2112;
    v22 = keyCopy;
    _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_DEFAULT, "%s Client requesting configured system action from template: %@ with parameters by key: %@.", buf, 0x20u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__VCVoiceShortcutClient_Staccato__configuredStaccatoActionFromTemplate_valuesByParameterKey_completion___block_invoke;
  v15[3] = &unk_1E7B02940;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v15];
  [v13 configuredStaccatoActionFromTemplate:templateCopy valuesByParameterKey:keyCopy completion:v12];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllValuesForStaccatoParameter:(id)parameter completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__VCVoiceShortcutClient_Staccato__fetchAllValuesForStaccatoParameter_completion___block_invoke;
  v8[3] = &unk_1E7B026A8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(VCVoiceShortcutClient *)self fetchAllValueSectionsForStaccatoParameter:parameter completion:v8];
}

void __81__VCVoiceShortcutClient_Staccato__fetchAllValuesForStaccatoParameter_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6 = [a2 if_flatMap:&__block_literal_global_11661];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)fetchAllValueSectionsForStaccatoParameter:(id)parameter completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  completionCopy = completion;
  v8 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[VCVoiceShortcutClient(Staccato) fetchAllValueSectionsForStaccatoParameter:completion:]";
    v16 = 2112;
    v17 = parameterCopy;
    _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_DEFAULT, "%s Client requesting all values for parameter: %@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__VCVoiceShortcutClient_Staccato__fetchAllValueSectionsForStaccatoParameter_completion___block_invoke;
  v12[3] = &unk_1E7B02940;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v12];
  [v10 fetchAllValueSectionsForStaccatoParameter:parameterCopy completion:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchAvailableStaccatoActions:(id)actions
{
  v13 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v5 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VCVoiceShortcutClient(Staccato) fetchAvailableStaccatoActions:]";
    _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_DEFAULT, "%s Client requesting all available staccato actions.", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__VCVoiceShortcutClient_Staccato__fetchAvailableStaccatoActions___block_invoke;
  v9[3] = &unk_1E7B02940;
  v10 = actionsCopy;
  v6 = actionsCopy;
  v7 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v9];
  [v7 fetchAvailableStaccatoActions:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)resetAutomationConfirmationStatusWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__13173;
  v14 = __Block_byref_object_dispose__13174;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__VCVoiceShortcutClient_Automations__resetAutomationConfirmationStatusWithError___block_invoke;
  v9[3] = &unk_1E7B028A0;
  v9[4] = &v10;
  v4 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__VCVoiceShortcutClient_Automations__resetAutomationConfirmationStatusWithError___block_invoke_2;
  v8[3] = &unk_1E7B028A0;
  v8[4] = &v10;
  [v4 resetAutomationConfirmationStatusWithCompletion:v8];

  v5 = v11[5];
  if (error && v5)
  {
    *error = v5;
    v5 = v11[5];
  }

  v6 = v5 == 0;
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (BOOL)userHasAutomationsWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13173;
  v18 = __Block_byref_object_dispose__13174;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__VCVoiceShortcutClient_Automations__userHasAutomationsWithError___block_invoke;
  v9[3] = &unk_1E7B028A0;
  v9[4] = &v14;
  v4 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__VCVoiceShortcutClient_Automations__userHasAutomationsWithError___block_invoke_2;
  v8[3] = &unk_1E7B028C8;
  v8[4] = &v10;
  v8[5] = &v14;
  [v4 userHasAutomationsWithCompletion:v8];

  if (error)
  {
    v5 = v15[5];
    if (v5)
    {
      *error = v5;
    }
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

- (void)computeRepresentativeSizesForFinderResizingImages:(id)images toSizes:(id)sizes completion:(id)completion
{
  imagesCopy = images;
  sizesCopy = sizes;
  completionCopy = completion;
  if ([imagesCopy count])
  {
    v11 = imagesCopy;
    if (!v11)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray * _Nonnull WFDrawRandomly(NSArray * _Nonnull __strong, NSUInteger)"}];
      [currentHandler handleFailureInFunction:v22 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"array"}];
    }

    v12 = [v11 count];
    if (v12 >= 3)
    {
      v13 = 3;
    }

    else
    {
      v13 = v12;
    }

    v14 = objc_opt_new();
    v15 = [v11 mutableCopy];
    while ([v14 count] < v13)
    {
      v16 = arc4random_uniform([v15 count]);
      v17 = [v15 objectAtIndexedSubscript:v16];
      [v14 addObject:v17];

      [v15 removeObjectAtIndex:v16];
    }

    v18 = [v14 copy];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __113__VCVoiceShortcutClient_ContextualActions__computeRepresentativeSizesForFinderResizingImages_toSizes_completion___block_invoke;
    v25[3] = &unk_1E7B02940;
    v19 = completionCopy;
    v26 = v19;
    v20 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v25];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __113__VCVoiceShortcutClient_ContextualActions__computeRepresentativeSizesForFinderResizingImages_toSizes_completion___block_invoke_2;
    v23[3] = &unk_1E7B01EA0;
    v24 = v19;
    [v20 computeFinderResizedSizesForImages:v18 inSizes:sizesCopy completion:v23];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __113__VCVoiceShortcutClient_ContextualActions__computeRepresentativeSizesForFinderResizingImages_toSizes_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__14950;
    v14 = __Block_byref_object_dispose__14951;
    v15 = objc_opt_new();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __113__VCVoiceShortcutClient_ContextualActions__computeRepresentativeSizesForFinderResizingImages_toSizes_completion___block_invoke_82;
    v9[3] = &unk_1E7B01E78;
    v9[4] = &v16;
    v9[5] = &v10;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = v11[5];
    v8 = *(v17 + 24);
    (*(*(a1 + 32) + 16))();
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __113__VCVoiceShortcutClient_ContextualActions__computeRepresentativeSizesForFinderResizingImages_toSizes_completion___block_invoke_82(uint64_t a1, void *a2, void *a3)
{
  v17 = a3;
  v5 = a2;
  if ([v17 count] < 2)
  {
    v15 = [v17 firstObject];
    v14 = [v15 unsignedIntValue];
  }

  else
  {
    v6 = WFEvaluateMathematicalFunction(@"average:", v17);
    [v6 doubleValue];
    v8 = v7;

    v9 = WFEvaluateMathematicalFunction(@"stddev:", v17);
    [v9 doubleValue];
    v11 = v10;

    if (v11 > 0.0)
    {
      v12 = log10(v11);
      v13 = __exp10(floor(v12));
      v8 = ceil(v8 / v13) * v13;
    }

    v14 = v8;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v16 forKeyedSubscript:v5];
}

- (void)logRunOfContextualAction:(id)action
{
  v39[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  action = [actionCopy action];
  surface = [actionCopy surface];
  if (surface > 0x12)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E7B01520[surface];
  }

  v9 = v8;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"Unknown";
  }

  contentTypes = [actionCopy contentTypes];
  v12 = [contentTypes if_map:&__block_literal_global_14973];

  correspondingSystemActionType = [action correspondingSystemActionType];
  if (correspondingSystemActionType == 2)
  {
    v14 = [objc_alloc(getBMContextualActionParameterClass()) initWithType:@"WFNumberContentItem" metadata:&unk_1F29317B8];
    v38 = v14;
    v15 = &v38;
    goto LABEL_13;
  }

  if (correspondingSystemActionType == 1)
  {
    v14 = [objc_alloc(getBMContextualActionParameterClass()) initWithType:@"WFNumberContentItem" metadata:&unk_1F2931790];
    v39[0] = v14;
    v15 = v39;
LABEL_13:
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

    goto LABEL_15;
  }

  v16 = 0;
LABEL_15:
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v17 = getBMContextualActionEventClass_softClass;
  v37 = getBMContextualActionEventClass_softClass;
  if (!getBMContextualActionEventClass_softClass)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getBMContextualActionEventClass_block_invoke;
    v32 = &unk_1E7B02C60;
    v33 = &v34;
    __getBMContextualActionEventClass_block_invoke(&v29);
    v17 = v35[3];
  }

  v18 = v17;
  _Block_object_dispose(&v34, 8);
  v19 = [v17 alloc];
  identifier = [action identifier];
  displayString = [action displayString];
  v22 = [v19 initWithIdentifier:identifier appName:v10 actionName:displayString contents:v12 parameters:v16];

  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v23 = getBMStreamsClass_softClass;
  v37 = getBMStreamsClass_softClass;
  if (!getBMStreamsClass_softClass)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getBMStreamsClass_block_invoke;
    v32 = &unk_1E7B02C60;
    v33 = &v34;
    __getBMStreamsClass_block_invoke(&v29);
    v23 = v35[3];
  }

  v24 = v23;
  _Block_object_dispose(&v34, 8);
  contextualActions = [v23 contextualActions];
  source = [contextualActions source];
  [source sendEvent:v22];

  v27 = *MEMORY[0x1E69E9840];
}

id __69__VCVoiceShortcutClient_ContextualActions__logRunOfContextualAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = getBMContextualActionContentClass_softClass;
  v13 = getBMContextualActionContentClass_softClass;
  if (!getBMContextualActionContentClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getBMContextualActionContentClass_block_invoke;
    v9[3] = &unk_1E7B02C60;
    v9[4] = &v10;
    __getBMContextualActionContentClass_block_invoke(v9);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  v5 = [v3 alloc];
  v6 = [v2 identifier];
  v7 = [v5 initWithType:v6 metadata:MEMORY[0x1E695E0F8]];

  return v7;
}

- (id)filteredContextualActions:(id)actions forContext:(id)context byType:(unint64_t)type error:(id *)error
{
  v6 = WFLocallyFilterActions(context, actions);

  return v6;
}

- (void)filterContextualActions:(id)actions forContext:(id)context byType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v9 = WFLocallyFilterActions(context, actions);
  completionCopy[2](completionCopy, v9, 0);
}

- (id)contextualActionsForContext:(id)context error:(id *)error
{
  surface = [context surface];

  return WFStaticContextualActionDefinitionsForSurface(surface);
}

- (void)getContextualActionsForContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v6 = WFStaticContextualActionDefinitionsForSurface([context surface]);
  completionCopy[2](completionCopy, v6, 0);
}

- (void)generateSingleUseTokenForWorkflowIdentifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (identifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_ShareSheet.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"workflowIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_ShareSheet.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[VCVoiceShortcutClient(ShareSheet) generateSingleUseTokenForWorkflowIdentifier:completion:]";
    v20 = 2114;
    v21 = identifierCopy;
    _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEBUG, "%s Generating a single-use token for workflow identifier %{public}@", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__VCVoiceShortcutClient_ShareSheet__generateSingleUseTokenForWorkflowIdentifier_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v17 = v9;
  v11 = v9;
  v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v16];
  [v12 generateSingleUseTokenForWorkflowIdentifier:identifierCopy completion:v11];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)shareSheetWorkflowsForExtensionMatchingDictionaries:(id)dictionaries resolvedActivityItems:(id)items hostBundleIdentifier:(id)identifier iconSize:(CGSize)size iconScale:(double)scale error:(id *)error
{
  height = size.height;
  width = size.width;
  v64 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  itemsCopy = items;
  identifierCopy = identifier;
  v18 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[VCVoiceShortcutClient(ShareSheet) shareSheetWorkflowsForExtensionMatchingDictionaries:resolvedActivityItems:hostBundleIdentifier:iconSize:iconScale:error:]";
    *&buf[12] = 2114;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2114;
    v61 = dictionariesCopy;
    _os_log_impl(&dword_1B1DE3000, v18, OS_LOG_TYPE_DEBUG, "%s Loading share sheet shortcuts for %{public}@ with extension matching dictionaries %{public}@", buf, 0x20u);
  }

  systemSurfaceStatus = [(VCVoiceShortcutClient *)self systemSurfaceStatus];
  v20 = [systemSurfaceStatus statusForSystemSurface:0];

  if (v20 == 2)
  {
    v21 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[VCVoiceShortcutClient(ShareSheet) shareSheetWorkflowsForExtensionMatchingDictionaries:resolvedActivityItems:hostBundleIdentifier:iconSize:iconScale:error:]";
      v22 = "%s User has share sheet shortcuts. Proceeding with an XPC query to siriactionsd.";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v20 != 1)
  {
    if (v20)
    {
LABEL_15:
      xpcQueue = [(VCVoiceShortcutClient *)self xpcQueue];
      v26 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, xpcQueue);

      v27 = dispatch_time(0, 4000000000);
      dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __157__VCVoiceShortcutClient_ShareSheet__shareSheetWorkflowsForExtensionMatchingDictionaries_resolvedActivityItems_hostBundleIdentifier_iconSize_iconScale_error___block_invoke;
      handler[3] = &unk_1E7B02180;
      v23 = v26;
      v54 = v23;
      selfCopy = self;
      dispatch_source_set_event_handler(v23, handler);
      dispatch_resume(v23);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v61 = __Block_byref_object_copy__16089;
      v62 = __Block_byref_object_dispose__16090;
      v63 = 0;
      v47 = 0;
      v48 = &v47;
      v49 = 0x3032000000;
      v50 = __Block_byref_object_copy__16089;
      v51 = __Block_byref_object_dispose__16090;
      v52 = 0;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __157__VCVoiceShortcutClient_ShareSheet__shareSheetWorkflowsForExtensionMatchingDictionaries_resolvedActivityItems_hostBundleIdentifier_iconSize_iconScale_error___block_invoke_53;
      v46[3] = &unk_1E7B028A0;
      v46[4] = buf;
      v28 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v46];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __157__VCVoiceShortcutClient_ShareSheet__shareSheetWorkflowsForExtensionMatchingDictionaries_resolvedActivityItems_hostBundleIdentifier_iconSize_iconScale_error___block_invoke_2;
      v45[3] = &unk_1E7B020B8;
      v45[4] = &v47;
      v45[5] = buf;
      [v28 getShareSheetWorkflowsForExtensionMatchingDictionaries:dictionariesCopy hostBundleIdentifier:identifierCopy completion:v45];
      if (v48[5])
      {
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __157__VCVoiceShortcutClient_ShareSheet__shareSheetWorkflowsForExtensionMatchingDictionaries_resolvedActivityItems_hostBundleIdentifier_iconSize_iconScale_error___block_invoke_56;
        aBlock[3] = &__block_descriptor_40_e5_v8__0l;
        aBlock[4] = DeviceRGB;
        v30 = _Block_copy(aBlock);
        v31 = [WFRemoteImageDrawingContext alloc];
        v32 = -[WFRemoteImageDrawingContext initWithImageCount:singleImageSize:scale:colorSpace:](v31, "initWithImageCount:singleImageSize:scale:colorSpace:", [v48[5] count], DeviceRGB, width, height, scale);
        if (v32)
        {
          v33 = [v48[5] if_map:&__block_literal_global_16093];
          [v28 drawGlyphs:v33 withBackgroundColorValues:0 padding:v32 intoContext:&__block_literal_global_62_16094 completion:0.0];
          v34 = v48[5];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __157__VCVoiceShortcutClient_ShareSheet__shareSheetWorkflowsForExtensionMatchingDictionaries_resolvedActivityItems_hostBundleIdentifier_iconSize_iconScale_error___block_invoke_3;
          v42[3] = &unk_1E7B02100;
          v43 = v32;
          [v34 enumerateObjectsUsingBlock:v42];
          v35 = getWFVoiceShortcutClientLogObject();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v36 = [v48[5] count];
            *v56 = 136315394;
            v57 = "[VCVoiceShortcutClient(ShareSheet) shareSheetWorkflowsForExtensionMatchingDictionaries:resolvedActivityItems:hostBundleIdentifier:iconSize:iconScale:error:]";
            v58 = 2050;
            v59 = v36;
            _os_log_impl(&dword_1B1DE3000, v35, OS_LOG_TYPE_DEBUG, "%s Loading share sheet shortcuts completed with %{public}lu shortcuts", v56, 0x16u);
          }

          dispatch_source_cancel(v23);
          v24 = v48[5];
        }

        else
        {
          v39 = getWFVoiceShortcutClientLogObject();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *v56 = 136315138;
            v57 = "[VCVoiceShortcutClient(ShareSheet) shareSheetWorkflowsForExtensionMatchingDictionaries:resolvedActivityItems:hostBundleIdentifier:iconSize:iconScale:error:]";
            _os_log_impl(&dword_1B1DE3000, v39, OS_LOG_TYPE_ERROR, "%s Could not create remote image drawing context for widget workflow glyphs", v56, 0xCu);
          }

          v24 = v48[5];
        }

        v30[2](v30);
      }

      else
      {
        v37 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = *(*&buf[8] + 40);
          *v56 = 136315394;
          v57 = "[VCVoiceShortcutClient(ShareSheet) shareSheetWorkflowsForExtensionMatchingDictionaries:resolvedActivityItems:hostBundleIdentifier:iconSize:iconScale:error:]";
          v58 = 2114;
          v59 = v38;
          _os_log_impl(&dword_1B1DE3000, v37, OS_LOG_TYPE_ERROR, "%s Could not fetch share sheet shortcuts: %{public}@", v56, 0x16u);
        }

        v24 = 0;
        if (error)
        {
          *error = *(*&buf[8] + 40);
        }
      }

      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_29;
    }

    v21 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[VCVoiceShortcutClient(ShareSheet) shareSheetWorkflowsForExtensionMatchingDictionaries:resolvedActivityItems:hostBundleIdentifier:iconSize:iconScale:error:]";
      v22 = "%s Unable to determine in-client whether or not there are share sheet shortcuts to show. Proceeding with an XPC query to siriactionsd";
LABEL_13:
      _os_log_impl(&dword_1B1DE3000, v21, OS_LOG_TYPE_INFO, v22, buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v23 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[VCVoiceShortcutClient(ShareSheet) shareSheetWorkflowsForExtensionMatchingDictionaries:resolvedActivityItems:hostBundleIdentifier:iconSize:iconScale:error:]";
    _os_log_impl(&dword_1B1DE3000, v23, OS_LOG_TYPE_INFO, "%s User has no share sheet shortcuts present, returning early in share sheet shortcuts request", buf, 0xCu);
  }

  v24 = MEMORY[0x1E695E0F0];
LABEL_29:

  v40 = *MEMORY[0x1E69E9840];

  return v24;
}

void __157__VCVoiceShortcutClient_ShareSheet__shareSheetWorkflowsForExtensionMatchingDictionaries_resolvedActivityItems_hostBundleIdentifier_iconSize_iconScale_error___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  dispatch_source_cancel(*(a1 + 32));
  v2 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315138;
    v6 = "[VCVoiceShortcutClient(ShareSheet) shareSheetWorkflowsForExtensionMatchingDictionaries:resolvedActivityItems:hostBundleIdentifier:iconSize:iconScale:error:]_block_invoke";
    _os_log_impl(&dword_1B1DE3000, v2, OS_LOG_TYPE_FAULT, "%s Loading share sheet shortcuts timed out", &v5, 0xCu);
  }

  v3 = [*(a1 + 40) xpcConnection];
  [v3 invalidate];

  v4 = *MEMORY[0x1E69E9840];
}

void __157__VCVoiceShortcutClient_ShareSheet__shareSheetWorkflowsForExtensionMatchingDictionaries_resolvedActivityItems_hostBundleIdentifier_iconSize_iconScale_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __157__VCVoiceShortcutClient_ShareSheet__shareSheetWorkflowsForExtensionMatchingDictionaries_resolvedActivityItems_hostBundleIdentifier_iconSize_iconScale_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) imageAtIndex:a3];
  [*(a1 + 32) scale];
  [v7 setIconImage:v6 scale:?];
  objc_autoreleasePoolPop(v5);
}

uint64_t __157__VCVoiceShortcutClient_ShareSheet__shareSheetWorkflowsForExtensionMatchingDictionaries_resolvedActivityItems_hostBundleIdentifier_iconSize_iconScale_error___block_invoke_57(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 glyphCharacter];

  return [v2 numberWithUnsignedShort:v3];
}

- (void)getShortcutSuggestionsForAllAppsWithLimit:(unint64_t)limit completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_Suggestions.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v8 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[VCVoiceShortcutClient(Suggestions) getShortcutSuggestionsForAllAppsWithLimit:completion:]";
    _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_DEBUG, "%s Getting shortcut suggestions for all apps", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__VCVoiceShortcutClient_Suggestions__getShortcutSuggestionsForAllAppsWithLimit_completion___block_invoke;
  v13[3] = &unk_1E7B02940;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v13];
  [v10 getShortcutSuggestionsForAllAppsWithLimit:limit completion:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)getShortcutSuggestionsForAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (identifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_Suggestions.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_Suggestions.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[VCVoiceShortcutClient(Suggestions) getShortcutSuggestionsForAppWithBundleIdentifier:completion:]";
    v20 = 2114;
    v21 = identifierCopy;
    _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEBUG, "%s Getting shortcut suggestions for app with bundleID: %{public}@", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__VCVoiceShortcutClient_Suggestions__getShortcutSuggestionsForAppWithBundleIdentifier_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v17 = v9;
  v11 = v9;
  v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v16];
  [v12 getShortcutSuggestionsForAppWithBundleIdentifier:identifierCopy completion:v11];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setShortcutSuggestions:(id)suggestions forAppWithBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  if (!suggestionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient_Suggestions.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"shortcutSuggestions"}];
  }

  v9 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "[VCVoiceShortcutClient(Suggestions) setShortcutSuggestions:forAppWithBundleIdentifier:]";
    v17 = 2112;
    v18 = suggestionsCopy;
    _os_log_impl(&dword_1B1DE3000, v9, OS_LOG_TYPE_DEBUG, "%s Setting shortcut suggestions: %@", buf, 0x16u);
  }

  if ([suggestionsCopy count] >= 0x65)
  {
    v10 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[VCVoiceShortcutClient(Suggestions) setShortcutSuggestions:forAppWithBundleIdentifier:]";
      v17 = 2050;
      v18 = 100;
      _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEFAULT, "%s Limiting to the first %{public}lu suggestions", buf, 0x16u);
    }

    v11 = [suggestionsCopy subarrayWithRange:{0, 100}];

    suggestionsCopy = v11;
  }

  if (identifierCopy)
  {
    v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:&__block_literal_global_20075];
    [v12 setShortcutSuggestions:suggestionsCopy forAppWithBundleIdentifier:identifierCopy];
  }

  else
  {
    v12 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[VCVoiceShortcutClient(Suggestions) setShortcutSuggestions:forAppWithBundleIdentifier:]";
      _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_ERROR, "%s Failed to set shortcut suggestions because of invalid bundle identifier", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)dismissToastedSessionKitSessionsWithReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__VCVoiceShortcutClient_dismissToastedSessionKitSessionsWithReason_completion___block_invoke;
  v10[3] = &unk_1E7B02940;
  v11 = completionCopy;
  v7 = completionCopy;
  reasonCopy = reason;
  v9 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v10];
  [v9 dismissToastedSessionKitSessionsWithReason:reasonCopy completion:v7];
}

- (void)toastSessionKitSessionWithIdentifier:(id)identifier forDuration:(id)duration completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__VCVoiceShortcutClient_toastSessionKitSessionWithIdentifier_forDuration_completion___block_invoke;
  v13[3] = &unk_1E7B02940;
  v14 = completionCopy;
  v9 = completionCopy;
  durationCopy = duration;
  identifierCopy = identifier;
  v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v13];
  [v12 toastSessionKitSessionWithIdentifier:identifierCopy forDuration:durationCopy completion:v9];
}

- (void)postNotificationAboutFailure:(id)failure inWorkflow:(id)workflow dialogAttribution:(id)attribution runningContext:(id)context
{
  contextCopy = context;
  attributionCopy = attribution;
  workflowCopy = workflow;
  failureCopy = failure;
  v15 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:&__block_literal_global_194_20934];
  v14 = WFEncodableError(failureCopy);

  [v15 postNotificationAboutFailure:v14 inWorkflow:workflowCopy dialogAttribution:attributionCopy runningContext:contextCopy];
}

- (void)postNotificationWithRequest:(id)request presentationMode:(unint64_t)mode runningContext:(id)context
{
  contextCopy = context;
  requestCopy = request;
  v10 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:&__block_literal_global_192];
  [v10 postNotificationWithRequest:requestCopy presentationMode:mode runningContext:contextCopy];
}

- (id)fetchURLForFPItem:(id)item error:(id *)error
{
  itemCopy = item;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__20936;
  v22 = __Block_byref_object_dispose__20937;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__20936;
  v16 = __Block_byref_object_dispose__20937;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__VCVoiceShortcutClient_fetchURLForFPItem_error___block_invoke;
  v11[3] = &unk_1E7B028A0;
  v11[4] = &v18;
  v7 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__VCVoiceShortcutClient_fetchURLForFPItem_error___block_invoke_2;
  v10[3] = &unk_1E7B02BF0;
  v10[4] = &v18;
  v10[5] = &v12;
  [v7 fetchURLForFPItem:itemCopy completion:v10];

  if (error)
  {
    *error = v19[5];
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __49__VCVoiceShortcutClient_fetchURLForFPItem_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)createBookmarkWithBookmarkableString:(id)string path:(id)path workflowID:(id)d error:(id *)error
{
  stringCopy = string;
  pathCopy = path;
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__20936;
  v28 = __Block_byref_object_dispose__20937;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__20936;
  v22 = __Block_byref_object_dispose__20937;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__VCVoiceShortcutClient_createBookmarkWithBookmarkableString_path_workflowID_error___block_invoke;
  v17[3] = &unk_1E7B028A0;
  v17[4] = &v24;
  v13 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__VCVoiceShortcutClient_createBookmarkWithBookmarkableString_path_workflowID_error___block_invoke_2;
  v16[3] = &unk_1E7B02C18;
  v16[4] = &v18;
  v16[5] = &v24;
  [v13 createBookmarkWithBookmarkableString:stringCopy path:pathCopy workflowID:dCopy completion:v16];

  if (error)
  {
    *error = v25[5];
  }

  v14 = v19[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __84__VCVoiceShortcutClient_createBookmarkWithBookmarkableString_path_workflowID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)createBookmarkWithURL:(id)l workflowID:(id)d error:(id *)error
{
  lCopy = l;
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__20936;
  v25 = __Block_byref_object_dispose__20937;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__20936;
  v19 = __Block_byref_object_dispose__20937;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__VCVoiceShortcutClient_createBookmarkWithURL_workflowID_error___block_invoke;
  v14[3] = &unk_1E7B028A0;
  v14[4] = &v21;
  v10 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__VCVoiceShortcutClient_createBookmarkWithURL_workflowID_error___block_invoke_2;
  v13[3] = &unk_1E7B02C18;
  v13[4] = &v15;
  v13[5] = &v21;
  [v10 createBookmarkWithURL:lCopy workflowID:dCopy completion:v13];

  if (error)
  {
    *error = v22[5];
  }

  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __64__VCVoiceShortcutClient_createBookmarkWithURL_workflowID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)resolveCrossDeviceItemID:(id)d error:(id *)error
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__20936;
  v22 = __Block_byref_object_dispose__20937;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__20936;
  v16 = __Block_byref_object_dispose__20937;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__VCVoiceShortcutClient_resolveCrossDeviceItemID_error___block_invoke;
  v11[3] = &unk_1E7B028A0;
  v11[4] = &v18;
  v7 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__VCVoiceShortcutClient_resolveCrossDeviceItemID_error___block_invoke_2;
  v10[3] = &unk_1E7B02BF0;
  v10[4] = &v12;
  v10[5] = &v18;
  [v7 resolveCrossDeviceItemID:dCopy completion:v10];

  if (error)
  {
    *error = v19[5];
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __56__VCVoiceShortcutClient_resolveCrossDeviceItemID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)resolveBookmarkData:(id)data updatedData:(id *)updatedData error:(id *)error
{
  dataCopy = data;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__20936;
  v30 = __Block_byref_object_dispose__20937;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__20936;
  v24 = __Block_byref_object_dispose__20937;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__20936;
  v18 = __Block_byref_object_dispose__20937;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__VCVoiceShortcutClient_resolveBookmarkData_updatedData_error___block_invoke;
  v13[3] = &unk_1E7B028A0;
  v13[4] = &v26;
  v9 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__VCVoiceShortcutClient_resolveBookmarkData_updatedData_error___block_invoke_2;
  v12[3] = &unk_1E7B02BC8;
  v12[4] = &v26;
  v12[5] = &v14;
  v12[6] = &v20;
  [v9 resolveBookmarkData:dataCopy completion:v12];

  if (error)
  {
    *error = v27[5];
  }

  if (updatedData)
  {
    *updatedData = v15[5];
  }

  v10 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v10;
}

void __63__VCVoiceShortcutClient_resolveBookmarkData_updatedData_error___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  objc_storeStrong((*(a1[4] + 8) + 40), a4);
  v14 = a4;
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
  v11 = v8;

  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
}

- (id)resolveFilePath:(id)path workflowID:(id)d error:(id *)error
{
  pathCopy = path;
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__20936;
  v25 = __Block_byref_object_dispose__20937;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__20936;
  v19 = __Block_byref_object_dispose__20937;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__VCVoiceShortcutClient_resolveFilePath_workflowID_error___block_invoke;
  v14[3] = &unk_1E7B028A0;
  v14[4] = &v21;
  v10 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__VCVoiceShortcutClient_resolveFilePath_workflowID_error___block_invoke_2;
  v13[3] = &unk_1E7B02BA0;
  v13[4] = &v21;
  v13[5] = &v15;
  [v10 resolveFilePath:pathCopy workflowID:dCopy completion:v13];

  if (error)
  {
    *error = v22[5];
  }

  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __58__VCVoiceShortcutClient_resolveFilePath_workflowID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)showSingleStepCompletionForWebClip:(id)clip completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__VCVoiceShortcutClient_showSingleStepCompletionForWebClip_completion___block_invoke;
  v10[3] = &unk_1E7B02940;
  v11 = completionCopy;
  v7 = completionCopy;
  clipCopy = clip;
  v9 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v10];
  [v9 showSingleStepCompletionForWebClip:clipCopy completion:v7];
}

- (id)drawGlyphs:(id)glyphs atSize:(CGSize)size withBackgroundColorValues:(id)values padding:(double)padding error:(id *)error
{
  height = size.height;
  width = size.width;
  v36 = *MEMORY[0x1E69E9840];
  glyphsCopy = glyphs;
  valuesCopy = values;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__20936;
  v30 = __Block_byref_object_dispose__20937;
  v31 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __83__VCVoiceShortcutClient_drawGlyphs_atSize_withBackgroundColorValues_padding_error___block_invoke;
  v25[3] = &unk_1E7B028A0;
  v25[4] = &v26;
  v15 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v25];
  if (v27[5])
  {
    v16 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v27[5];
      *buf = 136315394;
      v33 = "[VCVoiceShortcutClient drawGlyphs:atSize:withBackgroundColorValues:padding:error:]";
      v34 = 2114;
      v35 = v17;
      _os_log_impl(&dword_1B1DE3000, v16, OS_LOG_TYPE_ERROR, "%s Could not fetch first unsorted shortcut: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v18 = 0;
      *error = v27[5];
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (![glyphsCopy count])
  {
LABEL_11:
    v18 = 0;
    goto LABEL_16;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v20 = -[WFRemoteImageDrawingContext initWithImageCount:singleImageSize:scale:colorSpace:]([WFRemoteImageDrawingContext alloc], "initWithImageCount:singleImageSize:scale:colorSpace:", [glyphsCopy count], DeviceRGB, width, height, 0.0);
  CGColorSpaceRelease(DeviceRGB);
  if (v20)
  {
    [v15 drawGlyphs:glyphsCopy withBackgroundColorValues:valuesCopy padding:v20 intoContext:&__block_literal_global_185_20941 completion:padding];
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i < [glyphsCopy count]; ++i)
    {
      [v18 addObject:{-[WFRemoteImageDrawingContext imageAtIndex:](v20, "imageAtIndex:", i)}];
    }
  }

  else
  {
    v22 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v33 = "[VCVoiceShortcutClient drawGlyphs:atSize:withBackgroundColorValues:padding:error:]";
      _os_log_impl(&dword_1B1DE3000, v22, OS_LOG_TYPE_FAULT, "%s Couldn't create image drawing context on the client side. Not drawing glyphs. See logs from WFRemoteImageDrawingContext", buf, 0xCu);
    }

    v18 = 0;
  }

LABEL_16:
  _Block_object_dispose(&v26, 8);

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

void __49__VCVoiceShortcutClient_unsafeSetupXPCConnection__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[VCVoiceShortcutClient unsafeSetupXPCConnection]_block_invoke";
    _os_log_impl(&dword_1B1DE3000, v2, OS_LOG_TYPE_ERROR, "%s Client connection to VCVoiceShortcut XPC server interrupted", &v4, 0xCu);
  }

  [WeakRetained handleXPCConnectionInterruption];
  v3 = *MEMORY[0x1E69E9840];
}

void __49__VCVoiceShortcutClient_unsafeSetupXPCConnection__block_invoke_181(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[VCVoiceShortcutClient unsafeSetupXPCConnection]_block_invoke";
    _os_log_impl(&dword_1B1DE3000, v2, OS_LOG_TYPE_ERROR, "%s Client connection invalidated to VoiceShortcut server XPC interface", &v4, 0xCu);
  }

  [WeakRetained handleXPCConnectionInvalidation];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)handleXPCConnectionInvalidation
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__20936;
  v18 = __Block_byref_object_dispose__20937;
  v19 = 0;
  internalStateQueue = self->_internalStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCVoiceShortcutClient_handleXPCConnectionInvalidation__block_invoke;
  block[3] = &unk_1E7B02B78;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(internalStateQueue, block);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v15[5];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v20 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v20 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v14, 8);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __56__VCVoiceShortcutClient_handleXPCConnectionInvalidation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setXpcConnection:0];
  v2 = [*(a1 + 32) unsafePopConnectionErrorHandlers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)handleXPCConnectionInterruption
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__20936;
  v18 = __Block_byref_object_dispose__20937;
  v19 = 0;
  internalStateQueue = self->_internalStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCVoiceShortcutClient_handleXPCConnectionInterruption__block_invoke;
  block[3] = &unk_1E7B02B78;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(internalStateQueue, block);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v15[5];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v20 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v20 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v14, 8);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __56__VCVoiceShortcutClient_handleXPCConnectionInterruption__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unsafePopConnectionErrorHandlers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)unsafePopConnectionErrorHandlers
{
  errorHandlers = [(VCVoiceShortcutClient *)self errorHandlers];
  allObjects = [errorHandlers allObjects];

  errorHandlers2 = [(VCVoiceShortcutClient *)self errorHandlers];
  [errorHandlers2 removeAllObjects];

  return allObjects;
}

- (void)callErrorHandlerIfNeeded:(id)needed withError:(id)error
{
  neededCopy = needed;
  errorCopy = error;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  internalStateQueue = self->_internalStateQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__VCVoiceShortcutClient_callErrorHandlerIfNeeded_withError___block_invoke;
  v11[3] = &unk_1E7B02B50;
  v11[4] = self;
  v9 = neededCopy;
  v13 = v9;
  v10 = errorCopy;
  v12 = v10;
  v14 = &v15;
  dispatch_sync(internalStateQueue, v11);
  if (*(v16 + 24) == 1)
  {
    (*(v9 + 2))(v9, v10);
  }

  _Block_object_dispose(&v15, 8);
}

void __60__VCVoiceShortcutClient_callErrorHandlerIfNeeded_withError___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) errorHandlers];
  v3 = _Block_copy(*(a1 + 48));
  v4 = [v2 containsObject:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) errorHandlers];
    v6 = _Block_copy(*(a1 + 48));
    [v5 removeObject:v6];

    v7 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v8 xpcConnection];
      v10 = *(a1 + 40);
      v12 = 136315906;
      v13 = "[VCVoiceShortcutClient callErrorHandlerIfNeeded:withError:]_block_invoke";
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_1B1DE3000, v7, OS_LOG_TYPE_ERROR, "%s %{public}@ received error from connection %{public}@ during remote call: %{public}@", &v12, 0x2Au);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)asynchronousRemoteDataStoreWithErrorHandler:(id)handler synchronous:(BOOL)synchronous
{
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__20936;
  v19 = __Block_byref_object_dispose__20937;
  v20 = 0;
  internalStateQueue = self->_internalStateQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__VCVoiceShortcutClient_asynchronousRemoteDataStoreWithErrorHandler_synchronous___block_invoke;
  v11[3] = &unk_1E7B02B28;
  v11[4] = self;
  v12 = handlerCopy;
  v13 = &v15;
  synchronousCopy = synchronous;
  v8 = handlerCopy;
  dispatch_sync(internalStateQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __81__VCVoiceShortcutClient_asynchronousRemoteDataStoreWithErrorHandler_synchronous___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = [*(a1 + 32) errorHandlers];
  v4 = _Block_copy(v2);
  [v3 addObject:v4];

  v5 = [*(a1 + 32) xpcConnection];
  if (v5)
  {
  }

  else
  {
    v6 = [*(a1 + 32) creationBlock];

    if (v6)
    {
      v7 = [*(a1 + 32) creationBlock];
      v8 = v7[2]();
      [*(a1 + 32) setXpcConnection:v8];

      [*(a1 + 32) unsafeSetupXPCConnection];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__VCVoiceShortcutClient_asynchronousRemoteDataStoreWithErrorHandler_synchronous___block_invoke_2;
  aBlock[3] = &unk_1E7B02B00;
  aBlock[4] = *(a1 + 32);
  v9 = v2;
  v24 = v9;
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 56);
  v12 = [*(a1 + 32) xpcConnection];
  v13 = v12;
  if (v11 == 1)
  {
    [v12 synchronousRemoteObjectProxyWithErrorHandler:v10];
  }

  else
  {
    [v12 remoteObjectProxyWithErrorHandler:v10];
  }
  v14 = ;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v14);

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) setXpcConnection:0];
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__20936;
    v21[4] = __Block_byref_object_dispose__20937;
    v22 = [*(a1 + 32) unsafePopConnectionErrorHandlers];
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    v16 = *(*(a1 + 32) + 40);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81__VCVoiceShortcutClient_asynchronousRemoteDataStoreWithErrorHandler_synchronous___block_invoke_3;
    v18[3] = &unk_1E7B02B78;
    v19 = v15;
    v20 = v21;
    v17 = v15;
    dispatch_async(v16, v18);

    _Block_object_dispose(v21, 8);
  }
}

void __81__VCVoiceShortcutClient_asynchronousRemoteDataStoreWithErrorHandler_synchronous___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 32);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setPerWorkflowStateData:(id)data forSmartPromptWithActionUUID:(id)d reference:(id)reference completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__VCVoiceShortcutClient_setPerWorkflowStateData_forSmartPromptWithActionUUID_reference_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v17 = completionCopy;
  v11 = completionCopy;
  referenceCopy = reference;
  dCopy = d;
  dataCopy = data;
  v15 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v16];
  [v15 setPerWorkflowStateData:dataCopy forSmartPromptWithActionUUID:dCopy reference:referenceCopy completion:v11];
}

void __99__VCVoiceShortcutClient_setPerWorkflowStateData_forSmartPromptWithActionUUID_reference_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[VCVoiceShortcutClient setPerWorkflowStateData:forSmartPromptWithActionUUID:reference:completion:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_ERROR, "%s Error occured with remote connection: %{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (id)getValueForDescriptor:(id)descriptor resultClass:(Class)class error:(id *)error
{
  descriptorCopy = descriptor;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__20936;
  v26 = __Block_byref_object_dispose__20937;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__20936;
  v20 = __Block_byref_object_dispose__20937;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__VCVoiceShortcutClient_getValueForDescriptor_resultClass_error___block_invoke;
  v15[3] = &unk_1E7B028A0;
  v15[4] = &v22;
  v9 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v15];
  v10 = NSStringFromClass(class);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__VCVoiceShortcutClient_getValueForDescriptor_resultClass_error___block_invoke_2;
  v14[3] = &unk_1E7B02AD8;
  v14[4] = &v16;
  v14[5] = &v22;
  [v9 getValueForDescriptor:descriptorCopy resultClassName:v10 completion:v14];

  v11 = v23[5];
  if (v11)
  {
    v12 = 0;
    if (error)
    {
      *error = v11;
    }
  }

  else
  {
    v12 = v17[5];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v12;
}

void __65__VCVoiceShortcutClient_getValueForDescriptor_resultClass_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)getValueForDescriptor:(id)descriptor resultClass:(Class)class completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__VCVoiceShortcutClient_getValueForDescriptor_resultClass_completion___block_invoke;
  v13[3] = &unk_1E7B02940;
  v14 = completionCopy;
  v9 = completionCopy;
  descriptorCopy = descriptor;
  v11 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v13];
  v12 = NSStringFromClass(class);
  [v11 getValueForDescriptor:descriptorCopy resultClassName:v12 completion:v9];
}

- (id)getResultsForQuery:(id)query resultClass:(Class)class resultState:(id *)state error:(id *)error
{
  queryCopy = query;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__20936;
  v35 = __Block_byref_object_dispose__20937;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__20936;
  v29 = __Block_byref_object_dispose__20937;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__20936;
  v23 = __Block_byref_object_dispose__20937;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__VCVoiceShortcutClient_getResultsForQuery_resultClass_resultState_error___block_invoke;
  v18[3] = &unk_1E7B028A0;
  v18[4] = &v31;
  v11 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v18];
  v12 = NSStringFromClass(class);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__VCVoiceShortcutClient_getResultsForQuery_resultClass_resultState_error___block_invoke_2;
  v17[3] = &unk_1E7B02AB0;
  v17[4] = &v19;
  v17[5] = &v25;
  v17[6] = &v31;
  [v11 getResultsForQuery:queryCopy resultClassName:v12 completion:v17];

  v13 = v32[5];
  if (v13)
  {
    v14 = 0;
    if (error)
    {
      *error = v13;
    }
  }

  else
  {
    if (state)
    {
      v15 = v26[5];
      if (v15)
      {
        *state = v15;
      }
    }

    v14 = v20[5];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);

  return v14;
}

void __74__VCVoiceShortcutClient_getResultsForQuery_resultClass_resultState_error___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

- (void)getResultsForQuery:(id)query resultClass:(Class)class completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__VCVoiceShortcutClient_getResultsForQuery_resultClass_completion___block_invoke;
  v13[3] = &unk_1E7B02940;
  v14 = completionCopy;
  v9 = completionCopy;
  queryCopy = query;
  v11 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v13];
  v12 = NSStringFromClass(class);
  [v11 getResultsForQuery:queryCopy resultClassName:v12 completion:v9];
}

- (id)firstUnsortedWorkflowWithBackgroundColorValue:(id *)value error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__20936;
  v31 = __Block_byref_object_dispose__20937;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__20936;
  v25 = __Block_byref_object_dispose__20937;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__20936;
  v19 = __Block_byref_object_dispose__20937;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__VCVoiceShortcutClient_firstUnsortedWorkflowWithBackgroundColorValue_error___block_invoke;
  v14[3] = &unk_1E7B028A0;
  v14[4] = &v15;
  v6 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__VCVoiceShortcutClient_firstUnsortedWorkflowWithBackgroundColorValue_error___block_invoke_2;
  v13[3] = &unk_1E7B02A88;
  v13[4] = &v27;
  v13[5] = &v21;
  v13[6] = &v15;
  [v6 getFirstUnsortedWorkflowWithCompletion:v13];
  v7 = v22[5];
  if (v7)
  {
    *value = v7;
  }

  if (v16[5])
  {
    v8 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v16[5];
      *buf = 136315394;
      v34 = "[VCVoiceShortcutClient firstUnsortedWorkflowWithBackgroundColorValue:error:]";
      v35 = 2114;
      v36 = v9;
      _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_ERROR, "%s Could not fetch first unsorted shortcut: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    if (error)
    {
      *error = v16[5];
    }
  }

  else
  {
    v10 = v28[5];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __77__VCVoiceShortcutClient_firstUnsortedWorkflowWithBackgroundColorValue_error___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

- (void)getWidgetWorkflowsInCollectionWithIdentifier:(id)identifier limit:(unint64_t)limit completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = [identifierCopy length];
  v9 = [WFWorkflowQuery alloc];
  if (v8)
  {
    v10 = [(WFWorkflowQuery *)v9 initWithFolderIdentifier:identifierCopy];
  }

  else
  {
    v10 = [(WFWorkflowQuery *)v9 initWithLocation:0];
  }

  v11 = v10;
  [(WFWorkflowQuery *)v10 setResultsLimit:limit];
  v12 = objc_opt_class();
  +[VCWidgetWorkflow smallGlyphSize];
  [WFObservableArrayResult getResultWithQuery:v11 valueType:v12 glyphSize:completionCopy completionHandler:?];
}

- (void)getWidgetWorkflowWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = [[WFDatabaseObjectDescriptor alloc] initWithIdentifier:identifierCopy objectType:0];

  v7 = objc_opt_class();
  +[VCWidgetWorkflow largeGlyphSize];
  [WFObservableObjectResult getResultWithDescriptor:v8 valueType:v7 glyphSize:completionCopy completionHandler:?];
}

- (id)visibleShortcutsWithError:(id *)error
{
  v4 = [[WFWorkflowQuery alloc] initWithLocation:0];
  v5 = [WFObservableArrayResult getResultWithQuery:v4 valueType:objc_opt_class() glyphSize:error error:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  return v5;
}

- (id)shortcutsInCollectionWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = [identifierCopy length];
  v7 = [WFWorkflowQuery alloc];
  if (v6)
  {
    v8 = [(WFWorkflowQuery *)v7 initWithFolderIdentifier:identifierCopy];
  }

  else
  {
    v8 = [(WFWorkflowQuery *)v7 initWithLocation:1];
  }

  v9 = v8;
  v10 = [WFObservableArrayResult getResultWithQuery:v8 valueType:objc_opt_class() glyphSize:error error:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  return v10;
}

- (id)shortcutWithIdentifier:(id)identifier glyphSize:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  v9 = [[WFDatabaseObjectDescriptor alloc] initWithIdentifier:identifierCopy objectType:0];

  height = [WFObservableObjectResult getResultWithDescriptor:v9 valueType:objc_opt_class() glyphSize:error error:width, height];

  return height;
}

- (id)foldersWithError:(id *)error
{
  v4 = objc_opt_new();
  v5 = [WFObservableArrayResult getResultWithQuery:v4 valueType:objc_opt_class() glyphSize:error error:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  return v5;
}

- (void)sendAceCommandDictionary:(id)dictionary completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__VCVoiceShortcutClient_sendAceCommandDictionary_completion___block_invoke;
  v10[3] = &unk_1E7B02940;
  v11 = completionCopy;
  v7 = completionCopy;
  dictionaryCopy = dictionary;
  v9 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v10];
  [v9 sendAceCommandDictionary:dictionaryCopy completion:v7];
}

- (void)importShortcutWithRecordData:(id)data name:(id)name shortcutSource:(id)source completion:(id)completion
{
  dataCopy = data;
  nameCopy = name;
  sourceCopy = source;
  completionCopy = completion;
  v15 = completionCopy;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:415 description:{@"Invalid parameter not satisfying: %@", @"workflowRecordData"}];

    if (v15)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__VCVoiceShortcutClient_importShortcutWithRecordData_name_shortcutSource_completion___block_invoke;
  v20[3] = &unk_1E7B02940;
  v21 = v15;
  v16 = v15;
  v17 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v20];
  [v17 createShortcutWithRecordData:dataCopy name:nameCopy shortcutSource:sourceCopy completion:v16];
}

- (void)importSharedShortcutFromURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__VCVoiceShortcutClient_importSharedShortcutFromURL_completion___block_invoke;
  v8[3] = &unk_1E7B02A60;
  v9 = completionCopy;
  v7 = completionCopy;
  [(VCVoiceShortcutClient *)self importSharedShortcutFromURL:l withName:0 shortcutSource:0 completion:v8];
}

- (void)importSharedShortcutFromURL:(id)l withName:(id)name shortcutSource:(id)source completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  nameCopy = name;
  sourceCopy = source;
  completionCopy = completion;
  v15 = completionCopy;
  if (lCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:362 description:{@"Invalid parameter not satisfying: %@", @"URL"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v16 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[VCVoiceShortcutClient importSharedShortcutFromURL:withName:shortcutSource:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = lCopy;
    _os_log_impl(&dword_1B1DE3000, v16, OS_LOG_TYPE_DEBUG, "%s Importing shared shortcut at URL %@", buf, 0x16u);
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v17 = getWFGallerySessionManagerClass_softClass;
  v43 = getWFGallerySessionManagerClass_softClass;
  if (!getWFGallerySessionManagerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getWFGallerySessionManagerClass_block_invoke;
    v45 = &unk_1E7B02C60;
    v46 = &v40;
    __getWFGallerySessionManagerClass_block_invoke(buf);
    v17 = v41[3];
  }

  v18 = v17;
  _Block_object_dispose(&v40, 8);
  v19 = [v17 performSelector:sel_sharedManager];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v20 = getWFInterchangeURLRequestClass_softClass;
  v43 = getWFInterchangeURLRequestClass_softClass;
  if (!getWFInterchangeURLRequestClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getWFInterchangeURLRequestClass_block_invoke;
    v45 = &unk_1E7B02C60;
    v46 = &v40;
    __getWFInterchangeURLRequestClass_block_invoke(buf);
    v20 = v41[3];
  }

  v21 = v20;
  _Block_object_dispose(&v40, 8);
  v22 = [v20 performSelector:sel_requestWithURL_ withObject:lCopy];
  v23 = [v22 performSelector:sel_subAction];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__VCVoiceShortcutClient_importSharedShortcutFromURL_withName_shortcutSource_completion___block_invoke;
  aBlock[3] = &unk_1E7B02A38;
  v34 = lCopy;
  v35 = v19;
  v36 = nameCopy;
  selfCopy = self;
  v38 = sourceCopy;
  v39 = v15;
  v24 = sourceCopy;
  v25 = nameCopy;
  v26 = v19;
  v27 = v15;
  v28 = lCopy;
  v29 = _Block_copy(aBlock);
  [v26 performSelector:sel_getWorkflowForIdentifier_completionHandler_ withObject:v23 withObject:v29];

  v30 = *MEMORY[0x1E69E9840];
}

void __88__VCVoiceShortcutClient_importSharedShortcutFromURL_withName_shortcutSource_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__VCVoiceShortcutClient_importSharedShortcutFromURL_withName_shortcutSource_completion___block_invoke_147;
    aBlock[3] = &unk_1E7B029E8;
    v22 = *(a1 + 40);
    v7 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__VCVoiceShortcutClient_importSharedShortcutFromURL_withName_shortcutSource_completion___block_invoke_2;
    v17[3] = &unk_1E7B02A10;
    v18 = v5;
    v8 = *(a1 + 72);
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = *(a1 + 56);
    v16 = v9;
    *&v10 = *(a1 + 64);
    *(&v10 + 1) = v8;
    v19 = v16;
    v20 = v10;
    v7[2](v7, v18, v17);

    v11 = v22;
  }

  else
  {
    v12 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 136315650;
      v24 = "[VCVoiceShortcutClient importSharedShortcutFromURL:withName:shortcutSource:completion:]_block_invoke";
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_ERROR, "%s Error downloading CloudKit record from URL %{public}@: %{public}@", buf, 0x20u);
    }

    v14 = *(a1 + 72);
    v11 = [MEMORY[0x1E696ABC0] vc_voiceShortcutErrorWithCode:8001 reason:@"Error downloading CloudKit record"];
    (*(v14 + 16))(v14, 0, v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __88__VCVoiceShortcutClient_importSharedShortcutFromURL_withName_shortcutSource_completion___block_invoke_147(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v7 = getWFSharedShortcutClass_softClass;
  v21 = getWFSharedShortcutClass_softClass;
  if (!getWFSharedShortcutClass_softClass)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getWFSharedShortcutClass_block_invoke;
    v16 = &unk_1E7B02C60;
    v17 = &v18;
    __getWFSharedShortcutClass_block_invoke(&v13);
    v7 = v19[3];
  }

  v8 = v7;
  _Block_object_dispose(&v18, 8);
  if (objc_opt_isKindOfClass())
  {
    v6[2](v6, [v5 performSelector:sel_workflowRecord], 0);
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v9 = getWFGalleryWorkflowClass_softClass;
    v21 = getWFGalleryWorkflowClass_softClass;
    if (!getWFGalleryWorkflowClass_softClass)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __getWFGalleryWorkflowClass_block_invoke;
      v16 = &unk_1E7B02C60;
      v17 = &v18;
      __getWFGalleryWorkflowClass_block_invoke(&v13);
      v9 = v19[3];
    }

    v10 = v9;
    _Block_object_dispose(&v18, 8);
    if (objc_opt_isKindOfClass())
    {
      v11 = *(a1 + 32);
      v12 = _Block_copy(v6);
      [v11 performSelector:sel_loadWorkflowInGalleryWorkflow_completionHandler_ withObject:v5 withObject:v12];
    }

    else
    {
      v6[2](v6, 0, 0);
    }
  }
}

void __88__VCVoiceShortcutClient_importSharedShortcutFromURL_withName_shortcutSource_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v15 = 0;
    v5 = [objc_msgSend(v3 performSelector:{sel_fileRepresentation), sel_fileDataWithError_, &v15}];
    v6 = v15;
    if (v5)
    {
      v7 = *(a1 + 40);
      if (!v7)
      {
        v7 = [v4 performSelector:sel_name];
      }

      [*(a1 + 48) importShortcutWithRecordData:v5 name:v7 shortcutSource:*(a1 + 56) completion:*(a1 + 64)];
    }

    else
    {
      v11 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "[VCVoiceShortcutClient importSharedShortcutFromURL:withName:shortcutSource:completion:]_block_invoke";
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_ERROR, "%s Failed to serialize workflow record %{public}@", buf, 0x16u);
      }

      v12 = *(a1 + 64);
      v13 = [MEMORY[0x1E696ABC0] vc_voiceShortcutErrorWithCode:8001 reason:@"Failed to serialize workflow record"];
      (*(v12 + 16))(v12, 0, v13);
    }
  }

  else
  {
    v8 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136315394;
      v17 = "[VCVoiceShortcutClient importSharedShortcutFromURL:withName:shortcutSource:completion:]_block_invoke_2";
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_ERROR, "%s Failed to extract workflow record from downloaded CloudKit record %{public}@", buf, 0x16u);
    }

    v10 = *(a1 + 64);
    v6 = [MEMORY[0x1E696ABC0] vc_voiceShortcutErrorWithCode:8001 reason:@"Failed to extract workflow record from downloaded CloudKit record"];
    (*(v10 + 16))(v10, 0, v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)obliterateShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__VCVoiceShortcutClient_obliterateShortcuts___block_invoke;
  v7[3] = &unk_1E7B02940;
  v8 = shortcutsCopy;
  v5 = shortcutsCopy;
  v6 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v7];
  [v6 obliterateShortcuts:v5];
}

- (void)getOnScreenContentWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__VCVoiceShortcutClient_getOnScreenContentWithOptions_completionHandler___block_invoke;
  v10[3] = &unk_1E7B02940;
  v11 = handlerCopy;
  v7 = handlerCopy;
  optionsCopy = options;
  v9 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v10];
  [v9 getOnScreenContentWithOptions:optionsCopy completionHandler:v7];
}

- (void)getOnScreenContentWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__VCVoiceShortcutClient_getOnScreenContentWithOptions_completion___block_invoke;
  v10[3] = &unk_1E7B02940;
  v11 = completionCopy;
  v7 = completionCopy;
  optionsCopy = options;
  v9 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v10];
  [v9 getOnScreenContentWithOptions:optionsCopy completion:v7];
}

uint64_t __63__VCVoiceShortcutClient_getVaultItemsAccessForBackgroundRunner__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)deleteTriggerWithIdentifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (identifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:315 description:{@"Invalid parameter not satisfying: %@", @"triggerIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[VCVoiceShortcutClient deleteTriggerWithIdentifier:completion:]";
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEBUG, "%s [Triggers] Deleting trigger (id: %@)", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__VCVoiceShortcutClient_deleteTriggerWithIdentifier_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v17 = v9;
  v11 = v9;
  v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v16];
  [v12 deleteTriggerWithIdentifier:identifierCopy completion:v11];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)checkTriggerStateWithKeyPath:(id)path completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  completionCopy = completion;
  v9 = completionCopy;
  if (pathCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[VCVoiceShortcutClient checkTriggerStateWithKeyPath:completion:]";
    v20 = 2112;
    v21 = pathCopy;
    _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEBUG, "%s [Triggers] Checking state for keyPath: %@", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__VCVoiceShortcutClient_checkTriggerStateWithKeyPath_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v17 = v9;
  v11 = v9;
  v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v16];
  [v12 checkTriggerStateWithKeyPath:pathCopy completion:v11];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)checkTriggerStateWithIdentifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (identifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"triggerIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[VCVoiceShortcutClient checkTriggerStateWithIdentifier:completion:]";
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEBUG, "%s [Triggers] Checking state for trigger (id: %@)", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__VCVoiceShortcutClient_checkTriggerStateWithIdentifier_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v17 = v9;
  v11 = v9;
  v12 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v16];
  [v12 checkTriggerStateWithIdentifier:identifierCopy completion:v11];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)getConfiguredTriggerDescriptionsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:280 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v6 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v14 = "[VCVoiceShortcutClient getConfiguredTriggerDescriptionsWithCompletion:]";
    _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_DEBUG, "%s [Triggers] Getting trigger IDs", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__VCVoiceShortcutClient_getConfiguredTriggerDescriptionsWithCompletion___block_invoke;
  v11[3] = &unk_1E7B02940;
  v12 = completionCopy;
  v7 = completionCopy;
  v8 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v11];
  [v8 getConfiguredTriggerDescriptionsWithCompletion:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)unregisterTriggerWithIdentifier:(id)identifier triggerBacking:(int64_t)backing completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v11 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[VCVoiceShortcutClient unregisterTriggerWithIdentifier:triggerBacking:completion:]";
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_DEBUG, "%s [Triggers] Unregistering trigger (id: %@)", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__VCVoiceShortcutClient_unregisterTriggerWithIdentifier_triggerBacking_completion___block_invoke;
  v16[3] = &unk_1E7B02940;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v16];
  [v13 unregisterTriggerWithIdentifier:identifierCopy triggerBacking:backing completion:v12];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)refreshTriggerWithIdentifier:(id)identifier completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v9 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v17 = "[VCVoiceShortcutClient refreshTriggerWithIdentifier:completion:]";
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_1B1DE3000, v9, OS_LOG_TYPE_DEBUG, "%s [Triggers] Refreshing trigger (id: %@)", buf, 0x16u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__VCVoiceShortcutClient_refreshTriggerWithIdentifier_completion___block_invoke;
  v14[3] = &unk_1E7B02940;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v14];
  [v11 refreshTriggerWithIdentifier:identifierCopy completion:v10];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getSiriPodcastsDatabaseURLWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__VCVoiceShortcutClient_getSiriPodcastsDatabaseURLWithCompletion___block_invoke;
  v10[3] = &unk_1E7B02940;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__VCVoiceShortcutClient_getSiriPodcastsDatabaseURLWithCompletion___block_invoke_121;
  v8[3] = &unk_1E7B02998;
  v9 = v5;
  v7 = v5;
  [v6 getSiriPodcastsDatabaseURLWithCompletion:v8];
}

void __66__VCVoiceShortcutClient_getSiriPodcastsDatabaseURLWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[VCVoiceShortcutClient getSiriPodcastsDatabaseURLWithCompletion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_DEBUG, "%s Error getting async proxy %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __66__VCVoiceShortcutClient_getSiriPodcastsDatabaseURLWithCompletion___block_invoke_121(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 url];
  v8 = [v7 startAccessingSecurityScopedResource];

  if (v5 && (v8 & 1) != 0)
  {
    v9 = objc_alloc(MEMORY[0x1E695DEC8]);
    v10 = [v5 url];
    v16 = v6;
    v11 = [v9 initWithContentsOfURL:v10 error:&v16];
    v12 = v16;

    v13 = [v5 url];
    [v13 stopAccessingSecurityScopedResource];

    (*(*(a1 + 32) + 16))();
    v6 = v12;
  }

  else
  {
    v14 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v18 = "[VCVoiceShortcutClient getSiriPodcastsDatabaseURLWithCompletion:]_block_invoke";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1B1DE3000, v14, OS_LOG_TYPE_DEBUG, "%s Error getting sirir db %@", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setInteger:(int64_t)integer forKey:(id)key inDomain:(id)domain completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  domainCopy = domain;
  handlerCopy = handler;
  if (keyCopy)
  {
    if (domainCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"domain"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"key"}];

  if (!domainCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v14 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v24 = "[VCVoiceShortcutClient setInteger:forKey:inDomain:completionHandler:]";
    v25 = 2112;
    v26 = keyCopy;
    v27 = 2112;
    v28 = domainCopy;
    _os_log_impl(&dword_1B1DE3000, v14, OS_LOG_TYPE_DEBUG, "%s Setting preference object for key=%@ in doamin=%@", buf, 0x20u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__VCVoiceShortcutClient_setInteger_forKey_inDomain_completionHandler___block_invoke;
  v21[3] = &unk_1E7B02940;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v21];
  [v16 setInteger:integer forKey:keyCopy inDomain:domainCopy completionHandler:v15];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeFromVoiceShortcutDataUpdateNotifications
{
  v10 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.siri.VoiceShortcuts.DataDidUpdateNotification", 0);
  v4 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[VCVoiceShortcutClient unsubscribeFromVoiceShortcutDataUpdateNotifications]";
    v8 = 2112;
    v9 = @"com.apple.siri.VoiceShortcuts.DataDidUpdateNotification";
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_DEBUG, "%s Unsubscribed from notification: (%@)", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateVoiceShortcutWithIdentifier:(id)identifier phrase:(id)phrase shortcut:(id)shortcut completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  phraseCopy = phrase;
  shortcutCopy = shortcut;
  completionCopy = completion;
  v15 = completionCopy;
  if (identifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutIdentifier"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  if (!(phraseCopy | shortcutCopy))
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:178 description:@"Pass at least one parameter to update"];
  }

  v16 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "[VCVoiceShortcutClient updateVoiceShortcutWithIdentifier:phrase:shortcut:completion:]";
    v27 = 2112;
    v28 = identifierCopy;
    _os_log_impl(&dword_1B1DE3000, v16, OS_LOG_TYPE_DEBUG, "%s Updating VoiceShortcut with id=%@", buf, 0x16u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__VCVoiceShortcutClient_updateVoiceShortcutWithIdentifier_phrase_shortcut_completion___block_invoke;
  v23[3] = &unk_1E7B02940;
  v24 = v15;
  v17 = v15;
  v18 = [(VCVoiceShortcutClient *)self asynchronousRemoteDataStoreWithErrorHandler:v23];
  [v18 updateVoiceShortcutWithIdentifier:identifierCopy phrase:phraseCopy shortcut:shortcutCopy completion:v17];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)createVoiceShortcut:(id)shortcut phrase:(id)phrase completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  phraseCopy = phrase;
  completionCopy = completion;
  if (shortcutCopy)
  {
    if (phraseCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"shortcut"}];

  if (!phraseCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v12 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315395;
    v27 = "[VCVoiceShortcutClient createVoiceShortcut:phrase:completion:]";
    v28 = 2113;
    v29 = phraseCopy;
    _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_DEBUG, "%s Creating VoiceShortcut for %{private}@", buf, 0x16u);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __63__VCVoiceShortcutClient_createVoiceShortcut_phrase_completion___block_invoke;
  v24[3] = &unk_1E7B02918;
  v25 = shortcutCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__VCVoiceShortcutClient_createVoiceShortcut_phrase_completion___block_invoke_103;
  v20[3] = &unk_1E7B02968;
  v20[4] = self;
  v21 = v25;
  v22 = phraseCopy;
  v23 = completionCopy;
  v13 = phraseCopy;
  v14 = v25;
  v15 = completionCopy;
  [v14 _injectProxiesForImages:v24 completion:v20];

  v16 = *MEMORY[0x1E69E9840];
}

void __63__VCVoiceShortcutClient_createVoiceShortcut_phrase_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _keyImage];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__VCVoiceShortcutClient_createVoiceShortcut_phrase_completion___block_invoke_2;
    v9[3] = &unk_1E7B028F0;
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = v6;
    [v10 _retrieveImageDataWithReply:v9];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __63__VCVoiceShortcutClient_createVoiceShortcut_phrase_completion___block_invoke_103(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__VCVoiceShortcutClient_createVoiceShortcut_phrase_completion___block_invoke_2_104;
  v4[3] = &unk_1E7B02940;
  v5 = *(a1 + 56);
  v3 = [v2 asynchronousRemoteDataStoreWithErrorHandler:v4];
  [v3 addVoiceShortcut:*(a1 + 40) phrase:*(a1 + 48) completion:*(a1 + 56)];
}

void __63__VCVoiceShortcutClient_createVoiceShortcut_phrase_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v11 = 136315906;
      v12 = "[VCVoiceShortcutClient createVoiceShortcut:phrase:completion:]_block_invoke_2";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1B1DE3000, v7, OS_LOG_TYPE_ERROR, "%s Failed to retrieve key image data from proxy %@ for shortcut %@ due to error: %@", &v11, 0x2Au);
    }
  }

  (*(a1[6] + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)requestDataMigration:(id *)migration
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__20936;
  v13 = __Block_byref_object_dispose__20937;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__VCVoiceShortcutClient_requestDataMigration___block_invoke;
  v8[3] = &unk_1E7B028A0;
  v8[4] = &v9;
  v4 = [(VCVoiceShortcutClient *)self synchronousRemoteDataStoreWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__VCVoiceShortcutClient_requestDataMigration___block_invoke_2;
  v7[3] = &unk_1E7B028C8;
  v7[4] = &v15;
  v7[5] = &v9;
  [v4 requestDataMigration:v7];

  if (migration)
  {
    *migration = v10[5];
  }

  v5 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v5;
}

- (void)dealloc
{
  [(VCVoiceShortcutClient *)self unsubscribeFromVoiceShortcutDataUpdateNotifications];
  v3.receiver = self;
  v3.super_class = VCVoiceShortcutClient;
  [(VCVoiceShortcutClient *)&v3 dealloc];
}

- (VCVoiceShortcutClient)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (!endpointCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"endpoint"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__VCVoiceShortcutClient_initWithListenerEndpoint___block_invoke;
  v10[3] = &unk_1E7B02878;
  v11 = endpointCopy;
  v6 = endpointCopy;
  v7 = [(VCVoiceShortcutClient *)self initWithXPCConnectionCreationBlock:v10 XPCInterfaceSetupBlock:0];

  return v7;
}

id __50__VCVoiceShortcutClient_initWithListenerEndpoint___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:*(a1 + 32)];

  return v1;
}

- (VCVoiceShortcutClient)initWithMachServiceName:(id)name options:(unint64_t)options interfaceSetupBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"serviceName"}];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__VCVoiceShortcutClient_initWithMachServiceName_options_interfaceSetupBlock___block_invoke;
  v15[3] = &unk_1E7B02850;
  v16 = nameCopy;
  optionsCopy = options;
  v11 = nameCopy;
  v12 = [(VCVoiceShortcutClient *)self initWithXPCConnectionCreationBlock:v15 XPCInterfaceSetupBlock:blockCopy];

  return v12;
}

id __77__VCVoiceShortcutClient_initWithMachServiceName_options_interfaceSetupBlock___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:*(a1 + 32) options:*(a1 + 40)];

  return v1;
}

- (VCVoiceShortcutClient)initWithXPCConnectionCreationBlock:(id)block XPCInterfaceSetupBlock:(id)setupBlock
{
  blockCopy = block;
  setupBlockCopy = setupBlock;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"creationBlock"}];
  }

  v9 = [(VCVoiceShortcutClient *)self initWithXPCConnection:0 XPCConnectionCreationBlock:blockCopy XPCInterfaceSetupBlock:setupBlockCopy];

  return v9;
}

- (VCVoiceShortcutClient)initWithXPCConnection:(id)connection XPCConnectionCreationBlock:(id)block XPCInterfaceSetupBlock:(id)setupBlock
{
  connectionCopy = connection;
  blockCopy = block;
  setupBlockCopy = setupBlock;
  if (!(connectionCopy | blockCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutClient.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"connection || creationBlock"}];
  }

  v37.receiver = self;
  v37.super_class = VCVoiceShortcutClient;
  v13 = [(VCVoiceShortcutClient *)&v37 init];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.shortcuts.VCVoiceShortcutClient.XPC", v14);
    xpcQueue = v13->_xpcQueue;
    v13->_xpcQueue = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.shortcuts.VCVoiceShortcutClient.InternalState", v17);
    internalStateQueue = v13->_internalStateQueue;
    v13->_internalStateQueue = v18;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    errorHandlers = v13->_errorHandlers;
    v13->_errorHandlers = weakObjectsHashTable;

    objc_storeStrong(&v13->_xpcConnection, connection);
    v22 = [blockCopy copy];
    creationBlock = v13->_creationBlock;
    v13->_creationBlock = v22;

    v24 = [setupBlockCopy copy];
    interfaceSetupBlock = v13->_interfaceSetupBlock;
    v13->_interfaceSetupBlock = v24;

    v26 = objc_alloc_init(WFSystemSurfaceWorkflowStatusRegistry);
    systemSurfaceStatus = v13->_systemSurfaceStatus;
    v13->_systemSurfaceStatus = v26;

    v28 = objc_alloc_init(WFVoiceShortcutCache);
    voiceShortcutCache = v13->_voiceShortcutCache;
    v13->_voiceShortcutCache = v28;

    [(VCVoiceShortcutClient *)v13 subscribeToVoiceShortcutDataUpdateNotifications];
    objc_initWeak(&location, v13);
    v30 = v13->_internalStateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__VCVoiceShortcutClient_initWithXPCConnection_XPCConnectionCreationBlock_XPCInterfaceSetupBlock___block_invoke;
    block[3] = &unk_1E7B02828;
    objc_copyWeak(&v35, &location);
    dispatch_async(v30, block);
    v31 = v13;
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __97__VCVoiceShortcutClient_initWithXPCConnection_XPCConnectionCreationBlock_XPCInterfaceSetupBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained xpcConnection];

  if (v1)
  {
    [WeakRetained unsafeSetupXPCConnection];
  }
}

@end