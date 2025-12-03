@interface NCNotificationSectionMuteAssertion
+ (id)sectionMuteAssertion;
- (BOOL)isEqual:(id)equal;
- (id)_init;
@end

@implementation NCNotificationSectionMuteAssertion

+ (id)sectionMuteAssertion
{
  _init = [[NCNotificationSectionMuteAssertion alloc] _init];

  return _init;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = NCNotificationSectionMuteAssertion;
  return [(NCNotificationSectionMuteAssertion *)&v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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