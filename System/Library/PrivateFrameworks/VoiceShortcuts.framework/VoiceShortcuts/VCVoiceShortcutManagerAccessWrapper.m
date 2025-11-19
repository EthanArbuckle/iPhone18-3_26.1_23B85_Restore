@interface VCVoiceShortcutManagerAccessWrapper
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (VCVoiceShortcutManagerAccessWrapper)initWithVoiceShortcutManager:(id)a3 triggerRegistrar:(id)a4 accessSpecifier:(id)a5 syncDataEndpoint:(id)a6 runCoordinator:(id)a7 auditToken:(id *)a8;
- (id)database;
- (id)linkActionWithStaccatoIdentifier:(id)a3;
- (id)unsupportedRequestErrorWithMessage:(id)a3;
- (void)addVoiceShortcut:(id)a3 phrase:(id)a4 completion:(id)a5;
- (void)approvalResultForContentAttributionSet:(id)a3 contentDestination:(id)a4 actionUUID:(id)a5 actionIdentifier:(id)a6 actionIndex:(unint64_t)a7 reference:(id)a8 allowedOnceStates:(id)a9 completion:(id)a10;
- (void)archiveAction:(id)a3 withActionMetadata:(id)a4 completion:(id)a5;
- (void)checkTriggerStateWithIdentifier:(id)a3 completion:(id)a4;
- (void)checkTriggerStateWithKeyPath:(id)a3 completion:(id)a4;
- (void)computeFinderResizedSizesForImages:(id)a3 inSizes:(id)a4 completion:(id)a5;
- (void)configuredStaccatoActionFromTemplate:(id)a3 valuesByParameterKey:(id)a4 completion:(id)a5;
- (void)createBookmarkWithBookmarkableString:(id)a3 path:(id)a4 workflowID:(id)a5 completion:(id)a6;
- (void)createBookmarkWithURL:(id)a3 workflowID:(id)a4 completion:(id)a5;
- (void)createShortcutWithRecordData:(id)a3 name:(id)a4 shortcutSource:(id)a5 completion:(id)a6;
- (void)createWorkflowWithWorkflowData:(id)a3 name:(id)a4 nameCollisionBehavior:(unint64_t)a5 completion:(id)a6;
- (void)currentDeletionAuthorizationStatusWithContentItemClassName:(id)a3 actionUUID:(id)a4 actionIdentifier:(id)a5 actionIndex:(unint64_t)a6 count:(unint64_t)a7 reference:(id)a8 completion:(id)a9;
- (void)defaultStaccatoActionWithCompletion:(id)a3;
- (void)deleteTriggerWithIdentifier:(id)a3 completion:(id)a4;
- (void)deleteVoiceShortcutWithIdentifier:(id)a3 name:(id)a4 completion:(id)a5;
- (void)describeSyncStateIncludingDeleted:(BOOL)a3 completion:(id)a4;
- (void)dismissToastedSessionKitSessionsWithReason:(id)a3 completion:(id)a4;
- (void)fetchAllValueSectionsForStaccatoParameter:(id)a3 completion:(id)a4;
- (void)fetchAvailableStaccatoActions:(id)a3;
- (void)fetchURLForFPItem:(id)a3 completion:(id)a4;
- (void)fireTriggerWithIdentifier:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)generateSingleUseTokenForWorkflowIdentifier:(id)a3 completion:(id)a4;
- (void)getCollectionWithIdentifier:(id)a3 completion:(id)a4;
- (void)getConfiguredTriggerDescriptionsWithCompletion:(id)a3;
- (void)getConfiguredTriggerForTriggerID:(id)a3 completion:(id)a4;
- (void)getConfiguredTriggersForWorkflowID:(id)a3 completion:(id)a4;
- (void)getFirstUnsortedWorkflowWithCompletion:(id)a3;
- (void)getFolderForWorkflowReference:(id)a3 completion:(id)a4;
- (void)getIsReference:(id)a3 allowedToRunOnDomain:(id)a4 completion:(id)a5;
- (void)getLinkActionWithAppBundleIdentifier:(id)a3 appIntentIdentifier:(id)a4 expandingParameterName:(id)a5 limit:(int64_t)a6 completion:(id)a7;
- (void)getLinkActionWithAppBundleIdentifier:(id)a3 appIntentIdentifier:(id)a4 serializedParameterStates:(id)a5 completion:(id)a6;
- (void)getMigratedAppIntentWithINIntent:(id)a3 completion:(id)a4;
- (void)getNumberOfVoiceShortcutsWithCompletion:(id)a3;
- (void)getOnScreenContentWithOptions:(id)a3 completion:(id)a4;
- (void)getOnScreenContentWithOptions:(id)a3 completionHandler:(id)a4;
- (void)getReferenceForWorkflowID:(id)a3 completion:(id)a4;
- (void)getResultsForQuery:(id)a3 resultClassName:(id)a4 completion:(id)a5;
- (void)getRunShortcutIntentForWorkflow:(id)a3 completion:(id)a4;
- (void)getSerializedParametersForLinkAction:(id)a3 actionMetadata:(id)a4 completion:(id)a5;
- (void)getShareSheetWorkflowsForExtensionMatchingDictionaries:(id)a3 hostBundleIdentifier:(id)a4 completion:(id)a5;
- (void)getShortcutSuggestionsForAllAppsWithLimit:(unint64_t)a3 completion:(id)a4;
- (void)getShortcutSuggestionsForAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)getSiriPodcastsDatabaseURLWithCompletion:(id)a3;
- (void)getSortedVisibleFoldersWithCompletion:(id)a3;
- (void)getSortedVisibleWorkflowsByNameWithCompletion:(id)a3;
- (void)getSortedVisibleWorkflowsInCollection:(id)a3 completion:(id)a4;
- (void)getSortedWorkflowsWithQuery:(id)a3 completion:(id)a4;
- (void)getStingWorkflowWithIdentifier:(id)a3 completion:(id)a4;
- (void)getStingWorkflowsWithCompletion:(id)a3;
- (void)getSuggestedShortcutsWithLimit:(int64_t)a3 completion:(id)a4;
- (void)getUniqueVisibleReferenceForWorkflowName:(id)a3 completion:(id)a4;
- (void)getUpcomingMediaForBundleIdentifier:(id)a3 limit:(int64_t)a4 completion:(id)a5;
- (void)getValueForDescriptor:(id)a3 resultClassName:(id)a4 completion:(id)a5;
- (void)getVaultItemsAccessForBackgroundRunner:(id)a3;
- (void)getVoiceShortcutWithIdentifier:(id)a3 completion:(id)a4;
- (void)getVoiceShortcutWithPhrase:(id)a3 completion:(id)a4;
- (void)getVoiceShortcutsForAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)getVoiceShortcutsWithCompletion:(id)a3;
- (void)getWorkflowRecordDataForDescriptor:(id)a3 completion:(id)a4;
- (void)loadDataWithItemProviderRequestMetadata:(id)a3 type:(id)a4 completion:(id)a5;
- (void)loadFileURLWithItemProviderRequestMetadata:(id)a3 type:(id)a4 openInPlace:(BOOL)a5 completion:(id)a6;
- (void)logRunOfWorkflow:(id)a3 withSource:(id)a4 triggerID:(id)a5 completion:(id)a6;
- (void)markMenuBarWorkflowAsMigratedWithIdentifiers:(id)a3 completion:(id)a4;
- (void)obliterateShortcuts:(id)a3;
- (void)postNotificationAboutFailure:(id)a3 inWorkflow:(id)a4 dialogAttribution:(id)a5 runningContext:(id)a6;
- (void)postNotificationWithRequest:(id)a3 presentationMode:(unint64_t)a4 runningContext:(id)a5;
- (void)quarantineWorkflowWithReference:(id)a3;
- (void)refreshTriggerWithIdentifier:(id)a3 completion:(id)a4;
- (void)removeAllSerializedParametersForQueryName:(id)a3 completion:(id)a4;
- (void)requestDataMigration:(id)a3;
- (void)requestSandboxExtensionForAccessResources:(id)a3 completion:(id)a4;
- (void)requestSandboxExtensionForToolKitIndexingWithCompletion:(id)a3;
- (void)resetAutomationConfirmationStatusWithCompletion:(id)a3;
- (void)resolveBookmarkData:(id)a3 completion:(id)a4;
- (void)resolveCrossDeviceItemID:(id)a3 completion:(id)a4;
- (void)resolveFilePath:(id)a3 workflowID:(id)a4 completion:(id)a5;
- (void)saveOutputActionSmartPromtDataForWorkflowReference:(id)a3 completion:(id)a4;
- (void)saveSmartPromptStateData:(id)a3 actionUUID:(id)a4 reference:(id)a5 completion:(id)a6;
- (void)sendAceCommandDictionary:(id)a3 completion:(id)a4;
- (void)serializedParametersForAppEntityIdentifier:(id)a3 completion:(id)a4;
- (void)setAuditToken:(id *)a3;
- (void)setInteger:(int64_t)a3 forKey:(id)a4 inDomain:(id)a5 completionHandler:(id)a6;
- (void)setOutcome:(int64_t)a3 forRunEvent:(id)a4;
- (void)setPerWorkflowStateData:(id)a3 forSmartPromptWithActionUUID:(id)a4 reference:(id)a5 completion:(id)a6;
- (void)setShortcutSuggestions:(id)a3 forAppWithBundleIdentifier:(id)a4;
- (void)showSingleStepCompletionForWebClip:(id)a3 completion:(id)a4;
- (void)storeQuarantineHashForWorkflowWithReference:(id)a3 quarantineHash:(id)a4;
- (void)storeSerializedParameters:(id)a3 forAppEntityIdentifier:(id)a4 queryName:(id)a5 badgeType:(unint64_t)a6 completion:(id)a7;
- (void)toastSessionKitSessionWithIdentifier:(id)a3 forDuration:(id)a4 completion:(id)a5;
- (void)triggerFullContextualActionReindexWithCompletion:(id)a3;
- (void)unarchiveActionFromData:(id)a3 withActionMetadata:(id)a4 completion:(id)a5;
- (void)unregisterTriggerWithIdentifier:(id)a3 triggerBacking:(int64_t)a4 completion:(id)a5;
- (void)updateAppDescriptor:(id)a3 atKey:(id)a4 actionUUID:(id)a5 actionIndex:(id)a6 actionIdentifier:(id)a7 workflowID:(id)a8;
- (void)updateAppShortcutsWithCompletion:(id)a3;
- (void)updateVoiceShortcutWithIdentifier:(id)a3 phrase:(id)a4 shortcut:(id)a5 completion:(id)a6;
- (void)userHasAutomationsWithCompletion:(id)a3;
@end

@implementation VCVoiceShortcutManagerAccessWrapper

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[2].var0[4];
  *retstr->var0 = *self[2].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *self->_auditToken.val = *a3->var0;
  *&self->_auditToken.val[4] = v3;
}

