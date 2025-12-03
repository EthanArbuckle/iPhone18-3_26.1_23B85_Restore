@interface WFMultipleValueParameterState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (NSArray)parameterStates;
- (WFMultipleValueParameterState)initWithParameterStates:(id)states;
- (WFMultipleValueParameterState)initWithValue:(id)value;
- (id)containedVariables;
- (id)stateByAppendingValue:(id)value;
- (id)stateByInsertingValueAtIndex:(unint64_t)index withValue:(id)value;
- (id)stateByRemovingValueAtIndex:(unint64_t)index;
- (id)stateByReplacingValueAtIndex:(unint64_t)index withValue:(id)value;
- (id)stateByReplacingValueAtIndexes:(id)indexes withValues:(id)values;
- (id)stateByReplacingVariable:(id)variable withVariable:(id)withVariable;
- (id)stateByTogglingValue:(id)value;
- (void)finishProcessingWithContent:(id)content error:(id)error forParameterStateClass:(Class)class valueHandler:(id)handler;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFMultipleValueParameterState

- (id)stateByInsertingValueAtIndex:(unint64_t)index withValue:(id)value
{
  valueCopy = value;
  value = [(WFVariableSubstitutableParameterState *)self value];
  v8 = [value mutableCopy];

  v9 = [WFMultipleValueParameterStateEntry alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v11 = [(WFMultipleValueParameterStateEntry *)v9 initWithIdentity:uUID parameterState:valueCopy];

  if ([v8 count] <= index)
  {
    [v8 addObject:v11];
  }

  else
  {
    [v8 insertObject:v11 atIndex:index];
  }

  v12 = [objc_alloc(objc_opt_class()) initWithValue:v8];

  return v12;
}

- (id)stateByRemovingValueAtIndex:(unint64_t)index
{
  value = [(WFVariableSubstitutableParameterState *)self value];
  v5 = [value mutableCopy];

  [v5 removeObjectAtIndex:index];
  v6 = [objc_alloc(objc_opt_class()) initWithValue:v5];

  return v6;
}

- (id)stateByAppendingValue:(id)value
{
  valueCopy = value;
  v5 = objc_alloc(objc_opt_class());
  value = [(WFVariableSubstitutableParameterState *)self value];
  v7 = [WFMultipleValueParameterStateEntry alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v9 = [(WFMultipleValueParameterStateEntry *)v7 initWithIdentity:uUID parameterState:valueCopy];

  v10 = [value arrayByAddingObject:v9];
  v11 = [v5 initWithValue:v10];

  return v11;
}

- (id)stateByReplacingValueAtIndexes:(id)indexes withValues:(id)values
{
  valuesCopy = values;
  indexesCopy = indexes;
  value = [(WFVariableSubstitutableParameterState *)self value];
  v9 = [value mutableCopy];

  v10 = [valuesCopy if_map:&__block_literal_global_247];

  [v9 replaceObjectsAtIndexes:indexesCopy withObjects:v10];
  v11 = [objc_alloc(objc_opt_class()) initWithValue:v9];

  return v11;
}

WFMultipleValueParameterStateEntry *__75__WFMultipleValueParameterState_stateByReplacingValueAtIndexes_withValues___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WFMultipleValueParameterStateEntry alloc];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [(WFMultipleValueParameterStateEntry *)v3 initWithIdentity:v4 parameterState:v2];

  return v5;
}

