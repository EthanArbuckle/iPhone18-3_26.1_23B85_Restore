@interface NSObject(SystemAperturePrivate)
- (id)systemApertureElementContextPrivate;
- (id)systemApertureHostedElementContext;
@end

@implementation NSObject(SystemAperturePrivate)

- (id)systemApertureElementContextPrivate
{
  systemApertureElementContext = [self systemApertureElementContext];
  if (objc_opt_respondsToSelector())
  {
    systemApertureElementContext2 = [self systemApertureElementContext];
  }

  else
  {
    systemApertureElementContext2 = 0;
  }

  return systemApertureElementContext2;
}

- (id)systemApertureHostedElementContext
{
  systemApertureElementContext = [self systemApertureElementContext];
  if (objc_opt_respondsToSelector())
  {
    systemApertureElementContext2 = [self systemApertureElementContext];
  }

  else
  {
    systemApertureElementContext2 = 0;
  }

  return systemApertureElementContext2;
}

@end