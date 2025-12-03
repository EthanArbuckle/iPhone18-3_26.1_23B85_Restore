@interface WFContentItemFilterAction
- (BOOL)canHandleInputOfContentClasses:(id)classes withSupportedClasses:(id)supportedClasses;
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (WFContentPredicate)contentPredicate;
- (WFContentQuery)query;
- (_WFContentSlice)slice;
- (id)createStateForParameter:(id)parameter fromSerializedRepresentation:(id)representation;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedDescriptionInputWithContext:(id)context;
- (id)localizedDescriptionResultWithContext:(id)context;
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedKeywordsWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)localizedParameterSummaryStringForFilterWithMultipleFilterConditions;
- (id)localizedParameterSummaryStringForFindWithMultipleFilterConditions;
- (id)localizedPluralDescriptionWithContext:(id)context;
- (id)parameterDefinitions;
- (id)parameterStateForKey:(id)key;
- (id)parameterSummary;
- (id)possibleStatesForEnumeration:(id)enumeration;
- (id)sortablePropertyDisplayNames;
- (id)sortablePropertyNames;
- (id)swift_rowForContentPropertyName:(id)name;
- (int64_t)tableTemplateCompoundType;
- (int64_t)tableTemplateRowCount;
- (unint64_t)mode;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)runFilterWithInput:(id)input query:(id)query;
- (void)setTableTemplateCompoundType:(int64_t)type;
- (void)updateCompoundParameterVisibility;
- (void)wasAddedToWorkflow:(id)workflow;
- (void)wasRemovedFromWorkflow:(id)workflow;
@end

@implementation WFContentItemFilterAction

- (int64_t)tableTemplateRowCount
{
  selfCopy = self;
  v3 = WFContentItemFilterAction.tableTemplateRowCount.getter();

  return v3;
}

- (int64_t)tableTemplateCompoundType
{
  selfCopy = self;
  v3 = WFContentItemFilterAction.tableTemplateCompoundType.getter();

  return v3;
}

- (void)setTableTemplateCompoundType:(int64_t)type
{
  selfCopy = self;
  WFContentItemFilterAction.tableTemplateCompoundType.setter(type);
}

- (id)swift_rowForContentPropertyName:(id)name
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = WFContentItemFilterAction.row(forContentPropertyName:)(v8);

  return v9;
}

- (WFContentPredicate)contentPredicate
{
  selfCopy = self;
  v3 = WFContentItemFilterAction.contentPredicate.getter();

  return v3;
}

