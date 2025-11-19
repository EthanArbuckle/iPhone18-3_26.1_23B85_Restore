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
    v2 = [v0 imageConfiguration];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end