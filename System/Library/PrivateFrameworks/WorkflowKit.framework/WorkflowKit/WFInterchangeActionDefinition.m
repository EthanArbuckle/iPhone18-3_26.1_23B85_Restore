@interface WFInterchangeActionDefinition
- (BOOL)createsWFAction;
- (BOOL)inputRequired;
- (BOOL)inputsMultipleItems;
- (BOOL)isDiscontinued;
- (BOOL)isDiscoverable;
- (BOOL)isEqual:(id)a3;
- (BOOL)outputsMultipleItems;
- (BOOL)skipItemClassesSupportingInput;
- (NSArray)capabilities;
- (NSArray)inputContentClasses;
- (NSArray)outputContentClasses;
- (NSArray)requiredResourceNames;
- (NSDate)creationDate;
- (NSDate)lastModifiedDate;
- (NSString)category;
- (NSString)identifier;
- (NSString)inputParameterSourceKey;
- (NSString)wfActionClassName;
- (WFActionDescriptionDefinition)descriptionDefinition;
- (WFActionParameterSummary)parameterSummaryDefinition;
- (WFInterchangeActionDefinition)initWithDefinition:(id)a3 app:(id)a4;
- (_NSLocalizedStringResource)keywords;
- (id)description;
- (id)localizedNameWithContext:(id)a3;
- (id)localizedSubcategoryWithContext:(id)a3;
- (unint64_t)hash;
- (void)processInput:(id)a3 parameters:(id)a4 completionHandler:(id)a5;
@end

@implementation WFInterchangeActionDefinition

