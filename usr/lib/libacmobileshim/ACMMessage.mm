@interface ACMMessage
- (BOOL)automaticallyCancelWhenSwitchingToBackground;
- (BOOL)canUseTouchID;
- (BOOL)cancelAllowed;
- (BOOL)disableSingleSignOn;
- (BOOL)doNotSaveHSASessionInKeychain;
- (BOOL)generatedWithTouchID;
- (BOOL)ignoreHSASessionInKeychain;
- (BOOL)isInApp2SVEnabledOption;
- (BOOL)lavaForceUseFailoverServerAddress;
- (BOOL)managerSignIn;
- (BOOL)useAlertView;
- (BOOL)userNameFieldEditable;
- (id)principal;
- (void)forwardInvocation:(id)invocation;
- (void)setAutomaticallyCancelWhenSwitchingToBackground:(BOOL)background;
- (void)setCanUseTouchID:(BOOL)d;
- (void)setCancelAllowed:(BOOL)allowed;
- (void)setDisableSingleSignOn:(BOOL)on;
- (void)setDoNotSaveHSASessionInKeychain:(BOOL)keychain;
- (void)setGeneratedWithTouchID:(BOOL)d;
- (void)setIgnoreHSASessionInKeychain:(BOOL)keychain;
- (void)setIsInApp2SVEnabledOption:(BOOL)option;
- (void)setLavaForceUseFailoverServerAddress:(BOOL)address;
- (void)setManagerSignIn:(BOOL)in;
- (void)setPrincipal:(id)principal;
- (void)setUseAlertView:(BOOL)view;
- (void)setUserNameFieldEditable:(BOOL)editable;
@end

@implementation ACMMessage

- (void)forwardInvocation:(id)invocation
{
  if (qword_2A1EB8FA0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACMMessage forwardInvocation:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMMessage.m", 41, 0, "Not implemented: %@", invocation);
  }

  v5.receiver = self;
  v5.super_class = ACMMessage;
  [(ACMMessage *)&v5 forwardInvocation:invocation];
}

- (id)principal
{
  userName = [(ACMMessage *)self userName];
  realm = [(ACMMessage *)self realm];

  return [ACFPrincipal principalWithUserName:userName realm:realm];
}

- (void)setPrincipal:(id)principal
{
  -[ACMMessage setUserName:](self, "setUserName:", [principal userName]);
  realm = [principal realm];

  [(ACMMessage *)self setRealm:realm];
}

- (BOOL)isInApp2SVEnabledOption
{
  v2 = [(ACFMessage *)self objectForKey:@"ACCIsInApp2SVEnabledOption"];

  return [v2 BOOLValue];
}

- (void)setIsInApp2SVEnabledOption:(BOOL)option
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:option];

  [(ACFMessage *)self setObject:v4 forKey:@"ACCIsInApp2SVEnabledOption"];
}

- (BOOL)ignoreHSASessionInKeychain
{
  v2 = [(ACFMessage *)self objectForKey:@"ACCIgnoreHSASessionInKeychain"];

  return [v2 BOOLValue];
}

- (void)setIgnoreHSASessionInKeychain:(BOOL)keychain
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:keychain];

  [(ACFMessage *)self setObject:v4 forKey:@"ACCIgnoreHSASessionInKeychain"];
}

- (BOOL)doNotSaveHSASessionInKeychain
{
  v2 = [(ACFMessage *)self objectForKey:@"ACCDoNotSaveHSASessionInKeychain"];

  return [v2 BOOLValue];
}

- (void)setDoNotSaveHSASessionInKeychain:(BOOL)keychain
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:keychain];

  [(ACFMessage *)self setObject:v4 forKey:@"ACCDoNotSaveHSASessionInKeychain"];
}

- (BOOL)managerSignIn
{
  v2 = [(ACFMessage *)self objectForKey:@"managerSignIn"];

  return [v2 BOOLValue];
}

- (void)setManagerSignIn:(BOOL)in
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:in];

  [(ACFMessage *)self setObject:v4 forKey:@"managerSignIn"];
}

- (BOOL)cancelAllowed
{
  v2 = [(ACFMessage *)self objectForKey:@"cancelAllowed"];

  return [v2 BOOLValue];
}

- (void)setCancelAllowed:(BOOL)allowed
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:allowed];

  [(ACFMessage *)self setObject:v4 forKey:@"cancelAllowed"];
}

- (BOOL)disableSingleSignOn
{
  v2 = [(ACFMessage *)self objectForKey:@"disableSingleSignOn"];

  return [v2 BOOLValue];
}

- (void)setDisableSingleSignOn:(BOOL)on
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:on];

  [(ACFMessage *)self setObject:v4 forKey:@"disableSingleSignOn"];
}

- (BOOL)lavaForceUseFailoverServerAddress
{
  v2 = [(ACFMessage *)self objectForKey:@"lavaForceUseFailoverServerAddress"];

  return [v2 BOOLValue];
}

- (void)setLavaForceUseFailoverServerAddress:(BOOL)address
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:address];

  [(ACFMessage *)self setObject:v4 forKey:@"lavaForceUseFailoverServerAddress"];
}

- (BOOL)useAlertView
{
  v2 = [(ACFMessage *)self objectForKey:@"useAlertView"];

  return [v2 BOOLValue];
}

- (void)setUseAlertView:(BOOL)view
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:view];

  [(ACFMessage *)self setObject:v4 forKey:@"useAlertView"];
}

- (BOOL)userNameFieldEditable
{
  v2 = [(ACFMessage *)self objectForKey:@"userNameFieldEditable"];

  return [v2 BOOLValue];
}

- (void)setUserNameFieldEditable:(BOOL)editable
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:editable];

  [(ACFMessage *)self setObject:v4 forKey:@"userNameFieldEditable"];
}

- (BOOL)automaticallyCancelWhenSwitchingToBackground
{
  v2 = [(ACFMessage *)self objectForKey:@"automaticallyCancelWhenSwitchingToBackground"];

  return [v2 BOOLValue];
}

- (void)setAutomaticallyCancelWhenSwitchingToBackground:(BOOL)background
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:background];

  [(ACFMessage *)self setObject:v4 forKey:@"automaticallyCancelWhenSwitchingToBackground"];
}

- (BOOL)canUseTouchID
{
  v2 = [(ACFMessage *)self objectForKey:@"canUseTouchID"];

  return [v2 BOOLValue];
}

- (void)setCanUseTouchID:(BOOL)d
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:d];

  [(ACFMessage *)self setObject:v4 forKey:@"canUseTouchID"];
}

- (BOOL)generatedWithTouchID
{
  v2 = [(ACFMessage *)self objectForKey:@"generatedWithTouchID"];

  return [v2 BOOLValue];
}

- (void)setGeneratedWithTouchID:(BOOL)d
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:d];

  [(ACFMessage *)self setObject:v4 forKey:@"generatedWithTouchID"];
}

@end