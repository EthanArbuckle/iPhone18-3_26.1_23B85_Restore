@interface SXVideoComponentSizer
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
@end

@implementation SXVideoComponentSizer

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v5 = [(SXComponentSizer *)self component];
  [v5 aspectRatio];
  v7 = v6;

  result = a3 / v7;
  if (v7 == 1.79769313e308)
  {
    return 0.0;
  }

  return result;
}

@end