@interface WFConfiguredSystemActionProvider
+ (id)sharedProvider;
- (BOOL)saveUpdatedAction:(id)a3 forActionType:(id)a4;
- (WFConfiguredSystemActionProvider)init;
- (id)availableActionTypes;
- (id)configuredStaccatoActionFromTemplate:(id)a3 valuesByParameterKey:(id)a4 error:(id *)a5;
- (id)configuredSystemActionForActionType:(id)a3;
- (id)defaultSystemActionForActionType:(id)a3;
- (id)linkActionWithStaccatoIdentifier:(id)a3;
- (id)userDefaultsForSystemActionType:(id)a3;
- (id)userDefaultsKeyForSystemActionType:(id)a3;
- (void)addObserver:(id)a3 forActionType:(id)a4;
@end

@implementation WFConfiguredSystemActionProvider

- (void)addObserver:(id)a3 forActionType:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_observersLock);
  v8 = [(WFConfiguredSystemActionProvider *)self observers];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v10 = [(WFConfiguredSystemActionProvider *)self userDefaultsForSystemActionType:v7];
    v11 = [(WFConfiguredSystemActionProvider *)self userDefaultsKeyForSystemActionType:v7];
    v9 = [[WFConfiguredSystemActionObserverRegistration alloc] initWithUserDefaults:v10 userDefaultsKey:v11 actionType:v7];
    v12 = [(WFConfiguredSystemActionProvider *)self observers];
    [v12 setObject:v9 forKeyedSubscript:v7];
  }

  v13 = [(WFConfiguredSystemActionObserverRegistration *)v9 observers];
  [v13 addObject:v6];

  os_unfair_lock_unlock(&self->_observersLock);
  v14 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[WFConfiguredSystemActionProvider addObserver:forActionType:]";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s Added action observer: %@ for %@", &v16, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)configuredStaccatoActionFromTemplate:(id)a3 valuesByParameterKey:(id)a4 error:(id *)a5
{
  v67 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 identifier];
  v11 = [(WFConfiguredSystemActionProvider *)self linkActionWithStaccatoIdentifier:v10];

  v50 = v11;
  if (v11)
  {
    v48 = v9;
    v49 = v8;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v56;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v56 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v55 + 1) + 8 * i);
          v18 = [v50 parameterForKey:v17];
          v19 = [v12 objectForKeyedSubscript:v17];
          v20 = objc_alloc([v18 stateClass]);
          v21 = [v19 serializedState];
          v22 = [v20 initWithSerializedRepresentation:v21 variableProvider:0 parameter:v18];

          v23 = getWFStaccatoLogObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v61 = "[WFConfiguredSystemActionProvider configuredStaccatoActionFromTemplate:valuesByParameterKey:error:]";
            v62 = 2112;
            v63 = v22;
            v64 = 2112;
            v65 = v17;
            _os_log_impl(&dword_23103C000, v23, OS_LOG_TYPE_INFO, "%s Setting %@ for %@", buf, 0x20u);
          }

          [v50 setParameterState:v22 forKey:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v14);
    }

    v24 = v50;
    v25 = [v24 conformsToProtocol:&unk_284617330];
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if (v25 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v28 = [v24 defaultParameterStatesForStaccato];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v29 = [v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v52;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v52 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v51 + 1) + 8 * j);
            v34 = [v28 objectForKeyedSubscript:v33];
            [v24 setParameterState:v34 forKey:v33];
          }

          v30 = [v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v30);
      }
    }

    v35 = objc_alloc(MEMORY[0x277CD3A70]);
    v36 = [v24 fullyQualifiedLinkActionIdentifier];
    v37 = [v36 bundleIdentifier];
    v38 = [v24 linkActionWithSerializedParameters];
    v39 = [v24 metadata];
    v40 = [v35 initWithAppBundleIdentifier:v37 linkAction:v38 linkActionMetadata:v39];

    v41 = objc_alloc(MEMORY[0x277D79E30]);
    v42 = [v24 localizedName];
    v43 = [v41 initWithIntent:v40 named:v42 previewIcon:0 appShortcutIdentifier:0 templateParameterValues:v12 contextualParameters:0 shortcutsMetadata:0 colorScheme:0];

    v9 = v48;
    v8 = v49;
    goto LABEL_29;
  }

  v44 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v61 = "[WFConfiguredSystemActionProvider configuredStaccatoActionFromTemplate:valuesByParameterKey:error:]";
    v62 = 2112;
    v63 = v8;
    _os_log_impl(&dword_23103C000, v44, OS_LOG_TYPE_ERROR, "%s Failed to find link action for template: %@", buf, 0x16u);
  }

  if (a5)
  {
    v45 = MEMORY[0x277CCA9B8];
    v27 = [v8 identifier];
    [v45 vc_voiceShortcutErrorWithCode:1002 reason:{@"Action template with identifier (%@) does not resolve to valid link action", v27}];
    *a5 = v43 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v43 = 0;
LABEL_30:

  v46 = *MEMORY[0x277D85DE8];

  return v43;
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

- (BOOL)saveUpdatedAction:(id)a3 forActionType:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:*MEMORY[0x277D7A5A8]])
  {
    v15 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v15];
    v8 = v15;
    if (v7)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];
      [v9 setObject:v7 forKey:@"SBSystemActionConfiguredActionArchive"];
      v10 = getWFStaccatoLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    v9 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      *buf = 136315906;
      v17 = "[WFConfiguredSystemActionProvider saveUpdatedAction:forActionType:]";
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Unable to save updated action %@ of type %@ due to: %@", buf, 0x2Au);
    }

