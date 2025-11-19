@interface WFLinkContentItemFilterAction
- (BOOL)isApprovedForPublicShortcutsDrawer;
- (BOOL)outputsMultipleItems;
- (BOOL)visibleForUse:(int64_t)a3;
- (LNPropertyQuery)propertyQuery;
- (NSString)spotlightQuery;
- (WFLinkContentItemFilterAction)initWithIdentifier:(id)a3 queryMetadata:(id)a4 entityMetadata:(id)a5 definition:(id)a6 serializedParameters:(id)a7 appIntentDescriptor:(id)a8 fullyQualifiedActionIdentifier:(id)a9;
- (id)backingActionIdentifiers;
- (id)copyWithSerializedParameters:(id)a3;
- (id)displayableAppDescriptor;
- (id)entityMetadataForIdentifier:(id)a3;
- (id)linkValueTypes;
- (id)localizedCategoryWithContext:(id)a3;
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)localizedDescriptionResultWithContext:(id)a3;
- (id)localizedDescriptionSummaryWithContext:(id)a3;
- (id)localizedKeywordsWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
- (id)metadataProvider;
- (id)outputDictionary;
- (id)parameterDefinitions;
- (id)parameterSummary;
- (id)propertiesByPropertyIdentifier;
- (id)sortingOptionsWithRandomSortOrder:(BOOL *)a3;
- (void)configureParameter:(id)a3;
- (void)finishRunningWithError:(id)a3;
- (void)finishRunningWithOutput:(id)a3 randomSortOrder:(BOOL)a4 error:(id)a5;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)serializeAppIntentDescriptorIfNecessary;
- (void)showChronoControlIfPossibleWithCompletionHandler:(id)a3;
@end

@implementation WFLinkContentItemFilterAction

- (LNPropertyQuery)propertyQuery
{
  v2 = self;
  v3 = WFLinkContentItemFilterAction.propertyQuery.getter();

  return v3;
}

- (NSString)spotlightQuery
{
  v2 = self;
  WFLinkContentItemFilterAction.spotlightQuery.getter();

  v3 = sub_1CA94C368();

  return v3;
}

- (BOOL)outputsMultipleItems
{
  if ([(WFAction *)self inputPassthrough])
  {

    return [(WFContentItemAction *)self inputsMultipleItems];
  }

  else
  {
    v4 = [(WFLinkContentItemFilterAction *)self outputDictionary];
    v5 = [v4 objectForKey:@"Multiple"];
    v6 = [v5 BOOLValue];

    return v6;
  }
}

- (id)backingActionIdentifiers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(WFAction *)self identifier];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)entityMetadataForIdentifier:(id)a3
{
  v4 = MEMORY[0x1E69E0970];
  v5 = a3;
  v6 = [v4 sharedProvider];
  v7 = [(WFLinkContentItemFilterAction *)self fullyQualifiedLinkActionIdentifier];
  v8 = [v7 bundleIdentifier];
  v9 = [v6 entityWithIdentifier:v5 fromBundleIdentifier:v8];

  return v9;
}

- (void)showChronoControlIfPossibleWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(WFLinkContentItemFilterAction *)self entityMetadata];
  v5 = [v4 associatedControl];

  if (v5)
  {
    v6 = [(WFAction *)self userInterface];
    [v5 presentIfPossibleInUserInterface:v6 completionBlock:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (id)localizedCategoryWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkContentItemFilterAction *)self queryMetadata];
  v6 = [v5 descriptionMetadata];
  v7 = [v6 categoryName];
  v8 = [v7 title];

  if (v8)
  {
    v9 = [v4 locale];

    v10 = [v9 localeIdentifier];
    v11 = [v8 localizedStringForLocaleIdentifier:v10];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFLinkContentItemFilterAction;
    v11 = [(WFAction *)&v13 localizedCategoryWithContext:v4];
  }

  return v11;
}

- (id)localizedKeywordsWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkContentItemFilterAction *)self queryMetadata];
  v6 = [v5 descriptionMetadata];
  v7 = [v6 searchKeywords];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__WFLinkContentItemFilterAction_localizedKeywordsWithContext___block_invoke;
  v11[3] = &unk_1E837D6B8;
  v12 = v4;
  v8 = v4;
  v9 = [v7 if_map:v11];

  return v9;
}

id __62__WFLinkContentItemFilterAction_localizedKeywordsWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 locale];
  v5 = [v4 localeIdentifier];
  v6 = [v3 localizedStringForLocaleIdentifier:v5];

  return v6;
}

- (id)localizedDescriptionSummaryWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkContentItemFilterAction *)self queryMetadata];
  v6 = [v5 descriptionMetadata];
  v7 = [v6 descriptionText];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v4 locale];

  v11 = [v10 localeIdentifier];
  v12 = [v9 localizedStringForLocaleIdentifier:v11];

  return v12;
}

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkContentItemFilterAction *)self queryMetadata];
  v6 = [v5 descriptionMetadata];

  v7 = [v6 resultValueName];

  if (v7)
  {
    v8 = [v6 resultValueName];
    v9 = [v4 locale];
    v10 = [v9 localeIdentifier];
    v11 = [v8 localizedStringForLocaleIdentifier:v10];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFLinkContentItemFilterAction;
    v11 = [(WFContentItemFilterAction *)&v13 localizedDefaultOutputNameWithContext:v4];
  }

  return v11;
}

- (id)localizedDescriptionResultWithContext:(id)a3
{
  v4 = a3;
  if ([(WFLinkContentItemFilterAction *)self isFetchingUniqueEntity])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = WFLinkContentItemFilterAction;
    v5 = [(WFContentItemFilterAction *)&v7 localizedDescriptionResultWithContext:v4];
  }

  return v5;
}

- (id)outputDictionary
{
  v31[2] = *MEMORY[0x1E69E9840];
  outputDictionary = self->_outputDictionary;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (outputDictionary == v4)
  {
    v5 = 0;
  }

  else if (outputDictionary)
  {
    outputDictionary = outputDictionary;
    v5 = outputDictionary;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = WFLinkContentItemFilterAction;
    v5 = [(WFAction *)&v28 outputDictionary];
    v6 = objc_alloc(MEMORY[0x1E69AC818]);
    v7 = [(WFLinkContentItemFilterAction *)self entityMetadata];
    v8 = [v7 identifier];
    v9 = [v6 initWithIdentifier:v8];

    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = [v5 objectForKeyedSubscript:@"Types"];

    if (v10)
    {
      goto LABEL_7;
    }

    v13 = [(WFLinkContentItemFilterAction *)self fullyQualifiedLinkActionIdentifier];
    v14 = [v13 bundleIdentifier];
    v15 = [v9 wf_contentItemClassWithAppBundleIdentifier:v14];

    if (v15)
    {
      v16 = [v5 mutableCopy];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = objc_opt_new();
      }

      v19 = v18;

      v30[0] = @"Multiple";
      v20 = MEMORY[0x1E696AD98];
      if ([(WFLinkContentItemFilterAction *)self isFetchingUniqueEntity])
      {
        v21 = 0;
      }

      else
      {
        objc_opt_class();
        v21 = objc_opt_isKindOfClass() & 1;
      }

      v22 = [v20 numberWithInt:v21];
      v30[1] = @"Types";
      v31[0] = v22;
      v23 = NSStringFromClass(v15);
      v29 = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      v31[1] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
      [v19 addEntriesFromDictionary:v25];

      v26 = [v19 copy];
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = [MEMORY[0x1E695DFB0] null];
      }

      outputDictionary = self->_outputDictionary;
      self->_outputDictionary = v27;
      v5 = v26;
    }

    else
    {
LABEL_7:

      outputDictionary = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)displayableAppDescriptor
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(WFAction *)self definition];
  v4 = [v3 objectForKey:@"LinkActionDisableDisplayedAppDescriptor"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 BOOLValue];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(WFAction *)self definition];
    v10 = [v9 objectForKey:@"LinkActionDisplayedAppDescriptor"];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E696E720]) initWithSerializedRepresentation:v10];
      v8 = v11;
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v13 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v18 = "[WFLinkContentItemFilterAction displayableAppDescriptor]";
          _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Found a serialized representation for displayedAppDescriptor, but failed to deserialize it.", buf, 0xCu);
        }
      }
    }

    else
    {
      v16.receiver = self;
      v16.super_class = WFLinkContentItemFilterAction;
      v8 = [(WFAction *)&v16 displayableAppDescriptor];
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)parameterSummary
{
  if ([(WFLinkContentItemFilterAction *)self isFetchingUniqueEntity])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFLinkContentItemFilterAction;
    v3 = [(WFContentItemFilterAction *)&v5 parameterSummary];
  }

  return v3;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  if ([(WFLinkContentItemFilterAction *)self isFetchingUniqueEntity])
  {
    v5 = @"Get %@";
  }

  else
  {
    v5 = @"Find %@";
  }

  v6 = WFLocalizedStringResourceWithKey(v5, v5);
  v7 = [(WFLinkContentItemFilterAction *)self entityMetadata];
  v8 = [v7 displayRepresentation];
  v9 = [v8 name];
  v10 = [v4 locale];
  v11 = [v10 localeIdentifier];
  v12 = [v9 localizedStringWithPluralizationNumber:&unk_1F4A9ADB0 forLocaleIdentifier:v11];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [v4 localize:v6];

  v15 = [v13 localizedStringWithFormat:v14, v12];

  return v15;
}