- (id)stateByReplacingValueAtIndex:(unint64_t)index withValue:(id)value
{
  valueCopy = value;
  value = [(WFVariableSubstitutableParameterState *)self value];
  v8 = [value mutableCopy];

  v9 = [WFMultipleValueParameterStateEntry alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v11 = [(WFMultipleValueParameterStateEntry *)v9 initWithIdentity:uUID parameterState:valueCopy];

  [v8 replaceObjectAtIndex:index withObject:v11];
  v12 = [objc_alloc(objc_opt_class()) initWithValue:v8];

  return v12;
}

- (id)stateByTogglingValue:(id)value
{
  valueCopy = value;
  parameterStates = [(WFMultipleValueParameterState *)self parameterStates];
  v6 = [parameterStates indexOfObject:valueCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = objc_alloc(objc_opt_class());
    value = [(WFVariableSubstitutableParameterState *)self value];
    v9 = [WFMultipleValueParameterStateEntry alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v11 = [(WFMultipleValueParameterStateEntry *)v9 initWithIdentity:uUID parameterState:valueCopy];
    v12 = [value arrayByAddingObject:v11];
    v13 = [v7 initWithValue:v12];
  }

  else
  {
    value2 = [(WFVariableSubstitutableParameterState *)self value];
    value = [value2 mutableCopy];

    [value removeObjectAtIndex:v6];
    if ([value count])
    {
      v13 = [objc_alloc(objc_opt_class()) initWithValue:value];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)finishProcessingWithContent:(id)content error:(id)error forParameterStateClass:(Class)class valueHandler:(id)handler
{
  contentCopy = content;
  errorCopy = error;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!contentCopy)
  {
    v14 = *(handlerCopy + 2);
LABEL_8:
    v14();
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = v12[2];
    goto LABEL_8;
  }

  processingValueClass = [(objc_class *)class processingValueClass];
  if (processingValueClass == objc_opt_class())
  {
    v14 = v12[2];
    goto LABEL_8;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__WFMultipleValueParameterState_finishProcessingWithContent_error_forParameterStateClass_valueHandler___block_invoke;
  v15[3] = &unk_1E8378790;
  v16 = v12;
  [contentCopy getObjectRepresentations:v15 forClass:processingValueClass];

LABEL_9:
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
  aBlock[3] = &unk_1E8376300;
  v11 = contextCopy;
  v82 = v11;
  v12 = valueHandlerCopy;
  v83 = v12;
  v13 = _Block_copy(aBlock);
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (!variable)
  {
    v72[0] = 0;
    v72[1] = v72;
    v72[2] = 0x2020000000;
    v73 = 0;
    parameter = [v11 parameter];
    singleStateClass = [parameter singleStateClass];

    if (![singleStateClass isSubclassOfClass:objc_opt_class()])
    {
      parameterStates = [(WFMultipleValueParameterState *)self parameterStates];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_5_235;
      v46[3] = &unk_1E8376438;
      v47 = v11;
      selfCopy = self;
      v50 = v72;
      v49 = handlerCopy;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_12;
      v43[3] = &unk_1E8376460;
      v45 = v72;
      v44 = v13;
      [parameterStates if_flatMapAsynchronously:v46 completionHandler:v43];

      v38 = v47;
LABEL_25:

      _Block_object_dispose(v72, 8);
      goto LABEL_26;
    }

    parameterStates2 = [(WFMultipleValueParameterState *)self parameterStates];
    v23 = objc_opt_new();
    v24 = objc_opt_new();
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__18191;
    v70 = __Block_byref_object_dispose__18192;
    v71 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 1;
    parameterStates3 = [(WFMultipleValueParameterState *)self parameterStates];
    v26 = [parameterStates3 count];

    if (!v26)
    {
      (*(v13 + 2))(v13, v23, 0);
      _Block_object_dispose(&v62, 8);
      _Block_object_dispose(&v66, 8);

LABEL_24:
      v38 = parameterStates2;
      goto LABEL_25;
    }

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_224;
    v56[3] = &unk_1E8376378;
    v27 = v11;
    v57 = v27;
    v60 = &v66;
    v61 = &v62;
    v28 = v23;
    v58 = v28;
    v29 = v24;
    v59 = v29;
    [parameterStates2 enumerateObjectsUsingBlock:v56];
    if (v63[3])
    {
      allValues = [v29 allValues];
      v31 = [allValues count];

      if (v31)
      {
        allValues2 = [v29 allValues];
        v33 = [allValues2 if_compactMap:&__block_literal_global_230];

        variableSource = [v27 variableSource];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3_231;
        v51[3] = &unk_1E83763E8;
        v55 = v13;
        v52 = v29;
        v53 = v27;
        v54 = v28;
        [variableSource requestAccessToFileAtLocations:v33 completionHandler:v51];

LABEL_23:
        _Block_object_dispose(&v62, 8);
        _Block_object_dispose(&v66, 8);

        goto LABEL_24;
      }

      v41 = 0;
      v40 = v28;
    }

    else
    {
      v40 = 0;
      v41 = v67[5];
    }

    (*(v13 + 2))(v13, v40, v41);
    goto LABEL_23;
  }

  variable2 = [(WFVariableSubstitutableParameterState *)self variable];
  if (variable2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      prompt = [variable2 prompt];
      (*(handlerCopy + 2))(handlerCopy, prompt, 0);

LABEL_16:
      goto LABEL_26;
    }
  }

  parameter2 = [v11 parameter];
  singleStateClass2 = [parameter2 singleStateClass];

  if ([(objc_class *)singleStateClass2 isSubclassOfClass:objc_opt_class()])
  {
    variable3 = [(WFVariableSubstitutableParameterState *)self variable];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
    v79[3] = &unk_1E837DAB0;
    v79[4] = self;
    v80 = v13;
    [variable3 getContentWithContext:v11 completionHandler:v79];

    v20 = v80;
  }

  else
  {
    if (([(objc_class *)singleStateClass2 isSubclassOfClass:objc_opt_class()]& 1) != 0 || [(objc_class *)singleStateClass2 isSubclassOfClass:objc_opt_class()])
    {
      v35 = [singleStateClass2 alloc];
      variable4 = [(WFVariableSubstitutableParameterState *)self variable];
      variable2 = [v35 initWithVariable:variable4];

      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_5;
      v77[3] = &unk_1E8376328;
      v78 = v13;
      [variable2 processWithContext:v11 userInputRequiredHandler:handlerCopy valueHandler:v77];

      goto LABEL_16;
    }

    variable5 = [(WFVariableSubstitutableParameterState *)self variable];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_6;
    v74[3] = &unk_1E8376350;
    v74[4] = self;
    v76 = singleStateClass2;
    v75 = v13;
    [variable5 getContentWithContext:v11 completionHandler:v74];

    v20 = v75;
  }

LABEL_26:
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  if (!v24 || ([*(a1 + 32) parameter], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isRangedSizeArray"), v6, (v7 & 1) == 0))
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  v8 = [*(a1 + 32) maximumItemCount];
  v9 = v24;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11 && [v11 count] > v8)
  {
    v12 = MEMORY[0x1E696AC90];
    v13 = [v11 count];
    if (v13 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 indexSetWithIndexesInRange:{0, v14}];
    v16 = *(a1 + 40);
    v17 = [v11 objectsAtIndexes:v15];
    (*(v16 + 16))(v16, v17, v5);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v9 items], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v19 <= v8))
    {
      (*(*(a1 + 40) + 16))();
      goto LABEL_18;
    }

    v15 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v8}];
    v20 = MEMORY[0x1E6996D40];
    v21 = [v9 items];
    v22 = [v21 objectsAtIndexes:v15];
    v23 = [v20 collectionWithItems:v22];

    (*(*(a1 + 40) + 16))();
  }

