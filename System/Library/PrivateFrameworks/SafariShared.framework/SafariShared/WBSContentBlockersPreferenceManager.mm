@interface WBSContentBlockersPreferenceManager
- (WBSContentBlockersPreferenceManager)initWithPerSitePreferencesStore:(id)store;
- (id)preferences;
- (void)didUpdatePreference:(id)preference toValue:(id)value forDomain:(id)domain;
- (void)getContentBlockersEnabledStateForDomain:(id)domain withTimeout:(double)timeout fallbackEnabledState:(BOOL)state completionHandler:(id)handler;
@end

@implementation WBSContentBlockersPreferenceManager

- (WBSContentBlockersPreferenceManager)initWithPerSitePreferencesStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = WBSContentBlockersPreferenceManager;
  v6 = [(WBSContentBlockersPreferenceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_perSitePreferencesStore, store);
    v8 = [[WBSPerSitePreference alloc] initWithIdentifier:@"ContentBlockersPreference"];
    contentBlockersPreference = v7->_contentBlockersPreference;
    v7->_contentBlockersPreference = v8;

    [(WBSPerSitePreferenceManager *)v7 setStorageDelegate:v7];
    [(WBSPerSitePreferenceManager *)v7 setDefaultsDelegate:v7];
    v10 = v7;
  }

  return v7;
}

- (void)getContentBlockersEnabledStateForDomain:(id)domain withTimeout:(double)timeout fallbackEnabledState:(BOOL)state completionHandler:(id)handler
{
  stateCopy = state;
  domainCopy = domain;
  handlerCopy = handler;
  if ([domainCopy length])
  {
    contentBlockersPreference = self->_contentBlockersPreference;
    v13 = [MEMORY[0x1E696AD98] numberWithBool:stateCopy];
    v14 = [WBSPerSitePreferenceTimeout timeoutWithInterval:v13 fallbackValue:timeout];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __130__WBSContentBlockersPreferenceManager_getContentBlockersEnabledStateForDomain_withTimeout_fallbackEnabledState_completionHandler___block_invoke;
    v15[3] = &unk_1E7FB6CA8;
    v16 = handlerCopy;
    [(WBSPerSitePreferenceManager *)self getValueOfPreference:contentBlockersPreference forDomain:domainCopy withTimeout:v14 usingBlock:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, stateCopy);
  }
}

uint64_t __130__WBSContentBlockersPreferenceManager_getContentBlockersEnabledStateForDomain_withTimeout_fallbackEnabledState_completionHandler___block_invoke(uint64_t a1, void *a2)
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
  v10 = @"domainWithModifiedContentBlockersPreference";
  v11[0] = domainCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [defaultCenter postNotificationName:@"perSiteContentBlockersPreferenceDidChange" object:self userInfo:v9];
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_contentBlockersPreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end