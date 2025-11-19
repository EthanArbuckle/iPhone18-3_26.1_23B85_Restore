@interface VCVoiceShortcutManager
- (BOOL)isPhraseUsable:(id)a3 inDatabase:(id)a4 error:(id *)a5;
- (BOOL)lsDatabaseChangedSinceLastCheck;
- (BOOL)phraseHasHomeKitConflict:(id)a3;
- (HMHomeManager)homeManager;
- (VCVoiceShortcutManager)initWithDatabaseProvider:(id)a3 eventHandler:(id)a4 appShortcutsUpdater:(id)a5 contextualActionSyncService:(id)a6;
- (WFDatabase)database;
- (id)actionWithAppBundleIdentifier:(id)a3 appIntentIdentifier:(id)a4 serializedParameters:(id)a5;
- (id)actionWithSerializedParameters:(id)a3 actionMetadata:(id)a4;
- (void)addVoiceShortcut:(id)a3 phrase:(id)a4 accessSpecifier:(id)a5 completion:(id)a6;
- (void)applicationWasUnregistered:(id)a3;
- (void)archiveAction:(id)a3 withActionMetadata:(id)a4 completion:(id)a5;
- (void)badgeTypeForEntityIdentifier:(id)a3 error:(id *)a4;
- (void)createShortcutWithRecordData:(id)a3 name:(id)a4 shortcutSource:(id)a5 accessSpecifier:(id)a6 completion:(id)a7;
- (void)deleteStaleSuggestions;
- (void)deleteSuggestionsFromApps:(id)a3;
- (void)deleteVoiceShortcutWithIdentifier:(id)a3 name:(id)a4 accessSpecifier:(id)a5 completion:(id)a6;
- (void)drawGlyphs:(id)a3 withBackgroundColorValues:(id)a4 padding:(double)a5 rounded:(BOOL)a6 intoContext:(id)a7;
- (void)getInactiveAppsWithAccessSpecifier:(id)a3 completion:(id)a4;
- (void)getLinkActionWithAppBundleIdentifier:(id)a3 appIntentIdentifier:(id)a4 expandingParameterName:(id)a5 limit:(int64_t)a6 completion:(id)a7;
- (void)getLinkActionWithAppBundleIdentifier:(id)a3 appIntentIdentifier:(id)a4 serializedParameterStates:(id)a5 completion:(id)a6;
- (void)getMigratedAppIntentWithINIntent:(id)a3 completion:(id)a4;
- (void)getNumberOfVoiceShortcutsWithAccessSpecifier:(id)a3 completion:(id)a4;
- (void)getResultsForQuery:(id)a3 resultClass:(Class)a4 completion:(id)a5;
- (void)getRunShortcutIntentForWorkflow:(id)a3 completion:(id)a4;
- (void)getSerializedParametersForLinkAction:(id)a3 actionMetadata:(id)a4 completion:(id)a5;
- (void)getShortcutSuggestionsForAllAppsWithLimit:(unint64_t)a3 accessSpecifier:(id)a4 completion:(id)a5;
- (void)getShortcutSuggestionsForAppWithBundleIdentifier:(id)a3 accessSpecifier:(id)a4 completion:(id)a5;
- (void)getSiriAutoShortcutsEnablementForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)getValueForDescriptor:(id)a3 resultClass:(Class)a4 completion:(id)a5;
- (void)getVoiceShortcutWithIdentifier:(id)a3 accessSpecifier:(id)a4 completion:(id)a5;
- (void)getVoiceShortcutWithPhrase:(id)a3 accessSpecifier:(id)a4 completion:(id)a5;
- (void)getVoiceShortcutsForAppsWithBundleIdentifiers:(id)a3 accessSpecifier:(id)a4 completion:(id)a5;
- (void)getVoiceShortcutsWithAccessSpecifier:(id)a3 completion:(id)a4;
- (void)logHomescreenFastPathRunEventForShortcutWithWebClip:(id)a3;
- (void)removeAllSerializedParametersForQueryName:(id)a3 completion:(id)a4;
- (void)requestDataMigrationWithCompletion:(id)a3;
- (void)serializedParametersForAppEntityIdentifier:(id)a3 completion:(id)a4;
- (void)setPerWorkflowStateData:(id)a3 forSmartPromptWithActionUUID:(id)a4 reference:(id)a5;
- (void)setShortcutSuggestions:(id)a3 forAppWithBundleIdentifier:(id)a4 accessSpecifier:(id)a5;
- (void)storeSerializedParameters:(id)a3 forAppEntityIdentifier:(id)a4 queryName:(id)a5 badgeType:(unint64_t)a6 completion:(id)a7;
- (void)triggerFullContextualActionReindexWithCompletion:(id)a3;
- (void)unarchiveActionFromData:(id)a3 withActionMetadata:(id)a4 completion:(id)a5;
- (void)updateAppShortcutsWithCompletion:(id)a3;
- (void)updateLSDatabaseAnchors;
- (void)updateVoiceShortcutWithIdentifier:(id)a3 phrase:(id)a4 shortcut:(id)a5 accessSpecifier:(id)a6 completion:(id)a7;
@end

@implementation VCVoiceShortcutManager

- (void)triggerFullContextualActionReindexWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VCVoiceShortcutManager *)self contextualActionSyncService];
  [v5 reindexAllSearchableItemsWithCompletion:v4];
}

