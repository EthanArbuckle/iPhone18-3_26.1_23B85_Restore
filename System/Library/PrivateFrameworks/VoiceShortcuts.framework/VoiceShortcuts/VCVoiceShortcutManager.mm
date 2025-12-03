@interface VCVoiceShortcutManager
- (BOOL)isPhraseUsable:(id)usable inDatabase:(id)database error:(id *)error;
- (BOOL)lsDatabaseChangedSinceLastCheck;
- (BOOL)phraseHasHomeKitConflict:(id)conflict;
- (HMHomeManager)homeManager;
- (VCVoiceShortcutManager)initWithDatabaseProvider:(id)provider eventHandler:(id)handler appShortcutsUpdater:(id)updater contextualActionSyncService:(id)service;
- (WFDatabase)database;
- (id)actionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier serializedParameters:(id)parameters;
- (id)actionWithSerializedParameters:(id)parameters actionMetadata:(id)metadata;
- (void)addVoiceShortcut:(id)shortcut phrase:(id)phrase accessSpecifier:(id)specifier completion:(id)completion;
- (void)applicationWasUnregistered:(id)unregistered;
- (void)archiveAction:(id)action withActionMetadata:(id)metadata completion:(id)completion;
- (void)badgeTypeForEntityIdentifier:(id)identifier error:(id *)error;
- (void)createShortcutWithRecordData:(id)data name:(id)name shortcutSource:(id)source accessSpecifier:(id)specifier completion:(id)completion;
- (void)deleteStaleSuggestions;
- (void)deleteSuggestionsFromApps:(id)apps;
- (void)deleteVoiceShortcutWithIdentifier:(id)identifier name:(id)name accessSpecifier:(id)specifier completion:(id)completion;
- (void)drawGlyphs:(id)glyphs withBackgroundColorValues:(id)values padding:(double)padding rounded:(BOOL)rounded intoContext:(id)context;
- (void)getInactiveAppsWithAccessSpecifier:(id)specifier completion:(id)completion;
- (void)getLinkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier expandingParameterName:(id)name limit:(int64_t)limit completion:(id)completion;
- (void)getLinkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier serializedParameterStates:(id)states completion:(id)completion;
- (void)getMigratedAppIntentWithINIntent:(id)intent completion:(id)completion;
- (void)getNumberOfVoiceShortcutsWithAccessSpecifier:(id)specifier completion:(id)completion;
- (void)getResultsForQuery:(id)query resultClass:(Class)class completion:(id)completion;
- (void)getRunShortcutIntentForWorkflow:(id)workflow completion:(id)completion;
- (void)getSerializedParametersForLinkAction:(id)action actionMetadata:(id)metadata completion:(id)completion;
- (void)getShortcutSuggestionsForAllAppsWithLimit:(unint64_t)limit accessSpecifier:(id)specifier completion:(id)completion;
- (void)getShortcutSuggestionsForAppWithBundleIdentifier:(id)identifier accessSpecifier:(id)specifier completion:(id)completion;
- (void)getSiriAutoShortcutsEnablementForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getValueForDescriptor:(id)descriptor resultClass:(Class)class completion:(id)completion;
- (void)getVoiceShortcutWithIdentifier:(id)identifier accessSpecifier:(id)specifier completion:(id)completion;
- (void)getVoiceShortcutWithPhrase:(id)phrase accessSpecifier:(id)specifier completion:(id)completion;
- (void)getVoiceShortcutsForAppsWithBundleIdentifiers:(id)identifiers accessSpecifier:(id)specifier completion:(id)completion;
- (void)getVoiceShortcutsWithAccessSpecifier:(id)specifier completion:(id)completion;
- (void)logHomescreenFastPathRunEventForShortcutWithWebClip:(id)clip;
- (void)removeAllSerializedParametersForQueryName:(id)name completion:(id)completion;
- (void)requestDataMigrationWithCompletion:(id)completion;
- (void)serializedParametersForAppEntityIdentifier:(id)identifier completion:(id)completion;
- (void)setPerWorkflowStateData:(id)data forSmartPromptWithActionUUID:(id)d reference:(id)reference;
- (void)setShortcutSuggestions:(id)suggestions forAppWithBundleIdentifier:(id)identifier accessSpecifier:(id)specifier;
- (void)storeSerializedParameters:(id)parameters forAppEntityIdentifier:(id)identifier queryName:(id)name badgeType:(unint64_t)type completion:(id)completion;
- (void)triggerFullContextualActionReindexWithCompletion:(id)completion;
- (void)unarchiveActionFromData:(id)data withActionMetadata:(id)metadata completion:(id)completion;
- (void)updateAppShortcutsWithCompletion:(id)completion;
- (void)updateLSDatabaseAnchors;
- (void)updateVoiceShortcutWithIdentifier:(id)identifier phrase:(id)phrase shortcut:(id)shortcut accessSpecifier:(id)specifier completion:(id)completion;
@end

@implementation VCVoiceShortcutManager

- (void)triggerFullContextualActionReindexWithCompletion:(id)completion
{
  completionCopy = completion;
  contextualActionSyncService = [(VCVoiceShortcutManager *)self contextualActionSyncService];
  [contextualActionSyncService reindexAllSearchableItemsWithCompletion:completionCopy];
}

- (void)getRunShortcutIntentForWorkflow:(id)workflow completion:(id)completion
{
  v88 = *MEMORY[0x277D85DE8];
  workflowCopy = workflow;
  completionCopy = completion;
  v7 = getWFControlMigrationLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [workflowCopy identifier];
    *buf = 136315394;
    v85 = "[VCVoiceShortcutManager getRunShortcutIntentForWorkflow:completion:]";
    v86 = 2112;
    v87 = identifier;
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v79 = [(VCVoiceShortcutManager *)self actionWithAppBundleIdentifier:*MEMORY[0x277D7A338] appIntentIdentifier:@"RunShortcutIntent" serializedParameters:0];
  v9 = objc_alloc(MEMORY[0x277D23800]);
  identifier2 = [workflowCopy identifier];
  v11 = [v9 initWithTypeIdentifier:@"ConfiguredShortcut" instanceIdentifier:identifier2];

  v12 = objc_alloc(MEMORY[0x277D237F0]);
  v78 = v11;
  v75 = [v12 initWithTransient:1 identifier:v11 properties:MEMORY[0x277CBEBF8] managedAccountIdentifier:0];
  v77 = [objc_alloc(MEMORY[0x277D23828]) initWithIdentifier:@"ConfiguredShortcut"];
  v74 = [objc_alloc(MEMORY[0x277D23958]) initWithValue:v75 valueType:v77];
  v13 = [MEMORY[0x277D79E50] systemActionWithValue:?];
  if (!v13)
  {
    v14 = getWFControlMigrationLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [workflowCopy identifier];
      *buf = 136315394;
      v85 = "[VCVoiceShortcutManager getRunShortcutIntentForWorkflow:completion:]";
      v86 = 2112;
      v87 = identifier3;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s Could not make configured system action from workflow %@", buf, 0x16u);
    }
  }

  asLNValue = [v13 asLNValue];
  v17 = asLNValue;
  v80 = workflowCopy;
  v73 = v13;
  if (!v13 || asLNValue)
  {
    if (asLNValue)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = getWFControlMigrationLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      identifier4 = [workflowCopy identifier];
      *buf = 136315394;
      v85 = "[VCVoiceShortcutManager getRunShortcutIntentForWorkflow:completion:]";
      v86 = 2112;
      v87 = identifier4;
      _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_ERROR, "%s Could not get LNValue from configured system action for workflow %@", buf, 0x16u);
    }
  }

  v68 = MEMORY[0x277CBEB18];
  v20 = objc_alloc(MEMORY[0x277D238D8]);
  v21 = objc_alloc(MEMORY[0x277D23958]);
  identifier5 = [workflowCopy identifier];
  stringValueType = [MEMORY[0x277D238C8] stringValueType];
  v70 = [v21 initWithValue:identifier5 valueType:stringValueType];
  v69 = [v20 initWithIdentifier:@"identifier" value:v70];
  v83[0] = v69;
  v22 = objc_alloc(MEMORY[0x277D238D8]);
  v23 = objc_alloc(MEMORY[0x277D23958]);
  name = [workflowCopy name];
  stringValueType2 = [MEMORY[0x277D238C8] stringValueType];
  v65 = [v23 initWithValue:name valueType:stringValueType2];
  v64 = [v22 initWithIdentifier:@"name" value:v65];
  v83[1] = v64;
  v24 = objc_alloc(MEMORY[0x277D238D8]);
  v25 = objc_alloc(MEMORY[0x277D23958]);
  v26 = MEMORY[0x277CCABB0];
  backgroundColor = [v80 backgroundColor];
  v27 = [v26 numberWithUnsignedInt:{objc_msgSend(backgroundColor, "RGBAValue")}];
  intValueType = [MEMORY[0x277D238C8] intValueType];
  v29 = [v25 initWithValue:v27 valueType:intValueType];
  v30 = [v24 initWithIdentifier:@"colorCode" value:v29];
  v83[2] = v30;
  v31 = objc_alloc(MEMORY[0x277D238D8]);
  v32 = objc_alloc(MEMORY[0x277D23958]);
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v80, "glyphCharacter")}];
  intValueType2 = [MEMORY[0x277D238C8] intValueType];
  v35 = [v32 initWithValue:v33 valueType:intValueType2];
  v36 = [v31 initWithIdentifier:@"glyphCharacter" value:v35];
  v83[3] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
  v38 = [v68 arrayWithArray:v37];

  associatedAppBundleIdentifier = [v80 associatedAppBundleIdentifier];

  if (associatedAppBundleIdentifier)
  {
    v40 = objc_alloc(MEMORY[0x277D23958]);
    associatedAppBundleIdentifier2 = [v80 associatedAppBundleIdentifier];
    stringValueType3 = [MEMORY[0x277D238C8] stringValueType];
    v43 = [v40 initWithValue:associatedAppBundleIdentifier2 valueType:stringValueType3];

    v44 = [objc_alloc(MEMORY[0x277D238D8]) initWithIdentifier:@"associatedAppBundleIdentifier" value:v43];
    [v38 addObject:v44];
  }

  v45 = [objc_alloc(MEMORY[0x277D237F0]) initWithTransient:1 identifier:v78 properties:v38 managedAccountIdentifier:0];
  v17 = [objc_alloc(MEMORY[0x277D23958]) initWithValue:v45 valueType:v77];

