@interface WFVariableString
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)representsSingleContentVariable;
- (NSString)description;
- (NSString)stringByRemovingVariables;
- (NSString)stringByReplacingVariablesWithNames;
- (WFPropertyListObject)serializedRepresentation;
- (WFVariableString)initWithAttachmentCharacterString:(id)a3 variableGetter:(id)a4;
- (WFVariableString)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFVariableString)initWithString:(id)a3;
- (WFVariableString)initWithStringsAndVariables:(id)a3;
- (WFVariableString)initWithVariable:(id)a3;
- (id)computeUserVisibleString;
- (id)rewrittenWithStrings:(id)a3;
- (id)userVisibleStringsForUseCase:(unint64_t)a3;
- (id)variablesOfType:(id)a3;
- (unint64_t)hash;
- (void)addVariableDelegate:(id)a3;
- (void)processIntoContentItemsWithContext:(id)a3 completionHandler:(id)a4;
- (void)processIntoStringsAndAttachmentsWithContext:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)processWithContext:(id)a3 completionHandler:(id)a4;
- (void)removeVariableDelegate:(id)a3;
@end

@implementation WFVariableString

- (id)computeUserVisibleString
{
  v2 = self;
  v3 = WFVariableString.computeUserVisibleString()();

  return v3;
}

- (id)userVisibleStringsForUseCase:(unint64_t)a3
{
  v4 = self;
  WFVariableString.userVisibleStrings(for:)(a3);

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v5 = sub_1CA94C8E8();

  return v5;
}

- (id)rewrittenWithStrings:(id)a3
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v4 = sub_1CA94C1C8();
  v5 = self;
  isa = WFVariableString.rewritten(withStrings:)(v4).super.isa;

  return isa;
}

- (NSString)description
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v22.receiver = self;
  v22.super_class = WFVariableString;
  v4 = [(WFVariableString *)&v22 description];
  v5 = [v3 stringWithFormat:@"%@: ", v4];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(WFVariableString *)self stringsAndVariables];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 appendString:v11];
        }

        else
        {
          v12 = v11;
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          v15 = [v12 name];
          [v5 appendFormat:@"<%@: %p, name: %@>", v14, v12, v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSString)stringByReplacingVariablesWithNames
{
  v2 = [(WFVariableString *)self stringsAndVariables];
  v3 = [v2 if_map:&__block_literal_global_216];
  v4 = [v3 componentsJoinedByString:&stru_1F4A1C408];

  return v4;
}

id __55__WFVariableString_stringByReplacingVariablesWithNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 nameIncludingPropertyName];
  }

  v4 = v3;

  return v4;
}

- (NSString)stringByRemovingVariables
{
  v2 = [(WFVariableString *)self stringsAndVariables];
  v3 = [v2 if_objectsPassingTest:&__block_literal_global_2979];
  v4 = [v3 componentsJoinedByString:&stru_1F4A1C408];

  return v4;
}

uint64_t __45__WFVariableString_stringByRemovingVariables__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)processIntoStringsAndAttachmentsWithContext:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = [(WFVariableString *)self stringsAndVariables];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __90__WFVariableString_processIntoStringsAndAttachmentsWithContext_options_completionHandler___block_invoke;
  v23[3] = &unk_1E8373B40;
  v24 = v8;
  v25 = v11;
  v26 = v12;
  v27 = v9;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__WFVariableString_processIntoStringsAndAttachmentsWithContext_options_completionHandler___block_invoke_5;
  v19[3] = &unk_1E837ECB8;
  v21 = v25;
  v22 = v10;
  v20 = v26;
  v14 = v25;
  v15 = v26;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  [v13 if_enumerateAsynchronouslyInSequence:v23 completionHandler:v19];
}

void __90__WFVariableString_processIntoStringsAndAttachmentsWithContext_options_completionHandler___block_invoke(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__WFVariableString_processIntoStringsAndAttachmentsWithContext_options_completionHandler___block_invoke_2;
  v14[3] = &unk_1E837E958;
  v7 = a1[4];
  v8 = a1[5];
  v17 = v6;
  v9 = a1[6];
  v10 = a1[7];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v15 = v12;
  v16 = v11;
  v13 = v6;
  [a2 wf_getContentItemsWithContext:v7 completionHandler:v14];
}