- (void)getRunShortcutIntentForWorkflow:(id)a3 completion:(id)a4
{
  v88 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v76 = a4;
  v7 = getWFControlMigrationLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 identifier];
    *buf = 136315394;
    v85 = "[VCVoiceShortcutManager getRunShortcutIntentForWorkflow:completion:]";
    v86 = 2112;
    v87 = v8;
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v79 = [(VCVoiceShortcutManager *)self actionWithAppBundleIdentifier:*MEMORY[0x277D7A338] appIntentIdentifier:@"RunShortcutIntent" serializedParameters:0];
  v9 = objc_alloc(MEMORY[0x277D23800]);
  v10 = [v6 identifier];
  v11 = [v9 initWithTypeIdentifier:@"ConfiguredShortcut" instanceIdentifier:v10];

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
      v15 = [v6 identifier];
      *buf = 136315394;
      v85 = "[VCVoiceShortcutManager getRunShortcutIntentForWorkflow:completion:]";
      v86 = 2112;
      v87 = v15;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s Could not make configured system action from workflow %@", buf, 0x16u);
    }
  }

  v16 = [v13 asLNValue];
  v17 = v16;
  v80 = v6;
  v73 = v13;
  if (!v13 || v16)
  {
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = getWFControlMigrationLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v6 identifier];
      *buf = 136315394;
      v85 = "[VCVoiceShortcutManager getRunShortcutIntentForWorkflow:completion:]";
      v86 = 2112;
      v87 = v19;
      _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_ERROR, "%s Could not get LNValue from configured system action for workflow %@", buf, 0x16u);
    }
  }

  v68 = MEMORY[0x277CBEB18];
  v20 = objc_alloc(MEMORY[0x277D238D8]);
  v21 = objc_alloc(MEMORY[0x277D23958]);
  v72 = [v6 identifier];
  v71 = [MEMORY[0x277D238C8] stringValueType];
  v70 = [v21 initWithValue:v72 valueType:v71];
  v69 = [v20 initWithIdentifier:@"identifier" value:v70];
  v83[0] = v69;
  v22 = objc_alloc(MEMORY[0x277D238D8]);
  v23 = objc_alloc(MEMORY[0x277D23958]);
  v67 = [v6 name];
  v66 = [MEMORY[0x277D238C8] stringValueType];
  v65 = [v23 initWithValue:v67 valueType:v66];
  v64 = [v22 initWithIdentifier:@"name" value:v65];
  v83[1] = v64;
  v24 = objc_alloc(MEMORY[0x277D238D8]);
  v25 = objc_alloc(MEMORY[0x277D23958]);
  v26 = MEMORY[0x277CCABB0];
  v63 = [v80 backgroundColor];
  v27 = [v26 numberWithUnsignedInt:{objc_msgSend(v63, "RGBAValue")}];
  v28 = [MEMORY[0x277D238C8] intValueType];
  v29 = [v25 initWithValue:v27 valueType:v28];
  v30 = [v24 initWithIdentifier:@"colorCode" value:v29];
  v83[2] = v30;
  v31 = objc_alloc(MEMORY[0x277D238D8]);
  v32 = objc_alloc(MEMORY[0x277D23958]);
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v80, "glyphCharacter")}];
  v34 = [MEMORY[0x277D238C8] intValueType];
  v35 = [v32 initWithValue:v33 valueType:v34];
  v36 = [v31 initWithIdentifier:@"glyphCharacter" value:v35];
  v83[3] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
  v38 = [v68 arrayWithArray:v37];

  v39 = [v80 associatedAppBundleIdentifier];

  if (v39)
  {
    v40 = objc_alloc(MEMORY[0x277D23958]);
    v41 = [v80 associatedAppBundleIdentifier];
    v42 = [MEMORY[0x277D238C8] stringValueType];
    v43 = [v40 initWithValue:v41 valueType:v42];

    v44 = [objc_alloc(MEMORY[0x277D238D8]) initWithIdentifier:@"associatedAppBundleIdentifier" value:v43];
    [v38 addObject:v44];
  }

  v45 = [objc_alloc(MEMORY[0x277D237F0]) initWithTransient:1 identifier:v78 properties:v38 managedAccountIdentifier:0];
  v17 = [objc_alloc(MEMORY[0x277D23958]) initWithValue:v45 valueType:v77];

LABEL_16:
  v81 = @"shortcut";
  v46 = [v17 wfSerializedRepresentation];
  v82 = v46;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];

  v48 = [v79 copyWithSerializedParameters:v47];
  [v48 serializeAppIntentDescriptorIfNecessary];
  v49 = objc_alloc(MEMORY[0x277CD3A70]);
  v50 = [v79 fullyQualifiedLinkActionIdentifier];
  v51 = [v50 bundleIdentifier];
  v52 = [v79 fullyQualifiedLinkActionIdentifier];
  v53 = [v52 actionIdentifier];
  v54 = [v48 serializedParameters];
  v55 = [v49 initWithAppBundleIdentifier:v51 appIntentIdentifier:v53 serializedParameters:v54];

  v56 = [v48 metadata];
  v57 = [v56 effectiveBundleIdentifiers];
  v58 = [v57 array];
  v59 = [v58 if_firstObjectPassingTest:&__block_literal_global_413];
  v60 = [v59 bundleIdentifier];
  [v55 _setExtensionBundleId:v60];

  v61 = getWFControlMigrationLogObject();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v85 = "[VCVoiceShortcutManager getRunShortcutIntentForWorkflow:completion:]";
    v86 = 2112;
    v87 = v55;
    _os_log_impl(&dword_23103C000, v61, OS_LOG_TYPE_DEFAULT, "%s Result %@", buf, 0x16u);
  }

  v76[2](v76, v55, 0);
  v62 = *MEMORY[0x277D85DE8];
}

- (void)getSerializedParametersForLinkAction:(id)a3 actionMetadata:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = WFLinkActionSerializedParametersForLNAction();
  (*(a5 + 2))(v6, v7, 0);
}