- (BOOL)isApprovedForPublicShortcutsDrawer
{
  v3 = [(WFLinkContentItemFilterAction *)self entityMetadata];
  v4 = [(WFLinkContentItemFilterAction *)self fullyQualifiedLinkActionIdentifier];
  v5 = [v4 bundleIdentifier];
  v6 = WFISEligibleForSettingsUpdaterAction(v3, v5);

  if (v6)
  {
    return 0;
  }

  v8 = [(WFLinkContentItemFilterAction *)self fullyQualifiedLinkActionIdentifier];
  v9 = [WFLinkActionProvider approvedForPublicDrawerToDisplayActionIdentifier:v8];

  return v9;
}

- (BOOL)visibleForUse:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = WFLinkContentItemFilterAction;
  v5 = [(WFAction *)&v11 visibleForUse:?];
  if (v5)
  {
    if (a3 || (VCIsInternalBuild() & 1) != 0 || (v5 = [(WFLinkContentItemFilterAction *)self isApprovedForPublicShortcutsDrawer]) != 0)
    {
      v6 = [(WFLinkContentItemFilterAction *)self queryMetadata];
      v7 = [v6 visibleForUse:a3];

      v8 = [(WFLinkContentItemFilterAction *)self entityMetadata];
      v9 = [v8 visibleForUse:a3];

      LOBYTE(v5) = v7 & v9;
    }
  }

  return v5;
}

- (id)linkValueTypes
{
  v3 = [(WFLinkContentItemFilterAction *)self entityMetadata];
  v4 = objc_opt_new();
  v5 = [(WFAction *)self identifier];
  if (v5 == @"is.workflow.actions.filter.notes")
  {

LABEL_6:
    v8 = [v3 properties];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__WFLinkContentItemFilterAction_linkValueTypes__block_invoke;
    v21[3] = &unk_1E837D678;
    v9 = &v22;
    v22 = v3;
    v10 = &v23;
    v23 = v4;
    v11 = v3;
    v12 = v21;
    goto LABEL_8;
  }

  v6 = v5;
  if (v5)
  {
    v7 = [(__CFString *)v5 isEqualToString:@"is.workflow.actions.filter.notes"];

    if (v7)
    {
      goto LABEL_6;
    }
  }

  v8 = [v3 properties];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __47__WFLinkContentItemFilterAction_linkValueTypes__block_invoke_216;
  v18 = &unk_1E837D678;
  v9 = &v19;
  v19 = v3;
  v10 = &v20;
  v20 = v4;
  v13 = v3;
  v12 = &v15;
LABEL_8:
  [v8 enumerateObjectsUsingBlock:{v12, v15, v16, v17, v18}];

  return v4;
}

void __47__WFLinkContentItemFilterAction_linkValueTypes__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 title];
  v7 = [v6 key];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v5 valueType];
    [v8 setObject:v9 forKey:v7];
  }

  else
  {
    v9 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [*(a1 + 32) identifier];
      v11 = [*(a1 + 32) effectiveBundleIdentifiers];
      v13 = 136316162;
      v14 = "[WFLinkContentItemFilterAction linkValueTypes]_block_invoke";
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v21 = 2048;
      v22 = a3;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s LNPropertyMetadata title has no key: entity %@ from bundles %@, property %@ at %ld", &v13, 0x34u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __47__WFLinkContentItemFilterAction_linkValueTypes__block_invoke_216(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 identifier];
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v5 valueType];
    [v7 setObject:v8 forKey:v6];
  }

  else
  {
    v9 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [*(a1 + 32) identifier];
      v11 = [*(a1 + 32) effectiveBundleIdentifiers];
      v13 = 136316162;
      v14 = "[WFLinkContentItemFilterAction linkValueTypes]_block_invoke";
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v21 = 2048;
      v22 = a3;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s LNPropertyMetadata has no identifier: entity %@ from bundles %@, property %@ at %ld", &v13, 0x34u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)configureParameter:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = WFLinkContentItemFilterAction;
  [(WFAction *)&v7 configureParameter:v4];
  if ([(WFLinkContentItemFilterAction *)self isFetchingUniqueEntity])
  {
    [v4 setHidden:1];
  }

  v5 = v4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(WFLinkContentItemFilterAction *)self linkValueTypes];
      [v5 setLinkValueTypes:v6];
    }
  }
}

