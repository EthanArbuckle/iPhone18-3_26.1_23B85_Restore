@interface SXConditionalResolverModifierInstructions
- (BOOL)shouldResolveAutoplacement;
- (BOOL)shouldResolveComponentLayouts;
- (BOOL)shouldResolveComponentStyles;
- (BOOL)shouldResolveComponentTextStyles;
- (BOOL)shouldResolveComponents;
- (BOOL)shouldResolveDocumentStyle;
- (BOOL)shouldResolveTextStyles;
- (SXConditionalResolverModifierInstructions)initWithDocumentProvider:(id)a3 hintsConfigurationOptionProvider:(id)a4;
- (id)hints;
@end

@implementation SXConditionalResolverModifierInstructions

- (SXConditionalResolverModifierInstructions)initWithDocumentProvider:(id)a3 hintsConfigurationOptionProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXConditionalResolverModifierInstructions;
  v9 = [(SXConditionalResolverModifierInstructions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_documentProvider, a3);
    objc_storeStrong(&v10->_hintsConfigurationOptionProvider, a4);
  }

  return v10;
}

- (BOOL)shouldResolveAutoplacement
{
  v2 = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 autoplacement] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveComponents
{
  v2 = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 components] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveComponentLayouts
{
  v2 = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 componentLayouts] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveComponentStyles
{
  v2 = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 componentStyles] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveComponentTextStyles
{
  v2 = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 componentTextStyles] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveDocumentStyle
{
  v2 = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 documentStyle] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveTextStyles
{
  v2 = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 textStyles] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)hints
{
  v3 = [(SXHintsConfigurationOptionProvider *)self->_hintsConfigurationOptionProvider hints];
  v4 = [v3 ignoreConditionalHints];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SXDocumentProviding *)self->_documentProvider document];
    v7 = [v6 hints];
    v5 = [v7 conditionals];
  }

  return v5;
}

@end