@interface WFModuleSummaryTemplateBuilder
+ (BOOL)formatString:(id)string containsParameterKey:(id)key;
+ (id)slotsForMultipleParameterState:(id)state inParameter:(id)parameter;
- (NSArray)parameterKeys;
- (WFModuleSummaryTemplateBuilder)initWithFormatString:(id)string;
- (id)buildContentWithParameters:(id)parameters editableParameters:(id)editableParameters parameterStates:(id)states variableBeingEdited:(id)edited;
- (id)contentByEnumeratingSummaryWithParameterSlotBuilder:(id)builder;
- (void)itemizeFormatStringIfNeeded;
@end

@implementation WFModuleSummaryTemplateBuilder

- (id)buildContentWithParameters:(id)parameters editableParameters:(id)editableParameters parameterStates:(id)states variableBeingEdited:(id)edited
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  editableParametersCopy = editableParameters;
  statesCopy = states;
  editedCopy = edited;
  v13 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = parametersCopy;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v20 = [v19 key];
        [v13 setObject:v19 forKey:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v16);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __116__WFModuleSummaryTemplateBuilder_buildContentWithParameters_editableParameters_parameterStates_variableBeingEdited___block_invoke;
  v28[3] = &unk_279EDB9F0;
  v29 = v13;
  v30 = editableParametersCopy;
  v31 = statesCopy;
  v32 = selfCopy;
  v33 = editedCopy;
  v21 = editedCopy;
  v22 = statesCopy;
  v23 = editableParametersCopy;
  v24 = v13;
  v25 = [(WFModuleSummaryTemplateBuilder *)selfCopy contentByEnumeratingSummaryWithParameterSlotBuilder:v28];

  return v25;
}

id __116__WFModuleSummaryTemplateBuilder_buildContentWithParameters_editableParameters_parameterStates_variableBeingEdited___block_invoke(id *a1, void *a2)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  if (![v4 conformsToProtocol:&unk_2883D7328])
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v47 = "[WFModuleSummaryTemplateBuilder buildContentWithParameters:editableParameters:parameterStates:variableBeingEdited:]_block_invoke";
      v48 = 2114;
      v49 = v3;
      _os_log_impl(&dword_2743F0000, v5, OS_LOG_TYPE_FAULT, "%s Did not find matching parameter for ${%{public}@}", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v5 = v4;
  v37 = [a1[5] containsObject:v5];
  v6 = [a1[6] objectForKey:v3];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_29;
    }

    if ([v5 allowsMultipleValues])
    {
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [objc_opt_class() slotsForMultipleParameterState:v6 inParameter:v5];
          if (v7)
          {
            goto LABEL_21;
          }
        }
      }

      v13 = [v5 moduleSummarySlotForState:0];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 identifier];
        v16 = [v15 identifierBySettingArrayIndex:0];
        [v14 setIdentifier:v16];

        v52[0] = v14;
        v17 = MEMORY[0x277CBEA60];
        v18 = v52;
LABEL_18:
        v7 = [v17 arrayWithObjects:v18 count:1];
        goto LABEL_20;
      }
    }

    else
    {
      v19 = [v5 moduleSummarySlotForState:v6];
      v14 = v19;
      if (v19)
      {
        v51 = v19;
        v17 = MEMORY[0x277CBEA60];
        v18 = &v51;
        goto LABEL_18;
      }
    }

    v7 = 0;
LABEL_20:

    if (v7)
    {
      goto LABEL_21;
    }

LABEL_29:

