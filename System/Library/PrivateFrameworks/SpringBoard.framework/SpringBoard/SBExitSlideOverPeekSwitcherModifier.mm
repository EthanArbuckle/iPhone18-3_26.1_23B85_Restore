@interface SBExitSlideOverPeekSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBExitSlideOverPeekSwitcherModifier)initWithTransitionID:(id)a3 floatingAppLayout:(id)a4 floatingConfiguration:(int64_t)a5;
@end

@implementation SBExitSlideOverPeekSwitcherModifier

- (SBExitSlideOverPeekSwitcherModifier)initWithTransitionID:(id)a3 floatingAppLayout:(id)a4 floatingConfiguration:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    [SBExitSlideOverPeekSwitcherModifier initWithTransitionID:a2 floatingAppLayout:self floatingConfiguration:?];
  }

  v14.receiver = self;
  v14.super_class = SBExitSlideOverPeekSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v14 initWithTransitionID:v9];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_floatingAppLayout, a4);
    v12->_floatingConfiguration = a5;
  }

  return v12;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v23.receiver = self;
  v23.super_class = SBExitSlideOverPeekSwitcherModifier;
  [(SBExitSlideOverPeekSwitcherModifier *)&v23 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBExitSlideOverPeekSwitcherModifier *)self appLayouts];
  v14 = [v13 objectAtIndex:a3];

  if ([v14 isEqual:self->_floatingAppLayout] && -[SBTransitionSwitcherModifier transitionPhase](self, "transitionPhase") >= 2)
  {
    [(SBExitSlideOverPeekSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:[(SBExitSlideOverPeekSwitcherModifier *)self switcherInterfaceOrientation] floatingConfiguration:self->_floatingConfiguration];
    v6 = v15;
    v8 = v16;
    v10 = v17;
    v12 = v18;
  }

  v19 = v6;
  v20 = v8;
  v21 = v10;
  v22 = v12;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)initWithTransitionID:(uint64_t)a1 floatingAppLayout:(uint64_t)a2 floatingConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBExitSlideOverPeekSwitcherModifier.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"floatingAppLayout"}];
}

@end