LABEL_18:
LABEL_19:
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) variable];
    v8 = [v7 possibleContentClasses];
    v9 = [objc_msgSend(objc_msgSend(v8 "firstObject")];

    if (v9)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3;
      v13[3] = &unk_1E8378790;
      v14 = *(a1 + 40);
      [v5 getObjectRepresentations:v13 forClass:objc_opt_class()];
      v10 = v14;
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_4;
      v11[3] = &unk_1E837F588;
      v12 = *(a1 + 40);
      [v5 getFileRepresentations:v11 forType:0];
      v10 = v12;
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = *(*(a1 + 32) + 16);
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(*(a1 + 32) + 16);
LABEL_5:
    v7();
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = *(a1 + 32);
  if (isKindOfClass)
  {
    (*(v10 + 16))(v10, v5, 0);
  }

  else
  {
    v12[0] = v5;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    (*(v10 + 16))(v10, v11, 0);
  }

LABEL_6:

  v8 = *MEMORY[0x1E69E9840];
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_7;
  v7[3] = &unk_1E8376328;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v6 finishProcessingWithContent:a2 error:a3 forParameterStateClass:v5 valueHandler:v7];
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_224(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  v11 = [v7 processForMultipleStateWithContext:v8 error:&obj resolution:*(v9 + 8) + 24];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    [*(a1 + 40) addObject:v11];
  }

  else if (*(*(*(a1 + 64) + 8) + 24) == 2)
  {
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v12 setObject:v7 forKey:v13];
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3_231(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__18191;
    v22 = __Block_byref_object_dispose__18192;
    v23 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_4_232;
    v9[3] = &unk_1E83763C0;
    v6 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = &v18;
    v13 = &v14;
    v11 = *(a1 + 48);
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    if (v15[3])
    {
      v7 = 0;
      v8 = *(a1 + 48);
    }

    else
    {
      v8 = 0;
      v7 = v19[5];
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), v8, v7);

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_5_235(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [v6 variableString];
      v11 = [v6 containedVariables];
      v12 = NSStringFromSelector(sel_type);
      v13 = [v11 filteredArrayForKey:v12 value:@"Ask"];

      if (![v13 count] && objc_msgSend(v9, "representsSingleContentVariable"))
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_6_239;
        v26[3] = &unk_1E837FF40;
        v14 = a1[4];
        v26[4] = a1[5];
        v27 = v6;
        v28 = v7;
        [v9 processIntoContentItemsWithContext:v14 completionHandler:v26];

        goto LABEL_11;
      }