- (id)parameterDefinitions
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = WFLinkContentItemFilterAction;
  v3 = [(WFContentItemFilterAction *)&v17 parameterDefinitions];
  if ([(WFLinkContentItemFilterAction *)self isFetchingUniqueEntity])
  {
    v4 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) definitionByRemovingKey:{@"Description", v13}];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = v3;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)sortingOptionsWithRandomSortOrder:(BOOL *)a3
{
  v45[5] = *MEMORY[0x1E69E9840];
  v5 = [(WFContentItemFilterAction *)self parameterStateForKey:@"WFContentItemSortProperty"];
  v6 = [v5 value];

  if (v6)
  {
    v7 = WFLocalizedContentPropertyPossibleValueMarker(@"Random");
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (!v9)
      {

LABEL_10:
        v13 = WFLocalizedContentPropertyPossibleValueMarker(@"Z to A");
        v45[0] = v13;
        v14 = WFLocalizedContentPropertyPossibleValueMarker(@"Biggest First");
        v45[1] = v14;
        v15 = WFLocalizedContentPropertyPossibleValueMarker(@"Latest First");
        v45[2] = v15;
        v16 = WFLocalizedContentPropertyPossibleValueMarker(@"Longest First");
        v45[3] = v16;
        v17 = WFLocalizedContentPropertyPossibleValueMarker(@"Descending");
        v45[4] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];

        v19 = [(WFAction *)self parameterValueForKey:@"WFContentItemSortOrder" ofClass:objc_opt_class()];
        v20 = [v18 containsObject:v19];

        v21 = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
        v22 = [v21 objectMatchingKey:@"name" value:v8];

        v23 = [v22 userInfo];
        if (v23)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        v26 = [v25 objectForKey:@"WFLinkEntityContentPropertyUserInfoPropertyIdentifier"];
        if (v26)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;

        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v43 = 0;
        v29 = [(WFLinkContentItemFilterAction *)self queryMetadata];
        v30 = [v29 sortingOptions];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __67__WFLinkContentItemFilterAction_sortingOptionsWithRandomSortOrder___block_invoke;
        v37[3] = &unk_1E837D650;
        v31 = v28;
        v38 = v31;
        v39 = &v40;
        [v30 enumerateObjectsUsingBlock:v37];

        v32 = objc_alloc(MEMORY[0x1E69ACFA0]);
        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v41[3]];
        v34 = [v32 initWithOrder:v20 sortParameterIndex:v33];
        v44 = v34;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];

        _Block_object_dispose(&v40, 8);
        goto LABEL_21;
      }

      v11 = [v8 isEqualToString:v9];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    *a3 = 1;
  }

  v12 = MEMORY[0x1E695E0F0];
LABEL_21:

  v35 = *MEMORY[0x1E69E9840];

  return v12;
}

void __67__WFLinkContentItemFilterAction_sortingOptionsWithRandomSortOrder___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 propertyIdentifier];
  v8 = *(a1 + 32);
  v11 = v7;
  v9 = v8;
  if (v11 == v9)
  {

    goto LABEL_7;
  }

  if (v11 && v9)
  {
    v10 = [v11 isEqualToString:v9];

    if (!v10)
    {
      return;
    }

LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
    return;
  }
}

- (void)finishRunningWithOutput:(id)a3 randomSortOrder:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v23 = self;
LABEL_6:
    [(WFLinkContentItemFilterAction *)v23 finishRunningWithError:v10];
    goto LABEL_7;
  }

  v25 = v6;
  v26 = v9;
  v11 = [v8 value];
  v12 = [v11 valueType];
  v13 = [v8 value];
  v14 = [(WFLinkContentItemFilterAction *)self fullyQualifiedLinkActionIdentifier];
  v15 = [v14 bundleIdentifier];
  v16 = [(WFLinkContentItemFilterAction *)self displayableAppDescriptor];
  v17 = [v16 bundleIdentifier];
  v18 = [v12 wf_contentCollectionFromLinkValue:v13 appBundleIdentifier:v15 displayedBundleIdentifier:v17 disclosureLevel:{-[WFAction outputDisclosureLevel](self, "outputDisclosureLevel")}];
  [(WFAction *)self setOutput:v18];

  if (!v25)
  {
    v23 = self;
    v10 = v26;
    goto LABEL_6;
  }

  objc_initWeak(&location, self);
  v19 = [(WFAction *)self output];
  v20 = [v19 items];
  v21 = [MEMORY[0x1E6996DA0] randomSortDescriptor];
  v31[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __79__WFLinkContentItemFilterAction_finishRunningWithOutput_randomSortOrder_error___block_invoke;
  v27[3] = &unk_1E837D620;
  objc_copyWeak(&v29, &location);
  v28 = v26;
  [v20 sortedArrayUsingContentSortDescriptors:v22 completionHandler:v27];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
  v10 = v26;
LABEL_7:

  v24 = *MEMORY[0x1E69E9840];
}

