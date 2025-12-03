@interface SXQuickLookComponentSizer
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
@end

@implementation SXQuickLookComponentSizer

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  contextCopy = context;
  componentLayout = [(SXComponentSizer *)self componentLayout];
  [componentLayout minimumHeight];
  v9 = v8;

  unitConverter = [contextCopy unitConverter];

  if (v9)
  {
    componentLayout2 = [(SXComponentSizer *)self componentLayout];
    minimumHeight = [componentLayout2 minimumHeight];
    [unitConverter convertValueToPoints:{minimumHeight, v13}];
    v15 = v14;

    return v15;
  }

  else
  {
    [unitConverter convertValueToPoints:{0x4049000000000000, 2}];
    v18 = v17;

    if (v18 <= width)
    {
      return v18;
    }

    else
    {
      return width;
    }
  }
}

@end