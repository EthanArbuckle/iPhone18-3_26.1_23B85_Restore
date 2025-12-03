@interface SBRotationSwitcherModifier
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (SBRotationSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout fromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation;
- (double)rotationAngleForIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)transitionWillBegin;
@end

@implementation SBRotationSwitcherModifier

- (SBRotationSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout fromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation
{
  layoutCopy = layout;
  v15.receiver = self;
  v15.super_class = SBRotationSwitcherModifier;
  v13 = [(SBTransitionSwitcherModifier *)&v15 initWithTransitionID:d];
  if (v13)
  {
    if (!layoutCopy)
    {
      [SBRotationSwitcherModifier initWithTransitionID:a2 appLayout:v13 fromInterfaceOrientation:? toInterfaceOrientation:?];
    }

    objc_storeStrong(&v13->_appLayout, layout);
    v13->_fromInterfaceOrientation = orientation;
    v13->_toInterfaceOrientation = interfaceOrientation;
  }

  return v13;
}

- (id)transitionWillBegin
{
  v7.receiver = self;
  v7.super_class = SBRotationSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v7 transitionWillBegin];
  if ([(SBRotationSwitcherModifier *)self appLayoutRequiresLegacyRotationSupport:self->_appLayout])
  {
    v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:1];
    v5 = SBAppendSwitcherModifierResponse(v4, transitionWillBegin);

    transitionWillBegin = v5;
  }

  return transitionWillBegin;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v6.receiver = self;
  v6.super_class = SBRotationSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v6 animationAttributesForLayoutElement:element];
  v4 = [v3 mutableCopy];

  [v4 setUpdateMode:1];

  return v4;
}

- (double)rotationAngleForIndex:(unint64_t)index
{
  if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {

    SBFAngleForRotationFromInterfaceOrientationToInterfaceOrientation();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBRotationSwitcherModifier;
    [(SBRotationSwitcherModifier *)&v6 rotationAngleForIndex:index];
  }

  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  if (self->_shouldNotUseAnchorPointToPinLayoutRolesToSpace)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBRotationSwitcherModifier;
  return [(SBRotationSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
}

- (void)initWithTransitionID:(uint64_t)a1 appLayout:(uint64_t)a2 fromInterfaceOrientation:toInterfaceOrientation:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRotationSwitcherModifier.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end