void __90__WFVariableString_processIntoStringsAndAttachmentsWithContext_options_completionHandler___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);
    v6 = *MEMORY[0x1E69E9840];

    v5();
  }

  else
  {
    v7 = [MEMORY[0x1E6996D38] attributionSetByMergingAttributionSets:*(a1 + 32)];
    v8 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = a1;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [MEMORY[0x1E6996D58] itemWithObject:v14 attributionSet:v7];
            [v8 addItem:v15];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v8 addItems:v14];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    (*(*(v17 + 48) + 16))();
    v16 = *MEMORY[0x1E69E9840];
  }
}

void __90__WFVariableString_processIntoStringsAndAttachmentsWithContext_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) variableSource];
  v8 = [v7 currentAction];
  v9 = [v8 identifier];
  if (![v9 isEqualToString:@"is.workflow.actions.askllm"] || objc_msgSend(v5, "count") != 1)
  {

    goto LABEL_6;
  }

  v10 = [v5 firstObject];
  v11 = WFVariableStringInferredContentTypeForItem(v10);

  if (v11)
  {
LABEL_6:
    if ([v5 count] == 1 && (objc_msgSend(v5, "firstObject"), v12 = objc_claimAutoreleasedReturnValue(), v13 = WFVariableStringInferredContentTypeForItem(v12), v12, !v13))
    {
      v18 = [v5 firstObject];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __90__WFVariableString_processIntoStringsAndAttachmentsWithContext_options_completionHandler___block_invoke_3;
      v24[3] = &unk_1E8373AF0;
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = v5;
      v29 = *(a1 + 64);
      [v18 getObjectRepresentation:v24 forClass:objc_opt_class() options:*(a1 + 56)];

      v17 = v25;
    }

    else
    {
      if ([v5 count] != 1)
      {
        goto LABEL_11;
      }

      v14 = [v5 firstObject];
      v15 = WFVariableStringInferredContentTypeForItem(v14);

      if (v15 != 1)
      {
        goto LABEL_11;
      }

      v16 = [v5 firstObject];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __90__WFVariableString_processIntoStringsAndAttachmentsWithContext_options_completionHandler___block_invoke_4;
      v19[3] = &unk_1E8373B18;
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v22 = v5;
      v23 = *(a1 + 64);
      [v16 getObjectRepresentation:v19 forClass:objc_opt_class() options:*(a1 + 56)];

      v17 = v20;
    }

    goto LABEL_16;
  }

LABEL_11:
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  (*(*(a1 + 64) + 16))();
LABEL_16:
}

void __90__WFVariableString_processIntoStringsAndAttachmentsWithContext_options_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  if (v17)
  {
    v9 = [*(a1 + 32) parameter];
    if ([v9 stripsTTSHints])
    {
      v10 = [*(a1 + 32) environment];

      if (v10 == 3)
      {
LABEL_6:
        v13 = v17;
        goto LABEL_8;
      }

      v11 = [MEMORY[0x1E69E0D80] parseAnnotatedString:v17];
      v12 = [v11 displayString];

      v9 = v17;
      v17 = v12;
    }

    goto LABEL_6;
  }

  v13 = 0;
LABEL_8:
  v18 = v13;
  WFAppendStringToVariableContentConcatenatingStringsIfNecessary(*(a1 + 40), v13);
  v14 = *(a1 + 48);
  v15 = [*(a1 + 56) firstObject];
  v16 = [v15 attributionSet];
  [v14 addObject:v16];

  (*(*(a1 + 64) + 16))();
}

void __90__WFVariableString_processIntoStringsAndAttachmentsWithContext_options_completionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [a2 wf_contentAsStringsAndAttachments];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          WFAppendStringToVariableContentConcatenatingStringsIfNecessary(*(a1 + 32), v11);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = *(a1 + 32);
            v23 = v11;
            v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
            [v12 addObject:v13];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v14 = *(a1 + 40);
  v15 = [*(a1 + 48) firstObject];
  v16 = [v15 attributionSet];
  [v14 addObject:v16];

  (*(*(a1 + 56) + 16))();
  v17 = *MEMORY[0x1E69E9840];
}

