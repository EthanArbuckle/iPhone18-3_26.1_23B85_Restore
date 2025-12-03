@interface SXConditionalResolverModifierInstructions
- (BOOL)shouldResolveAutoplacement;
- (BOOL)shouldResolveComponentLayouts;
- (BOOL)shouldResolveComponentStyles;
- (BOOL)shouldResolveComponentTextStyles;
- (BOOL)shouldResolveComponents;
- (BOOL)shouldResolveDocumentStyle;
- (BOOL)shouldResolveTextStyles;
- (SXConditionalResolverModifierInstructions)initWithDocumentProvider:(id)provider hintsConfigurationOptionProvider:(id)optionProvider;
- (id)hints;
@end

@implementation SXConditionalResolverModifierInstructions

- (SXConditionalResolverModifierInstructions)initWithDocumentProvider:(id)provider hintsConfigurationOptionProvider:(id)optionProvider
{
  providerCopy = provider;
  optionProviderCopy = optionProvider;
  v12.receiver = self;
  v12.super_class = SXConditionalResolverModifierInstructions;
  v9 = [(SXConditionalResolverModifierInstructions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_documentProvider, provider);
    objc_storeStrong(&v10->_hintsConfigurationOptionProvider, optionProvider);
  }

  return v10;
}

- (BOOL)shouldResolveAutoplacement
{
  hints = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = hints;
  if (hints)
  {
    v4 = [hints autoplacement] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveComponents
{
  hints = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = hints;
  if (hints)
  {
    v4 = [hints components] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveComponentLayouts
{
  hints = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = hints;
  if (hints)
  {
    v4 = [hints componentLayouts] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveComponentStyles
{
  hints = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = hints;
  if (hints)
  {
    v4 = [hints componentStyles] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveComponentTextStyles
{
  hints = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = hints;
  if (hints)
  {
    v4 = [hints componentTextStyles] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveDocumentStyle
{
  hints = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = hints;
  if (hints)
  {
    v4 = [hints documentStyle] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldResolveTextStyles
{
  hints = [(SXConditionalResolverModifierInstructions *)self hints];
  v3 = hints;
  if (hints)
  {
    v4 = [hints textStyles] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)hints
{
  hints = [(SXHintsConfigurationOptionProvider *)self->_hintsConfigurationOptionProvider hints];
  ignoreConditionalHints = [hints ignoreConditionalHints];

  if (ignoreConditionalHints)
  {
    conditionals = 0;
  }

  else
  {
    document = [(SXDocumentProviding *)self->_documentProvider document];
    hints2 = [document hints];
    conditionals = [hints2 conditionals];
  }

  return conditionals;
}

@end