- (void)defaultStaccatoActionWithCompletion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[WFConfiguredSystemActionProvider sharedProvider];
  v5 = [v4 defaultSystemActionForActionType:*MEMORY[0x277D7A5A8]];
  v6 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[VCVoiceShortcutManagerAccessWrapper defaultStaccatoActionWithCompletion:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Returning default action: %@", &v10, 0x16u);
  }

  if (v5)
  {
    v3[2](v3, v5, 0);
  }

  else
  {
    v7 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[VCVoiceShortcutManagerAccessWrapper defaultStaccatoActionWithCompletion:]";
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Unable to find default action for action button.", &v10, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1002 reason:@"Unable to construct the default action"];
    (v3)[2](v3, 0, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)configuredStaccatoActionFromTemplate:(id)a3 valuesByParameterKey:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[WFConfiguredSystemActionProvider sharedProvider];
  v16 = 0;
  v11 = [v10 configuredStaccatoActionFromTemplate:v7 valuesByParameterKey:v8 error:&v16];
  v12 = v16;
  v13 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "[VCVoiceShortcutManagerAccessWrapper configuredStaccatoActionFromTemplate:valuesByParameterKey:completion:]";
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_DEFAULT, "%s Configured action for template: %@ with parameters: %@ -> %@", buf, 0x2Au);
  }

  if (v11)
  {
    v9[2](v9, v11, 0);
  }

  else
  {
    v14 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[VCVoiceShortcutManagerAccessWrapper configuredStaccatoActionFromTemplate:valuesByParameterKey:completion:]";
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s Failed to construct configured action with template: %@.", buf, 0x16u);
    }

    (v9)[2](v9, 0, v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllValueSectionsForStaccatoParameter:(id)a3 completion:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 actionIdentifier];
  v9 = [(VCVoiceShortcutManagerAccessWrapper *)self linkActionWithStaccatoIdentifier:v8];

  v10 = [v6 key];
  v11 = [v9 parameterForKey:v10];

  v12 = v11;
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__VCVoiceShortcutManagerAccessWrapper_fetchAllValueSectionsForStaccatoParameter_completion___block_invoke;
    aBlock[3] = &unk_2788FF298;
    v16 = v9;
    v34 = v16;
    v28 = v13;
    v35 = v28;
    v17 = v6;
    v36 = v17;
    v18 = v7;
    v37 = v18;
    v19 = _Block_copy(aBlock);
    v20 = getWFStaccatoLogObject();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v21)
      {
        *buf = 136315650;
        v39 = "[VCVoiceShortcutManagerAccessWrapper fetchAllValueSectionsForStaccatoParameter:completion:]";
        v40 = 2112;
        v41 = v17;
        v42 = 2112;
        v43 = v16;
        _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_DEFAULT, "%s Fetching dynamic values for parameter: %@ in action: %@", buf, 0x20u);
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __92__VCVoiceShortcutManagerAccessWrapper_fetchAllValueSectionsForStaccatoParameter_completion___block_invoke_321;
      v29[3] = &unk_2788FF2C0;
      v30 = v15;
      v31 = v18;
      v32 = v19;
      [v30 loadPossibleStatesWithCompletionHandler:v29];

      v22 = v30;
      v23 = v28;
    }

    else
    {
      if (v21)
      {
        *buf = 136315650;
        v39 = "[VCVoiceShortcutManagerAccessWrapper fetchAllValueSectionsForStaccatoParameter:completion:]";
        v40 = 2112;
        v41 = v17;
        v42 = 2112;
        v43 = v16;
        _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_DEFAULT, "%s Fetching static values for parameter: %@ in action: %@", buf, 0x20u);
      }

      v25 = objc_alloc(MEMORY[0x277CD3E28]);
      v23 = v28;
      v26 = [v28 possibleStates];
      v22 = [v25 initWithItems:v26];

      (*(v19 + 2))(v19, v22);
      v15 = 0;
    }
  }

  else
  {

    v24 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v39 = "[VCVoiceShortcutManagerAccessWrapper fetchAllValueSectionsForStaccatoParameter:completion:]";
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_ERROR, "%s Invalid parameter provided: %@ - %@.", buf, 0x20u);
    }

    (*(v7 + 2))(v7, MEMORY[0x277CBEBF8], 0);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __92__VCVoiceShortcutManagerAccessWrapper_fetchAllValueSectionsForStaccatoParameter_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a2 sections];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__VCVoiceShortcutManagerAccessWrapper_fetchAllValueSectionsForStaccatoParameter_completion___block_invoke_2;
  v9[3] = &unk_2788FF270;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v4 = [v3 if_map:v9];

  v5 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    *buf = 136315650;
    v13 = "[VCVoiceShortcutManagerAccessWrapper fetchAllValueSectionsForStaccatoParameter:completion:]_block_invoke";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Returning: %@ values for parameter %@.", buf, 0x20u);
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v4, 0, v7);
  v8 = *MEMORY[0x277D85DE8];
}

void __92__VCVoiceShortcutManagerAccessWrapper_fetchAllValueSectionsForStaccatoParameter_completion___block_invoke_321(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 136315394;
      v10 = "[VCVoiceShortcutManagerAccessWrapper fetchAllValueSectionsForStaccatoParameter:completion:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_ERROR, "%s Failed to load possible states for parameter: %@", &v9, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) possibleStatesCollection];
    (*(v6 + 16))(v6, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

id __92__VCVoiceShortcutManagerAccessWrapper_fetchAllValueSectionsForStaccatoParameter_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D7A130];
  v4 = a2;
  v5 = [[v3 alloc] initWithSection:v4 action:*(a1 + 32) parameter:*(a1 + 40)];

  return v5;
}

- (void)fetchAvailableStaccatoActions:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v4 = WFSystemStaccatoActionIdentifiersBySection();
  v29 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v6)
  {
    v7 = *v32;
    v8 = *MEMORY[0x277D7A228];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        if ([v10 isEqualToString:@"Camera"])
        {
          v11 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v8 allowPlaceholder:0 error:0];
          v12 = v11 == 0;

          if (v12)
          {
            continue;
          }
        }

        if (![v10 isEqualToString:@"VisualIntelligence"])
        {
          goto LABEL_24;
        }

        v13 = [MEMORY[0x277D7C138] shared];
        v14 = [v13 isAppleIntelligenceEnabled];

        if (v14)
        {
          v35 = 0;
          v36 = &v35;
          v37 = 0x2020000000;
          v15 = getAFVisualIntelligenceCameraRestrictedSymbolLoc_ptr;
          v38 = getAFVisualIntelligenceCameraRestrictedSymbolLoc_ptr;
          if (!getAFVisualIntelligenceCameraRestrictedSymbolLoc_ptr)
          {
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __getAFVisualIntelligenceCameraRestrictedSymbolLoc_block_invoke;
            v41 = &unk_2788FFE98;
            v42 = &v35;
            __getAFVisualIntelligenceCameraRestrictedSymbolLoc_block_invoke(buf);
            v15 = v36[3];
          }

          _Block_object_dispose(&v35, 8);
          if (!v15)
          {
            v26 = [MEMORY[0x277CCA890] currentHandler];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL soft_AFVisualIntelligenceCameraRestricted(void)"];
            [v26 handleFailureInFunction:v27 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:85 description:{@"%s", dlerror()}];

            __break(1u);
          }

          v16 = v15() ^ 1;
        }

        else
        {
          v16 = 0;
        }

        v17 = getWFStaccatoLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          if (v14)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          *buf = 136315650;
          *&buf[4] = "[VCVoiceShortcutManagerAccessWrapper fetchAvailableStaccatoActions:]";
          if (v16)
          {
            v19 = @"YES";
          }

          else
          {
            v19 = @"NO";
          }

          *&buf[12] = 2112;
          *&buf[14] = v18;
          *&buf[22] = 2112;
          v41 = v19;
          _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_DEFAULT, "%s Should show Visual Intelligence: AI enabled: %@ VI enabled: %@", buf, 0x20u);
        }

        if (v16)
        {
LABEL_24:
          v20 = [v5 objectForKeyedSubscript:v10];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __69__VCVoiceShortcutManagerAccessWrapper_fetchAvailableStaccatoActions___block_invoke;
          v30[3] = &unk_2788FF248;
          v30[4] = self;
          v30[5] = v10;
          v21 = [v20 if_compactMap:v30];
          [v29 setObject:v21 forKeyedSubscript:v10];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v6);
  }

  v22 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v29 count];
    *buf = 136315394;
    *&buf[4] = "[VCVoiceShortcutManagerAccessWrapper fetchAvailableStaccatoActions:]";
    *&buf[12] = 2048;
    *&buf[14] = v23;
    _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_DEFAULT, "%s Returning %ld available staccato sections.", buf, 0x16u);
  }

  v24 = [v29 copy];
  v28[2](v28, v24, 0);

  v25 = *MEMORY[0x277D85DE8];
}

id __69__VCVoiceShortcutManagerAccessWrapper_fetchAvailableStaccatoActions___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) linkActionWithStaccatoIdentifier:v3];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D7A118]) initWithIdentifier:v3 sectionIdentifier:*(a1 + 40) linkAction:v4];
    v6 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[VCVoiceShortcutManagerAccessWrapper fetchAvailableStaccatoActions:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Found link action matching staccato identifier: %@ - %@", &v9, 0x20u);
    }
  }

  else
  {
    v6 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[VCVoiceShortcutManagerAccessWrapper fetchAvailableStaccatoActions:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Link action for %@ not found.", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)linkActionWithStaccatoIdentifier:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D7C0D8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithActionIdentifier:v4 serializedParameters:MEMORY[0x277CBEC10]];

  v7 = [MEMORY[0x277D7C598] sharedProvider];
  v14[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v7 createActionsForRequests:v8];

  v9 = [v6 result];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)unsupportedRequestErrorWithMessage:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D7A388];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:v4 code:11006 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)loadDataWithItemProviderRequestMetadata:(id)a3 type:(id)a4 completion:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v34 = "[VCVoiceShortcutManagerAccessWrapper loadDataWithItemProviderRequestMetadata:type:completion:]";
    v35 = 2112;
    v36 = v8;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Loading data representation with metadata: %@ type: %@", buf, 0x20u);
  }

  v12 = v8;
  if (v12 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, (isKindOfClass & 1) != 0))
  {
    v14 = v12;
    v15 = MEMORY[0x277D23BB0];
    v16 = [v14 metadata];
    v17 = [v15 policyWithEntityMetadata:v16];

    v31 = 0;
    v18 = [v17 connectionWithError:&v31];
    v19 = v31;
    if (v18)
    {
      v27 = [objc_alloc(MEMORY[0x277D237C8]) initWithContentType:v9];
      v20 = [objc_alloc(MEMORY[0x277D23C18]) initWithContentType:v27 preferredExtractionType:1];
      v21 = [v14 entity];
      v32 = v21;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      v22 = v28 = v19;
      [v14 metadata];
      v24 = v23 = v17;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __95__VCVoiceShortcutManagerAccessWrapper_loadDataWithItemProviderRequestMetadata_type_completion___block_invoke;
      v29[3] = &unk_2788FF220;
      v30 = v10;
      [v18 exportEntities:v22 metadata:v24 withConfiguration:v20 completionHandler:v29];

      v17 = v23;
      v19 = v28;
    }

    else
    {
      v25 = getWFGeneralLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "[VCVoiceShortcutManagerAccessWrapper loadDataWithItemProviderRequestMetadata:type:completion:]";
        v35 = 2112;
        v36 = v19;
        _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_ERROR, "%s Unable to create connection: %@", buf, 0x16u);
      }

      (*(v10 + 2))(v10, 0, v19);
    }
  }

  else
  {
    v14 = [(VCVoiceShortcutManagerAccessWrapper *)self unsupportedRequestErrorWithMessage:@"Unsupported item provider load request."];
    (*(v10 + 2))(v10, 0, v14);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __95__VCVoiceShortcutManagerAccessWrapper_loadDataWithItemProviderRequestMetadata_type_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v11 = [a2 value];
    v3 = [v11 firstObject];
    v4 = [v3 exportedContent];

    v5 = [v4 content];
    v6 = [v5 wf_fileRepresentation];

    v7 = *(a1 + 32);
    v8 = [v6 data];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 32) + 16);

    v10();
  }
}