LABEL_16:
  v81 = @"shortcut";
  wfSerializedRepresentation = [v17 wfSerializedRepresentation];
  v82 = wfSerializedRepresentation;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];

  v48 = [v79 copyWithSerializedParameters:v47];
  [v48 serializeAppIntentDescriptorIfNecessary];
  v49 = objc_alloc(MEMORY[0x277CD3A70]);
  fullyQualifiedLinkActionIdentifier = [v79 fullyQualifiedLinkActionIdentifier];
  bundleIdentifier = [fullyQualifiedLinkActionIdentifier bundleIdentifier];
  fullyQualifiedLinkActionIdentifier2 = [v79 fullyQualifiedLinkActionIdentifier];
  actionIdentifier = [fullyQualifiedLinkActionIdentifier2 actionIdentifier];
  serializedParameters = [v48 serializedParameters];
  v55 = [v49 initWithAppBundleIdentifier:bundleIdentifier appIntentIdentifier:actionIdentifier serializedParameters:serializedParameters];

  metadata = [v48 metadata];
  effectiveBundleIdentifiers = [metadata effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  v59 = [array if_firstObjectPassingTest:&__block_literal_global_413];
  bundleIdentifier2 = [v59 bundleIdentifier];
  [v55 _setExtensionBundleId:bundleIdentifier2];

  v61 = getWFControlMigrationLogObject();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v85 = "[VCVoiceShortcutManager getRunShortcutIntentForWorkflow:completion:]";
    v86 = 2112;
    v87 = v55;
    _os_log_impl(&dword_23103C000, v61, OS_LOG_TYPE_DEFAULT, "%s Result %@", buf, 0x16u);
  }

  completionCopy[2](completionCopy, v55, 0);
  v62 = *MEMORY[0x277D85DE8];
}

- (void)getSerializedParametersForLinkAction:(id)action actionMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  v7 = WFLinkActionSerializedParametersForLNAction();
  (*(completion + 2))(completionCopy, v7, 0);
}

- (void)getMigratedAppIntentWithINIntent:(id)intent completion:(id)completion
{
  v39[1] = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  completionCopy = completion;
  v7 = intentCopy;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    completionCopy[2](completionCopy, v7, 0);
    v8 = v7;
  }

  else
  {

    mEMORY[0x277D7C598] = [MEMORY[0x277D7C598] sharedProvider];
    launchId = [v7 launchId];
    _className = [v7 _className];
    v12 = [mEMORY[0x277D7C598] customIntentMigratedActionIdentifierWithLaunchId:launchId className:_className];

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277D7C0D8]);
      v14 = [v13 initWithActionIdentifier:v12 serializedParameters:MEMORY[0x277CBEC10]];
      v39[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      [mEMORY[0x277D7C598] createActionsForRequests:v15];

      v36 = v14;
      result = [v14 result];
      v37 = v12;
      v38 = mEMORY[0x277D7C598];
      if (result)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = result;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v22 = v17;

      v23 = [v22 serializedParametersForDonatedIntent:v7 allowDroppingUnconfigurableValues:1];
      v24 = [v22 copyWithSerializedParameters:v23];

      v25 = objc_alloc(MEMORY[0x277CD3A70]);
      fullyQualifiedLinkActionIdentifier = [v24 fullyQualifiedLinkActionIdentifier];
      bundleIdentifier = [fullyQualifiedLinkActionIdentifier bundleIdentifier];
      fullyQualifiedLinkActionIdentifier2 = [v24 fullyQualifiedLinkActionIdentifier];
      actionIdentifier = [fullyQualifiedLinkActionIdentifier2 actionIdentifier];
      v8 = [v25 initWithAppBundleIdentifier:bundleIdentifier appIntentIdentifier:actionIdentifier serializedParameters:v23];

      metadata = [v24 metadata];
      effectiveBundleIdentifiers = [metadata effectiveBundleIdentifiers];
      array = [effectiveBundleIdentifiers array];
      v33 = [array if_firstObjectPassingTest:&__block_literal_global_386];
      bundleIdentifier2 = [v33 bundleIdentifier];
      [v8 _setExtensionBundleId:bundleIdentifier2];

      completionCopy[2](completionCopy, v8, 0);
      v12 = v37;
      mEMORY[0x277D7C598] = v38;
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      _className2 = [v7 _className];
      launchId2 = [v7 launchId];
      v21 = [v18 vc_voiceShortcutErrorWithCode:11000 reason:{@"Unable to find an app intent matching %@ for %@", _className2, launchId2}];

      (completionCopy)[2](completionCopy, 0, v21);
      v8 = 0;
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)getLinkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier expandingParameterName:(id)name limit:(int64_t)limit completion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  intentIdentifierCopy = intentIdentifier;
  nameCopy = name;
  completionCopy = completion;
  v15 = [(VCVoiceShortcutManager *)self actionWithAppBundleIdentifier:identifierCopy appIntentIdentifier:intentIdentifierCopy serializedParameters:0];
  v16 = v15;
  if (v15)
  {
    linkActionWithSerializedParameters = [v15 linkActionWithSerializedParameters];
    if (nameCopy)
    {
      daemonProvider = [MEMORY[0x277D79DB0] daemonProvider];
      v50 = [daemonProvider actionWithIdentifier:intentIdentifierCopy fromBundleIdentifier:identifierCopy];
      parameters = [v50 parameters];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __123__VCVoiceShortcutManager_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke;
      v58[3] = &unk_2788FE0D8;
      v20 = nameCopy;
      v59 = v20;
      v21 = [parameters if_firstObjectPassingTest:v58];

      if (!v21)
      {
        v36 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v61 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]";
          _os_log_impl(&dword_23103C000, v36, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action but requested expanding parameter not found. Returning the generated link action", buf, 0xCu);
        }

        (*(completionCopy + 2))(completionCopy, linkActionWithSerializedParameters, 0, 0);
        goto LABEL_36;
      }

      v47 = nameCopy;
      v49 = daemonProvider;
      valueType = [v21 valueType];
      wf_enumValueType = [valueType wf_enumValueType];

      v24 = v21;
      valueType2 = [v21 valueType];
      wf_entityValueType = [valueType2 wf_entityValueType];

      v27 = wf_enumValueType;
      v48 = wf_entityValueType;
      if (!(wf_enumValueType | wf_entityValueType))
      {
        v37 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v61 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]";
          _os_log_impl(&dword_23103C000, v37, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action but requested expanding parameter does not support expanding. Returning the generated link action", buf, 0xCu);
        }

        (*(completionCopy + 2))(completionCopy, linkActionWithSerializedParameters, 0, 0);
        v38 = wf_entityValueType;
        daemonProvider = v49;
        v21 = v24;
        nameCopy = v47;
        goto LABEL_35;
      }

      if (wf_enumValueType)
      {
        enumerationIdentifier = [wf_enumValueType enumerationIdentifier];
        v29 = [v49 enumerationWithIdentifier:enumerationIdentifier fromBundleIdentifier:identifierCopy];

        v30 = v29;
        v21 = v24;
        v45 = v30;
        if (v30)
        {
          cases = [v30 cases];
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __123__VCVoiceShortcutManager_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke_372;
          v55[3] = &unk_2788FE100;
          v46 = wf_enumValueType;
          v56 = wf_enumValueType;
          v57 = v20;
          v32 = [cases if_map:v55];

          v33 = getWFAppIntentsLogObject();
          nameCopy = v47;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v61 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]";
            _os_log_impl(&dword_23103C000, v33, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action with expanded requested expanding parameter not found. Returning the generated link action", buf, 0xCu);
          }

          (*(completionCopy + 2))(completionCopy, linkActionWithSerializedParameters, v32, 0);
          v27 = v46;
        }

        else
        {
          v42 = getWFAppIntentsLogObject();
          nameCopy = v47;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v61 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]";
            _os_log_impl(&dword_23103C000, v42, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action but could not expand requested expanding parameter not found. Returning the generated link action", buf, 0xCu);
          }

          (*(completionCopy + 2))(completionCopy, linkActionWithSerializedParameters, 0, 0);
          v27 = wf_enumValueType;
        }

        daemonProvider = v49;
      }

      else
      {
        v38 = wf_entityValueType;
        daemonProvider = v49;
        v21 = v24;
        nameCopy = v47;
        if (!v48)
        {
LABEL_35:

LABEL_36:
          goto LABEL_37;
        }

        identifier = [v48 identifier];
        v40 = [v49 entityWithIdentifier:identifier fromBundleIdentifier:identifierCopy];

        if (v40)
        {
          v41 = [v16 parameterForKey:v20];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __123__VCVoiceShortcutManager_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke_376;
          v51[3] = &unk_2788FE150;
          v54 = completionCopy;
          v52 = linkActionWithSerializedParameters;
          v53 = v20;
          [v16 loadPossibleStatesForEnumeration:v41 searchTerm:0 completionHandler:v51];
        }

        else
        {
          v43 = getWFAppIntentsLogObject();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v61 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]";
            _os_log_impl(&dword_23103C000, v43, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action but could not expand requested expanding parameter not found. Returning the generated link action", buf, 0xCu);
          }

          (*(completionCopy + 2))(completionCopy, linkActionWithSerializedParameters, 0, 0);
        }

        v27 = 0;

        daemonProvider = v49;
      }

      v38 = v48;
      goto LABEL_35;
    }

    v35 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v61 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]";
      _os_log_impl(&dword_23103C000, v35, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action without expanding parameter succeed. Returning the generated link action", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, linkActionWithSerializedParameters, 0, 0);
  }

  else
  {
    v34 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v61 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]";
      _os_log_impl(&dword_23103C000, v34, OS_LOG_TYPE_DEFAULT, "%s Failed to create a WFLinkAction", buf, 0xCu);
    }

    linkActionWithSerializedParameters = VCVoiceShortcutClientArchingError(@"Failed to create LinkAction", 0);
    (*(completionCopy + 2))(completionCopy, 0, 0, linkActionWithSerializedParameters);
  }

LABEL_37:

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __123__VCVoiceShortcutManager_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id __123__VCVoiceShortcutManager_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke_372(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D23958];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 identifier];
  v7 = *(a1 + 32);
  v8 = [v4 displayRepresentation];

  v9 = [v5 initWithValue:v6 valueType:v7 displayRepresentation:v8];
  v10 = [objc_alloc(MEMORY[0x277D238D8]) initWithIdentifier:*(a1 + 40) value:v9];

  return v10;
}

void __123__VCVoiceShortcutManager_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke_376(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [a2 allItems];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __123__VCVoiceShortcutManager_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke_377;
    v10[3] = &unk_2788FE128;
    v11 = *(a1 + 40);
    v4 = [v3 if_map:v10];

    v5 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]_block_invoke_2";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action with expanded requested expanding parameter not found. Returning the generated link action", buf, 0xCu);
    }

    v6 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]_block_invoke";
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action but could not expand requested expanding parameter not found. Returning the generated link action", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __123__VCVoiceShortcutManager_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke_377(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = objc_alloc(MEMORY[0x277D238D8]);
  v5 = *(a1 + 32);
  v6 = [v3 value];
  v7 = [v4 initWithIdentifier:v5 value:v6];

  return v7;
}

