@interface VCVoiceShortcutManagerAccessWrapper
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (VCVoiceShortcutManagerAccessWrapper)initWithVoiceShortcutManager:(id)manager triggerRegistrar:(id)registrar accessSpecifier:(id)specifier syncDataEndpoint:(id)endpoint runCoordinator:(id)coordinator auditToken:(id *)token;
- (id)database;
- (id)linkActionWithStaccatoIdentifier:(id)identifier;
- (id)unsupportedRequestErrorWithMessage:(id)message;
- (void)addVoiceShortcut:(id)shortcut phrase:(id)phrase completion:(id)completion;
- (void)approvalResultForContentAttributionSet:(id)set contentDestination:(id)destination actionUUID:(id)d actionIdentifier:(id)identifier actionIndex:(unint64_t)index reference:(id)reference allowedOnceStates:(id)states completion:(id)self0;
- (void)archiveAction:(id)action withActionMetadata:(id)metadata completion:(id)completion;
- (void)checkTriggerStateWithIdentifier:(id)identifier completion:(id)completion;
- (void)checkTriggerStateWithKeyPath:(id)path completion:(id)completion;
- (void)computeFinderResizedSizesForImages:(id)images inSizes:(id)sizes completion:(id)completion;
- (void)configuredStaccatoActionFromTemplate:(id)template valuesByParameterKey:(id)key completion:(id)completion;
- (void)createBookmarkWithBookmarkableString:(id)string path:(id)path workflowID:(id)d completion:(id)completion;
- (void)createBookmarkWithURL:(id)l workflowID:(id)d completion:(id)completion;
- (void)createShortcutWithRecordData:(id)data name:(id)name shortcutSource:(id)source completion:(id)completion;
- (void)createWorkflowWithWorkflowData:(id)data name:(id)name nameCollisionBehavior:(unint64_t)behavior completion:(id)completion;
- (void)currentDeletionAuthorizationStatusWithContentItemClassName:(id)name actionUUID:(id)d actionIdentifier:(id)identifier actionIndex:(unint64_t)index count:(unint64_t)count reference:(id)reference completion:(id)completion;
- (void)defaultStaccatoActionWithCompletion:(id)completion;
- (void)deleteTriggerWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteVoiceShortcutWithIdentifier:(id)identifier name:(id)name completion:(id)completion;
- (void)describeSyncStateIncludingDeleted:(BOOL)deleted completion:(id)completion;
- (void)dismissToastedSessionKitSessionsWithReason:(id)reason completion:(id)completion;
- (void)fetchAllValueSectionsForStaccatoParameter:(id)parameter completion:(id)completion;
- (void)fetchAvailableStaccatoActions:(id)actions;
- (void)fetchURLForFPItem:(id)item completion:(id)completion;
- (void)fireTriggerWithIdentifier:(id)identifier force:(BOOL)force completion:(id)completion;
- (void)generateSingleUseTokenForWorkflowIdentifier:(id)identifier completion:(id)completion;
- (void)getCollectionWithIdentifier:(id)identifier completion:(id)completion;
- (void)getConfiguredTriggerDescriptionsWithCompletion:(id)completion;
- (void)getConfiguredTriggerForTriggerID:(id)d completion:(id)completion;
- (void)getConfiguredTriggersForWorkflowID:(id)d completion:(id)completion;
- (void)getFirstUnsortedWorkflowWithCompletion:(id)completion;
- (void)getFolderForWorkflowReference:(id)reference completion:(id)completion;
- (void)getIsReference:(id)reference allowedToRunOnDomain:(id)domain completion:(id)completion;
- (void)getLinkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier expandingParameterName:(id)name limit:(int64_t)limit completion:(id)completion;
- (void)getLinkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier serializedParameterStates:(id)states completion:(id)completion;
- (void)getMigratedAppIntentWithINIntent:(id)intent completion:(id)completion;
- (void)getNumberOfVoiceShortcutsWithCompletion:(id)completion;
- (void)getOnScreenContentWithOptions:(id)options completion:(id)completion;
- (void)getOnScreenContentWithOptions:(id)options completionHandler:(id)handler;
- (void)getReferenceForWorkflowID:(id)d completion:(id)completion;
- (void)getResultsForQuery:(id)query resultClassName:(id)name completion:(id)completion;
- (void)getRunShortcutIntentForWorkflow:(id)workflow completion:(id)completion;
- (void)getSerializedParametersForLinkAction:(id)action actionMetadata:(id)metadata completion:(id)completion;
- (void)getShareSheetWorkflowsForExtensionMatchingDictionaries:(id)dictionaries hostBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getShortcutSuggestionsForAllAppsWithLimit:(unint64_t)limit completion:(id)completion;
- (void)getShortcutSuggestionsForAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getSiriPodcastsDatabaseURLWithCompletion:(id)completion;
- (void)getSortedVisibleFoldersWithCompletion:(id)completion;
- (void)getSortedVisibleWorkflowsByNameWithCompletion:(id)completion;
- (void)getSortedVisibleWorkflowsInCollection:(id)collection completion:(id)completion;
- (void)getSortedWorkflowsWithQuery:(id)query completion:(id)completion;
- (void)getStingWorkflowWithIdentifier:(id)identifier completion:(id)completion;
- (void)getStingWorkflowsWithCompletion:(id)completion;
- (void)getSuggestedShortcutsWithLimit:(int64_t)limit completion:(id)completion;
- (void)getUniqueVisibleReferenceForWorkflowName:(id)name completion:(id)completion;
- (void)getUpcomingMediaForBundleIdentifier:(id)identifier limit:(int64_t)limit completion:(id)completion;
- (void)getValueForDescriptor:(id)descriptor resultClassName:(id)name completion:(id)completion;
- (void)getVaultItemsAccessForBackgroundRunner:(id)runner;
- (void)getVoiceShortcutWithIdentifier:(id)identifier completion:(id)completion;
- (void)getVoiceShortcutWithPhrase:(id)phrase completion:(id)completion;
- (void)getVoiceShortcutsForAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getVoiceShortcutsWithCompletion:(id)completion;
- (void)getWorkflowRecordDataForDescriptor:(id)descriptor completion:(id)completion;
- (void)loadDataWithItemProviderRequestMetadata:(id)metadata type:(id)type completion:(id)completion;
- (void)loadFileURLWithItemProviderRequestMetadata:(id)metadata type:(id)type openInPlace:(BOOL)place completion:(id)completion;
- (void)logRunOfWorkflow:(id)workflow withSource:(id)source triggerID:(id)d completion:(id)completion;
- (void)markMenuBarWorkflowAsMigratedWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)obliterateShortcuts:(id)shortcuts;
- (void)postNotificationAboutFailure:(id)failure inWorkflow:(id)workflow dialogAttribution:(id)attribution runningContext:(id)context;
- (void)postNotificationWithRequest:(id)request presentationMode:(unint64_t)mode runningContext:(id)context;
- (void)quarantineWorkflowWithReference:(id)reference;
- (void)refreshTriggerWithIdentifier:(id)identifier completion:(id)completion;
- (void)removeAllSerializedParametersForQueryName:(id)name completion:(id)completion;
- (void)requestDataMigration:(id)migration;
- (void)requestSandboxExtensionForAccessResources:(id)resources completion:(id)completion;
- (void)requestSandboxExtensionForToolKitIndexingWithCompletion:(id)completion;
- (void)resetAutomationConfirmationStatusWithCompletion:(id)completion;
- (void)resolveBookmarkData:(id)data completion:(id)completion;
- (void)resolveCrossDeviceItemID:(id)d completion:(id)completion;
- (void)resolveFilePath:(id)path workflowID:(id)d completion:(id)completion;
- (void)saveOutputActionSmartPromtDataForWorkflowReference:(id)reference completion:(id)completion;
- (void)saveSmartPromptStateData:(id)data actionUUID:(id)d reference:(id)reference completion:(id)completion;
- (void)sendAceCommandDictionary:(id)dictionary completion:(id)completion;
- (void)serializedParametersForAppEntityIdentifier:(id)identifier completion:(id)completion;
- (void)setAuditToken:(id *)token;
- (void)setInteger:(int64_t)integer forKey:(id)key inDomain:(id)domain completionHandler:(id)handler;
- (void)setOutcome:(int64_t)outcome forRunEvent:(id)event;
- (void)setPerWorkflowStateData:(id)data forSmartPromptWithActionUUID:(id)d reference:(id)reference completion:(id)completion;
- (void)setShortcutSuggestions:(id)suggestions forAppWithBundleIdentifier:(id)identifier;
- (void)showSingleStepCompletionForWebClip:(id)clip completion:(id)completion;
- (void)storeQuarantineHashForWorkflowWithReference:(id)reference quarantineHash:(id)hash;
- (void)storeSerializedParameters:(id)parameters forAppEntityIdentifier:(id)identifier queryName:(id)name badgeType:(unint64_t)type completion:(id)completion;
- (void)toastSessionKitSessionWithIdentifier:(id)identifier forDuration:(id)duration completion:(id)completion;
- (void)triggerFullContextualActionReindexWithCompletion:(id)completion;
- (void)unarchiveActionFromData:(id)data withActionMetadata:(id)metadata completion:(id)completion;
- (void)unregisterTriggerWithIdentifier:(id)identifier triggerBacking:(int64_t)backing completion:(id)completion;
- (void)updateAppDescriptor:(id)descriptor atKey:(id)key actionUUID:(id)d actionIndex:(id)index actionIdentifier:(id)identifier workflowID:(id)iD;
- (void)updateAppShortcutsWithCompletion:(id)completion;
- (void)updateVoiceShortcutWithIdentifier:(id)identifier phrase:(id)phrase shortcut:(id)shortcut completion:(id)completion;
- (void)userHasAutomationsWithCompletion:(id)completion;
@end