- (void)processInput:(id)a3 parameters:(id)a4 completionHandler:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v34 = a4;
  v32 = a5;
  v8 = dispatch_group_create();
  v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v12 = [v34 objectForKey:@"DisableCallback"];
  v13 = [v12 BOOLValue];

  v63 = v13;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy__42658;
  v60[4] = __Block_byref_object_dispose__42659;
  v61 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8379DB8;
  v29 = v11;
  v55 = v29;
  v58 = v60;
  v31 = v9;
  v56 = v31;
  v30 = v10;
  v57 = v30;
  v59 = v62;
  v14 = _Block_copy(aBlock);
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__42658;
  v52[4] = __Block_byref_object_dispose__42659;
  v53 = 0;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = [(WFInterchangeActionDefinition *)self inputMapping];
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v64 count:16];
  if (v16)
  {
    v17 = *v49;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v48 + 1) + 8 * i);
        v20 = [v19 destinationType];
        v21 = [v20 isEqualToString:@"Clipboard"];
        dispatch_group_enter(v8);
        if (v21)
        {
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_2;
          v45[3] = &unk_1E8379E10;
          v47[0] = v14;
          v45[4] = v19;
          v46 = v8;
          v47[1] = v52;
          [v19 getContentCollection:v45 withInput:v33 parameters:v34];
          v22 = &v46;
          v23 = v47;
        }

        else
        {
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_5;
          v42[3] = &unk_1E8379E38;
          v44 = v14;
          v42[4] = v19;
          v43 = v8;
          [v19 getStringRepresentation:v42 withInput:v33 parameters:v34];
          v22 = &v43;
          v23 = &v44;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v16);
  }

  v24 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_6;
  block[3] = &unk_1E8379E60;
  v38 = v32;
  v39 = v52;
  v36 = v31;
  v37 = v30;
  v40 = v60;
  v41 = v62;
  v25 = v30;
  v26 = v31;
  v27 = v32;
  dispatch_group_notify(v8, v24, block);

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(v62, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = a2;
  v9 = a3;
  v10 = a5;
  v11 = *(a1 + 32);
  v12 = a4;
  [v11 lock];
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a5);
  }

  v13 = [v9 valueMapping];
  v14 = [v13 objectForKey:v12];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  v17 = v16;

  v18 = [v9 destinationType];
  if ([v18 isEqualToString:@"URLSubstitution"])
  {
    if (([v9 skipURLEncoding] & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
      v20 = [v19 mutableCopy];

      [v20 removeCharactersInString:@"?&="];
      v21 = [(__CFString *)v17 stringByAddingPercentEncodingWithAllowedCharacters:v20];

      v17 = v21;
    }

    v22 = v32;
    v23 = *(a1 + 40);
    if (v17)
    {
      v24 = v17;
    }

    else
    {
      v24 = &stru_1F4A1C408;
    }

    goto LABEL_12;
  }

  if ([v18 isEqualToString:@"URLQueryValue"])
  {
    v25 = [(__CFString *)v17 length];
    if (v13)
    {
      v26 = v15 == 0;
    }

    else
    {
      v26 = 0;
    }

    v27 = !v26;
    if (!v25 || !v27)
    {
      goto LABEL_27;
    }

    v28 = *(a1 + 48);
    v29 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v30 = [v32 stringByAddingPercentEncodingWithAllowedCharacters:v29];
    [v28 setObject:v17 forKey:v30];

LABEL_26:
    goto LABEL_27;
  }

  if ([v18 isEqualToString:@"URLQueryFlag"])
  {
    if (![(__CFString *)v17 BOOLValue])
    {
      goto LABEL_27;
    }

    v31 = *(a1 + 48);
    v29 = [MEMORY[0x1E695DFB0] null];
    [v31 setObject:v29 forKey:v32];
    goto LABEL_26;
  }

  if ([v18 isEqualToString:@"DisableCallback"])
  {
    if ([(__CFString *)v17 BOOLValue])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else if ([v18 isEqualToString:@"ExtensionItemUserInfo"])
  {
    v23 = *(a1 + 48);
    if (v17)
    {
      v24 = v17;
    }

    else
    {
      v24 = &stru_1F4A1C408;
    }

    v22 = v32;
LABEL_12:
    [v23 setObject:v24 forKey:v22];
  }

LABEL_27:
  [*(a1 + 32) unlock];
}

void __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) destinationKey];
    v12 = *(a1 + 32);
    if ([v12 inputRequired])
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    (*(v10 + 16))(v10, v11, v12, 0, v13);

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    if (!v7)
    {
      v7 = objc_opt_new();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_3;
    block[3] = &unk_1E837C4B0;
    v17 = *(a1 + 56);
    v7 = v7;
    v15 = v7;
    v16 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_5(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = a3;
  v8 = a2;
  v9 = [v6 destinationKey];
  (*(v5 + 16))(v5, v9, a1[4], v8, v7);

  v10 = a1[5];

  dispatch_group_leave(v10);
}

void __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_6(void *a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_7;
  aBlock[3] = &unk_1E837FAC0;
  aBlock[4] = a1[7];
  v2 = _Block_copy(aBlock);
  if (!*(*(a1[8] + 8) + 40))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = *(*(a1[9] + 8) + 24);
  }

  (*(a1[6] + 16))();
}

void __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(*(v1 + 8) + 40))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_8;
    aBlock[3] = &unk_1E837FAC0;
    aBlock[4] = v1;
    v2 = _Block_copy(aBlock);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v2[2](v2);
    }

    else
    {
      dispatch_sync(MEMORY[0x1E69E96A0], v2);
    }
  }
}

void __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_8(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(objc_class *)getUIPasteboardClass_42662() generalPasteboard];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = getUIPasteboardOptionLocalOnly();
  v7 = v4;
  v8[0] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 setItems:v3 options:v5];

  v6 = *MEMORY[0x1E69E9840];
}

void __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_3(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [getUIPasteboardClass_42662() generalPasteboard];
  v3 = v2;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v4 = [v2 items];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = getUIPasteboardOptionLocalOnly();
  v13 = v7;
  v14[0] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__WFInterchangeActionDefinition_processInput_parameters_completionHandler___block_invoke_4;
  v11[3] = &unk_1E8379DE8;
  v9 = *(a1 + 32);
  v12 = *(a1 + 40);
  [v9 copyToPasteboard:v3 options:v8 completionHandler:v11];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = WFInterchangeActionDefinition;
  v4 = [(WFInterchangeActionDefinition *)&v11 description];
  v5 = [MEMORY[0x1E69E0BE0] defaultContext];
  v6 = [(WFInterchangeActionDefinition *)self localizedNameWithContext:v5];
  v7 = [(WFInterchangeActionDefinition *)self app];
  v8 = [v7 localizedName];
  v9 = [v3 stringWithFormat:@"%@: %@ from %@", v4, v6, v8];

  return v9;
}

