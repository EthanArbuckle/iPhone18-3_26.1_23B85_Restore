@interface WFLanguagePickerMicrosoftToSystemMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (id)localeIdentifierFromLegacySerializedParameterValue:(id)a3;
- (id)localeIdentifierFromSerializedLocaleDisplayName:(id)a3;
- (id)localeIdentifierFromUnmigratedValue:(id)a3;
- (id)localizedLanguageDisplayNamesToLocaleIdentifiers;
- (void)migrateWorkflow;
@end

@implementation WFLanguagePickerMicrosoftToSystemMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"1146.10"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.text.translate", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (id)localizedLanguageDisplayNamesToLocaleIdentifiers
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(WFLanguagePickerMicrosoftToSystemMigration *)self languagesSupportedByTranslation];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v9];
        v11 = [v10 wf_displayName];
        [v3 setObject:v9 forKey:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)localeIdentifierFromSerializedLocaleDisplayName:(id)a3
{
  v4 = a3;
  v5 = [(WFLanguagePickerMicrosoftToSystemMigration *)self localizedLanguageDisplayNamesToLocaleIdentifiers];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"en_US";
  }

  v8 = v7;

  return v7;
}

- (id)localeIdentifierFromLegacySerializedParameterValue:(id)a3
{
  v3 = [&unk_1F4A99E60 objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"en_US";
  }

  v6 = v5;

  return v5;
}

- (id)localeIdentifierFromUnmigratedValue:(id)a3
{
  v4 = a3;
  v5 = [(WFLanguagePickerMicrosoftToSystemMigration *)self languagesSupportedByTranslation];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v8 = [(WFLanguagePickerMicrosoftToSystemMigration *)self localizedLanguageDisplayNamesToLocaleIdentifiers];
    v9 = [v8 allKeys];
    v10 = [v9 containsObject:v4];

    if (v10)
    {
      [(WFLanguagePickerMicrosoftToSystemMigration *)self localeIdentifierFromSerializedLocaleDisplayName:v4];
    }

    else
    {
      [(WFLanguagePickerMicrosoftToSystemMigration *)self localeIdentifierFromLegacySerializedParameterValue:v4];
    }
    v7 = ;
  }

  v11 = v7;

  return v11;
}

- (void)migrateWorkflow
{
  v3 = [(WFWorkflowMigration *)self actions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__WFLanguagePickerMicrosoftToSystemMigration_migrateWorkflow__block_invoke;
  v4[3] = &unk_1E837F7F8;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];

  [(WFWorkflowMigration *)self finish];
}

void __61__WFLanguagePickerMicrosoftToSystemMigration_migrateWorkflow__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) actionIdentifierKey];
  v4 = [v12 objectForKeyedSubscript:v3];
  v5 = [v4 isEqualToString:@"is.workflow.actions.text.translate"];

  if (v5)
  {
    v6 = [*(a1 + 32) actionParametersKey];
    v7 = [v12 objectForKeyedSubscript:v6];

    v8 = [v7 objectForKeyedSubscript:@"WFSelectedFromLanguage"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (([v8 isEqualToString:@"Detect Language"] & 1) == 0)
        {
          v9 = [*(a1 + 32) localeIdentifierFromUnmigratedValue:v8];

          v8 = v9;
        }

        [v7 setObject:v8 forKey:@"WFSelectedFromLanguage"];
      }
    }

    v10 = [v7 objectForKeyedSubscript:@"WFSelectedLanguage"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [*(a1 + 32) localeIdentifierFromUnmigratedValue:v10];

        [v7 setObject:v11 forKey:@"WFSelectedLanguage"];
        v10 = v11;
      }
    }
  }
}

@end