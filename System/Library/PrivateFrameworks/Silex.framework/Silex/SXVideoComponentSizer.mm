@interface SXVideoComponentSizer
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
@end

@implementation SXVideoComponentSizer

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  component = [(SXComponentSizer *)self component];
  [component aspectRatio];
  v7 = v6;

  result = width / v7;
  if (v7 == 1.79769313e308)
  {
    return 0.0;
  }

  return result;
}

@end