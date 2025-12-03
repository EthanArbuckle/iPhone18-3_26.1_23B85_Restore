@interface SXDOMConditionResolverModifier
- (BOOL)resolveComponentLayouts:(id)layouts conditionalObjectAnalysis:(id)analysis validationContext:(id)context;
- (BOOL)resolveComponentStyles:(id)styles conditionalObjectAnalysis:(id)analysis validationContext:(id)context;
- (BOOL)resolveComponentTextStyle:(id)style conditionalObjectAnalysis:(id)analysis validationContext:(id)context;
- (BOOL)resolveComponents:(id)components conditionalObjectAnalysis:(id)analysis validationContext:(id)context;
- (BOOL)resolveTextStyles:(id)styles conditionalObjectAnalysis:(id)analysis validationContext:(id)context;
- (SXDOMConditionResolverModifier)initWithValidationContextFactory:(id)factory componentResolver:(id)resolver textStyleResolver:(id)styleResolver componentStyleResolver:(id)componentStyleResolver componentLayoutResolver:(id)layoutResolver componentTextStyleResolver:(id)textStyleResolver advertisementAutoPlacementResolver:(id)placementResolver suggestedArticlesAutoPlacementResolver:(id)self0 documentStyleResolver:(id)self1 instructions:(id)self2;
- (id)resolveAutoPlacement:(id)placement validationContext:(id)context;
- (id)resolveDocumentStyle:(id)style conditionalObjectAnalysis:(id)analysis validationContext:(id)context;
- (void)modifyDOM:(id)m context:(id)context;
@end

@implementation SXDOMConditionResolverModifier

- (SXDOMConditionResolverModifier)initWithValidationContextFactory:(id)factory componentResolver:(id)resolver textStyleResolver:(id)styleResolver componentStyleResolver:(id)componentStyleResolver componentLayoutResolver:(id)layoutResolver componentTextStyleResolver:(id)textStyleResolver advertisementAutoPlacementResolver:(id)placementResolver suggestedArticlesAutoPlacementResolver:(id)self0 documentStyleResolver:(id)self1 instructions:(id)self2
{
  factoryCopy = factory;
  obj = resolver;
  resolverCopy = resolver;
  styleResolverCopy = styleResolver;
  styleResolverCopy2 = styleResolver;
  componentStyleResolverCopy = componentStyleResolver;
  layoutResolverCopy = layoutResolver;
  layoutResolverCopy2 = layoutResolver;
  textStyleResolverCopy = textStyleResolver;
  textStyleResolverCopy2 = textStyleResolver;
  placementResolverCopy = placementResolver;
  autoPlacementResolverCopy = autoPlacementResolver;
  documentStyleResolverCopy = documentStyleResolver;
  instructionsCopy = instructions;
  v36.receiver = self;
  v36.super_class = SXDOMConditionResolverModifier;
  v23 = [(SXDOMConditionResolverModifier *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_validationContextFactory, factory);
    objc_storeStrong(&v24->_componentResolver, obj);
    objc_storeStrong(&v24->_textStyleResolver, styleResolverCopy);
    objc_storeStrong(&v24->_componentStyleResolver, componentStyleResolver);
    objc_storeStrong(&v24->_componentLayoutResolver, layoutResolverCopy);
    objc_storeStrong(&v24->_componentTextStyleResolver, textStyleResolverCopy);
    objc_storeStrong(&v24->_advertisementAutoPlacementResolver, placementResolver);
    objc_storeStrong(&v24->_suggestedArticlesAutoPlacementResolver, autoPlacementResolver);
    objc_storeStrong(&v24->_documentStyleResolver, documentStyleResolver);
    objc_storeStrong(&v24->_instructions, instructions);
  }

  return v24;
}