- (void)loadFileURLWithItemProviderRequestMetadata:(id)a3 type:(id)a4 openInPlace:(BOOL)a5 completion:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[VCVoiceShortcutManagerAccessWrapper loadFileURLWithItemProviderRequestMetadata:type:openInPlace:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    *&buf[24] = v10;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEFAULT, "%s Loading file url representation with metadata: %@ type: %@", buf, 0x20u);
  }

  v13 = v9;
  if (v13 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, (isKindOfClass & 1) != 0))
  {
    v15 = v13;
    v16 = MEMORY[0x277D23BB0];
    v17 = [v15 metadata];
    v18 = [v16 policyWithEntityMetadata:v17];

    v36 = 0;
    v19 = [v18 connectionWithError:&v36];
    v20 = v36;
    v21 = v20;
    if (v19)
    {
      v32 = v20;
      v22 = [objc_alloc(MEMORY[0x277D237C8]) initWithContentType:v10];
      v23 = [objc_alloc(MEMORY[0x277D23C18]) initWithContentType:v22 preferredExtractionType:0];
      v24 = [MEMORY[0x277CCAC38] processInfo];
      v25 = v24;
      v33 = v18;
      if (v24)
      {
        [v24 if_auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v27 = [v23 configurationWithAuditToken:buf];

      v28 = [v15 entity];
      v37 = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v30 = [v15 metadata];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __110__VCVoiceShortcutManagerAccessWrapper_loadFileURLWithItemProviderRequestMetadata_type_openInPlace_completion___block_invoke;
      v34[3] = &unk_2788FF220;
      v35 = v11;
      [v19 exportEntities:v29 metadata:v30 withConfiguration:v27 completionHandler:v34];

      v21 = v32;
      v18 = v33;
    }

    else
    {
      v26 = getWFGeneralLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[VCVoiceShortcutManagerAccessWrapper loadFileURLWithItemProviderRequestMetadata:type:openInPlace:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&dword_23103C000, v26, OS_LOG_TYPE_ERROR, "%s Unable to create connection: %@", buf, 0x16u);
      }

      (*(v11 + 2))(v11, 0, v21);
    }
  }

  else
  {
    v15 = [(VCVoiceShortcutManagerAccessWrapper *)self unsupportedRequestErrorWithMessage:@"Unsupported item provider load request."];
    (*(v11 + 2))(v11, 0, v15);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __110__VCVoiceShortcutManagerAccessWrapper_loadFileURLWithItemProviderRequestMetadata_type_openInPlace_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v11 = [a2 value];
    v3 = [v11 firstObject];
    v4 = [v3 exportedContent];

    v5 = [v4 content];
    v6 = [v5 wf_fileRepresentation];

    v7 = [v6 fileURL];
    v8 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v7 readonly:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 32) + 16);

    v10();
  }
}

- (void)setOutcome:(int64_t)a3 forRunEvent:(id)a4
{
  v10 = a4;
  v6 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v6 allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    v8 = [v7 isBackgroundShortcutRunner];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v9 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  [v9 setOutcome:a3 forRunEvent:v10];

LABEL_5:
}

- (void)logRunOfWorkflow:(id)a3 withSource:(id)a4 triggerID:(id)a5 completion:(id)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v13 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v16 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v17 = [v16 logRunOfWorkflow:v18 withSource:v10 triggerID:v11];

    v12[2](v12, v17, 0);
    goto LABEL_6;
  }

  v14 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v15 = [v14 isBackgroundShortcutRunner];

  if (v15)
  {
    goto LABEL_4;
  }

  v17 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (v12)[2](v12, 0, v17);
LABEL_6:
}

- (void)storeQuarantineHashForWorkflowWithReference:(id)a3 quarantineHash:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v7 allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    v9 = [v8 isBackgroundShortcutRunner];

    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v10 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  v11 = objc_opt_new();
  v12 = [v10 recordWithDescriptor:v14 properties:v11 error:0];

  if (v12)
  {
    [v12 setRemoteQuarantineHash:v6];
    v13 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    [v13 saveRecord:v12 withDescriptor:v14 error:0];
  }

LABEL_7:
}

- (void)quarantineWorkflowWithReference:(id)a3
{
  v11 = a3;
  v4 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v4 allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    v6 = [v5 isBackgroundShortcutRunner];

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  v8 = objc_opt_new();
  v9 = [v7 recordWithDescriptor:v11 properties:v8 error:0];

  if (v9)
  {
    [v9 setRemoteQuarantineStatus:1];
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    [v10 saveRecord:v9 withDescriptor:v11 error:0];
  }

LABEL_7:
}

- (void)updateAppDescriptor:(id)a3 atKey:(id)a4 actionUUID:(id)a5 actionIndex:(id)a6 actionIdentifier:(id)a7 workflowID:(id)a8
{
  v23 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v19 allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    v20 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    v21 = [v20 isBackgroundShortcutRunner];

    if (!v21)
    {
      goto LABEL_5;
    }
  }

  v22 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  [v22 updateAppDescriptor:v23 atKey:v14 actionUUID:v15 actionIndex:v16 actionIdentifier:v17 workflowID:v18];

LABEL_5:
}

- (void)saveOutputActionSmartPromtDataForWorkflowReference:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v8 allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    v9 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    v10 = [v9 isBackgroundShortcutRunner];

    if ((v10 & 1) == 0)
    {
      v13 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
      v7[2](v7, v13);

      goto LABEL_6;
    }
  }

  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  v14 = 0;
  [v11 saveOutputActionSmartPromtDataForWorkflowReference:v6 error:&v14];
  v12 = v14;

  v7[2](v7, v12);
LABEL_6:
}

- (void)saveSmartPromptStateData:(id)a3 actionUUID:(id)a4 reference:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v14 allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    v15 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    v16 = [v15 isBackgroundShortcutRunner];

    if ((v16 & 1) == 0)
    {
      v20 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
      v13[2](v13, 0, v20);

      goto LABEL_6;
    }
  }

  v17 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  v21 = 0;
  v18 = [v17 saveSmartPromptStateData:v10 actionUUID:v11 reference:v12 error:&v21];
  v19 = v21;

  v13[2](v13, v18, v19);
LABEL_6:
}

- (void)currentDeletionAuthorizationStatusWithContentItemClassName:(id)a3 actionUUID:(id)a4 actionIdentifier:(id)a5 actionIndex:(unint64_t)a6 count:(unint64_t)a7 reference:(id)a8 completion:(id)a9
{
  v24 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  v19 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v19 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v22 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v23 = [v22 currentDeletionAuthorizationStatusWithContentItemClassName:v24 actionUUID:v15 actionIdentifier:v16 actionIndex:a6 count:a7 reference:v17];

    v18[2](v18, v23, 0);
    goto LABEL_6;
  }

  v20 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v21 = [v20 isBackgroundShortcutRunner];

  if (v21)
  {
    goto LABEL_4;
  }

  v23 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (v18)[2](v18, 0, v23);
LABEL_6:
}

- (void)approvalResultForContentAttributionSet:(id)a3 contentDestination:(id)a4 actionUUID:(id)a5 actionIdentifier:(id)a6 actionIndex:(unint64_t)a7 reference:(id)a8 allowedOnceStates:(id)a9 completion:(id)a10
{
  v33 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v22 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v30 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v31 = [v30 approvalResultForContentAttributionSet:v33 contentDestination:v16 actionUUID:v17 actionIdentifier:v18 actionIndex:a7 reference:v19 allowedOnceStates:v20];

    v21[2](v21, v31, 0);
    goto LABEL_6;
  }

  [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v32 = v20;
  v23 = v19;
  v24 = v18;
  v25 = v17;
  v26 = v16;
  v28 = v27 = a7;
  v29 = [v28 isBackgroundShortcutRunner];

  a7 = v27;
  v16 = v26;
  v17 = v25;
  v18 = v24;
  v19 = v23;
  v20 = v32;

  if (v29)
  {
    goto LABEL_4;
  }

  v31 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (v21)[2](v21, 0, v31);
LABEL_6:
}

- (void)getIsReference:(id)a3 allowedToRunOnDomain:(id)a4 completion:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v10 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v13 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v14 = [v13 isReference:v16 allowedToRunOnDomain:v8];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    v9[2](v9, v15, 0);
    goto LABEL_6;
  }

  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v12 = [v11 isBackgroundShortcutRunner];

  if (v12)
  {
    goto LABEL_4;
  }

  v15 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (v9)[2](v9, 0, v15);
LABEL_6:
}

- (void)createWorkflowWithWorkflowData:(id)a3 name:(id)a4 nameCollisionBehavior:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v13 allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    v14 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    v15 = [v14 isBackgroundShortcutRunner];

    if ((v15 & 1) == 0)
    {
      v25 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
      v12[2](v12, 0, v25);

      goto LABEL_12;
    }
  }

  v28 = 0;
  v16 = [objc_alloc(MEMORY[0x277D7CA70]) initWithFileData:v10 name:0 error:&v28];
  v17 = v28;
  v18 = v17;
  if (v16)
  {
    v27 = v17;
    v19 = [v16 recordRepresentationWithError:&v27];
    v20 = v27;

    [v19 setName:v11];
    if (v19)
    {
      v21 = [objc_alloc(MEMORY[0x277D7CA68]) initWithRecord:v19];
      v22 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
      v26 = v20;
      v23 = [v22 createWorkflowWithOptions:v21 nameCollisionBehavior:a5 error:&v26];
      v24 = v26;

      (v12)[2](v12, v23, v24);
      v20 = v24;
    }

    else
    {
      v12[2](v12, 0, v20);
    }

    v18 = v20;
  }

  else
  {
    v12[2](v12, 0, v17);
  }

LABEL_12:
}

- (void)getConfiguredTriggerForTriggerID:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v7 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [v10 configuredTriggerForTriggerID:v12];

    v6[2](v6, v11, 0);
    goto LABEL_6;
  }

  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 isBackgroundShortcutRunner];

  if (v9)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (v6)[2](v6, 0, v11);
