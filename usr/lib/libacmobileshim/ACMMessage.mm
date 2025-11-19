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
- (void)forwardInvocation:(id)a3;
- (void)setAutomaticallyCancelWhenSwitchingToBackground:(BOOL)a3;
- (void)setCanUseTouchID:(BOOL)a3;
- (void)setCancelAllowed:(BOOL)a3;
- (void)setDisableSingleSignOn:(BOOL)a3;
- (void)setDoNotSaveHSASessionInKeychain:(BOOL)a3;
- (void)setGeneratedWithTouchID:(BOOL)a3;
- (void)setIgnoreHSASessionInKeychain:(BOOL)a3;
- (void)setIsInApp2SVEnabledOption:(BOOL)a3;
- (void)setLavaForceUseFailoverServerAddress:(BOOL)a3;
- (void)setManagerSignIn:(BOOL)a3;
- (void)setPrincipal:(id)a3;
- (void)setUseAlertView:(BOOL)a3;
- (void)setUserNameFieldEditable:(BOOL)a3;
@end

@implementation ACMMessage

- (void)forwardInvocation:(id)a3
{
  if (qword_2A1EB8FA0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACMMessage forwardInvocation:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMMessage.m", 41, 0, "Not implemented: %@", a3);
  }

  v5.receiver = self;
  v5.super_class = ACMMessage;
  [(ACMMessage *)&v5 forwardInvocation:a3];
}

- (id)principal
{
  v3 = [(ACMMessage *)self userName];
  v4 = [(ACMMessage *)self realm];

  return [ACFPrincipal principalWithUserName:v3 realm:v4];
}

- (void)setPrincipal:(id)a3
{
  -[ACMMessage setUserName:](self, "setUserName:", [a3 userName]);
  v5 = [a3 realm];

  [(ACMMessage *)self setRealm:v5];
}

- (BOOL)isInApp2SVEnabledOption
{
  v2 = [(ACFMessage *)self objectForKey:@"ACCIsInApp2SVEnabledOption"];

  return [v2 BOOLValue];
}

- (void)setIsInApp2SVEnabledOption:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"ACCIsInApp2SVEnabledOption"];
}

- (BOOL)ignoreHSASessionInKeychain
{
  v2 = [(ACFMessage *)self objectForKey:@"ACCIgnoreHSASessionInKeychain"];

  return [v2 BOOLValue];
}

- (void)setIgnoreHSASessionInKeychain:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"ACCIgnoreHSASessionInKeychain"];
}

- (BOOL)doNotSaveHSASessionInKeychain
{
  v2 = [(ACFMessage *)self objectForKey:@"ACCDoNotSaveHSASessionInKeychain"];

  return [v2 BOOLValue];
}

- (void)setDoNotSaveHSASessionInKeychain:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"ACCDoNotSaveHSASessionInKeychain"];
}

- (BOOL)managerSignIn
{
  v2 = [(ACFMessage *)self objectForKey:@"managerSignIn"];

  return [v2 BOOLValue];
}

- (void)setManagerSignIn:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"managerSignIn"];
}

- (BOOL)cancelAllowed
{
  v2 = [(ACFMessage *)self objectForKey:@"cancelAllowed"];

  return [v2 BOOLValue];
}

- (void)setCancelAllowed:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"cancelAllowed"];
}

- (BOOL)disableSingleSignOn
{
  v2 = [(ACFMessage *)self objectForKey:@"disableSingleSignOn"];

  return [v2 BOOLValue];
}

- (void)setDisableSingleSignOn:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"disableSingleSignOn"];
}

- (BOOL)lavaForceUseFailoverServerAddress
{
  v2 = [(ACFMessage *)self objectForKey:@"lavaForceUseFailoverServerAddress"];

  return [v2 BOOLValue];
}

- (void)setLavaForceUseFailoverServerAddress:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"lavaForceUseFailoverServerAddress"];
}

- (BOOL)useAlertView
{
  v2 = [(ACFMessage *)self objectForKey:@"useAlertView"];

  return [v2 BOOLValue];
}

- (void)setUseAlertView:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"useAlertView"];
}

- (BOOL)userNameFieldEditable
{
  v2 = [(ACFMessage *)self objectForKey:@"userNameFieldEditable"];

  return [v2 BOOLValue];
}

- (void)setUserNameFieldEditable:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"userNameFieldEditable"];
}

- (BOOL)automaticallyCancelWhenSwitchingToBackground
{
  v2 = [(ACFMessage *)self objectForKey:@"automaticallyCancelWhenSwitchingToBackground"];

  return [v2 BOOLValue];
}

- (void)setAutomaticallyCancelWhenSwitchingToBackground:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"automaticallyCancelWhenSwitchingToBackground"];
}

- (BOOL)canUseTouchID
{
  v2 = [(ACFMessage *)self objectForKey:@"canUseTouchID"];

  return [v2 BOOLValue];
}

- (void)setCanUseTouchID:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"canUseTouchID"];
}

- (BOOL)generatedWithTouchID
{
  v2 = [(ACFMessage *)self objectForKey:@"generatedWithTouchID"];

  return [v2 BOOLValue];
}

- (void)setGeneratedWithTouchID:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"generatedWithTouchID"];
}

@end