- (void)modifyDOM:(id)m context:(id)context
{
  mCopy = m;
  contextCopy = context;
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
    layoutOptions = [contextCopy layoutOptions];
    experiment = [contextCopy experiment];
    v10 = [(SXConditionValidationContextFactory *)validationContextFactory createContextWithLayoutOptions:layoutOptions experiment:experiment];

    if (self->_resolveComponents)
    {
      components = [mCopy components];
      analysis = [mCopy analysis];
      conditionalObjectAnalysis = [analysis conditionalObjectAnalysis];
      self->_resolveComponents = [(SXDOMConditionResolverModifier *)self resolveComponents:components conditionalObjectAnalysis:conditionalObjectAnalysis validationContext:v10];
    }

    if (self->_resolveTextStyles)
    {
      textStyles = [mCopy textStyles];
      analysis2 = [mCopy analysis];
      conditionalObjectAnalysis2 = [analysis2 conditionalObjectAnalysis];
      self->_resolveTextStyles = [(SXDOMConditionResolverModifier *)self resolveTextStyles:textStyles conditionalObjectAnalysis:conditionalObjectAnalysis2 validationContext:v10];
    }

    if (self->_resolveComponentLayouts)
    {
      componentLayouts = [mCopy componentLayouts];
      analysis3 = [mCopy analysis];
      conditionalObjectAnalysis3 = [analysis3 conditionalObjectAnalysis];
      self->_resolveComponentLayouts = [(SXDOMConditionResolverModifier *)self resolveComponentLayouts:componentLayouts conditionalObjectAnalysis:conditionalObjectAnalysis3 validationContext:v10];
    }

    if (self->_resolveComponentStyles)
    {
      componentStyles = [mCopy componentStyles];
      analysis4 = [mCopy analysis];
      conditionalObjectAnalysis4 = [analysis4 conditionalObjectAnalysis];
      self->_resolveComponentStyles = [(SXDOMConditionResolverModifier *)self resolveComponentStyles:componentStyles conditionalObjectAnalysis:conditionalObjectAnalysis4 validationContext:v10];
    }

    if (self->_resolveComponentTextStyles)
    {
      componentTextStyles = [mCopy componentTextStyles];
      analysis5 = [mCopy analysis];
      conditionalObjectAnalysis5 = [analysis5 conditionalObjectAnalysis];
      self->_resolveComponentTextStyles = [(SXDOMConditionResolverModifier *)self resolveComponentTextStyle:componentTextStyles conditionalObjectAnalysis:conditionalObjectAnalysis5 validationContext:v10];
    }

    if (self->_resolveAutoplacement)
    {
      autoPlacement = [mCopy autoPlacement];
      v27 = [(SXDOMConditionResolverModifier *)self resolveAutoPlacement:autoPlacement validationContext:v10];
      [mCopy setAutoPlacement:v27];
    }

    if (self->_resolveDocumentStyle)
    {
      documentStyle = [mCopy documentStyle];
      analysis6 = [mCopy analysis];
      conditionalObjectAnalysis6 = [analysis6 conditionalObjectAnalysis];
      v31 = [(SXDOMConditionResolverModifier *)self resolveDocumentStyle:documentStyle conditionalObjectAnalysis:conditionalObjectAnalysis6 validationContext:v10];
      [mCopy setDocumentStyle:v31];
    }
  }
}

