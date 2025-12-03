@interface UIWillPresentNotificationActionResponse
+ (id)responseWithOptions:(unint64_t)options;
- (UIWillPresentNotificationActionResponse)initWithOptions:(unint64_t)options;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (unint64_t)options;
@end

@implementation UIWillPresentNotificationActionResponse

+ (id)responseWithOptions:(unint64_t)options
{
  v3 = [[self alloc] initWithOptions:options];

  return v3;
}

- (UIWillPresentNotificationActionResponse)initWithOptions:(unint64_t)options
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = UIWillPresentNotificationActionResponse;
  v7 = [(UIWillPresentNotificationActionResponse *)&v9 initWithInfo:v5 error:0];

  return v7;
}

- (unint64_t)options
{
  info = [(UIWillPresentNotificationActionResponse *)self info];
  v3 = [info objectForSetting:1];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"options";
  }

  else
  {
    return 0;
  }
}

@end