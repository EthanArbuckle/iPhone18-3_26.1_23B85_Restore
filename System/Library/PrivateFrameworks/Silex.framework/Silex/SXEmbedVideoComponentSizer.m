@interface SXEmbedVideoComponentSizer
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
@end

@implementation SXEmbedVideoComponentSizer

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v5 = [(SXComponentSizer *)self component];
  [v5 aspectRatio];
  v7 = v6;

  v8 = v7 == 0.0 || v7 == 1.79769313e308;
  v9 = 1.77777779;
  if (!v8)
  {
    v9 = v7;
  }

  return a3 / v9;
}

@end