LABEL_30:
    obj = 0;
    goto LABEL_31;
  }

  v7 = [v5 moduleSummarySlotsForState:v6];
  v8 = [v7 firstObject];
  v9 = [v8 contentAttributedString];
  v10 = [v9 length] != 0;

  if (WFShouldShowAddButtonForParameter(v5, v10, v6, [v7 count]))
  {
    v11 = [MEMORY[0x277D7D7B0] addingSlotWithKey:@"_array_add_"];
    v12 = [v7 arrayByAddingObject:v11];

    v7 = v12;
  }

  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_21:
  v32 = v4;
  v36 = v5;
  v33 = v3;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v7;
  v20 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v35 = *v43;
    v22 = *MEMORY[0x277D74060];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v42 + 1) + 8 * i);
        [v24 setEnabled:{objc_msgSend(v24, "isEnabled") & v37}];
        v25 = [v24 identifier];
        v26 = [v36 key];
        v27 = [v25 identifierBySettingParameterKey:v26];
        [v24 setIdentifier:v27];

        v28 = [v24 contentAttributedString];
        v29 = [v24 contentAttributedString];
        v30 = [v29 length];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __116__WFModuleSummaryTemplateBuilder_buildContentWithParameters_editableParameters_parameterStates_variableBeingEdited___block_invoke_2;
        v38[3] = &unk_279EDB9C8;
        v38[4] = v24;
        v39 = a1[5];
        v40 = v36;
        v41 = a1[8];
        [v28 enumerateAttribute:v22 inRange:0 options:v30 usingBlock:{0, v38}];
      }

      v21 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v21);
  }

  v4 = v32;
  v3 = v33;
  v5 = v36;
LABEL_31:

  return obj;
}

void __116__WFModuleSummaryTemplateBuilder_buildContentWithParameters_editableParameters_parameterStates_variableBeingEdited___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v11;
  if (isKindOfClass)
  {
    v5 = v11;
    if ([*(a1 + 32) isEnabled])
    {
      v6 = [*(a1 + 40) containsObject:*(a1 + 48)];
    }

    else
    {
      v6 = 0;
    }

    [v5 setEnabled:v6];
    v7 = [v5 token];
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

    v10 = [v9 variable];

    [v5 setSelected:v10 == *(a1 + 56)];
    v4 = v11;
  }
}

- (id)contentByEnumeratingSummaryWithParameterSlotBuilder:(id)builder
{
  v23 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  [(WFModuleSummaryTemplateBuilder *)self itemizeFormatStringIfNeeded];
  formatItems = [(WFModuleSummaryTemplateBuilder *)self formatItems];
  v6 = [formatItems count];

  if (v6)
  {
    v7 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [(WFModuleSummaryTemplateBuilder *)self formatItems];
    v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [(NSArray *)self->_parameterKeys objectAtIndex:v10];
            v15 = builderCopy[2](builderCopy, v14);
            [v7 addObjectsFromArray:v15];

            ++v10;
          }

          else
          {
            [v7 addObject:v13];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)itemizeFormatStringIfNeeded
{
  formatString = [(WFModuleSummaryTemplateBuilder *)self formatString];
  if ([formatString length])
  {
    formatItems = [(WFModuleSummaryTemplateBuilder *)self formatItems];
    v5 = [formatItems count];

    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = objc_opt_new();
      _intents_sharedFormatRegularExpression = [MEMORY[0x277CCAC68] _intents_sharedFormatRegularExpression];
      v22 = 0;
      v23 = &v22;
      v24 = 0x3010000000;
      v26 = 0;
      v27 = 0;
      v25 = "";
      v9 = [formatString length];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __61__WFModuleSummaryTemplateBuilder_itemizeFormatStringIfNeeded__block_invoke;
      v17 = &unk_279EDB9A0;
      v21 = &v22;
      v10 = formatString;
      v18 = v10;
      v11 = v6;
      v19 = v11;
      v12 = v7;
      v20 = v12;
      [_intents_sharedFormatRegularExpression enumerateMatchesInString:v10 options:0 range:0 usingBlock:{v9, &v14}];
      v13 = [v10 substringFromIndex:{v23[5] + v23[4], v14, v15, v16, v17}];
      if ([v13 length])
      {
        [v11 addObject:v13];
      }

      [(WFModuleSummaryTemplateBuilder *)self setFormatItems:v11];
      [(WFModuleSummaryTemplateBuilder *)self setParameterKeys:v12];

      _Block_object_dispose(&v22, 8);
    }
  }
}

