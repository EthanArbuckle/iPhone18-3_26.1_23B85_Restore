@interface _SBSUICFUserNotificationContentExtensionContextHost
+ (id)_allowedItemPayloadClasses;
@end

@implementation _SBSUICFUserNotificationContentExtensionContextHost

+ (id)_allowedItemPayloadClasses
{
  if (_allowedItemPayloadClasses_onceToken != -1)
  {
    +[_SBSUICFUserNotificationContentExtensionContextHost _allowedItemPayloadClasses];
  }

  v3 = _allowedItemPayloadClasses_allowedItemPayloadClasses;

  return v3;
}

@end