LABEL_10:
      v15 = a1[4];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_10;
      v19[3] = &unk_1E8376410;
      v16 = a1[6];
      v22 = a1[7];
      v20 = v16;
      v21 = v7;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_11;
      v17[3] = &unk_1E837DA88;
      v18 = v21;
      [v6 processWithContext:v15 userInputRequiredHandler:v19 valueHandler:v17];

      v9 = v20;
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = [v6 variable];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_8;
  v23[3] = &unk_1E837FF40;
  v10 = a1[4];
  v23[4] = a1[5];
  v24 = v6;
  v25 = v7;
  [v9 getContentWithContext:v10 completionHandler:v23];

LABEL_11:
}

uint64_t __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_12(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_6_239(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_7_240;
  v10[3] = &unk_1E8376328;
  v11 = *(a1 + 48);
  [v5 finishProcessingWithContent:v8 error:v7 forParameterStateClass:v9 valueHandler:v10];
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_9;
  v10[3] = &unk_1E8376328;
  v11 = *(a1 + 48);
  [v5 finishProcessingWithContent:v8 error:v7 forParameterStateClass:v9 valueHandler:v10];
}

uint64_t __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_10(void *a1)
{
  v2 = *(a1[6] + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v3 = a1[4];
    (*(a1[4] + 16))();
  }

  v4 = *(a1[5] + 16);

  return v4();
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E695DEC8];
  v6 = a3;
  v7 = [v5 arrayWithObjects:{a2, 0}];
  (*(v4 + 16))(v4, v7, v6);
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v5;
  objc_opt_class();
  v7 = v8;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v8, 0}];
  }

  (*(*(a1 + 32) + 16))();
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_7_240(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v5;
  objc_opt_class();
  v7 = v8;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v8, 0}];
  }

  (*(*(a1 + 32) + 16))();
}

void __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_4_232(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = [a3 processForMultipleStateWithContext:v8 error:&obj resolution:*(v9 + 8) + 24];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    [*(a1 + 40) insertObject:v11 atIndex:{objc_msgSend(v7, "unsignedIntegerValue")}];
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

id __90__WFMultipleValueParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2_227(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 fileLocation];

  return v3;
}

- (id)stateByReplacingVariable:(id)variable withVariable:(id)withVariable
{
  variableCopy = variable;
  withVariableCopy = withVariable;
  value = [(WFVariableSubstitutableParameterState *)self value];
  v9 = [value count];

  if (v9)
  {
    v10 = objc_alloc(objc_opt_class());
    value2 = [(WFVariableSubstitutableParameterState *)self value];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __71__WFMultipleValueParameterState_stateByReplacingVariable_withVariable___block_invoke;
    v20 = &unk_1E83762D8;
    v21 = variableCopy;
    v22 = withVariableCopy;
    v12 = [value2 if_map:&v17];
    v13 = [v10 initWithValue:{v12, v17, v18, v19, v20}];
  }

  else
  {
    v14 = objc_alloc(objc_opt_class());
    if (withVariableCopy)
    {
      v15 = [v14 initWithVariable:withVariableCopy];
    }

    else
    {
      v15 = [v14 initWithParameterStates:MEMORY[0x1E695E0F0]];
    }

    v13 = v15;
  }

  return v13;
}