LABEL_6:
}

- (void)getConfiguredTriggersForWorkflowID:(id)a3 completion:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v7 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [v10 configuredTriggersForWorkflowID:v14];

    v12 = [v11 descriptors];
    v13 = [v11 fetchError];
    v6[2](v6, v12, v13);

    goto LABEL_6;
  }

  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 isBackgroundShortcutRunner];

  if (v9)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  v6[2](v6, 0, v11);
LABEL_6:
}

- (void)getFolderForWorkflowReference:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v7 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [v10 folderForWorkflowReference:v12];

    v6[2](v6, v11, 0);
    goto LABEL_6;
  }

  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 isBackgroundShortcutRunner];

  if (v9)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (v6)[2](v6, 0, v11);
LABEL_6:
}

- (void)getCollectionWithIdentifier:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v7 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [v10 collectionWithIdentifier:v12];

    v6[2](v6, v11, 0);
    goto LABEL_6;
  }

  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 isBackgroundShortcutRunner];

  if (v9)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (v6)[2](v6, 0, v11);
LABEL_6:
}

- (void)getSortedVisibleFoldersWithCompletion:(id)a3
{
  v11 = a3;
  v4 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v4 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v7 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v8 = [v7 sortedVisibleFolders];

    v9 = [v8 descriptors];
    v10 = [v8 fetchError];
    v11[2](v11, v9, v10);

    goto LABEL_6;
  }

  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v6 = [v5 isBackgroundShortcutRunner];

  if (v6)
  {
    goto LABEL_4;
  }

  v8 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  v11[2](v11, 0, v8);
LABEL_6:
}

- (void)getSortedWorkflowsWithQuery:(id)a3 completion:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v7 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [v10 sortedWorkflowsWithQuery:v15];

    v12 = [v11 descriptors];
    v13 = [v12 copy];
    v14 = [v11 fetchError];
    v6[2](v6, v13, v14);

    goto LABEL_6;
  }

  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 isBackgroundShortcutRunner];

  if (v9)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  v6[2](v6, 0, v11);
LABEL_6:
}

- (void)getSortedVisibleWorkflowsInCollection:(id)a3 completion:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v7 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [v10 sortedVisibleWorkflowsInCollection:v15];

    v12 = [v11 descriptors];
    v13 = [v12 copy];
    v14 = [v11 fetchError];
    v6[2](v6, v13, v14);

    goto LABEL_6;
  }

  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 isBackgroundShortcutRunner];

  if (v9)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  v6[2](v6, 0, v11);
LABEL_6:
}

- (void)getSortedVisibleWorkflowsByNameWithCompletion:(id)a3
{
  v12 = a3;
  v4 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v4 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v7 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v8 = [v7 sortedVisibleWorkflowsByName];

    v9 = [v8 descriptors];
    v10 = [v9 copy];
    v11 = [v8 fetchError];
    v12[2](v12, v10, v11);

    goto LABEL_6;
  }

  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v6 = [v5 isBackgroundShortcutRunner];

  if (v6)
  {
    goto LABEL_4;
  }

  v8 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  v12[2](v12, 0, v8);
LABEL_6:
}

- (void)getWorkflowRecordDataForDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v8 allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    v9 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    v10 = [v9 isBackgroundShortcutRunner];

    if ((v10 & 1) == 0)
    {
      v17 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
      v7[2](v7, 0, v17);

      goto LABEL_9;
    }
  }

  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  v19 = 0;
  v12 = [v11 recordWithDescriptor:v6 error:&v19];
  v13 = v19;

  if (v12)
  {
    v14 = [v12 fileRepresentation];
    v18 = v13;
    v15 = [v14 fileDataWithError:&v18];
    v16 = v18;

    v13 = v16;
  }

  else
  {
    v15 = 0;
  }

  (v7)[2](v7, v15, v13);

LABEL_9:
}

- (void)getUniqueVisibleReferenceForWorkflowName:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v7 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [v10 uniqueVisibleReferenceForWorkflowName:v12];

    v6[2](v6, v11);
    goto LABEL_6;
  }

  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 isBackgroundShortcutRunner];

  if (v9)
  {
    goto LABEL_4;
  }

  v6[2](v6, 0);
LABEL_6:
}

- (void)getReferenceForWorkflowID:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([v7 allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [v10 referenceForWorkflowID:v12];

    v6[2](v6, v11);
    goto LABEL_6;
  }

  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 isBackgroundShortcutRunner];

  if (v9)
  {
    goto LABEL_4;
  }

  v6[2](v6, 0);
LABEL_6:
}

- (id)database
{
  v2 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v3 = [v2 database];

  return v3;
}

- (void)dismissToastedSessionKitSessionsWithReason:(id)a3 completion:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (!v10)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:1066 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self runCoordinator];
  [v8 dismissToastedSessionKitSessionsWithReason:v10 completion:v7];
}

- (void)toastSessionKitSessionWithIdentifier:(id)a3 forDuration:(id)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v11 = [v10 isBackgroundShortcutRunner];

  if (v11)
  {
    v12 = [(VCVoiceShortcutManagerAccessWrapper *)self runCoordinator];
    [v12 toastSessionKitSessionWithIdentifier:v13 forDuration:v8 completion:v9];
  }

  else
  {
    v9[2](v9, 0);
  }
}

- (void)postNotificationAboutFailure:(id)a3 inWorkflow:(id)a4 dialogAttribution:(id)a5 runningContext:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v14 = [v13 isBackgroundShortcutRunner];

  if (v14)
  {
    v15 = [(VCVoiceShortcutManagerAccessWrapper *)self runCoordinator];
    [v15 postNotificationAboutFailure:v16 inWorkflow:v10 dialogAttribution:v11 runningContext:v12];
  }
}

- (void)postNotificationWithRequest:(id)a3 presentationMode:(unint64_t)a4 runningContext:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v10 = [v9 isBackgroundShortcutRunner];

  if (v10)
  {
    v11 = [(VCVoiceShortcutManagerAccessWrapper *)self runCoordinator];
    [v11 postNotificationWithRequest:v12 presentationMode:a4 runningContext:v8];
  }
}

- (void)requestSandboxExtensionForToolKitIndexingWithCompletion:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v6 = [v5 isBackgroundShortcutRunner];

  if (v6)
  {
    v7 = [MEMORY[0x277D7A0C8] allAvailableExtensionResourceClassNames];
    v8 = [(VCVoiceShortcutManagerAccessWrapper *)self sandboxExtensionManager];
    [(VCVoiceShortcutManagerAccessWrapper *)self auditToken];
    v20 = 0;
    v9 = [v8 requestSandboxExtensionForResources:v7 destinationProcessAuditToken:buf unauthorizedResources:&v20];
    v10 = v20;

    if ([v10 count])
    {
      v11 = getWFSecurityLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "[VCVoiceShortcutManagerAccessWrapper requestSandboxExtensionForToolKitIndexingWithCompletion:]";
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Failed to extend sandbox for access resources: %@", buf, 0x16u);
      }
    }

    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:CPSharedResourcesDirectory() isDirectory:1];
    v13 = [v12 URLByAppendingPathComponent:@"Library" isDirectory:1];
    v14 = [v13 URLByAppendingPathComponent:@"Shortcuts" isDirectory:1];
    v15 = [v14 URLByAppendingPathComponent:@"ToolKit" isDirectory:1];

    v16 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v15];
    v4[2](v4, v9, v16, 0);

    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (v4[2])(v4, 0, 0);

    v18 = *MEMORY[0x277D85DE8];
  }
}

- (void)requestSandboxExtensionForAccessResources:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 isBackgroundShortcutRunner];

  if (v9)
  {
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self sandboxExtensionManager];
    [(VCVoiceShortcutManagerAccessWrapper *)self auditToken];
    v13 = 0;
    v11 = [v10 requestSandboxExtensionForResources:v6 destinationProcessAuditToken:v14 unauthorizedResources:&v13];
    v12 = v13;

    v7[2](v7, v11, v12, 0);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (v7)[2](v7, 0, 0, v11);
  }
}

- (void)markMenuBarWorkflowAsMigratedWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v8 markMenuBarWorkflowAsMigratedWithIdentifiers:v7 completion:v6];
}

- (void)getRunShortcutIntentForWorkflow:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v8 getRunShortcutIntentForWorkflow:v7 completion:v6];
}

- (void)getSerializedParametersForLinkAction:(id)a3 actionMetadata:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v11 getSerializedParametersForLinkAction:v10 actionMetadata:v9 completion:v8];
}

- (void)getMigratedAppIntentWithINIntent:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v8 getMigratedAppIntentWithINIntent:v7 completion:v6];
}

- (void)getLinkActionWithAppBundleIdentifier:(id)a3 appIntentIdentifier:(id)a4 serializedParameterStates:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v14 getLinkActionWithAppBundleIdentifier:v13 appIntentIdentifier:v12 serializedParameterStates:v11 completion:v10];
}

- (void)unarchiveActionFromData:(id)a3 withActionMetadata:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v11 unarchiveActionFromData:v10 withActionMetadata:v9 completion:v8];
}

- (void)archiveAction:(id)a3 withActionMetadata:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v11 archiveAction:v10 withActionMetadata:v9 completion:v8];
}

- (void)removeAllSerializedParametersForQueryName:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v8 removeAllSerializedParametersForQueryName:v7 completion:v6];
}

- (void)storeSerializedParameters:(id)a3 forAppEntityIdentifier:(id)a4 queryName:(id)a5 badgeType:(unint64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v16 storeSerializedParameters:v15 forAppEntityIdentifier:v14 queryName:v13 badgeType:a6 completion:v12];
}

- (void)serializedParametersForAppEntityIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v8 serializedParametersForAppEntityIdentifier:v7 completion:v6];
}

- (void)updateAppShortcutsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v5 updateAppShortcutsWithCompletion:v4];
}