- (unint64_t)hash
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFInterchangeActionDefinition *)self definition];
      v6 = [(WFInterchangeActionDefinition *)v4 definition];
      if ([v5 isEqual:v6])
      {
        v7 = [(WFInterchangeActionDefinition *)self app];
        v8 = [(WFInterchangeActionDefinition *)v4 app];
        v9 = [v7 isEqual:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (NSArray)requiredResourceNames
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"RequiredResourceNames"];

  return v3;
}

- (NSString)wfActionClassName
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"WFActionClass"];

  return v3;
}

- (BOOL)createsWFAction
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"CreatesWFAction"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)skipItemClassesSupportingInput
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"SkipItemClassesSupportingInput"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSArray)outputContentClasses
{
  v23 = *MEMORY[0x1E69E9840];
  outputContentClasses = self->_outputContentClasses;
  if (!outputContentClasses)
  {
    v4 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [(WFInterchangeActionDefinition *)self outputMapping];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 destinationType];
          v12 = [v11 isEqualToString:@"Output"];

          if (v12)
          {
            v13 = [v10 contentItemClasses];
            [v4 unionOrderedSet:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v14 = [v4 array];
    v15 = self->_outputContentClasses;
    self->_outputContentClasses = v14;

    outputContentClasses = self->_outputContentClasses;
  }

  v16 = *MEMORY[0x1E69E9840];

  return outputContentClasses;
}

- (NSArray)inputContentClasses
{
  v23 = *MEMORY[0x1E69E9840];
  inputContentClasses = self->_inputContentClasses;
  if (!inputContentClasses)
  {
    v4 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [(WFInterchangeActionDefinition *)self inputMapping];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 sourceType];
          v12 = [v11 isEqualToString:@"Input"];

          if (v12)
          {
            v13 = [v10 contentItemClasses];
            [v4 unionOrderedSet:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v14 = [v4 array];
    v15 = self->_inputContentClasses;
    self->_inputContentClasses = v14;

    inputContentClasses = self->_inputContentClasses;
  }

  v16 = *MEMORY[0x1E69E9840];

  return inputContentClasses;
}

- (BOOL)outputsMultipleItems
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(WFInterchangeActionDefinition *)self outputMapping];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 sourceType];
        v10 = [v9 isEqualToString:@"Output"];

        if (v10)
        {
          v5 |= [v8 supportsMultipleItems];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (BOOL)inputsMultipleItems
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(WFInterchangeActionDefinition *)self inputMapping];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 sourceType];
        v10 = [v9 isEqualToString:@"Input"];

        if (v10)
        {
          v5 |= [v8 supportsMultipleItems];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (BOOL)inputRequired
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(WFInterchangeActionDefinition *)self inputMapping];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 sourceType];
        v10 = [v9 isEqualToString:@"Input"];

        if (v10)
        {
          v5 |= [v8 inputRequired];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (WFActionDescriptionDefinition)descriptionDefinition
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"Description"];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v4 = [WFActionDescriptionDefinition alloc];
    v3 = [(WFActionDescriptionDefinition *)v4 initWithDictionary:MEMORY[0x1E695E0F8]];
  }

  return v3;
}

- (BOOL)isDiscoverable
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"Discoverable"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isDiscontinued
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"Discontinued"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSDate)lastModifiedDate
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"LastModifiedDate"];

  return v3;
}

- (NSDate)creationDate
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"CreationDate"];

  return v3;
}

- (_NSLocalizedStringResource)keywords
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"ActionKeywords"];

  return v3;
}