- (BOOL)canHandleInputOfContentClasses:(id)classes withSupportedClasses:(id)supportedClasses
{
  v58 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  supportedClassesCopy = supportedClasses;
  if ([(WFContentItemFilterAction *)self inputRequired])
  {
    v54.receiver = self;
    v54.super_class = WFContentItemFilterAction;
    v8 = [(WFAction *)&v54 canHandleInputOfContentClasses:classesCopy withSupportedClasses:supportedClassesCopy];
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v9 = supportedClassesCopy;
    v36 = [v9 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v36)
    {
      v10 = *v51;
      v40 = supportedClassesCopy;
      v41 = classesCopy;
      v39 = v9;
      v35 = *v51;
      do
      {
        v11 = 0;
        do
        {
          if (*v51 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v37 = v11;
          v12 = *(*(&v50 + 1) + 8 * v11);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v13 = classesCopy;
          v14 = [v13 countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v47;
            do
            {
              v17 = 0;
              do
              {
                if (*v47 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v46 + 1) + 8 * v17);
                if ([v18 isSubclassOfClass:v12])
                {
                  contentItemClass = [(WFAction *)self contentItemClass];
                  if (contentItemClass != objc_opt_class() || v18 != objc_opt_class() && v18 != objc_opt_class())
                  {
                    if ((v20 = [(WFAction *)self contentItemClass], v21 = objc_opt_class(), v22 = [(WFAction *)self contentItemClass], v22 != objc_opt_class()) && v20 != v21 || v18 != objc_opt_class() && v18 != objc_opt_class())
                    {
LABEL_57:

                      v8 = 1;
                      supportedClassesCopy = v40;
                      classesCopy = v41;
                      goto LABEL_58;
                    }
                  }
                }

                else if (v12 == objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class())
                {
                  contentItemClass2 = [(WFAction *)self contentItemClass];
                  if (contentItemClass2 != objc_opt_class() || v18 != objc_opt_class() && v18 != objc_opt_class())
                  {
                    if ((v24 = [(WFAction *)self contentItemClass], v25 = objc_opt_class(), v26 = [(WFAction *)self contentItemClass], v26 != objc_opt_class()) && v24 != v25 || v18 != objc_opt_class() && v18 != objc_opt_class())
                    {
                      v44 = 0u;
                      v45 = 0u;
                      v42 = 0u;
                      v43 = 0u;
                      obj = [v18 allSupportedTypes];
                      v27 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
                      if (v27)
                      {
                        v28 = v27;
                        v29 = *v43;
                        while (2)
                        {
                          for (i = 0; i != v28; ++i)
                          {
                            if (*v43 != v29)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v31 = *(*(&v42 + 1) + 8 * i);
                            objc_opt_class();
                            if (objc_opt_isKindOfClass() & 1) != 0 && ([v31 isDeclared])
                            {

                              goto LABEL_57;
                            }
                          }

                          v28 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
                          if (v28)
                          {
                            continue;
                          }

                          break;
                        }
                      }
                    }
                  }
                }

                ++v17;
              }

              while (v17 != v15);
              v32 = [v13 countByEnumeratingWithState:&v46 objects:v56 count:16];
              v15 = v32;
            }

            while (v32);
          }

          v11 = v37 + 1;
          supportedClassesCopy = v40;
          classesCopy = v41;
          v9 = v39;
          v10 = v35;
        }

        while (v37 + 1 != v36);
        v36 = [v39 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v36);
    }

    v8 = 0;
  }

LABEL_58:

  v33 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)runFilterWithInput:(id)input query:(id)query
{
  queryCopy = query;
  inputCopy = input;
  contentItemClass = [(WFAction *)self contentItemClass];
  contentPermissionRequestor = [(WFAction *)self contentPermissionRequestor];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__WFContentItemFilterAction_runFilterWithInput_query___block_invoke;
  v10[3] = &unk_1E837E750;
  v10[4] = self;
  [inputCopy generateCollectionByEvaluatingQuery:queryCopy forContentItemClass:contentItemClass permissionRequestor:contentPermissionRequestor completionHandler:v10];
}

void __54__WFContentItemFilterAction_runFilterWithInput_query___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  if ([(WFContentItemFilterAction *)self mode])
  {
    query = [(WFContentItemFilterAction *)self query];
    [(WFContentItemFilterAction *)self runFilterWithInput:inputCopy query:query];
  }

  else
  {
    contentItemClass = [(WFAction *)self contentItemClass];
    query2 = [(WFContentItemFilterAction *)self query];
    contentPermissionRequestor = [(WFAction *)self contentPermissionRequestor];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__WFContentItemFilterAction_runAsynchronouslyWithInput___block_invoke;
    v9[3] = &unk_1E837E728;
    v9[4] = self;
    [(objc_class *)contentItemClass runQuery:query2 withItems:0 permissionRequestor:contentPermissionRequestor completionHandler:v9];
  }
}

void __56__WFContentItemFilterAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E6996D40];
  v7 = a3;
  v6 = [v5 collectionWithItems:a2];
  [*(a1 + 32) setOutput:v6];

  [*(a1 + 32) finishRunningWithError:v7];
}

- (unint64_t)mode
{
  inputParameterKey = [(WFContentItemFilterAction *)self inputParameterKey];
  v4 = [(WFContentItemFilterAction *)self parameterStateForKey:inputParameterKey];

  if ([(objc_class *)[(WFAction *)self contentItemClass] hasLibrary])
  {
    value = [v4 value];
    v6 = [value isEqualToString:@"Library"];

    v7 = ~v6 & 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (_WFContentSlice)slice
{
  v3 = *MEMORY[0x1E6997040];
  v4 = *(MEMORY[0x1E6997040] + 8);
  v5 = [(WFAction *)self parameterValueForKey:@"WFContentItemLimitNumber" ofClass:objc_opt_class()];
  integerValue = [v5 integerValue];

  v7 = [(WFAction *)self parameterValueForKey:@"WFContentItemLimitEnabled" ofClass:objc_opt_class()];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = integerValue;
  }

  else
  {
    v9 = v4;
  }

  if (bOOLValue)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v3;
  }

  result.var1 = v9;
  result.var0 = v10;
  return result;
}

