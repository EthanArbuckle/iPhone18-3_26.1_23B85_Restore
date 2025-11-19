@interface SBiPadOSWindowModeChangeTransitionModifier
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (SBiPadOSWindowModeChangeTransitionModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5;
- (unint64_t)maskedCornersForIndex:(unint64_t)a3;
@end

@implementation SBiPadOSWindowModeChangeTransitionModifier

- (SBiPadOSWindowModeChangeTransitionModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5
{
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = SBiPadOSWindowModeChangeTransitionModifier;
  v12 = [(SBTransitionSwitcherModifier *)&v14 initWithTransitionID:a3];
  if (v12)
  {
    if (v10)
    {
      if (v11)
      {
LABEL_4:
        objc_storeStrong(&v12->_fromAppLayout, a4);
        objc_storeStrong(&v12->_toAppLayout, a5);
        goto LABEL_5;
      }
    }

    else
    {
      [SBiPadOSWindowModeChangeTransitionModifier initWithTransitionID:a2 fromAppLayout:v12 toAppLayout:?];
      if (v11)
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

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([(SBAppLayout *)self->_fromAppLayout containsAnyItemFromAppLayout:v6]|| [(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:v6])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBiPadOSWindowModeChangeTransitionModifier;
    v7 = [(SBiPadOSWindowModeChangeTransitionModifier *)&v9 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  }

  return v7;
}

- (unint64_t)maskedCornersForIndex:(unint64_t)a3
{
  v5 = [(SBiPadOSWindowModeChangeTransitionModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v11.receiver = self;
  v11.super_class = SBiPadOSWindowModeChangeTransitionModifier;
  v7 = [(SBTransitionSwitcherModifier *)&v11 maskedCornersForIndex:a3];
  if ([(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:v6])
  {
    v8 = [(SBiPadOSWindowModeChangeTransitionModifier *)self windowManagementContext];
    if ([v8 isChamoisOrFlexibleWindowing])
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