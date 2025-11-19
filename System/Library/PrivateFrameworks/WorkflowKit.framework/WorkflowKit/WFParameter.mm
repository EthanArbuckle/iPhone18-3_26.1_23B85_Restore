@interface WFParameter
+ (id)allInsertableVariableTypes;
+ (id)parameterWithDefinition:(id)a3;
+ (id)referencedActionResourceClasses;
- (BOOL)stripsTTSHints;
- (Class)singleStateClass;
- (Class)stateClass;
- (Class)toolkitValueClass;
- (NSSet)supportedVariableTypes;
- (NSString)localizedDescription;
- (NSString)localizedLabel;
- (NSString)localizedPlaceholder;
- (NSString)localizedPrompt;
- (WFParameter)initWithDefinition:(id)a3;
- (_NSRange)arraySizeRangeForWidgetFamily:(id)a3;
- (id)_localizedStringForKey:(id)a3 context:(id)a4;
- (id)localizedLabelWithContext:(id)a3;
- (id)rewriteParameterState:(id)a3 withStrings:(id)a4;
- (id)userVisibleStringsInParameterState:(id)a3 forUseCase:(unint64_t)a4;
- (int64_t)arraySizeForWidgetSizeClass:(id)a3;
- (void)addEventObserver:(id)a3;
- (void)attributesDidChange;
- (void)defaultSerializedRepresentationDidChange;
- (void)removeEventObserver:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)stateValidityCriteriaDidChange;
@end

@implementation WFParameter

- (Class)stateClass
{
  if ([(WFParameter *)self allowsMultipleValues])
  {
    v3 = [(WFParameter *)self multipleStateClass];
  }

  else
  {
    v3 = [(WFParameter *)self singleStateClass];
  }

  return v3;
}

- (NSString)localizedLabel
{
  v3 = [MEMORY[0x1E69E0BE0] defaultContext];
  v4 = [(WFParameter *)self localizedLabelWithContext:v3];

  return v4;
}

- (NSString)localizedDescription
{
  v3 = [MEMORY[0x1E69E0BE0] defaultContext];
  v4 = [(WFParameter *)self localizedDescriptionWithContext:v3];

  return v4;
}

- (id)userVisibleStringsInParameterState:(id)a3 forUseCase:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1CA5C5234(a3, a4);
  swift_unknownObjectRelease();

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v8 = sub_1CA94C8E8();

  return v8;
}

- (id)rewriteParameterState:(id)a3 withStrings:(id)a4
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  sub_1CA94C1C8();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1CA5C53E8(a3);
  swift_unknownObjectRelease();

  return v7;
}

- (Class)toolkitValueClass
{
  v2 = [(WFParameter *)self toolkitStateClass];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(objc_class *)v2 processingValueClasses];
    v4 = [v3 firstObject];
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = [(objc_class *)v2 processingValueClass];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removeEventObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFParameter *)self eventObservers];
  [v5 removeObject:v4];
}

- (void)addEventObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFParameter *)self eventObservers];
  [v5 addObject:v4];
}

- (void)stateValidityCriteriaDidChange
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(WFParameter *)self eventObservers];
  v4 = [v3 allObjects];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 parameterStateValidityCriteriaDidChange:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)defaultSerializedRepresentationDidChange
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(WFParameter *)self eventObservers];
  v4 = [v3 allObjects];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 parameterDefaultSerializedRepresentationDidChange:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)attributesDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(WFParameter *)self localizedStringCache];
  [v3 removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(WFParameter *)self eventObservers];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 parameterAttributesDidChange:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setHidden:(BOOL)a3
{
  if (self->_hidden != a3)
  {
    self->_hidden = a3;
    [(WFParameter *)self attributesDidChange];
  }
}