- (void)getMigratedAppIntentWithINIntent:(id)a3 completion:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6[2](v6, v7, 0);
    v8 = v7;
  }

  else
  {

    v9 = [MEMORY[0x277D7C598] sharedProvider];
    v10 = [v7 launchId];
    v11 = [v7 _className];
    v12 = [v9 customIntentMigratedActionIdentifierWithLaunchId:v10 className:v11];

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277D7C0D8]);
      v14 = [v13 initWithActionIdentifier:v12 serializedParameters:MEMORY[0x277CBEC10]];
      v39[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      [v9 createActionsForRequests:v15];

      v36 = v14;
      v16 = [v14 result];
      v37 = v12;
      v38 = v9;
      if (v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
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
      v26 = [v24 fullyQualifiedLinkActionIdentifier];
      v27 = [v26 bundleIdentifier];
      v28 = [v24 fullyQualifiedLinkActionIdentifier];
      v29 = [v28 actionIdentifier];
      v8 = [v25 initWithAppBundleIdentifier:v27 appIntentIdentifier:v29 serializedParameters:v23];

      v30 = [v24 metadata];
      v31 = [v30 effectiveBundleIdentifiers];
      v32 = [v31 array];
      v33 = [v32 if_firstObjectPassingTest:&__block_literal_global_386];
      v34 = [v33 bundleIdentifier];
      [v8 _setExtensionBundleId:v34];

      v6[2](v6, v8, 0);
      v12 = v37;
      v9 = v38;
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = [v7 _className];
      v20 = [v7 launchId];
      v21 = [v18 vc_voiceShortcutErrorWithCode:11000 reason:{@"Unable to find an app intent matching %@ for %@", v19, v20}];

      (v6)[2](v6, 0, v21);
      v8 = 0;
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)getLinkActionWithAppBundleIdentifier:(id)a3 appIntentIdentifier:(id)a4 expandingParameterName:(id)a5 limit:(int64_t)a6 completion:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(VCVoiceShortcutManager *)self actionWithAppBundleIdentifier:v11 appIntentIdentifier:v12 serializedParameters:0];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 linkActionWithSerializedParameters];
    if (v13)
    {
      v18 = [MEMORY[0x277D79DB0] daemonProvider];
      v50 = [v18 actionWithIdentifier:v12 fromBundleIdentifier:v11];
      v19 = [v50 parameters];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __123__VCVoiceShortcutManager_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke;
      v58[3] = &unk_2788FE0D8;
      v20 = v13;
      v59 = v20;
      v21 = [v19 if_firstObjectPassingTest:v58];

      if (!v21)
      {
        v36 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v61 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]";
          _os_log_impl(&dword_23103C000, v36, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action but requested expanding parameter not found. Returning the generated link action", buf, 0xCu);
        }

        (*(v14 + 2))(v14, v17, 0, 0);
        goto LABEL_36;
      }

      v47 = v13;
      v49 = v18;
      v22 = [v21 valueType];
      v23 = [v22 wf_enumValueType];

      v24 = v21;
      v25 = [v21 valueType];
      v26 = [v25 wf_entityValueType];

      v27 = v23;
      v48 = v26;
      if (!(v23 | v26))
      {
        v37 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v61 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]";
          _os_log_impl(&dword_23103C000, v37, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action but requested expanding parameter does not support expanding. Returning the generated link action", buf, 0xCu);
        }

        (*(v14 + 2))(v14, v17, 0, 0);
        v38 = v26;
        v18 = v49;
        v21 = v24;
        v13 = v47;
        goto LABEL_35;
      }

      if (v23)
      {
        v28 = [v23 enumerationIdentifier];
        v29 = [v49 enumerationWithIdentifier:v28 fromBundleIdentifier:v11];

        v30 = v29;
        v21 = v24;
        v45 = v30;
        if (v30)
        {
          v31 = [v30 cases];
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __123__VCVoiceShortcutManager_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke_372;
          v55[3] = &unk_2788FE100;
          v46 = v23;
          v56 = v23;
          v57 = v20;
          v32 = [v31 if_map:v55];

          v33 = getWFAppIntentsLogObject();
          v13 = v47;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v61 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]";
            _os_log_impl(&dword_23103C000, v33, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action with expanded requested expanding parameter not found. Returning the generated link action", buf, 0xCu);
          }

          (*(v14 + 2))(v14, v17, v32, 0);
          v27 = v46;
        }

        else
        {
          v42 = getWFAppIntentsLogObject();
          v13 = v47;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v61 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:expandingParameterName:limit:completion:]";
            _os_log_impl(&dword_23103C000, v42, OS_LOG_TYPE_DEFAULT, "%s Request for Link Action but could not expand requested expanding parameter not found. Returning the generated link action", buf, 0xCu);
          }

          (*(v14 + 2))(v14, v17, 0, 0);
          v27 = v23;
        }

        v18 = v49;
      }

      else
      {
        v38 = v26;
        v18 = v49;
        v21 = v24;
        v13 = v47;
        if (!v48)
        {
LABEL_35:

LABEL_36:
          goto LABEL_37;
        }

        v39 = [v48 identifier];
        v40 = [v49 entityWithIdentifier:v39 fromBundleIdentifier:v11];

        if (v40)
        {
          v41 = [v16 parameterForKey:v20];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __123__VCVoiceShortcutManager_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion___block_invoke_376;
          v51[3] = &unk_2788FE150;
          v54 = v14;
          v52 = v17;
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

          (*(v14 + 2))(v14, v17, 0, 0);
        }

        v27 = 0;

        v18 = v49;
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

    (*(v14 + 2))(v14, v17, 0, 0);
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

    v17 = VCVoiceShortcutClientArchingError(@"Failed to create LinkAction", 0);
    (*(v14 + 2))(v14, 0, 0, v17);
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

- (void)getLinkActionWithAppBundleIdentifier:(id)a3 appIntentIdentifier:(id)a4 serializedParameterStates:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v20 = 136315906;
    v21 = "[VCVoiceShortcutManager getLinkActionWithAppBundleIdentifier:appIntentIdentifier:serializedParameterStates:completion:]";
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_INFO, "%s Creating an app intent representation for %@ (%@) from serialized parameters: %@", &v20, 0x2Au);
  }

  v15 = [(VCVoiceShortcutManager *)self actionWithAppBundleIdentifier:v10 appIntentIdentifier:v11 serializedParameters:v12];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 linkActionWithSerializedParameters];
    v13[2](v13, v17, 0);
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

    v17 = VCVoiceShortcutClientArchingError(@"Failed to create LinkAction", 0);
    (v13)[2](v13, 0, v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)actionWithAppBundleIdentifier:(id)a3 appIntentIdentifier:(id)a4 serializedParameters:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D7C598];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 sharedProvider];
  v12 = [v10 stringByAppendingString:@"."];

  v13 = [v12 stringByAppendingString:v9];

  v14 = [objc_alloc(MEMORY[0x277D7C0D8]) initWithActionIdentifier:v13 serializedParameters:v8];
  v21[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [v11 createActionsForRequests:v15];

  v16 = [v14 result];
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
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

- (id)actionWithSerializedParameters:(id)a3 actionMetadata:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 effectiveBundleIdentifiers];
  v9 = [v8 array];
  v10 = [v9 if_firstObjectPassingTest:&__block_literal_global];

  v11 = [v10 bundleIdentifier];
  if (v11)
  {
    goto LABEL_4;
  }

  v12 = objc_alloc(MEMORY[0x277CC1E50]);
  v13 = [v7 effectiveBundleIdentifiers];
  v14 = [v13 firstObject];
  v15 = [v14 bundleIdentifier];
  v26 = 0;
  v16 = [v12 initWithBundleIdentifier:v15 error:&v26];
  v11 = v26;

  if (v16)
  {
    v17 = [v16 if_containingAppRecord];
    v18 = [v17 bundleIdentifier];

    v11 = v18;
LABEL_4:
    v19 = [v7 identifier];
    v20 = [(VCVoiceShortcutManager *)self actionWithAppBundleIdentifier:v11 appIntentIdentifier:v19 serializedParameters:v6];
    goto LABEL_5;
  }

  v19 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v7 effectiveBundleIdentifiers];
    v24 = [v23 firstObject];
    v25 = [v24 bundleIdentifier];
    *buf = 136315394;
    v28 = "[VCVoiceShortcutManager actionWithSerializedParameters:actionMetadata:]";
    v29 = 2114;
    v30 = v25;
    _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Unable to find the bundle record for %{public}@", buf, 0x16u);
  }

  v20 = 0;
LABEL_5:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)unarchiveActionFromData:(id)a3 withActionMetadata:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CBEAE0];
  v11 = a3;
  v12 = [[v10 alloc] initWithData:v11];

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
      v9[2](v9, 0, v20);
    }

    v21 = [(VCVoiceShortcutManager *)self actionWithSerializedParameters:v18 actionMetadata:v8];
    if (v21)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __80__VCVoiceShortcutManager_unarchiveActionFromData_withActionMetadata_completion___block_invoke;
      v26[3] = &unk_2788FE090;
      v27 = v9;
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
      v9[2](v9, 0, v22);
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

    v9[2](v9, 0, v14);
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

