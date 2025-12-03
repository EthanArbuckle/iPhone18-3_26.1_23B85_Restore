@interface WFFocusConfigurationLinkAction
+ (id)genericRuntimeError;
- (BOOL)isRunningInsideFocusConfigurationExtension;
- (BOOL)requiresRemoteExecution;
- (DNDModeConfigurationService)configurationService;
- (id)currentFocusConfiguration;
- (id)disabledOnPlatforms;
- (id)dndApplicationIdentifier;
- (id)localizedAppName;
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)parameterDefinitions;
- (id)parameterSummary;
- (id)selectedFocusIdentifier;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)clearFocusConfiguration;
- (void)createAndCommitFocusConfigurationToDND;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)toggleFocusConfiguration;
- (void)updateParameterStatesFromCurrentDNDConfiguration;
- (void)wasAddedToWorkflowByUser:(id)user;
@end

@implementation WFFocusConfigurationLinkAction

- (BOOL)requiresRemoteExecution
{
  v3.receiver = self;
  v3.super_class = WFFocusConfigurationLinkAction;
  return [(WFAction *)&v3 requiresRemoteExecution];
}

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  nameCopy = name;
  appDescriptor = [(WFAppIntentExecutionAction *)self appDescriptor];
  localizedName = [appDescriptor localizedName];

  v9 = MEMORY[0x1E696AEC0];
  if (localizedName)
  {
    v10 = WFLocalizedString(@"Allow “%1$@” to change your Focus Filter settings for “%2$@”?");
    [v9 localizedStringWithFormat:v10, nameCopy, localizedName];
  }

  else
  {
    v10 = WFLocalizedString(@"Allow “%1$@” to change your Focus Filter settings?");
    [v9 localizedStringWithFormat:v10, nameCopy, v13];
  }
  v11 = ;

  return v11;
}

- (BOOL)isRunningInsideFocusConfigurationExtension
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:*MEMORY[0x1E69E0F20]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [bundleIdentifier isEqualToString:*MEMORY[0x1E69E0F28]];
  }

  return v4;
}

- (void)wasAddedToWorkflowByUser:(id)user
{
  v5.receiver = self;
  v5.super_class = WFFocusConfigurationLinkAction;
  [(WFAction *)&v5 wasAddedToWorkflowByUser:?];
  if (user)
  {
    [(WFFocusConfigurationLinkAction *)self updateParameterStatesFromCurrentDNDConfiguration];
  }
}

