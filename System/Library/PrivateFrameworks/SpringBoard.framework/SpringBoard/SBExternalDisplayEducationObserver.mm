@interface SBExternalDisplayEducationObserver
- (SBExternalDisplayEducationObserver)initWithBannerPoster:(id)a3;
- (void)_extendedDisplayControllerDidConnect:(id)a3;
- (void)_extendedDisplayControllerDidDisconnect:(id)a3;
- (void)_hardwareAvailabilityChanged:(id)a3;
- (void)dealloc;
@end

@implementation SBExternalDisplayEducationObserver

- (SBExternalDisplayEducationObserver)initWithBannerPoster:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBExternalDisplayEducationObserver;
  v6 = [(SBExternalDisplayEducationObserver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bannerPoster, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__extendedDisplayControllerDidConnect_ name:@"SBSystemShellExtendedDisplayControllerPolicyConnectNotification" object:0];
    [v8 addObserver:v7 selector:sel__extendedDisplayControllerDidDisconnect_ name:@"SBSystemShellExtendedDisplayControllerPolicyDisconnectNotification" object:0];
    [v8 addObserver:v7 selector:sel__hardwareAvailabilityChanged_ name:@"SBSystemShellExtendedDisplayControllerHardwareAvailabilityNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBExternalDisplayEducationObserver;
  [(SBExternalDisplayEducationObserver *)&v4 dealloc];
}

- (void)_extendedDisplayControllerDidConnect:(id)a3
{
  v9 = [a3 userInfo];
  v4 = [v9 objectForKey:@"kSBSystemShellExtendedDisplayControllerDisplayIdentityKey"];
  if (!v4)
  {
    [SBExternalDisplayEducationObserver _extendedDisplayControllerDidConnect:];
  }

  v5 = [v9 objectForKey:@"kSBSystemShellExtendedDisplayControllerHardwareAvailabilityIsAvailableKey"];
  if (!v5)
  {
    [SBExternalDisplayEducationObserver _extendedDisplayControllerDidConnect:];
  }

  v6 = [v5 BOOLValue];
  if (self->_educationSession)
  {
    [SBExternalDisplayEducationObserver _extendedDisplayControllerDidConnect:];
  }

  v7 = [[SBExternalDisplayEducationSession alloc] initWithDisplayIdentity:v4 hardwareAvailability:v6 bannerPoster:self->_bannerPoster];
  educationSession = self->_educationSession;
  self->_educationSession = v7;

  [(SBExternalDisplayEducationSession *)self->_educationSession displayConnected];
}

- (void)_extendedDisplayControllerDidDisconnect:(id)a3
{
  v9 = [a3 userInfo];
  v5 = [v9 objectForKey:@"kSBSystemShellExtendedDisplayControllerDisplayIdentityKey"];
  if (!v5)
  {
    [SBExternalDisplayEducationObserver _extendedDisplayControllerDidDisconnect:];
  }

  educationSession = self->_educationSession;
  if (!educationSession)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SBExternalDisplayEducationObserver.m" lineNumber:78 description:{@"being told a display disconnected when we're not tracking a session for that display: %@", v5}];

    educationSession = self->_educationSession;
  }

  [(SBExternalDisplayEducationSession *)educationSession displayDisconnected];
  v7 = self->_educationSession;
  self->_educationSession = 0;
}

- (void)_hardwareAvailabilityChanged:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"kSBSystemShellExtendedDisplayControllerDisplayIdentityKey"];
  if (!v5)
  {
    [SBExternalDisplayEducationObserver _hardwareAvailabilityChanged:];
  }

  v6 = [v4 objectForKey:@"kSBSystemShellExtendedDisplayControllerHardwareAvailabilityIsAvailableKey"];
  if (!v6)
  {
    [SBExternalDisplayEducationObserver _hardwareAvailabilityChanged:];
  }

  v7 = [v4 objectForKey:@"kSBSystemShellExtendedDisplayControllerFiredDuringDeviceConnectionWindowKey"];
  if (!v6)
  {
    [SBExternalDisplayEducationObserver _hardwareAvailabilityChanged:];
  }

  v8 = [(SBExternalDisplayEducationSession *)self->_educationSession displayIdentity];
  v9 = [v8 isEqual:v5];

  if (v9)
  {
    -[SBExternalDisplayEducationSession updateHardwareAvailability:withinDisplayConnectionWindow:](self->_educationSession, "updateHardwareAvailability:withinDisplayConnectionWindow:", [v6 BOOLValue], objc_msgSend(v7, "BOOLValue"));
  }

  else
  {
    v10 = SBLogDisplayEducation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = _SBFLoggingMethodProem();
      v12 = [(SBExternalDisplayEducationSession *)self->_educationSession displayIdentity];
      v13 = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ being told hardware availability changed but we're not tracking a session for that display. tracking: %{public}@; received: %{public}@", &v13, 0x20u);
    }
  }
}

- (void)_extendedDisplayControllerDidConnect:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_extendedDisplayControllerDidConnect:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_extendedDisplayControllerDidConnect:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [*v2 displayIdentity];
  [v4 handleFailureInMethod:v1 object:v0 file:@"SBExternalDisplayEducationObserver.m" lineNumber:69 description:{@"being told a display connected when we're already tracking a session for: %@", v3}];
}

- (void)_extendedDisplayControllerDidDisconnect:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_hardwareAvailabilityChanged:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_hardwareAvailabilityChanged:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_hardwareAvailabilityChanged:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end