- (BOOL)resolveComponents:(id)components conditionalObjectAnalysis:(id)analysis validationContext:(id)context
{
  componentsCopy = components;
  analysisCopy = analysis;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  allComponents = [componentsCopy allComponents];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__SXDOMConditionResolverModifier_resolveComponents_conditionalObjectAnalysis_validationContext___block_invoke;
  v16[3] = &unk_1E8501950;
  v16[4] = self;
  v12 = contextCopy;
  v17 = v12;
  v13 = componentsCopy;
  v18 = v13;
  v20 = &v21;
  v14 = analysisCopy;
  v19 = v14;
  [allComponents enumerateObjectsUsingBlock:v16];

  LOBYTE(allComponents) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return allComponents;
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

- (BOOL)resolveTextStyles:(id)styles conditionalObjectAnalysis:(id)analysis validationContext:(id)context
{
  stylesCopy = styles;
  analysisCopy = analysis;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [stylesCopy copy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__SXDOMConditionResolverModifier_resolveTextStyles_conditionalObjectAnalysis_validationContext___block_invoke;
  v16[3] = &unk_1E8501978;
  v16[4] = self;
  v12 = contextCopy;
  v17 = v12;
  v20 = &v21;
  v13 = stylesCopy;
  v18 = v13;
  v14 = analysisCopy;
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

- (BOOL)resolveComponentLayouts:(id)layouts conditionalObjectAnalysis:(id)analysis validationContext:(id)context
{
  layoutsCopy = layouts;
  analysisCopy = analysis;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [layoutsCopy copy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__SXDOMConditionResolverModifier_resolveComponentLayouts_conditionalObjectAnalysis_validationContext___block_invoke;
  v16[3] = &unk_1E85019A0;
  v16[4] = self;
  v12 = contextCopy;
  v17 = v12;
  v20 = &v21;
  v13 = layoutsCopy;
  v18 = v13;
  v14 = analysisCopy;
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

- (BOOL)resolveComponentStyles:(id)styles conditionalObjectAnalysis:(id)analysis validationContext:(id)context
{
  stylesCopy = styles;
  analysisCopy = analysis;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [stylesCopy copy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__SXDOMConditionResolverModifier_resolveComponentStyles_conditionalObjectAnalysis_validationContext___block_invoke;
  v16[3] = &unk_1E85019C8;
  v16[4] = self;
  v12 = contextCopy;
  v17 = v12;
  v20 = &v21;
  v13 = stylesCopy;
  v18 = v13;
  v14 = analysisCopy;
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

- (BOOL)resolveComponentTextStyle:(id)style conditionalObjectAnalysis:(id)analysis validationContext:(id)context
{
  styleCopy = style;
  analysisCopy = analysis;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [styleCopy copy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __104__SXDOMConditionResolverModifier_resolveComponentTextStyle_conditionalObjectAnalysis_validationContext___block_invoke;
  v16[3] = &unk_1E85019F0;
  v16[4] = self;
  v12 = contextCopy;
  v17 = v12;
  v20 = &v21;
  v13 = styleCopy;
  v18 = v13;
  v14 = analysisCopy;
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

- (id)resolveAutoPlacement:(id)placement validationContext:(id)context
{
  v26[1] = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  contextCopy = context;
  advertisement = [placementCopy advertisement];
  suggestedArticles = [placementCopy suggestedArticles];
  if (advertisement && ([advertisement conditional], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    advertisementAutoPlacementResolver = self->_advertisementAutoPlacementResolver;
    advertisement2 = [placementCopy advertisement];
    v26[0] = advertisement2;
    v13 = 1;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v15 = [(SXConditionalObjectResolver *)advertisementAutoPlacementResolver resolveObjects:v14 context:contextCopy];

    object = [v15 object];

    advertisement = object;
    if (!suggestedArticles)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (!suggestedArticles)
    {
      goto LABEL_8;
    }
  }

  conditional = [suggestedArticles conditional];

  if (conditional)
  {
    suggestedArticlesAutoPlacementResolver = self->_suggestedArticlesAutoPlacementResolver;
    suggestedArticles2 = [placementCopy suggestedArticles];
    v25 = suggestedArticles2;
    v13 = 1;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v21 = [(SXConditionalObjectResolver *)suggestedArticlesAutoPlacementResolver resolveObjects:v20 context:contextCopy];

    object2 = [v21 object];

    suggestedArticles = object2;
  }

LABEL_8:
  self->_resolveAutoplacement = v13;
  v23 = [[SXResolvedAutoPlacement alloc] initWithAdvertisement:advertisement suggestedArticles:suggestedArticles];

  return v23;
}

- (id)resolveDocumentStyle:(id)style conditionalObjectAnalysis:(id)analysis validationContext:(id)context
{
  v21[1] = *MEMORY[0x1E69E9840];
  styleCopy = style;
  analysisCopy = analysis;
  contextCopy = context;
  v11 = styleCopy;
  v12 = v11;
  if (v11)
  {
    conditional = [v11 conditional];

    if (conditional)
    {
      documentStyleResolver = self->_documentStyleResolver;
      v21[0] = v12;
      v15 = 1;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v17 = [(SXConditionalObjectResolver *)documentStyleResolver resolveObjects:v16 context:contextCopy];

      object = [v17 object];

      conditionTypes = [v17 conditionTypes];
      [analysisCopy setDocumentStyleConditionTypes:conditionTypes];
    }

    else
    {
      v15 = 0;
      object = v12;
    }
  }

  else
  {
    v15 = 0;
    object = 0;
  }

  self->_resolveDocumentStyle = v15;

  return object;
}

@end