- (void)updateParameterStatesFromCurrentDNDConfiguration
{
  v52 = *MEMORY[0x1E69E9840];
  currentFocusConfiguration = [(WFFocusConfigurationLinkAction *)self currentFocusConfiguration];
  action = [currentFocusConfiguration action];

  v37 = action;
  parameters = [action parameters];
  v6 = [parameters count];

  if (v6)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    metadata = [(WFAppIntentExecutionAction *)self metadata];
    parameters2 = [metadata parameters];

    v9 = [parameters2 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v39;
      *&v10 = 136315394;
      v36 = v10;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(parameters2);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          valueType = [v14 valueType];
          v16 = [valueType wf_parameterDefinitionWithParameterMetadata:v14];

          if (v16)
          {
            parameters3 = [v37 parameters];
            name = [v14 name];
            v19 = [parameters3 if_firstObjectWithValue:name forKey:@"identifier"];

            if (v19)
            {
              value = [v19 value];
              v21 = [v16 parameterStateFromLinkValue:value];

              if (v21)
              {
                name2 = [v14 name];
                [(WFLinkAction *)self setParameterState:v21 forKey:name2];
              }

              else
              {
                name2 = getWFAppIntentsLogObject();
                if (os_log_type_enabled(name2, OS_LOG_TYPE_ERROR))
                {
                  *buf = v36;
                  v48 = "[WFFocusConfigurationLinkAction updateParameterStatesFromCurrentDNDConfiguration]";
                  v49 = 2112;
                  v50 = v16;
                  _os_log_impl(&dword_1CA256000, name2, OS_LOG_TYPE_ERROR, "%s Could not create parameter state from parameter definition %@.", buf, 0x16u);
                }
              }
            }

            else
            {
              v21 = getWFAppIntentsLogObject();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                name3 = [v14 name];
                *buf = v36;
                v48 = "[WFFocusConfigurationLinkAction updateParameterStatesFromCurrentDNDConfiguration]";
                v49 = 2112;
                v50 = name3;
                _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_ERROR, "%s Could not find a property with identifier %@ in the DND LNAction, it will be ignored.", buf, 0x16u);
              }
            }
          }

          else
          {
            v19 = getWFAppIntentsLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              name4 = [v14 name];
              *buf = v36;
              v48 = "[WFFocusConfigurationLinkAction updateParameterStatesFromCurrentDNDConfiguration]";
              v49 = 2112;
              v50 = name4;
              _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Failed to create parameter definition for %@, it will be ignored.", buf, 0x16u);
            }
          }
        }

        v11 = [parameters2 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v25 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v48 = "[WFFocusConfigurationLinkAction updateParameterStatesFromCurrentDNDConfiguration]";
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_INFO, "%s No parameters to configure, will clear parameter states.", buf, 0xCu);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    metadata2 = [(WFAppIntentExecutionAction *)self metadata];
    parameters2 = [metadata2 parameters];

    v27 = [parameters2 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(parameters2);
          }

          v31 = *(*(&v42 + 1) + 8 * j);
          v32 = getWFAppIntentsLogObject();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            name5 = [v31 name];
            *buf = 136315394;
            v48 = "[WFFocusConfigurationLinkAction updateParameterStatesFromCurrentDNDConfiguration]";
            v49 = 2112;
            v50 = name5;
            _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_DEBUG, "%s Clearing parameter state for %@", buf, 0x16u);
          }

          name6 = [v31 name];
          [(WFLinkAction *)self setParameterState:0 forKey:name6];
        }

        v28 = [parameters2 countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v28);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)clearFocusConfiguration
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    selectedFocusIdentifier = [(WFFocusConfigurationLinkAction *)self selectedFocusIdentifier];
    *buf = 136315394;
    v16 = "[WFFocusConfigurationLinkAction clearFocusConfiguration]";
    v17 = 2112;
    v18 = selectedFocusIdentifier;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEBUG, "%s Clearing Focus Filter configuration from focus with identifier %@", buf, 0x16u);
  }

  configurationService = [(WFFocusConfigurationLinkAction *)self configurationService];
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  identifier = [metadata identifier];
  dndApplicationIdentifier = [(WFFocusConfigurationLinkAction *)self dndApplicationIdentifier];
  selectedFocusIdentifier2 = [(WFFocusConfigurationLinkAction *)self selectedFocusIdentifier];
  v14 = 0;
  [configurationService clearAppActionWithIdentifier:identifier forApplicationIdentifier:dndApplicationIdentifier modeIdentifier:selectedFocusIdentifier2 error:&v14];
  v10 = v14;

  [(WFFocusConfigurationLinkAction *)self updateParameterStatesFromCurrentDNDConfiguration];
  if (v10)
  {
    v11 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[WFFocusConfigurationLinkAction clearFocusConfiguration]";
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Error clearing DNDAppAction: %@", buf, 0x16u);
    }

    genericRuntimeError = [objc_opt_class() genericRuntimeError];
    [(WFAppIntentExecutionAction *)self finishRunningWithError:genericRuntimeError];
  }

  else
  {
    [(WFAppIntentExecutionAction *)self finishRunningWithError:0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)toggleFocusConfiguration
{
  currentFocusConfiguration = [(WFFocusConfigurationLinkAction *)self currentFocusConfiguration];
  -[WFFocusConfigurationLinkAction setFocusConfigurationEnablementStatus:](self, "setFocusConfigurationEnablementStatus:", [currentFocusConfiguration isEnabled] ^ 1);
}

- (id)currentFocusConfiguration
{
  v23 = *MEMORY[0x1E69E9840];
  configurationService = [(WFFocusConfigurationLinkAction *)self configurationService];
  selectedFocusIdentifier = [(WFFocusConfigurationLinkAction *)self selectedFocusIdentifier];
  v18 = 0;
  v5 = [configurationService getAppActionsForModeIdentifier:selectedFocusIdentifier error:&v18];
  v6 = v18;
  dndApplicationIdentifier = [(WFFocusConfigurationLinkAction *)self dndApplicationIdentifier];
  v8 = [v5 objectForKey:dndApplicationIdentifier];

  if (v6)
  {
    v9 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[WFFocusConfigurationLinkAction currentFocusConfiguration]";
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Error fetching current focus configuration: %@", buf, 0x16u);
    }
  }

  if ([v8 count])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__WFFocusConfigurationLinkAction_currentFocusConfiguration__block_invoke;
    v17[3] = &unk_1E837B450;
    v17[4] = self;
    v10 = [v8 objectsPassingTest:v17];
    anyObject = [v10 anyObject];
  }

  else
  {
    v12 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      appDescriptor = [(WFAppIntentExecutionAction *)self appDescriptor];
      bundleIdentifier = [appDescriptor bundleIdentifier];
      *buf = 136315394;
      v20 = "[WFFocusConfigurationLinkAction currentFocusConfiguration]";
      v21 = 2112;
      v22 = bundleIdentifier;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s No Focus configurations were found for %@", buf, 0x16u);
    }

    anyObject = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return anyObject;
}

