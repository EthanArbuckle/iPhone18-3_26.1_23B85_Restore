@interface SBSwitcherAnimationAttributes
- (id)_copyWithClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SBSwitcherAnimationAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBSwitcherAnimationAttributes *)self _copyWithClass:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBSwitcherAnimationAttributes *)self _copyWithClass:v4];
}

- (id)_copyWithClass:(Class)class
{
  v4 = objc_alloc_init(class);
  [v4 setUpdateMode:self->_updateMode];
  [v4 setLayoutUpdateMode:self->_layoutUpdateMode];
  [v4 setPositionUpdateMode:self->_positionUpdateMode];
  [v4 setScaleUpdateMode:self->_scaleUpdateMode];
  [v4 setOpacityUpdateMode:self->_opacityUpdateMode];
  [v4 setCornerRadiusUpdateMode:self->_cornerRadiusUpdateMode];
  [v4 setClippingUpdateMode:self->_clippingUpdateMode];
  [v4 setTitleAndIconOpacityUpdateMode:self->_titleAndIconOpacityUpdateMode];
  [v4 setMeshUpdateMode:self->_meshUpdateMode];
  [v4 setLayoutSettings:self->_layoutSettings];
  [v4 setPositionSettings:self->_positionSettings];
  [v4 setScaleSettings:self->_scaleSettings];
  [v4 setOpacitySettings:self->_opacitySettings];
  [v4 setCornerRadiusSettings:self->_cornerRadiusSettings];
  [v4 setClippingSettings:self->_clippingSettings];
  [v4 setMeshSettings:self->_meshSettings];
  [v4 setDropletPositionXSettings:self->_dropletPositionXSettings];
  [v4 setDropletPositionYSettings:self->_dropletPositionYSettings];
  return v4;
}

@end