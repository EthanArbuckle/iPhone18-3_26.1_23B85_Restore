@interface WFContentItemPropertiesAction
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedDescriptionResultWithContext:(id)context;
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedKeywordsWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)outputContentClasses;
- (id)outputMeasurementUnitType;
- (id)parameterDefinitions;
- (id)parameterSummary;
- (id)properties;
- (id)selectedProperty;
- (void)finishWithItems:(id)items property:(id)property coercionPerformed:(BOOL)performed;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFContentItemPropertiesAction

- (void)finishWithItems:(id)items property:(id)property coercionPerformed:(BOOL)performed
{
  propertyCopy = property;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__WFContentItemPropertiesAction_finishWithItems_property_coercionPerformed___block_invoke;
  v11[3] = &unk_1E8375C38;
  performedCopy = performed;
  v12 = propertyCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__WFContentItemPropertiesAction_finishWithItems_property_coercionPerformed___block_invoke_3;
  v10[3] = &unk_1E837E750;
  v10[4] = self;
  v9 = propertyCopy;
  [items transformItemsAndFlattenUsingBlock:v11 completionHandler:v10];
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

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = [(WFAction *)self parameterValueForKey:@"WFContentItemPropertyName" ofClass:objc_opt_class()];
  v6 = [(objc_class *)[(WFAction *)self contentItemClass] propertyForName:v5];
  if (v6)
  {
    v7 = MEMORY[0x1E6996D58];
    items = [inputCopy items];
    v9 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    if ([v7 contentItems:items haveContentProperties:v9])
    {
    }

    else
    {
      items2 = [inputCopy items];
      v11 = [items2 valueForKey:@"class"];
      inputContentClasses = [(WFContentItemAction *)self inputContentClasses];
      v13 = [v11 firstObjectCommonWithArray:inputContentClasses];

      if (!v13)
      {
        contentItemClass = [(WFAction *)self contentItemClass];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __60__WFContentItemPropertiesAction_runAsynchronouslyWithInput___block_invoke;
        v15[3] = &unk_1E8375C10;
        v15[4] = self;
        v16 = v6;
        [inputCopy generateCollectionByCoercingToItemClass:contentItemClass completionHandler:v15];

        goto LABEL_7;
      }
    }

    [(WFContentItemPropertiesAction *)self finishWithItems:inputCopy property:v6 coercionPerformed:0];
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
  defaultProperty = [(WFContentItemAction *)self defaultProperty];
  name = [defaultProperty name];

  v5 = objc_opt_new();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setValue:v7 forKey:@"Class"];

  [v5 setValue:@"WFContentItemPropertyName" forKey:@"Key"];
  v8 = WFLocalizedStringResourceWithKey(@"Detail (ContentItemProperties)", @"Detail");
  [v5 setValue:v8 forKey:@"Label"];

  properties = [(WFContentItemPropertiesAction *)self properties];
  v10 = [properties if_compactMap:&__block_literal_global_14555];
  [v5 setValue:v10 forKey:@"Items"];

  properties2 = [(WFContentItemPropertiesAction *)self properties];
  v12 = [properties2 if_compactMap:&__block_literal_global_232];
  [v5 setValue:v12 forKey:@"ItemDisplayNames"];

  if (name)
  {
    v13 = [WFStringSubstitutableState serializedRepresentationFromValue:name];
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

  inputParameterKey = [(WFContentItemPropertiesAction *)self inputParameterKey];
  [v14 setValue:inputParameterKey forKey:@"Key"];

  localizedFilterDescription = [(objc_class *)[(WFAction *)self contentItemClass] localizedFilterDescription];
  [v14 setValue:localizedFilterDescription forKey:@"Label"];

  localizedFilterDescription2 = [(objc_class *)[(WFAction *)self contentItemClass] localizedFilterDescription];
  [v14 setValue:localizedFilterDescription2 forKey:@"Placeholder"];

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
  selectedProperty = [(WFContentItemPropertiesAction *)self selectedProperty];
  measurementUnitType = [selectedProperty measurementUnitType];

  return measurementUnitType;
}

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  selectedProperty = [(WFContentItemPropertiesAction *)self selectedProperty];

  if (selectedProperty)
  {
    selectedProperty2 = [(WFContentItemPropertiesAction *)self selectedProperty];
    localizedName = [selectedProperty2 localizedName];
LABEL_5:
    v9 = localizedName;
    goto LABEL_6;
  }

  outputDictionary = [(WFAction *)self outputDictionary];
  selectedProperty2 = [outputDictionary objectForKey:@"OutputName"];

  if (selectedProperty2)
  {
    localizedName = [contextCopy localize:selectedProperty2];
    goto LABEL_5;
  }

  v11 = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralFilterDescriptionWithContext:contextCopy];
  localizedCapitalizedString = [v11 localizedCapitalizedString];

  v13 = MEMORY[0x1E696AEC0];
  v14 = WFLocalizedStringResourceWithKey(@"WFContentItemPropertiesAction - Action Output Name", @"Details of %@");
  v15 = [contextCopy localize:v14];
  v9 = [v13 localizedStringWithFormat:v15, localizedCapitalizedString];

  selectedProperty2 = 0;