- (void)archiveAction:(id)a3 withActionMetadata:(id)a4 completion:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v10 parameters];
  v12 = [v11 valueForKey:@"name"];

  v13 = MEMORY[0x277CBEAC0];
  v14 = [v10 parameters];
  v15 = [v13 dictionaryWithObjects:v14 forKeys:v12];

  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
  v17 = [v8 parameters];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __70__VCVoiceShortcutManager_archiveAction_withActionMetadata_completion___block_invoke;
  v38[3] = &unk_2788FE068;
  v18 = v15;
  v39 = v18;
  v19 = v8;
  v40 = v19;
  v20 = v16;
  v41 = v20;
  [v17 enumerateObjectsUsingBlock:v38];

  v21 = [(VCVoiceShortcutManager *)self actionWithSerializedParameters:v20 actionMetadata:v10];

  if (v21)
  {
    v35 = v19;
    v36 = v12;
    v22 = MEMORY[0x277CBEB38];
    v42 = @"SerializedParameters";
    v23 = [v21 serializedParameters];
    v43 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v25 = [v22 dictionaryWithDictionary:v24];

    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];
    if (v27)
    {
      [v25 setObject:v27 forKeyedSubscript:@"ClientVersion"];
    }

    v28 = [MEMORY[0x277CBEB78] outputStreamToMemory];
    [v28 open];
    v37 = 0;
    v29 = [MEMORY[0x277CCAC58] writePropertyList:v25 toStream:v28 format:200 options:0 error:&v37];
    v30 = v37;
    [v28 close];
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
      v9[2](v9, 0, v31);
    }

    else
    {
      v31 = [v28 propertyForKey:*MEMORY[0x277CBE740]];
      (v9)[2](v9, v31, 0);
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
    v9[2](v9, 0, v30);
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

- (void)badgeTypeForEntityIdentifier:(id)a3 error:(id *)a4
{
  v9 = a3;
  v6 = [(VCVoiceShortcutManager *)self databaseProvider];
  v7 = [v6 databaseWithError:a4];

  v8 = [v7 serializedParametersForIdentifier:v9 error:a4];
}

- (void)applicationWasUnregistered:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"isPlaceholder"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v4 userInfo];
      v15 = 136315394;
      v16 = "[VCVoiceShortcutManager applicationWasUnregistered:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEBUG, "%s Ignoring placeholder uninstall event: (%@)", &v15, 0x16u);
LABEL_8:
    }
  }

  else
  {
    v10 = [v4 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"bundleIDs"];
    v8 = VCInactiveAppsFromList();

    if (![v8 count])
    {
      v9 = getWFGeneralLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = [v4 name];
        v13 = [v4 userInfo];
        v15 = 136315650;
        v16 = "[VCVoiceShortcutManager applicationWasUnregistered:]";
        v17 = 2112;
        v18 = v12;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Received (%@) launch event, but no bundle identifiers were supplied. Exiting. UserInfo: (%@)", &v15, 0x20u);
      }

      goto LABEL_8;
    }

    [(VCVoiceShortcutManager *)self deleteSuggestionsFromApps:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeAllSerializedParametersForQueryName:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VCVoiceShortcutManager *)self databaseProvider];
  v13 = 0;
  v9 = [v8 databaseWithError:&v13];
  v10 = v13;

  v12 = v10;
  [v9 removeAllSerializedParametersForQueryName:v7 error:&v12];

  v11 = v12;
  v6[2](v6, v11);
}

- (void)storeSerializedParameters:(id)a3 forAppEntityIdentifier:(id)a4 queryName:(id)a5 badgeType:(unint64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(VCVoiceShortcutManager *)self databaseProvider];
  v21 = 0;
  v17 = [v16 databaseWithError:&v21];
  v18 = v21;

  v20 = v18;
  [v17 storeSerializedParameters:v15 forIdentifier:v14 queryName:v13 badgeType:a6 error:&v20];

  v19 = v20;
  v12[2](v12, v19);
}

- (void)serializedParametersForAppEntityIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VCVoiceShortcutManager *)self databaseProvider];
  v14 = 0;
  v9 = [v8 databaseWithError:&v14];
  v10 = v14;

  v13 = v10;
  v11 = [v9 serializedParametersForIdentifier:v7 error:&v13];

  v12 = v13;
  v6[2](v6, v11, v12);
}

- (void)updateAppShortcutsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VCVoiceShortcutManager *)self appShortcutsUpdater];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__VCVoiceShortcutManager_updateAppShortcutsWithCompletion___block_invoke;
  v7[3] = &unk_2789001E0;
  v8 = v4;
  v6 = v4;
  [v5 updateWithCompletion:v7];
}

- (void)getSiriAutoShortcutsEnablementForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VCVoiceShortcutManager *)self databaseProvider];
  v14 = 0;
  v9 = [v8 databaseWithError:&v14];
  v10 = v14;

  v13 = v10;
  v11 = [v9 isSiriEnabledForAutoShortcutsWithBundleIdentifier:v7 error:&v13];

  v12 = v13;
  v6[2](v6, v11, v12);
}

- (void)setPerWorkflowStateData:(id)a3 forSmartPromptWithActionUUID:(id)a4 reference:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(VCVoiceShortcutManager *)self databaseProvider];
  v16 = 0;
  v12 = [v11 databaseWithError:&v16];
  v13 = v16;

  v15 = v13;
  [v12 saveSmartPromptStateData:v10 actionUUID:v9 reference:v8 error:&v15];

  v14 = v15;
}