void __61__WFModuleSummaryTemplateBuilder_itemizeFormatStringIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 56) + 8) + 40) + *(*(*(a1 + 56) + 8) + 32);
  v4 = *(a1 + 32);
  v5 = a2;
  v16 = [v4 substringWithRange:{v3, objc_msgSend(v5, "range") - v3}];
  if ([v16 length])
  {
    [*(a1 + 40) addObject:v16];
  }

  v6 = *(a1 + 32);
  v7 = [v5 rangeAtIndex:1];
  v9 = [v6 substringWithRange:{v7, v8}];
  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277CBEB68] null];
  [v10 addObject:v11];

  [*(a1 + 48) addObject:v9];
  v12 = [v5 range];
  v14 = v13;

  v15 = *(*(a1 + 56) + 8);
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
}

- (NSArray)parameterKeys
{
  [(WFModuleSummaryTemplateBuilder *)self itemizeFormatStringIfNeeded];
  parameterKeys = self->_parameterKeys;

  return parameterKeys;
}

- (WFModuleSummaryTemplateBuilder)initWithFormatString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = WFModuleSummaryTemplateBuilder;
  v5 = [(WFModuleSummaryTemplateBuilder *)&v10 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    formatString = v5->_formatString;
    v5->_formatString = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)slotsForMultipleParameterState:(id)state inParameter:(id)parameter
{
  v31[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  parameterCopy = parameter;
  variable = [stateCopy variable];

  if (variable)
  {
    parameterStates = [parameterCopy moduleSummarySlotForState:0];
    variable2 = [stateCopy variable];
    [parameterStates populateWith:variable2];

    if (parameterStates)
    {
      v31[0] = parameterStates;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  parameterStates = [stateCopy parameterStates];
  if (![parameterStates count] && !objc_msgSend(parameterCopy, "isRangedSizeArray"))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_16;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__WFModuleSummaryTemplateBuilder_slotsForMultipleParameterState_inParameter___block_invoke;
  v24[3] = &unk_279EDBA18;
  v10 = parameterCopy;
  v25 = v10;
  v26 = &v27;
  v11 = [parameterStates if_compactMap:v24];
  if ([v10 isRangedSizeArray])
  {
    v12 = [v10 arraySizeRangeForCHSWidgetFamily:3];
    if ([v11 count] < v12)
    {
      v13 = [v11 count];
      v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:v12 - v13];
      v15 = [v11 count];
      if (v15 < v12)
      {
        do
        {
          v16 = [v10 moduleSummarySlotForState:0];
          identifier = [v16 identifier];
          v18 = [identifier identifierBySettingArrayIndex:v15];
          [v16 setIdentifier:v18];

          [v16 setEnabled:{v15 == objc_msgSend(v11, "count")}];
          [v14 addObject:v16];

          ++v15;
        }

        while (v12 != v15);
      }

      v19 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
      v20 = [v19 arrayByAddingObjectsFromArray:v14];

      v11 = v20;
    }
  }

  if (WFShouldShowAddButtonForParameter(v10, *(v28 + 24), stateCopy, [v11 count]))
  {
    v21 = [MEMORY[0x277D7D7B0] addingSlotWithKey:@"_array_add_"];
    v9 = [v11 arrayByAddingObject:v21];
  }

  else
  {
    v9 = v11;
  }

  _Block_object_dispose(&v27, 8);
LABEL_16:

  return v9;
}

id __77__WFModuleSummaryTemplateBuilder_slotsForMultipleParameterState_inParameter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) moduleSummarySlotForState:a2];
  v6 = [v5 identifier];
  v7 = [v6 identifierBySettingArrayIndex:a3];
  [v5 setIdentifier:v7];

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v8 = [v5 contentAttributedString];
    *(*(*(a1 + 40) + 8) + 24) = [v8 length] != 0;
  }

  return v5;
}

+ (BOOL)formatString:(id)string containsParameterKey:(id)key
{
  v5 = MEMORY[0x277CCACA8];
  stringCopy = string;
  v7 = [v5 stringWithFormat:@"${%@}", key];
  v8 = [stringCopy rangeOfString:v7 options:2];

  return v8 != 0x7FFFFFFFFFFFFFFFLL;
}

@end