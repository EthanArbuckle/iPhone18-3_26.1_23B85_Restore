@interface WFVariable
- (BOOL)isEqual:(id)a3;
- (NSHashTable)delegates;
- (NSOrderedSet)possibleAggrandizedContentClasses;
- (NSOrderedSet)possibleContentClasses;
- (NSString)description;
- (NSString)nameIncludingPropertyName;
- (NSString)propertyName;
- (NSString)type;
- (WFVariable)initWithDictionary:(id)a3 variableProvider:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)rewrittenWithStrings:(id)a3;
- (id)userVisibleStringsForUseCase:(unint64_t)a3;
- (id)variableBySettingAggrandizements:(id)a3;
- (unint64_t)hash;
- (void)addDelegate:(id)a3;
- (void)getContentWithContext:(id)a3 trackContentAttribution:(BOOL)a4 completionHandler:(id)a5;
- (void)getFileRepresentationWithContext:(id)a3 completionHandler:(id)a4;
- (void)getObjectRepresentationForClass:(Class)a3 context:(id)a4 completionHandler:(id)a5;
- (void)removeDelegate:(id)a3;
- (void)variableUpdated;
- (void)wf_getContentItemsWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation WFVariable

- (id)userVisibleStringsForUseCase:(unint64_t)a3
{
  v3 = self;
  sub_1CA5282F8();

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v4 = sub_1CA94C8E8();

  return v4;
}

- (id)rewrittenWithStrings:(id)a3
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  sub_1CA94C1C8();
  sub_1CA5283C0();

  return self;
}

- (void)wf_getContentItemsWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__WFVariable_WFVariableStringContent__wf_getContentItemsWithContext_completionHandler___block_invoke;
  v8[3] = &unk_1E837DC20;
  v9 = v6;
  v7 = v6;
  [(WFVariable *)self getContentWithContext:a3 completionHandler:v8];
}

void __87__WFVariable_WFVariableStringContent__wf_getContentItemsWithContext_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v6 = [a2 items];
    v8 = v6;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    (*(v3 + 16))(v3, v7, 0);
  }
}

- (NSString)nameIncludingPropertyName
{
  v3 = [(WFVariable *)self propertyName];
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(WFVariable *)self name];
    v6 = [(WFVariable *)self propertyName];
    v7 = [v4 stringWithFormat:@"%@ (%@)", v5, v6];
  }

  else
  {
    v7 = [(WFVariable *)self name];
  }

  return v7;
}

- (NSString)propertyName
{
  v2 = self;
  v45 = *MEMORY[0x1E69E9840];
  v3 = [(WFVariable *)self possibleContentClasses];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = [(WFVariable *)v2 aggrandizements];
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v8 = &off_1E836E000;
    v26 = v2;
    v27 = *v39;
    do
    {
      v9 = 0;
      v10 = v3;
      v28 = v6;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v38 + 1) + 8 * v9);
        v12 = v8[464];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v11;
          v13 = [v29 propertyName];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v3 = v10;
          v14 = [v3 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v35;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v35 != v16)
                {
                  objc_enumerationMutation(v3);
                }

                v18 = [*(*(&v34 + 1) + 8 * i) propertyForName:{v13, v26}];
                if (v18)
                {
                  v23 = v18;
                  if ([v29 negativeProperty])
                  {
                    [v23 localizedNegativeName];
                  }

                  else
                  {
                    [v23 localizedName];
                  }
                  v19 = ;

                  goto LABEL_32;
                }
              }

              v15 = [v3 countByEnumeratingWithState:&v34 objects:v43 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v7 = v27;
          v6 = v28;
          v8 = &off_1E836E000;
        }

        v3 = [v11 processedContentClasses:{v10, v26}];

        ++v9;
        v10 = v3;
      }

      while (v9 != v6);
      v6 = [v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
      v2 = v26;
    }

    while (v6);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [(WFVariable *)v2 aggrandizements];
  v19 = [v4 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v19)
  {
    v20 = *v31;
    while (2)
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v4);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [v22 dictionaryKey];
          goto LABEL_32;
        }
      }

      v19 = [v4 countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_32:

  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WFVariable *)self dictionary];
  v6 = [(WFVariable *)self variableProvider];
  v7 = [v4 initWithDictionary:v5 variableProvider:v6];

  return v7;
}

