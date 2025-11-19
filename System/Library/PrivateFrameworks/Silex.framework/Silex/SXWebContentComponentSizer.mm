@interface SXWebContentComponentSizer
- (SXWebContentComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 loadingPolicyProvider:(id)a8;
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
@end

@implementation SXWebContentComponentSizer

- (SXWebContentComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 loadingPolicyProvider:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = SXWebContentComponentSizer;
  v16 = [(SXComponentSizer *)&v19 initWithComponent:a3 componentLayout:a4 componentStyle:a5 DOMObjectProvider:a6 layoutOptions:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_loadingPolicyProvider, a8);
  }

  return v17;
}

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v5 = a4;
  v6 = [(SXWebContentComponentSizer *)self loadingPolicyProvider];
  v7 = [v6 loadingPolicy];

  v8 = 0.0;
  if (v7 != 2)
  {
    [(SXComponentSizer *)self suggestedSize];
    if (v9 == 0.0)
    {
      v10 = [(SXComponentSizer *)self componentLayout];
      [v10 suggestedHeight];
      v12 = v11;

      if (v12)
      {
        v13 = [v5 unitConverter];
        v14 = [(SXComponentSizer *)self componentLayout];
        v15 = [v14 suggestedHeight];
        [v13 convertValueToPoints:{v15, v16}];
        v18 = v17;

        if (v18 >= 20.0)
        {
          v19 = v18;
        }

        else
        {
          v19 = 20.0;
        }

        v20 = [v5 unitConverter];
        [v20 convertValueToPoints:{0x4059000000000000, 2}];
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