@interface CALayer(UISRenderingEnvironmentAttributes)
- (id)_uis_renderingAttributes;
@end

@implementation CALayer(UISRenderingEnvironmentAttributes)

- (id)_uis_renderingAttributes
{
  if (objc_opt_respondsToSelector())
  {
    _uis_provideRenderingAttributes = [self _uis_provideRenderingAttributes];
  }

  else
  {
    _uis_provideRenderingAttributes = 0;
  }

  return _uis_provideRenderingAttributes;
}

@end