@implementation VCVoiceShortcutManagerAccessWrapper

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[2].var0[4];
  *retstr->var0 = *self[2].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *self->_auditToken.val = *token->var0;
  *&self->_auditToken.val[4] = v3;
}

- (void)defaultStaccatoActionWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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
    completionCopy[2](completionCopy, v5, 0);
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
    (completionCopy)[2](completionCopy, 0, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)configuredStaccatoActionFromTemplate:(id)template valuesByParameterKey:(id)key completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  keyCopy = key;
  completionCopy = completion;
  v10 = +[WFConfiguredSystemActionProvider sharedProvider];
  v16 = 0;
  v11 = [v10 configuredStaccatoActionFromTemplate:templateCopy valuesByParameterKey:keyCopy error:&v16];
  v12 = v16;
  v13 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "[VCVoiceShortcutManagerAccessWrapper configuredStaccatoActionFromTemplate:valuesByParameterKey:completion:]";
    v19 = 2112;
    v20 = templateCopy;
    v21 = 2112;
    v22 = keyCopy;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_DEFAULT, "%s Configured action for template: %@ with parameters: %@ -> %@", buf, 0x2Au);
  }

  if (v11)
  {
    completionCopy[2](completionCopy, v11, 0);
  }

  else
  {
    v14 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[VCVoiceShortcutManagerAccessWrapper configuredStaccatoActionFromTemplate:valuesByParameterKey:completion:]";
      v19 = 2112;
      v20 = templateCopy;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s Failed to construct configured action with template: %@.", buf, 0x16u);
    }

    (completionCopy)[2](completionCopy, 0, v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllValueSectionsForStaccatoParameter:(id)parameter completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  completionCopy = completion;
  actionIdentifier = [parameterCopy actionIdentifier];
  v9 = [(VCVoiceShortcutManagerAccessWrapper *)self linkActionWithStaccatoIdentifier:actionIdentifier];

  v10 = [parameterCopy key];
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
    v17 = parameterCopy;
    v36 = v17;
    v18 = completionCopy;
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
      possibleStates = [v28 possibleStates];
      v22 = [v25 initWithItems:possibleStates];

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
      v41 = parameterCopy;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_ERROR, "%s Invalid parameter provided: %@ - %@.", buf, 0x20u);
    }

    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8], 0);
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

- (void)fetchAvailableStaccatoActions:(id)actions
{
  v43 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
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

        mEMORY[0x277D7C138] = [MEMORY[0x277D7C138] shared];
        isAppleIntelligenceEnabled = [mEMORY[0x277D7C138] isAppleIntelligenceEnabled];

        if (isAppleIntelligenceEnabled)
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
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL soft_AFVisualIntelligenceCameraRestricted(void)"];
            [currentHandler handleFailureInFunction:v27 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:85 description:{@"%s", dlerror()}];

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
          if (isAppleIntelligenceEnabled)
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
  actionsCopy[2](actionsCopy, v24, 0);

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

- (id)linkActionWithStaccatoIdentifier:(id)identifier
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D7C0D8];
  identifierCopy = identifier;
  v5 = [v3 alloc];
  v6 = [v5 initWithActionIdentifier:identifierCopy serializedParameters:MEMORY[0x277CBEC10]];

  mEMORY[0x277D7C598] = [MEMORY[0x277D7C598] sharedProvider];
  v14[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [mEMORY[0x277D7C598] createActionsForRequests:v8];

  result = [v6 result];
  if (result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = result;
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

- (id)unsupportedRequestErrorWithMessage:(id)message
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D7A388];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = message;
  v5 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:v4 code:11006 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)loadDataWithItemProviderRequestMetadata:(id)metadata type:(id)type completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  typeCopy = type;
  completionCopy = completion;
  v11 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v34 = "[VCVoiceShortcutManagerAccessWrapper loadDataWithItemProviderRequestMetadata:type:completion:]";
    v35 = 2112;
    v36 = metadataCopy;
    v37 = 2112;
    v38 = typeCopy;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Loading data representation with metadata: %@ type: %@", buf, 0x20u);
  }

  v12 = metadataCopy;
  if (v12 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, (isKindOfClass & 1) != 0))
  {
    v14 = v12;
    v15 = MEMORY[0x277D23BB0];
    metadata = [v14 metadata];
    v17 = [v15 policyWithEntityMetadata:metadata];

    v31 = 0;
    v18 = [v17 connectionWithError:&v31];
    v19 = v31;
    if (v18)
    {
      v27 = [objc_alloc(MEMORY[0x277D237C8]) initWithContentType:typeCopy];
      v20 = [objc_alloc(MEMORY[0x277D23C18]) initWithContentType:v27 preferredExtractionType:1];
      entity = [v14 entity];
      v32 = entity;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      v22 = v28 = v19;
      [v14 metadata];
      v24 = v23 = v17;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __95__VCVoiceShortcutManagerAccessWrapper_loadDataWithItemProviderRequestMetadata_type_completion___block_invoke;
      v29[3] = &unk_2788FF220;
      v30 = completionCopy;
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

      (*(completionCopy + 2))(completionCopy, 0, v19);
    }
  }

  else
  {
    v14 = [(VCVoiceShortcutManagerAccessWrapper *)self unsupportedRequestErrorWithMessage:@"Unsupported item provider load request."];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)loadFileURLWithItemProviderRequestMetadata:(id)metadata type:(id)type openInPlace:(BOOL)place completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  typeCopy = type;
  completionCopy = completion;
  v12 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[VCVoiceShortcutManagerAccessWrapper loadFileURLWithItemProviderRequestMetadata:type:openInPlace:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = metadataCopy;
    *&buf[22] = 2112;
    *&buf[24] = typeCopy;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEFAULT, "%s Loading file url representation with metadata: %@ type: %@", buf, 0x20u);
  }

  v13 = metadataCopy;
  if (v13 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, (isKindOfClass & 1) != 0))
  {
    v15 = v13;
    v16 = MEMORY[0x277D23BB0];
    metadata = [v15 metadata];
    v18 = [v16 policyWithEntityMetadata:metadata];

    v36 = 0;
    v19 = [v18 connectionWithError:&v36];
    v20 = v36;
    v21 = v20;
    if (v19)
    {
      v32 = v20;
      v22 = [objc_alloc(MEMORY[0x277D237C8]) initWithContentType:typeCopy];
      v23 = [objc_alloc(MEMORY[0x277D23C18]) initWithContentType:v22 preferredExtractionType:0];
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      v25 = processInfo;
      v33 = v18;
      if (processInfo)
      {
        [processInfo if_auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v27 = [v23 configurationWithAuditToken:buf];

      entity = [v15 entity];
      v37 = entity;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      metadata2 = [v15 metadata];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __110__VCVoiceShortcutManagerAccessWrapper_loadFileURLWithItemProviderRequestMetadata_type_openInPlace_completion___block_invoke;
      v34[3] = &unk_2788FF220;
      v35 = completionCopy;
      [v19 exportEntities:v29 metadata:metadata2 withConfiguration:v27 completionHandler:v34];

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

      (*(completionCopy + 2))(completionCopy, 0, v21);
    }
  }

  else
  {
    v15 = [(VCVoiceShortcutManagerAccessWrapper *)self unsupportedRequestErrorWithMessage:@"Unsupported item provider load request."];
    (*(completionCopy + 2))(completionCopy, 0, v15);
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

- (void)setOutcome:(int64_t)outcome forRunEvent:(id)event
{
  eventCopy = event;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

    if (!isBackgroundShortcutRunner)
    {
      goto LABEL_5;
    }
  }

  database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  [database setOutcome:outcome forRunEvent:eventCopy];

LABEL_5:
}

- (void)logRunOfWorkflow:(id)workflow withSource:(id)source triggerID:(id)d completion:(id)completion
{
  workflowCopy = workflow;
  sourceCopy = source;
  dCopy = d;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v17 = [database logRunOfWorkflow:workflowCopy withSource:sourceCopy triggerID:dCopy];

    completionCopy[2](completionCopy, v17, 0);
    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  v17 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (completionCopy)[2](completionCopy, 0, v17);
LABEL_6:
}

- (void)storeQuarantineHashForWorkflowWithReference:(id)reference quarantineHash:(id)hash
{
  referenceCopy = reference;
  hashCopy = hash;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

    if (!isBackgroundShortcutRunner)
    {
      goto LABEL_7;
    }
  }

  database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  v11 = objc_opt_new();
  v12 = [database recordWithDescriptor:referenceCopy properties:v11 error:0];

  if (v12)
  {
    [v12 setRemoteQuarantineHash:hashCopy];
    database2 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    [database2 saveRecord:v12 withDescriptor:referenceCopy error:0];
  }

LABEL_7:
}

- (void)quarantineWorkflowWithReference:(id)reference
{
  referenceCopy = reference;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

    if (!isBackgroundShortcutRunner)
    {
      goto LABEL_7;
    }
  }

  database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  v8 = objc_opt_new();
  v9 = [database recordWithDescriptor:referenceCopy properties:v8 error:0];

  if (v9)
  {
    [v9 setRemoteQuarantineStatus:1];
    database2 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    [database2 saveRecord:v9 withDescriptor:referenceCopy error:0];
  }

LABEL_7:
}

