@interface WFBaseRemoteQuarantineRequest
+ (id)JSONKeyPathsByPropertyKey;
- (WFBaseRemoteQuarantineRequest)init;
@end

@implementation WFBaseRemoteQuarantineRequest

- (WFBaseRemoteQuarantineRequest)init
{
  v14.receiver = self;
  v14.super_class = WFBaseRemoteQuarantineRequest;
  v2 = [(MTLModel *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    appVersion = v2->_appVersion;
    v2->_appVersion = v4;

    v6 = [MEMORY[0x1E69E0A90] currentDevice];
    v7 = [v6 systemVersion];
    osVersion = v2->_osVersion;
    v2->_osVersion = v7;

    v9 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v10 = [v9 localeIdentifier];
    userLocale = v2->_userLocale;
    v2->_userLocale = v10;

    v12 = v2;
  }

  return v2;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"appVersion";
  v5[1] = @"osVersion";
  v6[0] = @"appVersion";
  v6[1] = @"osVersion";
  v5[2] = @"userLocale";
  v6[2] = @"userLocale";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end