- (void)logHomescreenFastPathRunEventForShortcutWithWebClip:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:828 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];
  }

  v6 = [(VCVoiceShortcutManager *)self databaseProvider];
  v29 = 0;
  v7 = [v6 databaseWithError:&v29];
  v8 = v29;

  if (v7)
  {
    v9 = [v5 shortcutIdentifier];
    v10 = [MEMORY[0x277CBEB98] setWithObjects:{@"source", @"galleryIdentifier", 0}];
    v11 = [objc_alloc(MEMORY[0x277D79EF0]) initWithIdentifier:v9 objectType:0];
    v28 = v8;
    v12 = [v7 recordWithDescriptor:v11 properties:v10 error:&v28];
    v13 = v28;

    if (v12)
    {
      v25 = WFHomescreenFastPathRunShortcutEvent(v5, v12, @"RunShortcutStart");
      v26 = WFHomescreenFastPathRunShortcutEvent(v5, v12, *MEMORY[0x277D7CC88]);
      v14 = WFHomescreenFastPathRunActionEvent(v5, v12, @"RunActionStart");
      WFHomescreenFastPathRunActionEvent(v5, v12, @"RunActionFinish");
      v15 = v27 = v10;
      [v25 track];
      [v14 track];
      [v12 name];
      v17 = v16 = v11;
      [v7 uniqueVisibleReferenceForWorkflowName:v17];
      v18 = v9;
      v20 = v19 = v13;
      v21 = [v7 logRunOfWorkflow:v20 withSource:*MEMORY[0x277D7A848] triggerID:0];

      v13 = v19;
      v9 = v18;

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
    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[VCVoiceShortcutManager logHomescreenFastPathRunEventForShortcutWithWebClip:]";
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Unable to log homescreen run event because database initialization failed: %@", buf, 0x16u);
    }

    v13 = v8;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)createShortcutWithRecordData:(id)a3 name:(id)a4 shortcutSource:(id)a5 accessSpecifier:(id)a6 completion:(id)a7
{
  v48 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_37:
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:741 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  v34 = [MEMORY[0x277CCA890] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:740 description:{@"Invalid parameter not satisfying: %@", @"workflowRecordData"}];

  if (!v16)
  {
    goto LABEL_37;
  }

LABEL_3:
  if (v17)
  {
    goto LABEL_4;
  }

LABEL_38:
  v36 = [MEMORY[0x277CCA890] currentHandler];
  [v36 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:742 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  if ([v16 allowShortcutImport])
  {
    v18 = [(VCVoiceShortcutManager *)self databaseProvider];
    v43 = 0;
    v19 = [v18 databaseWithError:&v43];
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
      v22 = [objc_alloc(MEMORY[0x277D7CA70]) initWithFileData:v13 name:v14 error:&v42];
      v23 = v42;
      v24 = v23;
      if (v22)
      {
        v41 = v23;
        v25 = [v22 recordRepresentationWithError:&v41];
        v39 = v41;

        if (v25)
        {
          if (v15)
          {
            [v25 setSource:v15];
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

            VCVoiceShortcutFromWorkflow(v27, v19, 0, 1, v17);
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
            (*(v17 + 2))(v17, 0, v38);
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
          (*(v17 + 2))(v17, 0, v39);
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

        (*(v17 + 2))(v17, 0, v24);
      }
    }

    else
    {
      (*(v17 + 2))(v17, 0, v20);
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
      v47 = v16;
      _os_log_impl(&dword_23103C000, v30, OS_LOG_TYPE_ERROR, "%s Unauthorized add attempt for shared shortcut with record using accessSpecifier (%{public}@)", buf, 0x16u);
    }

    v20 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:{@"Unauthorized add attempt for shared shortcut with recordusing accessSpecifier (%@)", v16}];
    (*(v17 + 2))(v17, 0, v20);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)requestDataMigrationWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:707 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v6 = getWFGeneralLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[VCVoiceShortcutManager requestDataMigrationWithCompletion:]";
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Data migration requested", buf, 0xCu);
  }

  v7 = VCOSTransactionWithName(@"voiceShortcutManager.sync.vocabulary");
  v5[2](v5, 1, 0);
  v8 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
  v13 = *MEMORY[0x277D7A350];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v8 deleteSearchableItemsWithDomainIdentifiers:v9 completionHandler:0];

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

- (void)getValueForDescriptor:(id)a3 resultClass:(Class)a4 completion:(id)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(VCVoiceShortcutManager *)self databaseProvider];
  v22 = 0;
  v11 = [v10 databaseWithError:&v22];
  v12 = v22;

  if (v11)
  {
    if ([v8 objectType])
    {
      v13 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1001 reason:0];
      v9[2](v9, 0, v13);
    }

    else
    {
      v14 = [v8 identifier];
      v15 = [v11 referenceForWorkflowID:v14];

      if (v15)
      {
        v23[0] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
        v17 = [(VCVoiceShortcutManager *)self databaseProvider];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __71__VCVoiceShortcutManager_getValueForDescriptor_resultClass_completion___block_invoke;
        v20[3] = &unk_2788FF098;
        v21 = v9;
        [(objc_class *)a4 getObjectsFromReferences:v16 databaseProvider:v17 completion:v20];

        v18 = v21;
      }

      else
      {
        v18 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1002 reason:0];
        v9[2](v9, 0, v18);
      }
    }
  }

  else
  {
    v9[2](v9, 0, v12);
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

- (void)getResultsForQuery:(id)a3 resultClass:(Class)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(VCVoiceShortcutManager *)self databaseProvider];
  v25 = 0;
  v11 = [v10 databaseWithError:&v25];
  v12 = v25;

  if (v11)
  {
    v13 = VCOSTransactionWithName(@"com.apple.shortcuts.fetch");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v11 sortedWorkflowsWithQuery:v8];
      v15 = [v14 descriptors];
      v16 = [(VCVoiceShortcutManager *)self databaseProvider];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __68__VCVoiceShortcutManager_getResultsForQuery_resultClass_completion___block_invoke;
      v21[3] = &unk_2788FF7F8;
      v24 = v9;
      v22 = v14;
      v23 = v13;
      v17 = v14;
      [(objc_class *)a4 getObjectsFromReferences:v15 databaseProvider:v16 completion:v21];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v11 sortedVisibleFolders];
        v19 = [v18 descriptors];
        v20 = [v18 state];
        (*(v9 + 2))(v9, v19, v20, 0);
      }

      else
      {
        (*(v9 + 2))(v9, 0, 0, 0);
      }
    }
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0, v12);
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
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v10 = 0;
  v11 = 0;
  [v2 getKnowledgeUUID:&v11 andSequenceNumber:&v10];
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
    v8 = [v3 UUIDString];
    [v7 setObject:v8 forKey:@"VCLSDatabaseUUIDKey"];

    [v7 setObject:v5 forKey:@"VCLSDataSequenceKey"];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)lsDatabaseChangedSinceLastCheck
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v16 = 0;
  v17 = 0;
  [v2 getKnowledgeUUID:&v17 andSequenceNumber:&v16];
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
      v13 = [v3 UUIDString];
      if ([v9 isEqualToString:v13])
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

- (void)deleteSuggestionsFromApps:(id)a3
{
  v4 = a3;
  v5 = [(VCVoiceShortcutManager *)self database];
  [v5 deleteShortcutSuggestionsFromApps:v4];

  [(VCVoiceShortcutManager *)self updateLSDatabaseAnchors];
}

- (void)deleteStaleSuggestions
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(VCVoiceShortcutManager *)self lsDatabaseChangedSinceLastCheck];
  v5 = getWFGeneralLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      *buf = 136315138;
      v14 = "[VCVoiceShortcutManager deleteStaleSuggestions]";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEBUG, "%s LS database has changed since last check. Checking for stale suggestions.", buf, 0xCu);
    }

    v7 = NSStringFromSelector(a2);
    v8 = VCOSTransactionWithName(v7);

    v9 = [MEMORY[0x277D79D80] accessSpecifierUnrestricted];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__VCVoiceShortcutManager_deleteStaleSuggestions__block_invoke;
    v11[3] = &unk_2788FE018;
    v11[4] = self;
    v12 = v8;
    v5 = v8;
    [(VCVoiceShortcutManager *)self getInactiveAppsWithAccessSpecifier:v9 completion:v11];
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