uint64_t __59__WFFocusConfigurationLinkAction_currentFocusConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) metadata];
  v5 = [v4 identifier];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (void)createAndCommitFocusConfigurationToDND
{
  v11 = *MEMORY[0x1E69E9840];
  processedParameters = [(WFAction *)self processedParameters];
  v4 = processedParameters;
  if (processedParameters)
  {
    genericRuntimeError = [processedParameters mutableCopy];
    [genericRuntimeError removeObjectForKey:@"Mode"];
    [genericRuntimeError removeObjectForKey:@"FocusMode"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__WFFocusConfigurationLinkAction_createAndCommitFocusConfigurationToDND__block_invoke;
    v8[3] = &unk_1E837B428;
    v8[4] = self;
    [(WFAppIntentExecutionAction *)self getLinkActionWithProcessedParameters:genericRuntimeError completionHandler:v8];
  }

  else
  {
    v6 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v10 = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Could not get processedParameters.", buf, 0xCu);
    }

    genericRuntimeError = [objc_opt_class() genericRuntimeError];
    [(WFAppIntentExecutionAction *)self finishRunningWithError:genericRuntimeError];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __72__WFFocusConfigurationLinkAction_createAndCommitFocusConfigurationToDND__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = getWFAppIntentsLogObject();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEBUG, "%s Will send configured LNAction to DNDModeConfigurationService: %@", buf, 0x16u);
    }

    v9 = [*(a1 + 32) currentFocusConfiguration];
    v10 = getWFAppIntentsLogObject();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v11)
      {
        *buf = 136315138;
        *&buf[4] = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]_block_invoke";
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s Updating a pre-existing DNDAppAction", buf, 0xCu);
      }

      v12 = [v9 mutableCopy];
      [v12 setAction:v5];
    }

    else
    {
      if (v11)
      {
        *buf = 136315138;
        *&buf[4] = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]_block_invoke";
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s Creating a new DNDAppAction", buf, 0xCu);
      }

      v24 = 0;
      v25 = &v24;
      v26 = 0x2050000000;
      v13 = getDNDAppActionClass_softClass;
      v27 = getDNDAppActionClass_softClass;
      if (!getDNDAppActionClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getDNDAppActionClass_block_invoke;
        v29 = &unk_1E837FAC0;
        v30 = &v24;
        __getDNDAppActionClass_block_invoke(buf);
        v13 = v25[3];
      }

      v14 = v13;
      _Block_object_dispose(&v24, 8);
      v12 = [[v13 alloc] initWithAction:v5 enabled:1];
    }

    v15 = [*(a1 + 32) configurationService];
    v16 = [*(a1 + 32) dndApplicationIdentifier];
    v17 = [*(a1 + 32) selectedFocusIdentifier];
    v23 = 0;
    [v15 setAppAction:v12 forApplicationIdentifier:v16 modeIdentifier:v17 error:&v23];
    v18 = v23;

    if (v18)
    {
      v19 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Error committing DNDAppAction: %@", buf, 0x16u);
      }

      v20 = *(a1 + 32);
      v21 = [objc_opt_class() genericRuntimeError];
      [v20 finishRunningWithError:v21];
    }

    else
    {
      [*(a1 + 32) finishRunningWithError:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Could not get LNAction with error: %@", buf, 0x16u);
    }

    [*(a1 + 32) finishRunningWithError:v6];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(WFAction *)self parameterValueForKey:@"Mode" ofClass:objc_opt_class()];
  if ([v4 isEqualToString:@"Set"])
  {
    [(WFFocusConfigurationLinkAction *)self createAndCommitFocusConfigurationToDND];
  }

  else if ([v4 isEqualToString:@"Turn On"])
  {
    [(WFFocusConfigurationLinkAction *)self enableFocusConfiguration];
  }

  else if ([v4 isEqualToString:@"Turn Off"])
  {
    [(WFFocusConfigurationLinkAction *)self disableFocusConfiguration];
  }

  else if ([v4 isEqualToString:@"Toggle"])
  {
    [(WFFocusConfigurationLinkAction *)self toggleFocusConfiguration];
  }

  else if ([v4 isEqualToString:@"Clear"])
  {
    [(WFFocusConfigurationLinkAction *)self clearFocusConfiguration];
  }

  else
  {
    v5 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[WFFocusConfigurationLinkAction runAsynchronouslyWithInput:]";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Programming error: Unexpected action mode.", &v8, 0xCu);
    }

    genericRuntimeError = [objc_opt_class() genericRuntimeError];
    [(WFAppIntentExecutionAction *)self finishRunningWithError:genericRuntimeError];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (DNDModeConfigurationService)configurationService
{
  v19 = *MEMORY[0x1E69E9840];
  configurationService = self->_configurationService;
  if (!configurationService)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v4 = getDNDModeConfigurationServiceClass_softClass;
    v14 = getDNDModeConfigurationServiceClass_softClass;
    if (!getDNDModeConfigurationServiceClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v16 = __getDNDModeConfigurationServiceClass_block_invoke;
      v17 = &unk_1E837FAC0;
      v18 = &v11;
      __getDNDModeConfigurationServiceClass_block_invoke(&buf);
      v4 = v12[3];
    }

    v5 = v4;
    _Block_object_dispose(&v11, 8);
    v6 = [v4 serviceForClientIdentifier:{@"com.apple.focus.activity-manager", v11}];
    v7 = self->_configurationService;
    self->_configurationService = v6;

    configurationService = self->_configurationService;
    if (!configurationService)
    {
      v8 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[WFFocusConfigurationLinkAction configurationService]";
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Could not obtain a DNDModeConfigurationService instance.", &buf, 0xCu);
      }

      configurationService = self->_configurationService;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return configurationService;
}