- (void)resetAutomationConfirmationStatusWithCompletion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v6 = [v5 allowResettingAutomationConfirmationLevel];

  if (v6)
  {
    v7 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    v8 = [v7 databaseProvider];
    v24 = 0;
    v9 = [v8 databaseWithError:&v24];
    v10 = v24;

    if (v9)
    {
      v11 = objc_opt_new();
      v12 = [v9 allConfiguredTriggers];
      v13 = [v12 descriptors];

      v14 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:v9];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __87__VCVoiceShortcutManagerAccessWrapper_resetAutomationConfirmationStatusWithCompletion___block_invoke;
      v21[3] = &unk_2788FF1F8;
      v22 = v14;
      v23 = v11;
      v15 = v11;
      v16 = v14;
      [v13 enumerateObjectsUsingBlock:v21];
      v17 = [v15 firstObject];
      v4[2](v4, v17);
    }

    else
    {
      v19 = getWFTriggerNotificationsLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[VCVoiceShortcutManagerAccessWrapper resetAutomationConfirmationStatusWithCompletion:]";
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_ERROR, "%s Couldn't access database when resetting automation confirmation status with error: %@!", buf, 0x16u);
      }

      v13 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 reason:@"Unable to load database"];
      v4[2](v4, v13);
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    v4[2](v4, v18);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __87__VCVoiceShortcutManagerAccessWrapper_resetAutomationConfirmationStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v4 updateNotificationLevel:0 forConfiguredTrigger:v3 error:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
    v7 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "[VCVoiceShortcutManagerAccessWrapper resetAutomationConfirmationStatusWithCompletion:]_block_invoke";
      v12 = 2114;
      v13 = v3;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Could not reset automation confirmation status for trigger: %{public}@ with error: %{public}@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)userHasAutomationsWithCompletion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v6 = [v5 allowResettingAutomationConfirmationLevel];

  if (v6)
  {
    v7 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    v8 = [v7 databaseProvider];
    v17 = 0;
    v9 = [v8 databaseWithError:&v17];
    v10 = v17;

    if (v9)
    {
      v11 = [v9 allConfiguredTriggers];
      v12 = [v11 count] != 0;

      v4[2](v4, v12, 0);
    }

    else
    {
      v14 = getWFTriggerNotificationsLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[VCVoiceShortcutManagerAccessWrapper userHasAutomationsWithCompletion:]";
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s Couldn't access database when checking if user has automations with error: %@!", buf, 0x16u);
      }

      v15 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 reason:@"Unable to load database"];
      (v4)[2](v4, 0, v15);
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (v4)[2](v4, 0, v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setPerWorkflowStateData:(id)a3 forSmartPromptWithActionUUID:(id)a4 reference:(id)a5 completion:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v14 = [v13 allowUnrestrictedAccess];

  if (v14)
  {
    v15 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    [v15 setPerWorkflowStateData:v17 forSmartPromptWithActionUUID:v10 reference:v11];

    v12[2](v12, 0);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    v12[2](v12, v16);

    v12 = v16;
  }
}

- (void)fetchURLForFPItem:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v8 = [v7 allowFileBookmarksAccess];

  if (v8)
  {
    v9 = [MEMORY[0x277CC6408] defaultManager];
    [v9 fetchURLForItem:v10 completionHandler:v6];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    v6[2](v6, 0, v9);
  }
}

- (void)createBookmarkWithBookmarkableString:(id)a3 path:(id)a4 workflowID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v15 = [v14 allowFileBookmarksAccess];

  if (v15)
  {
    v19 = v13;
    v17 = v12;
    v18 = v11;
    FPDocumentURLFromBookmarkableString();
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(v13 + 2))(v13, 0, v16);
  }
}

void __103__VCVoiceShortcutManagerAccessWrapper_createBookmarkWithBookmarkableString_path_workflowID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a2;
    v5 = [v4 startAccessingSecurityScopedResource];
    v20 = 0;
    v6 = [v4 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v20];
    v7 = v20;
    if (v6)
    {
      if (v5)
      {
        [v4 stopAccessingSecurityScopedResource];
      }

      v8 = [MEMORY[0x277D7C2F0] defaultDatabase];
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) stringByStandardizingPath];
      v19 = v7;
      v11 = [v8 createBookmarkWithWorkflowID:v9 path:v10 bookmarkData:v6 error:&v19];
      v12 = v19;

      v13 = getWFFilesLogObject();
      v14 = v13;
      if (v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v22 = "[VCVoiceShortcutManagerAccessWrapper createBookmarkWithBookmarkableString:path:workflowID:completion:]_block_invoke";
          _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEBUG, "%s Created local bookmark", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[VCVoiceShortcutManagerAccessWrapper createBookmarkWithBookmarkableString:path:workflowID:completion:]_block_invoke";
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s Failed to create local bookmark with error: %@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
      v7 = v12;
    }

    else
    {
      v17 = getWFFilesLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[VCVoiceShortcutManagerAccessWrapper createBookmarkWithBookmarkableString:path:workflowID:completion:]_block_invoke";
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Could not create bookmark data with error: %@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v16 = getWFFilesLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[VCVoiceShortcutManagerAccessWrapper createBookmarkWithBookmarkableString:path:workflowID:completion:]_block_invoke";
      v23 = 2112;
      v24 = a3;
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Could not create document url from bookmarkable string with error: %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)createBookmarkWithURL:(id)a3 workflowID:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v12 = [v11 allowFileBookmarksAccess];

  if (v12)
  {
    v13 = getWFFilesLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[VCVoiceShortcutManagerAccessWrapper createBookmarkWithURL:workflowID:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v29 = v9;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_DEFAULT, "%s Attempting to create local bookmark with URL: %@ workflowID: %@", buf, 0x20u);
    }

    v14 = [v8 url];
    v15 = [v14 startAccessingSecurityScopedResource];

    v16 = objc_opt_new();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v29 = __Block_byref_object_copy__4916;
    v30 = __Block_byref_object_dispose__4917;
    v31 = 0;
    v17 = [v8 url];
    v18 = (*&buf[8] + 40);
    obj = *(*&buf[8] + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __83__VCVoiceShortcutManagerAccessWrapper_createBookmarkWithURL_workflowID_completion___block_invoke;
    v21[3] = &unk_2788FF1A8;
    v22 = v8;
    v24 = v10;
    v25 = buf;
    v26 = v15;
    v23 = v9;
    [v16 coordinateReadingItemAtURL:v17 options:0 error:&obj byAccessor:v21];
    objc_storeStrong(v18, obj);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(v10 + 2))(v10, 0, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __83__VCVoiceShortcutManagerAccessWrapper_createBookmarkWithURL_workflowID_completion___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 wf_fileIsReadable] & 1) == 0)
  {
    v17 = getWFFilesLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [*(a1 + 32) url];
      *buf = 136315650;
      v29 = "[VCVoiceShortcutManagerAccessWrapper createBookmarkWithURL:workflowID:completion:]_block_invoke";
      v30 = 2112;
      v31 = v3;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Do not have access to new url: %@ original url: %@ during coordinated read", buf, 0x20u);
    }

    v5 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:10002 reason:@"Could not create bookmark for file."];
    v16 = *(*(a1 + 48) + 16);
    goto LABEL_16;
  }

  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v3 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (*(a1 + 64) == 1)
  {
    v6 = [*(a1 + 32) url];
    [v6 stopAccessingSecurityScopedResource];
  }

  if (v5)
  {
    if (!*(a1 + 40))
    {
LABEL_10:
      v14 = getWFFilesLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v29 = "[VCVoiceShortcutManagerAccessWrapper createBookmarkWithURL:workflowID:completion:]_block_invoke";
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_INFO, "%s Created local bookmark", buf, 0xCu);
      }

      v15 = *(*(*(a1 + 56) + 8) + 40);
      v16 = *(*(a1 + 48) + 16);
LABEL_16:
      v16();
      goto LABEL_23;
    }

    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[VCVoiceShortcutManagerAccessWrapper createBookmarkWithURL:workflowID:completion:]_block_invoke";
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_INFO, "%s Workflow identifier present persisting to database", buf, 0xCu);
    }

    v8 = [MEMORY[0x277D7C2F0] defaultDatabase];
    v9 = *(a1 + 40);
    v10 = [v3 path];
    v11 = [v10 stringByStandardizingPath];
    v12 = *(*(a1 + 56) + 8);
    v26 = *(v12 + 40);
    v13 = [v8 createBookmarkWithWorkflowID:v9 path:v11 bookmarkData:v5 error:&v26];
    objc_storeStrong((v12 + 40), v26);

    if (v13)
    {

      goto LABEL_10;
    }

    v22 = getWFFilesLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 136315394;
      v29 = "[VCVoiceShortcutManagerAccessWrapper createBookmarkWithURL:workflowID:completion:]_block_invoke";
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_ERROR, "%s Failed to save local bookmark with error: %@", buf, 0x16u);
    }

    v24 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v19 = getWFFilesLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 136315394;
      v29 = "[VCVoiceShortcutManagerAccessWrapper createBookmarkWithURL:workflowID:completion:]_block_invoke";
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_ERROR, "%s Could not create bookmark data with error: %@", buf, 0x16u);
    }

    v21 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
    v5 = 0;
  }

LABEL_23:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)resolveCrossDeviceItemID:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 allowFileBookmarksAccess];

  if (v9)
  {
    v10 = getWFFilesLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v15 = "[VCVoiceShortcutManagerAccessWrapper resolveCrossDeviceItemID:completion:]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Resolving itemID: %@", buf, 0x16u);
    }

    if (v6)
    {
      v13 = v7;
      FPItemURLForCrossDeviceItemID();
    }

    else
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(v7 + 2))(v7, 0, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __75__VCVoiceShortcutManagerAccessWrapper_resolveCrossDeviceItemID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = getWFFilesLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[VCVoiceShortcutManagerAccessWrapper resolveCrossDeviceItemID:completion:]_block_invoke";
    v11 = 2112;
    v12 = a2;
    v13 = 2112;
    v14 = a3;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEBUG, "%s Resolved to url: %@ with error: %@", &v9, 0x20u);
  }

  result = (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resolveBookmarkData:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32[0] = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4916;
  v29 = __Block_byref_object_dispose__4917;
  v30 = 0;
  obj = 0;
  v7 = [MEMORY[0x277CBEBC0] URLByResolvingBookmarkData:v5 options:0 relativeToURL:0 bookmarkDataIsStale:v32 error:&obj];
  objc_storeStrong(&v30, obj);
  if (!v7)
  {
    v11 = [v26[5] domain];
    v12 = *MEMORY[0x277CCA050];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v13 = [v26[5] code];

      if (v13 != 259)
      {
LABEL_7:
        (*(v6 + 2))(v6, 0, 0, v26[5]);
        goto LABEL_8;
      }

      v14 = MEMORY[0x277CCA9B8];
      v11 = [v26[5] userInfo];
      v15 = [v14 errorWithDomain:v12 code:4 userInfo:v11];
      v16 = v26[5];
      v26[5] = v15;
    }

    goto LABEL_7;
  }

  v8 = [v7 startAccessingSecurityScopedResource];
  v9 = objc_opt_new();
  v10 = (v26 + 5);
  v23 = v26[5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__VCVoiceShortcutManagerAccessWrapper_resolveBookmarkData_completion___block_invoke;
  v17[3] = &unk_2788FF158;
  v20 = &v25;
  v18 = v7;
  v21 = v31;
  v22 = v8;
  v19 = v6;
  [v9 coordinateReadingItemAtURL:v18 options:0 error:&v23 byAccessor:v17];
  objc_storeStrong(v10, v23);

LABEL_8:
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(v31, 8);
}

