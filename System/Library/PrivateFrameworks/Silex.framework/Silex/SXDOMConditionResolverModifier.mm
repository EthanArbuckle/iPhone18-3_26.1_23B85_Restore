@interface SXDOMConditionResolverModifier
- (BOOL)resolveComponentLayouts:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5;
- (BOOL)resolveComponentStyles:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5;
- (BOOL)resolveComponentTextStyle:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5;
- (BOOL)resolveComponents:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5;
- (BOOL)resolveTextStyles:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5;
- (SXDOMConditionResolverModifier)initWithValidationContextFactory:(id)a3 componentResolver:(id)a4 textStyleResolver:(id)a5 componentStyleResolver:(id)a6 componentLayoutResolver:(id)a7 componentTextStyleResolver:(id)a8 advertisementAutoPlacementResolver:(id)a9 suggestedArticlesAutoPlacementResolver:(id)a10 documentStyleResolver:(id)a11 instructions:(id)a12;
- (id)resolveAutoPlacement:(id)a3 validationContext:(id)a4;
- (id)resolveDocumentStyle:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5;
- (void)modifyDOM:(id)a3 context:(id)a4;
@end

@implementation SXDOMConditionResolverModifier

- (SXDOMConditionResolverModifier)initWithValidationContextFactory:(id)a3 componentResolver:(id)a4 textStyleResolver:(id)a5 componentStyleResolver:(id)a6 componentLayoutResolver:(id)a7 componentTextStyleResolver:(id)a8 advertisementAutoPlacementResolver:(id)a9 suggestedArticlesAutoPlacementResolver:(id)a10 documentStyleResolver:(id)a11 instructions:(id)a12
{
  v35 = a3;
  obj = a4;
  v34 = a4;
  v27 = a5;
  v33 = a5;
  v32 = a6;
  v28 = a7;
  v31 = a7;
  v29 = a8;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v36.receiver = self;
  v36.super_class = SXDOMConditionResolverModifier;
  v23 = [(SXDOMConditionResolverModifier *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_validationContextFactory, a3);
    objc_storeStrong(&v24->_componentResolver, obj);
    objc_storeStrong(&v24->_textStyleResolver, v27);
    objc_storeStrong(&v24->_componentStyleResolver, a6);
    objc_storeStrong(&v24->_componentLayoutResolver, v28);
    objc_storeStrong(&v24->_componentTextStyleResolver, v29);
    objc_storeStrong(&v24->_advertisementAutoPlacementResolver, a9);
    objc_storeStrong(&v24->_suggestedArticlesAutoPlacementResolver, a10);
    objc_storeStrong(&v24->_documentStyleResolver, a11);
    objc_storeStrong(&v24->_instructions, a12);
  }

  return v24;
}

- (void)modifyDOM:(id)a3 context:(id)a4
{
  v32 = a3;
  v6 = a4;
  if (!self->_hasCheckedInstructions)
  {
    self->_resolveAutoplacement = [(SXConditionalResolverModifierInstructions *)self->_instructions shouldResolveAutoplacement];
    self->_resolveComponents = [(SXConditionalResolverModifierInstructions *)self->_instructions shouldResolveComponents];
    self->_resolveComponentLayouts = [(SXConditionalResolverModifierInstructions *)self->_instructions shouldResolveComponentLayouts];
    self->_resolveComponentStyles = [(SXConditionalResolverModifierInstructions *)self->_instructions shouldResolveComponentStyles];
    self->_resolveComponentTextStyles = [(SXConditionalResolverModifierInstructions *)self->_instructions shouldResolveComponentTextStyles];
    self->_resolveDocumentStyle = [(SXConditionalResolverModifierInstructions *)self->_instructions shouldResolveDocumentStyle];
    self->_resolveTextStyles = [(SXConditionalResolverModifierInstructions *)self->_instructions shouldResolveTextStyles];
    self->_hasCheckedInstructions = 1;
  }

  if (self->_resolveComponents || self->_resolveComponentStyles || self->_resolveComponentLayouts || self->_resolveComponentTextStyles || self->_resolveTextStyles || self->_resolveAutoplacement || self->_resolveDocumentStyle)
  {
    validationContextFactory = self->_validationContextFactory;
    v8 = [v6 layoutOptions];
    v9 = [v6 experiment];
    v10 = [(SXConditionValidationContextFactory *)validationContextFactory createContextWithLayoutOptions:v8 experiment:v9];

    if (self->_resolveComponents)
    {
      v11 = [v32 components];
      v12 = [v32 analysis];
      v13 = [v12 conditionalObjectAnalysis];
      self->_resolveComponents = [(SXDOMConditionResolverModifier *)self resolveComponents:v11 conditionalObjectAnalysis:v13 validationContext:v10];
    }

    if (self->_resolveTextStyles)
    {
      v14 = [v32 textStyles];
      v15 = [v32 analysis];
      v16 = [v15 conditionalObjectAnalysis];
      self->_resolveTextStyles = [(SXDOMConditionResolverModifier *)self resolveTextStyles:v14 conditionalObjectAnalysis:v16 validationContext:v10];
    }

    if (self->_resolveComponentLayouts)
    {
      v17 = [v32 componentLayouts];
      v18 = [v32 analysis];
      v19 = [v18 conditionalObjectAnalysis];
      self->_resolveComponentLayouts = [(SXDOMConditionResolverModifier *)self resolveComponentLayouts:v17 conditionalObjectAnalysis:v19 validationContext:v10];
    }

    if (self->_resolveComponentStyles)
    {
      v20 = [v32 componentStyles];
      v21 = [v32 analysis];
      v22 = [v21 conditionalObjectAnalysis];
      self->_resolveComponentStyles = [(SXDOMConditionResolverModifier *)self resolveComponentStyles:v20 conditionalObjectAnalysis:v22 validationContext:v10];
    }

    if (self->_resolveComponentTextStyles)
    {
      v23 = [v32 componentTextStyles];
      v24 = [v32 analysis];
      v25 = [v24 conditionalObjectAnalysis];
      self->_resolveComponentTextStyles = [(SXDOMConditionResolverModifier *)self resolveComponentTextStyle:v23 conditionalObjectAnalysis:v25 validationContext:v10];
    }

    if (self->_resolveAutoplacement)
    {
      v26 = [v32 autoPlacement];
      v27 = [(SXDOMConditionResolverModifier *)self resolveAutoPlacement:v26 validationContext:v10];
      [v32 setAutoPlacement:v27];
    }

    if (self->_resolveDocumentStyle)
    {
      v28 = [v32 documentStyle];
      v29 = [v32 analysis];
      v30 = [v29 conditionalObjectAnalysis];
      v31 = [(SXDOMConditionResolverModifier *)self resolveDocumentStyle:v28 conditionalObjectAnalysis:v30 validationContext:v10];
      [v32 setDocumentStyle:v31];
    }
  }
}

