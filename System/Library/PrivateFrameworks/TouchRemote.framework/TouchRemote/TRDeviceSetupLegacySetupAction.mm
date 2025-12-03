@interface TRDeviceSetupLegacySetupAction
- (BOOL)diagnosticsEnabled;
- (BOOL)rememberPassword;
- (NSString)countryCode;
- (NSString)homeSharingAppleID;
- (NSString)homeSharingGroupID;
- (NSString)language;
- (NSString)networkPassword;
- (NSString)networkSSID;
- (TRDeviceSetupLegacySetupAction)initWithAuthInfo:(id)info networkSSID:(id)d networkPassword:(id)password diagnosticsEnabled:(BOOL)enabled language:(id)language countryCode:(id)code homeSharingAppleID:(id)iD homeSharingGroupID:(id)self0 rememberPassword:(BOOL)self1;
- (TRDeviceSetupLegacySetupActionAuthInfo)authInfo;
@end

@implementation TRDeviceSetupLegacySetupAction

- (TRDeviceSetupLegacySetupAction)initWithAuthInfo:(id)info networkSSID:(id)d networkPassword:(id)password diagnosticsEnabled:(BOOL)enabled language:(id)language countryCode:(id)code homeSharingAppleID:(id)iD homeSharingGroupID:(id)self0 rememberPassword:(BOOL)self1
{
  enabledCopy = enabled;
  infoCopy = info;
  dCopy = d;
  passwordCopy = password;
  languageCopy = language;
  codeCopy = code;
  iDCopy = iD;
  groupIDCopy = groupID;
  v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:9];
  if (infoCopy)
  {
    v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    headers = [infoCopy headers];

    if (headers)
    {
      headers2 = [infoCopy headers];
      [v23 setObject:headers2 forKeyedSubscript:@"h"];
    }

    body = [infoCopy body];

    if (body)
    {
      body2 = [infoCopy body];
      [v23 setObject:body2 forKeyedSubscript:@"b"];
    }

    v28 = [v23 copy];
    [v22 setObject:v28 forKeyedSubscript:@"au"];
  }

  if (dCopy)
  {
    [v22 setObject:dCopy forKeyedSubscript:@"ns"];
  }

  if (passwordCopy)
  {
    [v22 setObject:passwordCopy forKeyedSubscript:@"np"];
  }

  v29 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [v22 setObject:v29 forKeyedSubscript:@"di"];

  if (languageCopy)
  {
    [v22 setObject:languageCopy forKeyedSubscript:@"l"];
  }

  if (codeCopy)
  {
    [v22 setObject:codeCopy forKeyedSubscript:@"c"];
  }

  if (iDCopy)
  {
    [v22 setObject:iDCopy forKeyedSubscript:@"ha"];
  }

  if (groupIDCopy)
  {
    [v22 setObject:groupIDCopy forKeyedSubscript:@"hg"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithBool:rememberPassword];
  [v22 setObject:v30 forKeyedSubscript:@"rp"];

  v31 = [v22 copy];
  v36.receiver = self;
  v36.super_class = TRDeviceSetupLegacySetupAction;
  v32 = [(TRDeviceSetupAction *)&v36 _initWithActionType:@"setup" parameters:v31];

  return v32;
}

- (TRDeviceSetupLegacySetupActionAuthInfo)authInfo
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"au"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"ns"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"np"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"di"];

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

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (NSString)language
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"l"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"c"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"ha"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"hg"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"rp"];

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

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

@end