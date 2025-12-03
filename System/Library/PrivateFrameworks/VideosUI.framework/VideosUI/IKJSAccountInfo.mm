@interface IKJSAccountInfo
- (IKJSAccountInfo)initWithAppContext:(id)context;
- (NSString)DSID;
- (NSString)storefrontCountryCode;
- (NSString)storefrontLanguage;
@end

@implementation IKJSAccountInfo

- (IKJSAccountInfo)initWithAppContext:(id)context
{
  v4.receiver = self;
  v4.super_class = IKJSAccountInfo;
  return [(VUIJSObject *)&v4 initWithAppContext:context];
}

- (NSString)DSID
{
  v2 = +[VUIAuthenticationManager DSID];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (NSString)storefrontLanguage
{
  v2 = [MEMORY[0x1E69D5928] app];
  v3 = [v2 stringForKey:@"language"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F5DB25C0;
  }

  v6 = v5;

  return &v5->isa;
}

- (NSString)storefrontCountryCode
{
  v2 = [MEMORY[0x1E69D5928] app];
  v3 = [v2 stringForKey:@"countryCode"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F5DB25C0;
  }

  v6 = v5;

  return &v5->isa;
}

@end