void __70__VCVoiceShortcutManagerAccessWrapper_resolveBookmarkData_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 wf_fileIsWritable];
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [MEMORY[0x277CC6438] wrapperWithURL:v3 readonly:v4 ^ 1u error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = getWFFilesLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    *buf = 136315394;
    v17 = "[VCVoiceShortcutManagerAccessWrapper resolveBookmarkData:completion:]_block_invoke";
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEBUG, "%s Created bookmark url: %@ from bookmark data", buf, 0x16u);
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v14 = 0;
    v9 = [v3 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v14];
    v10 = v14;
    if (!v9)
    {
      v11 = getWFFilesLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "[VCVoiceShortcutManagerAccessWrapper resolveBookmarkData:completion:]_block_invoke";
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Could not create bookmark data from resolved url with error: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  v12 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)resolveFilePath:(id)a3 workflowID:(id)a4 completion:(id)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v12 = [v11 allowFileBookmarksAccess];

  if (v12)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__4916;
    v51 = __Block_byref_object_dispose__4917;
    v52 = 0;
    v13 = [v8 stringByStandardizingPath];
    v14 = [MEMORY[0x277D7C2F0] defaultDatabase];
    v15 = (v48 + 5);
    obj = v48[5];
    v16 = [v14 bookmarkDataForWorkflowID:v9 path:v13 error:&obj];
    objc_storeStrong(v15, obj);
    if (v16)
    {
      v37 = v14;
      v45 = 0;
      v17 = MEMORY[0x277CBEBC0];
      v18 = [v16 bookmarkData];
      v19 = (v48 + 5);
      v44 = v48[5];
      v20 = [v17 URLByResolvingBookmarkData:v18 options:0 relativeToURL:0 bookmarkDataIsStale:&v45 error:&v44];
      objc_storeStrong(v19, v44);

      if (v20)
      {
        v21 = [v20 startAccessingSecurityScopedResource];
        v22 = objc_opt_new();
        v23 = (v48 + 5);
        v43 = v48[5];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __77__VCVoiceShortcutManagerAccessWrapper_resolveFilePath_workflowID_completion___block_invoke;
        v38[3] = &unk_2788FF130;
        v39 = v20;
        v41 = &v47;
        v42 = v21;
        v40 = v10;
        [v22 coordinateReadingItemAtURL:v39 options:0 error:&v43 byAccessor:v38];
        objc_storeStrong(v23, v43);
      }

      else
      {
        v27 = getWFFilesLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = v48[5];
          *buf = 136315650;
          v54 = "[VCVoiceShortcutManagerAccessWrapper resolveFilePath:workflowID:completion:]";
          v55 = 2112;
          v56 = v16;
          v57 = 2112;
          v58 = v28;
          _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_ERROR, "%s Failed to create bookmark from %@ with error %@", buf, 0x20u);
        }

        v29 = MEMORY[0x277CCA9B8];
        v30 = [v48[5] localizedFailureReason];
        v31 = [v29 vc_voiceShortcutErrorWithCode:10003 reason:{@"%@", v30}];
        v32 = v48[5];
        v48[5] = v31;

        (*(v10 + 2))(v10, 0, v48[5]);
      }

      v14 = v37;
    }

    else
    {
      if (v48[5])
      {
        v25 = getWFFilesLogObject();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = v48[5];
          *buf = 136315906;
          v54 = "[VCVoiceShortcutManagerAccessWrapper resolveFilePath:workflowID:completion:]";
          v55 = 2112;
          v56 = v13;
          v57 = 2112;
          v58 = v9;
          v59 = 2112;
          v60 = v26;
          _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_ERROR, "%s Failed to look up bookmark for path %@ workflowID %@, with error %@", buf, 0x2Au);
        }
      }

      else
      {
        v33 = getWFFilesLogObject();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v54 = "[VCVoiceShortcutManagerAccessWrapper resolveFilePath:workflowID:completion:]";
          v55 = 2112;
          v56 = v13;
          v57 = 2112;
          v58 = v9;
          _os_log_impl(&dword_23103C000, v33, OS_LOG_TYPE_ERROR, "%s No bookmark found for path %@ workflowID %@", buf, 0x20u);
        }

        v25 = WFLocalizedString(@"No bookmark found for file.");
        v34 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:10001 reason:{@"%@", v25}];
        v35 = v48[5];
        v48[5] = v34;
      }

      (*(v10 + 2))(v10, 0, v48[5]);
    }

    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(v10 + 2))(v10, 0, v24);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __77__VCVoiceShortcutManagerAccessWrapper_resolveFilePath_workflowID_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 wf_fileIsWritable];
  v5 = getWFFilesLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    *buf = 136315394;
    v13 = "[VCVoiceShortcutManagerAccessWrapper resolveFilePath:workflowID:completion:]_block_invoke";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEBUG, "%s Created URL %@ from bookmark", buf, 0x16u);
  }

  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [MEMORY[0x277CC6438] wrapperWithURL:v3 readonly:v4 ^ 1u error:&obj];

  objc_storeStrong((v7 + 40), obj);
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  v9 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)getLinkActionWithAppBundleIdentifier:(id)a3 appIntentIdentifier:(id)a4 expandingParameterName:(id)a5 limit:(int64_t)a6 completion:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v16 = [v15 allowFullRuntimeAccess];

  if (v16)
  {
    v17 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    [v17 getLinkActionWithAppBundleIdentifier:v18 appIntentIdentifier:v12 expandingParameterName:v13 limit:a6 completion:v14];
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(v14 + 2))(v14, 0, 0, v17);
  }
}

- (void)getUpcomingMediaForBundleIdentifier:(id)a3 limit:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v11 = [v10 allowFullRuntimeAccess];

  if ((v11 & 1) == 0)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Access was denied";
    v24 = 1011;
LABEL_10:
    v13 = [v22 vc_voiceShortcutErrorWithCode:v24 reason:v23];
    v9[2](v9, 0, v13);
    goto LABEL_11;
  }

  if (!getMRMediaSuggestionRequestClass())
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Cannot fetch upcoming media query";
    v24 = 0;
    goto LABEL_10;
  }

  v12 = objc_alloc(getMRMediaSuggestionRequestClass());
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __92__VCVoiceShortcutManagerAccessWrapper_getUpcomingMediaForBundleIdentifier_limit_completion___block_invoke;
  v30[3] = &__block_descriptor_40_e72_v16__0__MRMediaSuggestionRequest_MRMediaSuggestionRequestConfigurable__8l;
  v30[4] = a4;
  v13 = [v12 initWithBlock:v30];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v14 = getMRMediaSuggestionRequestOptionsClass_softClass;
  v39 = getMRMediaSuggestionRequestOptionsClass_softClass;
  if (!getMRMediaSuggestionRequestOptionsClass_softClass)
  {
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __getMRMediaSuggestionRequestOptionsClass_block_invoke;
    v34 = &unk_2788FFE98;
    v35 = &v36;
    __getMRMediaSuggestionRequestOptionsClass_block_invoke(&v31);
    v14 = v37[3];
  }

  v15 = v14;
  _Block_object_dispose(&v36, 8);
  v16 = [v14 alloc];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __92__VCVoiceShortcutManagerAccessWrapper_getUpcomingMediaForBundleIdentifier_limit_completion___block_invoke_2;
  v28[3] = &unk_2788FF0E0;
  v17 = v8;
  v29 = v17;
  v18 = [v16 initWithBlock:v28];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v19 = getMRMediaSuggestionPreferencesClass_softClass;
  v39 = getMRMediaSuggestionPreferencesClass_softClass;
  if (!getMRMediaSuggestionPreferencesClass_softClass)
  {
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __getMRMediaSuggestionPreferencesClass_block_invoke;
    v34 = &unk_2788FFE98;
    v35 = &v36;
    __getMRMediaSuggestionPreferencesClass_block_invoke(&v31);
    v19 = v37[3];
  }

  v20 = v19;
  _Block_object_dispose(&v36, 8);
  v21 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__VCVoiceShortcutManagerAccessWrapper_getUpcomingMediaForBundleIdentifier_limit_completion___block_invoke_3;
  v25[3] = &unk_2788FF030;
  v27 = v9;
  v26 = v17;
  [v13 performWithPreferences:v21 options:v18 completion:v25];

LABEL_11:
}

void __92__VCVoiceShortcutManagerAccessWrapper_getUpcomingMediaForBundleIdentifier_limit_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setMaxResults:v2];
  [v3 setIncludeArtwork:1];
}

void __92__VCVoiceShortcutManagerAccessWrapper_getUpcomingMediaForBundleIdentifier_limit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v6 count:1];
  [v3 setBundleIdentifiers:{v4, v6, v7}];

  v5 = *MEMORY[0x277D85DE8];
}

void __92__VCVoiceShortcutManagerAccessWrapper_getUpcomingMediaForBundleIdentifier_limit_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v11 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:0 reason:@"Failed to fetch upcoming media query"];
    (*(v11 + 16))(v11, 0, v9);
LABEL_9:

    return;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v7 = getMRSuggestionContextHomeScreenSymbolLoc_ptr;
  v24 = getMRSuggestionContextHomeScreenSymbolLoc_ptr;
  if (!getMRSuggestionContextHomeScreenSymbolLoc_ptr)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __getMRSuggestionContextHomeScreenSymbolLoc_block_invoke;
    v19 = &unk_2788FFE98;
    v20 = &v21;
    v8 = MediaRemoteLibrary();
    v22[3] = dlsym(v8, "MRSuggestionContextHomeScreen");
    getMRSuggestionContextHomeScreenSymbolLoc_ptr = *(v20[1] + 24);
    v7 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (v7)
  {
    v9 = [v5 objectForKeyedSubscript:*v7];
    if (v9)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __92__VCVoiceShortcutManagerAccessWrapper_getUpcomingMediaForBundleIdentifier_limit_completion___block_invoke_4;
      v14[3] = &unk_2788FF108;
      v15 = *(a1 + 32);
      v10 = [v9 if_compactMap:v14];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), MEMORY[0x277CBEBF8], 0);
    }

    goto LABEL_9;
  }

  v12 = [MEMORY[0x277CCA890] currentHandler];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"MRSuggestionContext getMRSuggestionContextHomeScreen(void)"];
  [v12 handleFailureInFunction:v13 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:78 description:{@"%s", dlerror()}];

  __break(1u);
}

id __92__VCVoiceShortcutManagerAccessWrapper_getUpcomingMediaForBundleIdentifier_limit_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:@"intent"];
  if (([*(a1 + 32) isEqualToString:*MEMORY[0x277D7A288]] & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", *MEMORY[0x277D7A2B0]))
  {
    v5 = objc_alloc(MEMORY[0x277D79ED8]);
    v6 = [v3 artwork];
    v7 = [v6 imageData];
    v8 = [v5 initWithPlayMediaIntent:v4 artwork:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)getSuggestedShortcutsWithLimit:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v8 = [v7 allowFullRuntimeAccess];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D7A1F8]) initWithLocation:0];
    [v9 setResultsLimit:a3];
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [v10 sortedWorkflowsWithQuery:v9];

    v12 = [v11 descriptors];

    if (v12)
    {
      v13 = MEMORY[0x277D7A1D0];
      v14 = [v11 descriptors];
      v15 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __81__VCVoiceShortcutManagerAccessWrapper_getSuggestedShortcutsWithLimit_completion___block_invoke;
      v17[3] = &unk_2788FF098;
      v18 = v6;
      [v13 getObjectsFromReferences:v14 databaseProvider:v15 completion:v17];
    }

    else
    {
      v16 = [v11 fetchError];
      (*(v6 + 2))(v6, 0, v16);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(v6 + 2))(v6, 0, v9);
  }
}