- (id)localizedSubcategoryWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFInterchangeActionDefinition *)self definition];
  v6 = [v5 objectForKey:@"Subcategory"];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)category
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"Category"];

  return v3;
}

- (NSString)identifier
{
  v3 = [(WFInterchangeActionDefinition *)self definition];
  v4 = [v3 objectForKey:@"Identifier"];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(WFInterchangeActionDefinition *)self app];
    v7 = [v6 identifier];
    v8 = [v5 stringWithFormat:@"%@.%@", v7, v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)inputParameterSourceKey
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"InputMapping"];

  v4 = [v3 objectMatchingKey:@"SourceType" value:@"Input"];
  v5 = [v4 objectForKey:@"SourceKey"];

  return v5;
}

- (WFActionParameterSummary)parameterSummaryDefinition
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"ParameterSummary"];

  return v3;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFInterchangeActionDefinition *)self definition];
  v6 = [v5 objectForKey:@"Name"];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)capabilities
{
  v2 = [(WFInterchangeActionDefinition *)self definition];
  v3 = [v2 objectForKey:@"Capabilities"];

  return v3;
}

- (WFInterchangeActionDefinition)initWithDefinition:(id)a3 app:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"ActionClass"];
  v9 = v8;
  if (v8 && !NSClassFromString(v8))
  {
    v23 = 0;
  }

  else
  {
    obj = a4;
    v45 = v9;
    v46 = v7;
    v10 = [v6 objectForKey:@"InputMapping"];
    v11 = 0x1E695D000uLL;
    v48 = self;
    v49 = v6;
    v47 = v10;
    if ([v10 count])
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v55;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v55 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v54 + 1) + 8 * i);
            v19 = [v18 objectForKey:@"ContentMappingClass"];
            v20 = NSClassFromString(v19);
            if (!v20)
            {
              v20 = objc_opt_class();
            }

            v21 = [[v20 alloc] initWithDefinition:v18];
            if (!v21)
            {
              v23 = 0;
              self = v48;
              v6 = v49;
              v10 = v47;
              goto LABEL_36;
            }

            v22 = v21;
            [v12 addObject:v21];
          }

          v15 = [v13 countByEnumeratingWithState:&v54 objects:v59 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      self = v48;
      v6 = v49;
      v10 = v47;
      v11 = 0x1E695D000;
    }

    else
    {
      v12 = 0;
    }

    v24 = [v6 objectForKey:@"OutputMapping"];
    if ([v24 count])
    {
      v13 = [objc_alloc(*(v11 + 3952)) initWithCapacity:{objc_msgSend(v24, "count")}];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v43 = v24;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v51;
        while (2)
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v51 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v50 + 1) + 8 * j);
            v31 = [v30 objectForKey:@"ContentMappingClass"];
            v32 = NSClassFromString(v31);
            if (!v32)
            {
              v32 = objc_opt_class();
            }

            v33 = [[v32 alloc] initWithDefinition:v30];
            if (!v33)
            {

              v23 = 0;
              self = v48;
              v6 = v49;
              v10 = v47;
              v24 = v43;
              goto LABEL_35;
            }

            v34 = v33;
            [v13 addObject:v33];
          }

          v27 = [v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      self = v48;
      v6 = v49;
      v10 = v47;
      v24 = v43;
    }

    else
    {
      v13 = 0;
    }

    v23 = [(WFInterchangeActionDefinition *)self init];
    if (v23)
    {
      v35 = [v6 copy];
      definition = v23->_definition;
      v23->_definition = v35;

      objc_storeStrong(&v23->_app, obj);
      v37 = [v12 copy];
      inputMapping = v23->_inputMapping;
      v23->_inputMapping = v37;

      v39 = [v13 copy];
      outputMapping = v23->_outputMapping;
      v23->_outputMapping = v39;

      self = v23;
      v23 = self;
    }

    else
    {
      self = 0;
    }

LABEL_35:

LABEL_36:
    v9 = v45;
    v7 = v46;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v23;
}

@end