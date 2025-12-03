@interface _UIUserNotificationAlertViewRestrictedTextField
+ (id)restrictedProxyForTextField:(id)field;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _UIUserNotificationAlertViewRestrictedTextField

+ (id)restrictedProxyForTextField:(id)field
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS____UIUserNotificationAlertViewRestrictedTextField;
  v3 = objc_msgSendSuper2(&v5, sel_proxyWithTarget_, field);

  return v3;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = NSStringFromSelector([invocationCopy selector]);
  _supportedMethodSelectorNames = [objc_opt_class() _supportedMethodSelectorNames];
  v7 = [_supportedMethodSelectorNames containsObject:v5];

  if (v7)
  {
    v11.receiver = self;
    v11.super_class = _UIUserNotificationAlertViewRestrictedTextField;
    [(_UITargetedProxy *)&v11 forwardInvocation:invocationCopy];
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D920];
    _supportedMethodSelectorNames2 = [objc_opt_class() _supportedMethodSelectorNames];
    [v8 raise:v9 format:{@"Text fields in UIAlertViews displayed from view services only accept these methods: %@", _supportedMethodSelectorNames2}];
  }
}

@end