void __81__VCVoiceShortcutManagerAccessWrapper_getSuggestedShortcutsWithLimit_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = [a2 if_compactMap:&__block_literal_global_243_4954];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

id __81__VCVoiceShortcutManagerAccessWrapper_getSuggestedShortcutsWithLimit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = objc_alloc(MEMORY[0x277D7CA90]);
  v6 = [v4 name];
  v7 = [v4 identifier];
  v8 = [v5 initWithWorkflowName:v6 workflowIdentifier:v7 isSelf:0];

  v9 = [objc_alloc(MEMORY[0x277D7CA88]) initWithValue:v8];
  v10 = objc_alloc(MEMORY[0x277D79EE0]);
  v11 = [v9 serializedRepresentation];
  v12 = [v10 initWithDescriptor:v4 serializedRepresentation:v11];

  return v12;
}

- (void)computeFinderResizedSizesForImages:(id)a3 inSizes:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v12 = [v11 allowFullRuntimeAccess];

  if (v12)
  {
    v16 = 0;
    v13 = [MEMORY[0x277D7A080] computeFinderResizedSizesForImages:v8 inSizes:v9 error:&v16];
    v14 = v16;
    v10[2](v10, v13, v14);
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    v10[2](v10, 0, v15);
  }
}

- (void)showSingleStepCompletionForWebClip:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 isSpringBoard];

  if (v9)
  {
    v10 = [(VCVoiceShortcutManagerAccessWrapper *)self runCoordinator];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __85__VCVoiceShortcutManagerAccessWrapper_showSingleStepCompletionForWebClip_completion___block_invoke;
    v13[3] = &unk_2788FF730;
    v14 = v7;
    [v10 showSingleStepCompletionWithWebClipMetadata:v6 completion:v13];

    v11 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    [v11 logHomescreenFastPathRunEventForShortcutWithWebClip:v6];
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (must be SpringBoard)"];
    (*(v7 + 2))(v7, v12);
  }
}

- (void)getStingWorkflowWithIdentifier:(id)a3 completion:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v8 = [v7 allowReadAccessToShortcutsLibrary];

  if (v8)
  {
    v9 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    v10 = [v9 database];

    if (v10)
    {
      v11 = [v10 referenceForWorkflowID:v20];
      if (v11)
      {
        v12 = objc_alloc(MEMORY[0x277D7A148]);
        v13 = [v11 identifier];
        v14 = [v11 name];
        v15 = [v11 color];
        v16 = [v11 glyphCharacter];
        v17 = [v11 associatedAppBundleIdentifier];
        v18 = [v11 searchAttributionAppBundleIdentifier];
        v19 = [v12 initWithIdentifier:v13 name:v14 color:v15 glyphCharacter:v16 associatedAppBundleIdentifier:v17 searchAttributionAppBundleIdentifier:v18];

        v6[2](v6, v19, 0);
      }

      else
      {
        v6[2](v6, 0, 0);
      }
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 reason:@"Unable to load database"];
      (v6)[2](v6, 0, v11);
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (v6)[2](v6, 0, v10);
  }
}

- (void)getStingWorkflowsWithCompletion:(id)a3
{
  v11 = a3;
  v4 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v5 = [v4 allowReadAccessToShortcutsLibrary];

  if (v5)
  {
    v6 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    v7 = [v6 database];

    if (v7)
    {
      v8 = [v7 sortedVisibleWorkflowsWithType:*MEMORY[0x277D7A8B0]];
      v9 = [v8 descriptors];

      v10 = [v9 if_map:&__block_literal_global_4966];
      v11[2](v11, v10, 0);
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 reason:@"Unable to load database"];
      (v11)[2](v11, 0, v9);
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (v11)[2](v11, 0, v7);
  }
}

id __71__VCVoiceShortcutManagerAccessWrapper_getStingWorkflowsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7A148];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 identifier];
  v6 = [v3 name];
  v7 = [v3 color];
  v8 = [v3 glyphCharacter];
  v9 = [v3 associatedAppBundleIdentifier];
  v10 = [v3 searchAttributionAppBundleIdentifier];

  v11 = [v4 initWithIdentifier:v5 name:v6 color:v7 glyphCharacter:v8 associatedAppBundleIdentifier:v9 searchAttributionAppBundleIdentifier:v10];

  return v11;
}

- (void)getFirstUnsortedWorkflowWithCompletion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v6 = [v5 allowReadAccessToShortcutsLibrary];

  if (v6)
  {
    v7 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    v8 = [v7 database];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277D7A1F8]) initWithLocation:0];
      [v9 setResultsLimit:1];
      v10 = [v8 sortedWorkflowsWithQuery:v9];
      v11 = [v10 descriptors];
      v12 = [v11 firstObject];

      if (v12)
      {
        v13 = objc_alloc(MEMORY[0x277D7A1D0]);
        v14 = [v12 identifier];
        v15 = [v12 name];
        v16 = [v12 color];
        v17 = [v12 glyphCharacter];
        v18 = [v12 associatedAppBundleIdentifier];
        [v12 searchAttributionAppBundleIdentifier];
        v19 = v26 = v9;
        v20 = [v13 initWithIdentifier:v14 name:v15 color:v16 glyphCharacter:v17 associatedAppBundleIdentifier:v18 searchAttributionAppBundleIdentifier:v19];

        v21 = MEMORY[0x277CCABB0];
        v22 = [v12 icon];
        v23 = [v21 numberWithInteger:{objc_msgSend(v22, "backgroundColorValue")}];

        v4[2](v4, v20, v23, 0);
        v9 = v26;
      }

      else
      {
        v24 = getWFWidgetLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v28 = "[VCVoiceShortcutManagerAccessWrapper getFirstUnsortedWorkflowWithCompletion:]";
          _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_DEFAULT, "%s Unable to get first unsorted workflow, nothing was returned by the query", buf, 0xCu);
        }

        v4[2](v4, 0, 0, 0);
      }
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 reason:@"Unable to load database"];
      (v4)[2](v4, 0, 0, v9);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (v4)[2](v4, 0, 0, v8);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)sendAceCommandDictionary:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v9 = [v8 allowIntentsExtensionDiscovery];

  if (v9)
  {
    v10 = [MEMORY[0x277D7C7B8] sharedCoordinator];
    if ([v10 hasPairedDevice])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __75__VCVoiceShortcutManagerAccessWrapper_sendAceCommandDictionary_completion___block_invoke;
      v12[3] = &unk_2788FF030;
      v14 = v7;
      v13 = v10;
      [v13 sendAceCommandDictionary:v6 completion:v12];
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:9001 reason:@"No paired device"];
      (*(v7 + 2))(v7, 0, v11);
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(v7 + 2))(v7, 0, v10);
  }
}

- (void)createShortcutWithRecordData:(id)a3 name:(id)a4 shortcutSource:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v14 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v15 createShortcutWithRecordData:v13 name:v12 shortcutSource:v11 accessSpecifier:v14 completion:v10];
}

- (void)obliterateShortcuts:(id)a3
{
  v4 = a3;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v6 = [v5 isRemovalService];

  if (v6)
  {
    v7 = [(VCVoiceShortcutManagerAccessWrapper *)self syncDataEndpoint];
    v8 = [v7 syncDataHandlers];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;

    v12 = [VCShortcutsObliterator alloc];
    v13 = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    v14 = [(VCShortcutsObliterator *)v12 initWithTriggerRegistrar:v13 syncDataHandlers:v11];

    v17 = 0;
    [(VCShortcutsObliterator *)v14 obliterate:&v17];
    v15 = v17;
    v4[2](v4, v15);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (must be called from ShortcutsRemovalService)"];
    v4[2](v4, v16);
  }
}

- (void)getOnScreenContentWithOptions:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v8 = [v7 allowReadingOnScreenContent];

  if (v8)
  {
    v9 = objc_alloc_init(WFOnScreenContentManager);
    [(WFOnScreenContentManager *)v9 getOnScreenContentWithOptions:v10 completionHandler:v6];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    v6[2](v6, 0, v9);
  }
}

- (void)getOnScreenContentWithOptions:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v8 = [v7 allowReadingOnScreenContent];

  if (v8)
  {
    v9 = objc_alloc_init(WFOnScreenContentManager);
    [(WFOnScreenContentManager *)v9 getOnScreenContentWithOptions:v10 completion:v6];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    v6[2](v6, 0, v9);
  }
}

- (void)getVaultItemsAccessForBackgroundRunner:(id)a3
{
  v4 = a3;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v6 = [v5 isBackgroundShortcutRunner];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCAC90]);
    v8 = WFAssetsDirectory();
    v17 = [v7 initWithURL:v8 readonly:1];

    v9 = [MEMORY[0x277CBEBC0] wf_shortcutsDirectoryURL];
    v10 = [v9 URLByAppendingPathComponent:@"ssh" isDirectory:1];

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v10 path];
    v13 = [v11 fileExistsAtPath:v12 isDirectory:0];

    if ((v13 & 1) == 0)
    {
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      [v14 createDirectoryAtURL:v10 withIntermediateDirectories:0 attributes:0 error:0];
    }

    v15 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v10 readonly:0];
    v16 = [MEMORY[0x277CBEB98] setWithObjects:{v17, v15, 0, 0}];
    v4[2](v4, v16);
  }

  else
  {
    v17 = objc_opt_new();
    (v4[2])(v4);
    v10 = v4;
  }
}

- (void)deleteTriggerWithIdentifier:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v8 = [v7 allowWriteAccessForTriggers];

  if (v8)
  {
    v9 = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    [v9 deleteTriggerWithIdentifier:v10 completion:v6];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no write access to triggers)"];
    v6[2](v6, 0, v9);
  }
}

- (void)checkTriggerStateWithKeyPath:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v8 = [v7 allowReadAccessForTriggers];

  if (v8)
  {
    v9 = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    v10 = [v9 coreDuetListener];
    [v10 checkTriggerStateWithKeyPath:v11 completion:v6];

    v6 = v10;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no read access to triggers)"];
    (*(v6 + 2))(v6, 0, v9);
  }
}

- (void)checkTriggerStateWithIdentifier:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v8 = [v7 allowReadAccessForTriggers];

  if (v8)
  {
    v9 = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    v10 = [v9 coreDuetListener];
    [v10 checkTriggerStateWithIdentifier:v11 completion:v6];

    v6 = v10;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no read access to triggers)"];
    (*(v6 + 2))(v6, 0, 0, v9);
  }
}

- (void)fireTriggerWithIdentifier:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v11 = [v10 allowReadAccessForTriggers];

  if (v11)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__VCVoiceShortcutManagerAccessWrapper_fireTriggerWithIdentifier_force_completion___block_invoke;
    v13[3] = &unk_2788FF008;
    v13[4] = self;
    v14 = v8;
    v16 = a4;
    v15 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no read access to triggers)"];
    (*(v9 + 2))(v9, 0, v12);
  }
}