LABEL_6:

  return v9;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = WFContentItemPropertiesAction;
  v7 = [(WFAction *)&v9 setParameterState:state forKey:keyCopy];
  if (v7 && [keyCopy isEqualToString:@"WFContentItemPropertyName"])
  {
    [(WFAction *)self outputDetailsUpdated];
  }

  return v7;
}

- (id)selectedProperty
{
  v3 = [(WFAction *)self parameterStateForKey:@"WFContentItemPropertyName"];
  value = [v3 value];

  v5 = [(objc_class *)[(WFAction *)self contentItemClass] propertyForName:value];

  return v5;
}

- (id)outputContentClasses
{
  v19[1] = *MEMORY[0x1E69E9840];
  selectedProperty = [(WFContentItemPropertiesAction *)self selectedProperty];
  v4 = selectedProperty;
  if (selectedProperty)
  {
    v19[0] = [selectedProperty valueItemClass];
    array = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  }

  else
  {
    v6 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    properties = [(WFContentItemPropertiesAction *)self properties];
    v8 = [properties countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(properties);
          }

          [v6 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "valueItemClass")}];
        }

        v9 = [properties countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    array = [v6 array];
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)localizedKeywordsWithContext:(id)context
{
  v10.receiver = self;
  v10.super_class = WFContentItemPropertiesAction;
  contextCopy = context;
  v4 = [(WFAction *)&v10 localizedKeywordsWithContext:contextCopy];
  v5 = WFLocalizedStringResourceWithKey(@"property|properties|fetch", @"property|properties|fetch");
  v6 = [contextCopy localize:{v5, v10.receiver, v10.super_class}];

  v7 = [v6 componentsSeparatedByString:@"|"];

  v8 = [v4 arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (id)localizedDescriptionResultWithContext:(id)context
{
  contextCopy = context;
  selectedProperty = [(WFContentItemPropertiesAction *)self selectedProperty];
  localizedName = [selectedProperty localizedName];
  if ([localizedName length])
  {
    v7 = localizedName;
  }

  else
  {
    v8 = WFLocalizedStringResourceWithKey(@"The piece of information", @"The piece of information");
    v7 = [contextCopy localize:v8];
  }

  return v7;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  v5 = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralFilterDescriptionWithContext:contextCopy];
  if ([(objc_class *)[(WFAction *)self contentItemClass] canLowercaseTypeDescription])
  {
    localizedLowercaseString = [v5 localizedLowercaseString];

    v5 = localizedLowercaseString;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = WFLocalizedStringResourceWithKey(@"Gets a specific piece of information from the %@ passed into the action.", @"Gets a specific piece of information from the %@ passed into the action.");
  v9 = [contextCopy localize:v8];
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

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  definition = [(WFAction *)self definition];
  name = [definition name];

  if (name)
  {
    v14.receiver = self;
    v14.super_class = WFContentItemPropertiesAction;
    v7 = [(WFAction *)&v14 localizedNameWithContext:contextCopy];
  }

  else
  {
    v8 = WFLocalizedStringResourceWithKey(@"WFContentItemPropertiesAction - Action Name", @"Get Details of %@");
    v9 = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralFilterDescriptionWithContext:contextCopy];
    localizedCapitalizedString = [v9 localizedCapitalizedString];

    v11 = MEMORY[0x1E696AEC0];
    v12 = [contextCopy localize:v8];
    v7 = [v11 localizedStringWithFormat:v12, localizedCapitalizedString];
  }

  return v7;
}

- (id)properties
{
  allProperties = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"gettable = YES"];
  v4 = [allProperties filteredArrayUsingPredicate:v3];

  return v4;
}

@end