- (void)updateAppDescriptor:(id)descriptor atKey:(id)key actionUUID:(id)d actionIndex:(id)index actionIdentifier:(id)identifier workflowID:(id)iD
{
  descriptorCopy = descriptor;
  keyCopy = key;
  dCopy = d;
  indexCopy = index;
  identifierCopy = identifier;
  iDCopy = iD;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

    if (!isBackgroundShortcutRunner)
    {
      goto LABEL_5;
    }
  }

  database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  [database updateAppDescriptor:descriptorCopy atKey:keyCopy actionUUID:dCopy actionIndex:indexCopy actionIdentifier:identifierCopy workflowID:iDCopy];

LABEL_5:
}

- (void)saveOutputActionSmartPromtDataForWorkflowReference:(id)reference completion:(id)completion
{
  referenceCopy = reference;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

    if ((isBackgroundShortcutRunner & 1) == 0)
    {
      v13 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
      completionCopy[2](completionCopy, v13);

      goto LABEL_6;
    }
  }

  database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  v14 = 0;
  [database saveOutputActionSmartPromtDataForWorkflowReference:referenceCopy error:&v14];
  v12 = v14;

  completionCopy[2](completionCopy, v12);
LABEL_6:
}

- (void)saveSmartPromptStateData:(id)data actionUUID:(id)d reference:(id)reference completion:(id)completion
{
  dataCopy = data;
  dCopy = d;
  referenceCopy = reference;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

    if ((isBackgroundShortcutRunner & 1) == 0)
    {
      v20 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
      completionCopy[2](completionCopy, 0, v20);

      goto LABEL_6;
    }
  }

  database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  v21 = 0;
  v18 = [database saveSmartPromptStateData:dataCopy actionUUID:dCopy reference:referenceCopy error:&v21];
  v19 = v21;

  completionCopy[2](completionCopy, v18, v19);
LABEL_6:
}

- (void)currentDeletionAuthorizationStatusWithContentItemClassName:(id)name actionUUID:(id)d actionIdentifier:(id)identifier actionIndex:(unint64_t)index count:(unint64_t)count reference:(id)reference completion:(id)completion
{
  nameCopy = name;
  dCopy = d;
  identifierCopy = identifier;
  referenceCopy = reference;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v23 = [database currentDeletionAuthorizationStatusWithContentItemClassName:nameCopy actionUUID:dCopy actionIdentifier:identifierCopy actionIndex:index count:count reference:referenceCopy];

    completionCopy[2](completionCopy, v23, 0);
    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  v23 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (completionCopy)[2](completionCopy, 0, v23);
LABEL_6:
}

- (void)approvalResultForContentAttributionSet:(id)set contentDestination:(id)destination actionUUID:(id)d actionIdentifier:(id)identifier actionIndex:(unint64_t)index reference:(id)reference allowedOnceStates:(id)states completion:(id)self0
{
  setCopy = set;
  destinationCopy = destination;
  dCopy = d;
  identifierCopy = identifier;
  referenceCopy = reference;
  statesCopy = states;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v31 = [database approvalResultForContentAttributionSet:setCopy contentDestination:destinationCopy actionUUID:dCopy actionIdentifier:identifierCopy actionIndex:index reference:referenceCopy allowedOnceStates:statesCopy];

    completionCopy[2](completionCopy, v31, 0);
    goto LABEL_6;
  }

  [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v32 = statesCopy;
  v23 = referenceCopy;
  v24 = identifierCopy;
  v25 = dCopy;
  v26 = destinationCopy;
  v28 = v27 = index;
  isBackgroundShortcutRunner = [v28 isBackgroundShortcutRunner];

  index = v27;
  destinationCopy = v26;
  dCopy = v25;
  identifierCopy = v24;
  referenceCopy = v23;
  statesCopy = v32;

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  v31 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (completionCopy)[2](completionCopy, 0, v31);
LABEL_6:
}

- (void)getIsReference:(id)reference allowedToRunOnDomain:(id)domain completion:(id)completion
{
  referenceCopy = reference;
  domainCopy = domain;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v14 = [database isReference:referenceCopy allowedToRunOnDomain:domainCopy];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    completionCopy[2](completionCopy, v15, 0);
    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  v15 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (completionCopy)[2](completionCopy, 0, v15);
LABEL_6:
}

- (void)createWorkflowWithWorkflowData:(id)data name:(id)name nameCollisionBehavior:(unint64_t)behavior completion:(id)completion
{
  dataCopy = data;
  nameCopy = name;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

    if ((isBackgroundShortcutRunner & 1) == 0)
    {
      v25 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
      completionCopy[2](completionCopy, 0, v25);

      goto LABEL_12;
    }
  }

  v28 = 0;
  v16 = [objc_alloc(MEMORY[0x277D7CA70]) initWithFileData:dataCopy name:0 error:&v28];
  v17 = v28;
  v18 = v17;
  if (v16)
  {
    v27 = v17;
    v19 = [v16 recordRepresentationWithError:&v27];
    v20 = v27;

    [v19 setName:nameCopy];
    if (v19)
    {
      v21 = [objc_alloc(MEMORY[0x277D7CA68]) initWithRecord:v19];
      database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
      v26 = v20;
      v23 = [database createWorkflowWithOptions:v21 nameCollisionBehavior:behavior error:&v26];
      v24 = v26;

      (completionCopy)[2](completionCopy, v23, v24);
      v20 = v24;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v20);
    }

    v18 = v20;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v17);
  }

LABEL_12:
}

- (void)getConfiguredTriggerForTriggerID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [database configuredTriggerForTriggerID:dCopy];

    completionCopy[2](completionCopy, v11, 0);
    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (completionCopy)[2](completionCopy, 0, v11);
LABEL_6:
}

- (void)getConfiguredTriggersForWorkflowID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [database configuredTriggersForWorkflowID:dCopy];

    descriptors = [v11 descriptors];
    fetchError = [v11 fetchError];
    completionCopy[2](completionCopy, descriptors, fetchError);

    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  completionCopy[2](completionCopy, 0, v11);
LABEL_6:
}

- (void)getFolderForWorkflowReference:(id)reference completion:(id)completion
{
  referenceCopy = reference;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [database folderForWorkflowReference:referenceCopy];

    completionCopy[2](completionCopy, v11, 0);
    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (completionCopy)[2](completionCopy, 0, v11);
LABEL_6:
}

- (void)getCollectionWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [database collectionWithIdentifier:identifierCopy];

    completionCopy[2](completionCopy, v11, 0);
    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  (completionCopy)[2](completionCopy, 0, v11);
LABEL_6:
}

- (void)getSortedVisibleFoldersWithCompletion:(id)completion
{
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    sortedVisibleFolders = [database sortedVisibleFolders];

    descriptors = [sortedVisibleFolders descriptors];
    fetchError = [sortedVisibleFolders fetchError];
    completionCopy[2](completionCopy, descriptors, fetchError);

    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  sortedVisibleFolders = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  completionCopy[2](completionCopy, 0, sortedVisibleFolders);
LABEL_6:
}

- (void)getSortedWorkflowsWithQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [database sortedWorkflowsWithQuery:queryCopy];

    descriptors = [v11 descriptors];
    v13 = [descriptors copy];
    fetchError = [v11 fetchError];
    completionCopy[2](completionCopy, v13, fetchError);

    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  completionCopy[2](completionCopy, 0, v11);
LABEL_6:
}

- (void)getSortedVisibleWorkflowsInCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [database sortedVisibleWorkflowsInCollection:collectionCopy];

    descriptors = [v11 descriptors];
    v13 = [descriptors copy];
    fetchError = [v11 fetchError];
    completionCopy[2](completionCopy, v13, fetchError);

    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  completionCopy[2](completionCopy, 0, v11);
LABEL_6:
}

- (void)getSortedVisibleWorkflowsByNameWithCompletion:(id)completion
{
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    sortedVisibleWorkflowsByName = [database sortedVisibleWorkflowsByName];

    descriptors = [sortedVisibleWorkflowsByName descriptors];
    v10 = [descriptors copy];
    fetchError = [sortedVisibleWorkflowsByName fetchError];
    completionCopy[2](completionCopy, v10, fetchError);

    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  sortedVisibleWorkflowsByName = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
  completionCopy[2](completionCopy, 0, sortedVisibleWorkflowsByName);
LABEL_6:
}

- (void)getWorkflowRecordDataForDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {
  }

  else
  {
    accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

    if ((isBackgroundShortcutRunner & 1) == 0)
    {
      v17 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
      completionCopy[2](completionCopy, 0, v17);

      goto LABEL_9;
    }
  }

  database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
  v19 = 0;
  v12 = [database recordWithDescriptor:descriptorCopy error:&v19];
  v13 = v19;

  if (v12)
  {
    fileRepresentation = [v12 fileRepresentation];
    v18 = v13;
    v15 = [fileRepresentation fileDataWithError:&v18];
    v16 = v18;

    v13 = v16;
  }

  else
  {
    v15 = 0;
  }

  (completionCopy)[2](completionCopy, v15, v13);

LABEL_9:
}

- (void)getUniqueVisibleReferenceForWorkflowName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [database uniqueVisibleReferenceForWorkflowName:nameCopy];

    completionCopy[2](completionCopy, v11);
    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  completionCopy[2](completionCopy, 0);
LABEL_6:
}

- (void)getReferenceForWorkflowID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  if ([accessSpecifier allowReadAccessToShortcutsLibrary])
  {

LABEL_4:
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [database referenceForWorkflowID:dCopy];

    completionCopy[2](completionCopy, v11);
    goto LABEL_6;
  }

  accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier2 isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    goto LABEL_4;
  }

  completionCopy[2](completionCopy, 0);
LABEL_6:
}

- (id)database
{
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  database = [voiceShortcutManager database];

  return database;
}

- (void)dismissToastedSessionKitSessionsWithReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:1066 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  runCoordinator = [(VCVoiceShortcutManagerAccessWrapper *)self runCoordinator];
  [runCoordinator dismissToastedSessionKitSessionsWithReason:reasonCopy completion:completionCopy];
}

- (void)toastSessionKitSessionWithIdentifier:(id)identifier forDuration:(id)duration completion:(id)completion
{
  identifierCopy = identifier;
  durationCopy = duration;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    runCoordinator = [(VCVoiceShortcutManagerAccessWrapper *)self runCoordinator];
    [runCoordinator toastSessionKitSessionWithIdentifier:identifierCopy forDuration:durationCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)postNotificationAboutFailure:(id)failure inWorkflow:(id)workflow dialogAttribution:(id)attribution runningContext:(id)context
{
  failureCopy = failure;
  workflowCopy = workflow;
  attributionCopy = attribution;
  contextCopy = context;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    runCoordinator = [(VCVoiceShortcutManagerAccessWrapper *)self runCoordinator];
    [runCoordinator postNotificationAboutFailure:failureCopy inWorkflow:workflowCopy dialogAttribution:attributionCopy runningContext:contextCopy];
  }
}

- (void)postNotificationWithRequest:(id)request presentationMode:(unint64_t)mode runningContext:(id)context
{
  requestCopy = request;
  contextCopy = context;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    runCoordinator = [(VCVoiceShortcutManagerAccessWrapper *)self runCoordinator];
    [runCoordinator postNotificationWithRequest:requestCopy presentationMode:mode runningContext:contextCopy];
  }
}

- (void)requestSandboxExtensionForToolKitIndexingWithCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    allAvailableExtensionResourceClassNames = [MEMORY[0x277D7A0C8] allAvailableExtensionResourceClassNames];
    sandboxExtensionManager = [(VCVoiceShortcutManagerAccessWrapper *)self sandboxExtensionManager];
    [(VCVoiceShortcutManagerAccessWrapper *)self auditToken];
    v20 = 0;
    v9 = [sandboxExtensionManager requestSandboxExtensionForResources:allAvailableExtensionResourceClassNames destinationProcessAuditToken:buf unauthorizedResources:&v20];
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
    completionCopy[2](completionCopy, v9, v16, 0);

    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (completionCopy[2])(completionCopy, 0, 0);

    v18 = *MEMORY[0x277D85DE8];
  }
}

- (void)requestSandboxExtensionForAccessResources:(id)resources completion:(id)completion
{
  resourcesCopy = resources;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    sandboxExtensionManager = [(VCVoiceShortcutManagerAccessWrapper *)self sandboxExtensionManager];
    [(VCVoiceShortcutManagerAccessWrapper *)self auditToken];
    v13 = 0;
    v11 = [sandboxExtensionManager requestSandboxExtensionForResources:resourcesCopy destinationProcessAuditToken:v14 unauthorizedResources:&v13];
    v12 = v13;

    completionCopy[2](completionCopy, v11, v12, 0);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (completionCopy)[2](completionCopy, 0, 0, v11);
  }
}

- (void)markMenuBarWorkflowAsMigratedWithIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  identifiersCopy = identifiers;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager markMenuBarWorkflowAsMigratedWithIdentifiers:identifiersCopy completion:completionCopy];
}

- (void)getRunShortcutIntentForWorkflow:(id)workflow completion:(id)completion
{
  completionCopy = completion;
  workflowCopy = workflow;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager getRunShortcutIntentForWorkflow:workflowCopy completion:completionCopy];
}

- (void)getSerializedParametersForLinkAction:(id)action actionMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  actionCopy = action;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager getSerializedParametersForLinkAction:actionCopy actionMetadata:metadataCopy completion:completionCopy];
}

- (void)getMigratedAppIntentWithINIntent:(id)intent completion:(id)completion
{
  completionCopy = completion;
  intentCopy = intent;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager getMigratedAppIntentWithINIntent:intentCopy completion:completionCopy];
}

- (void)getLinkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier serializedParameterStates:(id)states completion:(id)completion
{
  completionCopy = completion;
  statesCopy = states;
  intentIdentifierCopy = intentIdentifier;
  identifierCopy = identifier;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager getLinkActionWithAppBundleIdentifier:identifierCopy appIntentIdentifier:intentIdentifierCopy serializedParameterStates:statesCopy completion:completionCopy];
}

- (void)unarchiveActionFromData:(id)data withActionMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  dataCopy = data;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager unarchiveActionFromData:dataCopy withActionMetadata:metadataCopy completion:completionCopy];
}

- (void)archiveAction:(id)action withActionMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  actionCopy = action;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager archiveAction:actionCopy withActionMetadata:metadataCopy completion:completionCopy];
}

- (void)removeAllSerializedParametersForQueryName:(id)name completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager removeAllSerializedParametersForQueryName:nameCopy completion:completionCopy];
}

- (void)storeSerializedParameters:(id)parameters forAppEntityIdentifier:(id)identifier queryName:(id)name badgeType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  identifierCopy = identifier;
  parametersCopy = parameters;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager storeSerializedParameters:parametersCopy forAppEntityIdentifier:identifierCopy queryName:nameCopy badgeType:type completion:completionCopy];
}

- (void)serializedParametersForAppEntityIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager serializedParametersForAppEntityIdentifier:identifierCopy completion:completionCopy];
}

- (void)updateAppShortcutsWithCompletion:(id)completion
{
  completionCopy = completion;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager updateAppShortcutsWithCompletion:completionCopy];
}

- (void)resetAutomationConfirmationStatusWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowResettingAutomationConfirmationLevel = [accessSpecifier allowResettingAutomationConfirmationLevel];

  if (allowResettingAutomationConfirmationLevel)
  {
    voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    databaseProvider = [voiceShortcutManager databaseProvider];
    v24 = 0;
    v9 = [databaseProvider databaseWithError:&v24];
    v10 = v24;

    if (v9)
    {
      v11 = objc_opt_new();
      allConfiguredTriggers = [v9 allConfiguredTriggers];
      descriptors = [allConfiguredTriggers descriptors];

      v14 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:v9];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __87__VCVoiceShortcutManagerAccessWrapper_resetAutomationConfirmationStatusWithCompletion___block_invoke;
      v21[3] = &unk_2788FF1F8;
      v22 = v14;
      v23 = v11;
      v15 = v11;
      v16 = v14;
      [descriptors enumerateObjectsUsingBlock:v21];
      firstObject = [v15 firstObject];
      completionCopy[2](completionCopy, firstObject);
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

      descriptors = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 reason:@"Unable to load database"];
      completionCopy[2](completionCopy, descriptors);
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    completionCopy[2](completionCopy, v18);
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