- (BOOL)resolveComponents:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [v8 allComponents];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__SXDOMConditionResolverModifier_resolveComponents_conditionalObjectAnalysis_validationContext___block_invoke;
  v16[3] = &unk_1E8501950;
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  v20 = &v21;
  v14 = v9;
  v19 = v14;
  [v11 enumerateObjectsUsingBlock:v16];

  LOBYTE(v11) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __96__SXDOMConditionResolverModifier_resolveComponents_conditionalObjectAnalysis_validationContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 conditional];

  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    v20[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v9 = [v7 resolveObjects:v8 context:*(a1 + 40)];

    v10 = [v9 object];
    if (v10 != v5)
    {
      [*(a1 + 48) replaceComponentAtIndex:a3 withComponent:v10];
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v11 = *(a1 + 56);
    v12 = [v5 identifier];
    v13 = [v9 conditionTypes];
    [v11 addComponentIdentifier:v12 conditionTypes:v13];
  }

  v14 = *(a1 + 48);
  v15 = [v5 identifier];
  v16 = [v14 componentsForContainerComponentWithIdentifier:v15];

  if (v16)
  {
    v17 = [*(a1 + 32) resolveComponents:v16 conditionalObjectAnalysis:*(a1 + 56) validationContext:*(a1 + 40)];
    v18 = *(*(a1 + 64) + 8);
    if (v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = *(v18 + 24);
    }

    *(v18 + 24) = v19 & 1;
  }
}

- (BOOL)resolveTextStyles:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [v8 copy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__SXDOMConditionResolverModifier_resolveTextStyles_conditionalObjectAnalysis_validationContext___block_invoke;
  v16[3] = &unk_1E8501978;
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  v20 = &v21;
  v13 = v8;
  v18 = v13;
  v14 = v9;
  v19 = v14;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];

  LOBYTE(v11) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __96__SXDOMConditionResolverModifier_resolveTextStyles_conditionalObjectAnalysis_validationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 conditional];

  v8 = v6;
  if (v7)
  {
    v9 = *(*(a1 + 32) + 32);
    v14[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [v9 resolveObjects:v10 context:*(a1 + 40)];

    v8 = [v11 object];

    *(*(*(a1 + 64) + 8) + 24) = 1;
    if (v8 != v6)
    {
      [*(a1 + 48) setObject:v8 forKey:v5];
    }

    v12 = *(a1 + 56);
    v13 = [v11 conditionTypes];
    [v12 addTextStyleIdentifier:v5 conditionTypes:v13];
  }
}

