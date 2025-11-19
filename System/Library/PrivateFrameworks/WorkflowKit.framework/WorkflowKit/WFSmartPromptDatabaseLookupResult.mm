@interface WFSmartPromptDatabaseLookupResult
- (WFSmartPromptDatabaseLookupResult)initWithAllowedStates:(id)a3 deniedStates:(id)a4 undefinedStates:(id)a5 restrictedStates:(id)a6 previousAttribution:(id)a7;
@end

@implementation WFSmartPromptDatabaseLookupResult

- (WFSmartPromptDatabaseLookupResult)initWithAllowedStates:(id)a3 deniedStates:(id)a4 undefinedStates:(id)a5 restrictedStates:(id)a6 previousAttribution:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = WFSmartPromptDatabaseLookupResult;
  v17 = [(WFSmartPromptDatabaseLookupResult *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_allowedStates, a3);
    objc_storeStrong(&v18->_deniedStates, a4);
    objc_storeStrong(&v18->_undefinedStates, a5);
    objc_storeStrong(&v18->_restrictedStates, a6);
    objc_storeStrong(&v18->_previousAttribution, a7);
    v19 = v18;
  }

  return v18;
}

@end