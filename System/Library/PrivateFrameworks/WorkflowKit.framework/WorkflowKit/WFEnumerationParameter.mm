@interface WFEnumerationParameter
- (BOOL)parameterStateIsValid:(id)a3;
- (BOOL)preferContextMenu;
- (BOOL)wf_usesGroupTableViewStyle;
- (BOOL)wf_usesTogglesForSelection;
- (NSArray)displayNames;
- (NSArray)possibleStatesForLocalization;
- (NSArray)staticPossibleStates;
- (NSArray)subtitles;
- (NSArray)symbolNames;
- (WFEnumerationParameter)initWithDefinition:(id)a3;
- (id)accessoryImageForPossibleState:(id)a3;
- (id)localizedLabelForMultipleState:(id)a3;
- (id)localizedLabelForPossibleState:(id)a3;
- (id)localizedSubtitleLabelForPossibleState:(id)a3;
- (id)localizedTitleForButtonWithState:(id)a3;
- (id)parameterStateFromDialogResponse:(id)a3;
- (id)statesForMultipleStateLabelWithStates:(id)a3;
- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6;
- (void)possibleStatesDidChange;
- (void)wf_loadStatesWithSearchTerm:(id)a3 completionHandler:(id)a4;
@end

@implementation WFEnumerationParameter

- (NSArray)staticPossibleStates
{
  os_unfair_lock_lock(&self->_definitionLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__WFEnumerationParameter_staticPossibleStates__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  staticPossibleStates = self->_staticPossibleStates;
  if (staticPossibleStates)
  {
    goto LABEL_4;
  }

  v5 = [(WFParameter *)self definition];
  v6 = [v5 objectForKey:@"Items"];
  v7 = objc_opt_class();
  v8 = WFEnforceClass_1501(v6, v7);

  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__WFEnumerationParameter_staticPossibleStates__block_invoke_2;
    v13[3] = &unk_1E83736E0;
    v13[4] = self;
    v9 = [v8 if_compactMap:v13];
    v10 = self->_staticPossibleStates;
    self->_staticPossibleStates = v9;

    staticPossibleStates = self->_staticPossibleStates;
LABEL_4:
    v11 = staticPossibleStates;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_5:
  v3[2](v3);

  return v11;
}

- (NSArray)displayNames
{
  os_unfair_lock_lock(&self->_definitionLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__WFEnumerationParameter_displayNames__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  displayNames = self->_displayNames;
  if (!displayNames)
  {
    v5 = [(WFParameter *)self definition];
    v6 = [v5 objectForKey:@"Items"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);

    v9 = [(WFParameter *)self definition];
    v10 = [v9 objectForKey:@"ItemDisplayNames"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);

    v13 = [v8 count];
    v14 = [v12 count];
    v15 = objc_opt_new();
    LOBYTE(v14) = v13 == v14;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __38__WFEnumerationParameter_displayNames__block_invoke_2;
    v22[3] = &unk_1E8373708;
    v16 = v15;
    v23 = v16;
    v25 = v14;
    v17 = v12;
    v24 = v17;
    [v8 enumerateObjectsUsingBlock:v22];
    v18 = self->_displayNames;
    self->_displayNames = v16;
    v19 = v16;

    displayNames = self->_displayNames;
  }

  v20 = displayNames;
  v3[2](v3);

  return v20;
}

- (NSArray)subtitles
{
  os_unfair_lock_lock(&self->_definitionLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__WFEnumerationParameter_subtitles__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  subtitles = self->_subtitles;
  if (!subtitles)
  {
    v5 = [(WFParameter *)self definition];
    v6 = [v5 objectForKey:@"ItemSubtitles"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);

    v9 = [(WFParameter *)self definition];
    v10 = [v9 objectForKey:@"Items"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);

    v13 = [v8 count];
    if (v13 == [v12 count])
    {
      objc_storeStrong(&self->_subtitles, v8);
    }

    subtitles = self->_subtitles;
  }

  v14 = subtitles;
  v3[2](v3);

  return v14;
}

- (id)parameterStateFromDialogResponse:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v4;
    v6 = [v4 selectedItems];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = objc_alloc([(WFEnumerationParameter *)self singleStateClass]);
          v13 = [v11 serializedPossibleState];
          v14 = [v12 initWithSerializedRepresentation:v13 variableProvider:0 parameter:self];

          if (v14)
          {
            [v5 addObject:v14];
          }

          else
          {
            v15 = getWFWorkflowExecutionLogObject();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              v16 = [v11 serializedPossibleState];
              *buf = 136315394;
              v27 = "[WFEnumerationParameter parameterStateFromDialogResponse:]";
              v28 = 2112;
              v29 = v16;
              _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s Failed to instantiate selected parameter state from serializedRepresentation: %@", buf, 0x16u);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v8);
    }

    if ([(WFParameter *)self allowsMultipleValues])
    {
      v17 = [objc_alloc(-[WFParameter stateClass](self "stateClass"))];
    }

    else
    {
      v17 = [v5 firstObject];
    }

    v18 = v17;
    v4 = v21;
  }

  else
  {

    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(WFEnumerationParameter *)self liveUpdatesPossibleStatesInEditor])
  {
    v13[2](v13, 0);
  }

  else
  {
    v14 = [(WFParameter *)self allowsMultipleValues];
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v28 = 0;
    v15 = [(WFEnumerationParameter *)self possibleStates];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __99__WFEnumerationParameter_createDialogRequestWithAttribution_defaultState_prompt_completionHandler___block_invoke;
    v22[3] = &unk_1E8373780;
    v26 = v14;
    v24 = self;
    v25 = v27;
    v23 = v11;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__WFEnumerationParameter_createDialogRequestWithAttribution_defaultState_prompt_completionHandler___block_invoke_3;
    v16[3] = &unk_1E83737A8;
    v20 = v13;
    v21 = v14;
    v17 = v10;
    v18 = v12;
    v19 = self;
    [v15 if_mapAsynchronously:v22 completionHandler:v16];

    _Block_object_dispose(v27, 8);
  }
}

