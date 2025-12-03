@interface WFLinkIPDataFindSportsEventsAction
- (id)icon;
- (id)parameterOverrides;
- (id)requiredResources;
@end

@implementation WFLinkIPDataFindSportsEventsAction

- (id)requiredResources
{
  v6.receiver = self;
  v6.super_class = WFLinkIPDataFindSportsEventsAction;
  requiredResources = [(WFAction *)&v6 requiredResources];
  v3 = [requiredResources mutableCopy];

  v4 = +[_TtC11WorkflowKit43WFIntelligencePlatformViewAvailableResource sportsTeams];
  [v3 addObject:v4];

  return v3;
}

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0B60]);
  v3 = [MEMORY[0x1E69E0B58] workflowKitImageNamed:@"Sports"];
  v4 = [v2 initWithImage:v3];

  return v4;
}

- (id)parameterOverrides
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = WFLinkIPDataFindSportsEventsAction;
  parameterOverrides = [(WFOverridableLinkAction *)&v7 parameterOverrides];
  v3 = [parameterOverrides mutableCopy];

  v8 = @"PreferParameterValuePicker";
  v9[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  WFAddEntriesToDictionary(v3, @"sportsTeamAppEntity", v4);

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

@end