void __79__WFLinkContentItemFilterAction_finishRunningWithOutput_randomSortOrder_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [MEMORY[0x1E6996D40] collectionWithItems:v3];

  [WeakRetained setOutput:v4];
  [WeakRetained finishRunningWithError:*(a1 + 32)];
}

- (id)metadataProvider
{
  metadataProvider = self->_metadataProvider;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (metadataProvider == v4)
  {
    v5 = 0;
  }

  else if (metadataProvider)
  {
    metadataProvider = metadataProvider;
    v5 = metadataProvider;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69ACF58]) initWithOptions:2];
    v5 = v6;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
    }

    metadataProvider = self->_metadataProvider;
    self->_metadataProvider = v7;
  }

  return v5;
}

- (void)finishRunningWithError:(id)a3
{
  v5 = [(WFAction *)self localizedErrorWithLinkError:?];
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = WFLinkContentItemFilterAction;
    [(WFAction *)&v6 finishRunningWithError:v5];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__WFLinkContentItemFilterAction_finishRunningWithError___block_invoke;
    v7[3] = &unk_1E837E5E0;
    v7[4] = self;
    [(WFLinkContentItemFilterAction *)self showChronoControlIfPossibleWithCompletionHandler:v7];
  }
}

id __56__WFLinkContentItemFilterAction_finishRunningWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = WFLinkContentItemFilterAction;
  return objc_msgSendSuper2(&v3, sel_finishRunningWithError_, a2);
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v96 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(WFContentItemFilterAction *)self mode]== 1)
  {
    v89.receiver = self;
    v89.super_class = WFLinkContentItemFilterAction;
    [(WFContentItemFilterAction *)&v89 runAsynchronouslyWithInput:v4];
    goto LABEL_51;
  }

  v5 = [(WFLinkContentItemFilterAction *)self queryMetadata];
  v6 = [(WFLinkContentItemFilterAction *)self entityMetadata];
  v7 = [(WFAction *)self appBundleIdentifier];
  TypeForQueryMetadata = WFEntityQueryTypeForQueryMetadata(v5, v6, v7);

  if (TypeForQueryMetadata > 1)
  {
    if (TypeForQueryMetadata == 2)
    {
      [(WFContentItemFilterAction *)self slice];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0;
      }

      else
      {
        v34 = MEMORY[0x1E696AD98];
        [(WFContentItemFilterAction *)self slice];
        if (v35 <= 1)
        {
          v36 = 1;
        }

        else
        {
          v36 = v35;
        }

        v11 = [v34 numberWithUnsignedInteger:v36];
      }

      v37 = MEMORY[0x1E69ACE60];
      v38 = [(WFLinkContentItemFilterAction *)self queryMetadata];
      v39 = [v37 policyWithEntityQueryMetadata:v38];

      v86 = 0;
      v40 = [v39 connectionWithError:&v86];
      v41 = v86;
      if (v40)
      {
        buf[0] = 0;
        v42 = [(WFLinkContentItemFilterAction *)self sortingOptionsWithRandomSortOrder:buf];
        v43 = objc_alloc(MEMORY[0x1E69ACFB0]);
        v44 = [(WFLinkContentItemFilterAction *)self propertyQuery];
        v45 = [v39 entityQueryMangledTypeName];
        v46 = [v43 initWithPropertyQuery:v44 maximumResultCount:v11 queryMangledTypeName:v45 sortingOptions:v42];

        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke_182;
        v84[3] = &unk_1E837D558;
        v84[4] = self;
        v85 = buf[0];
        [v40 performQuery:v46 completionHandler:v84];
      }

      else
      {
        v49 = getWFGeneralLogObject();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v93 = "[WFLinkContentItemFilterAction runAsynchronouslyWithInput:]";
          v94 = 2112;
          v95 = v41;
          _os_log_impl(&dword_1CA256000, v49, OS_LOG_TYPE_ERROR, "%s Unable to create connection: %@", buf, 0x16u);
        }

        [(WFLinkContentItemFilterAction *)self finishRunningWithError:v41];
      }

      goto LABEL_39;
    }

    v20 = MEMORY[0x1E69ACE60];
    v21 = [(WFLinkContentItemFilterAction *)self entityMetadata];
    v22 = [v20 policyWithEntityMetadata:v21];

    v83 = 0;
    v23 = [v22 connectionWithError:&v83];
    v24 = v83;
    v25 = v24;
    if (!v23)
    {
      v48 = getWFGeneralLogObject();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v93 = "[WFLinkContentItemFilterAction runAsynchronouslyWithInput:]";
        v94 = 2112;
        v95 = v25;
        _os_log_impl(&dword_1CA256000, v48, OS_LOG_TYPE_ERROR, "%s Unable to create connection: %@", buf, 0x16u);
      }

      [(WFLinkContentItemFilterAction *)self finishRunningWithError:v25];
      goto LABEL_50;
    }

    v74 = v24;
    v26 = [(WFContentItemFilterAction *)self parameterStateForKey:@"WFContentItemSortProperty"];
    v27 = [v26 value];

    v28 = WFLocalizedContentPropertyPossibleValueMarker(@"Random");
    v29 = v27;
    v30 = v28;
    v31 = v30;
    v32 = 0x1E695D000uLL;
    if (v29 == v30)
    {
    }

    else
    {
      if (!v29 || !v30)
      {

LABEL_43:
        v51 = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
        v52 = [v51 objectMatchingKey:@"name" value:v29];

        if (v52)
        {
          v53 = WFLocalizedContentPropertyPossibleValueMarker(@"Z to A");
          v91[0] = v53;
          WFLocalizedContentPropertyPossibleValueMarker(@"Biggest First");
          v54 = v73 = v22;
          v91[1] = v54;
          v55 = WFLocalizedContentPropertyPossibleValueMarker(@"Latest First");
          v91[2] = v55;
          v56 = WFLocalizedContentPropertyPossibleValueMarker(@"Longest First");
          v91[3] = v56;
          v57 = WFLocalizedContentPropertyPossibleValueMarker(@"Descending");
          v91[4] = v57;
          v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:5];

          v22 = v73;
          v58 = [(WFAction *)self parameterValueForKey:@"WFContentItemSortOrder" ofClass:objc_opt_class()];
          LODWORD(v55) = [v72 containsObject:v58];

          v59 = v55 ^ 1;
          v32 = 0x1E695D000;
          v50 = [MEMORY[0x1E6996DA0] sortDescriptorWithProperty:v52 ascending:v59 comparator:0];
        }

        else
        {
          v50 = 0;
        }

        goto LABEL_47;
      }

      v33 = [v29 isEqualToString:v30];

      if (!v33)
      {
        goto LABEL_43;
      }
    }

    v50 = [MEMORY[0x1E6996DA0] randomSortDescriptor];
