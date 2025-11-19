@interface WFConfiguredSystemControlAction(SBSystemAction)
- (SBControlSystemAction)sb_newSystemActionWithInstanceIdentity:()SBSystemAction;
@end

@implementation WFConfiguredSystemControlAction(SBSystemAction)

- (SBControlSystemAction)sb_newSystemActionWithInstanceIdentity:()SBSystemAction
{
  v4 = a3;
  v5 = [[SBControlSystemAction alloc] initWithConfiguredAction:a1 instanceIdentity:v4];

  return v5;
}

@end