@interface SXWebContentComponentSizerFactory
- (SXWebContentComponentSizerFactory)initWithDOMObjectProvider:(id)provider loadingPolicyProvider:(id)policyProvider;
- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider;
@end

@implementation SXWebContentComponentSizerFactory

- (SXWebContentComponentSizerFactory)initWithDOMObjectProvider:(id)provider loadingPolicyProvider:(id)policyProvider
{
  providerCopy = provider;
  policyProviderCopy = policyProvider;
  v12.receiver = self;
  v12.super_class = SXWebContentComponentSizerFactory;
  v9 = [(SXWebContentComponentSizerFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DOMObjectProvider, provider);
    objc_storeStrong(&v10->_loadingPolicyProvider, policyProvider);
  }

  return v10;
}

- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider
{
  providerCopy = provider;
  optionsCopy = options;
  layoutCopy = layout;
  componentCopy = component;
  v14 = [providerCopy componentStyleForComponent:componentCopy];
  v15 = [SXWebContentComponentSizer alloc];
  loadingPolicyProvider = [(SXWebContentComponentSizerFactory *)self loadingPolicyProvider];
  v17 = [(SXWebContentComponentSizer *)v15 initWithComponent:componentCopy componentLayout:layoutCopy componentStyle:v14 DOMObjectProvider:providerCopy layoutOptions:optionsCopy loadingPolicyProvider:loadingPolicyProvider];

  return v17;
}

@end