@interface SXWebContentComponentSizer
- (SXWebContentComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options loadingPolicyProvider:(id)policyProvider;
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
@end

@implementation SXWebContentComponentSizer

- (SXWebContentComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options loadingPolicyProvider:(id)policyProvider
{
  policyProviderCopy = policyProvider;
  v19.receiver = self;
  v19.super_class = SXWebContentComponentSizer;
  v16 = [(SXComponentSizer *)&v19 initWithComponent:component componentLayout:layout componentStyle:style DOMObjectProvider:provider layoutOptions:options];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_loadingPolicyProvider, policyProvider);
  }

  return v17;
}

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  contextCopy = context;
  loadingPolicyProvider = [(SXWebContentComponentSizer *)self loadingPolicyProvider];
  loadingPolicy = [loadingPolicyProvider loadingPolicy];

  v8 = 0.0;
  if (loadingPolicy != 2)
  {
    [(SXComponentSizer *)self suggestedSize];
    if (v9 == 0.0)
    {
      componentLayout = [(SXComponentSizer *)self componentLayout];
      [componentLayout suggestedHeight];
      v12 = v11;

      if (v12)
      {
        unitConverter = [contextCopy unitConverter];
        componentLayout2 = [(SXComponentSizer *)self componentLayout];
        suggestedHeight = [componentLayout2 suggestedHeight];
        [unitConverter convertValueToPoints:{suggestedHeight, v16}];
        v18 = v17;

        if (v18 >= 20.0)
        {
          v19 = v18;
        }

        else
        {
          v19 = 20.0;
        }

        unitConverter2 = [contextCopy unitConverter];
        [unitConverter2 convertValueToPoints:{0x4059000000000000, 2}];
        v8 = v21;

        if (v19 < v8)
        {
          v8 = v19;
        }
      }

      else
      {
        v8 = 300.0;
      }
    }

    else
    {
      [(SXComponentSizer *)self suggestedSize];
      v8 = v22;
    }
  }

  return v8;
}

@end