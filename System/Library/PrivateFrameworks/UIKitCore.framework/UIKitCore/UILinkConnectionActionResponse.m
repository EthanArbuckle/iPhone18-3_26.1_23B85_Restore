@interface UILinkConnectionActionResponse
- (LNConnectionActionResponse)actionResponse;
- (UILinkConnectionActionResponse)initWithActionResponse:(id)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation UILinkConnectionActionResponse

- (LNConnectionActionResponse)actionResponse
{
  v2 = [(UILinkConnectionActionResponse *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (UILinkConnectionActionResponse)initWithActionResponse:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:1];

  v7 = [(UILinkConnectionActionResponse *)self initWithInfo:v6 error:0];
  return v7;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"action response";
  }

  else
  {
    return 0;
  }
}

@end