- (id)variableBySettingAggrandizements:(id)a3
{
  v4 = a3;
  v5 = [(WFVariable *)self dictionary];
  v6 = [v5 mutableCopy];

  v7 = WFVariableDictionaryWithAggrandizements(v4);

  v8 = [v7 allKeys];
  v9 = [v8 count];

  if (v9)
  {
    [v6 addEntriesFromDictionary:v7];
  }

  else
  {
    [v6 removeObjectForKey:@"Aggrandizements"];
  }

  v10 = objc_alloc(objc_opt_class());
  v11 = [(WFVariable *)self variableProvider];
  v12 = [v10 initWithDictionary:v6 variableProvider:v11];

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
  v4 = [v3 combineInteger:1176536074];
  v5 = [(WFVariable *)self dictionary];
  v6 = [v3 combineContentsOfPropertyListObject:v5];

  v7 = [(WFVariable *)self variableProvider];
  v8 = [v3 combineInteger:{objc_msgSend(v7, "hash")}];

  v9 = [v3 finalize];
  return v9;
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
      v5 = [(WFVariable *)v4 dictionary];
      v6 = [(WFVariable *)self dictionary];
      if ([v5 isEqual:v6])
      {
        v7 = [(WFVariable *)self variableProvider];
        v8 = [(WFVariable *)v4 variableProvider];
        v9 = v7 == v8;
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

- (void)getFileRepresentationWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__WFVariable_getFileRepresentationWithContext_completionHandler___block_invoke;
  v10[3] = &unk_1E837DAB0;
  v11 = v6;
  v12 = v7;
  v8 = v6;
  v9 = v7;
  [(WFVariable *)self getContentWithContext:v8 trackContentAttribution:0 completionHandler:v10];
}

void __65__WFVariable_getFileRepresentationWithContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__WFVariable_getFileRepresentationWithContext_completionHandler___block_invoke_2;
    v5[3] = &unk_1E837B378;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v6 getFileRepresentationAndAttributionSet:v5 forType:0];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __65__WFVariable_getFileRepresentationWithContext_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v7 && *(a1 + 32))
  {
    [*(a1 + 40) addContentAttributionSet:v7];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getObjectRepresentationForClass:(Class)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__WFVariable_getObjectRepresentationForClass_context_completionHandler___block_invoke;
  v12[3] = &unk_1E837B350;
  v13 = v8;
  v14 = v9;
  v15 = a3;
  v10 = v8;
  v11 = v9;
  [(WFVariable *)self getContentWithContext:v10 trackContentAttribution:0 completionHandler:v12];
}

void __72__WFVariable_getObjectRepresentationForClass_context_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __72__WFVariable_getObjectRepresentationForClass_context_completionHandler___block_invoke_2;
    v5[3] = &unk_1E837B328;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v6 getObjectRepresentationAndAttributionSet:v5 forClass:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __72__WFVariable_getObjectRepresentationForClass_context_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10 && *(a1 + 32))
  {
    [*(a1 + 40) addContentAttributionSet:v10];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getContentWithContext:(id)a3 trackContentAttribution:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke;
  aBlock[3] = &unk_1E837B300;
  aBlock[4] = self;
  v10 = v8;
  v19 = v10;
  v11 = v9;
  v20 = v11;
  v21 = a4;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (v10)
  {
    v14 = [(WFVariable *)self requiredAccessResources];
    v15 = [MEMORY[0x1E69E0C70] sharedManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_4;
    v16[3] = &unk_1E837D0D0;
    v17 = v13;
    [v15 requestSandboxExtensionForRunningActionWithAccessResources:v14 completion:v16];
  }

  else
  {
    (*(v12 + 2))(v12);
  }
}

void __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) variableSource];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_2;
  v7[3] = &unk_1E837B2D8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v7[4] = v5;
  v10 = *(a1 + 56);
  v8 = v6;
  [v2 retrieveContentCollectionWithVariableSource:v3 completionHandler:v7];
}

void __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__49498;
    v17[4] = __Block_byref_object_dispose__49499;
    v18 = v5;
    v8 = [*(a1 + 32) aggrandizements];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_224;
    v16[3] = &unk_1E837B288;
    v16[4] = v17;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_3;
    v11[3] = &unk_1E837B2B0;
    v14 = v17;
    v15 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v8 if_enumerateAsynchronouslyInSequence:v16 completionHandler:v11];

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v9 = *(a1 + 48);
    if (v6)
    {
      (*(v9 + 16))(v9, 0, v6);
    }

    else
    {
      v10 = objc_opt_new();
      (*(v9 + 16))(v9, v10, 0);
    }
  }
}