void __99__WFEnumerationParameter_createDialogRequestWithAttribution_defaultState_prompt_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (*(a1 + 56) == 1 && [v6 stateIsEquivalent:*(a1 + 32)] && (v8 = *(*(a1 + 48) + 8), (*(v8 + 24) & 1) == 0))
  {
    v9 = 1;
    *(v8 + 24) = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 serializedRepresentation];
  v11 = [*(a1 + 40) localizedLabelForPossibleState:v6];
  v12 = [*(a1 + 40) localizedSubtitleLabelForPossibleState:v6];
  v13 = [*(a1 + 40) accessoryImageForPossibleState:v6];
  v14 = [objc_alloc(MEMORY[0x1E6996E88]) initWithTitle:v11 subtitle:v12 image:v13];
  v15 = [MEMORY[0x1E6996E80] itemWithObject:v14];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__WFEnumerationParameter_createDialogRequestWithAttribution_defaultState_prompt_completionHandler___block_invoke_2;
  v19[3] = &unk_1E8373758;
  v23 = v9;
  v20 = v15;
  v21 = v10;
  v22 = v7;
  v16 = v7;
  v17 = v10;
  v18 = v15;
  [v18 encodedTypedValueWithCompletion:v19];
}

void __99__WFEnumerationParameter_createDialogRequestWithAttribution_defaultState_prompt_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = MEMORY[0x1E69E09C8];
  v5 = a2;
  v6 = [v4 alloc];
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = [*(a1 + 48) key];
  v10 = [v6 initWithItems:v5 allowsMultipleSelection:v7 message:0 attribution:v8 prompt:v9 done:0 parameterKey:v11];

  (*(v3 + 16))(v3, v10);
}