LABEL_47:
    v60 = objc_alloc_init(MEMORY[0x1E6964E70]);
    if (!v50)
    {
      [(WFContentItemFilterAction *)self slice];
      [v60 setMaxCount:v61];
    }

    [v60 setDisableSemanticSearch:1];
    v62 = [v23 bundleIdentifier];
    v90 = v62;
    v63 = [*(v32 + 3784) arrayWithObjects:&v90 count:1];
    [v60 setBundleIDs:v63];

    [v60 setFetchAttributes:&unk_1F4A9B758];
    v64 = objc_alloc(MEMORY[0x1E6964E68]);
    v65 = [(WFLinkContentItemFilterAction *)self spotlightQuery];
    v66 = [v64 initWithQueryString:v65 queryContext:v60];

    v67 = objc_opt_new();
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke_195;
    v80[3] = &unk_1E837D580;
    v68 = v67;
    v81 = v68;
    v82 = self;
    [v66 setFoundItemsHandler:v80];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke_2;
    v75[3] = &unk_1E837D5F8;
    v76 = v68;
    v77 = self;
    v78 = v23;
    v79 = v50;
    v69 = v50;
    v70 = v68;
    [v66 setCompletionHandler:v75];
    [v66 start];

    v25 = v74;
LABEL_50:

    goto LABEL_51;
  }

  if (TypeForQueryMetadata)
  {
    v12 = MEMORY[0x1E69ACE60];
    v13 = [(WFLinkContentItemFilterAction *)self entityMetadata];
    v11 = [v12 policyWithEntityMetadata:v13];

    v88 = 0;
    v14 = [v11 connectionWithError:&v88];
    v15 = v88;
    if (v14)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke;
      aBlock[3] = &unk_1E837D530;
      aBlock[4] = self;
      v16 = _Block_copy(aBlock);
      v17 = [(WFLinkContentItemFilterAction *)self queryMetadata];
      v18 = [v17 capabilities];

      v19 = [v11 appEntityMangledTypeName];
      if (v18)
      {
        [v14 performAllEntitiesQueryWithEntityMangledTypeName:v19 completionHandler:v16];
      }

      else
      {
        [v14 performSuggestedEntitiesQueryWithEntityMangledTypeName:v19 completionHandler:v16];
      }
    }

    else
    {
      v47 = getWFGeneralLogObject();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v93 = "[WFLinkContentItemFilterAction runAsynchronouslyWithInput:]";
        v94 = 2112;
        v95 = v15;
        _os_log_impl(&dword_1CA256000, v47, OS_LOG_TYPE_ERROR, "%s Unable to create connection: %@", buf, 0x16u);
      }

      [(WFLinkContentItemFilterAction *)self finishRunningWithError:v15];
    }