- (void)getLinkActionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier serializedParameterStates:(id)states completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  intentIdentifierCopy = intentIdentifier;
  statesCopy = states;
  completionCopy = completion;
  v14 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v20 = 136315906;
    v21 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:serializedParameterStates:completion:]";
    v22 = 2112;
    v23 = intentIdentifierCopy;
    v24 = 2112;
    v25 = identifierCopy;
    v26 = 2112;
    v27 = statesCopy;
    _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_INFO, "%s Creating an app intent representation for %@ (%@) from serialized parameters: %@", &v20, 0x2Au);
  }

  v15 = [(VCVoiceShortcutManager *)self actionWithAppBundleIdentifier:identifierCopy appIntentIdentifier:intentIdentifierCopy serializedParameters:statesCopy];
  v16 = v15;
  if (v15)
  {
    linkActionWithSerializedParameters = [v15 linkActionWithSerializedParameters];
    completionCopy[2](completionCopy, linkActionWithSerializedParameters, 0);
  }

  else
  {
    v18 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:serializedParameterStates:completion:]";
      _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_DEFAULT, "%s Failed to create a LinkAction", &v20, 0xCu);
    }

    linkActionWithSerializedParameters = VCVoiceShortcutClientArchingError(@"Failed to create LinkAction", 0);
    (completionCopy)[2](completionCopy, 0, linkActionWithSerializedParameters);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)actionWithAppBundleIdentifier:(id)identifier appIntentIdentifier:(id)intentIdentifier serializedParameters:(id)parameters
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D7C598];
  parametersCopy = parameters;
  intentIdentifierCopy = intentIdentifier;
  identifierCopy = identifier;
  sharedProvider = [v7 sharedProvider];
  v12 = [identifierCopy stringByAppendingString:@"."];

  v13 = [v12 stringByAppendingString:intentIdentifierCopy];

  v14 = [objc_alloc(MEMORY[0x277D7C0D8]) initWithActionIdentifier:v13 serializedParameters:parametersCopy];
  v21[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [sharedProvider createActionsForRequests:v15];

  result = [v14 result];
  if (result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = result;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  [v18 initializeParametersIfNecessary];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)actionWithSerializedParameters:(id)parameters actionMetadata:(id)metadata
{
  v31 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  metadataCopy = metadata;
  effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  v10 = [array if_firstObjectPassingTest:&__block_literal_global];

  bundleIdentifier = [v10 bundleIdentifier];
  if (bundleIdentifier)
  {
    goto LABEL_4;
  }

  v12 = objc_alloc(MEMORY[0x277CC1E50]);
  effectiveBundleIdentifiers2 = [metadataCopy effectiveBundleIdentifiers];
  firstObject = [effectiveBundleIdentifiers2 firstObject];
  bundleIdentifier2 = [firstObject bundleIdentifier];
  v26 = 0;
  v16 = [v12 initWithBundleIdentifier:bundleIdentifier2 error:&v26];
  bundleIdentifier = v26;

  if (v16)
  {
    if_containingAppRecord = [v16 if_containingAppRecord];
    bundleIdentifier3 = [if_containingAppRecord bundleIdentifier];

    bundleIdentifier = bundleIdentifier3;
LABEL_4:
    identifier = [metadataCopy identifier];
    v20 = [(VCVoiceShortcutManager *)self actionWithAppBundleIdentifier:bundleIdentifier appIntentIdentifier:identifier serializedParameters:parametersCopy];
    goto LABEL_5;
  }

  identifier = getWFAppIntentsLogObject();
  if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
  {
    effectiveBundleIdentifiers3 = [metadataCopy effectiveBundleIdentifiers];
    firstObject2 = [effectiveBundleIdentifiers3 firstObject];
    bundleIdentifier4 = [firstObject2 bundleIdentifier];
    *buf = 136315394;
    v28 = "[VCVoiceShortcutManager actionWithSerializedParameters:actionMetadata:]";
    v29 = 2114;
    v30 = bundleIdentifier4;
    _os_log_impl(&dword_23103C000, identifier, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Unable to find the bundle record for %{public}@", buf, 0x16u);
  }

  v20 = 0;
LABEL_5:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)unarchiveActionFromData:(id)data withActionMetadata:(id)metadata completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  completionCopy = completion;
  v10 = MEMORY[0x277CBEAE0];
  dataCopy = data;
  v12 = [[v10 alloc] initWithData:dataCopy];

  [v12 open];
  v28 = 0;
  v13 = [MEMORY[0x277CCAC58] propertyListWithStream:v12 options:0 format:0 error:&v28];
  v14 = v28;
  [v12 close];
  if (v13)
  {
    v15 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [v17 objectForKey:@"SerializedParameters"];

    if (!v18)
    {
      v19 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v30 = "[VCVoiceShortcutManager unarchiveActionFromData:withActionMetadata:completion:]";
        _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Unrecognized data format", buf, 0xCu);
      }

      v20 = VCVoiceShortcutClientArchingError(@"Failed to unarchive App Intent", v14);
      completionCopy[2](completionCopy, 0, v20);
    }

    v21 = [(VCVoiceShortcutManager *)self actionWithSerializedParameters:v18 actionMetadata:metadataCopy];
    if (v21)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __80__VCVoiceShortcutManager_unarchiveActionFromData_withActionMetadata_completion___block_invoke;
      v26[3] = &unk_2788FE090;
      v27 = completionCopy;
      [v21 getLinkActionForArchivingFallingBackToDefaultValue:0 completionHandler:v26];
      v22 = v27;
    }

    else
    {
      v24 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v30 = "[VCVoiceShortcutManager unarchiveActionFromData:withActionMetadata:completion:]";
        _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Fail to convert to LinkAction", buf, 0xCu);
      }

      v22 = VCVoiceShortcutClientArchingError(@"Failed to unarchive App Intent", v14);
      completionCopy[2](completionCopy, 0, v22);
    }
  }

  else
  {
    v23 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[VCVoiceShortcutManager unarchiveActionFromData:withActionMetadata:completion:]";
      _os_log_impl(&dword_23103C000, v23, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Fail to convert incoming data", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0, v14);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __80__VCVoiceShortcutManager_unarchiveActionFromData_withActionMetadata_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = a3;
    v8 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[VCVoiceShortcutManager unarchiveActionFromData:withActionMetadata:completion:]_block_invoke";
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Fail to process LinkAction", &v10, 0xCu);
    }

    v6 = VCVoiceShortcutClientArchingError(@"Failed to unarchive App Intent", v7);
  }

  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)archiveAction:(id)action withActionMetadata:(id)metadata completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  completionCopy = completion;
  metadataCopy = metadata;
  parameters = [metadataCopy parameters];
  v12 = [parameters valueForKey:@"name"];

  v13 = MEMORY[0x277CBEAC0];
  parameters2 = [metadataCopy parameters];
  v15 = [v13 dictionaryWithObjects:parameters2 forKeys:v12];

  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
  parameters3 = [actionCopy parameters];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __70__VCVoiceShortcutManager_archiveAction_withActionMetadata_completion___block_invoke;
  v38[3] = &unk_2788FE068;
  v18 = v15;
  v39 = v18;
  v19 = actionCopy;
  v40 = v19;
  v20 = v16;
  v41 = v20;
  [parameters3 enumerateObjectsUsingBlock:v38];

  v21 = [(VCVoiceShortcutManager *)self actionWithSerializedParameters:v20 actionMetadata:metadataCopy];

  if (v21)
  {
    v35 = v19;
    v36 = v12;
    v22 = MEMORY[0x277CBEB38];
    v42 = @"SerializedParameters";
    serializedParameters = [v21 serializedParameters];
    v43 = serializedParameters;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v25 = [v22 dictionaryWithDictionary:v24];

    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];
    if (v27)
    {
      [v25 setObject:v27 forKeyedSubscript:@"ClientVersion"];
    }

    outputStreamToMemory = [MEMORY[0x277CBEB78] outputStreamToMemory];
    [outputStreamToMemory open];
    v37 = 0;
    v29 = [MEMORY[0x277CCAC58] writePropertyList:v25 toStream:outputStreamToMemory format:200 options:0 error:&v37];
    v30 = v37;
    [outputStreamToMemory close];
    if (v29 <= 0)
    {
      v33 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v45 = "[VCVoiceShortcutManager archiveAction:withActionMetadata:completion:]";
        _os_log_impl(&dword_23103C000, v33, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Fail to convert action to data", buf, 0xCu);
      }

      v31 = VCVoiceShortcutClientArchingError(@"Failed to archive App Intent", v30);
      completionCopy[2](completionCopy, 0, v31);
    }

    else
    {
      v31 = [outputStreamToMemory propertyForKey:*MEMORY[0x277CBE740]];
      (completionCopy)[2](completionCopy, v31, 0);
    }

    v19 = v35;
    v12 = v36;
  }

  else
  {
    v32 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[VCVoiceShortcutManager archiveAction:withActionMetadata:completion:]";
      _os_log_impl(&dword_23103C000, v32, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Fail to convert to LinkAction", buf, 0xCu);
    }

    v30 = VCVoiceShortcutClientArchingError(@"Failed to archive App Intent", 0);
    completionCopy[2](completionCopy, 0, v30);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __70__VCVoiceShortcutManager_archiveAction_withActionMetadata_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15 = v3;
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 valueType];
    v8 = [*(a1 + 40) identifier];
    v9 = [v7 wf_parameterDefinitionWithParameterMetadata:v6 actionIdentifier:v8];

    v10 = [v15 value];
    v11 = [v9 parameterStateFromLinkValue:v10];
    v12 = [v11 serializedRepresentation];

    v13 = *(a1 + 48);
    v14 = [v15 identifier];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }
}

- (void)badgeTypeForEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v7 = [databaseProvider databaseWithError:error];

  v8 = [v7 serializedParametersForIdentifier:identifierCopy error:error];
}

