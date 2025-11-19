@interface QueryController
- (NSString)applicationNameForUserAgent;
- (QueryController)init;
- (id)createResultObject;
- (void)sessionReceivedBagWithEnabledDomains:(id)a3;
- (void)updateCorrectionDict:(id)a3;
@end

@implementation QueryController

- (id)createResultObject
{
  v2 = objc_alloc_init(SFSearchResult_Compatibility);

  return v2;
}

- (NSString)applicationNameForUserAgent
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__QueryController_applicationNameForUserAgent__block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  if (applicationNameForUserAgent_onceToken != -1)
  {
    dispatch_once(&applicationNameForUserAgent_onceToken, block);
  }

  return applicationNameForUserAgent_applicationNameForUserAgent;
}

void __46__QueryController_applicationNameForUserAgent__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 infoDictionary];
  v6 = [v3 objectForKeyedSubscript:@"CFBundleVersion"];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Spotlight/%@", v6];
  v5 = applicationNameForUserAgent_applicationNameForUserAgent;
  applicationNameForUserAgent_applicationNameForUserAgent = v4;
}

- (QueryController)init
{
  v3.receiver = self;
  v3.super_class = QueryController;
  return [(QueryController *)&v3 init];
}

- (void)sessionReceivedBagWithEnabledDomains:(id)a3
{
  SPSetInternetDomainsAvailable([a3 count] != 0);
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
  if (self->_session)
  {
    v7 = v4;
    v5 = [v4 BOOLForKey:@"disableAsTypedSuggestion"];
    v6 = v5 == [(PRSSearchSession *)self->_session disableAsTypedSuggestion];
    v4 = v7;
    if (!v6)
    {
      [v7 setBool:-[PRSSearchSession disableAsTypedSuggestion](self->_session forKey:{"disableAsTypedSuggestion"), @"disableAsTypedSuggestion"}];
      [v7 synchronize];
      v4 = v7;
    }
  }
}

- (void)updateCorrectionDict:(id)a3
{
  v3 = a3;
  v4 = +[SPCorrectionProxy sharedHandler];
  [v4 updateWithFileHandle:v3];
}

@end