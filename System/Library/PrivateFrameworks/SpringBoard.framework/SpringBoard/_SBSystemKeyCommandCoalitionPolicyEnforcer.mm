@interface _SBSystemKeyCommandCoalitionPolicyEnforcer
- (id)deferringTargetForPolicy:(id)policy;
@end

@implementation _SBSystemKeyCommandCoalitionPolicyEnforcer

- (id)deferringTargetForPolicy:(id)policy
{
  v3 = MEMORY[0x277CF0748];
  policyCopy = policy;
  v5 = objc_alloc_init(v3);
  sbWindowSceneAncestor = [policyCopy sbWindowSceneAncestor];

  windows = [sbWindowSceneAncestor windows];
  firstObject = [windows firstObject];

  v9 = [MEMORY[0x277CF0650] tokenForIdentifierOfCAContext:{objc_msgSend(firstObject, "_contextId")}];
  [v5 setToken:v9];

  return v5;
}

@end