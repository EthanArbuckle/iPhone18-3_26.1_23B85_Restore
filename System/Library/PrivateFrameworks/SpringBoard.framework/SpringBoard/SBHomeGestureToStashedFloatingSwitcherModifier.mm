@interface SBHomeGestureToStashedFloatingSwitcherModifier
- (CGRect)containerViewBounds;
- (SBHomeGestureToStashedFloatingSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toFloatingConfiguration:(int64_t)configuration;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)_tongueScale;
- (unint64_t)slideOverTongueDirection;
@end

@implementation SBHomeGestureToStashedFloatingSwitcherModifier

- (SBHomeGestureToStashedFloatingSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toFloatingConfiguration:(int64_t)configuration
{
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = SBHomeGestureToStashedFloatingSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v13 initWithTransitionID:d];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fromAppLayout, layout);
    v11->_floatingConfiguration = configuration;
  }

  return v11;
}

- (CGRect)containerViewBounds
{
  v24.receiver = self;
  v24.super_class = SBHomeGestureToStashedFloatingSwitcherModifier;
  [(SBHomeGestureToStashedFloatingSwitcherModifier *)&v24 containerViewBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBHomeGestureToStashedFloatingSwitcherModifier *)self _tongueScale];
  v12 = v11;
  floatingConfiguration = self->_floatingConfiguration;
  isRTLEnabled = [(SBHomeGestureToStashedFloatingSwitcherModifier *)self isRTLEnabled];
  v15 = 3;
  if (isRTLEnabled)
  {
    v15 = 4;
  }

  if (floatingConfiguration == v15)
  {
    v4 = v8 * -0.5 + v8 * -0.5 * v12;
  }

  else
  {
    v16 = self->_floatingConfiguration;
    isRTLEnabled2 = [(SBHomeGestureToStashedFloatingSwitcherModifier *)self isRTLEnabled];
    v18 = 3;
    if (!isRTLEnabled2)
    {
      v18 = 4;
    }

    if (v16 == v18)
    {
      [(SBHomeGestureToStashedFloatingSwitcherModifier *)self switcherViewBounds];
      v4 = v19 - v8 * 0.5 + v8 * 0.5 * v12;
    }
  }

  v20 = v4;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (double)_tongueScale
{
  v4.receiver = self;
  v4.super_class = SBHomeGestureToStashedFloatingSwitcherModifier;
  [(SBHomeGestureToStashedFloatingSwitcherModifier *)&v4 containerViewBounds];
  return 180.0 / v2;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  medusaSettings = [(SBHomeGestureToStashedFloatingSwitcherModifier *)self medusaSettings];
  [medusaSettings cornerRadiusForFloatingApps];
  [(SBHomeGestureToStashedFloatingSwitcherModifier *)self _tongueScale];
  SBRectCornerRadiiForRadius();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.topRight = v16;
  result.bottomRight = v15;
  result.bottomLeft = v14;
  result.topLeft = v13;
  return result;
}

- (unint64_t)slideOverTongueDirection
{
  if (SBFloatingConfigurationIsLeft(self->_floatingConfiguration))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end