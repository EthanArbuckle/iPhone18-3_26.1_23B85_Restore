@interface SBActiveAppLayoutFloatingSwitcherModifier
- (SBActiveAppLayoutFloatingSwitcherModifier)initWithActiveAppLayout:(id)a3 fullScreenAppLayout:(id)a4 floatingConfiguration:(int64_t)a5 environmentMode:(int64_t)a6;
@end

@implementation SBActiveAppLayoutFloatingSwitcherModifier

- (SBActiveAppLayoutFloatingSwitcherModifier)initWithActiveAppLayout:(id)a3 fullScreenAppLayout:(id)a4 floatingConfiguration:(int64_t)a5 environmentMode:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v19.receiver = self;
  v19.super_class = SBActiveAppLayoutFloatingSwitcherModifier;
  v12 = [(SBSwitcherModifier *)&v19 init];
  if (v12)
  {
    v13 = objc_alloc_init(SBStackedFloatingSwitcherModifier);
    stackedModifier = v12->_stackedModifier;
    v12->_stackedModifier = v13;

    [(SBChainableModifier *)v12 addChildModifier:v12->_stackedModifier atLevel:0 key:0];
    v15 = [[_SBActiveAppFloorFloatingSwitcherModifier alloc] initWithActiveAppLayout:v10 fullScreenAppLayout:v11 floatingConfiguration:a5 environmentMode:a6];
    floorModifier = v12->_floorModifier;
    v12->_floorModifier = v15;

    [(SBChainableModifier *)v12 addChildModifier:v12->_floorModifier atLevel:1 key:0];
    v17 = objc_alloc_init(SBDefaultImplementationsSwitcherModifier);
    [(SBChainableModifier *)v12 addChildModifier:v17 atLevel:2 key:0];
  }

  return v12;
}

@end