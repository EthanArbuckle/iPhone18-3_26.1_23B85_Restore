@interface SBExternalHomeGestureFloatingSwitcherModifier
- (CGRect)containerViewBounds;
- (SBExternalHomeGestureFloatingSwitcherModifier)initWithGestureID:(id)a3 initialFloatingConfiguration:(int64_t)a4 interfaceOrientation:(int64_t)a5;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToResignActive;
- (id)handleGestureEvent:(id)a3;
- (void)_updateForGestureDidBeginOrChangeWithEvent:(id)a3;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBExternalHomeGestureFloatingSwitcherModifier

- (SBExternalHomeGestureFloatingSwitcherModifier)initWithGestureID:(id)a3 initialFloatingConfiguration:(int64_t)a4 interfaceOrientation:(int64_t)a5
{
  v11.receiver = self;
  v11.super_class = SBExternalHomeGestureFloatingSwitcherModifier;
  v7 = [(SBGestureSwitcherModifier *)&v11 initWithGestureID:a3];
  v8 = v7;
  if (v7)
  {
    v7->_initialFloatingConfiguration = a4;
    v7->_interfaceOrientation = a5;
    v9 = SBFloatingConfigurationIsStashed(v7->_initialFloatingConfiguration) || v8->_initialFloatingConfiguration == 0;
    v8->_stashed = v9;
  }

  return v8;
}

- (void)didMoveToParentModifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBExternalHomeGestureFloatingSwitcherModifier;
  [(SBChainableModifier *)&v13 didMoveToParentModifier:?];
  if (a3)
  {
    initialFloatingConfiguration = self->_initialFloatingConfiguration;
    if (!SBFloatingConfigurationIsStashed(initialFloatingConfiguration))
    {
      if (SBFloatingConfigurationIsLeft(initialFloatingConfiguration))
      {
        initialFloatingConfiguration = 3;
      }

      else
      {
        initialFloatingConfiguration = 4;
      }
    }

    [(SBExternalHomeGestureFloatingSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:self->_interfaceOrientation floatingConfiguration:initialFloatingConfiguration];
    self->_stashedContainerViewBounds.origin.x = v6;
    self->_stashedContainerViewBounds.origin.y = v7;
    self->_stashedContainerViewBounds.size.width = v8;
    self->_stashedContainerViewBounds.size.height = v9;
    v10 = [(SBExternalHomeGestureFloatingSwitcherModifier *)self isRTLEnabled];
    v11 = 3;
    if (v10)
    {
      v11 = 4;
    }

    v12 = 1.0;
    if (initialFloatingConfiguration == v11)
    {
      v12 = -1.0;
    }

    self->_stashedContainerViewBounds.origin.x = self->_stashedContainerViewBounds.origin.x + v12;
  }
}

- (CGRect)containerViewBounds
{
  if (self->_stashed)
  {
    x = self->_stashedContainerViewBounds.origin.x;
    y = self->_stashedContainerViewBounds.origin.y;
    width = self->_stashedContainerViewBounds.size.width;
    height = self->_stashedContainerViewBounds.size.height;
  }

  else
  {
    v9 = v2;
    v10 = v3;
    v8.receiver = self;
    v8.super_class = SBExternalHomeGestureFloatingSwitcherModifier;
    [(SBExternalHomeGestureFloatingSwitcherModifier *)&v8 containerViewBounds];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBExternalHomeGestureFloatingSwitcherModifier;
  v3 = [(SBGestureSwitcherModifier *)&v6 animationAttributesForLayoutElement:a3];
  v4 = [v3 mutableCopy];

  [v4 setUpdateMode:3];

  return v4;
}

- (id)appLayoutsToResignActive
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self->_stashed)
  {
    v8 = &unk_283372488;
    v2 = MEMORY[0x277CBEB98];
    v3 = [(SBExternalHomeGestureFloatingSwitcherModifier *)self appLayouts];
    v4 = [v2 setWithArray:v3];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBExternalHomeGestureFloatingSwitcherModifier;
    v5 = [(SBExternalHomeGestureFloatingSwitcherModifier *)&v7 appLayoutsToResignActive];
  }

  return v5;
}

- (id)handleGestureEvent:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBExternalHomeGestureFloatingSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v10 handleGestureEvent:v5];
  v7 = [v5 phase];
  if ((v7 - 1) < 2)
  {
    [(SBExternalHomeGestureFloatingSwitcherModifier *)self _updateForGestureDidBeginOrChangeWithEvent:v5];
  }

  else if (v7 == 3)
  {
    [(SBChainableModifier *)self setState:1];
  }

  else if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SBExternalHomeGestureFloatingSwitcherModifier.m" lineNumber:119 description:@"Should not be getting PhasePossible"];
  }

  return v6;
}

- (void)_updateForGestureDidBeginOrChangeWithEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_stashed && [v4 phase] == 1 && objc_msgSend(v5, "type") != 3)
  {
    v6 = [[SBHomeGestureDockSwitcherModifier alloc] initWithDelegate:self startingEnvironmentMode:3 requireVerticalSwipeToTrackDock:1];
    dockModifier = self->_dockModifier;
    self->_dockModifier = v6;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v21 = 0;
  v22 = 0;
  v20 = &unk_21F9DA6A3;
  [v5 translationInContainerView];
  v21 = v8;
  v22 = v9;
  v10 = self->_dockModifier;
  if (v10)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__SBExternalHomeGestureFloatingSwitcherModifier__updateForGestureDidBeginOrChangeWithEvent___block_invoke;
    v14[3] = &unk_2783AEA70;
    v14[4] = self;
    v15 = v5;
    v16 = &v17;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v10 usingBlock:v14];
  }

  if (!self->_stashed)
  {
    v11 = self->_dockModifier;
    if (v11 && [(SBHomeGestureDockSwitcherModifier *)v11 wantsDockBehaviorAssertion])
    {
      if ([(SBHomeGestureDockSwitcherModifier *)self->_dockModifier isCurrentlyTrackingDock])
      {
        goto LABEL_14;
      }

      if (([(SBExternalHomeGestureFloatingSwitcherModifier *)self isFloatingDockFullyPresented]& 1) != 0)
      {
LABEL_13:
        self->_stashed = 1;
        goto LABEL_14;
      }
    }

    v12 = v18[5];
    [(SBExternalHomeGestureFloatingSwitcherModifier *)self floatingDockHeight];
    if (v12 < -v13)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  _Block_object_dispose(&v17, 8);
}

uint64_t __92__SBExternalHomeGestureFloatingSwitcherModifier__updateForGestureDidBeginOrChangeWithEvent___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 152) handleEvent:a1[5]];
  result = [*(a1[4] + 152) adjustedTranslationForTranslation:{*(*(a1[6] + 8) + 32), *(*(a1[6] + 8) + 40)}];
  v4 = *(a1[6] + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

@end