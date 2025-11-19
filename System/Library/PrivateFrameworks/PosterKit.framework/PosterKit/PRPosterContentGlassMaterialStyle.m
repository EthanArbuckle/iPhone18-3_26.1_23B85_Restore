@interface PRPosterContentGlassMaterialStyle
- (BOOL)isEqual:(id)a3;
- (NSString)nonVariatedIdentifier;
- (void)applyStyleWithRenderer:(id)a3;
@end

@implementation PRPosterContentGlassMaterialStyle

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (NSString)nonVariatedIdentifier
{
  v2 = [(PRPosterContentGlassMaterialStyle *)self type];

  return _PRPosterContentStyleStringForType(v2);
}

- (void)applyStyleWithRenderer:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 renderGlassMaterialStyle:self];
  }
}

@end