@interface SBStartupTransitionContext
- (BOOL)isEqual:(id)equal;
- (id)_initWithRebootContext:(id)context;
- (id)_initWithRepresentation:(id)representation loginSession:(BOOL)session;
- (id)_initWithRestartRequest:(id)request fromLocked:(BOOL)locked fromApplication:(id)application;
- (id)_initWithShutdownContext:(id)context;
- (id)_representation;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_parseOverlayInfo;
- (void)_reallyInitFromRepresentation:(id)representation;
@end

@implementation SBStartupTransitionContext

- (id)_initWithRepresentation:(id)representation loginSession:(BOOL)session
{
  representationCopy = representation;
  v10.receiver = self;
  v10.super_class = SBStartupTransitionContext;
  v7 = [(SBStartupTransitionContext *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_isLoginSession = session;
    [(SBStartupTransitionContext *)v7 _reallyInitFromRepresentation:representationCopy];
  }

  return v8;
}

- (id)_initWithRestartRequest:(id)request fromLocked:(BOOL)locked fromApplication:(id)application
{
  requestCopy = request;
  applicationCopy = application;
  v18.receiver = self;
  v18.super_class = SBStartupTransitionContext;
  v10 = [(SBStartupTransitionContext *)&v18 init];
  if (v10)
  {
    reason = [requestCopy reason];
    reason = v10->_reason;
    v10->_reason = reason;

    applicationLaunchURL = [requestCopy applicationLaunchURL];
    applicationLaunchURL = v10->_applicationLaunchURL;
    v10->_applicationLaunchURL = applicationLaunchURL;

    v10->_fromLocked = locked;
    objc_storeStrong(&v10->_fromApplicationBundleID, application);
    mEMORY[0x277D0AB10] = [MEMORY[0x277D0AB10] sharedInstance];
    initializationContext = [mEMORY[0x277D0AB10] initializationContext];
    v10->_isDark = [initializationContext wasBootedDark];
  }

  return v10;
}

- (id)_initWithRebootContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SBStartupTransitionContext;
  v5 = [(SBStartupTransitionContext *)&v9 init];
  if (v5)
  {
    reason = [contextCopy reason];
    reason = v5->_reason;
    v5->_reason = reason;

    v5->_isDark = [contextCopy isDark];
  }

  return v5;
}

- (id)_initWithShutdownContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SBStartupTransitionContext;
  v5 = [(SBStartupTransitionContext *)&v9 init];
  if (v5)
  {
    reason = [contextCopy reason];
    reason = v5->_reason;
    v5->_reason = reason;

    v5->_fromUserPowerDown = [contextCopy fromUserPowerDown];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  isLogin = self->_isLogin;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __38__SBStartupTransitionContext_isEqual___block_invoke;
  v50[3] = &unk_2783ACE58;
  v7 = equalCopy;
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

- (void)_reallyInitFromRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy bs_safeObjectForKey:@"__reason" ofType:objc_opt_class()];
  reason = self->_reason;
  self->_reason = v4;

  self->_fromLocked = 0;
  v6 = [representationCopy bs_safeObjectForKey:@"__fromLocked" ofType:objc_opt_class()];
  v7 = v6;
  if (v6)
  {
    self->_fromLocked = [v6 BOOLValue];
  }

  applicationLaunchURL = self->_applicationLaunchURL;
  self->_applicationLaunchURL = 0;

  v9 = [representationCopy objectForKeyedSubscript:@"__appLaunchURL"];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    v11 = self->_applicationLaunchURL;
    self->_applicationLaunchURL = v10;
  }

  v12 = [representationCopy objectForKeyedSubscript:@"__fromAppBundleID"];
  fromApplicationBundleID = self->_fromApplicationBundleID;
  self->_fromApplicationBundleID = v12;

  mEMORY[0x277D0AB10] = [MEMORY[0x277D0AB10] sharedInstance];
  initializationContext = [mEMORY[0x277D0AB10] initializationContext];
  self->_isDark = [initializationContext wasBootedDark];

  self->_fromUserPowerDown = 0;
  v16 = [representationCopy bs_safeObjectForKey:@"__fromUserPowerDown" ofType:objc_opt_class()];
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
    absoluteString = [(NSURL *)applicationLaunchURL absoluteString];
    [v4 setObject:absoluteString forKeyedSubscript:@"__appLaunchURL"];
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
  succinctDescriptionBuilder = [(SBStartupTransitionContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBStartupTransitionContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBStartupTransitionContext *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendString:self->_reason withName:@"restartReason"];
  v5 = [succinctDescriptionBuilder appendObject:self->_applicationLaunchURL withName:@"applicationLaunchURL" skipIfNil:1];
  v6 = [succinctDescriptionBuilder appendObject:self->_fromApplicationBundleID withName:@"fromApplication" skipIfNil:1];
  v7 = [succinctDescriptionBuilder appendBool:self->_fromLocked withName:@"fromLocked"];
  v8 = [succinctDescriptionBuilder appendBool:self->_fromUserPowerDown withName:@"fromUserPowerDown"];
  v9 = [succinctDescriptionBuilder appendBool:self->_isDark withName:@"fromDarkBoot"];
  v10 = [succinctDescriptionBuilder appendBool:self->_isLogin withName:@"isLogin"];
  v11 = [succinctDescriptionBuilder appendBool:self->_isLogout withName:@"isLogout"];
  v12 = [succinctDescriptionBuilder appendBool:self->_isLoginSession withName:@"isLoginSession"];
  if (self->_overlay)
  {
    activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__SBStartupTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke;
    v15[3] = &unk_2783A92D8;
    v16 = succinctDescriptionBuilder;
    selfCopy = self;
    [v16 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v15];
  }

  return succinctDescriptionBuilder;
}

- (void)_parseOverlayInfo
{
  self->_hasUserSwitchOverlayMismatch = 0;
  v3 = MEMORY[0x277CF05E8];
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  v5 = [v3 existingOverlayForDisplay:mainDisplay];

  name = [v5 name];
  v7 = [name isEqualToString:@"login"];

  name2 = [v5 name];
  v9 = [name2 isEqualToString:@"logout"];

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