- (BOOL)stripsTTSHints
{
  v2 = [(WFParameter *)self definition];
  v3 = [v2 objectForKey:@"StripsTTSHints"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (_NSRange)arraySizeRangeForWidgetFamily:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"WFParameter.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"widgetFamily"}];
  }

  v6 = 1;
  v7 = 1;
  if ([(WFParameter *)self allowsMultipleValues])
  {
    if ([(WFParameter *)self isRangedSizeArray])
    {
      v8 = [(NSDictionary *)self->_arraySizeRangesByWidgetFamily objectForKeyedSubscript:v5];
      v9 = v8;
      if (v8)
      {
        v6 = [v8 rangeValue];
        v7 = v10;
LABEL_17:

        goto LABEL_18;
      }

      v11 = [v5 isEqualToString:*MEMORY[0x1E69AC188]];
      v12 = *MEMORY[0x1E69AC190];
      if ((v11 & 1) == 0)
      {
        v13 = [v5 isEqualToString:v12];
        v12 = *MEMORY[0x1E69AC198];
        if ((v13 & 1) == 0)
        {
          v14 = [v5 isEqualToString:v12];
          v12 = *MEMORY[0x1E69AC1A0];
          if ((v14 & 1) == 0)
          {
            if (![v5 isEqualToString:v12])
            {
              v15 = [v5 isEqualToString:*MEMORY[0x1E69AC178]];
              v12 = *MEMORY[0x1E69AC160];
              if (v15)
              {
                goto LABEL_16;
              }

              v16 = [v5 isEqualToString:v12];
              v12 = *MEMORY[0x1E69AC168];
              if (v16)
              {
                goto LABEL_16;
              }

              v17 = [v5 isEqualToString:v12];
              v12 = *MEMORY[0x1E69AC170];
              if (v17)
              {
                goto LABEL_16;
              }

              if (![v5 isEqualToString:v12])
              {
                v7 = 0;
                v6 = 0x7FFFFFFFFFFFFFFFLL;
                goto LABEL_17;
              }
            }

            v12 = *MEMORY[0x1E69AC1A8];
          }
        }
      }

LABEL_16:
      v18 = v12;
      v6 = [(WFParameter *)self arraySizeRangeForWidgetFamily:v18];
      v7 = v19;

      goto LABEL_17;
    }

    v6 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_18:

  v20 = v6;
  v21 = v7;
  result.length = v21;
  result.location = v20;
  return result;
}

- (int64_t)arraySizeForWidgetSizeClass:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFParameter.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"widgetSizeClass"}];
  }

  if ([(WFParameter *)self allowsMultipleValues])
  {
    if ([(WFParameter *)self fixedSizeArray])
    {
      v6 = [(NSDictionary *)self->_arraySizesBySizeClass objectForKeyedSubscript:v5];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 integerValue];
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        goto LABEL_17;
      }

      v10 = [v5 isEqualToString:*MEMORY[0x1E696E538]];
      v11 = *MEMORY[0x1E696E540];
      if ((v10 & 1) == 0)
      {
        v12 = [v5 isEqualToString:*MEMORY[0x1E696E540]];
        v11 = *MEMORY[0x1E696E548];
        if ((v12 & 1) == 0)
        {
          if ([v5 isEqualToString:*MEMORY[0x1E696E548]] || (v11 = *MEMORY[0x1E696E520], objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E696E520])))
          {
            v11 = *MEMORY[0x1E696E550];
          }

          else
          {
            v15 = *MEMORY[0x1E696E518];
            if (([v5 isEqualToString:*MEMORY[0x1E696E518]] & 1) == 0)
            {
              if ([v5 isEqualToString:*MEMORY[0x1E696E530]])
              {
                v11 = v15;
              }

              else
              {
                v11 = v15;
                if (![v5 isEqualToString:*MEMORY[0x1E696E528]])
                {
                  v9 = 1;
                  goto LABEL_17;
                }
              }
            }
          }
        }
      }

      v13 = v11;
      v9 = [(WFParameter *)self arraySizeForWidgetSizeClass:v13];

LABEL_17:
      goto LABEL_18;
    }

    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 1;
  }

LABEL_18:

  return v9;
}

- (NSSet)supportedVariableTypes
{
  supportedVariableTypes = self->_supportedVariableTypes;
  if (supportedVariableTypes)
  {
LABEL_6:
    v9 = supportedVariableTypes;
    goto LABEL_7;
  }

  v4 = [(WFParameter *)self defaultSupportedVariableTypes];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    v6 = [(WFParameter *)self disallowedVariableTypes];

    if (v6)
    {
      v7 = [(WFParameter *)self disallowedVariableTypes];
      [(NSSet *)v5 minusSet:v7];
    }

    v8 = self->_supportedVariableTypes;
    self->_supportedVariableTypes = v5;

    supportedVariableTypes = self->_supportedVariableTypes;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_localizedStringForKey:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 locale];
  v10 = [v9 localeIdentifier];
  v11 = [v8 stringWithFormat:@"%@_%@", v6, v10];

  v12 = [(WFParameter *)self localizedStringCache];
  v13 = [v12 objectForKeyedSubscript:v11];

  if (v13)
  {
    v14 = v13;
    goto LABEL_14;
  }

  v15 = [(WFParameter *)self definition];
  v16 = [v15 objectForKey:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
    goto LABEL_10;
  }

  if ([v16 conformsToProtocol:&unk_1F4AC0B80])
  {
    if ([(WFParameter *)self allowsMultipleValues])
    {
      v18 = &unk_1F4A9A150;
    }

    else
    {
      v18 = &unk_1F4A9A168;
    }

    v17 = [v16 localizedStringWithContext:v7 pluralizationNumber:v18];
LABEL_10:
    v14 = v17;
    if (v17)
    {
      v19 = [(WFParameter *)self localizedStringCache];
      [v19 setObject:v14 forKeyedSubscript:v11];
    }

    goto LABEL_13;
  }

  v14 = 0;
