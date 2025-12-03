@interface SBExitSlideOverPeekSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)index;
- (SBExitSlideOverPeekSwitcherModifier)initWithTransitionID:(id)d floatingAppLayout:(id)layout floatingConfiguration:(int64_t)configuration;
@end

@implementation SBExitSlideOverPeekSwitcherModifier

- (SBExitSlideOverPeekSwitcherModifier)initWithTransitionID:(id)d floatingAppLayout:(id)layout floatingConfiguration:(int64_t)configuration
{
  dCopy = d;
  layoutCopy = layout;
  if (!layoutCopy)
  {
    [SBExitSlideOverPeekSwitcherModifier initWithTransitionID:a2 floatingAppLayout:self floatingConfiguration:?];
  }

  v14.receiver = self;
  v14.super_class = SBExitSlideOverPeekSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v14 initWithTransitionID:dCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_floatingAppLayout, layout);
    v12->_floatingConfiguration = configuration;
  }

  return v12;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v23.receiver = self;
  v23.super_class = SBExitSlideOverPeekSwitcherModifier;
  [(SBExitSlideOverPeekSwitcherModifier *)&v23 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  appLayouts = [(SBExitSlideOverPeekSwitcherModifier *)self appLayouts];
  v14 = [appLayouts objectAtIndex:index];

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