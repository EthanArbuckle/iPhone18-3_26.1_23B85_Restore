@interface UISFetchContentInBackgroundActionResponse
+ (id)responseWithResult:(unint64_t)a3;
- (UISFetchContentInBackgroundActionResponse)initWithBackgroundFetchResult:(unint64_t)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (unint64_t)result;
@end

@implementation UISFetchContentInBackgroundActionResponse

+ (id)responseWithResult:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithBackgroundFetchResult:a3];

  return v3;
}

- (UISFetchContentInBackgroundActionResponse)initWithBackgroundFetchResult:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = UISFetchContentInBackgroundActionResponse;
  v7 = [(UISFetchContentInBackgroundActionResponse *)&v9 initWithInfo:v5 error:0];

  return v7;
}

- (unint64_t)result
{
  v2 = [(UISFetchContentInBackgroundActionResponse *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"backgroundFetchResult";
  }

  else
  {
    return 0;
  }
}

@end