- (void)applicationWasUnregistered:(id)unregistered
{
  v21 = *MEMORY[0x277D85DE8];
  unregisteredCopy = unregistered;
  userInfo = [unregisteredCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"isPlaceholder"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      userInfo2 = [unregisteredCopy userInfo];
      v15 = 136315394;
      v16 = "[VCVoiceShortcutManager applicationWasUnregistered:]";
      v17 = 2112;
      v18 = userInfo2;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEBUG, "%s Ignoring placeholder uninstall event: (%@)", &v15, 0x16u);
LABEL_8:
    }
  }

  else
  {
    userInfo3 = [unregisteredCopy userInfo];
    v11 = [userInfo3 objectForKeyedSubscript:@"bundleIDs"];
    v8 = VCInactiveAppsFromList();

    if (![v8 count])
    {
      userInfo2 = getWFGeneralLogObject();
      if (os_log_type_enabled(userInfo2, OS_LOG_TYPE_ERROR))
      {
        name = [unregisteredCopy name];
        userInfo4 = [unregisteredCopy userInfo];
        v15 = 136315650;
        v16 = "[VCVoiceShortcutManager applicationWasUnregistered:]";
        v17 = 2112;
        v18 = name;
        v19 = 2112;
        v20 = userInfo4;
        _os_log_impl(&dword_23103C000, userInfo2, OS_LOG_TYPE_ERROR, "%s Received (%@) launch event, but no bundle identifiers were supplied. Exiting. UserInfo: (%@)", &v15, 0x20u);
      }

      goto LABEL_8;
    }

    [(VCVoiceShortcutManager *)self deleteSuggestionsFromApps:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeAllSerializedParametersForQueryName:(id)name completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v13 = 0;
  v9 = [databaseProvider databaseWithError:&v13];
  v10 = v13;

  v12 = v10;
  [v9 removeAllSerializedParametersForQueryName:nameCopy error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v11);
}

- (void)storeSerializedParameters:(id)parameters forAppEntityIdentifier:(id)identifier queryName:(id)name badgeType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  identifierCopy = identifier;
  parametersCopy = parameters;
  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v21 = 0;
  v17 = [databaseProvider databaseWithError:&v21];
  v18 = v21;

  v20 = v18;
  [v17 storeSerializedParameters:parametersCopy forIdentifier:identifierCopy queryName:nameCopy badgeType:type error:&v20];

  v19 = v20;
  completionCopy[2](completionCopy, v19);
}

- (void)serializedParametersForAppEntityIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v14 = 0;
  v9 = [databaseProvider databaseWithError:&v14];
  v10 = v14;

  v13 = v10;
  v11 = [v9 serializedParametersForIdentifier:identifierCopy error:&v13];

  v12 = v13;
  completionCopy[2](completionCopy, v11, v12);
}

- (void)updateAppShortcutsWithCompletion:(id)completion
{
  completionCopy = completion;
  appShortcutsUpdater = [(VCVoiceShortcutManager *)self appShortcutsUpdater];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__VCVoiceShortcutManager_updateAppShortcutsWithCompletion___block_invoke;
  v7[3] = &unk_2789001E0;
  v8 = completionCopy;
  v6 = completionCopy;
  [appShortcutsUpdater updateWithCompletion:v7];
}

- (void)getSiriAutoShortcutsEnablementForBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v14 = 0;
  v9 = [databaseProvider databaseWithError:&v14];
  v10 = v14;

  v13 = v10;
  v11 = [v9 isSiriEnabledForAutoShortcutsWithBundleIdentifier:identifierCopy error:&v13];

  v12 = v13;
  completionCopy[2](completionCopy, v11, v12);
}

- (void)setPerWorkflowStateData:(id)data forSmartPromptWithActionUUID:(id)d reference:(id)reference
{
  referenceCopy = reference;
  dCopy = d;
  dataCopy = data;
  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v16 = 0;
  v12 = [databaseProvider databaseWithError:&v16];
  v13 = v16;

  v15 = v13;
  [v12 saveSmartPromptStateData:dataCopy actionUUID:dCopy reference:referenceCopy error:&v15];

  v14 = v15;
}

- (void)logHomescreenFastPathRunEventForShortcutWithWebClip:(id)clip
{
  v36 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  if (!clipCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:828 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];
  }

  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v29 = 0;
  v7 = [databaseProvider databaseWithError:&v29];
  v8 = v29;

  if (v7)
  {
    shortcutIdentifier = [clipCopy shortcutIdentifier];
    v10 = [MEMORY[0x277CBEB98] setWithObjects:{@"source", @"galleryIdentifier", 0}];
    v11 = [objc_alloc(MEMORY[0x277D79EF0]) initWithIdentifier:shortcutIdentifier objectType:0];
    v28 = v8;
    v12 = [v7 recordWithDescriptor:v11 properties:v10 error:&v28];
    v13 = v28;

    if (v12)
    {
      v25 = WFHomescreenFastPathRunShortcutEvent(clipCopy, v12, @"RunShortcutStart");
      v26 = WFHomescreenFastPathRunShortcutEvent(clipCopy, v12, *MEMORY[0x277D7CC88]);
      v14 = WFHomescreenFastPathRunActionEvent(clipCopy, v12, @"RunActionStart");
      WFHomescreenFastPathRunActionEvent(clipCopy, v12, @"RunActionFinish");
      v15 = v27 = v10;
      [v25 track];
      [v14 track];
      [v12 name];
      v17 = v16 = v11;
      [v7 uniqueVisibleReferenceForWorkflowName:v17];
      v18 = shortcutIdentifier;
      v20 = v19 = v13;
      v21 = [v7 logRunOfWorkflow:v20 withSource:*MEMORY[0x277D7A848] triggerID:0];

      v13 = v19;
      shortcutIdentifier = v18;

      v11 = v16;
      v22 = v25;
      [v15 track];
      [v26 track];

      v10 = v27;
    }

    else
    {
      v22 = getWFGeneralLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v31 = "[VCVoiceShortcutManager logHomescreenFastPathRunEventForShortcutWithWebClip:]";
        v32 = 2112;
        v33 = v11;
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_ERROR, "%s Unable to log homescreen run event because there was no record that matched the descriptor: %@, error: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    shortcutIdentifier = getWFGeneralLogObject();
    if (os_log_type_enabled(shortcutIdentifier, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[VCVoiceShortcutManager logHomescreenFastPathRunEventForShortcutWithWebClip:]";
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_23103C000, shortcutIdentifier, OS_LOG_TYPE_ERROR, "%s Unable to log homescreen run event because database initialization failed: %@", buf, 0x16u);
    }

    v13 = v8;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)createShortcutWithRecordData:(id)data name:(id)name shortcutSource:(id)source accessSpecifier:(id)specifier completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  nameCopy = name;
  sourceCopy = source;
  specifierCopy = specifier;
  completionCopy = completion;
  if (dataCopy)
  {
    if (specifierCopy)
    {
      goto LABEL_3;
    }

LABEL_37:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:741 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:740 description:{@"Invalid parameter not satisfying: %@", @"workflowRecordData"}];

  if (!specifierCopy)
  {
    goto LABEL_37;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_38:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:742 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  if ([specifierCopy allowShortcutImport])
  {
    databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
    v43 = 0;
    v19 = [databaseProvider databaseWithError:&v43];
    v20 = v43;

    if (v19)
    {
      v40 = VCOSTransactionWithName(@"createShortcutWithRecord");
      v21 = getWFGeneralLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v45 = "[VCVoiceShortcutManager createShortcutWithRecordData:name:shortcutSource:accessSpecifier:completion:]";
        _os_log_impl(&dword_23103C000, v21, OS_LOG_TYPE_DEBUG, "%s Deserializing workflow record from data", buf, 0xCu);
      }

      v42 = 0;
      v22 = [objc_alloc(MEMORY[0x277D7CA70]) initWithFileData:dataCopy name:nameCopy error:&v42];
      v23 = v42;
      v24 = v23;
      if (v22)
      {
        v41 = v23;
        v25 = [v22 recordRepresentationWithError:&v41];
        v39 = v41;

        if (v25)
        {
          if (sourceCopy)
          {
            [v25 setSource:sourceCopy];
          }

          [v25 addWatchWorkflowTypeIfEligible];
          v26 = getWFGeneralLogObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v45 = "[VCVoiceShortcutManager createShortcutWithRecordData:name:shortcutSource:accessSpecifier:completion:]";
            v46 = 2112;
            v47 = v25;
            _os_log_impl(&dword_23103C000, v26, OS_LOG_TYPE_DEBUG, "%s Creating new shortcut from record (%@)", buf, 0x16u);
          }

          v37 = [objc_alloc(MEMORY[0x277D7CA68]) initWithRecord:v25];
          v27 = [v19 createWorkflowWithOptions:? nameCollisionBehavior:? error:?];
          v38 = v20;

          v28 = getWFGeneralLogObject();
          v29 = v28;
          if (v27)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v45 = "[VCVoiceShortcutManager createShortcutWithRecordData:name:shortcutSource:accessSpecifier:completion:]";
              v46 = 2112;
              v47 = v27;
              _os_log_impl(&dword_23103C000, v29, OS_LOG_TYPE_DEBUG, "%s Successfully added shortcut: %@", buf, 0x16u);
            }

            VCVoiceShortcutFromWorkflow(v27, v19, 0, 1, completionCopy);
            v20 = v38;
          }

          else
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v45 = "[VCVoiceShortcutManager createShortcutWithRecordData:name:shortcutSource:accessSpecifier:completion:]";
              v46 = 2112;
              v47 = v38;
              _os_log_impl(&dword_23103C000, v29, OS_LOG_TYPE_ERROR, "%s Error adding VoiceShortcut: %@", buf, 0x16u);
            }

            v20 = v38;
            (*(completionCopy + 2))(completionCopy, 0, v38);
          }

          v24 = v39;
        }

        else
        {
          v32 = getWFGeneralLogObject();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v45 = "[VCVoiceShortcutManager createShortcutWithRecordData:name:shortcutSource:accessSpecifier:completion:]";
            v46 = 2112;
            v47 = v39;
            _os_log_impl(&dword_23103C000, v32, OS_LOG_TYPE_ERROR, "%s Error creating workflow record: %@", buf, 0x16u);
          }

          v24 = v39;
          (*(completionCopy + 2))(completionCopy, 0, v39);
        }
      }

      else
      {
        v31 = getWFGeneralLogObject();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v45 = "[VCVoiceShortcutManager createShortcutWithRecordData:name:shortcutSource:accessSpecifier:completion:]";
          v46 = 2112;
          v47 = v24;
          _os_log_impl(&dword_23103C000, v31, OS_LOG_TYPE_ERROR, "%s Error creating workflow file: %@", buf, 0x16u);
        }

        (*(completionCopy + 2))(completionCopy, 0, v24);
      }
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, v20);
    }
  }

  else
  {
    v30 = getWFGeneralLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "[VCVoiceShortcutManager createShortcutWithRecordData:name:shortcutSource:accessSpecifier:completion:]";
      v46 = 2114;
      v47 = specifierCopy;
      _os_log_impl(&dword_23103C000, v30, OS_LOG_TYPE_ERROR, "%s Unauthorized add attempt for shared shortcut with record using accessSpecifier (%{public}@)", buf, 0x16u);
    }

    v20 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:{@"Unauthorized add attempt for shared shortcut with recordusing accessSpecifier (%@)", specifierCopy}];
    (*(completionCopy + 2))(completionCopy, 0, v20);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)requestDataMigrationWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:707 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v6 = getWFGeneralLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[VCVoiceShortcutManager requestDataMigrationWithCompletion:]";
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Data migration requested", buf, 0xCu);
  }

  v7 = VCOSTransactionWithName(@"voiceShortcutManager.sync.vocabulary");
  completionCopy[2](completionCopy, 1, 0);
  defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
  v13 = *MEMORY[0x277D7A350];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [defaultSearchableIndex deleteSearchableItemsWithDomainIdentifiers:v9 completionHandler:0];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__VCVoiceShortcutManager_requestDataMigrationWithCompletion___block_invoke;
  v12[3] = &unk_2788FE040;
  v12[4] = self;
  [MEMORY[0x277D7C4F8] migrateWebClipsIfNeededWithDatabaseAccessor:v12];
  [(VCVoiceShortcutManager *)self requestShortcutsSpotlightFullReindex];

  v10 = *MEMORY[0x277D85DE8];
}