- (WFContentQuery)query
{
  v25[5] = *MEMORY[0x1E69E9840];
  v3 = [(WFAction *)self parameterValueForKey:@"WFContentItemSortProperty" ofClass:objc_opt_class()];
  v4 = WFLocalizedContentPropertyPossibleValueMarker(@"Random");
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    randomSortDescriptor = [MEMORY[0x1E6996DA0] randomSortDescriptor];
  }

  else
  {
    allProperties = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
    v8 = [(WFAction *)self parameterValueForKey:@"WFContentItemSortProperty" ofClass:objc_opt_class()];
    v9 = [allProperties objectMatchingKey:@"name" value:v8];

    v10 = WFLocalizedContentPropertyPossibleValueMarker(@"Z to A");
    v25[0] = v10;
    v11 = WFLocalizedContentPropertyPossibleValueMarker(@"Biggest First");
    v25[1] = v11;
    v12 = WFLocalizedContentPropertyPossibleValueMarker(@"Latest First");
    v25[2] = v12;
    v13 = WFLocalizedContentPropertyPossibleValueMarker(@"Longest First");
    v25[3] = v13;
    v14 = WFLocalizedContentPropertyPossibleValueMarker(@"Descending");
    v25[4] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];

    v16 = [(WFAction *)self parameterValueForKey:@"WFContentItemSortOrder" ofClass:objc_opt_class()];
    v17 = [v15 containsObject:v16];

    if (v9)
    {
      randomSortDescriptor = [MEMORY[0x1E6996DA0] sortDescriptorWithProperty:v9 ascending:v17 ^ 1u comparator:0];
    }

    else
    {
      randomSortDescriptor = 0;
    }
  }

  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:{randomSortDescriptor, 0}];

  contentPredicate = [(WFContentItemFilterAction *)self contentPredicate];
  v20 = [objc_alloc(MEMORY[0x1E6996D98]) initWithPredicate:contentPredicate];
  [v20 setSortDescriptors:v18];
  slice = [(WFContentItemFilterAction *)self slice];
  [v20 setSlice:{slice, v22}];

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  value = [state value];
  v5 = WFLocalizedContentPropertyPossibleValue(value);

  return v5;
}

- (id)possibleStatesForEnumeration:(id)enumeration
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = [(WFContentItemFilterAction *)self parameterStateForKey:@"WFContentItemSortProperty"];
  value = [v4 value];

  if (!value)
  {
    v9 = 0;
    goto LABEL_10;
  }

  allProperties = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
  v7 = [allProperties objectMatchingKey:@"name" value:value];
  if (v7)
  {
    v8 = v7;

LABEL_6:
    v11 = WFLocalizedContentPropertyPossibleValueMarker(@"Ascending");
    v18[0] = v11;
    v12 = WFLocalizedContentPropertyPossibleValueMarker(@"Descending");
    v18[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

    if (([v8 hasPossibleValues] & 1) == 0)
    {
      propertyClasses = [v8 propertyClasses];
      v15 = [propertyClasses if_flatMap:&__block_literal_global_469_67645];

      v13 = v15;
    }

    v9 = [v13 if_map:&__block_literal_global_477];

    goto LABEL_9;
  }

  allProperties2 = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
  v8 = [allProperties2 objectMatchingKey:@"displayName" value:value];

  if (v8)
  {
    goto LABEL_6;
  }

  v9 = 0;
LABEL_9:

LABEL_10:
  v16 = *MEMORY[0x1E69E9840];

  return v9;
}

WFStringSubstitutableState *__58__WFContentItemFilterAction_possibleStatesForEnumeration___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:v2];

  return v3;
}

