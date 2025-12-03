@interface SBUISystemApertureAlertingAction
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (void)invalidateWithReason:(id)reason;
@end

@implementation SBUISystemApertureAlertingAction

- (void)invalidateWithReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = reasonCopy;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Alerting action invalidated with reason: %{public}@ (%{public}@)", &v8, 0x16u);
  }

  if ([(SBUISystemApertureAlertingAction *)self canSendResponse])
  {
    v6 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v6 setObject:reasonCopy forSetting:0];
    v7 = [MEMORY[0x1E698E600] responseWithInfo:v6];
    [(SBUISystemApertureAlertingAction *)self sendResponse:v7];
  }
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting)
  {
    return 0;
  }

  else
  {
    return @"invalidation reason";
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v7 = objectCopy;
  if (setting)
  {
    v8 = 0;
  }

  else
  {
    v8 = objectCopy;
  }

  return v8;
}

@end