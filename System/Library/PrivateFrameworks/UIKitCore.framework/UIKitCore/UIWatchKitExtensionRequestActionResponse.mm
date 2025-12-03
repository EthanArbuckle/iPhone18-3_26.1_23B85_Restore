@interface UIWatchKitExtensionRequestActionResponse
+ (id)responseWithWatchKitExtensionResult:(id)result;
- (NSDictionary)result;
- (UIWatchKitExtensionRequestActionResponse)initWithWatchKitExtensionResult:(id)result;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UIWatchKitExtensionRequestActionResponse

+ (id)responseWithWatchKitExtensionResult:(id)result
{
  resultCopy = result;
  v5 = [[self alloc] initWithWatchKitExtensionResult:resultCopy];

  return v5;
}

- (UIWatchKitExtensionRequestActionResponse)initWithWatchKitExtensionResult:(id)result
{
  v4 = MEMORY[0x1E698E700];
  resultCopy = result;
  v6 = objc_alloc_init(v4);
  [v6 setObject:resultCopy forSetting:1];

  v9.receiver = self;
  v9.super_class = UIWatchKitExtensionRequestActionResponse;
  v7 = [(UIWatchKitExtensionRequestActionResponse *)&v9 initWithInfo:v6 error:0];

  return v7;
}

- (NSDictionary)result
{
  info = [(UIWatchKitExtensionRequestActionResponse *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"watchkitRequestResult";
  }

  else
  {
    return 0;
  }
}

@end