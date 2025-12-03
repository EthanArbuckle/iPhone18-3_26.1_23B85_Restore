@interface WBSLockdownModePreferenceManager
- (WBSLockdownModePreferenceManager)initWithPerSitePreferenceStore:(id)store;
- (id)preferences;
- (void)didUpdatePreference:(id)preference toValue:(id)value forDomain:(id)domain;
- (void)getLockdownModeEnabledForDomain:(id)domain withTimeout:(double)timeout fallbackEnabledState:(BOOL)state usingBlock:(id)block;
- (void)setLockdownModeEnabled:(BOOL)enabled forDomain:(id)domain;
@end

@implementation WBSLockdownModePreferenceManager

- (WBSLockdownModePreferenceManager)initWithPerSitePreferenceStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = WBSLockdownModePreferenceManager;
  v6 = [(WBSLockdownModePreferenceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_perSitePreferenceStore, store);
    v8 = [[WBSPerSitePreference alloc] initWithIdentifier:@"LockdownModePreference"];
    lockdownPreference = v7->_lockdownPreference;
    v7->_lockdownPreference = v8;

    [(WBSPerSitePreferenceManager *)v7 setStorageDelegate:v7];
    [(WBSPerSitePreferenceManager *)v7 setDefaultsDelegate:v7];
    v10 = v7;
  }

  return v7;
}

- (void)setLockdownModeEnabled:(BOOL)enabled forDomain:(id)domain
{
  enabledCopy = enabled;
  v6 = MEMORY[0x1E696AD98];
  domainCopy = domain;
  v8 = [v6 numberWithBool:enabledCopy];
  [(WBSPerSitePreferenceManager *)self setValue:v8 ofPreference:self->_lockdownPreference forDomain:domainCopy completionHandler:0];
}

- (void)getLockdownModeEnabledForDomain:(id)domain withTimeout:(double)timeout fallbackEnabledState:(BOOL)state usingBlock:(id)block
{
  stateCopy = state;
  domainCopy = domain;
  blockCopy = block;
  if ([domainCopy length])
  {
    lockdownPreference = self->_lockdownPreference;
    v13 = [MEMORY[0x1E696AD98] numberWithBool:stateCopy];
    v14 = [WBSPerSitePreferenceTimeout timeoutWithInterval:v13 fallbackValue:timeout];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __112__WBSLockdownModePreferenceManager_getLockdownModeEnabledForDomain_withTimeout_fallbackEnabledState_usingBlock___block_invoke;
    v15[3] = &unk_1E7FB6CA8;
    v16 = blockCopy;
    [(WBSPerSitePreferenceManager *)self getValueOfPreference:lockdownPreference forDomain:domainCopy withTimeout:v14 usingBlock:v15];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, stateCopy);
  }
}

uint64_t __112__WBSLockdownModePreferenceManager_getLockdownModeEnabledForDomain_withTimeout_fallbackEnabledState_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 BOOLValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)didUpdatePreference:(id)preference toValue:(id)value forDomain:(id)domain
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AD88];
  domainCopy = domain;
  defaultCenter = [v6 defaultCenter];
  v10 = @"domainWithModifiedLockdownModePreference";
  v11[0] = domainCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [defaultCenter postNotificationName:@"perSiteLockdownModePreferenceDidChange" object:self userInfo:v9];
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_lockdownPreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end