void __99__WFEnumerationParameter_createDialogRequestWithAttribution_defaultState_prompt_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[WFDialogContentListItem alloc] initWithContentItem:*(a1 + 32) encodedTypedValue:v3 selected:*(a1 + 56) serializedPossibleState:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

- (void)possibleStatesDidChange
{
  [(WFParameter *)self stateValidityCriteriaDidChange];

  [(WFParameter *)self attributesDidChange];
}

- (BOOL)parameterStateIsValid:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 variable];

  if (v6)
  {
    v7 = [(WFParameter *)self supportedVariableTypes];
    v8 = [v5 variable];
    v9 = [v8 type];
    v10 = [v7 containsObject:v9];

LABEL_21:
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(WFParameter *)self allowsMultipleValues])
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"WFEnumerationParameter.m" lineNumber:331 description:@"Multiple state found in parameter that doesn't support multiple values"];
    }

    [v5 parameterStates];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v31 = 0u;
    v11 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [(WFEnumerationParameter *)self possibleStates];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __48__WFEnumerationParameter_parameterStateIsValid___block_invoke;
          v27[3] = &unk_1E837AAC8;
          v27[4] = v15;
          v17 = [v16 indexOfObjectPassingTest:v27];

          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = 0;
            goto LABEL_20;
          }
        }

        v12 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v10 = 1;
    }

    else
    {
      v10 = 1;
    }

LABEL_20:

    goto LABEL_21;
  }

  v18 = [(WFEnumerationParameter *)self possibleStates];
  v19 = [v18 containsObject:v5];

  if (v19)
  {
    v10 = 1;
  }

  else
  {
    v20 = [(WFEnumerationParameter *)self possibleStates];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __48__WFEnumerationParameter_parameterStateIsValid___block_invoke_2;
    v25[3] = &unk_1E837AAC8;
    v26 = v5;
    v21 = [v20 indexesOfObjectsPassingTest:v25];

    v10 = [v21 count] == 1;
  }

LABEL_22:

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)preferContextMenu
{
  if ([(WFEnumerationParameter *)self preferParameterValuePicker])
  {
    return 0;
  }

  else
  {
    return ![(WFParameter *)self allowsMultipleValues];
  }
}

- (id)accessoryImageForPossibleState:(id)a3
{
  v4 = a3;
  v5 = [(WFEnumerationParameter *)self staticPossibleStates];
  v6 = [(WFEnumerationParameter *)self symbolNames];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v5 indexOfObject:v4];
    if (v9 >= [v7 count])
    {
      v10 = 0;
    }

    else
    {
      v10 = [v7 objectAtIndexedSubscript:v9];
      if (([v10 wf_isEmpty] & 1) == 0)
      {
        v8 = [MEMORY[0x1E69E0B58] systemImageNamed:v10 configuration:0 renderingMode:2];
LABEL_8:

        goto LABEL_9;
      }
    }

    v8 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

- (id)localizedSubtitleLabelForPossibleState:(id)a3
{
  v4 = a3;
  v5 = [(WFEnumerationParameter *)self staticPossibleStates];
  v6 = [(WFEnumerationParameter *)self subtitles];
  v7 = [v5 indexOfObject:v4];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v7 >= [v6 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndex:v7];
  }

  return v8;
}

- (id)statesForMultipleStateLabelWithStates:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__WFEnumerationParameter_statesForMultipleStateLabelWithStates___block_invoke;
  v5[3] = &unk_1E8373730;
  v5[4] = self;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __64__WFEnumerationParameter_statesForMultipleStateLabelWithStates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v9 = [v6 possibleStates];
  v10 = [v9 indexOfObject:v8];

  v11 = [v5 numberWithUnsignedInteger:v10];
  v12 = MEMORY[0x1E696AD98];
  v13 = [*(a1 + 32) possibleStates];
  v14 = [v13 indexOfObject:v7];

  v15 = [v12 numberWithUnsignedInteger:v14];
  v16 = [v11 compare:v15];

  return v16;
}

