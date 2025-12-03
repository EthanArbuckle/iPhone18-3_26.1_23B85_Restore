@interface SBActiveAppLayoutFloatingSwitcherModifier
- (SBActiveAppLayoutFloatingSwitcherModifier)initWithActiveAppLayout:(id)layout fullScreenAppLayout:(id)appLayout floatingConfiguration:(int64_t)configuration environmentMode:(int64_t)mode;
@end

@implementation SBActiveAppLayoutFloatingSwitcherModifier

- (SBActiveAppLayoutFloatingSwitcherModifier)initWithActiveAppLayout:(id)layout fullScreenAppLayout:(id)appLayout floatingConfiguration:(int64_t)configuration environmentMode:(int64_t)mode
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v19.receiver = self;
  v19.super_class = SBActiveAppLayoutFloatingSwitcherModifier;
  v12 = [(SBSwitcherModifier *)&v19 init];
  if (v12)
  {
    v13 = objc_alloc_init(SBStackedFloatingSwitcherModifier);
    stackedModifier = v12->_stackedModifier;
    v12->_stackedModifier = v13;

    [(SBChainableModifier *)v12 addChildModifier:v12->_stackedModifier atLevel:0 key:0];
    v15 = [[_SBActiveAppFloorFloatingSwitcherModifier alloc] initWithActiveAppLayout:layoutCopy fullScreenAppLayout:appLayoutCopy floatingConfiguration:configuration environmentMode:mode];
    floorModifier = v12->_floorModifier;
    v12->_floorModifier = v15;

    [(SBChainableModifier *)v12 addChildModifier:v12->_floorModifier atLevel:1 key:0];
    v17 = objc_alloc_init(SBDefaultImplementationsSwitcherModifier);
    [(SBChainableModifier *)v12 addChildModifier:v17 atLevel:2 key:0];
  }

  return v12;
}

@end