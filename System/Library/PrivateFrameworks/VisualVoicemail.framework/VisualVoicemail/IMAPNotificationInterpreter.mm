@interface IMAPNotificationInterpreter
+ (id)interpretedDictionaryForNotificationUserInfo:(__CFDictionary *)info;
@end

@implementation IMAPNotificationInterpreter

+ (id)interpretedDictionaryForNotificationUserInfo:(__CFDictionary *)info
{
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    infoCopy = info;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IMAPNotificationInterpreter: received a notification dictionary: %@", &v10, 0xCu);
  }

  v5 = CFDictionaryGetValue(info, kCTIndicatorsVoiceMailURL);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [v5 absoluteString];
  }

  else
  {
    absoluteString = v5;
  }

  v7 = absoluteString;
  v8 = VMCopyDictionaryForNotificationString();

  return v8;
}

@end