- (void)getShortcutSuggestionsForAllAppsWithLimit:(unint64_t)a3 accessSpecifier:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:545 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:546 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  if ([v9 allowReadAccessToSuggestionsWithBundleIdentifier:0])
  {
    v12 = [(VCVoiceShortcutManager *)self databaseProvider];
    v21 = 0;
    v13 = [v12 databaseWithError:&v21];
    v14 = v21;

    if (v13)
    {
      v20 = v14;
      v15 = [v13 shortcutSuggestionsForAllAppsWithLimit:a3 shortcutAvailability:0 error:&v20];
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

- (void)getShortcutSuggestionsForAppWithBundleIdentifier:(id)a3 accessSpecifier:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_12:
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:527 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_13:
  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:528 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  if ([v10 allowReadAccessToSuggestionsWithBundleIdentifier:v9])
  {
    v12 = [(VCVoiceShortcutManager *)self databaseProvider];
    v22 = 0;
    v13 = [v12 databaseWithError:&v22];
    v14 = v22;

    if (v13)
    {
      v21 = v14;
      v15 = [v13 shortcutSuggestionsForAppWithBundleIdentifier:v9 shortcutAvailability:0 error:&v21];
      v16 = v21;

      v11[2](v11, v15, v16);
      v14 = v16;
    }

    else
    {
      v11[2](v11, 0, v14);
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Access was denied"];
    v11[2](v11, 0, v17);
  }
}

- (void)setShortcutSuggestions:(id)a3 forAppWithBundleIdentifier:(id)a4 accessSpecifier:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_18:
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:499 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"shortcutSuggestions"}];

  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_19:
  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:500 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

LABEL_4:
  if ([v11 allowWriteAccessToSuggestionsWithBundleIdentifier:v10])
  {
    v12 = [(VCVoiceShortcutManager *)self databaseProvider];
    v24 = 0;
    v13 = [v12 databaseWithError:&v24];
    v14 = v24;

    if (v13)
    {
      v15 = VCOSTransactionWithName(@"setVoiceShortcutSuggestions");
      v23 = v14;
      v16 = [v13 setShortcutSuggestions:v9 forAppWithBundleIdentifier:v10 error:&v23];
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
      v28 = v10;
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Unauthorized write attempt for suggestions for bundleID (%{public}@) using accessSpecifier (%{public}@)", buf, 0x20u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)drawGlyphs:(id)a3 withBackgroundColorValues:(id)a4 padding:(double)a5 rounded:(BOOL)a6 intoContext:(id)a7
{
  v13 = a4;
  v14 = a7;
  v15 = a3;
  v16 = [v15 count];
  v17 = [v13 count];
  if (v13 && v16 != v17)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:470 description:{@"Background color values and glyph character arrays should be equal in size, or background color values should be nil."}];
  }

  v18 = objc_alloc_init(MEMORY[0x277D7A1F0]);
  [v14 singleImageSize];
  v19 = a5;
  v26[1] = 3221225472;
  v26[0] = MEMORY[0x277D85DD0];
  v26[2] = __91__VCVoiceShortcutManager_drawGlyphs_withBackgroundColorValues_padding_rounded_intoContext___block_invoke;
  v26[3] = &unk_2788FDFF0;
  v27 = v13;
  v28 = v18;
  v34 = a6;
  v29 = v14;
  v30 = floorf(v19);
  v31 = v30;
  v32 = v20 - v30 * 2.0;
  v33 = v21 - v30 * 2.0;
  v22 = v14;
  v23 = v18;
  v24 = v13;
  [v15 enumerateObjectsUsingBlock:v26];
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

- (BOOL)isPhraseUsable:(id)a3 inDatabase:(id)a4 error:(id *)a5
{
  v28[3] = *MEMORY[0x277D85DE8];
  v6 = [a4 visibleReferencesForWorkflowName:a3];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v7 identifier];
      v10 = [v7 name];
      *buf = 136315650;
      *&buf[4] = "[VCVoiceShortcutManager isPhraseUsable:inDatabase:error:]";
      *&buf[12] = 2112;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v27 = v10;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEBUG, "%s Found a local voice shortcut (%@) with the same phrase (%@).", buf, 0x20u);
    }

    v11 = [v7 identifier];
    v12 = MEMORY[0x277CCACA8];
    v13 = v7;
    v14 = [v13 name];
    v15 = [v12 stringWithFormat:@"Phrase (%@) is already associated with a voice shortcut.", v14];

    v16 = *MEMORY[0x277D7A370];
    *buf = v11;
    v17 = *MEMORY[0x277D7A378];
    v28[0] = v16;
    v28[1] = v17;
    v18 = [v13 name];
    *&buf[8] = v18;
    v28[2] = *MEMORY[0x277D7A368];
    v19 = [v13 associatedAppBundleIdentifier];

    v20 = *MEMORY[0x277D7A338];
    if (v19)
    {
      v20 = v19;
    }

    *&buf[16] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v28 count:3];

    v22 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1008 extraUserInfo:v21 reason:{@"%@", v15}];

    if (a5)
    {
      v23 = v22;
      *a5 = v22;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7 == 0;
}

- (BOOL)phraseHasHomeKitConflict:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [(VCVoiceShortcutManager *)self homeManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__VCVoiceShortcutManager_phraseHasHomeKitConflict___block_invoke;
  v11[3] = &unk_2788FDFA0;
  v14 = &v15;
  v7 = v4;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  [v6 checkName:v7 inHome:0 withValidationOptions:10 completionHandler:v11];

  v9 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v8, v9);
  LOBYTE(v6) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v6;
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

- (void)deleteVoiceShortcutWithIdentifier:(id)a3 name:(id)a4 accessSpecifier:(id)a5 completion:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:371 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v30 = [MEMORY[0x277CCA890] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"outerCompletionHandler"}];

LABEL_3:
  v16 = getWFGeneralLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v38 = "[VCVoiceShortcutManager deleteVoiceShortcutWithIdentifier:name:accessSpecifier:completion:]";
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_DEBUG, "%s Deleting VoiceShortcut with id (%@)", buf, 0x16u);
  }

  if ([v13 allowWriteAccessToVoiceShortcuts])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__VCVoiceShortcutManager_deleteVoiceShortcutWithIdentifier_name_accessSpecifier_completion___block_invoke;
    aBlock[3] = &unk_2788FDF78;
    v17 = v11;
    v34 = v17;
    v18 = v12;
    v35 = v18;
    v36 = v15;
    v19 = _Block_copy(aBlock);
    v20 = [(VCVoiceShortcutManager *)self databaseProvider];
    v32 = 0;
    v21 = [v20 databaseWithError:&v32];
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
    v40 = v13;
    _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_ERROR, "%s Unauthorized delete attempt for voice shortcut using accessSpecifier (%{public}@)", buf, 0x16u);
  }

  v25 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:{@"Unauthorized update attempt for voice shortcut using accessSpecifier (%@)", v13}];
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