id __58__WFContentItemFilterAction_possibleStatesForEnumeration___block_invoke(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (([a2 isSubclassOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(a2, "isSubclassOfClass:", objc_opt_class()))
  {
    v3 = WFLocalizedContentPropertyPossibleValueMarker(@"A to Z");
    v14[0] = v3;
    v4 = @"Z to A";
    v5 = v14;
  }

  else if (([a2 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(a2, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(a2, "isSubclassOfClass:", objc_opt_class()))
  {
    v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Smallest First");
    v13 = v3;
    v4 = @"Biggest First";
    v5 = &v13;
  }

  else if ([a2 isSubclassOfClass:objc_opt_class()])
  {
    v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Oldest First");
    v12 = v3;
    v4 = @"Latest First";
    v5 = &v12;
  }

  else if ([a2 isSubclassOfClass:objc_opt_class()])
  {
    v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Shortest First");
    v11 = v3;
    v4 = @"Longest First";
    v5 = &v11;
  }

  else
  {
    v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Ascending");
    v10 = v3;
    v4 = @"Descending";
    v5 = &v10;
  }

  v6 = WFLocalizedContentPropertyPossibleValueMarker(v4);
  v5[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)parameterDefinitions
{
  v124[6] = *MEMORY[0x1E69E9840];
  sortablePropertyNames = [(WFContentItemFilterAction *)self sortablePropertyNames];
  sortablePropertyDisplayNames = [(WFContentItemFilterAction *)self sortablePropertyDisplayNames];
  localizedTypeDescription = [(objc_class *)[(WFAction *)self contentItemClass] localizedTypeDescription];
  localizedPluralTypeDescription = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralTypeDescription];
  v65 = [localizedTypeDescription isEqualToString:localizedPluralTypeDescription];

  v76 = [sortablePropertyNames count] == 0;
  v83 = MEMORY[0x1E695DF70];
  v7 = [WFParameterDefinition alloc];
  v122[0] = @"Class";
  v8 = objc_opt_class();
  v94 = NSStringFromClass(v8);
  v123[0] = v94;
  v123[1] = @"WFContentItemFilter";
  v122[1] = @"Key";
  v122[2] = @"ContentItemClass";
  v93 = NSStringFromClass([(WFAction *)self contentItemClass]);
  v123[2] = v93;
  v122[3] = @"DisallowedVariableTypes";
  disallowedVariableTypesForTableTemplate = [(WFContentItemFilterAction *)self disallowedVariableTypesForTableTemplate];
  v123[3] = disallowedVariableTypesForTableTemplate;
  v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:4];
  v90 = [(WFParameterDefinition *)v7 initWithDictionary:?];
  v124[0] = v90;
  v9 = [WFParameterDefinition alloc];
  v120[0] = @"Class";
  v10 = objc_opt_class();
  v89 = NSStringFromClass(v10);
  v121[0] = v89;
  v120[1] = @"Label";
  v88 = WFLocalizedStringResourceWithKey(@"Sort by (ContentItemFilter)", @"Sort by");
  v121[1] = v88;
  v120[2] = @"Description";
  v87 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:2];
  v121[2] = v87;
  v120[3] = @"DisallowedVariableTypes";
  v119[0] = @"Ask";
  v119[1] = @"Variable";
  v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
  v121[3] = v86;
  v121[4] = @"WFContentItemSortProperty";
  v120[4] = @"Key";
  v120[5] = @"Placeholder";
  v85 = WFLocalizedStringResourceWithKey(@"None", @"None");
  v121[5] = v85;
  v121[6] = MEMORY[0x1E695E118];
  v120[6] = @"AlwaysShowsButton";
  v120[7] = @"Items";
  WFLocalizedContentPropertyPossibleValueMarker(@"Random");
  v82 = v96 = sortablePropertyNames;
  v81 = [sortablePropertyNames arrayByAddingObject:?];
  v121[7] = v81;
  v120[8] = @"ItemDisplayNames";
  v80 = WFLocalizedContentPropertyPossibleValueMarker(@"Random");
  WFLocalizedContentPropertyPossibleValue(v80);
  v79 = v95 = sortablePropertyDisplayNames;
  v78 = [sortablePropertyDisplayNames arrayByAddingObject:?];
  v121[8] = v78;
  v120[9] = @"Hidden";
  v77 = [MEMORY[0x1E696AD98] numberWithBool:v76];
  v121[9] = v77;
  v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:v120 count:10];
  v74 = [(WFParameterDefinition *)v9 initWithDictionary:?];
  v124[1] = v74;
  v11 = [WFParameterDefinition alloc];
  v117[0] = @"Class";
  v12 = objc_opt_class();
  v73 = NSStringFromClass(v12);
  v118[0] = v73;
  v117[1] = @"Label";
  v72 = WFLocalizedStringResourceWithKey(@"Order (ContentItemFilter)", @"Order");
  v118[1] = v72;
  v117[2] = @"Description";
  v71 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:3];
  v118[2] = v71;
  v117[3] = @"DisallowedVariableTypes";
  v116[0] = @"Ask";
  v116[1] = @"Variable";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
  v117[4] = @"Key";
  v70 = v13;
  v118[3] = v13;
  v118[4] = @"WFContentItemSortOrder";
  v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:5];
  v68 = [(WFParameterDefinition *)v11 initWithDictionary:?];
  v124[2] = v68;
  v14 = [WFParameterDefinition alloc];
  v114[0] = @"Class";
  v15 = objc_opt_class();
  v67 = NSStringFromClass(v15);
  v115[0] = v67;
  v114[1] = @"Label";
  v64 = WFLocalizedStringResourceWithKey(@"Limit (ContentItemFilter)", @"Limit");
  v115[1] = v64;
  v114[2] = @"Description";
  v63 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:0];
  v115[2] = v63;
  v115[3] = MEMORY[0x1E695E110];
  v114[3] = @"DefaultValue";
  v114[4] = @"Key";
  v115[4] = @"WFContentItemLimitEnabled";
  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:5];
  v61 = [(WFParameterDefinition *)v14 initWithDictionary:?];
  v124[3] = v61;
  v16 = [WFParameterDefinition alloc];
  v112[0] = @"Class";
  v17 = objc_opt_class();
  v60 = NSStringFromClass(v17);
  v113[0] = v60;
  v112[1] = @"Label";
  v59 = WFLocalizedStringResourceWithKey(@"Get (ContentItemFilter)", @"Get");
  v113[1] = v59;
  v112[2] = @"Description";
  v58 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:1];
  v113[2] = v58;
  v113[3] = @"WFContentItemLimitNumber";
  v112[3] = @"Key";
  v112[4] = @"StepperNoun";
  if (v65)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = @"%d Items";
    v20 = [@"%d Items" stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    v21 = [v18 stringWithFormat:@"%@ (Pluralization)", v20];

    countDescription = WFLocalizedStringResourceWithKey(v21, @"%d Items");
  }

  else
  {
    countDescription = [(objc_class *)[(WFAction *)self contentItemClass] countDescription];
  }

  v66 = countDescription;
  v113[4] = countDescription;
  v112[5] = @"StepperPrefix";
  v57 = WFLocalizedStringResourceWithKey(@"Get (ContentItemFilter)", @"Get");
  v113[5] = v57;
  v113[6] = &unk_1F4A9AE58;
  v112[6] = @"DefaultValue";
  v112[7] = @"RequiredResources";
  v109[0] = @"WFResourceClass";
  v109[1] = @"WFParameterKey";
  v110[0] = @"WFParameterRelationResource";
  v110[1] = @"WFContentItemLimitEnabled";
  v109[2] = @"WFParameterValue";
  v110[2] = MEMORY[0x1E695E118];
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:3];
  v111 = v56;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
  v113[7] = v55;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:8];
  v53 = [(WFParameterDefinition *)v16 initWithDictionary:v54];
  v124[4] = v53;
  v23 = [WFParameterDefinition alloc];
  v107[0] = @"Class";
  v24 = objc_opt_class();
  v52 = NSStringFromClass(v24);
  v108[0] = v52;
  v108[1] = @"WFCompoundType";
  v107[1] = @"Key";
  v107[2] = @"Items";
  stringValue = [&unk_1F4A9AE70 stringValue];
  v106[0] = stringValue;
  stringValue2 = [&unk_1F4A9AE88 stringValue];
  v106[1] = stringValue2;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
  v108[2] = v49;
  v107[3] = @"ItemDisplayNames";
  v25 = WFLocalizedStringResourceWithKey(@"Any (find/filter)", @"Any");
  v105[0] = v25;
  v26 = WFLocalizedStringResourceWithKey(@"All (find/filter)", @"All");
  v105[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
  v108[3] = v27;
  v107[4] = @"DefaultValue";
  stringValue3 = [&unk_1F4A9AE70 stringValue];
  v108[4] = stringValue3;
  v107[5] = @"DisallowedVariableTypes";
  v29 = +[WFParameter allInsertableVariableTypes];
  allObjects = [v29 allObjects];
  v108[5] = allObjects;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:6];
  v32 = [(WFParameterDefinition *)v23 initWithDictionary:v31];
  v124[5] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:6];
  v84 = [v83 arrayWithArray:v33];

  LODWORD(allObjects) = [(objc_class *)[(WFAction *)self contentItemClass] hasLibrary];
  v34 = [WFParameterDefinition alloc];
  if (allObjects)
  {
    v103[0] = @"Class";
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v104[0] = v36;
    v104[1] = @"WFContentItemInputParameter";
    v103[1] = @"Key";
    v103[2] = @"Label";
    v37 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:4];
    v104[2] = v37;
    v103[3] = @"Placeholder";
    v38 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:4];
    v104[3] = v38;
    v103[4] = @"Items";
    v102 = @"Library";
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
    v104[4] = v39;
    v103[5] = @"ItemDisplayNames";
    v40 = WFLocalizedStringResourceWithKey(@"Library (WFContentItemInputParameter)", @"Library");
    v101 = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
    v104[5] = v41;
    v104[6] = @"Library";
    v103[6] = @"DefaultValue";
    v103[7] = @"DisallowedVariableTypes";
    v100[0] = @"CurrentDate";
    v100[1] = @"Ask";
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
    v104[7] = v42;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:8];
    v44 = [(WFParameterDefinition *)v34 initWithDictionary:v43];
    v45 = v84;
    [v84 addObject:v44];
  }

  else
  {
    v98[0] = @"Class";
    v46 = objc_opt_class();
    v36 = NSStringFromClass(v46);
    v99[0] = v36;
    v99[1] = @"WFContentItemInputParameter";
    v98[1] = @"Key";
    v98[2] = @"Label";
    v37 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:4];
    v99[2] = v37;
    v98[3] = @"Placeholder";
    v38 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:4];
    v99[3] = v38;
    v98[4] = @"DisallowedVariableTypes";
    v97[0] = @"CurrentDate";
    v97[1] = @"Ask";
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
    v99[4] = v39;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:5];
    v41 = [(WFParameterDefinition *)v34 initWithDictionary:v40];
    v45 = v84;
    [v84 addObject:v41];
  }

  v47 = *MEMORY[0x1E69E9840];

  return v45;
}

