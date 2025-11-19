@interface SBGestureSwitcherModifierEvent
- (CGPoint)averageTouchVelocityOverTimeDuration:(double)a3;
- (CGPoint)locationInContainerView;
- (CGPoint)translationInContainerView;
- (CGPoint)velocityInContainerView;
- (SBGestureSwitcherModifierEvent)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 gestureType:(int64_t)a5 phase:(unint64_t)a6 modifierFlags:(int64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBGestureSwitcherModifierEvent

- (SBGestureSwitcherModifierEvent)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 gestureType:(int64_t)a5 phase:(unint64_t)a6 modifierFlags:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = SBGestureSwitcherModifierEvent;
  v15 = [(SBWindowingModifierActivity *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_gestureID, a3);
    objc_storeStrong(&v16->_selectedAppLayout, a4);
    v16->_gestureType = a5;
    v16->_phase = a6;
    v16->_touchType = 0;
    v16->_modifierFlags = a7;
    v16->_mouseEvent = 0;
    v16->_pointerTouch = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SBGestureSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v10 copyWithZone:a3];
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

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBGestureSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v13 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(NSUUID *)self->_gestureID UUIDString];
  [v4 appendString:v5 withName:@"gestureID"];

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
  v10 = [(SBAppLayout *)self->_selectedAppLayout succinctDescription];
  v11 = [v4 appendObject:v10 withName:@"selectedAppLayout"];

  return v4;
}

- (CGPoint)averageTouchVelocityOverTimeDuration:(double)a3
{
  [(SBGestureRecognizerTouchHistoryProviding *)self->_touchHistoryProvider averageTouchVelocityOverTimeDuration:a3];
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