- (id)localizedLabelForMultipleState:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 parameterStates];
  v6 = MEMORY[0x1E695DFB8];
  v7 = [(WFEnumerationParameter *)self possibleStates];
  v8 = [v6 orderedSetWithArray:v7];

  if (![v5 count])
  {
    v11 = WFLocalizedString(@"Choose");
LABEL_5:
    v10 = v11;
    goto LABEL_22;
  }

  if ([v5 count] != 1)
  {
    v12 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    v13 = [v8 set];
    if ([v12 isEqualToSet:v13])
    {
      v14 = [v5 count];

      if (v14 >= 3)
      {
        v11 = [(WFEnumerationParameter *)self localizedLabelForMultipleCompleteState:v4];
        goto LABEL_5;
      }
    }

    else
    {
    }

    v9 = [(WFEnumerationParameter *)self statesForMultipleStateLabelWithStates:v5];
    v15 = [v9 objectAtIndexedSubscript:0];
    v16 = [(WFEnumerationParameter *)self localizedLabelForPossibleState:v15 inMultipleState:v4];

    if ([v9 count] == 2)
    {
      v17 = [v9 objectAtIndexedSubscript:1];
      [(WFEnumerationParameter *)self localizedLabelForPossibleState:v17 inMultipleState:v4];
    }

    else
    {
      v18 = MEMORY[0x1E696AEC0];
      v17 = WFLocalizedPluralString(@"%ld more");
      [v18 localizedStringWithFormat:v17, objc_msgSend(v9, "count") - 1];
    }
    v19 = ;

    if (v16 && v19)
    {
      v20 = MEMORY[0x1E696AD08];
      v25[0] = v16;
      v25[1] = v19;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      v10 = [v20 localizedStringByJoiningStrings:v21];
    }

    else
    {
      if (v16)
      {
        v22 = v16;
      }

      else
      {
        v22 = v19;
      }

      v10 = v22;
    }

    goto LABEL_21;
  }

  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = [(WFEnumerationParameter *)self localizedTitleForButtonWithState:v9];
LABEL_21:

LABEL_22:
  v23 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)localizedLabelForPossibleState:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([(WFParameter *)self doNotLocalizeValues])
    {
      goto LABEL_10;
    }

    v6 = [(WFEnumerationParameter *)self staticPossibleStates];
    v7 = [(WFEnumerationParameter *)self displayNames];
    v8 = v7;
    v9 = 0;
    if (v6 && v7)
    {
      v10 = [v6 indexOfObject:v4];
      if (v10 >= [v8 count])
      {
        v9 = 0;
      }

      else
      {
        v9 = [v8 objectAtIndexedSubscript:v10];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v5 = v9;
LABEL_10:

  return v5;
}

- (id)localizedTitleForButtonWithState:(id)a3
{
  v4 = a3;
  if ([(WFParameter *)self allowsMultipleValues]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFEnumerationParameter *)self localizedLabelForMultipleState:v4];
  }

  else
  {
    v5 = [(WFEnumerationParameter *)self localizedLabelForPossibleState:v4];
  }

  v6 = v5;

  return v6;
}

- (NSArray)possibleStatesForLocalization
{
  if ([(WFEnumerationParameter *)self providesLocalizedValuesForSummary])
  {
    v3 = [(WFEnumerationParameter *)self staticPossibleStates];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (NSArray)symbolNames
{
  os_unfair_lock_lock(&self->_definitionLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__WFEnumerationParameter_symbolNames__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  symbolNames = self->_symbolNames;
  if (!symbolNames)
  {
    v5 = [(WFParameter *)self definition];
    v6 = [v5 objectForKey:@"ItemIconNames"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);

    v9 = [(WFParameter *)self definition];
    v10 = [v9 objectForKey:@"Items"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);

    v13 = [v8 count];
    if (v13 == [v12 count])
    {
      objc_storeStrong(&self->_symbolNames, v8);
    }

    symbolNames = self->_symbolNames;
  }

  v14 = symbolNames;
  v3[2](v3);

  return v14;
}

void __38__WFEnumerationParameter_displayNames__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E695DF58];
    v6 = v13;
    v7 = [v5 autoupdatingCurrentLocale];
    [v6 setLocale:v7];

    v8 = [v6 localize];

    [*(a1 + 32) addObject:v8];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a1 + 48) == 1)
    {
      v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 localize];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = 0;
          goto LABEL_12;
        }

        v10 = v9;
      }

      v11 = v10;