void __82__VCVoiceShortcutManagerAccessWrapper_fireTriggerWithIdentifier_force_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) triggerRegistrar];
  [v2 fireTriggerWithIdentifier:*(a1 + 40) force:*(a1 + 56) eventInfo:MEMORY[0x277CBEC10] completion:*(a1 + 48)];
}

- (void)getConfiguredTriggerDescriptionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v6 = [v5 allowReadAccessForTriggers];

  if (v6)
  {
    v7 = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    [v7 getConfiguredTriggerDescriptionsWithCompletion:v4];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no read access to triggers)"];
    v4[2](v4, 0);
  }
}

- (void)unregisterTriggerWithIdentifier:(id)a3 triggerBacking:(int64_t)a4 completion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v11 = [v10 allowWriteAccessForTriggers];

  if (v11)
  {
    v12 = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    [v12 unregisterTriggerWithIdentifier:v8 triggerBacking:a4];

    v9[2](v9, 1, 0);
  }

  else
  {
    v13 = getWFTriggersLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
      v17 = 136315394;
      v18 = "[VCVoiceShortcutManagerAccessWrapper unregisterTriggerWithIdentifier:triggerBacking:completion:]";
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_ERROR, "%s Denying access to trigger writes for accessSpecifier (%@)", &v17, 0x16u);
    }

    v15 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no write access to triggers)"];
    v9[2](v9, 0, v15);

    v9 = v15;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)refreshTriggerWithIdentifier:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[VCVoiceShortcutManagerAccessWrapper refreshTriggerWithIdentifier:completion:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Refresh trigger with identifier %@.", &v16, 0x16u);
  }

  v9 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v10 = [v9 allowWriteAccessForTriggers];

  if (v10)
  {
    v11 = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    v12 = v11;
    if (v6)
    {
      [v11 registerTriggerWithIdentifier:v6 completion:v7];
    }

    else
    {
      [v11 registerAllTriggersWithCompletion:v7];
    }
  }

  else
  {
    v13 = getWFTriggersLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
      v16 = 136315394;
      v17 = "[VCVoiceShortcutManagerAccessWrapper refreshTriggerWithIdentifier:completion:]";
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_ERROR, "%s Denying access to trigger writes for accessSpecifier (%@)", &v16, 0x16u);
    }

    v12 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no write access to triggers)"];
    v7[2](v7, 0, v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)getSiriPodcastsDatabaseURLWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v6 = [v5 allowReadAccessToPodcastsDatabase];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CC1E70]);
    v8 = *MEMORY[0x277D7A2B0];
    v15 = 0;
    v9 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v15];
    v10 = v15;
    if (v9)
    {
      v11 = [v9 dataContainerURL];
      v12 = [v11 URLByAppendingPathComponent:@"Documents/PodcastsDB.plist"];

      v13 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v12 readonly:1];
      v4[2](v4, v13, 0);
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1001 underlyingError:v10];
      (v4)[2](v4, 0, v12);
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no read access to podcasts database)"];
    (v4)[2](v4, 0, v14);
  }
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4 inDomain:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v16 = 0;
  v14 = [VCGuardedPreferencesManager setInteger:a3 forKey:v12 inDomain:v11 withAccessSpecifier:v13 error:&v16];

  v15 = v16;
  v10[2](v10, v14, v15);
}

- (void)triggerFullContextualActionReindexWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v5 triggerFullContextualActionReindexWithCompletion:v4];
}

- (void)generateSingleUseTokenForWorkflowIdentifier:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v8 = [v7 allowReadAccessToShortcutsLibrary];

  if (v8)
  {
    v9 = [(VCVoiceShortcutManagerAccessWrapper *)self shareSheetProvider];
    v10 = [v9 generateSingleUseTokenForWorkflowIdentifier:v11];
    v6[2](v6, v10, 0);

    v6 = v10;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (v6)[2](v6, 0, v9);
  }
}

- (void)getValueForDescriptor:(id)a3 resultClassName:(id)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v11 = [v10 allowReadAccessToShortcutsLibrary];

  if (v11)
  {
    v12 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    [v12 getValueForDescriptor:v13 resultClass:NSClassFromString(v8) completion:v9];
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    v9[2](v9, 0, v12);
  }
}

- (void)getResultsForQuery:(id)a3 resultClassName:(id)a4 completion:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v12 = [v11 allowReadAccessToShortcutsLibrary];

  v13 = v8;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = [v13 workflowType];
    if ([v14 isEqualToString:*MEMORY[0x277D7A8A8]])
    {
      v15 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
      v16 = [v15 allowReadAccessForSleepWorkflows];

      v12 |= v16;
    }

    v17 = v13;
    if ((v12 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    v17 = 0;
    if ((v12 & 1) == 0)
    {
LABEL_6:
      v18 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
      (*(v10 + 2))(v10, 0, 0, v18);
      goto LABEL_16;
    }
  }

  v19 = getWFGeneralLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    v21 = [v20 bundleIdentifier];
    v31 = 136315650;
    v32 = "[VCVoiceShortcutManagerAccessWrapper getResultsForQuery:resultClassName:completion:]";
    v33 = 2112;
    v34 = v13;
    v35 = 2112;
    v36 = v21;
    _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_INFO, "%s Running query: %@ for client: %@", &v31, 0x20u);
  }

  v22 = getWFGeneralLogObject();
  v23 = os_signpost_id_generate(v22);

  v24 = getWFGeneralLogObject();
  v25 = v24;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    v26 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    v27 = [v26 bundleIdentifier];
    v31 = 138412290;
    v32 = v27;
    _os_signpost_emit_with_name_impl(&dword_23103C000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "GetResultsForXPCQuery", "client=%{signpost.description:attribute}@", &v31, 0xCu);
  }

  v28 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v28 getResultsForQuery:v13 resultClass:NSClassFromString(v9) completion:v10];

  v29 = getWFGeneralLogObject();
  v18 = v29;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_23103C000, v18, OS_SIGNPOST_INTERVAL_END, v23, "GetResultsForXPCQuery", "", &v31, 2u);
  }

LABEL_16:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)getShareSheetWorkflowsForExtensionMatchingDictionaries:(id)a3 hostBundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v12 = [v11 allowReadAccessToShortcutsLibrary];

  if (v12)
  {
    v13 = [(VCVoiceShortcutManagerAccessWrapper *)self shareSheetProvider];
    v17 = 0;
    v14 = [v13 shareSheetWorkflowsForExtensionMatchingDictionaries:v8 hostBundleIdentifier:v9 error:&v17];
    v15 = v17;

    v10[2](v10, v14, v15);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    v10[2](v10, 0, v16);
  }
}

- (void)requestDataMigration:(id)a3
{
  v4 = a3;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [v5 requestDataMigrationWithCompletion:v4];
}

- (void)describeSyncStateIncludingDeleted:(BOOL)a3 completion:(id)a4
{
  v8 = a4;
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v6 = [v5 allowUnrestrictedAccess];

  if (v6)
  {
    (*(v8 + 2))(v8, 0, 0);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(v8 + 2))(v8, 0, v7);
  }
}

- (void)getShortcutSuggestionsForAllAppsWithLimit:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v7 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v8 getShortcutSuggestionsForAllAppsWithLimit:a3 accessSpecifier:v7 completion:v6];
}

- (void)getShortcutSuggestionsForAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v9 getShortcutSuggestionsForAppWithBundleIdentifier:v7 accessSpecifier:v8 completion:v6];
}

- (void)setShortcutSuggestions:(id)a3 forAppWithBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v9 setShortcutSuggestions:v7 forAppWithBundleIdentifier:v6 accessSpecifier:v8];
}

- (void)deleteVoiceShortcutWithIdentifier:(id)a3 name:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v12 deleteVoiceShortcutWithIdentifier:v10 name:v9 accessSpecifier:v11 completion:v8];
}

- (void)updateVoiceShortcutWithIdentifier:(id)a3 phrase:(id)a4 shortcut:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v14 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v15 updateVoiceShortcutWithIdentifier:v13 phrase:v12 shortcut:v11 accessSpecifier:v14 completion:v10];
}

- (void)addVoiceShortcut:(id)a3 phrase:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v11 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v12 addVoiceShortcut:v10 phrase:v9 accessSpecifier:v11 completion:v8];
}

- (void)getVoiceShortcutsForAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v12[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v10 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v8 getVoiceShortcutsForAppsWithBundleIdentifiers:v9 accessSpecifier:v10 completion:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceShortcutsWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v6 getVoiceShortcutsWithAccessSpecifier:v5 completion:v4];
}

- (void)getVoiceShortcutWithPhrase:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v9 getVoiceShortcutWithPhrase:v7 accessSpecifier:v8 completion:v6];
}

- (void)getVoiceShortcutWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v8 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v9 getVoiceShortcutWithIdentifier:v7 accessSpecifier:v8 completion:v6];
}

- (void)getNumberOfVoiceShortcutsWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v5 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [v6 getNumberOfVoiceShortcutsWithAccessSpecifier:v5 completion:v4];
}

- (VCVoiceShortcutManagerAccessWrapper)initWithVoiceShortcutManager:(id)a3 triggerRegistrar:(id)a4 accessSpecifier:(id)a5 syncDataEndpoint:(id)a6 runCoordinator:(id)a7 auditToken:(id *)a8
{
  v15 = a3;
  v36 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_10:
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v18)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v31 = [MEMORY[0x277CCA890] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutManager"}];

  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v18)
  {
    goto LABEL_4;
  }

LABEL_11:
  v33 = [MEMORY[0x277CCA890] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"runCoordinator"}];

LABEL_4:
  if (([v16 allowConnection] & 1) == 0)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:120 description:@"Cannot build access wrapper exported object when connection is not allowed"];
  }

  v37.receiver = self;
  v37.super_class = VCVoiceShortcutManagerAccessWrapper;
  v19 = [(VCVoiceShortcutManagerAccessWrapper *)&v37 init];
  if (v19)
  {
    v20 = [v16 copy];
    accessSpecifier = v19->_accessSpecifier;
    v19->_accessSpecifier = v20;

    objc_storeStrong(&v19->_voiceShortcutManager, a3);
    objc_storeStrong(&v19->_triggerRegistrar, a4);
    objc_storeStrong(&v19->_syncDataEndpoint, a6);
    objc_storeStrong(&v19->_runCoordinator, a7);
    v22 = [WFShareSheetWorkflowProvider alloc];
    v23 = [v15 databaseProvider];
    v24 = [(WFShareSheetWorkflowProvider *)v22 initWithDatabaseProvider:v23];
    shareSheetProvider = v19->_shareSheetProvider;
    v19->_shareSheetProvider = v24;

    v26 = *&a8->var0[4];
    *v19->_auditToken.val = *a8->var0;
    *&v19->_auditToken.val[4] = v26;
    v27 = objc_alloc_init(MEMORY[0x277D7A0C8]);
    sandboxExtensionManager = v19->_sandboxExtensionManager;
    v19->_sandboxExtensionManager = v27;

    v29 = v19;
  }

  return v19;
}

@end