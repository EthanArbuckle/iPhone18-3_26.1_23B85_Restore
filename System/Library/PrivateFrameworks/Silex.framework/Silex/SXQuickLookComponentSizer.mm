@interface SXQuickLookComponentSizer
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
@end

@implementation SXQuickLookComponentSizer

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v6 = a4;
  v7 = [(SXComponentSizer *)self componentLayout];
  [v7 minimumHeight];
  v9 = v8;

  v10 = [v6 unitConverter];

  if (v9)
  {
    v11 = [(SXComponentSizer *)self componentLayout];
    v12 = [v11 minimumHeight];
    [v10 convertValueToPoints:{v12, v13}];
    v15 = v14;

    return v15;
  }

  else
  {
    [v10 convertValueToPoints:{0x4049000000000000, 2}];
    v18 = v17;

    if (v18 <= a3)
    {
      return v18;
    }

    else
    {
      return a3;
    }
  }
}

@end