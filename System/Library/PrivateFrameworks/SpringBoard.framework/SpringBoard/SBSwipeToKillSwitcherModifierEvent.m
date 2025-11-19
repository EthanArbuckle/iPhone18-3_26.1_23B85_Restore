@interface SBSwipeToKillSwitcherModifierEvent
- (CGPoint)translation;
- (SBSwipeToKillSwitcherModifierEvent)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 progress:(double)a5 translation:(CGPoint)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBSwipeToKillSwitcherModifierEvent

- (SBSwipeToKillSwitcherModifierEvent)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 progress:(double)a5 translation:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = SBSwipeToKillSwitcherModifierEvent;
  v13 = [(SBWindowingModifierActivity *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_layoutRole = a3;
    objc_storeStrong(&v13->_appLayout, a4);
    v14->_progress = a5;
    v14->_translation.x = x;
    v14->_translation.y = y;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SBSwipeToKillSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:a3];
  *(v4 + 5) = self->_layoutRole;
  v5 = [(SBAppLayout *)self->_appLayout copy];
  v6 = *(v4 + 6);
  *(v4 + 6) = v5;

  *(v4 + 7) = *&self->_progress;
  *(v4 + 72) = self->_translation;
  v4[32] = self->_dragging;
  *(v4 + 8) = *&self->_decelerationTargetProgress;
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBSwipeToKillSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v11 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendFloat:@"progress" withName:self->_progress];
  v6 = [v4 appendPoint:@"translation" withName:{self->_translation.x, self->_translation.y}];
  v7 = SBLayoutRoleDescription(self->_layoutRole);
  [v4 appendString:v7 withName:@"role"];

  v8 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v9 = [v4 appendObject:v8 withName:@"appLayout"];

  return v4;
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end