id __61__VCVoiceShortcutManager_requestDataMigrationWithCompletion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) databaseProvider];
  v7 = 0;
  v2 = [v1 databaseWithError:&v7];
  v3 = v7;

  if (!v2)
  {
    v4 = getWFGeneralLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[VCVoiceShortcutManager requestDataMigrationWithCompletion:]_block_invoke";
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_ERROR, "%s Error opening database for web clip migration: %{public}@", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)getValueForDescriptor:(id)descriptor resultClass:(Class)class completion:(id)completion
{
  v23[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  completionCopy = completion;
  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v22 = 0;
  v11 = [databaseProvider databaseWithError:&v22];
  v12 = v22;

  if (v11)
  {
    if ([descriptorCopy objectType])
    {
      v13 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1001 reason:0];
      completionCopy[2](completionCopy, 0, v13);
    }

    else
    {
      identifier = [descriptorCopy identifier];
      v15 = [v11 referenceForWorkflowID:identifier];

      if (v15)
      {
        v23[0] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
        databaseProvider2 = [(VCVoiceShortcutManager *)self databaseProvider];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __71__VCVoiceShortcutManager_getValueForDescriptor_resultClass_completion___block_invoke;
        v20[3] = &unk_2788FF098;
        v21 = completionCopy;
        [(objc_class *)class getObjectsFromReferences:v16 databaseProvider:databaseProvider2 completion:v20];

        v18 = v21;
      }

      else
      {
        v18 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1002 reason:0];
        completionCopy[2](completionCopy, 0, v18);
      }
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __71__VCVoiceShortcutManager_getValueForDescriptor_resultClass_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [a2 firstObject];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

- (void)getResultsForQuery:(id)query resultClass:(Class)class completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v25 = 0;
  v11 = [databaseProvider databaseWithError:&v25];
  v12 = v25;

  if (v11)
  {
    v13 = VCOSTransactionWithName(@"com.apple.shortcuts.fetch");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v11 sortedWorkflowsWithQuery:queryCopy];
      descriptors = [v14 descriptors];
      databaseProvider2 = [(VCVoiceShortcutManager *)self databaseProvider];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __68__VCVoiceShortcutManager_getResultsForQuery_resultClass_completion___block_invoke;
      v21[3] = &unk_2788FF7F8;
      v24 = completionCopy;
      v22 = v14;
      v23 = v13;
      v17 = v14;
      [(objc_class *)class getObjectsFromReferences:descriptors databaseProvider:databaseProvider2 completion:v21];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sortedVisibleFolders = [v11 sortedVisibleFolders];
        descriptors2 = [sortedVisibleFolders descriptors];
        state = [sortedVisibleFolders state];
        (*(completionCopy + 2))(completionCopy, descriptors2, state, 0);
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, 0);
      }
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v12);
  }
}

void __68__VCVoiceShortcutManager_getResultsForQuery_resultClass_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v8 = v5;
  if (v5)
  {
    v7 = [*(a1 + 32) state];
    (*(v6 + 16))(v6, v8, v7, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, 0, a3);
  }
}

- (void)updateLSDatabaseAnchors
{
  v14 = *MEMORY[0x277D85DE8];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v10 = 0;
  v11 = 0;
  [defaultWorkspace getKnowledgeUUID:&v11 andSequenceNumber:&v10];
  v3 = v11;
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[VCVoiceShortcutManager updateLSDatabaseAnchors]";
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Unable to fetch LS database state.", buf, 0xCu);
    }
  }

  else
  {
    v7 = +[VCUserDefaults sharedUserDefaults];
    uUIDString = [v3 UUIDString];
    [v7 setObject:uUIDString forKey:@"VCLSDatabaseUUIDKey"];

    [v7 setObject:v5 forKey:@"VCLSDataSequenceKey"];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)lsDatabaseChangedSinceLastCheck
{
  v20 = *MEMORY[0x277D85DE8];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v16 = 0;
  v17 = 0;
  [defaultWorkspace getKnowledgeUUID:&v17 andSequenceNumber:&v16];
  v3 = v17;
  v4 = v16;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[VCVoiceShortcutManager lsDatabaseChangedSinceLastCheck]";
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Unable to fetch LS database state.", buf, 0xCu);
    }

    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = +[VCUserDefaults sharedUserDefaults];
    v9 = [v8 stringForKey:@"VCLSDatabaseUUIDKey"];
    v10 = [v8 objectForKey:@"VCLSDataSequenceKey"];
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      uUIDString = [v3 UUIDString];
      if ([v9 isEqualToString:uUIDString])
      {
        v7 = [v11 isEqualToNumber:v5] ^ 1;
      }

      else
      {
        LOBYTE(v7) = 1;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)deleteSuggestionsFromApps:(id)apps
{
  appsCopy = apps;
  database = [(VCVoiceShortcutManager *)self database];
  [database deleteShortcutSuggestionsFromApps:appsCopy];

  [(VCVoiceShortcutManager *)self updateLSDatabaseAnchors];
}

