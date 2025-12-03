@interface WFSpeakTextLanguagePickerParameterMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (id)availableLanguageCodes;
- (void)migrateSpeakTextLanguageParameterInParametersDictionary:(id)dictionary;
- (void)migrateWorkflow;
@end

@implementation WFSpeakTextLanguagePickerParameterMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1030"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.speaktext", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (id)availableLanguageCodes
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getAVSpeechSynthesisVoiceClass_softClass;
  v11 = getAVSpeechSynthesisVoiceClass_softClass;
  if (!getAVSpeechSynthesisVoiceClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getAVSpeechSynthesisVoiceClass_block_invoke;
    v7[3] = &unk_1E837FAC0;
    v7[4] = &v8;
    __getAVSpeechSynthesisVoiceClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  _speechVoicesIncludingSiri = [v2 _speechVoicesIncludingSiri];
  v5 = [_speechVoicesIncludingSiri if_compactMap:&__block_literal_global_74447];

  return v5;
}

- (void)migrateSpeakTextLanguageParameterInParametersDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"WFSpeakTextLanguage"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      availableLanguageCodes = [(WFSpeakTextLanguagePickerParameterMigration *)self availableLanguageCodes];
      if (([availableLanguageCodes containsObject:v5] & 1) == 0)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        obj = availableLanguageCodes;
        v7 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v20 + 1) + 8 * i);
              v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v11];
              v13 = [v12 localizedStringForLocaleIdentifier:v11];
              v14 = [v13 capitalizedStringWithLocale:v12];

              if (![v14 length])
              {
                v15 = getWFWorkflowMigrationLogObject();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315650;
                  v25 = "[WFSpeakTextLanguagePickerParameterMigration migrateSpeakTextLanguageParameterInParametersDictionary:]";
                  v26 = 2114;
                  v27 = v11;
                  v28 = 2114;
                  v29 = v12;
                  _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s [Speak Text] Failed to get localized language name from languageCode: %{public}@, languageLocale: %{public}@", buf, 0x20u);
                }
              }

              if ([v14 isEqualToString:v5])
              {
                v16 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:v11];
                serializedRepresentation = [(WFVariableSubstitutableParameterState *)v16 serializedRepresentation];
                [dictionaryCopy setObject:serializedRepresentation forKey:@"WFSpeakTextLanguage"];

                goto LABEL_18;
              }
            }

            v8 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        availableLanguageCodes = obj;

        [dictionaryCopy removeObjectForKey:@"WFSpeakTextLanguage"];
      }

LABEL_18:
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)migrateWorkflow
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  actions = [(WFWorkflowMigration *)self actions];
  v4 = [actions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKeyedSubscript:actionIdentifierKey];

        if ([v10 isEqualToString:@"is.workflow.actions.speaktext"])
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:actionParametersKey];

          [(WFSpeakTextLanguagePickerParameterMigration *)self migrateSpeakTextLanguageParameterInParametersDictionary:v12];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [actions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
  v13 = *MEMORY[0x1E69E9840];
}

@end