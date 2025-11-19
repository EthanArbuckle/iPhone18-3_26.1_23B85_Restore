@interface _SBSystemKeyCommandCoalitionPolicyEnforcer
- (id)deferringTargetForPolicy:(id)a3;
@end

@implementation _SBSystemKeyCommandCoalitionPolicyEnforcer

- (id)deferringTargetForPolicy:(id)a3
{
  v3 = MEMORY[0x277CF0748];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 sbWindowSceneAncestor];

  v7 = [v6 windows];
  v8 = [v7 firstObject];

  v9 = [MEMORY[0x277CF0650] tokenForIdentifierOfCAContext:{objc_msgSend(v8, "_contextId")}];
  [v5 setToken:v9];

  return v5;
}

@end