- (id)sortablePropertyDisplayNames
{
  allProperties = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sortable = YES"];
  v4 = [allProperties filteredArrayUsingPredicate:v3];
  v5 = [v4 if_map:&__block_literal_global_67799];

  return v5;
}

- (id)sortablePropertyNames
{
  allProperties = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sortable = YES"];
  v4 = [allProperties filteredArrayUsingPredicate:v3];
  v5 = [v4 valueForKey:@"name"];

  return v5;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  v32[5] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  keyCopy = key;
  if (![keyCopy isEqualToString:@"WFCompoundType"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v31.receiver = self;
    v31.super_class = WFContentItemFilterAction;
    if (![(WFAction *)&v31 setParameterState:stateCopy forKey:keyCopy])
    {
      goto LABEL_8;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__WFContentItemFilterAction_setParameterState_forKey___block_invoke;
    block[3] = &unk_1E837FA70;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    value3 = [(WFContentItemFilterAction *)self parameterStateForKey:@"WFContentItemSortOrder"];
    v10 = [(WFContentItemFilterAction *)self parameterStateForKey:@"WFContentItemSortProperty"];
    v11 = [(WFAction *)self parameterForKey:@"WFContentItemSortOrder"];
    v12 = v11;
    if (v10)
    {
      value = [v10 value];
      v14 = WFLocalizedContentPropertyPossibleValueMarker(@"Random");
      [v12 setHidden:{objc_msgSend(value, "isEqualToString:", v14)}];
    }

    else
    {
      [v11 setHidden:1];
    }

    [v12 reloadPossibleStates];
    if ([keyCopy isEqualToString:@"WFContentItemSortProperty"])
    {
      possibleStates = [v12 possibleStates];
      v17 = [possibleStates containsObject:value3];

      if ((v17 & 1) == 0)
      {
        v29 = WFLocalizedContentPropertyPossibleValueMarker(@"Z to A");
        v32[0] = v29;
        v28 = WFLocalizedContentPropertyPossibleValueMarker(@"Biggest First");
        v32[1] = v28;
        v27 = WFLocalizedContentPropertyPossibleValueMarker(@"Latest First");
        v32[2] = v27;
        v18 = WFLocalizedContentPropertyPossibleValueMarker(@"Longest First");
        v32[3] = v18;
        v19 = WFLocalizedContentPropertyPossibleValueMarker(@"Descending");
        v32[4] = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
        value2 = [value3 value];
        v26 = [v20 containsObject:value2];

        possibleStates2 = [v12 possibleStates];
        v23 = [possibleStates2 objectAtIndexedSubscript:v26];
        [(WFContentItemFilterAction *)self setParameterState:v23 forKey:@"WFContentItemSortOrder"];
      }
    }

LABEL_15:
    [(WFContentItemFilterAction *)self updateCompoundParameterVisibility];
    [(WFAction *)self reloadAuxiliaryButton];
    v15 = 1;
    goto LABEL_16;
  }

  value3 = [stateCopy value];
  integerValue = [value3 integerValue];
  if ([(WFContentItemFilterAction *)self tableTemplateCompoundType]!= integerValue)
  {
    [(WFContentItemFilterAction *)self setTableTemplateCompoundType:integerValue];
    goto LABEL_15;
  }

LABEL_8:
  v15 = 0;
LABEL_16:

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)parameterStateForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"WFCompoundType"])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFContentItemFilterAction tableTemplateCompoundType](self, "tableTemplateCompoundType")}];
    stringValue = [v5 stringValue];

    v7 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:stringValue];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFContentItemFilterAction;
    v7 = [(WFAction *)&v9 parameterStateForKey:keyCopy];
  }

  return v7;
}