LABEL_12:
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v13;
      }

      [*(a1 + 32) addObject:v12];

      goto LABEL_16;
    }

    [*(a1 + 32) addObject:v13];
  }

LABEL_16:
}

id __46__WFEnumerationParameter_staticPossibleStates__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 defaultValue];
    [*(a1 + 32) singleStateClass];
    v5 = [objc_alloc(objc_opt_class()) initWithValue:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) singleStateClass];
      v5 = [objc_alloc(objc_opt_class()) initWithValue:v3];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (WFEnumerationParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = WFEnumerationParameter;
  v5 = [(WFParameter *)&v32 initWithDefinition:v4];
  v6 = v5;
  if (v5)
  {
    if ([(WFParameter *)v5 allowsMultipleValues])
    {
      v6->_alwaysShowsButton = 1;
    }

    else
    {
      v7 = [v4 objectForKey:@"AlwaysShowsButton"];
      v8 = objc_opt_class();
      v9 = WFEnforceClass_1501(v7, v8);
      v6->_alwaysShowsButton = [v9 BOOLValue];
    }

    v10 = [v4 objectForKey:@"HideClearButton"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    v6->_hideClearButton = [v12 BOOLValue];

    v13 = [v4 objectForKey:@"PreferParameterValuePicker"];
    v14 = objc_opt_class();
    v15 = WFEnforceClass_1501(v13, v14);
    v6->_prefersParameterValuePicker = [v15 BOOLValue];

    v6->_definitionLock._os_unfair_lock_opaque = 0;
    v16 = [v4 objectForKey:@"ProvidesLocalizedValues"];
    v17 = objc_opt_class();
    v18 = WFEnforceClass_1501(v16, v17);
    v19 = v18;
    if (!v18)
    {
      v18 = MEMORY[0x1E695E118];
    }

    v6->_providesLocalizedValuesForSummary = [v18 BOOLValue];

    v20 = [v4 objectForKey:@"SelectionType"];
    v21 = objc_opt_class();
    v22 = WFEnforceClass_1501(v20, v21);
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = @"Checkmark";
    }

    objc_storeStrong(&v6->_selectionType, v24);

    v25 = [v4 objectForKey:@"TableViewStyle"];
    v26 = objc_opt_class();
    v27 = WFEnforceClass_1501(v25, v26);
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = @"Plain";
    }

    objc_storeStrong(&v6->_tableViewStyle, v29);

    v30 = v6;
  }

  return v6;
}

- (void)wf_loadStatesWithSearchTerm:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x1E696E918]);
  v7 = [(WFEnumerationParameter *)self possibleStates];
  v8 = [v6 initWithItems:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__WFEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke;
  v11[3] = &unk_1E837E1F8;
  v12 = v8;
  v13 = v5;
  v9 = v8;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

- (BOOL)wf_usesGroupTableViewStyle
{
  v2 = [(WFEnumerationParameter *)self tableViewStyle];
  v3 = [v2 isEqualToString:@"InsetGrouped"];

  return v3;
}

- (BOOL)wf_usesTogglesForSelection
{
  v2 = [(WFEnumerationParameter *)self selectionType];
  v3 = [v2 isEqualToString:@"Toggle"];

  return v3;
}

@end