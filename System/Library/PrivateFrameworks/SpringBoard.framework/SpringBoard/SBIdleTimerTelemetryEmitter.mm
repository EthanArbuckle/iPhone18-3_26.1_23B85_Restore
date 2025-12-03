@interface SBIdleTimerTelemetryEmitter
- (void)logTelemetryForUpdatedIdleTimerState:(BOOL)state disablingClientBundleIdentifier:(id)identifier autoLockTimeoutDuration:(id)duration;
@end

@implementation SBIdleTimerTelemetryEmitter

- (void)logTelemetryForUpdatedIdleTimerState:(BOOL)state disablingClientBundleIdentifier:(id)identifier autoLockTimeoutDuration:(id)duration
{
  stateCopy = state;
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  durationCopy = duration;
  if (logTelemetryForUpdatedIdleTimerState_disablingClientBundleIdentifier_autoLockTimeoutDuration__onceToken != -1)
  {
    [SBIdleTimerTelemetryEmitter logTelemetryForUpdatedIdleTimerState:disablingClientBundleIdentifier:autoLockTimeoutDuration:];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:stateCopy];
  [dictionary setObject:v11 forKeyedSubscript:@"idleTimerDisabled"];

  if (identifierCopy)
  {
    v12 = identifierCopy;
  }

  else
  {
    v12 = &stru_283094718;
  }

  [dictionary setObject:v12 forKeyedSubscript:@"bundleID"];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(durationCopy, "intValue")}];
  [dictionary setObject:v13 forKeyedSubscript:@"autoLockTimeoutDuration"];

  v14 = SBLogIdleTimer();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = 138543618;
    v18 = v16;
    v19 = 2114;
    v20 = dictionary;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updated idle timer state telemetry: %{public}@", &v17, 0x16u);
  }

  [(SBIdleTimerTelemetryEmitter *)self _emitPowerLogEventWithPPSTelemetryIdentifier:logTelemetryForUpdatedIdleTimerState_disablingClientBundleIdentifier_autoLockTimeoutDuration__identifier dictionary:dictionary];
}

uint64_t __124__SBIdleTimerTelemetryEmitter_logTelemetryForUpdatedIdleTimerState_disablingClientBundleIdentifier_autoLockTimeoutDuration___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  logTelemetryForUpdatedIdleTimerState_disablingClientBundleIdentifier_autoLockTimeoutDuration__identifier = result;
  return result;
}

@end