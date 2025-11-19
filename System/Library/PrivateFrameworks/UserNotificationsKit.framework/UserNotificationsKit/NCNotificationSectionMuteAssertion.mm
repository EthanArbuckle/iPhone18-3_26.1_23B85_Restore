@interface NCNotificationSectionMuteAssertion
+ (id)sectionMuteAssertion;
- (BOOL)isEqual:(id)a3;
- (id)_init;
@end

@implementation NCNotificationSectionMuteAssertion

+ (id)sectionMuteAssertion
{
  v2 = [[NCNotificationSectionMuteAssertion alloc] _init];

  return v2;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = NCNotificationSectionMuteAssertion;
  return [(NCNotificationSectionMuteAssertion *)&v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end