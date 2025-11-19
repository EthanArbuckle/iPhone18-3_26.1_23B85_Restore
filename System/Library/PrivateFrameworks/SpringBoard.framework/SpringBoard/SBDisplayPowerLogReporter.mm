@interface SBDisplayPowerLogReporter
- (SBDisplayPowerLogReporter)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (void)reportPowerLogEntry:(id)a3;
@end

@implementation SBDisplayPowerLogReporter

- (SBDisplayPowerLogReporter)init
{
  v13.receiver = self;
  v13.super_class = SBDisplayPowerLogReporter;
  v2 = [(SBDisplayPowerLogReporter *)&v13 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    displayNameToPowerLogEntry = v2->_displayNameToPowerLogEntry;
    v2->_displayNameToPowerLogEntry = v3;

    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    powerLogSendQueue = v2->_powerLogSendQueue;
    v2->_powerLogSendQueue = SerialWithQoS;

    objc_initWeak(&location, v2);
    v7 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v11, &location);
    v8 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureAssertion = v2->_stateCaptureAssertion;
    v2->_stateCaptureAssertion = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __33__SBDisplayPowerLogReporter_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained description];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)reportPowerLogEntry:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDisplayPowerLogReporter reportPowerLogEntry:];
  }

  v6 = [v5 displayName];

  if (!v6)
  {
    [(SBDisplayPowerLogReporter *)a2 reportPowerLogEntry:?];
  }

  v7 = [v5 displayName];
  v8 = [v5 windowingMode];
  v9 = [(NSMutableDictionary *)self->_displayNameToPowerLogEntry objectForKey:v7];
  v10 = v9;
  if (v8)
  {
    if ([v9 isEqual:v5])
    {
      goto LABEL_15;
    }

    [(NSMutableDictionary *)self->_displayNameToPowerLogEntry setObject:v5 forKey:v7];
  }

  else
  {

    if (v10)
    {
      v11 = SBLogDisplayControlling();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(SBDisplayPowerLogReporter *)v5 reportPowerLogEntry:v11];
      }

      [(NSMutableDictionary *)self->_displayNameToPowerLogEntry removeObjectForKey:v7];
    }
  }

  v12 = [v5 logPayload];
  v13 = SBLogDisplayControlling();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(SBDisplayPowerLogReporter *)v12 reportPowerLogEntry:v13];
  }

  powerLogSendQueue = self->_powerLogSendQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__SBDisplayPowerLogReporter_reportPowerLogEntry___block_invoke;
  v15[3] = &unk_2783A8BC8;
  v16 = v12;
  v17 = @"WindowMode";
  v10 = v12;
  dispatch_async(powerLogSendQueue, v15);

LABEL_15:
}

uint64_t __49__SBDisplayPowerLogReporter_reportPowerLogEntry___block_invoke()
{
  result = PLShouldLogRegisteredEvent();
  if (result)
  {

    return PLLogRegisteredEvent();
  }

  return result;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBDisplayPowerLogReporter *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v4 appendDictionarySection:self->_displayNameToPowerLogEntry withName:@"map" skipIfEmpty:0];

  return v4;
}

- (void)reportPowerLogEntry:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDisplayPowerLogReporter reportPowerLogEntry:]"];
  [v1 handleFailureInFunction:v0 file:@"SBDisplayPowerLogReporter.m" lineNumber:50 description:@"this call must be made on the main thread"];
}

- (void)reportPowerLogEntry:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayPowerLogReporter.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"[powerLogEntry displayName]"}];
}

- (void)reportPowerLogEntry:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "incoming entry has .Invalid windowing mode. evicting from cache: %{public}@", &v2, 0xCu);
}

- (void)reportPowerLogEntry:(uint64_t)a1 .cold.4(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138543618;
  v3 = @"WindowMode";
  v4 = 2114;
  v5 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "reporting to powerlog. eventName: %{public}@; payload: %{public}@", &v2, 0x16u);
}

@end