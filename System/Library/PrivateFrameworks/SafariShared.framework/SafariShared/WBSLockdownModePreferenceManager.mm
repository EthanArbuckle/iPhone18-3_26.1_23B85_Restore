@interface WBSLockdownModePreferenceManager
- (WBSLockdownModePreferenceManager)initWithPerSitePreferenceStore:(id)a3;
- (id)preferences;
- (void)didUpdatePreference:(id)a3 toValue:(id)a4 forDomain:(id)a5;
- (void)getLockdownModeEnabledForDomain:(id)a3 withTimeout:(double)a4 fallbackEnabledState:(BOOL)a5 usingBlock:(id)a6;
- (void)setLockdownModeEnabled:(BOOL)a3 forDomain:(id)a4;
@end

@implementation WBSLockdownModePreferenceManager

- (WBSLockdownModePreferenceManager)initWithPerSitePreferenceStore:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WBSLockdownModePreferenceManager;
  v6 = [(WBSLockdownModePreferenceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_perSitePreferenceStore, a3);
    v8 = [[WBSPerSitePreference alloc] initWithIdentifier:@"LockdownModePreference"];
    lockdownPreference = v7->_lockdownPreference;
    v7->_lockdownPreference = v8;

    [(WBSPerSitePreferenceManager *)v7 setStorageDelegate:v7];
    [(WBSPerSitePreferenceManager *)v7 setDefaultsDelegate:v7];
    v10 = v7;
  }

  return v7;
}

- (void)setLockdownModeEnabled:(BOOL)a3 forDomain:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  [(WBSPerSitePreferenceManager *)self setValue:v8 ofPreference:self->_lockdownPreference forDomain:v7 completionHandler:0];
}

- (void)getLockdownModeEnabledForDomain:(id)a3 withTimeout:(double)a4 fallbackEnabledState:(BOOL)a5 usingBlock:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  if ([v10 length])
  {
    lockdownPreference = self->_lockdownPreference;
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v14 = [WBSPerSitePreferenceTimeout timeoutWithInterval:v13 fallbackValue:a4];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __112__WBSLockdownModePreferenceManager_getLockdownModeEnabledForDomain_withTimeout_fallbackEnabledState_usingBlock___block_invoke;
    v15[3] = &unk_1E7FB6CA8;
    v16 = v11;
    [(WBSPerSitePreferenceManager *)self getValueOfPreference:lockdownPreference forDomain:v10 withTimeout:v14 usingBlock:v15];
  }

  else
  {
    (*(v11 + 2))(v11, v7);
  }
}

uint64_t __112__WBSLockdownModePreferenceManager_getLockdownModeEnabledForDomain_withTimeout_fallbackEnabledState_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 BOOLValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)didUpdatePreference:(id)a3 toValue:(id)a4 forDomain:(id)a5
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AD88];
  v7 = a5;
  v8 = [v6 defaultCenter];
  v10 = @"domainWithModifiedLockdownModePreference";
  v11[0] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [v8 postNotificationName:@"perSiteLockdownModePreferenceDidChange" object:self userInfo:v9];
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_lockdownPreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end