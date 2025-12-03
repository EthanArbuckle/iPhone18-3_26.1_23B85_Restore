@interface _UIDictationSettingsDomain
+ (id)rootSettings;
@end

@implementation _UIDictationSettingsDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS____UIDictationSettingsDomain;
  v2 = objc_msgSendSuper2(&v4, sel_rootSettings);

  return v2;
}

@end