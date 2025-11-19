@interface SBUISystemApertureAlertingAction
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (void)invalidateWithReason:(id)a3;
@end

@implementation SBUISystemApertureAlertingAction

- (void)invalidateWithReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Alerting action invalidated with reason: %{public}@ (%{public}@)", &v8, 0x16u);
  }

  if ([(SBUISystemApertureAlertingAction *)self canSendResponse])
  {
    v6 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v6 setObject:v4 forSetting:0];
    v7 = [MEMORY[0x1E698E600] responseWithInfo:v6];
    [(SBUISystemApertureAlertingAction *)self sendResponse:v7];
  }
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return @"invalidation reason";
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v6 = a4;
  v7 = v6;
  if (a5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

@end