- (void)deleteStaleSuggestions
{
  v15 = *MEMORY[0x277D85DE8];
  lsDatabaseChangedSinceLastCheck = [(VCVoiceShortcutManager *)self lsDatabaseChangedSinceLastCheck];
  v5 = getWFGeneralLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (lsDatabaseChangedSinceLastCheck)
  {
    if (v6)
    {
      *buf = 136315138;
      v14 = "[VCVoiceShortcutManager deleteStaleSuggestions]";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEBUG, "%s LS database has changed since last check. Checking for stale suggestions.", buf, 0xCu);
    }

    v7 = NSStringFromSelector(a2);
    v8 = VCOSTransactionWithName(v7);

    accessSpecifierUnrestricted = [MEMORY[0x277D79D80] accessSpecifierUnrestricted];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__VCVoiceShortcutManager_deleteStaleSuggestions__block_invoke;
    v11[3] = &unk_2788FE018;
    v11[4] = self;
    v12 = v8;
    v5 = v8;
    [(VCVoiceShortcutManager *)self getInactiveAppsWithAccessSpecifier:accessSpecifierUnrestricted completion:v11];
  }

  else if (v6)
  {
    *buf = 136315138;
    v14 = "[VCVoiceShortcutManager deleteStaleSuggestions]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEBUG, "%s LS database has not changed since last check. No stale suggestions to delete.", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __48__VCVoiceShortcutManager_deleteStaleSuggestions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (![v5 count])
  {
    v7 = getWFGeneralLogObject();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "[VCVoiceShortcutManager deleteStaleSuggestions]_block_invoke";
        v16 = 2114;
        v17 = v6;
        v9 = "%s Error deleting suggested shortcuts (%{public}@)";
        v10 = v8;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 22;
LABEL_8:
        _os_log_impl(&dword_23103C000, v10, v11, v9, &v14, v12);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[VCVoiceShortcutManager deleteStaleSuggestions]_block_invoke";
      v9 = "%s No stale shortcut suggestions found.";
      v10 = v8;
      v11 = OS_LOG_TYPE_INFO;
      v12 = 12;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  [*(a1 + 32) deleteSuggestionsFromApps:v5];
LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)getShortcutSuggestionsForAllAppsWithLimit:(unint64_t)limit accessSpecifier:(id)specifier completion:(id)completion
{
  specifierCopy = specifier;
  completionCopy = completion;
  v11 = completionCopy;
  if (specifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:545 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:546 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  if ([specifierCopy allowReadAccessToSuggestionsWithBundleIdentifier:0])
  {
    databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
    v21 = 0;
    v13 = [databaseProvider databaseWithError:&v21];
    v14 = v21;

    if (v13)
    {
      v20 = v14;
      v15 = [v13 shortcutSuggestionsForAllAppsWithLimit:limit shortcutAvailability:0 error:&v20];
      v16 = v20;

      (v11)[2](v11, v15, v16);
      v14 = v16;
    }

    else
    {
      (v11)[2](v11, 0, v14);
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    (v11)[2](v11, 0, v17);
  }
}

- (void)getShortcutSuggestionsForAppWithBundleIdentifier:(id)identifier accessSpecifier:(id)specifier completion:(id)completion
{
  identifierCopy = identifier;
  specifierCopy = specifier;
  completionCopy = completion;
  if (identifierCopy)
  {
    if (specifierCopy)
    {
      goto LABEL_3;
    }

LABEL_12:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:527 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

  if (!specifierCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_13:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:528 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  if ([specifierCopy allowReadAccessToSuggestionsWithBundleIdentifier:identifierCopy])
  {
    databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
    v22 = 0;
    v13 = [databaseProvider databaseWithError:&v22];
    v14 = v22;

    if (v13)
    {
      v21 = v14;
      v15 = [v13 shortcutSuggestionsForAppWithBundleIdentifier:identifierCopy shortcutAvailability:0 error:&v21];
      v16 = v21;

      completionCopy[2](completionCopy, v15, v16);
      v14 = v16;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v14);
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    completionCopy[2](completionCopy, 0, v17);
  }
}

- (void)setShortcutSuggestions:(id)suggestions forAppWithBundleIdentifier:(id)identifier accessSpecifier:(id)specifier
{
  v31 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  specifierCopy = specifier;
  if (suggestionsCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_18:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:499 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (specifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"shortcutSuggestions"}];

  if (!identifierCopy)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (specifierCopy)
  {
    goto LABEL_4;
  }

LABEL_19:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:500 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

LABEL_4:
  if ([specifierCopy allowWriteAccessToSuggestionsWithBundleIdentifier:identifierCopy])
  {
    databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
    v24 = 0;
    v13 = [databaseProvider databaseWithError:&v24];
    v14 = v24;

    if (v13)
    {
      v15 = VCOSTransactionWithName(@"setVoiceShortcutSuggestions");
      v23 = v14;
      v16 = [v13 setShortcutSuggestions:suggestionsCopy forAppWithBundleIdentifier:identifierCopy error:&v23];
      v17 = v23;

      if ((v16 & 1) == 0)
      {
        v18 = getWFGeneralLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "[VCVoiceShortcutManager setShortcutSuggestions:forAppWithBundleIdentifier:accessSpecifier:]";
          v27 = 2112;
          v28 = v17;
          _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_ERROR, "%s Unable to set shortcut suggestions. %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v15 = getWFGeneralLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[VCVoiceShortcutManager setShortcutSuggestions:forAppWithBundleIdentifier:accessSpecifier:]";
        v27 = 2112;
        v28 = v14;
        _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Unable to get the database. %@", buf, 0x16u);
      }

      v17 = v14;
    }
  }

  else
  {
    v17 = getWFGeneralLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "[VCVoiceShortcutManager setShortcutSuggestions:forAppWithBundleIdentifier:accessSpecifier:]";
      v27 = 2114;
      v28 = identifierCopy;
      v29 = 2114;
      v30 = specifierCopy;
      _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Unauthorized write attempt for suggestions for bundleID (%{public}@) using accessSpecifier (%{public}@)", buf, 0x20u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)drawGlyphs:(id)glyphs withBackgroundColorValues:(id)values padding:(double)padding rounded:(BOOL)rounded intoContext:(id)context
{
  valuesCopy = values;
  contextCopy = context;
  glyphsCopy = glyphs;
  v16 = [glyphsCopy count];
  v17 = [valuesCopy count];
  if (valuesCopy && v16 != v17)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:470 description:{@"Background color values and glyph character arrays should be equal in size, or background color values should be nil."}];
  }

  v18 = objc_alloc_init(MEMORY[0x277D7A1F0]);
  [contextCopy singleImageSize];
  paddingCopy = padding;
  v26[1] = 3221225472;
  v26[0] = MEMORY[0x277D85DD0];
  v26[2] = __91__VCVoiceShortcutManager_drawGlyphs_withBackgroundColorValues_padding_rounded_intoContext___block_invoke;
  v26[3] = &unk_2788FDFF0;
  v27 = valuesCopy;
  v28 = v18;
  roundedCopy = rounded;
  v29 = contextCopy;
  v30 = floorf(paddingCopy);
  v31 = v30;
  v32 = v20 - v30 * 2.0;
  v33 = v21 - v30 * 2.0;
  v22 = contextCopy;
  v23 = v18;
  v24 = valuesCopy;
  [glyphsCopy enumerateObjectsUsingBlock:v26];
}

void __91__VCVoiceShortcutManager_drawGlyphs_withBackgroundColorValues_padding_rounded_intoContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 integerValue];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v8 objectAtIndexedSubscript:a3];
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_alloc(MEMORY[0x277D7A1E0]) initWithBackgroundColorValue:v10 glyphCharacter:v7 customImageData:0];
  v12 = [objc_alloc(MEMORY[0x277D7A1E8]) initWithIcon:v11 drawerContext:*(a1 + 40)];
  [v12 setDrawBackground:v10 != 0];
  [v12 setRounded:*(a1 + 88)];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__VCVoiceShortcutManager_drawGlyphs_withBackgroundColorValues_padding_rounded_intoContext___block_invoke_2;
  v16[3] = &unk_2788FDFC8;
  v17 = v13;
  v18 = v12;
  v14 = *(a1 + 72);
  v19 = *(a1 + 56);
  v20 = v14;
  v15 = v12;
  [v17 accessBitmapContextForImageAtIndex:a3 accessBlock:v16];

  objc_autoreleasePoolPop(v6);
}

void __91__VCVoiceShortcutManager_drawGlyphs_withBackgroundColorValues_padding_rounded_intoContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277D79DF8]);
  [*(a1 + 32) scale];
  v5 = [v4 initWithCGContext:a2 scale:?];
  [*(a1 + 40) drawInContext:v5 inRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

- (HMHomeManager)homeManager
{
  homeManager = self->_homeManager;
  if (!homeManager)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getHMHomeManagerClass_softClass;
    v13 = getHMHomeManagerClass_softClass;
    if (!getHMHomeManagerClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getHMHomeManagerClass_block_invoke;
      v9[3] = &unk_2788FFE98;
      v9[4] = &v10;
      __getHMHomeManagerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [[v4 alloc] initWithOptions:0];
    v7 = self->_homeManager;
    self->_homeManager = v6;

    homeManager = self->_homeManager;
  }

  return homeManager;
}

- (BOOL)isPhraseUsable:(id)usable inDatabase:(id)database error:(id *)error
{
  v28[3] = *MEMORY[0x277D85DE8];
  v6 = [database visibleReferencesForWorkflowName:usable];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      identifier = [firstObject identifier];
      name = [firstObject name];
      *buf = 136315650;
      *&buf[4] = "[VCVoiceShortcutManager isPhraseUsable:inDatabase:error:]";
      *&buf[12] = 2112;
      *&buf[14] = identifier;
      *&buf[22] = 2112;
      v27 = name;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEBUG, "%s Found a local voice shortcut (%@) with the same phrase (%@).", buf, 0x20u);
    }

    identifier2 = [firstObject identifier];
    v12 = MEMORY[0x277CCACA8];
    v13 = firstObject;
    name2 = [v13 name];
    v15 = [v12 stringWithFormat:@"Phrase (%@) is already associated with a voice shortcut.", name2];

    v16 = *MEMORY[0x277D7A370];
    *buf = identifier2;
    v17 = *MEMORY[0x277D7A378];
    v28[0] = v16;
    v28[1] = v17;
    name3 = [v13 name];
    *&buf[8] = name3;
    v28[2] = *MEMORY[0x277D7A368];
    associatedAppBundleIdentifier = [v13 associatedAppBundleIdentifier];

    v20 = *MEMORY[0x277D7A338];
    if (associatedAppBundleIdentifier)
    {
      v20 = associatedAppBundleIdentifier;
    }

    *&buf[16] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v28 count:3];

    v22 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1008 extraUserInfo:v21 reason:{@"%@", v15}];

    if (error)
    {
      v23 = v22;
      *error = v22;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return firstObject == 0;
}

- (BOOL)phraseHasHomeKitConflict:(id)conflict
{
  conflictCopy = conflict;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  homeManager = [(VCVoiceShortcutManager *)self homeManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__VCVoiceShortcutManager_phraseHasHomeKitConflict___block_invoke;
  v11[3] = &unk_2788FDFA0;
  v14 = &v15;
  v7 = conflictCopy;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  [homeManager checkName:v7 inHome:0 withValidationOptions:10 completionHandler:v11];

  v9 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v8, v9);
  LOBYTE(homeManager) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return homeManager;
}

void __51__VCVoiceShortcutManager_phraseHasHomeKitConflict___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v8 domain];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v10 = getHMErrorDomainSymbolLoc_ptr;
  v23 = getHMErrorDomainSymbolLoc_ptr;
  if (!getHMErrorDomainSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getHMErrorDomainSymbolLoc_block_invoke;
    v25 = &unk_2788FFE98;
    v26 = &v20;
    v11 = HomeKitLibrary();
    v12 = dlsym(v11, "HMErrorDomain");
    *(v26[1] + 24) = v12;
    getHMErrorDomainSymbolLoc_ptr = *(v26[1] + 24);
    v10 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v10)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getHMErrorDomain(void)"];
    [v18 handleFailureInFunction:v19 file:@"VCVoiceShortcutManager.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v13 = *v10;
  if ([v9 isEqualToString:v13])
  {
    if ([v8 code] == 31)
    {

LABEL_10:
      *(*(*(a1 + 48) + 8) + 24) = a2 ^ 1;
      goto LABEL_14;
    }

    v14 = [v8 code] == 95;
  }

  else
  {
    v14 = 0;
  }

  if (v8 == 0 || v14)
  {
    goto LABEL_10;
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  v15 = getWFGeneralLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[VCVoiceShortcutManager phraseHasHomeKitConflict:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v25 = v8;
    _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Encountered an error checking conflicting Home scene names for phrase (%@). Assuming no conflict. Error: (%@)", buf, 0x20u);
  }

LABEL_14:
  dispatch_semaphore_signal(*(a1 + 40));

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deleteVoiceShortcutWithIdentifier:(id)identifier name:(id)name accessSpecifier:(id)specifier completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nameCopy = name;
  specifierCopy = specifier;
  completionCopy = completion;
  v15 = completionCopy;
  if (specifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:371 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"outerCompletionHandler"}];

LABEL_3:
  v16 = getWFGeneralLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v38 = "[VCVoiceShortcutManager deleteVoiceShortcutWithIdentifier:name:accessSpecifier:completion:]";
    v39 = 2112;
    v40 = identifierCopy;
    _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_DEBUG, "%s Deleting VoiceShortcut with id (%@)", buf, 0x16u);
  }

  if ([specifierCopy allowWriteAccessToVoiceShortcuts])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__VCVoiceShortcutManager_deleteVoiceShortcutWithIdentifier_name_accessSpecifier_completion___block_invoke;
    aBlock[3] = &unk_2788FDF78;
    v17 = identifierCopy;
    v34 = v17;
    v18 = nameCopy;
    v35 = v18;
    v36 = v15;
    v19 = _Block_copy(aBlock);
    databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
    v32 = 0;
    v21 = [databaseProvider databaseWithError:&v32];
    v22 = v32;

    if (!v21)
    {
      v19[2](v19, 0, v22);
LABEL_24:

      v25 = v34;
      goto LABEL_25;
    }

    v31 = VCOSTransactionWithName(@"deleteVoiceShortcut");
    if (v17)
    {
      v23 = [v21 referenceForWorkflowID:v17];
    }

    else
    {
      if (!v18)
      {
        goto LABEL_17;
      }

      v23 = [v21 uniqueVisibleReferenceForWorkflowName:v18];
    }

    v26 = v23;
    if (v23)
    {
      [v21 deleteReference:v23 error:0];
      v19[2](v19, 1, 0);
LABEL_23:

      goto LABEL_24;
    }

LABEL_17:
    if (v18)
    {
      v27 = v18;
    }

    else
    {
      v27 = v17;
    }

    if (!v27)
    {
      v27 = @"unknown";
    }

    v26 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1002 reason:{@"Voice shortcut with identifier or name (%@) does not exist", v27, v31}];
    v19[2](v19, 0, v26);
    goto LABEL_23;
  }

  v24 = getWFGeneralLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v38 = "[VCVoiceShortcutManager deleteVoiceShortcutWithIdentifier:name:accessSpecifier:completion:]";
    v39 = 2114;
    v40 = specifierCopy;
    _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_ERROR, "%s Unauthorized delete attempt for voice shortcut using accessSpecifier (%{public}@)", buf, 0x16u);
  }

  v25 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:{@"Unauthorized update attempt for voice shortcut using accessSpecifier (%@)", specifierCopy}];
  (v15)[2](v15, 0, v25);
LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
}

void __92__VCVoiceShortcutManager_deleteVoiceShortcutWithIdentifier_name_accessSpecifier_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = getWFGeneralLogObject();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = a1[4];
      v9 = a1[5];
      v16 = 136315650;
      v17 = "[VCVoiceShortcutManager deleteVoiceShortcutWithIdentifier:name:accessSpecifier:completion:]_block_invoke";
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v10 = "%s Successfully deleted VoiceShortcut with identifier=%@, name=%@";
      v11 = v7;
      v12 = OS_LOG_TYPE_DEBUG;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_23103C000, v11, v12, v10, &v16, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[VCVoiceShortcutManager deleteVoiceShortcutWithIdentifier:name:accessSpecifier:completion:]_block_invoke";
    v18 = 2112;
    v19 = v5;
    v10 = "%s Error deleting VoiceShortcut: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 22;
    goto LABEL_6;
  }

  (*(a1[6] + 16))(a1[6], a2, v5, v14);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateVoiceShortcutWithIdentifier:(id)identifier phrase:(id)phrase shortcut:(id)shortcut accessSpecifier:(id)specifier completion:(id)completion
{
  v55 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  phraseCopy = phrase;
  shortcutCopy = shortcut;
  specifierCopy = specifier;
  completionCopy = completion;
  if (identifierCopy)
  {
    if (specifierCopy)
    {
      goto LABEL_3;
    }

LABEL_33:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_34;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutIdentifier"}];

  if (!specifierCopy)
  {
    goto LABEL_33;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_34:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"outerCompletionHandler"}];

LABEL_4:
  if (!(phraseCopy | shortcutCopy))
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:311 description:@"Pass at least one parameter to update"];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__VCVoiceShortcutManager_updateVoiceShortcutWithIdentifier_phrase_shortcut_accessSpecifier_completion___block_invoke;
  aBlock[3] = &unk_2788FF368;
  v18 = completionCopy;
  v50 = v18;
  v19 = _Block_copy(aBlock);
  v20 = getWFGeneralLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v52 = "[VCVoiceShortcutManager updateVoiceShortcutWithIdentifier:phrase:shortcut:accessSpecifier:completion:]";
    v53 = 2112;
    v54 = identifierCopy;
    _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_DEBUG, "%s Updating VoiceShortcut with id (%@)", buf, 0x16u);
  }

  if ([specifierCopy allowWriteAccessToVoiceShortcuts])
  {
    databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
    v48 = 0;
    v22 = [databaseProvider databaseWithError:&v48];
    v23 = v48;

    if (!v22)
    {
      v19[2](v19, 0, v23);
LABEL_30:

      goto LABEL_31;
    }

    v24 = VCOSTransactionWithName(@"updateVoiceShortcutWithIdentifier:phrase:");
    v25 = [v22 referenceForWorkflowID:identifierCopy];
    v41 = v25;
    if (!v25)
    {
      v26 = VCNotFoundError(identifierCopy);
      v19[2](v19, 0, v26);
LABEL_29:

      goto LABEL_30;
    }

    selfCopy = self;
    v40 = v24;
    v47 = v23;
    v26 = [MEMORY[0x277D7CA60] workflowWithReference:v25 database:v22 error:&v47];
    v27 = v47;

    if (v26)
    {
      if (phraseCopy)
      {
        v46 = v27;
        v38 = [(VCVoiceShortcutManager *)selfCopy isPhraseUsable:phraseCopy inDatabase:v22 error:&v46];
        v23 = v46;

        if (!v38)
        {
          v19[2](v19, 0, v23);
          goto LABEL_28;
        }

        [v26 setName:phraseCopy];
      }

      else
      {
        v23 = v27;
      }

      v24 = v40;
      if (!shortcutCopy)
      {
LABEL_25:
        [v26 save];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __103__VCVoiceShortcutManager_updateVoiceShortcutWithIdentifier_phrase_shortcut_accessSpecifier_completion___block_invoke_254;
        v42[3] = &unk_2788FDF50;
        v44 = v19;
        v43 = v24;
        VCVoiceShortcutFromWorkflow(v41, v22, 1, 0, v42);

        goto LABEL_29;
      }

      mEMORY[0x277D7C0D0] = [MEMORY[0x277D7C0D0] sharedRegistry];
      v45 = v23;
      v36 = [mEMORY[0x277D7C0D0] createActionWithShortcut:shortcutCopy error:&v45];
      v39 = v45;

      if (v36)
      {
        actions = [v26 actions];
        [v26 removeActions:actions];

        [v26 addAction:v36];
        v23 = v39;
        v24 = v40;
        goto LABEL_25;
      }

      v23 = v39;
      v19[2](v19, 0, v39);
    }

    else
    {
      v19[2](v19, 0, v27);
      v23 = v27;
    }

LABEL_28:
    v24 = v40;
    goto LABEL_29;
  }

  v28 = getWFGeneralLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v52 = "[VCVoiceShortcutManager updateVoiceShortcutWithIdentifier:phrase:shortcut:accessSpecifier:completion:]";
    v53 = 2114;
    v54 = specifierCopy;
    _os_log_impl(&dword_23103C000, v28, OS_LOG_TYPE_ERROR, "%s Unauthorized update attempt for voice shortcut using accessSpecifier (%{public}@)", buf, 0x16u);
  }

  v23 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:{@"Unauthorized update attempt for voice shortcut using accessSpecifier (%@)", specifierCopy}];
  v19[2](v19, 0, v23);
LABEL_31:

  v31 = *MEMORY[0x277D85DE8];
}

