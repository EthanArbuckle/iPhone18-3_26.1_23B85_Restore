@interface TRDeviceSetupLegacySetupAction
- (BOOL)diagnosticsEnabled;
- (BOOL)rememberPassword;
- (NSString)countryCode;
- (NSString)homeSharingAppleID;
- (NSString)homeSharingGroupID;
- (NSString)language;
- (NSString)networkPassword;
- (NSString)networkSSID;
- (TRDeviceSetupLegacySetupAction)initWithAuthInfo:(id)a3 networkSSID:(id)a4 networkPassword:(id)a5 diagnosticsEnabled:(BOOL)a6 language:(id)a7 countryCode:(id)a8 homeSharingAppleID:(id)a9 homeSharingGroupID:(id)a10 rememberPassword:(BOOL)a11;
- (TRDeviceSetupLegacySetupActionAuthInfo)authInfo;
@end

@implementation TRDeviceSetupLegacySetupAction

- (TRDeviceSetupLegacySetupAction)initWithAuthInfo:(id)a3 networkSSID:(id)a4 networkPassword:(id)a5 diagnosticsEnabled:(BOOL)a6 language:(id)a7 countryCode:(id)a8 homeSharingAppleID:(id)a9 homeSharingGroupID:(id)a10 rememberPassword:(BOOL)a11
{
  v34 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:9];
  if (v15)
  {
    v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v24 = [v15 headers];

    if (v24)
    {
      v25 = [v15 headers];
      [v23 setObject:v25 forKeyedSubscript:@"h"];
    }

    v26 = [v15 body];

    if (v26)
    {
      v27 = [v15 body];
      [v23 setObject:v27 forKeyedSubscript:@"b"];
    }

    v28 = [v23 copy];
    [v22 setObject:v28 forKeyedSubscript:@"au"];
  }

  if (v16)
  {
    [v22 setObject:v16 forKeyedSubscript:@"ns"];
  }

  if (v17)
  {
    [v22 setObject:v17 forKeyedSubscript:@"np"];
  }

  v29 = [MEMORY[0x277CCABB0] numberWithBool:v34];
  [v22 setObject:v29 forKeyedSubscript:@"di"];

  if (v18)
  {
    [v22 setObject:v18 forKeyedSubscript:@"l"];
  }

  if (v19)
  {
    [v22 setObject:v19 forKeyedSubscript:@"c"];
  }

  if (v20)
  {
    [v22 setObject:v20 forKeyedSubscript:@"ha"];
  }

  if (v21)
  {
    [v22 setObject:v21 forKeyedSubscript:@"hg"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithBool:a11];
  [v22 setObject:v30 forKeyedSubscript:@"rp"];

  v31 = [v22 copy];
  v36.receiver = self;
  v36.super_class = TRDeviceSetupLegacySetupAction;
  v32 = [(TRDeviceSetupAction *)&v36 _initWithActionType:@"setup" parameters:v31];

  return v32;
}

- (TRDeviceSetupLegacySetupActionAuthInfo)authInfo
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"au"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [TRDeviceSetupLegacySetupActionAuthInfo alloc];
  v7 = [v5 objectForKeyedSubscript:@"h"];
  v8 = [v5 objectForKeyedSubscript:@"b"];
  v9 = [(TRDeviceSetupLegacySetupActionAuthInfo *)v6 initWithHeaders:v7 body:v8];

  return v9;
}

- (NSString)networkSSID
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"ns"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)networkPassword
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"np"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)diagnosticsEnabled
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"di"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

- (NSString)language
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"l"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)countryCode
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"c"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)homeSharingAppleID
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"ha"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)homeSharingGroupID
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"hg"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)rememberPassword
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"rp"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

@end