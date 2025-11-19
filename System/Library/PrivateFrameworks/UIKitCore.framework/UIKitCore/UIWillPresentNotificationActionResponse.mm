@interface UIWillPresentNotificationActionResponse
+ (id)responseWithOptions:(unint64_t)a3;
- (UIWillPresentNotificationActionResponse)initWithOptions:(unint64_t)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (unint64_t)options;
@end

@implementation UIWillPresentNotificationActionResponse

+ (id)responseWithOptions:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithOptions:a3];

  return v3;
}

- (UIWillPresentNotificationActionResponse)initWithOptions:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = UIWillPresentNotificationActionResponse;
  v7 = [(UIWillPresentNotificationActionResponse *)&v9 initWithInfo:v5 error:0];

  return v7;
}

- (unint64_t)options
{
  v2 = [(UIWillPresentNotificationActionResponse *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"options";
  }

  else
  {
    return 0;
  }
}

@end