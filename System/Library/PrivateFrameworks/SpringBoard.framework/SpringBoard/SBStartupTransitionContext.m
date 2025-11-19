@interface SBStartupTransitionContext
- (BOOL)isEqual:(id)a3;
- (id)_initWithRebootContext:(id)a3;
- (id)_initWithRepresentation:(id)a3 loginSession:(BOOL)a4;
- (id)_initWithRestartRequest:(id)a3 fromLocked:(BOOL)a4 fromApplication:(id)a5;
- (id)_initWithShutdownContext:(id)a3;
- (id)_representation;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_parseOverlayInfo;
- (void)_reallyInitFromRepresentation:(id)a3;
@end

@implementation SBStartupTransitionContext

- (id)_initWithRepresentation:(id)a3 loginSession:(BOOL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SBStartupTransitionContext;
  v7 = [(SBStartupTransitionContext *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_isLoginSession = a4;
    [(SBStartupTransitionContext *)v7 _reallyInitFromRepresentation:v6];
  }

  return v8;
}

- (id)_initWithRestartRequest:(id)a3 fromLocked:(BOOL)a4 fromApplication:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = SBStartupTransitionContext;
  v10 = [(SBStartupTransitionContext *)&v18 init];
  if (v10)
  {
    v11 = [v8 reason];
    reason = v10->_reason;
    v10->_reason = v11;

    v13 = [v8 applicationLaunchURL];
    applicationLaunchURL = v10->_applicationLaunchURL;
    v10->_applicationLaunchURL = v13;

    v10->_fromLocked = a4;
    objc_storeStrong(&v10->_fromApplicationBundleID, a5);
    v15 = [MEMORY[0x277D0AB10] sharedInstance];
    v16 = [v15 initializationContext];
    v10->_isDark = [v16 wasBootedDark];
  }

  return v10;
}

- (id)_initWithRebootContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBStartupTransitionContext;
  v5 = [(SBStartupTransitionContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 reason];
    reason = v5->_reason;
    v5->_reason = v6;

    v5->_isDark = [v4 isDark];
  }

  return v5;
}

- (id)_initWithShutdownContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBStartupTransitionContext;
  v5 = [(SBStartupTransitionContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 reason];
    reason = v5->_reason;
    v5->_reason = v6;

    v5->_fromUserPowerDown = [v4 fromUserPowerDown];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  isLogin = self->_isLogin;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __38__SBStartupTransitionContext_isEqual___block_invoke;
  v50[3] = &unk_2783ACE58;
  v7 = v4;
  v51 = v7;
  v8 = [v5 appendBool:isLogin counterpart:v50];
  isLogout = self->_isLogout;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __38__SBStartupTransitionContext_isEqual___block_invoke_2;
  v48[3] = &unk_2783ACE58;
  v10 = v7;
  v49 = v10;
  v11 = [v5 appendBool:isLogout counterpart:v48];
  isDark = self->_isDark;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __38__SBStartupTransitionContext_isEqual___block_invoke_3;
  v46[3] = &unk_2783ACE58;
  v13 = v10;
  v47 = v13;
  v14 = [v5 appendBool:isDark counterpart:v46];
  fromLocked = self->_fromLocked;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __38__SBStartupTransitionContext_isEqual___block_invoke_4;
  v44[3] = &unk_2783ACE58;
  v16 = v13;
  v45 = v16;
  v17 = [v5 appendBool:fromLocked counterpart:v44];
  overlay = self->_overlay;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __38__SBStartupTransitionContext_isEqual___block_invoke_5;
  v42[3] = &unk_2783A91C8;
  v19 = v16;
  v43 = v19;
  v20 = [v5 appendObject:overlay counterpart:v42];
  applicationLaunchURL = self->_applicationLaunchURL;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __38__SBStartupTransitionContext_isEqual___block_invoke_6;
  v40[3] = &unk_2783A91C8;
  v22 = v19;
  v41 = v22;
  v23 = [v5 appendObject:applicationLaunchURL counterpart:v40];
  fromApplicationBundleID = self->_fromApplicationBundleID;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __38__SBStartupTransitionContext_isEqual___block_invoke_7;
  v38[3] = &unk_2783A91C8;
  v25 = v22;
  v39 = v25;
  v26 = [v5 appendObject:fromApplicationBundleID counterpart:v38];
  reason = self->_reason;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __38__SBStartupTransitionContext_isEqual___block_invoke_8;
  v36[3] = &unk_2783A91C8;
  v28 = v25;
  v37 = v28;
  v29 = [v5 appendObject:reason counterpart:v36];
  fromUserPowerDown = self->_fromUserPowerDown;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __38__SBStartupTransitionContext_isEqual___block_invoke_9;
  v34[3] = &unk_2783ACE58;
  v35 = v28;
  v31 = v28;
  v32 = [v5 appendBool:fromUserPowerDown counterpart:v34];
  LOBYTE(v28) = [v5 isEqual];

  return v28;
}

