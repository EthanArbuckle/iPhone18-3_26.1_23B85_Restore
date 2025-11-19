@interface SXLineComponentSizer
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
@end

@implementation SXLineComponentSizer

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v5 = [a4 unitConverter];
  v6 = [(SXComponentSizer *)self component];
  v7 = [v6 stroke];
  v8 = [v7 width];
  [v5 convertValueToPoints:{v8, v9}];
  v11 = v10;

  result = 1.0;
  if (v11 >= 1.0)
  {
    return v11;
  }

  return result;
}

@end