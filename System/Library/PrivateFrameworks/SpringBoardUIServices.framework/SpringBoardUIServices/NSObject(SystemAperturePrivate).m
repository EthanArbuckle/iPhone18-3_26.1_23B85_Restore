@interface NSObject(SystemAperturePrivate)
- (id)systemApertureElementContextPrivate;
- (id)systemApertureHostedElementContext;
@end

@implementation NSObject(SystemAperturePrivate)

- (id)systemApertureElementContextPrivate
{
  v2 = [a1 systemApertureElementContext];
  if (objc_opt_respondsToSelector())
  {
    v3 = [a1 systemApertureElementContext];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)systemApertureHostedElementContext
{
  v2 = [a1 systemApertureElementContext];
  if (objc_opt_respondsToSelector())
  {
    v3 = [a1 systemApertureElementContext];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end