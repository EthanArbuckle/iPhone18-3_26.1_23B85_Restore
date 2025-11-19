@interface TRDeviceSetupGeneralSetupAction
- (BOOL)isDiagnosticsEnabled;
- (BOOL)rememberPassword;
- (NSString)countryCode;
- (NSString)homeSharingGroupID;
- (NSString)homeSharingID;
- (NSString)language;
- (TRDeviceSetupGeneralSetupAction)init;
@end

@implementation TRDeviceSetupGeneralSetupAction

- (TRDeviceSetupGeneralSetupAction)init
{
  v3.receiver = self;
  v3.super_class = TRDeviceSetupGeneralSetupAction;
  return [(TRDeviceSetupAction *)&v3 _initWithActionType:@"setup" parameters:0];
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

- (NSString)homeSharingID
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

- (BOOL)isDiagnosticsEnabled
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"a"];

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

- (BOOL)rememberPassword
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"a"];

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