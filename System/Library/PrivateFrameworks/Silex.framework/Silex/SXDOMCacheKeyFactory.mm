@interface SXDOMCacheKeyFactory
- (SXDOMCacheKeyFactory)initWithDocumentProvider:(id)a3 hintsConfigurationOptionProvider:(id)a4;
- (id)createCacheKeyForLayoutOptions:(id)a3;
@end

@implementation SXDOMCacheKeyFactory

- (SXDOMCacheKeyFactory)initWithDocumentProvider:(id)a3 hintsConfigurationOptionProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXDOMCacheKeyFactory;
  v9 = [(SXDOMCacheKeyFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_documentProvider, a3);
    objc_storeStrong(&v10->_hintsConfigurationOptionProvider, a4);
  }

  return v10;
}

- (id)createCacheKeyForLayoutOptions:(id)a3
{
  hintsConfigurationOptionProvider = self->_hintsConfigurationOptionProvider;
  v5 = a3;
  v6 = [(SXHintsConfigurationOptionProvider *)hintsConfigurationOptionProvider hints];
  v7 = [v6 ignoreConditionHints];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SXDocumentProviding *)self->_documentProvider document];
    v10 = [v9 hints];
    v8 = [v10 conditions];
  }

  v11 = [[SXDOMCacheKey alloc] initWithLayoutOptions:v5 hints:v8];

  return v11;
}

@end