@interface IMAPNotificationInterpreter
+ (id)interpretedDictionaryForNotificationUserInfo:(__CFDictionary *)a3;
@end

@implementation IMAPNotificationInterpreter

+ (id)interpretedDictionaryForNotificationUserInfo:(__CFDictionary *)a3
{
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IMAPNotificationInterpreter: received a notification dictionary: %@", &v10, 0xCu);
  }

  v5 = CFDictionaryGetValue(a3, kCTIndicatorsVoiceMailURL);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 absoluteString];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = VMCopyDictionaryForNotificationString();

  return v8;
}

@end