@interface SBPrepareForSceneUpdateSwitcherModifierEvent
- (SBPrepareForSceneUpdateSwitcherModifierEvent)initWithLiveAppLayouts:(id)a3;
@end

@implementation SBPrepareForSceneUpdateSwitcherModifierEvent

- (SBPrepareForSceneUpdateSwitcherModifierEvent)initWithLiveAppLayouts:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBPrepareForSceneUpdateSwitcherModifierEvent;
  v6 = [(SBWindowingModifierActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_liveAppLayouts, a3);
  }

  return v7;
}

@end