- (void)wasRemovedFromWorkflow:(id)workflow
{
  v5.receiver = self;
  v5.super_class = WFContentItemFilterAction;
  [(WFAction *)&v5 wasRemovedFromWorkflow:workflow];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WFContentItemFilterAction_wasRemovedFromWorkflow___block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)wasAddedToWorkflow:(id)workflow
{
  v5.receiver = self;
  v5.super_class = WFContentItemFilterAction;
  [(WFAction *)&v5 wasAddedToWorkflow:workflow];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WFContentItemFilterAction_wasAddedToWorkflow___block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)updateCompoundParameterVisibility
{
  v3 = [(WFAction *)self parameterForKey:@"WFCompoundType"];
  [v3 setHidden:{-[WFContentItemFilterAction hasMultipleFilterConditions](self, "hasMultipleFilterConditions") ^ 1}];
}

- (void)initializeParameters
{
  v9.receiver = self;
  v9.super_class = WFContentItemFilterAction;
  [(WFAction *)&v9 initializeParameters];
  v3 = [(WFContentItemFilterAction *)self parameterStateForKey:@"WFContentItemSortProperty"];
  v4 = [(WFAction *)self parameterForKey:@"WFContentItemSortOrder"];
  [v4 setDataSource:self];
  if (v3)
  {
    value = [v3 value];
    v6 = WFLocalizedContentPropertyPossibleValueMarker(@"Random");
    [v4 setHidden:{objc_msgSend(value, "isEqualToString:", v6)}];
  }

  else
  {
    [v4 setHidden:1];
  }

  if ([(objc_class *)[(WFAction *)self contentItemClass] hasLibrary])
  {
    inputParameterKey = [(WFContentItemFilterAction *)self inputParameterKey];
    v8 = [(WFAction *)self parameterForKey:inputParameterKey];

    [v8 setContentItemClass:{-[WFAction contentItemClass](self, "contentItemClass")}];
  }

  [(WFContentItemFilterAction *)self updateCompoundParameterVisibility];
}

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  v5 = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralFilterDescriptionWithContext:contextCopy];

  return v5;
}

