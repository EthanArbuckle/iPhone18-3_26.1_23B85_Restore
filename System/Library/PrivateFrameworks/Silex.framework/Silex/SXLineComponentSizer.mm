@interface SXLineComponentSizer
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
@end

@implementation SXLineComponentSizer

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  unitConverter = [context unitConverter];
  component = [(SXComponentSizer *)self component];
  stroke = [component stroke];
  width = [stroke width];
  [unitConverter convertValueToPoints:{width, v9}];
  v11 = v10;

  result = 1.0;
  if (v11 >= 1.0)
  {
    return v11;
  }

  return result;
}

@end