- (void)processIntoContentItemsWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFVariableString *)self stringsAndVariables];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__WFVariableString_processIntoContentItemsWithContext_completionHandler___block_invoke;
  v13[3] = &unk_1E8373AC8;
  v14 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__WFVariableString_processIntoContentItemsWithContext_completionHandler___block_invoke_2;
  v11[3] = &unk_1E837F588;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  [v8 if_flatMapAsynchronously:v13 completionHandler:v11];
}

void __73__WFVariableString_processIntoContentItemsWithContext_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6 = [MEMORY[0x1E6996D40] collectionWithItems:a2];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)processWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = -1;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__2997;
  v20[4] = __Block_byref_object_dispose__2998;
  v21 = 0;
  v8 = [(WFVariableString *)self stringsAndVariables];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__WFVariableString_processWithContext_completionHandler___block_invoke;
  v16[3] = &unk_1E8373A78;
  v18 = v22;
  v19 = v20;
  v17 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__WFVariableString_processWithContext_completionHandler___block_invoke_3;
  v11[3] = &unk_1E8373AA0;
  v9 = v7;
  v13 = v9;
  v14 = v22;
  v10 = v17;
  v12 = v10;
  v15 = v20;
  [v8 if_mapAsynchronously:v16 completionHandler:v11];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
}

void __57__WFVariableString_processWithContext_completionHandler___block_invoke(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[2](v8, v7, 0);
  }

  else
  {
    v9 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *(*(a1[5] + 8) + 24) = a3;
      v10 = [v9 prompt];
      v11 = *(a1[6] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v8[2](v8, &stru_1F4A1C408, 0);
      v13 = v9;
    }

    else
    {

      v14 = objc_opt_class();
      v15 = a1[4];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __57__WFVariableString_processWithContext_completionHandler___block_invoke_2;
      v16[3] = &unk_1E8376F30;
      v18 = v8;
      v17 = a1[4];
      [v9 getObjectRepresentationForClass:v14 context:v15 completionHandler:v16];

      v13 = v18;
    }
  }
}

void __57__WFVariableString_processWithContext_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v6 = v16;
  if (*(*(*(a1 + 48) + 8) + 24) != -1)
  {
    v7 = [v16 subarrayWithRange:0];
    v8 = [v7 valueForKeyPath:@"@sum.length"];
    *(*(*(a1 + 48) + 8) + 24) = [v8 integerValue];

    v6 = v16;
  }

  v9 = [v6 componentsJoinedByString:&stru_1F4A1C408];
  v10 = [*(a1 + 32) parameter];
  if (![v10 stripsTTSHints])
  {
    goto LABEL_8;
  }

  v11 = [*(a1 + 32) environment];

  if (v11 != 3)
  {
    v12 = [MEMORY[0x1E69E0D80] parseAnnotatedString:v9];
    v13 = [v12 displayString];

    v10 = v9;
    v9 = v13;
LABEL_8:
  }

  v14 = *(*(*(a1 + 48) + 8) + 24);
  v15 = *(*(*(a1 + 56) + 8) + 40);
  (*(*(a1 + 40) + 16))();

LABEL_10:
}

void __57__WFVariableString_processWithContext_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v10)
    {
      [*(a1 + 32) addContentAttributionSet:v10];
    }

    v12 = *(*(a1 + 40) + 16);
  }

  v12();
}

- (WFPropertyListObject)serializedRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(WFVariableString *)self stringsAndVariables];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 appendString:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 serializedRepresentation];
            v33.location = [v4 length];
            v33.length = 1;
            v12 = NSStringFromRange(v33);
            [v3 setObject:v11 forKey:v12];

            v21 = -4;
            v13 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v21 length:1];
            [v4 appendString:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v28[0] = @"string";
    v28[1] = @"attachmentsByRange";
    v29[0] = v4;
    v29[1] = v3;
    v14 = MEMORY[0x1E695DF20];
    v15 = v29;
    v16 = v28;
    v17 = 2;
  }

  else
  {
    v26 = @"string";
    v27 = v4;
    v14 = MEMORY[0x1E695DF20];
    v15 = &v27;
    v16 = &v26;
    v17 = 1;
  }

  v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (WFVariableString)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 objectForKey:@"string"];
  v12 = [v10 objectForKey:@"attachmentsByRange"];

  if (v11)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__WFVariableString_initWithSerializedRepresentation_variableProvider_parameter___block_invoke;
    v15[3] = &unk_1E8373A50;
    v16 = v12;
    v17 = v8;
    v18 = v9;
    self = [(WFVariableString *)self initWithAttachmentCharacterString:v11 variableGetter:v15];

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