void __103__VCVoiceShortcutManager_updateVoiceShortcutWithIdentifier_phrase_shortcut_accessSpecifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFGeneralLogObject();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315394;
      v15 = "[VCVoiceShortcutManager updateVoiceShortcutWithIdentifier:phrase:shortcut:accessSpecifier:completion:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      v9 = "%s Successfully updated VoiceShortcut %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_23103C000, v10, v11, v9, &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "[VCVoiceShortcutManager updateVoiceShortcutWithIdentifier:phrase:shortcut:accessSpecifier:completion:]_block_invoke";
    v16 = 2112;
    v17 = v6;
    v9 = "%s Error updating VoiceShortcut: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5, v6, v12);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)addVoiceShortcut:(id)shortcut phrase:(id)phrase accessSpecifier:(id)specifier completion:(id)completion
{
  v55 = *MEMORY[0x277D85DE8];
  shortcutCopy = shortcut;
  phraseCopy = phrase;
  specifierCopy = specifier;
  completionCopy = completion;
  if (shortcutCopy)
  {
    if (specifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"shortcut"}];

    if (specifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

LABEL_3:
  if ([specifierCopy allowWriteAccessToVoiceShortcuts])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__VCVoiceShortcutManager_addVoiceShortcut_phrase_accessSpecifier_completion___block_invoke;
    aBlock[3] = &unk_2788FF368;
    v48 = completionCopy;
    v15 = _Block_copy(aBlock);
    databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
    v46 = 0;
    v17 = [databaseProvider databaseWithError:&v46];
    v18 = v46;

    if (v17)
    {
      v19 = VCOSTransactionWithName(@"addVoiceShortcut:phrase:");
      v45 = 0;
      v20 = [(VCVoiceShortcutManager *)self isPhraseUsable:phraseCopy inDatabase:v17 error:&v45];
      v21 = v45;
      if (v20)
      {
        v42 = phraseCopy;
        mEMORY[0x277D7C0D0] = [MEMORY[0x277D7C0D0] sharedRegistry];
        v44 = v18;
        v23 = [mEMORY[0x277D7C0D0] createActionWithShortcut:shortcutCopy error:&v44];
        v41 = v44;

        if (v23)
        {
          v39 = v21;
          v40 = v19;
          v24 = objc_alloc_init(MEMORY[0x277D7CA60]);
          [v24 setWorkflowTypes:MEMORY[0x277CBEBF8]];
          record = [v24 record];
          [record setName:v42];

          [v24 addAction:v23];
          record2 = [v24 record];
          [record2 addWatchWorkflowTypeIfEligible];

          v27 = objc_alloc(MEMORY[0x277D7CA68]);
          record3 = [v24 record];
          v29 = [v27 initWithRecord:record3];

          v43 = v41;
          v30 = [v17 createWorkflowWithOptions:v29 error:&v43];
          v18 = v43;

          if (v30)
          {
            VCVoiceShortcutFromWorkflow(v30, v17, 1, 0, v15);
          }

          else
          {
            (*(v15 + 2))(v15, 0, v18);
          }

          v21 = v39;
          v19 = v40;
        }

        else
        {
          v18 = v41;
          (*(v15 + 2))(v15, 0, v41);
        }

        phraseCopy = v42;
      }

      else
      {
        (*(v15 + 2))(v15, 0, v21);
      }
    }

    else
    {
      (*(v15 + 2))(v15, 0, v18);
    }

    _associatedAppBundleIdentifier2 = v48;
  }

  else
  {
    v31 = getWFGeneralLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      _associatedAppBundleIdentifier = [shortcutCopy _associatedAppBundleIdentifier];
      *buf = 136315650;
      v50 = "[VCVoiceShortcutManager addVoiceShortcut:phrase:accessSpecifier:completion:]";
      v51 = 2114;
      v52 = _associatedAppBundleIdentifier;
      v53 = 2114;
      v54 = specifierCopy;
      _os_log_impl(&dword_23103C000, v31, OS_LOG_TYPE_ERROR, "%s Unauthorized add attempt for voice shortcut with bundleID (%{public}@) using accessSpecifier (%{public}@)", buf, 0x20u);
    }

    v33 = MEMORY[0x277CCA9B8];
    _associatedAppBundleIdentifier2 = [shortcutCopy _associatedAppBundleIdentifier];
    v35 = [v33 vc_voiceShortcutErrorWithCode:1011 reason:{@"Unauthorized add attempt for voice shortcut with bundleID (%@) using accessSpecifier (%@)", _associatedAppBundleIdentifier2, specifierCopy}];
    (*(completionCopy + 2))(completionCopy, 0, v35);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __77__VCVoiceShortcutManager_addVoiceShortcut_phrase_accessSpecifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFGeneralLogObject();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315394;
      v15 = "[VCVoiceShortcutManager addVoiceShortcut:phrase:accessSpecifier:completion:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      v9 = "%s Successfully created %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_23103C000, v10, v11, v9, &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "[VCVoiceShortcutManager addVoiceShortcut:phrase:accessSpecifier:completion:]_block_invoke";
    v16 = 2112;
    v17 = v6;
    v9 = "%s Error creating VoiceShortcut: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5, v6, v12);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)getInactiveAppsWithAccessSpecifier:(id)specifier completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (specifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFGeneralLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v38 = "[VCVoiceShortcutManager getInactiveAppsWithAccessSpecifier:completion:]";
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Get inactive apps", buf, 0xCu);
  }

  if ([specifierCopy allowUnrestrictedAccess])
  {
    databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
    v35 = 0;
    v12 = [databaseProvider databaseWithError:&v35];
    v13 = v35;

    if (v12)
    {
      v29 = VCOSTransactionWithName(@"getInactiveAppsWithAccessSpecifier");
      v34 = v13;
      v14 = VCWorkflowReferencesForAccessSpecifier(v12, specifierCopy, &v34);
      v15 = v34;

      v16 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v31;
        do
        {
          v21 = 0;
          do
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(v17);
            }

            associatedAppBundleIdentifier = [*(*(&v30 + 1) + 8 * v21) associatedAppBundleIdentifier];
            if (associatedAppBundleIdentifier)
            {
              [v16 addObject:associatedAppBundleIdentifier];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v19);
      }

      allObjects = [v16 allObjects];
      v24 = VCInactiveAppsFromList();
      (v9)[2](v9, v24, v15);
    }

    else
    {
      (v9)[2](v9, 0, v13);
      v15 = v13;
    }
  }

  else
  {
    v25 = getWFGeneralLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "[VCVoiceShortcutManager getInactiveAppsWithAccessSpecifier:completion:]";
      v39 = 2114;
      v40 = specifierCopy;
      _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_ERROR, "%s Unauthorized attempt to access voice shortcut apps using accessSpecifier (%{public}@)", buf, 0x16u);
    }

    v15 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:{@"Unauthorized attempt to access voice shortcut enabled apps using accessSpecifier %@", specifierCopy}];
    (v9)[2](v9, 0, v15);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceShortcutsForAppsWithBundleIdentifiers:(id)identifiers accessSpecifier:(id)specifier completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  specifierCopy = specifier;
  completionCopy = completion;
  if (identifiersCopy)
  {
    if (specifierCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifiers"}];

  if (!specifierCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_15:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v12 = getWFGeneralLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v29 = "[VCVoiceShortcutManager getVoiceShortcutsForAppsWithBundleIdentifiers:accessSpecifier:completion:]";
    v30 = 2112;
    v31 = identifiersCopy;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s Get VoiceShortcuts for apps with bundle IDs = %@", buf, 0x16u);
  }

  if ([identifiersCopy count])
  {
    databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
    v27 = 0;
    v14 = [databaseProvider databaseWithError:&v27];
    v15 = v27;

    if (v14)
    {
      v16 = VCOSTransactionWithName(@"getVoiceShortcutsForAppsWithBundleIdentifiers");
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __99__VCVoiceShortcutManager_getVoiceShortcutsForAppsWithBundleIdentifiers_accessSpecifier_completion___block_invoke;
      v25[3] = &unk_2788FDF28;
      v26 = v14;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __99__VCVoiceShortcutManager_getVoiceShortcutsForAppsWithBundleIdentifiers_accessSpecifier_completion___block_invoke_3;
      v22[3] = &unk_2788FDF00;
      v23 = v16;
      v24 = completionCopy;
      v17 = v16;
      [identifiersCopy if_flatMapAsynchronously:v25 completionHandler:v22];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, v15);
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1007 reason:@"bundleIdentifiers are needed"];
    (*(completionCopy + 2))(completionCopy, 0, v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __99__VCVoiceShortcutManager_getVoiceShortcutsForAppsWithBundleIdentifiers_accessSpecifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [*(a1 + 32) sortedVisibleWorkflowsWithAssociatedAppBundleIdentifier:a2];
  v8 = [v7 descriptors];
  v9 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99__VCVoiceShortcutManager_getVoiceShortcutsForAppsWithBundleIdentifiers_accessSpecifier_completion___block_invoke_2;
  v11[3] = &unk_2788FF098;
  v12 = v6;
  v10 = v6;
  VCVoiceShortcutsFromWorkflows(v8, v9, 0, v11);
}

- (void)getVoiceShortcutsWithAccessSpecifier:(id)specifier completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (specifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFGeneralLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "[VCVoiceShortcutManager getVoiceShortcutsWithAccessSpecifier:completion:]";
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Get all VoiceShortcuts", buf, 0xCu);
  }

  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v25 = 0;
  v12 = [databaseProvider databaseWithError:&v25];
  v13 = v25;

  if (v12)
  {
    v14 = VCOSTransactionWithName(@"getVoiceShortcutsWithAccessSpecifier");
    allowUnrestrictedAccess = [specifierCopy allowUnrestrictedAccess];
    v24 = v13;
    v16 = VCWorkflowReferencesForAccessSpecifier(v12, specifierCopy, &v24);
    v17 = v24;

    if (v17)
    {
      (v9)[2](v9, 0, v17);
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __74__VCVoiceShortcutManager_getVoiceShortcutsWithAccessSpecifier_completion___block_invoke;
      v21[3] = &unk_2788FDF00;
      v23 = v9;
      v22 = v14;
      VCVoiceShortcutsFromWorkflows(v16, v12, allowUnrestrictedAccess ^ 1, v21);
    }
  }

  else
  {
    (v9)[2](v9, 0, v13);
    v17 = v13;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceShortcutWithPhrase:(id)phrase accessSpecifier:(id)specifier completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  phraseCopy = phrase;
  specifierCopy = specifier;
  completionCopy = completion;
  if (phraseCopy)
  {
    if (specifierCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];

  if (!specifierCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_15:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v12 = getWFGeneralLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v30 = "[VCVoiceShortcutManager getVoiceShortcutWithPhrase:accessSpecifier:completion:]";
    v31 = 2112;
    v32 = phraseCopy;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s Get VoiceShortcut with phrase (%@)", buf, 0x16u);
  }

  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v28 = 0;
  v14 = [databaseProvider databaseWithError:&v28];
  v15 = v28;

  if (v14)
  {
    v16 = VCOSTransactionWithName(@"getVoiceShortcutWithPhrase");
    v17 = [v14 uniqueVisibleReferenceForWorkflowName:phraseCopy];
    if (v17)
    {
      allowReadAccessToShortcutsLibrary = [specifierCopy allowReadAccessToShortcutsLibrary];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __80__VCVoiceShortcutManager_getVoiceShortcutWithPhrase_accessSpecifier_completion___block_invoke;
      v24[3] = &unk_2788FDED8;
      v27 = completionCopy;
      v25 = phraseCopy;
      v26 = v16;
      VCVoiceShortcutFromWorkflow(v17, v14, 1, allowReadAccessToShortcutsLibrary, v24);

      v19 = v27;
    }

    else
    {
      v19 = VCNotFoundByPhraseError(phraseCopy);
      (*(completionCopy + 2))(completionCopy, 0, v19);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __80__VCVoiceShortcutManager_getVoiceShortcutWithPhrase_accessSpecifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (a3)
  {
    v6 = VCNotFoundByPhraseError(*(a1 + 32));
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 48);

    v4(v5);
  }
}

- (void)getVoiceShortcutWithIdentifier:(id)identifier accessSpecifier:(id)specifier completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  specifierCopy = specifier;
  completionCopy = completion;
  if (identifierCopy)
  {
    if (specifierCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutIdentifier"}];

  if (!specifierCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_15:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v12 = getWFGeneralLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v30 = "[VCVoiceShortcutManager getVoiceShortcutWithIdentifier:accessSpecifier:completion:]";
    v31 = 2112;
    v32 = identifierCopy;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s Get VoiceShortcut with id (%@)", buf, 0x16u);
  }

  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v28 = 0;
  v14 = [databaseProvider databaseWithError:&v28];
  v15 = v28;

  if (v14)
  {
    v16 = VCOSTransactionWithName(@"getVoiceShortcutsWithIdentifier");
    v17 = [v14 referenceForWorkflowID:identifierCopy];
    if (v17)
    {
      allowReadAccessToShortcutsLibrary = [specifierCopy allowReadAccessToShortcutsLibrary];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __84__VCVoiceShortcutManager_getVoiceShortcutWithIdentifier_accessSpecifier_completion___block_invoke;
      v24[3] = &unk_2788FDED8;
      v27 = completionCopy;
      v25 = identifierCopy;
      v26 = v16;
      VCVoiceShortcutFromWorkflow(v17, v14, 1, allowReadAccessToShortcutsLibrary, v24);

      v19 = v27;
    }

    else
    {
      v19 = VCNotFoundError(identifierCopy);
      (*(completionCopy + 2))(completionCopy, 0, v19);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __84__VCVoiceShortcutManager_getVoiceShortcutWithIdentifier_accessSpecifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (a3)
  {
    v6 = VCNotFoundError(*(a1 + 32));
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 48);

    v4(v5);
  }
}

- (void)getNumberOfVoiceShortcutsWithAccessSpecifier:(id)specifier completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (specifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFGeneralLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "[VCVoiceShortcutManager getNumberOfVoiceShortcutsWithAccessSpecifier:completion:]";
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Get number of voice shortcuts", buf, 0xCu);
  }

  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v21 = 0;
  v12 = [databaseProvider databaseWithError:&v21];
  v13 = v21;

  if (v12)
  {
    if ([specifierCopy allowUnrestrictedAccess])
    {
      sortedVisibleWorkflowsByName = [v12 sortedVisibleWorkflowsByName];
    }

    else
    {
      associatedAppBundleIdentifier = [specifierCopy associatedAppBundleIdentifier];
      sortedVisibleWorkflowsByName = [v12 sortedVisibleWorkflowsWithAssociatedAppBundleIdentifier:associatedAppBundleIdentifier];
    }

    v16 = [sortedVisibleWorkflowsByName count];
    fetchError = [sortedVisibleWorkflowsByName fetchError];
    (v9)[2](v9, v16, fetchError);
  }

  else
  {
    (v9)[2](v9, 0, v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (WFDatabase)database
{
  databaseProvider = [(VCVoiceShortcutManager *)self databaseProvider];
  v3 = [databaseProvider databaseWithError:0];

  return v3;
}

- (VCVoiceShortcutManager)initWithDatabaseProvider:(id)provider eventHandler:(id)handler appShortcutsUpdater:(id)updater contextualActionSyncService:(id)service
{
  providerCopy = provider;
  handlerCopy = handler;
  updaterCopy = updater;
  serviceCopy = service;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v21.receiver = self;
  v21.super_class = VCVoiceShortcutManager;
  v16 = [(VCVoiceShortcutManager *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_databaseProvider, provider);
    objc_storeStrong(&v17->_appShortcutsUpdater, updater);
    objc_storeStrong(&v17->_contextualActionSyncService, service);
    [handlerCopy addObserver:v17 selector:sel_applicationWasUnregistered_ name:@"ApplicationUnregistered"];
    v18 = v17;
  }

  return v17;
}

@end