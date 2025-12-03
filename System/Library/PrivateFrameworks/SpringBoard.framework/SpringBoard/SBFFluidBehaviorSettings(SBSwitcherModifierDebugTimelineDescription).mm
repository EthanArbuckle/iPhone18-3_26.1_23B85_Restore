@interface SBFFluidBehaviorSettings(SBSwitcherModifierDebugTimelineDescription)
- (id)sb_switcherModifierDebugTimelineDescription;
@end

@implementation SBFFluidBehaviorSettings(SBSwitcherModifierDebugTimelineDescription)

- (id)sb_switcherModifierDebugTimelineDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [self response];
  v6 = v5;
  [self dampingRatio];
  v8 = v7;
  [self trackingResponse];
  v10 = v9;
  [self trackingDampingRatio];
  v12 = [v2 stringWithFormat:@"<%@:%p response: %0.3f\ndampingRatio: %0.3f\ntrackingResponse: %0.3f\ntrackingDampingRatio: %0.3f>", v4, self, v6, v8, v10, v11];

  return v12;
}

@end