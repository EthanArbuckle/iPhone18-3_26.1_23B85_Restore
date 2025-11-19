@interface SBHomeScreenSwitcherModifier
- (SBHomeScreenSwitcherModifier)init;
@end

@implementation SBHomeScreenSwitcherModifier

- (SBHomeScreenSwitcherModifier)init
{
  v9.receiver = self;
  v9.super_class = SBHomeScreenSwitcherModifier;
  v2 = [(SBSwitcherModifier *)&v9 init];
  if (v2)
  {
    v3 = [[SBCoplanarSwitcherModifier alloc] initWithActiveAppLayout:0];
    coplanarModifier = v2->_coplanarModifier;
    v2->_coplanarModifier = v3;

    [(SBChainableModifier *)v2 addChildModifier:v2->_coplanarModifier atLevel:0 key:0];
    v5 = objc_alloc_init(_SBHomeScreenFloorSwitcherModifier);
    homeScreenFloorModifier = v2->_homeScreenFloorModifier;
    v2->_homeScreenFloorModifier = v5;

    [(SBChainableModifier *)v2 addChildModifier:v2->_homeScreenFloorModifier atLevel:1 key:0];
    v7 = objc_alloc_init(SBDefaultImplementationsSwitcherModifier);
    [(SBChainableModifier *)v2 addChildModifier:v7 atLevel:2 key:0];
  }

  return v2;
}

@end