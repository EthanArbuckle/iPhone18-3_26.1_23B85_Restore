@interface UISFetchContentInBackgroundActionResponse
+ (id)responseWithResult:(unint64_t)result;
- (UISFetchContentInBackgroundActionResponse)initWithBackgroundFetchResult:(unint64_t)result;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (unint64_t)result;
@end

@implementation UISFetchContentInBackgroundActionResponse

+ (id)responseWithResult:(unint64_t)result
{
  v3 = [[self alloc] initWithBackgroundFetchResult:result];

  return v3;
}

- (UISFetchContentInBackgroundActionResponse)initWithBackgroundFetchResult:(unint64_t)result
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:result];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = UISFetchContentInBackgroundActionResponse;
  v7 = [(UISFetchContentInBackgroundActionResponse *)&v9 initWithInfo:v5 error:0];

  return v7;
}

- (unint64_t)result
{
  info = [(UISFetchContentInBackgroundActionResponse *)self info];
  v3 = [info objectForSetting:1];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"backgroundFetchResult";
  }

  else
  {
    return 0;
  }
}

@end