- (id)dndApplicationIdentifier
{
  v19 = *MEMORY[0x1E69E9840];
  appDescriptor = [(WFAppIntentExecutionAction *)self appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];

  if (!bundleIdentifier)
  {
    v4 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[WFFocusConfigurationLinkAction dndApplicationIdentifier]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_FAULT, "%s Could not get bundle identifier for action owner.", &buf, 0xCu);
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getDNDApplicationIdentifierClass_softClass;
  v14 = getDNDApplicationIdentifierClass_softClass;
  if (!getDNDApplicationIdentifierClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v16 = __getDNDApplicationIdentifierClass_block_invoke;
    v17 = &unk_1E837FAC0;
    v18 = &v11;
    __getDNDApplicationIdentifierClass_block_invoke(&buf);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  v7 = [v5 alloc];
  v8 = [v7 initWithBundleID:{bundleIdentifier, v11}];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)selectedFocusIdentifier
{
  v2 = [(WFAction *)self parameterValueForKey:@"FocusMode" ofClass:objc_opt_class()];
  identifier = [v2 identifier];
  v4 = identifier;
  if (!identifier)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v5 = getDNDDefaultModeIdentifierSymbolLoc_ptr;
    v14 = getDNDDefaultModeIdentifierSymbolLoc_ptr;
    if (!getDNDDefaultModeIdentifierSymbolLoc_ptr)
    {
      v6 = DoNotDisturbLibrary();
      v12[3] = dlsym(v6, "DNDDefaultModeIdentifier");
      getDNDDefaultModeIdentifierSymbolLoc_ptr = v12[3];
      v5 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getDNDDefaultModeIdentifier(void)"];
      [currentHandler handleFailureInFunction:v10 file:@"WFFocusConfigurationLinkAction.m" lineNumber:29 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v4 = *v5;
  }

  v7 = v4;

  return v7;
}

- (id)parameterDefinitions
{
  v34[6] = *MEMORY[0x1E69E9840];
  if ([(WFFocusConfigurationLinkAction *)self isRunningInsideFocusConfigurationExtension])
  {
    v27.receiver = self;
    v27.super_class = WFFocusConfigurationLinkAction;
    parameterDefinitions = [(WFLinkAction *)&v27 parameterDefinitions];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = WFFocusConfigurationLinkAction;
    parameterDefinitions2 = [(WFLinkAction *)&v26 parameterDefinitions];
    v25 = [parameterDefinitions2 if_compactMap:&__block_literal_global_49802];

    v5 = [WFParameterDefinition alloc];
    v33[0] = @"Class";
    v6 = objc_opt_class();
    v24 = NSStringFromClass(v6);
    v34[0] = v24;
    v34[1] = @"Set";
    v33[1] = @"DefaultValue";
    v33[2] = @"Items";
    v32[0] = @"Set";
    v32[1] = @"Turn On";
    v32[2] = @"Turn Off";
    v32[3] = @"Toggle";
    v32[4] = @"Clear";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
    v34[2] = v7;
    v33[3] = @"ItemDisplayNames";
    v8 = WFLocalizedStringResourceWithKey(@"Set", @"Set");
    v31[0] = v8;
    v9 = WFLocalizedStringResourceWithKey(@"Turn On", @"Turn On");
    v31[1] = v9;
    v10 = WFLocalizedStringResourceWithKey(@"Turn Off", @"Turn Off");
    v31[2] = v10;
    v11 = WFLocalizedStringResourceWithKey(@"Toggle", @"Toggle");
    v31[3] = v11;
    v12 = WFLocalizedStringResourceWithKey(@"Clear", @"Clear");
    v31[4] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
    v34[3] = v13;
    v34[4] = @"Mode";
    v33[4] = @"Key";
    v33[5] = @"Label";
    v14 = WFLocalizedStringResourceWithKey(@"Mode", @"Mode");
    v34[5] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:6];
    v16 = [(WFParameterDefinition *)v5 initWithDictionary:v15];

    v17 = [WFParameterDefinition alloc];
    v29[0] = @"Class";
    v29[1] = @"Key";
    v30[0] = @"WFFocusModesPickerParameter";
    v30[1] = @"FocusMode";
    v29[2] = @"Label";
    v18 = WFLocalizedStringResourceWithKey(@"Focus", @"Focus");
    v30[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v20 = [(WFParameterDefinition *)v17 initWithDictionary:v19];

    v28[0] = v16;
    v28[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    parameterDefinitions = [v21 arrayByAddingObjectsFromArray:v25];
  }

  v22 = *MEMORY[0x1E69E9840];

  return parameterDefinitions;
}

id __54__WFFocusConfigurationLinkAction_parameterDefinitions__block_invoke(uint64_t a1, void *a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 objectForKey:@"Key"];
  if ([v3 isEqualToString:@"ShowWhenRun"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"OpenWhenRun"))
  {
    v4 = 0;
  }

  else
  {
    v19[0] = @"WFParameterKey";
    v19[1] = @"WFParameterValue";
    v20[0] = @"Mode";
    v20[1] = @"Set";
    v19[2] = @"WFResourceClass";
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v20[2] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v8 = [v2 objectForKey:@"RequiredResources"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 mutableCopy];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = [MEMORY[0x1E695DF70] array];
    }

    v13 = v12;

    [v13 addObject:v7];
    v17 = @"RequiredResources";
    v18 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v4 = [v2 definitionByAddingEntriesInDictionary:v14];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)parameterSummary
{
  v3 = [WFActionParameterSummary alloc];
  v4 = MEMORY[0x1E696AEC0];
  v5 = WFLocalizedString(@"${Mode} %@ Focus Filter while in ${FocusMode}");
  localizedAppName = [(WFFocusConfigurationLinkAction *)self localizedAppName];
  v7 = [v4 localizedStringWithFormat:v5, localizedAppName];
  v8 = [(WFActionParameterSummary *)v3 initWithLocalizedString:v7];

  return v8;
}

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Focus (action category)", @"Focus");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  v4 = MEMORY[0x1E696AEC0];
  contextCopy = context;
  v6 = WFLocalizedStringResourceWithKey(@"Sets the behavior of the %@ app when the given Focus is enabled.", @"Sets the behavior of the %@ app when the given Focus is enabled.");
  v7 = [contextCopy localize:v6];

  localizedAppName = [(WFFocusConfigurationLinkAction *)self localizedAppName];
  v9 = [v4 localizedStringWithFormat:v7, localizedAppName];

  return v9;
}

- (id)localizedNameWithContext:(id)context
{
  v4 = MEMORY[0x1E696AEC0];
  contextCopy = context;
  v6 = WFLocalizedStringResourceWithKey(@"Set %@ Focus Filter", @"Set %@ Focus Filter");
  v7 = [contextCopy localize:v6];

  localizedAppName = [(WFFocusConfigurationLinkAction *)self localizedAppName];
  v9 = [v4 localizedStringWithFormat:v7, localizedAppName];

  return v9;
}

- (id)localizedAppName
{
  appDescriptor = [(WFAppIntentExecutionAction *)self appDescriptor];
  localizedName = [appDescriptor localizedName];

  return localizedName;
}

- (id)disabledOnPlatforms
{
  v4.receiver = self;
  v4.super_class = WFFocusConfigurationLinkAction;
  disabledOnPlatforms = [(WFAction *)&v4 disabledOnPlatforms];

  return disabledOnPlatforms;
}

+ (id)genericRuntimeError
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"An error occurred while configuring the Focus Filter.");
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:@"WFFocusConfigurationLinkActionErrorDomain" code:1 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end