LABEL_13:

LABEL_14:

  return v14;
}

- (NSString)localizedPlaceholder
{
  localizedPlaceholder = self->_localizedPlaceholder;
  if (localizedPlaceholder)
  {
    v3 = localizedPlaceholder;
  }

  else
  {
    v5 = [MEMORY[0x1E69E0BE0] defaultContext];
    v3 = [(WFParameter *)self _localizedStringForKey:@"Placeholder" context:v5];
  }

  return v3;
}

- (NSString)localizedPrompt
{
  localizedPrompt = self->_localizedPrompt;
  if (localizedPrompt)
  {
    v3 = localizedPrompt;
  }

  else
  {
    v5 = [MEMORY[0x1E69E0BE0] defaultContext];
    v6 = [(WFParameter *)self _localizedStringForKey:@"Prompt" context:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(WFParameter *)self localizedLabel];
    }

    v3 = v8;
  }

  return v3;
}

- (id)localizedLabelWithContext:(id)a3
{
  v3 = [(WFParameter *)self _localizedStringForKey:@"Label" context:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F4A1C408;
  }

  v6 = v5;

  return v5;
}

- (WFParameter)initWithDefinition:(id)a3
{
  v5 = a3;
  v80.receiver = self;
  v80.super_class = WFParameter;
  v6 = [(WFParameter *)&v80 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_definition, a3);
    v8 = [WFResourceManager alloc];
    v9 = [v5 objectForKey:@"RequiredResources"];
    v10 = [(WFResourceManager *)v8 initWithDefinitions:v9];
    resourceManager = v7->_resourceManager;
    v7->_resourceManager = v10;

    v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    eventObservers = v7->_eventObservers;
    v7->_eventObservers = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    localizedStringCache = v7->_localizedStringCache;
    v7->_localizedStringCache = v14;

    v16 = [v5 objectForKey:@"Key"];
    v17 = objc_opt_class();
    v18 = WFEnforceClass_1501(v16, v17);
    key = v7->_key;
    v7->_key = v18;

    v20 = [v5 objectForKey:@"KeyForSerialization"];
    v21 = objc_opt_class();
    v22 = WFEnforceClass_1501(v20, v21);
    v23 = v22;
    if (!v22)
    {
      v23 = v7->_key;
    }

    objc_storeStrong(&v7->_keyForSerialization, v23);

    v24 = [v5 objectForKey:@"LegacyKey"];
    v25 = objc_opt_class();
    v26 = WFEnforceClass_1501(v24, v25);
    legacyKey = v7->_legacyKey;
    v7->_legacyKey = v26;

    v28 = [v5 objectForKey:@"Hidden"];
    v29 = objc_opt_class();
    v30 = WFEnforceClass_1501(v28, v29);
    v7->_hidden = [v30 BOOLValue];

    v31 = [v5 objectForKey:@"DoNotLocalizeValues"];
    v32 = objc_opt_class();
    v33 = WFEnforceClass_1501(v31, v32);
    v7->_doNotLocalizeValues = [v33 BOOLValue];

    v34 = [v5 objectForKey:@"DoNotLocalizePlaceholder"];
    v35 = objc_opt_class();
    v36 = WFEnforceClass_1501(v34, v35);
    v7->_doNotLocalizePlaceholder = [v36 BOOLValue];

    v37 = [v5 objectForKey:@"LanguageCodeOverride"];
    v38 = objc_opt_class();
    v39 = WFEnforceClass_1501(v37, v38);
    languageCode = v7->_languageCode;
    v7->_languageCode = v39;

    v41 = [v5 objectForKey:@"DefaultValue"];
    defaultSerializedRepresentation = v7->_defaultSerializedRepresentation;
    v7->_defaultSerializedRepresentation = v41;

    v43 = [v5 objectForKey:@"DisallowedVariableTypes"];
    v44 = objc_opt_class();
    v45 = WFEnforceClass_1501(v43, v44);

    if (v45)
    {
      if ([v45 containsObject:@"Variable"])
      {
        v46 = [objc_opt_class() allInsertableVariableTypes];
        v47 = [v46 mutableCopy];

        [v47 removeObject:@"Ask"];
        v48 = [v47 allObjects];
        v49 = [v45 arrayByAddingObjectsFromArray:v48];

        v45 = v49;
      }

      v50 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v45];
      disallowedVariableTypes = v7->_disallowedVariableTypes;
      v7->_disallowedVariableTypes = v50;
    }

    v52 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Ask", @"ActionOutput", @"Variable", @"ExtensionInput", 0}];
    defaultSupportedVariableTypes = v7->_defaultSupportedVariableTypes;
    v7->_defaultSupportedVariableTypes = v52;

    if (v7->_hidden)
    {
      v54 = @"Hidden";
      importQuestionBehavior = v7->_importQuestionBehavior;
      v7->_importQuestionBehavior = @"Hidden";
    }

    else
    {
      v56 = [v5 objectForKey:@"ImportQuestionBehavior"];
      v57 = objc_opt_class();
      importQuestionBehavior = WFEnforceClass_1501(v56, v57);

      if (importQuestionBehavior)
      {
        v58 = importQuestionBehavior;
      }

      else
      {
        v58 = @"Default";
      }

      objc_storeStrong(&v7->_importQuestionBehavior, v58);
    }

    v59 = [v5 objectForKey:@"IntentSlotName"];
    v60 = objc_opt_class();
    v61 = WFEnforceClass_1501(v59, v60);
    v62 = v61;
    if (!v61)
    {
      v62 = v7->_key;
    }

    objc_storeStrong(&v7->_intentSlotName, v62);

    v63 = [v5 objectForKey:@"AllowsMultipleValues"];
    v7->_allowsMultipleValues = [v63 BOOLValue];

    if (v7->_allowsMultipleValues)
    {
      v64 = [v5 objectForKey:@"AllowsEmptyValue"];
      v65 = v64;
      if (!v64)
      {
        v64 = MEMORY[0x1E695E118];
      }

      v7->_allowsEmptyValue = [v64 BOOLValue];
    }

    else
    {
      v7->_allowsEmptyValue = 1;
    }

    v66 = [v5 objectForKey:@"FixedSizeArray"];
    v7->_fixedSizeArray = [v66 BOOLValue];

    v67 = [v5 objectForKey:@"ArraySizesForSizeClass"];
    arraySizesBySizeClass = v7->_arraySizesBySizeClass;
    v7->_arraySizesBySizeClass = v67;

    v69 = [v5 objectForKey:@"RangedSizeArray"];
    v70 = ([v69 BOOLValue] & 1) != 0 || v7->_fixedSizeArray;
    v7->_rangedSizeArray = v70 & 1;

    v71 = [v5 objectForKey:@"ArraySizeRangesForWidgetFamily"];
    arraySizeRangesByWidgetFamily = v7->_arraySizeRangesByWidgetFamily;
    v7->_arraySizeRangesByWidgetFamily = v71;

    v73 = [v5 objectForKey:@"PreferredTypes"];
    v74 = objc_opt_class();
    v75 = WFEnforceClass_1501(v73, v74);
    v76 = [v75 if_compactMap:&__block_literal_global_4008];
    preferredTypes = v7->_preferredTypes;
    v7->_preferredTypes = v76;

    v78 = v7;
  }

  return v7;
}

- (Class)singleStateClass
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"WFParameter subclass %@ must implement -singleStateClass", v4];

  v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v5 userInfo:0];
  objc_exception_throw(v6);
}

+ (id)allInsertableVariableTypes
{
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Ask", @"Variable", @"Clipboard", @"CurrentApp", @"CurrentDate", @"DeviceDetails", @"ActionOutput", @"ExtensionInput", 0}];

  return v2;
}

+ (id)parameterWithDefinition:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"Class"];
  v6 = objc_opt_class();
  v7 = WFEnforceClass_1501(v5, v6);
  v8 = NSClassFromString(v7);

  if (v8)
  {
    if (-[objc_class isSubclassOfClass:](v8, "isSubclassOfClass:", a1) && ([v4 objectForKey:@"Key"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_class(), WFEnforceClass_1501(v9, v10), v11 = objc_claimAutoreleasedReturnValue(), v11, v9, v11))
    {
      v8 = [[v8 alloc] initWithDefinition:v4];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)referencedActionResourceClasses
{
  v2 = objc_opt_new();

  return v2;
}

@end