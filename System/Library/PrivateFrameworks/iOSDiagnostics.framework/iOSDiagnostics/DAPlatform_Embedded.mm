@interface DAPlatform_Embedded
- (void)_activateCFUserNotificationWithTitle:(id)title message:(id)message defaultButtonName:(id)name cancelButtonName:(id)buttonName handler:(id)handler;
@end

@implementation DAPlatform_Embedded

- (void)_activateCFUserNotificationWithTitle:(id)title message:(id)message defaultButtonName:(id)name cancelButtonName:(id)buttonName handler:(id)handler
{
  handlerCopy = handler;
  buttonNameCopy = buttonName;
  nameCopy = name;
  messageCopy = message;
  titleCopy = title;
  v17 = objc_alloc_init(NSMutableDictionary);
  [v17 setObject:titleCopy forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

  [v17 setObject:messageCopy forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  [v17 setObject:buttonNameCopy forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

  [v17 setObject:nameCopy forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [(DAPlatform_Embedded *)self _addPlatformCFUserNotificationOptions:v17];
  v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v17);
  if (v18)
  {
    v19 = v18;
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v18, 0.0, &responseFlags);
    CFRelease(v19);
    if (handlerCopy && responseFlags == 1)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v20 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10000DB04(v20);
    }
  }
}

@end