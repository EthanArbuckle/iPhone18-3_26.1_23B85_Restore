@interface WFContentItemPropertiesAction
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)localizedDescriptionResultWithContext:(id)a3;
- (id)localizedDescriptionSummaryWithContext:(id)a3;
- (id)localizedKeywordsWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
- (id)outputContentClasses;
- (id)outputMeasurementUnitType;
- (id)parameterDefinitions;
- (id)parameterSummary;
- (id)properties;
- (id)selectedProperty;
- (void)finishWithItems:(id)a3 property:(id)a4 coercionPerformed:(BOOL)a5;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFContentItemPropertiesAction

- (void)finishWithItems:(id)a3 property:(id)a4 coercionPerformed:(BOOL)a5
{
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__WFContentItemPropertiesAction_finishWithItems_property_coercionPerformed___block_invoke;
  v11[3] = &unk_1E8375C38;
  v13 = a5;
  v12 = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__WFContentItemPropertiesAction_finishWithItems_property_coercionPerformed___block_invoke_3;
  v10[3] = &unk_1E837E750;
  v10[4] = self;
  v9 = v8;
  [a3 transformItemsAndFlattenUsingBlock:v11 completionHandler:v10];
}

void __76__WFContentItemPropertiesAction_finishWithItems_property_coercionPerformed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40) == 1)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = [objc_opt_class() supportedPropertyForProperty:*(a1 + 32)];
  }

  v8 = v7;
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__WFContentItemPropertiesAction_finishWithItems_property_coercionPerformed___block_invoke_2;
    v9[3] = &unk_1E837EC18;
    v10 = v6;
    [v8 getValuesForObject:v5 completionHandler:v9];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

void __76__WFContentItemPropertiesAction_finishWithItems_property_coercionPerformed___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self parameterValueForKey:@"WFContentItemPropertyName" ofClass:objc_opt_class()];
  v6 = [(objc_class *)[(WFAction *)self contentItemClass] propertyForName:v5];
  if (v6)
  {
    v7 = MEMORY[0x1E6996D58];
    v8 = [v4 items];
    v9 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    if ([v7 contentItems:v8 haveContentProperties:v9])
    {
    }

    else
    {
      v10 = [v4 items];
      v11 = [v10 valueForKey:@"class"];
      v12 = [(WFContentItemAction *)self inputContentClasses];
      v13 = [v11 firstObjectCommonWithArray:v12];

      if (!v13)
      {
        v14 = [(WFAction *)self contentItemClass];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __60__WFContentItemPropertiesAction_runAsynchronouslyWithInput___block_invoke;
        v15[3] = &unk_1E8375C10;
        v15[4] = self;
        v16 = v6;
        [v4 generateCollectionByCoercingToItemClass:v14 completionHandler:v15];

        goto LABEL_7;
      }
    }

    [(WFContentItemPropertiesAction *)self finishWithItems:v4 property:v6 coercionPerformed:0];
  }

  else
  {
    [(WFAction *)self finishRunningWithError:0];
  }

LABEL_7:
}

void __60__WFContentItemPropertiesAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = [v9 numberOfItems];
  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 finishWithItems:v9 property:*(a1 + 40) coercionPerformed:1];
  }

  else
  {
    [v8 finishRunningWithError:v6];
  }
}

- (id)parameterDefinitions
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = [(WFContentItemAction *)self defaultProperty];
  v4 = [v3 name];

  v5 = objc_opt_new();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setValue:v7 forKey:@"Class"];

  [v5 setValue:@"WFContentItemPropertyName" forKey:@"Key"];
  v8 = WFLocalizedStringResourceWithKey(@"Detail (ContentItemProperties)", @"Detail");
  [v5 setValue:v8 forKey:@"Label"];

  v9 = [(WFContentItemPropertiesAction *)self properties];
  v10 = [v9 if_compactMap:&__block_literal_global_14555];
  [v5 setValue:v10 forKey:@"Items"];

  v11 = [(WFContentItemPropertiesAction *)self properties];
  v12 = [v11 if_compactMap:&__block_literal_global_232];
  [v5 setValue:v12 forKey:@"ItemDisplayNames"];

  if (v4)
  {
    v13 = [WFStringSubstitutableState serializedRepresentationFromValue:v4];
    [v5 setValue:v13 forKey:@"DefaultValue"];
  }

  else
  {
    [v5 setValue:0 forKey:@"DefaultValue"];
  }

  v14 = objc_opt_new();
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v14 setValue:v16 forKey:@"Class"];

  v17 = [(WFContentItemPropertiesAction *)self inputParameterKey];
  [v14 setValue:v17 forKey:@"Key"];

  v18 = [(objc_class *)[(WFAction *)self contentItemClass] localizedFilterDescription];
  [v14 setValue:v18 forKey:@"Label"];

  v19 = [(objc_class *)[(WFAction *)self contentItemClass] localizedFilterDescription];
  [v14 setValue:v19 forKey:@"Placeholder"];

  v20 = [[WFParameterDefinition alloc] initWithDictionary:v5];
  v25[0] = v20;
  v21 = [[WFParameterDefinition alloc] initWithDictionary:v14];
  v25[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)outputMeasurementUnitType
{
  v2 = [(WFContentItemPropertiesAction *)self selectedProperty];
  v3 = [v2 measurementUnitType];

  return v3;
}

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItemPropertiesAction *)self selectedProperty];

  if (v5)
  {
    v6 = [(WFContentItemPropertiesAction *)self selectedProperty];
    v7 = [v6 localizedName];
LABEL_5:
    v9 = v7;
    goto LABEL_6;
  }

  v8 = [(WFAction *)self outputDictionary];
  v6 = [v8 objectForKey:@"OutputName"];

  if (v6)
  {
    v7 = [v4 localize:v6];
    goto LABEL_5;
  }

  v11 = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralFilterDescriptionWithContext:v4];
  v12 = [v11 localizedCapitalizedString];

  v13 = MEMORY[0x1E696AEC0];
  v14 = WFLocalizedStringResourceWithKey(@"WFContentItemPropertiesAction - Action Output Name", @"Details of %@");
  v15 = [v4 localize:v14];
  v9 = [v13 localizedStringWithFormat:v15, v12];

  v6 = 0;
