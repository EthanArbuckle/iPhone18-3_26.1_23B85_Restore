@interface SBRotationSwitcherModifier
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (SBRotationSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 fromInterfaceOrientation:(int64_t)a5 toInterfaceOrientation:(int64_t)a6;
- (double)rotationAngleForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)transitionWillBegin;
@end

@implementation SBRotationSwitcherModifier

- (SBRotationSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 fromInterfaceOrientation:(int64_t)a5 toInterfaceOrientation:(int64_t)a6
{
  v12 = a4;
  v15.receiver = self;
  v15.super_class = SBRotationSwitcherModifier;
  v13 = [(SBTransitionSwitcherModifier *)&v15 initWithTransitionID:a3];
  if (v13)
  {
    if (!v12)
    {
      [SBRotationSwitcherModifier initWithTransitionID:a2 appLayout:v13 fromInterfaceOrientation:? toInterfaceOrientation:?];
    }

    objc_storeStrong(&v13->_appLayout, a4);
    v13->_fromInterfaceOrientation = a5;
    v13->_toInterfaceOrientation = a6;
  }

  return v13;
}

- (id)transitionWillBegin
{
  v7.receiver = self;
  v7.super_class = SBRotationSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionWillBegin];
  if ([(SBRotationSwitcherModifier *)self appLayoutRequiresLegacyRotationSupport:self->_appLayout])
  {
    v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:1];
    v5 = SBAppendSwitcherModifierResponse(v4, v3);

    v3 = v5;
  }

  return v3;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBRotationSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v6 animationAttributesForLayoutElement:a3];
  v4 = [v3 mutableCopy];

  [v4 setUpdateMode:1];

  return v4;
}

- (double)rotationAngleForIndex:(unint64_t)a3
{
  if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {

    SBFAngleForRotationFromInterfaceOrientationToInterfaceOrientation();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBRotationSwitcherModifier;
    [(SBRotationSwitcherModifier *)&v6 rotationAngleForIndex:a3];
  }

  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  if (self->_shouldNotUseAnchorPointToPinLayoutRolesToSpace)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBRotationSwitcherModifier;
  return [(SBRotationSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
}

- (void)initWithTransitionID:(uint64_t)a1 appLayout:(uint64_t)a2 fromInterfaceOrientation:toInterfaceOrientation:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRotationSwitcherModifier.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end