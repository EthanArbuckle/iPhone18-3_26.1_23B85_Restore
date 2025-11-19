@interface CALayer(UISRenderingEnvironmentAttributes)
- (id)_uis_renderingAttributes;
@end

@implementation CALayer(UISRenderingEnvironmentAttributes)

- (id)_uis_renderingAttributes
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 _uis_provideRenderingAttributes];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end