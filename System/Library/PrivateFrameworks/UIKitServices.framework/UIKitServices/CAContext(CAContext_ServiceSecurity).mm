@interface CAContext(CAContext_ServiceSecurity)
- (void)_notifyIfChangedFromSecure:()CAContext_ServiceSecurity;
@end

@implementation CAContext(CAContext_ServiceSecurity)

- (void)_notifyIfChangedFromSecure:()CAContext_ServiceSecurity
{
  v5 = objc_getAssociatedObject(a1, &_notifyIfChangedFromSecure___UIServiceContextIsInsecureKey);

  if ((((v5 != 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      objc_setAssociatedObject(a1, &_notifyIfChangedFromSecure___UIServiceContextIsInsecureKey, 0, 0);
      v6 = @"UISServiceContextDidBecomeSecureNotification";
    }

    else
    {
      objc_setAssociatedObject(a1, &_notifyIfChangedFromSecure___UIServiceContextIsInsecureKey, MEMORY[0x1E695E118], 1);
      v6 = @"UISServiceContextDidBecomeInsecureNotification";
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:v6 object:a1];
  }
}

@end