- (void)userHasAutomationsWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowResettingAutomationConfirmationLevel = [accessSpecifier allowResettingAutomationConfirmationLevel];

  if (allowResettingAutomationConfirmationLevel)
  {
    voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    databaseProvider = [voiceShortcutManager databaseProvider];
    v17 = 0;
    v9 = [databaseProvider databaseWithError:&v17];
    v10 = v17;

    if (v9)
    {
      allConfiguredTriggers = [v9 allConfiguredTriggers];
      v12 = [allConfiguredTriggers count] != 0;

      completionCopy[2](completionCopy, v12, 0);
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
      (completionCopy)[2](completionCopy, 0, v15);
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (completionCopy)[2](completionCopy, 0, v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setPerWorkflowStateData:(id)data forSmartPromptWithActionUUID:(id)d reference:(id)reference completion:(id)completion
{
  dataCopy = data;
  dCopy = d;
  referenceCopy = reference;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowUnrestrictedAccess = [accessSpecifier allowUnrestrictedAccess];

  if (allowUnrestrictedAccess)
  {
    voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    [voiceShortcutManager setPerWorkflowStateData:dataCopy forSmartPromptWithActionUUID:dCopy reference:referenceCopy];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    completionCopy[2](completionCopy, v16);

    completionCopy = v16;
  }
}

- (void)fetchURLForFPItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowFileBookmarksAccess = [accessSpecifier allowFileBookmarksAccess];

  if (allowFileBookmarksAccess)
  {
    defaultManager = [MEMORY[0x277CC6408] defaultManager];
    [defaultManager fetchURLForItem:itemCopy completionHandler:completionCopy];
  }

  else
  {
    defaultManager = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    completionCopy[2](completionCopy, 0, defaultManager);
  }
}

- (void)createBookmarkWithBookmarkableString:(id)string path:(id)path workflowID:(id)d completion:(id)completion
{
  stringCopy = string;
  pathCopy = path;
  dCopy = d;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowFileBookmarksAccess = [accessSpecifier allowFileBookmarksAccess];

  if (allowFileBookmarksAccess)
  {
    v19 = completionCopy;
    v17 = dCopy;
    v18 = pathCopy;
    FPDocumentURLFromBookmarkableString();
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(completionCopy + 2))(completionCopy, 0, v16);
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

- (void)createBookmarkWithURL:(id)l workflowID:(id)d completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowFileBookmarksAccess = [accessSpecifier allowFileBookmarksAccess];

  if (allowFileBookmarksAccess)
  {
    v13 = getWFFilesLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[VCVoiceShortcutManagerAccessWrapper createBookmarkWithURL:workflowID:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      *&buf[22] = 2112;
      v29 = dCopy;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_DEFAULT, "%s Attempting to create local bookmark with URL: %@ workflowID: %@", buf, 0x20u);
    }

    v14 = [lCopy url];
    startAccessingSecurityScopedResource = [v14 startAccessingSecurityScopedResource];

    v16 = objc_opt_new();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v29 = __Block_byref_object_copy__4916;
    v30 = __Block_byref_object_dispose__4917;
    v31 = 0;
    v17 = [lCopy url];
    v18 = (*&buf[8] + 40);
    obj = *(*&buf[8] + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __83__VCVoiceShortcutManagerAccessWrapper_createBookmarkWithURL_workflowID_completion___block_invoke;
    v21[3] = &unk_2788FF1A8;
    v22 = lCopy;
    v24 = completionCopy;
    v25 = buf;
    v26 = startAccessingSecurityScopedResource;
    v23 = dCopy;
    [v16 coordinateReadingItemAtURL:v17 options:0 error:&obj byAccessor:v21];
    objc_storeStrong(v18, obj);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(completionCopy + 2))(completionCopy, 0, v19);
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

- (void)resolveCrossDeviceItemID:(id)d completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowFileBookmarksAccess = [accessSpecifier allowFileBookmarksAccess];

  if (allowFileBookmarksAccess)
  {
    v10 = getWFFilesLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v15 = "[VCVoiceShortcutManagerAccessWrapper resolveCrossDeviceItemID:completion:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Resolving itemID: %@", buf, 0x16u);
    }

    if (dCopy)
    {
      v13 = completionCopy;
      FPItemURLForCrossDeviceItemID();
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)resolveBookmarkData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
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
  v7 = [MEMORY[0x277CBEBC0] URLByResolvingBookmarkData:dataCopy options:0 relativeToURL:0 bookmarkDataIsStale:v32 error:&obj];
  objc_storeStrong(&v30, obj);
  if (!v7)
  {
    domain = [v26[5] domain];
    v12 = *MEMORY[0x277CCA050];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]])
    {
      code = [v26[5] code];

      if (code != 259)
      {
LABEL_7:
        (*(completionCopy + 2))(completionCopy, 0, 0, v26[5]);
        goto LABEL_8;
      }

      v14 = MEMORY[0x277CCA9B8];
      domain = [v26[5] userInfo];
      v15 = [v14 errorWithDomain:v12 code:4 userInfo:domain];
      v16 = v26[5];
      v26[5] = v15;
    }

    goto LABEL_7;
  }

  startAccessingSecurityScopedResource = [v7 startAccessingSecurityScopedResource];
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
  v22 = startAccessingSecurityScopedResource;
  v19 = completionCopy;
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

- (void)resolveFilePath:(id)path workflowID:(id)d completion:(id)completion
{
  v61 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dCopy = d;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowFileBookmarksAccess = [accessSpecifier allowFileBookmarksAccess];

  if (allowFileBookmarksAccess)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__4916;
    v51 = __Block_byref_object_dispose__4917;
    v52 = 0;
    stringByStandardizingPath = [pathCopy stringByStandardizingPath];
    defaultDatabase = [MEMORY[0x277D7C2F0] defaultDatabase];
    v15 = (v48 + 5);
    obj = v48[5];
    v16 = [defaultDatabase bookmarkDataForWorkflowID:dCopy path:stringByStandardizingPath error:&obj];
    objc_storeStrong(v15, obj);
    if (v16)
    {
      v37 = defaultDatabase;
      v45 = 0;
      v17 = MEMORY[0x277CBEBC0];
      bookmarkData = [v16 bookmarkData];
      v19 = (v48 + 5);
      v44 = v48[5];
      v20 = [v17 URLByResolvingBookmarkData:bookmarkData options:0 relativeToURL:0 bookmarkDataIsStale:&v45 error:&v44];
      objc_storeStrong(v19, v44);

      if (v20)
      {
        startAccessingSecurityScopedResource = [v20 startAccessingSecurityScopedResource];
        v22 = objc_opt_new();
        v23 = (v48 + 5);
        v43 = v48[5];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __77__VCVoiceShortcutManagerAccessWrapper_resolveFilePath_workflowID_completion___block_invoke;
        v38[3] = &unk_2788FF130;
        v39 = v20;
        v41 = &v47;
        v42 = startAccessingSecurityScopedResource;
        v40 = completionCopy;
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
        localizedFailureReason = [v48[5] localizedFailureReason];
        v31 = [v29 vc_voiceShortcutErrorWithCode:10003 reason:{@"%@", localizedFailureReason}];
        v32 = v48[5];
        v48[5] = v31;

        (*(completionCopy + 2))(completionCopy, 0, v48[5]);
      }

      defaultDatabase = v37;
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
          v56 = stringByStandardizingPath;
          v57 = 2112;
          v58 = dCopy;
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
          v56 = stringByStandardizingPath;
          v57 = 2112;
          v58 = dCopy;
          _os_log_impl(&dword_23103C000, v33, OS_LOG_TYPE_ERROR, "%s No bookmark found for path %@ workflowID %@", buf, 0x20u);
        }

        v25 = WFLocalizedString(@"No bookmark found for file.");
        v34 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:10001 reason:{@"%@", v25}];
        v35 = v48[5];
        v48[5] = v34;
      }

      (*(completionCopy + 2))(completionCopy, 0, v48[5]);
    }

    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(completionCopy + 2))(completionCopy, 0, v24);
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

- (void)getLinkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier expandingParameterName:(id)name limit:(int64_t)limit completion:(id)completion
{
  identifierCopy = identifier;
  intentIdentifierCopy = intentIdentifier;
  nameCopy = name;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowFullRuntimeAccess = [accessSpecifier allowFullRuntimeAccess];

  if (allowFullRuntimeAccess)
  {
    voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    [voiceShortcutManager getLinkActionWithAppBundleIdentifier:identifierCopy appIntentIdentifier:intentIdentifierCopy expandingParameterName:nameCopy limit:limit completion:completionCopy];
  }

  else
  {
    voiceShortcutManager = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(completionCopy + 2))(completionCopy, 0, 0, voiceShortcutManager);
  }
}

- (void)getUpcomingMediaForBundleIdentifier:(id)identifier limit:(int64_t)limit completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowFullRuntimeAccess = [accessSpecifier allowFullRuntimeAccess];

  if ((allowFullRuntimeAccess & 1) == 0)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Access was denied";
    v24 = 1011;
LABEL_10:
    v13 = [v22 vc_voiceShortcutErrorWithCode:v24 reason:v23];
    completionCopy[2](completionCopy, 0, v13);
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
  v30[4] = limit;
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
  v17 = identifierCopy;
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
  v27 = completionCopy;
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

