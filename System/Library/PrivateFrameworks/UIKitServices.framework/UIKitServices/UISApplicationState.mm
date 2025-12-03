@interface UISApplicationState
- (NSDate)_nextWakeDate;
- (UISApplicationState)init;
- (UISApplicationState)initWithBundleIdentifier:(id)identifier;
- (id)initForCurrentApplication;
- (void)_setNextWakeDate:(id)date;
- (void)dealloc;
- (void)setBadgeValue:(id)value;
@end

@implementation UISApplicationState

- (id)initForCurrentApplication
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [(UISApplicationState *)self initWithBundleIdentifier:bundleIdentifier];

  return v5;
}

- (void)dealloc
{
  [(UISApplicationStateClient *)self->_client invalidate];
  v3.receiver = self;
  v3.super_class = UISApplicationState;
  [(UISApplicationState *)&v3 dealloc];
}

- (UISApplicationState)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UISApplicationState.m" lineNumber:27 description:@"[-init] is unavailable for UIApplicationState."];

  return 0;
}

- (UISApplicationState)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = UISApplicationState;
  v6 = [(UISApplicationState *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v8 = [[UISApplicationStateClient alloc] initWithBundleIdentifier:identifierCopy];
    client = v7->_client;
    v7->_client = v8;
  }

  return v7;
}

- (void)setBadgeValue:(id)value
{
  v14 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = _UISStateServiceLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      processHandle = [MEMORY[0x1E698E740] processHandle];
      bundleIdentifier = self->_bundleIdentifier;
      v8 = 138543874;
      v9 = processHandle;
      v10 = 2114;
      v11 = bundleIdentifier;
      v12 = 2114;
      v13 = valueCopy;
      _os_log_impl(&dword_195FF3000, v5, OS_LOG_TYPE_DEFAULT, "Client %{public}@ is requesting to change the badge value of %{public}@ to %{public}@", &v8, 0x20u);
    }

    [(UISApplicationStateClient *)self->_client setBadgeValue:valueCopy];
  }
}

- (NSDate)_nextWakeDate
{
  [(UISApplicationStateClient *)self->_client nextWakeIntervalSinceReferenceDate];
  if (v2 == -1.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  }

  return v3;
}

- (void)_setNextWakeDate:(id)date
{
  client = self->_client;
  [date timeIntervalSinceReferenceDate];

  [(UISApplicationStateClient *)client setNextWakeIntervalSinceReferenceDate:?];
}

@end