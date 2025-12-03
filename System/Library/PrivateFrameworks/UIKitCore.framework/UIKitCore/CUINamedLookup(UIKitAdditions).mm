@interface CUINamedLookup(UIKitAdditions)
- (void)configuration;
@end

@implementation CUINamedLookup(UIKitAdditions)

- (void)configuration
{
  v0 = +[UITraitCollection _emptyTraitCollection];
  v1 = v0;
  if (v0)
  {
    imageConfiguration = [v0 imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v3 = imageConfiguration;

  return imageConfiguration;
}

@end