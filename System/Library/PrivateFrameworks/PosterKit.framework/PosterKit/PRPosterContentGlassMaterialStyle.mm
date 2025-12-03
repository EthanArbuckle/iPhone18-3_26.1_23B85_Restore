@interface PRPosterContentGlassMaterialStyle
- (BOOL)isEqual:(id)equal;
- (NSString)nonVariatedIdentifier;
- (void)applyStyleWithRenderer:(id)renderer;
@end

@implementation PRPosterContentGlassMaterialStyle

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (NSString)nonVariatedIdentifier
{
  type = [(PRPosterContentGlassMaterialStyle *)self type];

  return _PRPosterContentStyleStringForType(type);
}

- (void)applyStyleWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  if (objc_opt_respondsToSelector())
  {
    [rendererCopy renderGlassMaterialStyle:self];
  }
}

@end