WFMultipleValueParameterStateEntry *__71__WFMultipleValueParameterState_stateByReplacingVariable_withVariable___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 32);
  if (!v7 || ([v5 parameterState], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "containedVariables"), v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "containsObject:", *(a1 + 32)) & 1) != 0))
  {
    v8 = [v6 parameterState];
    v9 = objc_opt_respondsToSelector();

    if (v7)
    {
    }

    if (v9)
    {
      v10 = [WFMultipleValueParameterStateEntry alloc];
      v11 = [v6 identity];
      v12 = [v6 parameterState];
      v13 = [v12 stateByReplacingVariable:*(a1 + 32) withVariable:*(a1 + 40)];
      v14 = [(WFMultipleValueParameterStateEntry *)v10 initWithIdentity:v11 parameterState:v13];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = v6;
LABEL_9:

  return v14;
}

- (id)containedVariables
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v19.receiver = self;
  v19.super_class = WFMultipleValueParameterState;
  containedVariables = [(WFVariableSubstitutableParameterState *)&v19 containedVariables];
  v5 = [v3 initWithArray:containedVariables];

  value = [(WFVariableSubstitutableParameterState *)self value];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [value countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(value);
        }

        parameterState = [*(*(&v15 + 1) + 8 * i) parameterState];
        containedVariables2 = [parameterState containedVariables];
        [v5 addObjectsFromArray:containedVariables2];
      }

      v8 = [value countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSArray)parameterStates
{
  value = [(WFVariableSubstitutableParameterState *)self value];
  v3 = [value if_compactMap:&__block_literal_global_202];

  return v3;
}

- (WFMultipleValueParameterState)initWithParameterStates:(id)states
{
  v4 = [states if_map:&__block_literal_global_199_18215];
  v5 = [(WFMultipleValueParameterState *)self initWithValue:v4];

  return v5;
}

WFMultipleValueParameterStateEntry *__57__WFMultipleValueParameterState_initWithParameterStates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WFMultipleValueParameterStateEntry alloc];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [(WFMultipleValueParameterStateEntry *)v3 initWithIdentity:v4 parameterState:v2];

  return v5;
}

- (WFMultipleValueParameterState)initWithValue:(id)value
{
  v21 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [valueCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(valueCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"WFMultipleValueParameterState.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"[entry isKindOfClass:[WFMultipleValueParameterStateEntry class]]"}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [valueCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15.receiver = self;
  v15.super_class = WFMultipleValueParameterState;
  v12 = [(WFVariableSubstitutableParameterState *)&v15 initWithValue:valueCopy];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  if ([valueCopy count] != 1)
  {
    goto LABEL_5;
  }

  firstObject = [valueCopy firstObject];
  parameterState = [firstObject parameterState];
  serializedRepresentation = [parameterState serializedRepresentation];

  if (serializedRepresentation)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

LABEL_5:
      serializedRepresentation = [valueCopy if_compactMap:&__block_literal_global_18235];
    }
  }

  return serializedRepresentation;
}

id __67__WFMultipleValueParameterState_serializedRepresentationFromValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 parameterState];
  v3 = [v2 serializedRepresentation];

  return v3;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v22[1] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  singleStateClass = [parameterCopy singleStateClass];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = representationCopy;
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  if (representationCopy)
  {
    v22[0] = representationCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__WFMultipleValueParameterState_valueFromSerializedRepresentation_variableProvider_parameter___block_invoke;
  v18[3] = &unk_1E8376270;
  v20 = parameterCopy;
  v21 = singleStateClass;
  v19 = providerCopy;
  v13 = parameterCopy;
  v14 = providerCopy;
  v15 = [v12 if_compactMap:v18];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

WFMultipleValueParameterStateEntry *__94__WFMultipleValueParameterState_valueFromSerializedRepresentation_variableProvider_parameter___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2;
  v5 = [[v3 alloc] initWithSerializedRepresentation:v4 variableProvider:a1[4] parameter:a1[5]];

  if (v5)
  {
    v6 = [WFMultipleValueParameterStateEntry alloc];
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [(WFMultipleValueParameterStateEntry *)v6 initWithIdentity:v7 parameterState:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end