WFVariable *__80__WFVariableString_initWithSerializedRepresentation_variableProvider_parameter___block_invoke(void *a1, NSRange range)
{
  v3 = a1[4];
  v9.location = range.location;
  v9.length = 1;
  v4 = NSStringFromRange(v9);
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [[WFVariable alloc] initWithSerializedRepresentation:v5 variableProvider:a1[5] parameter:a1[6]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFVariableString)initWithAttachmentCharacterString:(id)a3 variableGetter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = -4;
  v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v22 length:1];
  v9 = [v6 componentsSeparatedByString:v8];
  v10 = [v9 count];
  v11 = objc_opt_new();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__WFVariableString_initWithAttachmentCharacterString_variableGetter___block_invoke;
  v16[3] = &unk_1E8373A28;
  v12 = v11;
  v17 = v12;
  v19 = v21;
  v20 = v10;
  v13 = v7;
  v18 = v13;
  [v9 enumerateObjectsUsingBlock:v16];
  v14 = [(WFVariableString *)self initWithStringsAndVariables:v12];

  _Block_object_dispose(v21, 8);
  return v14;
}

void __69__WFVariableString_initWithAttachmentCharacterString_variableGetter___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [v9 length];
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) addObject:v9];
    *(*(*(a1 + 48) + 8) + 24) += v6;
  }

  if (*(a1 + 56) - 1 != a3)
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    v8 = (*(*(a1 + 40) + 16))();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ++*(*(*(a1 + 48) + 8) + 24);
      [*(a1 + 32) addObject:v8];
    }
  }
}

- (unint64_t)hash
{
  v2 = [(WFVariableString *)self stringsAndVariables];
  v3 = [v2 hash];

  return v3 ^ 0xD1DEFC;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFVariableString *)self stringsAndVariables];
      v6 = [(WFVariableString *)v4 stringsAndVariables];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFVariableString)initWithStringsAndVariables:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFVariableString.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"[stringsAndVariables isKindOfClass:[NSArray class]]"}];
  }

  v12.receiver = self;
  v12.super_class = WFVariableString;
  v6 = [(WFVariableString *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    stringsAndVariables = v6->_stringsAndVariables;
    v6->_stringsAndVariables = v7;

    v9 = v6;
  }

  return v6;
}

- (WFVariableString)initWithString:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFVariableString.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"[string isKindOfClass:[NSString class]]"}];
  }

  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [(WFVariableString *)self initWithStringsAndVariables:v6];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (WFVariableString)initWithVariable:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFVariableString.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"[variable isKindOfClass:[WFVariable class]]"}];
  }

  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [(WFVariableString *)self initWithStringsAndVariables:v6];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)removeVariableDelegate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(WFVariableString *)self variables];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) removeDelegate:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addVariableDelegate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(WFVariableString *)self variables];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) addDelegate:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEmpty
{
  v3 = [(WFVariableString *)self variables];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(WFVariableString *)self stringByRemovingVariables];
    v4 = [v5 length] == 0;
  }

  return v4;
}

- (BOOL)representsSingleContentVariable
{
  v3 = [(WFVariableString *)self variables];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [(WFVariableString *)self stringsAndVariables];
    if ([v5 count] == 1)
    {
      v6 = [v4 type];
      v7 = [v6 isEqualToString:@"Ask"] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)variablesOfType:(id)a3
{
  v4 = a3;
  v5 = [(WFVariableString *)self stringsAndVariables];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__WFVariableString_Convenience__variablesOfType___block_invoke;
  v9[3] = &unk_1E8373BA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 if_objectsPassingTest:v9];

  return v7;
}

uint64_t __49__WFVariableString_Convenience__variablesOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a1 + 32))
    {
      v4 = [v3 type];
      v5 = [v4 isEqualToString:*(a1 + 32)];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end