- (id)localizedKeywordsWithContext:(id)context
{
  contextCopy = context;
  v5 = WFLocalizedStringResourceWithKey(@"filter|sort|find|search|library", @"filter|sort|find|search|library");
  v6 = [contextCopy localize:v5];
  v7 = [v6 componentsSeparatedByString:@"|"];

  if ([(objc_class *)[(WFAction *)self contentItemClass] hasLibrary])
  {
    v8 = WFLocalizedStringResourceWithKey(@"get (Find/Filter search keyword)", @"get");
    v9 = [contextCopy localize:v8];
    v10 = [v7 arrayByAddingObject:v9];

    v7 = v10;
  }

  return v7;
}

- (id)localizedDescriptionResultWithContext:(id)context
{
  contextCopy = context;
  v5 = [(WFContentItemFilterAction *)self localizedPluralDescriptionWithContext:contextCopy];
  if ([(WFContentItemFilterAction *)self tableTemplateRowCount]< 2)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = @"WFContentItemFilterAction - Description result";
    v9 = @"The %@ that match the criteria.";
  }

  else
  {
    tableTemplateCompoundType = [(WFContentItemFilterAction *)self tableTemplateCompoundType];
    v7 = MEMORY[0x1E696AEC0];
    if (tableTemplateCompoundType)
    {
      v8 = @"WFContentItemFilterAction - All description result";
      v9 = @"The %@ that match all of the criteria.";
    }

    else
    {
      v8 = @"WFContentItemFilterAction - Any description result";
      v9 = @"The %@ that match any of the criteria.";
    }
  }

  v10 = WFLocalizedStringResourceWithKey(v8, v9);
  v11 = [contextCopy localize:v10];
  v12 = [v7 localizedStringWithFormat:v11, v5];

  return v12;
}

- (id)localizedDescriptionInputWithContext:(id)context
{
  contextCopy = context;
  v5 = [(WFContentItemFilterAction *)self localizedPluralDescriptionWithContext:contextCopy];
  hasLibrary = [(objc_class *)[(WFAction *)self contentItemClass] hasLibrary];
  v7 = MEMORY[0x1E696AEC0];
  if (hasLibrary)
  {
    v8 = @"WFContentItemFilterAction - Library description input";
    v9 = @"If provided, the action will search through the %@ passed as input.";
  }

  else
  {
    v8 = @"WFContentItemFilterAction - Description input";
    v9 = @"The %@ to filter through.";
  }

  v10 = WFLocalizedStringResourceWithKey(v8, v9);
  v11 = [contextCopy localize:v10];

  v12 = [v7 localizedStringWithFormat:v11, v5];

  return v12;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  v5 = [(WFContentItemFilterAction *)self localizedPluralDescriptionWithContext:contextCopy];
  hasLibrary = [(objc_class *)[(WFAction *)self contentItemClass] hasLibrary];
  v7 = MEMORY[0x1E696AEC0];
  if (hasLibrary)
  {
    v8 = WFLocalizedStringResourceWithKey(@"WFContentItemFilterAction - Library description summary", @"Searches for the %@ in your library that match the given criteria.");
    v9 = [contextCopy localize:v8];
  }

  else
  {
    v8 = WFLocalizedStringResourceWithKey(@"WFContentItemFilterAction - Description summary", @"Given a list of %@, this action returns the %@ that match the given criteria.");
    v9 = [contextCopy localize:v8];

    v12 = v5;
  }

  v10 = [v7 localizedStringWithFormat:v9, v5, v12];

  return v10;
}

