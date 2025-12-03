@interface SXEmbedVideoComponentSizer
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
@end

@implementation SXEmbedVideoComponentSizer

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  component = [(SXComponentSizer *)self component];
  [component aspectRatio];
  v7 = v6;

  v8 = v7 == 0.0 || v7 == 1.79769313e308;
  v9 = 1.77777779;
  if (!v8)
  {
    v9 = v7;
  }

  return width / v9;
}

@end