@interface _UIUserNotificationAlertViewRestrictedTextField
+ (id)restrictedProxyForTextField:(id)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation _UIUserNotificationAlertViewRestrictedTextField

+ (id)restrictedProxyForTextField:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS____UIUserNotificationAlertViewRestrictedTextField;
  v3 = objc_msgSendSuper2(&v5, sel_proxyWithTarget_, a3);

  return v3;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector([v4 selector]);
  v6 = [objc_opt_class() _supportedMethodSelectorNames];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    v11.receiver = self;
    v11.super_class = _UIUserNotificationAlertViewRestrictedTextField;
    [(_UITargetedProxy *)&v11 forwardInvocation:v4];
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D920];
    v10 = [objc_opt_class() _supportedMethodSelectorNames];
    [v8 raise:v9 format:{@"Text fields in UIAlertViews displayed from view services only accept these methods: %@", v10}];
  }
}

@end