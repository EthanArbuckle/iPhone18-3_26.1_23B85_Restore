@interface SBFixedLayoutModeSwitcherModifier
- (SBFixedLayoutModeSwitcherModifier)initWithUpdateMode:(int64_t)mode;
- (id)animationAttributesForLayoutElement:(id)element;
@end

@implementation SBFixedLayoutModeSwitcherModifier

- (SBFixedLayoutModeSwitcherModifier)initWithUpdateMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = SBFixedLayoutModeSwitcherModifier;
  result = [(SBSwitcherModifier *)&v5 init];
  if (result)
  {
    result->_updateMode = mode;
  }

  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v7.receiver = self;
  v7.super_class = SBFixedLayoutModeSwitcherModifier;
  v4 = [(SBFixedLayoutModeSwitcherModifier *)&v7 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  [v5 setUpdateMode:self->_updateMode];
  [v5 setLayoutUpdateMode:self->_updateMode];
  [v5 setPositionUpdateMode:self->_updateMode];
  [v5 setScaleUpdateMode:self->_updateMode];
  [v5 setOpacityUpdateMode:self->_updateMode];
  [v5 setCornerRadiusUpdateMode:self->_updateMode];
  [v5 setClippingUpdateMode:self->_updateMode];

  return v5;
}

@end