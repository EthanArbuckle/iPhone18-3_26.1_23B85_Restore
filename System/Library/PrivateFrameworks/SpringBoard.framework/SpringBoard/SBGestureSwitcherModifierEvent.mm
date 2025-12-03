@interface SBGestureSwitcherModifierEvent
- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration;
- (CGPoint)locationInContainerView;
- (CGPoint)translationInContainerView;
- (CGPoint)velocityInContainerView;
- (SBGestureSwitcherModifierEvent)initWithGestureID:(id)d selectedAppLayout:(id)layout gestureType:(int64_t)type phase:(unint64_t)phase modifierFlags:(int64_t)flags;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBGestureSwitcherModifierEvent

- (SBGestureSwitcherModifierEvent)initWithGestureID:(id)d selectedAppLayout:(id)layout gestureType:(int64_t)type phase:(unint64_t)phase modifierFlags:(int64_t)flags
{
  dCopy = d;
  layoutCopy = layout;
  v18.receiver = self;
  v18.super_class = SBGestureSwitcherModifierEvent;
  v15 = [(SBWindowingModifierActivity *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_gestureID, d);
    objc_storeStrong(&v16->_selectedAppLayout, layout);
    v16->_gestureType = type;
    v16->_phase = phase;
    v16->_touchType = 0;
    v16->_modifierFlags = flags;
    v16->_mouseEvent = 0;
    v16->_pointerTouch = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SBGestureSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v10 copyWithZone:zone];
  v5 = [(NSUUID *)self->_gestureID copy];
  v6 = *(v4 + 5);
  *(v4 + 5) = v5;

  v7 = [(SBAppLayout *)self->_selectedAppLayout copy];
  v8 = *(v4 + 6);
  *(v4 + 6) = v7;

  *(v4 + 7) = self->_gestureType;
  *(v4 + 8) = self->_phase;
  *(v4 + 10) = self->_touchType;
  *(v4 + 9) = self->_modifierFlags;
  v4[33] = self->_mouseEvent;
  v4[32] = self->_pointerTouch;
  v4[34] = self->_canceled;
  *(v4 + 11) = *&self->_lastTouchTimestamp;
  *(v4 + 120) = self->_locationInContainerView;
  *(v4 + 136) = self->_translationInContainerView;
  *(v4 + 152) = self->_velocityInContainerView;
  *(v4 + 12) = *&self->_hysteresis;
  objc_storeStrong(v4 + 14, self->_touchHistoryProvider);
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v13.receiver = self;
  v13.super_class = SBGestureSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v13 descriptionBuilderWithMultilinePrefix:prefix];
  uUIDString = [(NSUUID *)self->_gestureID UUIDString];
  [v4 appendString:uUIDString withName:@"gestureID"];

  v6 = self->_phase - 1;
  if (v6 > 2)
  {
    v7 = @"Possible";
  }

  else
  {
    v7 = off_2783C0390[v6];
  }

  [v4 appendString:v7 withName:@"phase"];
  v8 = SBStringForFluidSwitcherGestureType(self->_gestureType);
  [v4 appendString:v8 withName:@"gestureType"];

  v9 = [v4 appendInteger:self->_modifierFlags withName:@"modifierFlags"];
  succinctDescription = [(SBAppLayout *)self->_selectedAppLayout succinctDescription];
  v11 = [v4 appendObject:succinctDescription withName:@"selectedAppLayout"];

  return v4;
}

- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration
{
  [(SBGestureRecognizerTouchHistoryProviding *)self->_touchHistoryProvider averageTouchVelocityOverTimeDuration:duration];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)locationInContainerView
{
  x = self->_locationInContainerView.x;
  y = self->_locationInContainerView.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)translationInContainerView
{
  x = self->_translationInContainerView.x;
  y = self->_translationInContainerView.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)velocityInContainerView
{
  x = self->_velocityInContainerView.x;
  y = self->_velocityInContainerView.y;
  result.y = y;
  result.x = x;
  return result;
}

@end