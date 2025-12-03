@interface SXDOMCacheKeyFactory
- (SXDOMCacheKeyFactory)initWithDocumentProvider:(id)provider hintsConfigurationOptionProvider:(id)optionProvider;
- (id)createCacheKeyForLayoutOptions:(id)options;
@end

@implementation SXDOMCacheKeyFactory

- (SXDOMCacheKeyFactory)initWithDocumentProvider:(id)provider hintsConfigurationOptionProvider:(id)optionProvider
{
  providerCopy = provider;
  optionProviderCopy = optionProvider;
  v12.receiver = self;
  v12.super_class = SXDOMCacheKeyFactory;
  v9 = [(SXDOMCacheKeyFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_documentProvider, provider);
    objc_storeStrong(&v10->_hintsConfigurationOptionProvider, optionProvider);
  }

  return v10;
}

- (id)createCacheKeyForLayoutOptions:(id)options
{
  hintsConfigurationOptionProvider = self->_hintsConfigurationOptionProvider;
  optionsCopy = options;
  hints = [(SXHintsConfigurationOptionProvider *)hintsConfigurationOptionProvider hints];
  ignoreConditionHints = [hints ignoreConditionHints];

  if (ignoreConditionHints)
  {
    conditions = 0;
  }

  else
  {
    document = [(SXDocumentProviding *)self->_documentProvider document];
    hints2 = [document hints];
    conditions = [hints2 conditions];
  }

  v11 = [[SXDOMCacheKey alloc] initWithLayoutOptions:optionsCopy hints:conditions];

  return v11;
}

@end