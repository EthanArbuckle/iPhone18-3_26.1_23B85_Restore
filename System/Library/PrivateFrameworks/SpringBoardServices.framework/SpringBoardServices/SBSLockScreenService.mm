@interface SBSLockScreenService
- (SBSLockScreenService)init;
- (id)preventPasscodeLockWithReason:(id)a3;
- (id)preventSpuriousScreenUndimWithReason:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)launchEmergencyDialerWithCompletion:(id)a3;
- (void)lockDeviceAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)migrateIncomingNotificationsToHistory;
- (void)requestPasscodeCheckUIWithOptions:(id)a3 withCompletion:(id)a4;
- (void)requestPasscodeUnlockUIWithOptions:(id)a3 withCompletion:(id)a4;
@end

@implementation SBSLockScreenService

- (SBSLockScreenService)init
{
  v7.receiver = self;
  v7.super_class = SBSLockScreenService;
  v2 = [(SBSLockScreenService *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    lock_connection = v3->_lock_connection;
    v3->_lock_connection = v4;
  }

  return v3;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  lock_connection = self->_lock_connection;
  self->_lock_connection = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)launchEmergencyDialerWithCompletion:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);
  if (!v4)
  {
    [SBSLockScreenService launchEmergencyDialerWithCompletion:];
  }

  [(SBSLockScreenServiceConnection *)v4 launchEmergencyDialerWithCompletion:v5];
}

- (void)requestPasscodeUnlockUIWithOptions:(id)a3 withCompletion:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    [SBSLockScreenService requestPasscodeUnlockUIWithOptions:withCompletion:];
  }

  [(SBSLockScreenServiceConnection *)v7 requestPasscodeUnlockUIWithOptions:v8 withCompletion:v6];
}

- (void)requestPasscodeCheckUIWithOptions:(id)a3 withCompletion:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    [SBSLockScreenService requestPasscodeCheckUIWithOptions:withCompletion:];
  }

  [(SBSLockScreenServiceConnection *)v7 requestPasscodeCheckUIWithOptions:v8 withCompletion:v6];
}

- (id)preventPasscodeLockWithReason:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    [SBSLockScreenService preventPasscodeLockWithReason:];
  }

  v6 = [v4 copy];
  v7 = [(SBSLockScreenServiceConnection *)v5 preventPasscodeLockWithReason:v6];

  return v7;
}

- (id)preventSpuriousScreenUndimWithReason:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    [SBSLockScreenService preventSpuriousScreenUndimWithReason:];
  }

  v6 = [v4 copy];
  v7 = [(SBSLockScreenServiceConnection *)v5 preventSpuriousScreenUndimWithReason:v6];

  return v7;
}

- (void)lockDeviceAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    [SBSLockScreenService lockDeviceAnimated:withCompletion:];
  }

  [(SBSLockScreenServiceConnection *)v6 lockDeviceAnimated:v4 withCompletion:v7];
}

- (void)migrateIncomingNotificationsToHistory
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)launchEmergencyDialerWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)requestPasscodeUnlockUIWithOptions:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)requestPasscodeCheckUIWithOptions:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)preventPasscodeLockWithReason:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)preventSpuriousScreenUndimWithReason:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)lockDeviceAnimated:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end