LABEL_15:
    v7 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  if ([v6 isEqualToString:*MEMORY[0x277D7A5B0]])
  {
    v14 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v14];
    v8 = v14;
    if (v7)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];
      [v9 setObject:v7 forKey:@"SBPencilSystemShortcutAction"];
      v10 = getWFStaccatoLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        *buf = 136315650;
        v17 = "[WFConfiguredSystemActionProvider saveUpdatedAction:forActionType:]";
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Successfuly saved updated action %@ of type %@.", buf, 0x20u);
      }

LABEL_9:

      v11 = 1;
LABEL_16:

      goto LABEL_17;
    }

    v9 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v11 = 0;
LABEL_17:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)defaultSystemActionForActionType:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D79E70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 isEqualToString:*MEMORY[0x277D7A5A8]];

  if (v7)
  {
    v8 = *MEMORY[0x277D7A588];
    v9 = [(WFConfiguredSystemActionProvider *)self linkActionWithStaccatoIdentifier:v8];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D7A118]) initWithIdentifier:v8 sectionIdentifier:@"SilentMode" linkAction:v9];
      v18 = 0;
      v11 = [(WFConfiguredSystemActionProvider *)self configuredStaccatoActionFromTemplate:v10 valuesByParameterKey:MEMORY[0x277CBEC10] error:&v18];
      v12 = v11;
      if (!v11)
      {
        v13 = getWFStaccatoLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "[WFConfiguredSystemActionProvider defaultSystemActionForActionType:]";
          v21 = 2112;
          v22 = v8;
          _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_ERROR, "%s Failed to find link action for default action identifier: %@", buf, 0x16u);
        }

        v12 = v6;
      }

      v14 = v12;
    }

    else
    {
      v15 = getWFStaccatoLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[WFConfiguredSystemActionProvider defaultSystemActionForActionType:]";
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Failed to find link action for default action identifier: %@", buf, 0x16u);
      }

      v14 = v6;
    }
  }

  else
  {
    v14 = v6;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)userDefaultsKeyForSystemActionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D7A5A8]])
  {
    v4 = @"SBSystemActionConfiguredActionArchive";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D7A5B0]])
  {
    v4 = @"SBPencilSystemShortcutAction";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)userDefaultsForSystemActionType:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];

  return v3;
}

- (id)configuredSystemActionForActionType:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFConfiguredSystemActionProvider *)self userDefaultsForSystemActionType:v4];
  v6 = [(WFConfiguredSystemActionProvider *)self userDefaultsKeyForSystemActionType:v4];
  v7 = [v5 objectForKey:v6];
  v13 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v13];
  v9 = v13;
  if (!v8)
  {
    v10 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "[WFConfiguredSystemActionProvider configuredSystemActionForActionType:]";
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to read configured action for type: %@ due to: %@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)availableActionTypes
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D79F18] currentDevice];
  v4 = [v3 hasCapability:*MEMORY[0x277D7A3B8]];

  if (v4)
  {
    [v2 addObject:*MEMORY[0x277D7A5A8]];
  }

  v5 = [MEMORY[0x277D79F18] currentDevice];
  v6 = [v5 hasCapability:*MEMORY[0x277D7A3C8]];

  if (v6)
  {
    [v2 addObject:*MEMORY[0x277D7A5B0]];
  }

  v7 = [v2 copy];

  return v7;
}

- (WFConfiguredSystemActionProvider)init
{
  v8.receiver = self;
  v8.super_class = WFConfiguredSystemActionProvider;
  v2 = [(WFConfiguredSystemActionProvider *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_observersLock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    observers = v3->_observers;
    v3->_observers = v4;

    v6 = v3;
  }

  return v3;
}

+ (id)sharedProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WFConfiguredSystemActionProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedProvider_onceToken_934 != -1)
  {
    dispatch_once(&sharedProvider_onceToken_934, block);
  }

  v2 = sharedProvider_sharedProvider;

  return v2;
}

uint64_t __50__WFConfiguredSystemActionProvider_sharedProvider__block_invoke(uint64_t a1)
{
  sharedProvider_sharedProvider = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end