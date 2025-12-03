@interface SBiPadOSWindowModeChangeTransitionModifier
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (SBiPadOSWindowModeChangeTransitionModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout;
- (unint64_t)maskedCornersForIndex:(unint64_t)index;
@end

@implementation SBiPadOSWindowModeChangeTransitionModifier

- (SBiPadOSWindowModeChangeTransitionModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v14.receiver = self;
  v14.super_class = SBiPadOSWindowModeChangeTransitionModifier;
  v12 = [(SBTransitionSwitcherModifier *)&v14 initWithTransitionID:d];
  if (v12)
  {
    if (layoutCopy)
    {
      if (appLayoutCopy)
      {
LABEL_4:
        objc_storeStrong(&v12->_fromAppLayout, layout);
        objc_storeStrong(&v12->_toAppLayout, appLayout);
        goto LABEL_5;
      }
    }

    else
    {
      [SBiPadOSWindowModeChangeTransitionModifier initWithTransitionID:a2 fromAppLayout:v12 toAppLayout:?];
      if (appLayoutCopy)
      {
        goto LABEL_4;
      }
    }

    [SBiPadOSWindowModeChangeTransitionModifier initWithTransitionID:a2 fromAppLayout:v12 toAppLayout:?];
    goto LABEL_4;
  }

LABEL_5:

  return v12;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(SBAppLayout *)self->_fromAppLayout containsAnyItemFromAppLayout:layoutCopy]|| [(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:layoutCopy])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBiPadOSWindowModeChangeTransitionModifier;
    v7 = [(SBiPadOSWindowModeChangeTransitionModifier *)&v9 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  }

  return v7;
}

- (unint64_t)maskedCornersForIndex:(unint64_t)index
{
  appLayouts = [(SBiPadOSWindowModeChangeTransitionModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  v11.receiver = self;
  v11.super_class = SBiPadOSWindowModeChangeTransitionModifier;
  v7 = [(SBTransitionSwitcherModifier *)&v11 maskedCornersForIndex:index];
  if ([(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:v6])
  {
    windowManagementContext = [(SBiPadOSWindowModeChangeTransitionModifier *)self windowManagementContext];
    if ([windowManagementContext isChamoisOrFlexibleWindowing])
    {
      v9 = [(SBiPadOSWindowModeChangeTransitionModifier *)self appLayoutContainsAnUnoccludedMaximizedDisplayItem:v6];

      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBiPadOSWindowModeChangeTransitionModifier.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBiPadOSWindowModeChangeTransitionModifier.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end