- (id)localizedPluralDescriptionWithContext:(id)context
{
  contextCopy = context;
  v5 = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralFilterDescriptionWithContext:contextCopy];

  if ([(objc_class *)[(WFAction *)self contentItemClass] canLowercaseTypeDescription])
  {
    localizedLowercaseString = [v5 localizedLowercaseString];

    v5 = localizedLowercaseString;
  }

  return v5;
}

- (id)createStateForParameter:(id)parameter fromSerializedRepresentation:(id)representation
{
  parameterCopy = parameter;
  representationCopy = representation;
  v8 = [parameterCopy key];
  v9 = [v8 isEqualToString:@"WFContentItemSortOrder"];

  if (v9)
  {
    v10 = WFLocalizedContentPropertyPossibleValueMarker(representationCopy);

    v14.receiver = self;
    v14.super_class = WFContentItemFilterAction;
    v11 = [(WFAction *)&v14 createStateForParameter:parameterCopy fromSerializedRepresentation:v10];
    representationCopy = v10;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFContentItemFilterAction;
    v11 = [(WFAction *)&v13 createStateForParameter:parameterCopy fromSerializedRepresentation:representationCopy];
  }

  return v11;
}

- (id)localizedParameterSummaryStringForFilterWithMultipleFilterConditions
{
  if ([(WFContentItemFilterAction *)self tableTemplateCompoundType])
  {
    v2 = @"FIND_FILTER_TITLE_FORMAT_FILTER_ALL";
  }

  else
  {
    v2 = @"FIND_FILTER_TITLE_FORMAT_FILTER_ANY";
  }

  v3 = WFLocalizedStringResourceWithKey(v2, @"Filter ${WFContentItemInputParameter} where ${WFCompoundType} of the following are true");

  return v3;
}

- (id)localizedParameterSummaryStringForFindWithMultipleFilterConditions
{
  if ([(WFContentItemFilterAction *)self tableTemplateCompoundType])
  {
    v2 = @"FIND_FILTER_TITLE_FORMAT_FIND_ALL";
  }

  else
  {
    v2 = @"FIND_FILTER_TITLE_FORMAT_FIND_ANY";
  }

  v3 = WFLocalizedStringResourceWithKey(v2, @"Find ${WFContentItemInputParameter} where ${WFCompoundType} of the following are true");

  return v3;
}

- (id)parameterSummary
{
  workflow = [(WFAction *)self workflow];
  if (workflow)
  {
    v4 = [(WFContentItemFilterAction *)self tableTemplateRowCount]> 0;
  }

  else
  {
    v4 = 0;
  }

  if ([(objc_class *)[(WFAction *)self contentItemClass] hasLibrary])
  {
    inputParameterKey = [(WFContentItemFilterAction *)self inputParameterKey];
    v6 = [(WFContentItemFilterAction *)self parameterStateForKey:inputParameterKey];

    variable = [v6 variable];

    if (v4)
    {
      if ([(WFContentItemFilterAction *)self hasMultipleFilterConditions])
      {
        if (variable)
        {
          [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilterWithMultipleFilterConditions];
        }

        else
        {
          [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFindWithMultipleFilterConditions];
        }
      }

      else if (variable)
      {
        [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilterWithFilterConditions];
      }

      else
      {
        [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFindWithFilterConditions];
      }
    }

    else if (variable)
    {
      [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilter];
    }

    else
    {
      [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFind];
    }
    v9 = ;
    v10 = v9;
  }

  else
  {
    if (v4)
    {
      if ([(WFContentItemFilterAction *)self hasMultipleFilterConditions])
      {
        [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilterWithMultipleFilterConditions];
      }

      else
      {
        [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilterWithFilterConditions];
      }
      localizedParameterSummaryStringForFilter = ;
    }

    else
    {
      localizedParameterSummaryStringForFilter = [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilter];
    }

    v10 = localizedParameterSummaryStringForFilter;
  }

  v11 = [[WFActionParameterSummary alloc] initWithString:v10];

  return v11;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = WFContentItemFilterAction;
  v5 = [(WFAction *)&v14 localizedNameWithContext:contextCopy];
  workflow = [(WFAction *)self workflow];
  if (workflow)
  {
    v7 = workflow;
    tableTemplateRowCount = [(WFContentItemFilterAction *)self tableTemplateRowCount];

    if (tableTemplateRowCount >= 1)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = WFLocalizedStringResourceWithKey(@"%@ Where", @"%@ Where");
      v11 = [contextCopy localize:v10];
      v12 = [v9 localizedStringWithFormat:v11, v5];

      v5 = v12;
    }
  }

  return v5;
}

@end