- (BOOL)resolveComponentLayouts:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [v8 copy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__SXDOMConditionResolverModifier_resolveComponentLayouts_conditionalObjectAnalysis_validationContext___block_invoke;
  v16[3] = &unk_1E85019A0;
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  v20 = &v21;
  v13 = v8;
  v18 = v13;
  v14 = v9;
  v19 = v14;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];

  LOBYTE(v11) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __102__SXDOMConditionResolverModifier_resolveComponentLayouts_conditionalObjectAnalysis_validationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 conditional];

  v8 = v6;
  if (v7)
  {
    v9 = *(*(a1 + 32) + 48);
    v14[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [v9 resolveObjects:v10 context:*(a1 + 40)];

    v8 = [v11 object];

    *(*(*(a1 + 64) + 8) + 24) = 1;
    if (v8 != v6)
    {
      [*(a1 + 48) setObject:v8 forKey:v5];
    }

    v12 = *(a1 + 56);
    v13 = [v11 conditionTypes];
    [v12 addComponentLayoutIdentifier:v5 conditionTypes:v13];
  }
}

- (BOOL)resolveComponentStyles:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [v8 copy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__SXDOMConditionResolverModifier_resolveComponentStyles_conditionalObjectAnalysis_validationContext___block_invoke;
  v16[3] = &unk_1E85019C8;
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  v20 = &v21;
  v13 = v8;
  v18 = v13;
  v14 = v9;
  v19 = v14;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];

  LOBYTE(v11) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __101__SXDOMConditionResolverModifier_resolveComponentStyles_conditionalObjectAnalysis_validationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 conditional];

  v8 = v6;
  if (v7)
  {
    v9 = *(*(a1 + 32) + 40);
    v14[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [v9 resolveObjects:v10 context:*(a1 + 40)];

    v8 = [v11 object];

    *(*(*(a1 + 64) + 8) + 24) = 1;
    if (v8 != v6)
    {
      [*(a1 + 48) setObject:v8 forKey:v5];
    }

    v12 = *(a1 + 56);
    v13 = [v11 conditionTypes];
    [v12 addComponentStyleIdentifier:v5 conditionTypes:v13];
  }
}

- (BOOL)resolveComponentTextStyle:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [v8 copy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __104__SXDOMConditionResolverModifier_resolveComponentTextStyle_conditionalObjectAnalysis_validationContext___block_invoke;
  v16[3] = &unk_1E85019F0;
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  v20 = &v21;
  v13 = v8;
  v18 = v13;
  v14 = v9;
  v19 = v14;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];

  LOBYTE(v11) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __104__SXDOMConditionResolverModifier_resolveComponentTextStyle_conditionalObjectAnalysis_validationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 conditional];

  v8 = v6;
  if (v7)
  {
    v9 = *(*(a1 + 32) + 56);
    v14[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [v9 resolveObjects:v10 context:*(a1 + 40)];

    v8 = [v11 object];

    *(*(*(a1 + 64) + 8) + 24) = 1;
    if (v8 != v6)
    {
      [*(a1 + 48) setObject:v8 forKey:v5];
    }

    v12 = *(a1 + 56);
    v13 = [v11 conditionTypes];
    [v12 addComponentTextStyleIdentifier:v5 conditionTypes:v13];
  }
}

- (id)resolveAutoPlacement:(id)a3 validationContext:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 advertisement];
  v9 = [v6 suggestedArticles];
  if (v8 && ([v8 conditional], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    advertisementAutoPlacementResolver = self->_advertisementAutoPlacementResolver;
    v12 = [v6 advertisement];
    v26[0] = v12;
    v13 = 1;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v15 = [(SXConditionalObjectResolver *)advertisementAutoPlacementResolver resolveObjects:v14 context:v7];

    v16 = [v15 object];

    v8 = v16;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v17 = [v9 conditional];

  if (v17)
  {
    suggestedArticlesAutoPlacementResolver = self->_suggestedArticlesAutoPlacementResolver;
    v19 = [v6 suggestedArticles];
    v25 = v19;
    v13 = 1;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v21 = [(SXConditionalObjectResolver *)suggestedArticlesAutoPlacementResolver resolveObjects:v20 context:v7];

    v22 = [v21 object];

    v9 = v22;
  }

LABEL_8:
  self->_resolveAutoplacement = v13;
  v23 = [[SXResolvedAutoPlacement alloc] initWithAdvertisement:v8 suggestedArticles:v9];

  return v23;
}

- (id)resolveDocumentStyle:(id)a3 conditionalObjectAnalysis:(id)a4 validationContext:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 conditional];

    if (v13)
    {
      documentStyleResolver = self->_documentStyleResolver;
      v21[0] = v12;
      v15 = 1;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v17 = [(SXConditionalObjectResolver *)documentStyleResolver resolveObjects:v16 context:v10];

      v18 = [v17 object];

      v19 = [v17 conditionTypes];
      [v9 setDocumentStyleConditionTypes:v19];
    }

    else
    {
      v15 = 0;
      v18 = v12;
    }
  }

  else
  {
    v15 = 0;
    v18 = 0;
  }

  self->_resolveDocumentStyle = v15;

  return v18;
}

@end