- (void)_reallyInitFromRepresentation:(id)a3
{
  v18 = a3;
  v4 = [v18 bs_safeObjectForKey:@"__reason" ofType:objc_opt_class()];
  reason = self->_reason;
  self->_reason = v4;

  self->_fromLocked = 0;
  v6 = [v18 bs_safeObjectForKey:@"__fromLocked" ofType:objc_opt_class()];
  v7 = v6;
  if (v6)
  {
    self->_fromLocked = [v6 BOOLValue];
  }

  applicationLaunchURL = self->_applicationLaunchURL;
  self->_applicationLaunchURL = 0;

  v9 = [v18 objectForKeyedSubscript:@"__appLaunchURL"];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    v11 = self->_applicationLaunchURL;
    self->_applicationLaunchURL = v10;
  }

  v12 = [v18 objectForKeyedSubscript:@"__fromAppBundleID"];
  fromApplicationBundleID = self->_fromApplicationBundleID;
  self->_fromApplicationBundleID = v12;

  v14 = [MEMORY[0x277D0AB10] sharedInstance];
  v15 = [v14 initializationContext];
  self->_isDark = [v15 wasBootedDark];

  self->_fromUserPowerDown = 0;
  v16 = [v18 bs_safeObjectForKey:@"__fromUserPowerDown" ofType:objc_opt_class()];
  v17 = v16;
  if (v16)
  {
    self->_fromUserPowerDown = [v16 BOOLValue];
  }

  [(SBStartupTransitionContext *)self _parseOverlayInfo];
}

- (id)_representation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  reason = self->_reason;
  if (reason)
  {
    [v3 setObject:reason forKeyedSubscript:@"__reason"];
  }

  applicationLaunchURL = self->_applicationLaunchURL;
  if (applicationLaunchURL)
  {
    v7 = [(NSURL *)applicationLaunchURL absoluteString];
    [v4 setObject:v7 forKeyedSubscript:@"__appLaunchURL"];
  }

  fromApplicationBundleID = self->_fromApplicationBundleID;
  if (fromApplicationBundleID)
  {
    [v4 setObject:fromApplicationBundleID forKeyedSubscript:@"__fromAppBundleID"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_fromLocked];
  [v4 setObject:v9 forKeyedSubscript:@"__fromLocked"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_fromUserPowerDown];
  [v4 setObject:v10 forKeyedSubscript:@"__fromUserPowerDown"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBStartupTransitionContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBStartupTransitionContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBStartupTransitionContext *)self succinctDescriptionBuilder];
  [v4 appendString:self->_reason withName:@"restartReason"];
  v5 = [v4 appendObject:self->_applicationLaunchURL withName:@"applicationLaunchURL" skipIfNil:1];
  v6 = [v4 appendObject:self->_fromApplicationBundleID withName:@"fromApplication" skipIfNil:1];
  v7 = [v4 appendBool:self->_fromLocked withName:@"fromLocked"];
  v8 = [v4 appendBool:self->_fromUserPowerDown withName:@"fromUserPowerDown"];
  v9 = [v4 appendBool:self->_isDark withName:@"fromDarkBoot"];
  v10 = [v4 appendBool:self->_isLogin withName:@"isLogin"];
  v11 = [v4 appendBool:self->_isLogout withName:@"isLogout"];
  v12 = [v4 appendBool:self->_isLoginSession withName:@"isLoginSession"];
  if (self->_overlay)
  {
    v13 = [v4 activeMultilinePrefix];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__SBStartupTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke;
    v15[3] = &unk_2783A92D8;
    v16 = v4;
    v17 = self;
    [v16 appendBodySectionWithName:0 multilinePrefix:v13 block:v15];
  }

  return v4;
}

- (void)_parseOverlayInfo
{
  self->_hasUserSwitchOverlayMismatch = 0;
  v3 = MEMORY[0x277CF05E8];
  v4 = [MEMORY[0x277CD9E40] mainDisplay];
  v5 = [v3 existingOverlayForDisplay:v4];

  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"login"];

  v8 = [v5 name];
  v9 = [v8 isEqualToString:@"logout"];

  if (v7 && self->_isLoginSession)
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBStartupTransitionContext *)v10 _parseOverlayInfo];
    }

    LOBYTE(v7) = 0;
LABEL_12:

    self->_hasUserSwitchOverlayMismatch = 1;
    goto LABEL_13;
  }

  if (v9)
  {
    if (!self->_isLoginSession)
    {
      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(SBStartupTransitionContext *)v10 _parseOverlayInfo];
      }

      LOBYTE(v9) = 0;
      goto LABEL_12;
    }

    LOBYTE(v9) = 1;
  }

LABEL_13:
  self->_isLogin = v7;
  self->_isLogout = v9;
  overlay = self->_overlay;
  self->_overlay = v5;
}

@end