- (void)updateVoiceShortcutWithIdentifier:(id)a3 phrase:(id)a4 shortcut:(id)a5 accessSpecifier:(id)a6 completion:(id)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_33:
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_34;
  }

  v32 = [MEMORY[0x277CCA890] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutIdentifier"}];

  if (!v16)
  {
    goto LABEL_33;
  }

LABEL_3:
  if (v17)
  {
    goto LABEL_4;
  }

LABEL_34:
  v34 = [MEMORY[0x277CCA890] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"outerCompletionHandler"}];

LABEL_4:
  if (!(v14 | v15))
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:311 description:@"Pass at least one parameter to update"];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__VCVoiceShortcutManager_updateVoiceShortcutWithIdentifier_phrase_shortcut_accessSpecifier_completion___block_invoke;
  aBlock[3] = &unk_2788FF368;
  v18 = v17;
  v50 = v18;
  v19 = _Block_copy(aBlock);
  v20 = getWFGeneralLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v52 = "[VCVoiceShortcutManager updateVoiceShortcutWithIdentifier:phrase:shortcut:accessSpecifier:completion:]";
    v53 = 2112;
    v54 = v13;
    _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_DEBUG, "%s Updating VoiceShortcut with id (%@)", buf, 0x16u);
  }

  if ([v16 allowWriteAccessToVoiceShortcuts])
  {
    v21 = [(VCVoiceShortcutManager *)self databaseProvider];
    v48 = 0;
    v22 = [v21 databaseWithError:&v48];
    v23 = v48;

    if (!v22)
    {
      v19[2](v19, 0, v23);
LABEL_30:

      goto LABEL_31;
    }

    v24 = VCOSTransactionWithName(@"updateVoiceShortcutWithIdentifier:phrase:");
    v25 = [v22 referenceForWorkflowID:v13];
    v41 = v25;
    if (!v25)
    {
      v26 = VCNotFoundError(v13);
      v19[2](v19, 0, v26);
LABEL_29:

      goto LABEL_30;
    }

    v37 = self;
    v40 = v24;
    v47 = v23;
    v26 = [MEMORY[0x277D7CA60] workflowWithReference:v25 database:v22 error:&v47];
    v27 = v47;

    if (v26)
    {
      if (v14)
      {
        v46 = v27;
        v38 = [(VCVoiceShortcutManager *)v37 isPhraseUsable:v14 inDatabase:v22 error:&v46];
        v23 = v46;

        if (!v38)
        {
          v19[2](v19, 0, v23);
          goto LABEL_28;
        }

        [v26 setName:v14];
      }

      else
      {
        v23 = v27;
      }

      v24 = v40;
      if (!v15)
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

      v29 = [MEMORY[0x277D7C0D0] sharedRegistry];
      v45 = v23;
      v36 = [v29 createActionWithShortcut:v15 error:&v45];
      v39 = v45;

      if (v36)
      {
        v30 = [v26 actions];
        [v26 removeActions:v30];

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
    v54 = v16;
    _os_log_impl(&dword_23103C000, v28, OS_LOG_TYPE_ERROR, "%s Unauthorized update attempt for voice shortcut using accessSpecifier (%{public}@)", buf, 0x16u);
  }

  v23 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:{@"Unauthorized update attempt for voice shortcut using accessSpecifier (%@)", v16}];
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

- (void)addVoiceShortcut:(id)a3 phrase:(id)a4 accessSpecifier:(id)a5 completion:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"shortcut"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v38 = [MEMORY[0x277CCA890] currentHandler];
  [v38 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

LABEL_3:
  if ([v13 allowWriteAccessToVoiceShortcuts])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__VCVoiceShortcutManager_addVoiceShortcut_phrase_accessSpecifier_completion___block_invoke;
    aBlock[3] = &unk_2788FF368;
    v48 = v14;
    v15 = _Block_copy(aBlock);
    v16 = [(VCVoiceShortcutManager *)self databaseProvider];
    v46 = 0;
    v17 = [v16 databaseWithError:&v46];
    v18 = v46;

    if (v17)
    {
      v19 = VCOSTransactionWithName(@"addVoiceShortcut:phrase:");
      v45 = 0;
      v20 = [(VCVoiceShortcutManager *)self isPhraseUsable:v12 inDatabase:v17 error:&v45];
      v21 = v45;
      if (v20)
      {
        v42 = v12;
        v22 = [MEMORY[0x277D7C0D0] sharedRegistry];
        v44 = v18;
        v23 = [v22 createActionWithShortcut:v11 error:&v44];
        v41 = v44;

        if (v23)
        {
          v39 = v21;
          v40 = v19;
          v24 = objc_alloc_init(MEMORY[0x277D7CA60]);
          [v24 setWorkflowTypes:MEMORY[0x277CBEBF8]];
          v25 = [v24 record];
          [v25 setName:v42];

          [v24 addAction:v23];
          v26 = [v24 record];
          [v26 addWatchWorkflowTypeIfEligible];

          v27 = objc_alloc(MEMORY[0x277D7CA68]);
          v28 = [v24 record];
          v29 = [v27 initWithRecord:v28];

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

        v12 = v42;
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

    v34 = v48;
  }

  else
  {
    v31 = getWFGeneralLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [v11 _associatedAppBundleIdentifier];
      *buf = 136315650;
      v50 = "[VCVoiceShortcutManager addVoiceShortcut:phrase:accessSpecifier:completion:]";
      v51 = 2114;
      v52 = v32;
      v53 = 2114;
      v54 = v13;
      _os_log_impl(&dword_23103C000, v31, OS_LOG_TYPE_ERROR, "%s Unauthorized add attempt for voice shortcut with bundleID (%{public}@) using accessSpecifier (%{public}@)", buf, 0x20u);
    }

    v33 = MEMORY[0x277CCA9B8];
    v34 = [v11 _associatedAppBundleIdentifier];
    v35 = [v33 vc_voiceShortcutErrorWithCode:1011 reason:{@"Unauthorized add attempt for voice shortcut with bundleID (%@) using accessSpecifier (%@)", v34, v13}];
    (*(v14 + 2))(v14, 0, v35);
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

- (void)getInactiveAppsWithAccessSpecifier:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v28 = [MEMORY[0x277CCA890] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFGeneralLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v38 = "[VCVoiceShortcutManager getInactiveAppsWithAccessSpecifier:completion:]";
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Get inactive apps", buf, 0xCu);
  }

  if ([v7 allowUnrestrictedAccess])
  {
    v11 = [(VCVoiceShortcutManager *)self databaseProvider];
    v35 = 0;
    v12 = [v11 databaseWithError:&v35];
    v13 = v35;

    if (v12)
    {
      v29 = VCOSTransactionWithName(@"getInactiveAppsWithAccessSpecifier");
      v34 = v13;
      v14 = VCWorkflowReferencesForAccessSpecifier(v12, v7, &v34);
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

            v22 = [*(*(&v30 + 1) + 8 * v21) associatedAppBundleIdentifier];
            if (v22)
            {
              [v16 addObject:v22];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v19);
      }

      v23 = [v16 allObjects];
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
      v40 = v7;
      _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_ERROR, "%s Unauthorized attempt to access voice shortcut apps using accessSpecifier (%{public}@)", buf, 0x16u);
    }

    v15 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:{@"Unauthorized attempt to access voice shortcut enabled apps using accessSpecifier %@", v7}];
    (v9)[2](v9, 0, v15);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceShortcutsForAppsWithBundleIdentifiers:(id)a3 accessSpecifier:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_14:
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifiers"}];

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_15:
  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v12 = getWFGeneralLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v29 = "[VCVoiceShortcutManager getVoiceShortcutsForAppsWithBundleIdentifiers:accessSpecifier:completion:]";
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s Get VoiceShortcuts for apps with bundle IDs = %@", buf, 0x16u);
  }

  if ([v9 count])
  {
    v13 = [(VCVoiceShortcutManager *)self databaseProvider];
    v27 = 0;
    v14 = [v13 databaseWithError:&v27];
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
      v24 = v11;
      v17 = v16;
      [v9 if_flatMapAsynchronously:v25 completionHandler:v22];
    }

    else
    {
      (*(v11 + 2))(v11, 0, v15);
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1007 reason:@"bundleIdentifiers are needed"];
    (*(v11 + 2))(v11, 0, v15);
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

- (void)getVoiceShortcutsWithAccessSpecifier:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFGeneralLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "[VCVoiceShortcutManager getVoiceShortcutsWithAccessSpecifier:completion:]";
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Get all VoiceShortcuts", buf, 0xCu);
  }

  v11 = [(VCVoiceShortcutManager *)self databaseProvider];
  v25 = 0;
  v12 = [v11 databaseWithError:&v25];
  v13 = v25;

  if (v12)
  {
    v14 = VCOSTransactionWithName(@"getVoiceShortcutsWithAccessSpecifier");
    v15 = [v7 allowUnrestrictedAccess];
    v24 = v13;
    v16 = VCWorkflowReferencesForAccessSpecifier(v12, v7, &v24);
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
      VCVoiceShortcutsFromWorkflows(v16, v12, v15 ^ 1, v21);
    }
  }

  else
  {
    (v9)[2](v9, 0, v13);
    v17 = v13;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceShortcutWithPhrase:(id)a3 accessSpecifier:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_14:
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_15:
  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v12 = getWFGeneralLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v30 = "[VCVoiceShortcutManager getVoiceShortcutWithPhrase:accessSpecifier:completion:]";
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s Get VoiceShortcut with phrase (%@)", buf, 0x16u);
  }

  v13 = [(VCVoiceShortcutManager *)self databaseProvider];
  v28 = 0;
  v14 = [v13 databaseWithError:&v28];
  v15 = v28;

  if (v14)
  {
    v16 = VCOSTransactionWithName(@"getVoiceShortcutWithPhrase");
    v17 = [v14 uniqueVisibleReferenceForWorkflowName:v9];
    if (v17)
    {
      v18 = [v10 allowReadAccessToShortcutsLibrary];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __80__VCVoiceShortcutManager_getVoiceShortcutWithPhrase_accessSpecifier_completion___block_invoke;
      v24[3] = &unk_2788FDED8;
      v27 = v11;
      v25 = v9;
      v26 = v16;
      VCVoiceShortcutFromWorkflow(v17, v14, 1, v18, v24);

      v19 = v27;
    }

    else
    {
      v19 = VCNotFoundByPhraseError(v9);
      (*(v11 + 2))(v11, 0, v19);
    }
  }

  else
  {
    (*(v11 + 2))(v11, 0, v15);
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

- (void)getVoiceShortcutWithIdentifier:(id)a3 accessSpecifier:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_14:
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutIdentifier"}];

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_15:
  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v12 = getWFGeneralLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v30 = "[VCVoiceShortcutManager getVoiceShortcutWithIdentifier:accessSpecifier:completion:]";
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s Get VoiceShortcut with id (%@)", buf, 0x16u);
  }

  v13 = [(VCVoiceShortcutManager *)self databaseProvider];
  v28 = 0;
  v14 = [v13 databaseWithError:&v28];
  v15 = v28;

  if (v14)
  {
    v16 = VCOSTransactionWithName(@"getVoiceShortcutsWithIdentifier");
    v17 = [v14 referenceForWorkflowID:v9];
    if (v17)
    {
      v18 = [v10 allowReadAccessToShortcutsLibrary];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __84__VCVoiceShortcutManager_getVoiceShortcutWithIdentifier_accessSpecifier_completion___block_invoke;
      v24[3] = &unk_2788FDED8;
      v27 = v11;
      v25 = v9;
      v26 = v16;
      VCVoiceShortcutFromWorkflow(v17, v14, 1, v18, v24);

      v19 = v27;
    }

    else
    {
      v19 = VCNotFoundError(v9);
      (*(v11 + 2))(v11, 0, v19);
    }
  }

  else
  {
    (*(v11 + 2))(v11, 0, v15);
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

- (void)getNumberOfVoiceShortcutsWithAccessSpecifier:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = getWFGeneralLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "[VCVoiceShortcutManager getNumberOfVoiceShortcutsWithAccessSpecifier:completion:]";
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Get number of voice shortcuts", buf, 0xCu);
  }

  v11 = [(VCVoiceShortcutManager *)self databaseProvider];
  v21 = 0;
  v12 = [v11 databaseWithError:&v21];
  v13 = v21;

  if (v12)
  {
    if ([v7 allowUnrestrictedAccess])
    {
      v14 = [v12 sortedVisibleWorkflowsByName];
    }

    else
    {
      v15 = [v7 associatedAppBundleIdentifier];
      v14 = [v12 sortedVisibleWorkflowsWithAssociatedAppBundleIdentifier:v15];
    }

    v16 = [v14 count];
    v17 = [v14 fetchError];
    (v9)[2](v9, v16, v17);
  }

  else
  {
    (v9)[2](v9, 0, v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (WFDatabase)database
{
  v2 = [(VCVoiceShortcutManager *)self databaseProvider];
  v3 = [v2 databaseWithError:0];

  return v3;
}

- (VCVoiceShortcutManager)initWithDatabaseProvider:(id)a3 eventHandler:(id)a4 appShortcutsUpdater:(id)a5 contextualActionSyncService:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutManager.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v21.receiver = self;
  v21.super_class = VCVoiceShortcutManager;
  v16 = [(VCVoiceShortcutManager *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_databaseProvider, a3);
    objc_storeStrong(&v17->_appShortcutsUpdater, a5);
    objc_storeStrong(&v17->_contextualActionSyncService, a6);
    [v13 addObserver:v17 selector:sel_applicationWasUnregistered_ name:@"ApplicationUnregistered"];
    v18 = v17;
  }

  return v17;
}

@end