- (void)getSuggestedShortcutsWithLimit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowFullRuntimeAccess = [accessSpecifier allowFullRuntimeAccess];

  if (allowFullRuntimeAccess)
  {
    v9 = [objc_alloc(MEMORY[0x277D7A1F8]) initWithLocation:0];
    [v9 setResultsLimit:limit];
    database = [(VCVoiceShortcutManagerAccessWrapper *)self database];
    v11 = [database sortedWorkflowsWithQuery:v9];

    descriptors = [v11 descriptors];

    if (descriptors)
    {
      v13 = MEMORY[0x277D7A1D0];
      descriptors2 = [v11 descriptors];
      database2 = [(VCVoiceShortcutManagerAccessWrapper *)self database];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __81__VCVoiceShortcutManagerAccessWrapper_getSuggestedShortcutsWithLimit_completion___block_invoke;
      v17[3] = &unk_2788FF098;
      v18 = completionCopy;
      [v13 getObjectsFromReferences:descriptors2 databaseProvider:database2 completion:v17];
    }

    else
    {
      fetchError = [v11 fetchError];
      (*(completionCopy + 2))(completionCopy, 0, fetchError);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(completionCopy + 2))(completionCopy, 0, v9);
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

- (void)computeFinderResizedSizesForImages:(id)images inSizes:(id)sizes completion:(id)completion
{
  imagesCopy = images;
  sizesCopy = sizes;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowFullRuntimeAccess = [accessSpecifier allowFullRuntimeAccess];

  if (allowFullRuntimeAccess)
  {
    v16 = 0;
    v13 = [MEMORY[0x277D7A080] computeFinderResizedSizesForImages:imagesCopy inSizes:sizesCopy error:&v16];
    v14 = v16;
    completionCopy[2](completionCopy, v13, v14);
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    completionCopy[2](completionCopy, 0, v15);
  }
}

- (void)showSingleStepCompletionForWebClip:(id)clip completion:(id)completion
{
  clipCopy = clip;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isSpringBoard = [accessSpecifier isSpringBoard];

  if (isSpringBoard)
  {
    runCoordinator = [(VCVoiceShortcutManagerAccessWrapper *)self runCoordinator];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __85__VCVoiceShortcutManagerAccessWrapper_showSingleStepCompletionForWebClip_completion___block_invoke;
    v13[3] = &unk_2788FF730;
    v14 = completionCopy;
    [runCoordinator showSingleStepCompletionWithWebClipMetadata:clipCopy completion:v13];

    voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    [voiceShortcutManager logHomescreenFastPathRunEventForShortcutWithWebClip:clipCopy];
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (must be SpringBoard)"];
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

- (void)getStingWorkflowWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessToShortcutsLibrary = [accessSpecifier allowReadAccessToShortcutsLibrary];

  if (allowReadAccessToShortcutsLibrary)
  {
    voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    database = [voiceShortcutManager database];

    if (database)
    {
      v11 = [database referenceForWorkflowID:identifierCopy];
      if (v11)
      {
        v12 = objc_alloc(MEMORY[0x277D7A148]);
        identifier = [v11 identifier];
        name = [v11 name];
        color = [v11 color];
        glyphCharacter = [v11 glyphCharacter];
        associatedAppBundleIdentifier = [v11 associatedAppBundleIdentifier];
        searchAttributionAppBundleIdentifier = [v11 searchAttributionAppBundleIdentifier];
        v19 = [v12 initWithIdentifier:identifier name:name color:color glyphCharacter:glyphCharacter associatedAppBundleIdentifier:associatedAppBundleIdentifier searchAttributionAppBundleIdentifier:searchAttributionAppBundleIdentifier];

        completionCopy[2](completionCopy, v19, 0);
      }

      else
      {
        completionCopy[2](completionCopy, 0, 0);
      }
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 reason:@"Unable to load database"];
      (completionCopy)[2](completionCopy, 0, v11);
    }
  }

  else
  {
    database = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (completionCopy)[2](completionCopy, 0, database);
  }
}

- (void)getStingWorkflowsWithCompletion:(id)completion
{
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessToShortcutsLibrary = [accessSpecifier allowReadAccessToShortcutsLibrary];

  if (allowReadAccessToShortcutsLibrary)
  {
    voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    database = [voiceShortcutManager database];

    if (database)
    {
      v8 = [database sortedVisibleWorkflowsWithType:*MEMORY[0x277D7A8B0]];
      descriptors = [v8 descriptors];

      v10 = [descriptors if_map:&__block_literal_global_4966];
      completionCopy[2](completionCopy, v10, 0);
    }

    else
    {
      descriptors = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 reason:@"Unable to load database"];
      (completionCopy)[2](completionCopy, 0, descriptors);
    }
  }

  else
  {
    database = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (completionCopy)[2](completionCopy, 0, database);
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

- (void)getFirstUnsortedWorkflowWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessToShortcutsLibrary = [accessSpecifier allowReadAccessToShortcutsLibrary];

  if (allowReadAccessToShortcutsLibrary)
  {
    voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    database = [voiceShortcutManager database];

    if (database)
    {
      v9 = [objc_alloc(MEMORY[0x277D7A1F8]) initWithLocation:0];
      [v9 setResultsLimit:1];
      v10 = [database sortedWorkflowsWithQuery:v9];
      descriptors = [v10 descriptors];
      firstObject = [descriptors firstObject];

      if (firstObject)
      {
        v13 = objc_alloc(MEMORY[0x277D7A1D0]);
        identifier = [firstObject identifier];
        name = [firstObject name];
        color = [firstObject color];
        glyphCharacter = [firstObject glyphCharacter];
        associatedAppBundleIdentifier = [firstObject associatedAppBundleIdentifier];
        [firstObject searchAttributionAppBundleIdentifier];
        v19 = v26 = v9;
        v20 = [v13 initWithIdentifier:identifier name:name color:color glyphCharacter:glyphCharacter associatedAppBundleIdentifier:associatedAppBundleIdentifier searchAttributionAppBundleIdentifier:v19];

        v21 = MEMORY[0x277CCABB0];
        icon = [firstObject icon];
        v23 = [v21 numberWithInteger:{objc_msgSend(icon, "backgroundColorValue")}];

        completionCopy[2](completionCopy, v20, v23, 0);
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

        completionCopy[2](completionCopy, 0, 0, 0);
      }
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 reason:@"Unable to load database"];
      (completionCopy)[2](completionCopy, 0, 0, v9);
    }
  }

  else
  {
    database = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (completionCopy)[2](completionCopy, 0, 0, database);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)sendAceCommandDictionary:(id)dictionary completion:(id)completion
{
  dictionaryCopy = dictionary;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowIntentsExtensionDiscovery = [accessSpecifier allowIntentsExtensionDiscovery];

  if (allowIntentsExtensionDiscovery)
  {
    mEMORY[0x277D7C7B8] = [MEMORY[0x277D7C7B8] sharedCoordinator];
    if ([mEMORY[0x277D7C7B8] hasPairedDevice])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __75__VCVoiceShortcutManagerAccessWrapper_sendAceCommandDictionary_completion___block_invoke;
      v12[3] = &unk_2788FF030;
      v14 = completionCopy;
      v13 = mEMORY[0x277D7C7B8];
      [v13 sendAceCommandDictionary:dictionaryCopy completion:v12];
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:9001 reason:@"No paired device"];
      (*(completionCopy + 2))(completionCopy, 0, v11);
    }
  }

  else
  {
    mEMORY[0x277D7C7B8] = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(completionCopy + 2))(completionCopy, 0, mEMORY[0x277D7C7B8]);
  }
}

- (void)createShortcutWithRecordData:(id)data name:(id)name shortcutSource:(id)source completion:(id)completion
{
  completionCopy = completion;
  sourceCopy = source;
  nameCopy = name;
  dataCopy = data;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager createShortcutWithRecordData:dataCopy name:nameCopy shortcutSource:sourceCopy accessSpecifier:accessSpecifier completion:completionCopy];
}

- (void)obliterateShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isRemovalService = [accessSpecifier isRemovalService];

  if (isRemovalService)
  {
    syncDataEndpoint = [(VCVoiceShortcutManagerAccessWrapper *)self syncDataEndpoint];
    syncDataHandlers = [syncDataEndpoint syncDataHandlers];
    v9 = syncDataHandlers;
    if (syncDataHandlers)
    {
      v10 = syncDataHandlers;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;

    v12 = [VCShortcutsObliterator alloc];
    triggerRegistrar = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    v14 = [(VCShortcutsObliterator *)v12 initWithTriggerRegistrar:triggerRegistrar syncDataHandlers:v11];

    v17 = 0;
    [(VCShortcutsObliterator *)v14 obliterate:&v17];
    v15 = v17;
    shortcutsCopy[2](shortcutsCopy, v15);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (must be called from ShortcutsRemovalService)"];
    shortcutsCopy[2](shortcutsCopy, v16);
  }
}

- (void)getOnScreenContentWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadingOnScreenContent = [accessSpecifier allowReadingOnScreenContent];

  if (allowReadingOnScreenContent)
  {
    v9 = objc_alloc_init(WFOnScreenContentManager);
    [(WFOnScreenContentManager *)v9 getOnScreenContentWithOptions:optionsCopy completionHandler:handlerCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    handlerCopy[2](handlerCopy, 0, v9);
  }
}