void __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_224(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = *(*(v9 + 8) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_2_225;
  v12[3] = &unk_1E837B260;
  v14 = v9;
  v15 = a5;
  v13 = v8;
  v11 = v8;
  [a2 applyToContentCollection:v10 completionHandler:v12];
}

void __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v12 = v4;
  if (v5)
  {
    if (*(a1 + 56) != 1)
    {
      goto LABEL_6;
    }

    v6 = *(a1 + 32);
    v7 = [v5 attributionSet];
    [v6 addContentAttributionSet:v7];

    v4 = v12;
    v5 = *(*(*(a1 + 48) + 8) + 40);
  }

  if (!(v4 | v5))
  {
    v8 = objc_opt_new();
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(*(a1 + 48) + 8) + 40);
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

void __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_2_225(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!v10 || v5)
  {
    **(a1 + 48) = 1;
    v9 = *(*(a1 + 40) + 8);
    v8 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v10;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  (*(*(a1 + 32) + 16))();
}

- (NSOrderedSet)possibleAggrandizedContentClasses
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(WFVariable *)self possibleContentClasses];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(WFVariable *)self aggrandizements];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 = [*(*(&v12 + 1) + 8 * v8) processedContentClasses:v9];

        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSOrderedSet)possibleContentClasses
{
  v2 = objc_opt_new();

  return v2;
}

- (void)variableUpdated
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(WFVariable *)self delegates];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) variableDidChange:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(WFVariable *)self delegates];
  [v5 removeObject:v4];
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(WFVariable *)self delegates];
  [v5 addObject:v4];
}

- (NSHashTable)delegates
{
  delegates = self->_delegates;
  if (!delegates)
  {
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_delegates;
    self->_delegates = v4;

    delegates = self->_delegates;
  }

  return delegates;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFVariable;
  v4 = [(WFVariable *)&v8 description];
  v5 = [(WFVariable *)self nameIncludingPropertyName];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (NSString)type
{
  v2 = [(WFVariable *)self dictionary];
  v3 = [v2 objectForKey:@"Type"];

  return v3;
}

- (WFVariable)initWithDictionary:(id)a3 variableProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = MEMORY[0x1E695E0F8];
  }

  v8 = [v6 objectForKey:@"Type"];
  v9 = objc_opt_class();
  v10 = WFEnforceClass_1501(v8, v9);

  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v12 = WFVariableClassesByType();
    v13 = [v12 objectForKey:v10];

    if ([(objc_class *)v13 isSubclassOfClass:objc_opt_class()])
    {
      v14 = [[v13 alloc] initWithDictionary:v6 variableProvider:v7];
      if (v14)
      {
        v15 = v14;
LABEL_17:

        goto LABEL_18;
      }
    }
  }

  v32.receiver = self;
  v32.super_class = WFVariable;
  v16 = [(WFVariable *)&v32 init];
  if (v16)
  {
    v17 = v16;
    if (!v10)
    {
      v18 = objc_opt_class();
      if (v18 == objc_opt_class())
      {
        v10 = 0;
      }

      else
      {
        v19 = [v6 mutableCopy];
        v20 = WFVariableClassesByType();
        v21 = [v20 allKeysForObject:objc_opt_class()];
        v10 = [v21 firstObject];

        [v19 setValue:v10 forKey:@"Type"];
        v6 = v19;
      }
    }

    v22 = [v6 objectForKey:@"Aggrandizements"];
    v23 = objc_opt_class();
    v24 = WFEnforceClass_1501(v22, v23);

    v25 = [v24 if_map:&__block_literal_global_208_49520];
    v26 = [v25 copy];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v17->_aggrandizements, v28);

    v29 = [v6 copy];
    dictionary = v17->_dictionary;
    v17->_dictionary = v29;

    self = v17;
    v15 = self;
    goto LABEL_17;
  }

  v15 = 0;
LABEL_18:

  return v15;
}

WFVariableAggrandizement *__50__WFVariable_initWithDictionary_variableProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFVariableAggrandizement alloc] initWithDictionary:v2];

  return v3;
}

@end