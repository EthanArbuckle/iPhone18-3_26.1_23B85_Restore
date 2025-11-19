@interface UIWatchKitExtensionRequestActionResponse
+ (id)responseWithWatchKitExtensionResult:(id)a3;
- (NSDictionary)result;
- (UIWatchKitExtensionRequestActionResponse)initWithWatchKitExtensionResult:(id)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation UIWatchKitExtensionRequestActionResponse

+ (id)responseWithWatchKitExtensionResult:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithWatchKitExtensionResult:v4];

  return v5;
}

- (UIWatchKitExtensionRequestActionResponse)initWithWatchKitExtensionResult:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:1];

  v9.receiver = self;
  v9.super_class = UIWatchKitExtensionRequestActionResponse;
  v7 = [(UIWatchKitExtensionRequestActionResponse *)&v9 initWithInfo:v6 error:0];

  return v7;
}

- (NSDictionary)result
{
  v2 = [(UIWatchKitExtensionRequestActionResponse *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"watchkitRequestResult";
  }

  else
  {
    return 0;
  }
}

@end