- (void)getOnScreenContentWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadingOnScreenContent = [accessSpecifier allowReadingOnScreenContent];

  if (allowReadingOnScreenContent)
  {
    v9 = objc_alloc_init(WFOnScreenContentManager);
    [(WFOnScreenContentManager *)v9 getOnScreenContentWithOptions:optionsCopy completion:completionCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)getVaultItemsAccessForBackgroundRunner:(id)runner
{
  runnerCopy = runner;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  isBackgroundShortcutRunner = [accessSpecifier isBackgroundShortcutRunner];

  if (isBackgroundShortcutRunner)
  {
    v7 = objc_alloc(MEMORY[0x277CCAC90]);
    v8 = WFAssetsDirectory();
    v17 = [v7 initWithURL:v8 readonly:1];

    wf_shortcutsDirectoryURL = [MEMORY[0x277CBEBC0] wf_shortcutsDirectoryURL];
    v10 = [wf_shortcutsDirectoryURL URLByAppendingPathComponent:@"ssh" isDirectory:1];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v10 path];
    v13 = [defaultManager fileExistsAtPath:path isDirectory:0];

    if ((v13 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 createDirectoryAtURL:v10 withIntermediateDirectories:0 attributes:0 error:0];
    }

    v15 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v10 readonly:0];
    v16 = [MEMORY[0x277CBEB98] setWithObjects:{v17, v15, 0, 0}];
    runnerCopy[2](runnerCopy, v16);
  }

  else
  {
    v17 = objc_opt_new();
    (runnerCopy[2])(runnerCopy);
    v10 = runnerCopy;
  }
}

- (void)deleteTriggerWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowWriteAccessForTriggers = [accessSpecifier allowWriteAccessForTriggers];

  if (allowWriteAccessForTriggers)
  {
    triggerRegistrar = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    [triggerRegistrar deleteTriggerWithIdentifier:identifierCopy completion:completionCopy];
  }

  else
  {
    triggerRegistrar = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no write access to triggers)"];
    completionCopy[2](completionCopy, 0, triggerRegistrar);
  }
}

- (void)checkTriggerStateWithKeyPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessForTriggers = [accessSpecifier allowReadAccessForTriggers];

  if (allowReadAccessForTriggers)
  {
    triggerRegistrar = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    coreDuetListener = [triggerRegistrar coreDuetListener];
    [coreDuetListener checkTriggerStateWithKeyPath:pathCopy completion:completionCopy];

    completionCopy = coreDuetListener;
  }

  else
  {
    triggerRegistrar = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no read access to triggers)"];
    (*(completionCopy + 2))(completionCopy, 0, triggerRegistrar);
  }
}

- (void)checkTriggerStateWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessForTriggers = [accessSpecifier allowReadAccessForTriggers];

  if (allowReadAccessForTriggers)
  {
    triggerRegistrar = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    coreDuetListener = [triggerRegistrar coreDuetListener];
    [coreDuetListener checkTriggerStateWithIdentifier:identifierCopy completion:completionCopy];

    completionCopy = coreDuetListener;
  }

  else
  {
    triggerRegistrar = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no read access to triggers)"];
    (*(completionCopy + 2))(completionCopy, 0, 0, triggerRegistrar);
  }
}

- (void)fireTriggerWithIdentifier:(id)identifier force:(BOOL)force completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessForTriggers = [accessSpecifier allowReadAccessForTriggers];

  if (allowReadAccessForTriggers)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__VCVoiceShortcutManagerAccessWrapper_fireTriggerWithIdentifier_force_completion___block_invoke;
    v13[3] = &unk_2788FF008;
    v13[4] = self;
    v14 = identifierCopy;
    forceCopy = force;
    v15 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no read access to triggers)"];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }
}

void __82__VCVoiceShortcutManagerAccessWrapper_fireTriggerWithIdentifier_force_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) triggerRegistrar];
  [v2 fireTriggerWithIdentifier:*(a1 + 40) force:*(a1 + 56) eventInfo:MEMORY[0x277CBEC10] completion:*(a1 + 48)];
}

- (void)getConfiguredTriggerDescriptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessForTriggers = [accessSpecifier allowReadAccessForTriggers];

  if (allowReadAccessForTriggers)
  {
    triggerRegistrar = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    [triggerRegistrar getConfiguredTriggerDescriptionsWithCompletion:completionCopy];
  }

  else
  {
    triggerRegistrar = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no read access to triggers)"];
    completionCopy[2](completionCopy, 0);
  }
}

- (void)unregisterTriggerWithIdentifier:(id)identifier triggerBacking:(int64_t)backing completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowWriteAccessForTriggers = [accessSpecifier allowWriteAccessForTriggers];

  if (allowWriteAccessForTriggers)
  {
    triggerRegistrar = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    [triggerRegistrar unregisterTriggerWithIdentifier:identifierCopy triggerBacking:backing];

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v13 = getWFTriggersLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
      v17 = 136315394;
      v18 = "[VCVoiceShortcutManagerAccessWrapper unregisterTriggerWithIdentifier:triggerBacking:completion:]";
      v19 = 2112;
      v20 = accessSpecifier2;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_ERROR, "%s Denying access to trigger writes for accessSpecifier (%@)", &v17, 0x16u);
    }

    v15 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no write access to triggers)"];
    completionCopy[2](completionCopy, 0, v15);

    completionCopy = v15;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)refreshTriggerWithIdentifier:(id)identifier completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[VCVoiceShortcutManagerAccessWrapper refreshTriggerWithIdentifier:completion:]";
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Refresh trigger with identifier %@.", &v16, 0x16u);
  }

  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowWriteAccessForTriggers = [accessSpecifier allowWriteAccessForTriggers];

  if (allowWriteAccessForTriggers)
  {
    triggerRegistrar = [(VCVoiceShortcutManagerAccessWrapper *)self triggerRegistrar];
    v12 = triggerRegistrar;
    if (identifierCopy)
    {
      [triggerRegistrar registerTriggerWithIdentifier:identifierCopy completion:completionCopy];
    }

    else
    {
      [triggerRegistrar registerAllTriggersWithCompletion:completionCopy];
    }
  }

  else
  {
    v13 = getWFTriggersLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
      v16 = 136315394;
      v17 = "[VCVoiceShortcutManagerAccessWrapper refreshTriggerWithIdentifier:completion:]";
      v18 = 2112;
      v19 = accessSpecifier2;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_ERROR, "%s Denying access to trigger writes for accessSpecifier (%@)", &v16, 0x16u);
    }

    v12 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no write access to triggers)"];
    completionCopy[2](completionCopy, 0, v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)getSiriPodcastsDatabaseURLWithCompletion:(id)completion
{
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessToPodcastsDatabase = [accessSpecifier allowReadAccessToPodcastsDatabase];

  if (allowReadAccessToPodcastsDatabase)
  {
    v7 = objc_alloc(MEMORY[0x277CC1E70]);
    v8 = *MEMORY[0x277D7A2B0];
    v15 = 0;
    v9 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v15];
    v10 = v15;
    if (v9)
    {
      dataContainerURL = [v9 dataContainerURL];
      v12 = [dataContainerURL URLByAppendingPathComponent:@"Documents/PodcastsDB.plist"];

      v13 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v12 readonly:1];
      completionCopy[2](completionCopy, v13, 0);
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1001 underlyingError:v10];
      (completionCopy)[2](completionCopy, 0, v12);
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied (no read access to podcasts database)"];
    (completionCopy)[2](completionCopy, 0, v14);
  }
}

- (void)setInteger:(int64_t)integer forKey:(id)key inDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  domainCopy = domain;
  keyCopy = key;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  v16 = 0;
  v14 = [VCGuardedPreferencesManager setInteger:integer forKey:keyCopy inDomain:domainCopy withAccessSpecifier:accessSpecifier error:&v16];

  v15 = v16;
  handlerCopy[2](handlerCopy, v14, v15);
}

- (void)triggerFullContextualActionReindexWithCompletion:(id)completion
{
  completionCopy = completion;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager triggerFullContextualActionReindexWithCompletion:completionCopy];
}

- (void)generateSingleUseTokenForWorkflowIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessToShortcutsLibrary = [accessSpecifier allowReadAccessToShortcutsLibrary];

  if (allowReadAccessToShortcutsLibrary)
  {
    shareSheetProvider = [(VCVoiceShortcutManagerAccessWrapper *)self shareSheetProvider];
    v10 = [shareSheetProvider generateSingleUseTokenForWorkflowIdentifier:identifierCopy];
    completionCopy[2](completionCopy, v10, 0);

    completionCopy = v10;
  }

  else
  {
    shareSheetProvider = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (completionCopy)[2](completionCopy, 0, shareSheetProvider);
  }
}