LABEL_6:

  return v9;
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = WFContentItemPropertiesAction;
  v7 = [(WFAction *)&v9 setParameterState:a3 forKey:v6];
  if (v7 && [v6 isEqualToString:@"WFContentItemPropertyName"])
  {
    [(WFAction *)self outputDetailsUpdated];
  }

  return v7;
}

- (id)selectedProperty
{
  v3 = [(WFAction *)self parameterStateForKey:@"WFContentItemPropertyName"];
  v4 = [v3 value];

  v5 = [(objc_class *)[(WFAction *)self contentItemClass] propertyForName:v4];

  return v5;
}

- (id)outputContentClasses
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFContentItemPropertiesAction *)self selectedProperty];
  v4 = v3;
  if (v3)
  {
    v19[0] = [v3 valueItemClass];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  }

  else
  {
    v6 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(WFContentItemPropertiesAction *)self properties];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "valueItemClass")}];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    v5 = [v6 array];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)localizedKeywordsWithContext:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFContentItemPropertiesAction;
  v3 = a3;
  v4 = [(WFAction *)&v10 localizedKeywordsWithContext:v3];
  v5 = WFLocalizedStringResourceWithKey(@"property|properties|fetch", @"property|properties|fetch");
  v6 = [v3 localize:{v5, v10.receiver, v10.super_class}];

  v7 = [v6 componentsSeparatedByString:@"|"];

  v8 = [v4 arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (id)localizedDescriptionResultWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItemPropertiesAction *)self selectedProperty];
  v6 = [v5 localizedName];
  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v8 = WFLocalizedStringResourceWithKey(@"The piece of information", @"The piece of information");
    v7 = [v4 localize:v8];
  }

  return v7;
}

- (id)localizedDescriptionSummaryWithContext:(id)a3
{
  v4 = a3;
  v5 = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralFilterDescriptionWithContext:v4];
  if ([(objc_class *)[(WFAction *)self contentItemClass] canLowercaseTypeDescription])
  {
    v6 = [v5 localizedLowercaseString];

    v5 = v6;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = WFLocalizedStringResourceWithKey(@"Gets a specific piece of information from the %@ passed into the action.", @"Gets a specific piece of information from the %@ passed into the action.");
  v9 = [v4 localize:v8];
  v10 = [v7 localizedStringWithFormat:v9, v5];

  return v10;
}

- (id)parameterSummary
{
  v2 = [WFActionParameterSummary alloc];
  v3 = WFLocalizedStringResourceWithKey(@"Get ${WFContentItemPropertyName} from ${WFInput}", @"Get ${WFContentItemPropertyName} from ${WFInput}");
  v4 = [(WFActionParameterSummary *)v2 initWithString:v3];

  return v4;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self definition];
  v6 = [v5 name];

  if (v6)
  {
    v14.receiver = self;
    v14.super_class = WFContentItemPropertiesAction;
    v7 = [(WFAction *)&v14 localizedNameWithContext:v4];
  }

  else
  {
    v8 = WFLocalizedStringResourceWithKey(@"WFContentItemPropertiesAction - Action Name", @"Get Details of %@");
    v9 = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralFilterDescriptionWithContext:v4];
    v10 = [v9 localizedCapitalizedString];

    v11 = MEMORY[0x1E696AEC0];
    v12 = [v4 localize:v8];
    v7 = [v11 localizedStringWithFormat:v12, v10];
  }

  return v7;
}

- (id)properties
{
  v2 = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"gettable = YES"];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

@end