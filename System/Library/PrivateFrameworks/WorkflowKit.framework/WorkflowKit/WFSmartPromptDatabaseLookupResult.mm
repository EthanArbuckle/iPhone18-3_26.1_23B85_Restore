@interface WFSmartPromptDatabaseLookupResult
- (WFSmartPromptDatabaseLookupResult)initWithAllowedStates:(id)states deniedStates:(id)deniedStates undefinedStates:(id)undefinedStates restrictedStates:(id)restrictedStates previousAttribution:(id)attribution;
@end

@implementation WFSmartPromptDatabaseLookupResult

- (WFSmartPromptDatabaseLookupResult)initWithAllowedStates:(id)states deniedStates:(id)deniedStates undefinedStates:(id)undefinedStates restrictedStates:(id)restrictedStates previousAttribution:(id)attribution
{
  statesCopy = states;
  deniedStatesCopy = deniedStates;
  undefinedStatesCopy = undefinedStates;
  restrictedStatesCopy = restrictedStates;
  attributionCopy = attribution;
  v22.receiver = self;
  v22.super_class = WFSmartPromptDatabaseLookupResult;
  v17 = [(WFSmartPromptDatabaseLookupResult *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_allowedStates, states);
    objc_storeStrong(&v18->_deniedStates, deniedStates);
    objc_storeStrong(&v18->_undefinedStates, undefinedStates);
    objc_storeStrong(&v18->_restrictedStates, restrictedStates);
    objc_storeStrong(&v18->_previousAttribution, attribution);
    v19 = v18;
  }

  return v18;
}

@end