- (void)getValueForDescriptor:(id)descriptor resultClassName:(id)name completion:(id)completion
{
  descriptorCopy = descriptor;
  nameCopy = name;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessToShortcutsLibrary = [accessSpecifier allowReadAccessToShortcutsLibrary];

  if (allowReadAccessToShortcutsLibrary)
  {
    voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
    [voiceShortcutManager getValueForDescriptor:descriptorCopy resultClass:NSClassFromString(nameCopy) completion:completionCopy];
  }

  else
  {
    voiceShortcutManager = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    completionCopy[2](completionCopy, 0, voiceShortcutManager);
  }
}

- (void)getResultsForQuery:(id)query resultClassName:(id)name completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  nameCopy = name;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessToShortcutsLibrary = [accessSpecifier allowReadAccessToShortcutsLibrary];

  v13 = queryCopy;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    workflowType = [v13 workflowType];
    if ([workflowType isEqualToString:*MEMORY[0x277D7A8A8]])
    {
      accessSpecifier2 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
      allowReadAccessForSleepWorkflows = [accessSpecifier2 allowReadAccessForSleepWorkflows];

      allowReadAccessToShortcutsLibrary |= allowReadAccessForSleepWorkflows;
    }

    v17 = v13;
    if ((allowReadAccessToShortcutsLibrary & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    v17 = 0;
    if ((allowReadAccessToShortcutsLibrary & 1) == 0)
    {
LABEL_6:
      v18 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
      (*(completionCopy + 2))(completionCopy, 0, 0, v18);
      goto LABEL_16;
    }
  }

  v19 = getWFGeneralLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    accessSpecifier3 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    bundleIdentifier = [accessSpecifier3 bundleIdentifier];
    v31 = 136315650;
    v32 = "[VCVoiceShortcutManagerAccessWrapper getResultsForQuery:resultClassName:completion:]";
    v33 = 2112;
    v34 = v13;
    v35 = 2112;
    v36 = bundleIdentifier;
    _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_INFO, "%s Running query: %@ for client: %@", &v31, 0x20u);
  }

  v22 = getWFGeneralLogObject();
  v23 = os_signpost_id_generate(v22);

  v24 = getWFGeneralLogObject();
  v25 = v24;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    accessSpecifier4 = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
    bundleIdentifier2 = [accessSpecifier4 bundleIdentifier];
    v31 = 138412290;
    v32 = bundleIdentifier2;
    _os_signpost_emit_with_name_impl(&dword_23103C000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "GetResultsForXPCQuery", "client=%{signpost.description:attribute}@", &v31, 0xCu);
  }

  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager getResultsForQuery:v13 resultClass:NSClassFromString(nameCopy) completion:completionCopy];

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

- (void)getShareSheetWorkflowsForExtensionMatchingDictionaries:(id)dictionaries hostBundleIdentifier:(id)identifier completion:(id)completion
{
  dictionariesCopy = dictionaries;
  identifierCopy = identifier;
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowReadAccessToShortcutsLibrary = [accessSpecifier allowReadAccessToShortcutsLibrary];

  if (allowReadAccessToShortcutsLibrary)
  {
    shareSheetProvider = [(VCVoiceShortcutManagerAccessWrapper *)self shareSheetProvider];
    v17 = 0;
    v14 = [shareSheetProvider shareSheetWorkflowsForExtensionMatchingDictionaries:dictionariesCopy hostBundleIdentifier:identifierCopy error:&v17];
    v15 = v17;

    completionCopy[2](completionCopy, v14, v15);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    completionCopy[2](completionCopy, 0, v16);
  }
}

- (void)requestDataMigration:(id)migration
{
  migrationCopy = migration;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  [voiceShortcutManager requestDataMigrationWithCompletion:migrationCopy];
}

- (void)describeSyncStateIncludingDeleted:(BOOL)deleted completion:(id)completion
{
  completionCopy = completion;
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  allowUnrestrictedAccess = [accessSpecifier allowUnrestrictedAccess];

  if (allowUnrestrictedAccess)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (*(completionCopy + 2))(completionCopy, 0, v7);
  }
}

- (void)getShortcutSuggestionsForAllAppsWithLimit:(unint64_t)limit completion:(id)completion
{
  completionCopy = completion;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager getShortcutSuggestionsForAllAppsWithLimit:limit accessSpecifier:accessSpecifier completion:completionCopy];
}

- (void)getShortcutSuggestionsForAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager getShortcutSuggestionsForAppWithBundleIdentifier:identifierCopy accessSpecifier:accessSpecifier completion:completionCopy];
}

- (void)setShortcutSuggestions:(id)suggestions forAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  suggestionsCopy = suggestions;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager setShortcutSuggestions:suggestionsCopy forAppWithBundleIdentifier:identifierCopy accessSpecifier:accessSpecifier];
}

- (void)deleteVoiceShortcutWithIdentifier:(id)identifier name:(id)name completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  identifierCopy = identifier;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager deleteVoiceShortcutWithIdentifier:identifierCopy name:nameCopy accessSpecifier:accessSpecifier completion:completionCopy];
}

- (void)updateVoiceShortcutWithIdentifier:(id)identifier phrase:(id)phrase shortcut:(id)shortcut completion:(id)completion
{
  completionCopy = completion;
  shortcutCopy = shortcut;
  phraseCopy = phrase;
  identifierCopy = identifier;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager updateVoiceShortcutWithIdentifier:identifierCopy phrase:phraseCopy shortcut:shortcutCopy accessSpecifier:accessSpecifier completion:completionCopy];
}

- (void)addVoiceShortcut:(id)shortcut phrase:(id)phrase completion:(id)completion
{
  completionCopy = completion;
  phraseCopy = phrase;
  shortcutCopy = shortcut;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager addVoiceShortcut:shortcutCopy phrase:phraseCopy accessSpecifier:accessSpecifier completion:completionCopy];
}

- (void)getVoiceShortcutsForAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v12[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  identifierCopy = identifier;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  v12[0] = identifierCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager getVoiceShortcutsForAppsWithBundleIdentifiers:v9 accessSpecifier:accessSpecifier completion:completionCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceShortcutsWithCompletion:(id)completion
{
  completionCopy = completion;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager getVoiceShortcutsWithAccessSpecifier:accessSpecifier completion:completionCopy];
}

- (void)getVoiceShortcutWithPhrase:(id)phrase completion:(id)completion
{
  completionCopy = completion;
  phraseCopy = phrase;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager getVoiceShortcutWithPhrase:phraseCopy accessSpecifier:accessSpecifier completion:completionCopy];
}

- (void)getVoiceShortcutWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager getVoiceShortcutWithIdentifier:identifierCopy accessSpecifier:accessSpecifier completion:completionCopy];
}

- (void)getNumberOfVoiceShortcutsWithCompletion:(id)completion
{
  completionCopy = completion;
  voiceShortcutManager = [(VCVoiceShortcutManagerAccessWrapper *)self voiceShortcutManager];
  accessSpecifier = [(VCVoiceShortcutManagerAccessWrapper *)self accessSpecifier];
  [voiceShortcutManager getNumberOfVoiceShortcutsWithAccessSpecifier:accessSpecifier completion:completionCopy];
}

- (VCVoiceShortcutManagerAccessWrapper)initWithVoiceShortcutManager:(id)manager triggerRegistrar:(id)registrar accessSpecifier:(id)specifier syncDataEndpoint:(id)endpoint runCoordinator:(id)coordinator auditToken:(id *)token
{
  managerCopy = manager;
  registrarCopy = registrar;
  specifierCopy = specifier;
  endpointCopy = endpoint;
  coordinatorCopy = coordinator;
  if (managerCopy)
  {
    if (specifierCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (coordinatorCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutManager"}];

  if (!specifierCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (coordinatorCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"runCoordinator"}];

LABEL_4:
  if (([specifierCopy allowConnection] & 1) == 0)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:120 description:@"Cannot build access wrapper exported object when connection is not allowed"];
  }

  v37.receiver = self;
  v37.super_class = VCVoiceShortcutManagerAccessWrapper;
  v19 = [(VCVoiceShortcutManagerAccessWrapper *)&v37 init];
  if (v19)
  {
    v20 = [specifierCopy copy];
    accessSpecifier = v19->_accessSpecifier;
    v19->_accessSpecifier = v20;

    objc_storeStrong(&v19->_voiceShortcutManager, manager);
    objc_storeStrong(&v19->_triggerRegistrar, registrar);
    objc_storeStrong(&v19->_syncDataEndpoint, endpoint);
    objc_storeStrong(&v19->_runCoordinator, coordinator);
    v22 = [WFShareSheetWorkflowProvider alloc];
    databaseProvider = [managerCopy databaseProvider];
    v24 = [(WFShareSheetWorkflowProvider *)v22 initWithDatabaseProvider:databaseProvider];
    shareSheetProvider = v19->_shareSheetProvider;
    v19->_shareSheetProvider = v24;

    v26 = *&token->var0[4];
    *v19->_auditToken.val = *token->var0;
    *&v19->_auditToken.val[4] = v26;
    v27 = objc_alloc_init(MEMORY[0x277D7A0C8]);
    sandboxExtensionManager = v19->_sandboxExtensionManager;
    v19->_sandboxExtensionManager = v27;

    v29 = v19;
  }

  return v19;
}

@end