LABEL_39:
    goto LABEL_51;
  }

  v9 = getWFGeneralLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v93 = "[WFLinkContentItemFilterAction runAsynchronouslyWithInput:]";
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Attempting to run action", buf, 0xCu);
  }

  [(WFLinkContentItemFilterAction *)self finishRunningWithError:0];
LABEL_51:

  v71 = *MEMORY[0x1E69E9840];
}

void __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }

  v6 = [v5 value];
  v7 = [v6 valueType];
  v8 = [v5 value];
  v9 = [*(a1 + 32) fullyQualifiedLinkActionIdentifier];
  v10 = [v9 bundleIdentifier];
  v11 = [*(a1 + 32) displayableAppDescriptor];
  v12 = [v11 bundleIdentifier];
  v13 = [v7 wf_contentCollectionFromLinkValue:v8 appBundleIdentifier:v10 displayedBundleIdentifier:v12 disclosureLevel:1];

  v14 = *(a1 + 32);
  v15 = [v14 query];
  v16.receiver = v14;
  v16.super_class = WFLinkContentItemFilterAction;
  objc_msgSendSuper2(&v16, sel_runFilterWithInput_query_, v13, v15);
}

void __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke_195(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v8 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"_kMDItemAppEntityInstanceIdentifier"];
        v9 = [v7 attributeSet];
        v10 = [v9 valueForCustomKey:v8];

        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        v13 = *(a1 + 32);
        v14 = objc_alloc(MEMORY[0x1E69AC7D8]);
        v15 = [*(a1 + 40) entityMetadata];
        v16 = [v15 identifier];
        v17 = [v14 initWithTypeIdentifier:v16 instanceIdentifier:v12];

        [v13 addObject:v17];
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69ACF08]) initWithEntityIdentifiers:*(a1 + 32)];
  v3 = objc_alloc(MEMORY[0x1E69ACFC0]);
  v4 = [*(a1 + 40) entityMetadata];
  v5 = [v3 initWithEntityMetadata:v4];

  v6 = [objc_alloc(MEMORY[0x1E69ACE00]) initWithQueryType:v2 target:v5 options:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke_3;
  v8[3] = &unk_1E837D5D0;
  v7 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = *(a1 + 56);
  [v7 performConfigurableQuery:v6 completionHandler:v8];
}

void __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 value];
    v8 = [v7 valueType];
    v9 = [v5 value];
    [*(a1 + 32) fullyQualifiedLinkActionIdentifier];
    v10 = v21 = v6;
    v11 = [v10 bundleIdentifier];
    v12 = [*(a1 + 32) displayableAppDescriptor];
    v13 = [v12 bundleIdentifier];
    v14 = [v8 wf_contentCollectionFromLinkValue:v9 appBundleIdentifier:v11 displayedBundleIdentifier:v13 disclosureLevel:1];
    [*(a1 + 32) setOutput:v14];

    v6 = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke_4;
    aBlock[3] = &unk_1E837F870;
    aBlock[4] = *(a1 + 32);
    v25 = v21;
    v15 = _Block_copy(aBlock);
    v16 = v15;
    if (*(a1 + 40))
    {
      v17 = [*(a1 + 32) output];
      v18 = [v17 items];
      v26[0] = *(a1 + 40);
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke_5;
      v22[3] = &unk_1E837D5A8;
      v22[4] = *(a1 + 32);
      v23 = v16;
      [v18 sortedArrayUsingContentSortDescriptors:v19 completionHandler:v22];
    }

    else
    {
      (*(v15 + 2))(v15);
    }
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v6];
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) slice];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = MEMORY[0x1E696AD98];
    [*(a1 + 32) slice];
    v5 = v4 <= 1 ? 1 : v4;
    v6 = [v3 numberWithUnsignedInteger:v5];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0x1E6996D40];
      v9 = [*(a1 + 32) output];
      v10 = [v9 items];
      v11 = [*(a1 + 32) output];
      v12 = [v11 items];
      v13 = [v12 count];

      v14 = [v7 intValue];
      if (v13 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      v16 = [v10 subarrayWithRange:{0, v15}];
      v17 = [v8 collectionWithItems:v16];
      [*(a1 + 32) setOutput:v17];
    }
  }

  v18 = *(a1 + 32);
  v19 = *(a1 + 40);

  return [v18 finishRunningWithError:v19];
}

uint64_t __60__WFLinkContentItemFilterAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E6996D40] collectionWithItems:a2];
  [*(a1 + 32) setOutput:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)propertiesByPropertyIdentifier
{
  v3 = self->_propertiesByPropertyIdentifier;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    if (!v3)
    {
      v6 = objc_opt_new();
      v7 = [(WFLinkContentItemFilterAction *)self entityMetadata];
      v8 = [v7 properties];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __63__WFLinkContentItemFilterAction_propertiesByPropertyIdentifier__block_invoke;
      v13[3] = &unk_1E837D508;
      v14 = v6;
      v9 = v6;
      [v8 enumerateObjectsUsingBlock:v13];

      v5 = [v9 copy];
      if (v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = [MEMORY[0x1E695DFB0] null];
      }

      propertiesByPropertyIdentifier = self->_propertiesByPropertyIdentifier;
      self->_propertiesByPropertyIdentifier = v10;

      goto LABEL_10;
    }

    v5 = v3;
  }

LABEL_10:

  return v5;
}

void __63__WFLinkContentItemFilterAction_propertiesByPropertyIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 identifier];
    [v5 setObject:v3 forKey:v6];
  }

  else
  {
    v7 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 title];
      v9 = [v8 key];
      v11 = 136315394;
      v12 = "[WFLinkContentItemFilterAction propertiesByPropertyIdentifier]_block_invoke";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s No property identifier found for propertyMetadata metadata: %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)serializeAppIntentDescriptorIfNecessary
{
  v3 = [(WFAction *)self appDefinition];
  if (v3)
  {
    v4 = v3;
    [(WFAction *)self setSupplementalParameterValue:v3 forKey:@"AppIntentDescriptor"];
    v3 = v4;
  }
}

- (void)initializeParameters
{
  v3.receiver = self;
  v3.super_class = WFLinkContentItemFilterAction;
  [(WFContentItemFilterAction *)&v3 initializeParameters];
  [(WFLinkContentItemFilterAction *)self serializeAppIntentDescriptorIfNecessary];
}

- (id)copyWithSerializedParameters:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(WFAction *)self identifier];
  v7 = [(WFLinkContentItemFilterAction *)self queryMetadata];
  v8 = [(WFLinkContentItemFilterAction *)self entityMetadata];
  v9 = [(WFAction *)self definition];
  v10 = [(WFLinkContentItemFilterAction *)self appIntentDescriptor];
  v11 = [(WFLinkContentItemFilterAction *)self fullyQualifiedLinkActionIdentifier];
  v12 = [v5 initWithIdentifier:v6 queryMetadata:v7 entityMetadata:v8 definition:v9 serializedParameters:v4 appIntentDescriptor:v10 fullyQualifiedActionIdentifier:v11];

  return v12;
}

- (WFLinkContentItemFilterAction)initWithIdentifier:(id)a3 queryMetadata:(id)a4 entityMetadata:(id)a5 definition:(id)a6 serializedParameters:(id)a7 appIntentDescriptor:(id)a8 fullyQualifiedActionIdentifier:(id)a9
{
  v26 = a4;
  v25 = a5;
  v16 = a8;
  v17 = a9;
  v27.receiver = self;
  v27.super_class = WFLinkContentItemFilterAction;
  v18 = [(WFContentItemAction *)&v27 initWithIdentifier:a3 definition:a6 serializedParameters:a7];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queryMetadata, a4);
    objc_storeStrong(&v19->_entityMetadata, a5);
    objc_storeStrong(&v19->_appIntentDescriptor, a8);
    objc_storeStrong(&v19->_fullyQualifiedLinkActionIdentifier, a9);
    v20 = [(WFLinkContentItemFilterAction *)v19 entityMetadata:v25];
    v21 = [v20 systemProtocolMetadata];
    v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69AC2D8]];
    v19->_fetchingUniqueEntity = v22 != 0;

    v23 = v19;
  }

  return v19;
}

@end