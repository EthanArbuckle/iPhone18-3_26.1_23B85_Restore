@interface UILinkConnectionActionResponse
- (LNConnectionActionResponse)actionResponse;
- (UILinkConnectionActionResponse)initWithActionResponse:(id)response;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UILinkConnectionActionResponse

- (LNConnectionActionResponse)actionResponse
{
  info = [(UILinkConnectionActionResponse *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (UILinkConnectionActionResponse)initWithActionResponse:(id)response
{
  v4 = MEMORY[0x1E698E700];
  responseCopy = response;
  v6 = objc_alloc_init(v4);
  [v6 setObject:responseCopy forSetting:1];

  v7 = [(UILinkConnectionActionResponse *)self initWithInfo:v6 error:0];
  return v7;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"action response";
  }

  else
  {
    return 0;
  }
}

@end