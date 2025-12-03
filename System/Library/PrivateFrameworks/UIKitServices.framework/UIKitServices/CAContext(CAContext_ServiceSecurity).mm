@interface CAContext(CAContext_ServiceSecurity)
- (void)_notifyIfChangedFromSecure:()CAContext_ServiceSecurity;
@end

@implementation CAContext(CAContext_ServiceSecurity)

- (void)_notifyIfChangedFromSecure:()CAContext_ServiceSecurity
{
  v5 = objc_getAssociatedObject(self, &_notifyIfChangedFromSecure___UIServiceContextIsInsecureKey);

  if ((((v5 != 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      objc_setAssociatedObject(self, &_notifyIfChangedFromSecure___UIServiceContextIsInsecureKey, 0, 0);
      v6 = @"UISServiceContextDidBecomeSecureNotification";
    }

    else
    {
      objc_setAssociatedObject(self, &_notifyIfChangedFromSecure___UIServiceContextIsInsecureKey, MEMORY[0x1E695E118], 1);
      v6 = @"UISServiceContextDidBecomeInsecureNotification";
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:v6 object:self];
  }
}

@end