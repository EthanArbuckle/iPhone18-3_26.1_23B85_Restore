@interface SBPrepareForSceneUpdateSwitcherModifierEvent
- (SBPrepareForSceneUpdateSwitcherModifierEvent)initWithLiveAppLayouts:(id)layouts;
@end

@implementation SBPrepareForSceneUpdateSwitcherModifierEvent

- (SBPrepareForSceneUpdateSwitcherModifierEvent)initWithLiveAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v9.receiver = self;
  v9.super_class = SBPrepareForSceneUpdateSwitcherModifierEvent;
  v6 = [(SBWindowingModifierActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_liveAppLayouts, layouts);
  }

  return v7;
}

@end