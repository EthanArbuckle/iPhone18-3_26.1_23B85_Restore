@interface SBPeekSplitViewRoutingSwitcherModifier
+ (id)modifierForEvent:(id)a3;
- (BOOL)canPerformKeyboardShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4;
- (BOOL)isContainerStatusBarVisible;
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3;
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleSelectable:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isResizeGrabberVisibleForAppLayout:(id)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (CGRect)routingModifier:(id)a3 containerViewBoundsForModifier:(id)a4;
- (CGRect)routingModifier:(id)a3 switcherViewBoundsForModifier:(id)a4;
- (SBPeekSplitViewRoutingSwitcherModifier)initWithPeekConfiguration:(int64_t)a3 spaceConfiguration:(int64_t)a4 peekingAppLayout:(id)a5;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)homeScreenDimmingAlpha;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)_combinedResultingAppLayoutWithAppLayout:(id)a3;
- (id)_handleEvent:(id)a3;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutContainingAppLayout:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugPotentialChildModifiers;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)handleEvent:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)handleTapAppLayoutEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)homeScreenModifierForRoutingModifier:(id)a3;
- (id)keyboardSuppressionMode;
- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5;
- (id)routingModifier:(id)a3 animationAttributesModifierForLayoutElement:(id)a4;
- (id)routingModifier:(id)a3 event:(id)a4 forModifier:(id)a5;
- (id)routingModifier:(id)a3 filteredAppLayouts:(id)a4 forModifier:(id)a5;
- (id)routingModifier:(id)a3 filteredContinuousExposeIdentifiers:(id)a4 forModifier:(id)a5;
- (id)routingModifier:(id)a3 modifierForAppLayout:(id)a4;
- (id)topMostLayoutElements;
- (id)visibleHomeAffordanceLayoutElements;
- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)hiddenContainerStatusBarParts;
- (unint64_t)maskedCornersForIndex:(unint64_t)a3;
- (unint64_t)transactionCompletionOptions;
- (void)_temporarilyAllowUnconditionaryAppLayoutContainmentWithBlock:(id)a3;
@end

@implementation SBPeekSplitViewRoutingSwitcherModifier

- (SBPeekSplitViewRoutingSwitcherModifier)initWithPeekConfiguration:(int64_t)a3 spaceConfiguration:(int64_t)a4 peekingAppLayout:(id)a5
{
  v25[2] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v24.receiver = self;
  v24.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v11 = [(SBSwitcherModifier *)&v24 init];
  if (v11)
  {
    if (!SBPeekConfigurationIsValid(a3))
    {
      [SBPeekSplitViewRoutingSwitcherModifier initWithPeekConfiguration:a2 spaceConfiguration:v11 peekingAppLayout:?];
    }

    if (SBSpaceConfigurationIsValid(a4))
    {
      if (v10)
      {
LABEL_6:
        v11->_peekConfiguration = a3;
        v11->_spaceConfiguration = a4;
        objc_storeStrong(&v11->_peekingAppLayout, a5);
        v12 = +[SBAppSwitcherDomain rootSettings];
        switcherSettings = v11->_switcherSettings;
        v11->_switcherSettings = v12;

        v14 = objc_alloc_init(SBSplitAllDisplayItemsSwitcherModifier);
        [(SBChainableModifier *)v11 addChildModifier:v14 atLevel:1 key:0];
        v15 = objc_alloc_init(SBFullScreenFluidSwitcherRootSwitcherModifier);
        peekingModifier = v11->_peekingModifier;
        v11->_peekingModifier = &v15->super.super;

        v17 = objc_alloc_init(SBFullScreenFluidSwitcherRootSwitcherModifier);
        nonPeekingModifier = v11->_nonPeekingModifier;
        v11->_nonPeekingModifier = &v17->super.super;

        v19 = [SBRoutingSwitcherModifier alloc];
        v25[0] = v11->_peekingModifier;
        v25[1] = v11->_nonPeekingModifier;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
        v21 = [(SBRoutingSwitcherModifier *)v19 initWithModifiers:v20 delegate:v11];
        routingModifier = v11->_routingModifier;
        v11->_routingModifier = v21;

        [(SBChainableModifier *)v11 addChildModifier:v11->_routingModifier atLevel:2 key:0];
        goto LABEL_7;
      }
    }

    else
    {
      [SBPeekSplitViewRoutingSwitcherModifier initWithPeekConfiguration:a2 spaceConfiguration:v11 peekingAppLayout:?];
      if (v10)
      {
        goto LABEL_6;
      }
    }

    [SBPeekSplitViewRoutingSwitcherModifier initWithPeekConfiguration:a2 spaceConfiguration:v11 peekingAppLayout:?];
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  peekConfiguration = self->_peekConfiguration;
  spaceConfiguration = self->_spaceConfiguration;
  peekingAppLayout = self->_peekingAppLayout;

  return [v4 initWithPeekConfiguration:peekConfiguration spaceConfiguration:spaceConfiguration peekingAppLayout:peekingAppLayout];
}

- (id)debugPotentialChildModifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  nonPeekingModifier = self->_nonPeekingModifier;
  v5[0] = self->_peekingModifier;
  v5[1] = nonPeekingModifier;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

+ (id)modifierForEvent:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = SBSafeCast(v4, v3);

  if (v5 && [v5 isEnteringSplitViewPeekEvent] && (objc_msgSend(v5, "phase") == 1 || (objc_msgSend(v5, "isAnimated") & 1) == 0))
  {
    v7 = [SBPeekSplitViewRoutingSwitcherModifier alloc];
    v8 = [v5 toPeekConfiguration];
    v9 = [v5 toSpaceConfiguration];
    v10 = [v5 toAppLayout];
    v6 = [(SBPeekSplitViewRoutingSwitcherModifier *)v7 initWithPeekConfiguration:v8 spaceConfiguration:v9 peekingAppLayout:v10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)appLayoutContainingAppLayout:(id)a3
{
  v31[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v5 = [(SBPeekSplitViewRoutingSwitcherModifier *)&v27 appLayoutContainingAppLayout:v4];
  v6 = v5;
  if (!self->_uncondtionallyAllowAppLayoutContainment)
  {
    peekingAppLayout = self->_peekingAppLayout;
    v6 = v4;
    if (peekingAppLayout == v4)
    {
      v6 = v5;
      if (v5 == v4)
      {
        v6 = v5;
        if ((self->_peekState - 1) <= 1)
        {
          v8 = [(SBAppLayout *)peekingAppLayout itemForLayoutRole:1];
          v26 = [[SBDisplayItem alloc] initWithType:0 bundleIdentifier:@"SBPeekSplitViewRoutingSwitcherModifier-placeholder-A" uniqueIdentifier:&stru_283094718];
          peekConfiguration = self->_peekConfiguration;
          if (peekConfiguration == 2)
          {
            v10 = 1;
          }

          else
          {
            v10 = 2;
          }

          if (peekConfiguration == 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = 1;
          }

          v12 = v8;
          v13 = [(SBPeekSplitViewRoutingSwitcherModifier *)self layoutAttributesForDisplayItem:v8 inAppLayout:self->_peekingAppLayout];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = objc_alloc_init(SBDisplayItemLayoutAttributes);
          }

          v25 = v15;

          v24 = objc_alloc_init(SBDisplayItemLayoutAttributes);
          v23 = [SBAppLayout alloc];
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
          v30[0] = v16;
          v31[0] = v8;
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
          v30[1] = v17;
          v31[1] = v26;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
          v19 = [(SBAppLayout *)v23 initWithItemsForLayoutRoles:v18 configuration:SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(self->_spaceConfiguration) centerConfiguration:[(SBAppLayout *)v4 centerConfiguration] environment:[(SBAppLayout *)v4 environment] hidden:0 preferredDisplayOrdinal:[(SBPeekSplitViewRoutingSwitcherModifier *)self displayOrdinal]];

          v28[0] = v12;
          v28[1] = v26;
          v29[0] = v25;
          v29[1] = v24;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
          [(SBPeekSplitViewRoutingSwitcherModifier *)self updateLayoutAttributesMap:v20 forAppLayout:v19];

          v6 = v5;
        }
      }
    }
  }

  v21 = v6;

  return v6;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__SBPeekSplitViewRoutingSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
  v8[3] = &unk_2783A8CB8;
  v8[4] = self;
  v4 = [a3 bs_filter:v8];
  v7.receiver = self;
  v7.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v5 = [(SBPeekSplitViewRoutingSwitcherModifier *)&v7 adjustedAppLayoutsForAppLayouts:v4];

  return v5;
}

uint64_t __74__SBPeekSplitViewRoutingSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 itemForLayoutRole:1];
  v4 = [v2 displayItemSupportsMedusa:v3];

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBPeekSplitViewRoutingSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_peekingAppLayout && (self->_peekState - 1) <= 1)
  {
    [(SBPeekSplitViewRoutingSwitcherModifier *)self containerViewBounds];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBPeekSplitViewRoutingSwitcherModifier;
    [(SBPeekSplitViewRoutingSwitcherModifier *)&v19 frameForIndex:a3];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = v11;
  if (self->_peekingAppLayout == v11 && (self->_peekState - 1) <= 1)
  {
    v13 = [(SBAppLayout *)v11 itemForLayoutRole:a3];
    v14 = [(SBPeekSplitViewRoutingSwitcherModifier *)self appLayoutContainingAppLayout:v12];
    v41.receiver = self;
    v41.super_class = SBPeekSplitViewRoutingSwitcherModifier;
    -[SBPeekSplitViewRoutingSwitcherModifier frameForLayoutRole:inAppLayout:withBounds:](&v41, sel_frameForLayoutRole_inAppLayout_withBounds_, [v14 layoutRoleForItem:v13], v14, x, y, width, height);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    if ((self->_peekState - 1) > 1)
    {
      v30 = v15;
LABEL_13:

      goto LABEL_8;
    }

    v22 = [(SBPeekSplitViewRoutingSwitcherModifier *)self isRTLEnabled];
    peekConfiguration = self->_peekConfiguration;
    if (v22)
    {
      if (peekConfiguration != 3)
      {
LABEL_6:
        [(SBPeekSplitViewRoutingSwitcherModifier *)self containerViewBounds];
        v26 = v24 + v25;
        v27 = [(SBPeekSplitViewRoutingSwitcherModifier *)self switcherSettings];
        [v27 peekInsetWidth];
LABEL_12:
        v30 = v26 - v28;

        goto LABEL_13;
      }
    }

    else if (peekConfiguration != 2)
    {
      goto LABEL_6;
    }

    [(SBPeekSplitViewRoutingSwitcherModifier *)self containerViewBounds];
    v26 = v38;
    v27 = [(SBPeekSplitViewRoutingSwitcherModifier *)self switcherSettings];
    [v27 peekInsetWidth];
    v28 = v19 - v39;
    goto LABEL_12;
  }

  v40.receiver = self;
  v40.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  [(SBPeekSplitViewRoutingSwitcherModifier *)&v40 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
  v30 = v29;
  v17 = v31;
  v19 = v32;
  v21 = v33;
LABEL_8:

  v34 = v30;
  v35 = v17;
  v36 = v19;
  v37 = v21;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v5 = [(SBPeekSplitViewRoutingSwitcherModifier *)&v17 animationAttributesForLayoutElement:v4];
  if (*&self->_peekingAppLayout == __PAIR128__(3, v4) && [(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:?])
  {
    toAppLayout = self->_toAppLayout;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__SBPeekSplitViewRoutingSwitcherModifier_animationAttributesForLayoutElement___block_invoke;
    v16[3] = &unk_2783A8C90;
    v16[4] = self;
    v7 = [(SBAppLayout *)toAppLayout appLayoutWithItemsPassingTest:v16];
    if (v7)
    {
      v15.receiver = self;
      v15.super_class = SBPeekSplitViewRoutingSwitcherModifier;
      v8 = [(SBPeekSplitViewRoutingSwitcherModifier *)&v15 animationAttributesForLayoutElement:v7];
      v9 = [v8 positionSettings];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [v8 layoutSettings];
      }

      v12 = v11;

      v13 = [v5 mutableCopy];
      [v13 setOpacitySettings:v12];

      v5 = v13;
    }
  }

  return v5;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBPeekSplitViewRoutingSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_peekingAppLayout && (self->_peekState - 1) <= 1)
  {
    [(SBPeekSplitViewRoutingSwitcherModifier *)self splitViewInnerCornerRadius];
    SBRectCornerRadiiForRadius();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x4010000000;
    v23 = &unk_21F9DA6A3;
    v24 = 0u;
    v25 = 0u;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__SBPeekSplitViewRoutingSwitcherModifier_cornerRadiiForIndex___block_invoke;
    v19[3] = &unk_2783AA618;
    v19[5] = &v20;
    v19[6] = a3;
    v19[4] = self;
    [(SBPeekSplitViewRoutingSwitcherModifier *)self _temporarilyAllowUnconditionaryAppLayoutContainmentWithBlock:v19];
    v8 = v21[4];
    v10 = v21[5];
    v12 = v21[6];
    v14 = v21[7];
    _Block_object_dispose(&v20, 8);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.topRight = v18;
  result.bottomRight = v17;
  result.bottomLeft = v16;
  result.topLeft = v15;
  return result;
}

id __62__SBPeekSplitViewRoutingSwitcherModifier_cornerRadiiForIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v9.receiver = *(a1 + 32);
  v9.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  result = objc_msgSendSuper2(&v9, sel_cornerRadiiForIndex_, v2);
  v4 = *(*(a1 + 40) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5
{
  topRight = a5.topRight;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topLeft = a5.topLeft;
  v11 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x4010000000;
  v33 = &unk_21F9DA6A3;
  v34 = 0u;
  v35 = 0u;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__SBPeekSplitViewRoutingSwitcherModifier_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii___block_invoke;
  v21[3] = &unk_2783AA640;
  v24 = &v30;
  v25 = a3;
  v12 = v11;
  v26 = topLeft;
  v27 = bottomLeft;
  v28 = bottomRight;
  v29 = topRight;
  v22 = v12;
  v23 = self;
  [(SBPeekSplitViewRoutingSwitcherModifier *)self _temporarilyAllowUnconditionaryAppLayoutContainmentWithBlock:v21];
  v13 = v31[4];
  v14 = v31[5];
  v15 = v31[6];
  v16 = v31[7];

  _Block_object_dispose(&v30, 8);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  result.topRight = v20;
  result.bottomRight = v19;
  result.bottomLeft = v18;
  result.topLeft = v17;
  return result;
}

id __95__SBPeekSplitViewRoutingSwitcherModifier_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v10.receiver = *(a1 + 40);
  v10.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  result = objc_msgSendSuper2(&v10, sel_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii_, v2, v3, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  v5 = *(*(a1 + 48) + 8);
  v5[4] = v6;
  v5[5] = v7;
  v5[6] = v8;
  v5[7] = v9;
  return result;
}

- (unint64_t)maskedCornersForIndex:(unint64_t)a3
{
  v5 = [(SBPeekSplitViewRoutingSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_peekingAppLayout)
  {
    v7 = 15;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBPeekSplitViewRoutingSwitcherModifier;
    v7 = [(SBPeekSplitViewRoutingSwitcherModifier *)&v9 maskedCornersForIndex:a3];
  }

  return v7;
}

- (BOOL)isLayoutRoleSelectable:(int64_t)a3 inAppLayout:(id)a4
{
  v5 = self;
  v8.receiver = self;
  v8.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v6 = a4;
  LOBYTE(a3) = [(SBPeekSplitViewRoutingSwitcherModifier *)&v8 isLayoutRoleSelectable:a3 inAppLayout:v6];
  LOBYTE(v5) = [v6 isEqual:{v5->_peekingAppLayout, v8.receiver, v8.super_class}];

  return (v5 | a3) & 1;
}

- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3
{
  v5 = [(SBPeekSplitViewRoutingSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_peekingAppLayout)
  {
    peekState = self->_peekState;
    if (peekState)
    {
      v9 = peekState == 3;
    }

    else
    {
      v9 = 1;
    }

    v7 = v9;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBPeekSplitViewRoutingSwitcherModifier;
    v7 = [(SBPeekSplitViewRoutingSwitcherModifier *)&v11 isContentStatusBarVisibleForIndex:a3];
  }

  return v7;
}

- (id)keyboardSuppressionMode
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(SBPeekSplitViewRoutingSwitcherModifier *)self appLayouts];
  v4 = [v2 setWithArray:v3];
  v5 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v4];

  [v5 setApplyAssertionEvenIfAppIsHostingTheKeyboard:1];

  return v5;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(SBPeekSplitViewRoutingSwitcherModifier *)self appLayouts];
  v7 = [v6 objectAtIndex:a4];

  v8 = 0.0;
  if (v7 == self->_peekingAppLayout)
  {
    if ((self->_peekState - 1) >= 2)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }
  }

  return v8;
}

- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  if (self->_peekingAppLayout == a4)
  {
    return 4;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  return [(SBPeekSplitViewRoutingSwitcherModifier *)&v7 shadowStyleForLayoutRole:a3 inAppLayout:?];
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v6 = a4;
  v7 = [(SBPeekSplitViewRoutingSwitcherModifier *)&v10 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  v8 = [(SBPeekSplitViewRoutingSwitcherModifier *)self _isAppLayoutBeingResized:v6, v10.receiver, v10.super_class];

  if (v8)
  {
    v7 |= !self->_isRotating;
  }

  return v7 & 1;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  LOBYTE(v7) = [(SBPeekSplitViewRoutingSwitcherModifier *)&v9 isLayoutRoleBlurred:a3 inAppLayout:v6];
  if ([(SBPeekSplitViewRoutingSwitcherModifier *)self _isAppLayoutBeingResized:v6]&& !self->_isRotating)
  {
    v7 = [(SBPeekSplitViewRoutingSwitcherModifier *)self isLayoutRoleContentReady:a3 inAppLayout:v6]^ 1;
  }

  return v7;
}

- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v13.receiver = self;
  v13.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v6 = a4;
  [(SBPeekSplitViewRoutingSwitcherModifier *)&v13 blurDelayForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  LODWORD(a3) = [(SBPeekSplitViewRoutingSwitcherModifier *)self isLayoutRoleBlurred:a3 inAppLayout:v6, v13.receiver, v13.super_class];

  if (a3)
  {
    v9 = [(SBPeekSplitViewRoutingSwitcherModifier *)self switcherSettings];
    v10 = [v9 animationSettings];
    [v10 resizeBlurDelay];
    v8 = v11;
  }

  return v8;
}

- (BOOL)isContainerStatusBarVisible
{
  if (self->_peekState == 1)
  {
    return [(SBSwitcherModifier *)self->_nonPeekingModifier isContainerStatusBarVisible];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hiddenContainerStatusBarParts
{
  peekConfiguration = self->_peekConfiguration;
  if (peekConfiguration == 3)
  {
    return 8;
  }

  else
  {
    return 2 * (peekConfiguration == 2);
  }
}

- (id)visibleHomeAffordanceLayoutElements
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v3 = [(SBPeekSplitViewRoutingSwitcherModifier *)&v16 visibleHomeAffordanceLayoutElements];
  v4 = [v3 mutableCopy];

  splitViewAppLayout = self->_splitViewAppLayout;
  if (splitViewAppLayout)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(SBAppLayout *)splitViewAppLayout leafAppLayouts];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v4 removeObject:*(*(&v12 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }

    [v4 removeObject:self->_splitViewAppLayout];
  }

  if (self->_peekingAppLayout)
  {
    [v4 removeObject:?];
  }

  return v4;
}

- (BOOL)isResizeGrabberVisibleForAppLayout:(id)a3
{
  if (self->_peekState != 3)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  return [(SBPeekSplitViewRoutingSwitcherModifier *)&v6 isResizeGrabberVisibleForAppLayout:a3];
}

- (double)homeScreenDimmingAlpha
{
  result = 1.0;
  if (self->_peekState != 3)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = SBPeekSplitViewRoutingSwitcherModifier;
    [(SBPeekSplitViewRoutingSwitcherModifier *)&v5 homeScreenDimmingAlpha];
  }

  return result;
}

- (BOOL)canPerformKeyboardShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v7 = [SBPeekSplitViewRoutingSwitcherModifier canPerformKeyboardShortcutAction:sel_canPerformKeyboardShortcutAction_forBundleIdentifier_ forBundleIdentifier:?];
  if (a3 <= 0x12 && ((1 << a3) & 0x46808) != 0 && v7)
  {
    if (a4)
    {
      LOBYTE(v7) = !SBPeekConfigurationIsValid(self->_peekConfiguration);
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v3 = [(SBPeekSplitViewRoutingSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [v3 sb_arrayByInsertingOrMovingObject:self->_peekingAppLayout toIndex:0];

  return v4;
}

- (unint64_t)transactionCompletionOptions
{
  if ([(SBPeekSplitViewRoutingSwitcherModifier *)self isReduceMotionEnabled])
  {
    return 6;
  }

  else
  {
    return 2;
  }
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBPeekSplitViewRoutingSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = v6 != self->_peekingAppLayout || (self->_peekState - 1) >= 2;
  return v7;
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  if (![v4 isTransitionEvent])
  {
    v12 = 0;
    goto LABEL_44;
  }

  v5 = v4;
  v6 = [v5 isEnteringSplitViewPeekEvent];
  v7 = [v5 isExitingSplitViewPeekEvent];
  v8 = [v5 fromEnvironmentMode];
  v9 = [v5 phase];
  if (v6 && v9 == 1)
  {
    if (v8 == 1)
    {
LABEL_5:
      v10 = 0;
      peekState = 4;
      goto LABEL_33;
    }

    v17 = [v5 fromAppLayout];
    v18 = [v17 itemForLayoutRole:2];

    if (v18)
    {
      v10 = [v5 fromAppLayout];
LABEL_21:
      peekState = 3;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v9 > 1)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    goto LABEL_11;
  }

  if (v9 == 1)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    v15 = [v5 toAppLayout];
    v16 = [v15 itemForLayoutRole:2];

    if (v16)
    {
      v10 = [v5 toAppLayout];
      goto LABEL_18;
    }

LABEL_11:
    v10 = 0;
LABEL_18:
    peekState = 1;
    goto LABEL_33;
  }

  if (v9 > 1)
  {
    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

  if (v19 != 1)
  {
    goto LABEL_29;
  }

  v20 = [v5 toAppLayout];
  v21 = [v20 itemForLayoutRole:2];

  v22 = [v5 toAppLayout];
  v10 = v22;
  if (v21)
  {
    goto LABEL_21;
  }

  v23 = [(SBAppLayout *)v22 itemForLayoutRole:1];

  if (!v23)
  {
    goto LABEL_5;
  }

  v24 = [v5 toAppLayout];
  v25 = [v24 itemForLayoutRole:2];

  if (v25)
  {
LABEL_29:
    if ([v5 toEnvironmentMode] == 2)
    {
      v10 = 0;
      peekState = 2;
    }

    else
    {
      peekState = self->_peekState;
      v10 = self->_splitViewAppLayout;
    }

    goto LABEL_33;
  }

LABEL_31:
  peekState = 0;
  v10 = 0;
LABEL_33:
  if (peekState == self->_peekState && self->_splitViewAppLayout == v10 && (toAppLayout = self->_toAppLayout, [v5 toAppLayout], v27 = objc_claimAutoreleasedReturnValue(), v27, toAppLayout == v27))
  {
    v12 = 0;
  }

  else
  {
    v12 = [[SBInvalidateSnapshotCacheSwitcherEventResponse alloc] initWithDisplayItems:0];
  }

  if (self->_splitViewAppLayout != v10)
  {
    v28 = [(SBChainableModifier *)self childModifierByKey:@"SplitZoomingItemModifierKey"];
    if (v28)
    {
      [(SBChainableModifier *)self removeChildModifier:v28];
    }

    objc_storeStrong(&self->_splitViewAppLayout, v10);
    splitViewAppLayout = self->_splitViewAppLayout;
    if (splitViewAppLayout)
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __54__SBPeekSplitViewRoutingSwitcherModifier_handleEvent___block_invoke;
      v42[3] = &unk_2783A8C90;
      v42[4] = self;
      v30 = [(SBAppLayout *)splitViewAppLayout appLayoutWithItemsPassingTest:v42];
      [v30 allItems];
      v31 = v10;
      v33 = v32 = peekState;
      v40 = [v33 firstObject];

      peekState = v32;
      v10 = v31;

      v34 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:v40];
      [(SBChainableModifier *)self addChildModifier:v34 atLevel:0 key:@"SplitZoomingItemModifierKey"];
    }
  }

  self->_peekState = peekState;
  v35 = [v5 toAppLayout];
  v36 = self->_toAppLayout;
  self->_toAppLayout = v35;

LABEL_44:
  v41.receiver = self;
  v41.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v37 = [(SBChainableModifier *)&v41 handleEvent:v4];
  v38 = SBAppendSwitcherModifierResponse(v12, v37);

  return v38;
}

- (id)_handleEvent:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v25 _handleEvent:v4];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, v4);
  v8 = v7;
  if (v7 && [v7 isExitingSplitViewPeekEvent])
  {
    if ([v8 isAnimated] && objc_msgSend(v8, "phase") == 1)
    {
      v9 = [SBTransitionSwitcherModifier alloc];
      v10 = [v8 transitionID];
      v11 = [(SBTransitionSwitcherModifier *)v9 initWithTransitionID:v10];
      exitingTransitionTrackingModifier = self->_exitingTransitionTrackingModifier;
      self->_exitingTransitionTrackingModifier = v11;
    }

    else if (([v8 isAnimated] & 1) == 0)
    {
      [(SBChainableModifier *)self setState:1];
    }
  }

  v13 = self->_exitingTransitionTrackingModifier;
  if (v13)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__SBPeekSplitViewRoutingSwitcherModifier__handleEvent___block_invoke;
    v18[3] = &unk_2783AEA70;
    v18[4] = self;
    v19 = v4;
    v20 = &v21;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v13 usingBlock:v18];
    [(SBChainableModifier *)self->_exitingTransitionTrackingModifier setState:v22[3]];
    [(SBChainableModifier *)self setState:v22[3]];

    _Block_object_dispose(&v21, 8);
  }

  if ([(SBChainableModifier *)self state]== 1)
  {
    v14 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v15 = SBAppendSwitcherModifierResponse(v14, v5);

    v16 = [[SBInvalidateSnapshotCacheSwitcherEventResponse alloc] initWithDisplayItems:0];
    v5 = SBAppendSwitcherModifierResponse(v16, v15);
  }

  return v5;
}

uint64_t __55__SBPeekSplitViewRoutingSwitcherModifier__handleEvent___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 192) handleEvent:a1[5]];
  result = [*(a1[4] + 192) state];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v15 handleTransitionEvent:v4];
  v6 = [v4 isEnteringSplitViewPeekEvent];
  v7 = [v4 isExitingSplitViewPeekEvent];
  v8 = [v4 phase];
  if (v6 && (v8 == 1 || ([v4 isAnimated] & 1) == 0))
  {
    v9 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v10 = SBAppendSwitcherModifierResponse(v9, v5);

    v5 = v10;
  }

  if (v7 && self->_peekState == 3 && [v4 phase] == 3 && objc_msgSend(v4, "isAnimated"))
  {
    v11 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:16 updateMode:3];
    v12 = SBAppendSwitcherModifierResponse(v11, v5);

    v5 = v12;
  }

  if ([v4 phase] == 3 || !objc_msgSend(v4, "isAnimated"))
  {
    self->_isRotating = 0;
  }

  else
  {
    v13 = [v4 fromInterfaceOrientation];
    self->_isRotating = v13 != [v4 toInterfaceOrientation];
  }

  self->_spaceConfiguration = [v4 toSpaceConfiguration];

  return v5;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:a3];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)handleTapAppLayoutEvent:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleTapAppLayoutEvent:v4];
  v6 = [v4 appLayout];
  v7 = [v6 isEqual:self->_peekingAppLayout];

  if (v7)
  {
    v8 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:v4];
    [v8 setPeekConfiguration:1];
    [v8 setRetainsSiri:{-[SBPeekSplitViewRoutingSwitcherModifier isSystemAssistantExperiencePersistentSiriEnabled](self, "isSystemAssistantExperiencePersistentSiriEnabled")}];
    v9 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v8 gestureInitiated:0];
    v10 = SBAppendSwitcherModifierResponse(v9, v5);

    v5 = v10;
  }

  return v5;
}

- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v49.receiver = self;
  v49.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v41 = v8;
  v11 = [(SBChainableModifier *)&v49 responseForProposedChildResponse:v8 childModifier:v9 event:v10];
  v12 = objc_opt_class();
  v13 = SBSafeCast(v12, v10);
  v42 = v13;
  if (v13)
  {
    v14 = v13;
    v15 = [v11 responseByTransformingResponseWithTransformer:&__block_literal_global_92];

    v16 = [v14 appLayout];
    v17 = [v16 itemForLayoutRole:{objc_msgSend(v14, "layoutRole")}];
    v18 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    [(SBSwitcherTransitionRequest *)v18 setPeekConfiguration:1];
    v19 = [(SBPeekSplitViewRoutingSwitcherModifier *)self _combinedResultingAppLayoutWithAppLayout:v16];
    [(SBSwitcherTransitionRequest *)v18 setAppLayout:v19];

    [(SBSwitcherTransitionRequest *)v18 setActivatingDisplayItem:v17];
    [(SBSwitcherTransitionRequest *)v18 setRetainsSiri:[(SBPeekSplitViewRoutingSwitcherModifier *)self isSystemAssistantExperiencePersistentSiriEnabled]];
    v20 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v18 gestureInitiated:0];
    v11 = SBAppendSwitcherModifierResponse(v20, v15);
  }

  v21 = objc_opt_class();
  v39 = SBSafeCast(v21, v10);
  if (v39)
  {
    v22 = [v11 responseByTransformingResponseWithTransformer:{&__block_literal_global_101_0, v39}];

    v23 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    [(SBSwitcherTransitionRequest *)v23 setUnlockedEnvironmentMode:3];
    [(SBSwitcherTransitionRequest *)v23 setPeekConfiguration:self->_peekConfiguration];
    v24 = [(SBAppLayout *)self->_peekingAppLayout appLayoutByModifyingConfiguration:SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(self->_spaceConfiguration)];
    [(SBSwitcherTransitionRequest *)v23 setAppLayout:v24];

    v25 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v23 gestureInitiated:0];
    v26 = SBAppendSwitcherModifierResponse(v25, v22);

    v27 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v11 = SBAppendSwitcherModifierResponse(v27, v26);
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __95__SBPeekSplitViewRoutingSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke_3;
  v44[3] = &unk_2783B1380;
  v44[4] = self;
  v44[5] = &v45;
  v28 = [v11 responseByTransformingResponseWithTransformer:{v44, v39}];
  if (*(v46 + 24) == 1)
  {
    v29 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    [(SBSwitcherTransitionRequest *)v29 setUnlockedEnvironmentMode:3];
    [(SBSwitcherTransitionRequest *)v29 setPeekConfiguration:self->_peekConfiguration];
    v30 = [(SBAppLayout *)self->_peekingAppLayout appLayoutByModifyingConfiguration:SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(self->_spaceConfiguration)];
    [(SBSwitcherTransitionRequest *)v29 setAppLayout:v30];

    v31 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v29 gestureInitiated:1];
    v32 = SBAppendSwitcherModifierResponse(v31, v11);

    v33 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v11 = SBAppendSwitcherModifierResponse(v33, v32);
  }

  v34 = objc_opt_class();
  v35 = SBSafeCast(v34, v10);
  v36 = v35;
  if (v35 && [v35 gestureType] == 1 && objc_msgSend(v36, "phase") == 3)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __95__SBPeekSplitViewRoutingSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke_4;
    v43[3] = &unk_2783AF6C8;
    v43[4] = self;
    v37 = [v11 responseByTransformingResponseWithTransformer:v43];

    v11 = v37;
  }

  _Block_object_dispose(&v45, 8);

  return v11;
}

id __95__SBPeekSplitViewRoutingSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 1)
  {

    v2 = 0;
  }

  return v2;
}

id __95__SBPeekSplitViewRoutingSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 1)
  {

    v2 = 0;
  }

  return v2;
}

id __95__SBPeekSplitViewRoutingSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 1 && *(*(a1 + 32) + 184) == 2)
  {
    v4 = [v3 transitionRequest];
    v5 = [v4 appLayout];
    v6 = [v5 type];

    if (v6 == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;

      v7 = 0;
      goto LABEL_7;
    }
  }

  v7 = v3;
LABEL_7:

  return v7;
}

SBPerformTransitionSwitcherEventResponse *__95__SBPeekSplitViewRoutingSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = SBSafeCast(v4, v3);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 transitionRequest];
    if ([v7 unlockedEnvironmentMode] == 2)
    {
      v8 = [v7 mutableCopy];
      v9 = v8;
      v10 = *(*(a1 + 32) + 160);
    }

    else
    {
      v11 = [v7 appLayout];

      if (v11)
      {
        v12 = [v7 appLayout];
        if (!v12)
        {
          goto LABEL_10;
        }

        v13 = v12;
        v14 = [v7 appLayout];
        v15 = +[SBAppLayout homeScreenAppLayout];

        if (v14 == v15)
        {
          goto LABEL_10;
        }

        v9 = [v7 mutableCopy];
        v16 = *(a1 + 32);
        v17 = [v7 appLayout];
        v18 = [v16 _combinedResultingAppLayoutWithAppLayout:v17];
        [v9 setAppLayout:v18];

        v8 = v9;
        v10 = 1;
      }

      else
      {
        v9 = [v7 mutableCopy];
        v19 = [*(*(a1 + 32) + 176) appLayoutByModifyingConfiguration:SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(*(*(a1 + 32) + 168))];
        [v9 setAppLayout:v19];

        v10 = *(*(a1 + 32) + 160);
        v8 = v9;
      }
    }

    [v8 setPeekConfiguration:v10];
    v20 = -[SBPerformTransitionSwitcherEventResponse initWithTransitionRequest:gestureInitiated:]([SBPerformTransitionSwitcherEventResponse alloc], "initWithTransitionRequest:gestureInitiated:", v9, [v6 isGestureInitiated]);

    v3 = v20;
LABEL_10:
  }

  return v3;
}

- (id)routingModifier:(id)a3 event:(id)a4 forModifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v7;
  v10 = objc_opt_class();
  v11 = SBSafeCast(v10, v9);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 copy];
    v14 = [(SBAppLayout *)self->_peekingAppLayout itemForLayoutRole:1];
    if (self->_peekingModifier == v8)
    {
      v23 = [v12 fromAppLayout];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __76__SBPeekSplitViewRoutingSwitcherModifier_routingModifier_event_forModifier___block_invoke;
      v44[3] = &unk_2783A8C90;
      v36 = &v45;
      v37 = v14;
      v24 = v14;
      v45 = v24;
      v25 = [v23 appLayoutWithItemsPassingTest:v44];
      [v13 setFromAppLayout:v25];

      v18 = [v12 toAppLayout];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __76__SBPeekSplitViewRoutingSwitcherModifier_routingModifier_event_forModifier___block_invoke_2;
      v42[3] = &unk_2783A8C90;
      v19 = &v43;
      v43 = v24;
      v20 = v42;
    }

    else
    {
      if (self->_nonPeekingModifier != v8)
      {
LABEL_11:
        if ([v12 fromEnvironmentMode] == 3 && (objc_msgSend(v13, "fromAppLayout"), v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
        {
          v29 = 1;
        }

        else
        {
          if ([v12 fromEnvironmentMode] != 1 || (objc_msgSend(v13, "fromAppLayout"), v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
          {
LABEL_21:
            if ([v12 toEnvironmentMode] == 3 && (objc_msgSend(v13, "toAppLayout"), v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
            {
              v32 = 1;
            }

            else
            {
              if ([v12 toEnvironmentMode] != 1)
              {
                goto LABEL_28;
              }

              v31 = [v13 toAppLayout];

              if (!v31)
              {
                goto LABEL_28;
              }

              v32 = 3;
            }

            [v13 setToEnvironmentMode:v32];
LABEL_28:
            if (self->_peekingModifier == v8 && [v12 fromEnvironmentMode] == 2)
            {
              [v13 setFromEnvironmentMode:3];
            }

            if (self->_peekingModifier == v8 && [v12 toEnvironmentMode] == 2)
            {
              [v13 setToEnvironmentMode:3];
            }

            if (self->_peekingModifier == v8)
            {
              [v13 setFromWindowPickerRole:0];
              [v13 setToWindowPickerRole:0];
            }

            goto LABEL_45;
          }

          v29 = 3;
        }

        [v13 setFromEnvironmentMode:v29];
        goto LABEL_21;
      }

      v15 = [v12 fromAppLayout];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __76__SBPeekSplitViewRoutingSwitcherModifier_routingModifier_event_forModifier___block_invoke_3;
      v40[3] = &unk_2783A8C90;
      v36 = &v41;
      v37 = v14;
      v16 = v14;
      v41 = v16;
      v17 = [v15 appLayoutWithItemsPassingTest:v40];
      [v13 setFromAppLayout:v17];

      v18 = [v12 toAppLayout];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __76__SBPeekSplitViewRoutingSwitcherModifier_routingModifier_event_forModifier___block_invoke_4;
      v38[3] = &unk_2783A8C90;
      v19 = &v39;
      v39 = v16;
      v20 = v38;
    }

    v26 = [v18 appLayoutWithItemsPassingTest:v20];
    [v13 setToAppLayout:v26];

    v14 = v37;
    goto LABEL_11;
  }

  if ([v9 type] == 17)
  {
    v21 = [v9 appLayout];
    v22 = v21;
    v13 = v9;
    if (!v21)
    {
      goto LABEL_44;
    }

    v13 = v9;
    if (![v21 isEqual:self->_peekingAppLayout])
    {
      goto LABEL_44;
    }

    goto LABEL_8;
  }

  if ([v9 type] != 16)
  {
    if ([v9 type] == 2 || objc_msgSend(v9, "type") == 5 || objc_msgSend(v9, "type") == 3)
    {
      v33 = objc_opt_class();
      v34 = SBSafeCast(v33, v9);
      v22 = v34;
      v13 = v9;
      if (!v34)
      {
        goto LABEL_44;
      }

      if ([v34 gestureType] != 1)
      {
        v13 = v9;
        if ([v22 gestureType] != 2)
        {
          goto LABEL_44;
        }
      }

      v13 = v9;
      if (self->_peekingModifier != v8)
      {
        goto LABEL_44;
      }

LABEL_8:

      v13 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v13 = v9;
    if ([v9 type] != 14)
    {
      goto LABEL_45;
    }
  }

  v13 = v9;
  if (self->_peekingModifier == v8)
  {

    v13 = 0;
  }

LABEL_45:

  return v13;
}

- (id)routingModifier:(id)a3 filteredAppLayouts:(id)a4 forModifier:(id)a5
{
  peekingAppLayout = self->_peekingAppLayout;
  v8 = a5;
  v9 = a4;
  v10 = [(SBAppLayout *)peekingAppLayout itemForLayoutRole:1];
  peekingModifier = self->_peekingModifier;

  if (peekingModifier == v8)
  {
    v12 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v13 = __89__SBPeekSplitViewRoutingSwitcherModifier_routingModifier_filteredAppLayouts_forModifier___block_invoke;
  }

  else
  {
    v12 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v13 = __89__SBPeekSplitViewRoutingSwitcherModifier_routingModifier_filteredAppLayouts_forModifier___block_invoke_2;
  }

  v12[2] = v13;
  v12[3] = &unk_2783A8CB8;
  v14 = v10;
  v12[4] = v14;
  v15 = [v9 bs_filter:v12];

  return v15;
}

- (id)routingModifier:(id)a3 filteredContinuousExposeIdentifiers:(id)a4 forModifier:(id)a5
{
  peekingAppLayout = self->_peekingAppLayout;
  v8 = a5;
  v9 = a4;
  v10 = [(SBAppLayout *)peekingAppLayout continuousExposeIdentifier];
  peekingModifier = self->_peekingModifier;

  if (peekingModifier == v8)
  {
    v12 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v13 = __106__SBPeekSplitViewRoutingSwitcherModifier_routingModifier_filteredContinuousExposeIdentifiers_forModifier___block_invoke;
  }

  else
  {
    v12 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v13 = __106__SBPeekSplitViewRoutingSwitcherModifier_routingModifier_filteredContinuousExposeIdentifiers_forModifier___block_invoke_2;
  }

  v12[2] = v13;
  v12[3] = &unk_2783A8B78;
  v14 = v10;
  v12[4] = v14;
  v15 = [v9 bs_filter:v12];

  return v15;
}

- (id)routingModifier:(id)a3 modifierForAppLayout:(id)a4
{
  peekingAppLayout = self->_peekingAppLayout;
  v6 = a4;
  v7 = [(SBAppLayout *)peekingAppLayout itemForLayoutRole:1];
  v8 = [v6 containsItem:v7];

  v9 = &OBJC_IVAR___SBPeekSplitViewRoutingSwitcherModifier__nonPeekingModifier;
  if (v8)
  {
    v9 = &OBJC_IVAR___SBPeekSplitViewRoutingSwitcherModifier__peekingModifier;
  }

  v10 = *(&self->super.super.super.super.isa + *v9);
  v11 = v10;

  return v10;
}

- (CGRect)routingModifier:(id)a3 containerViewBoundsForModifier:(id)a4
{
  v51[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_peekingModifier == v7)
  {
    v47.receiver = self;
    v47.super_class = SBPeekSplitViewRoutingSwitcherModifier;
    [(SBPeekSplitViewRoutingSwitcherModifier *)&v47 containerViewBounds];
  }

  else
  {
    if ([(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:self->_peekingAppLayout])
    {
      peekState = self->_peekState;
      if (peekState == 2 || peekState == 1 && !self->_splitViewAppLayout)
      {
        v40 = [[SBDisplayItem alloc] initWithType:0 bundleIdentifier:@"SBPeekSplitViewRoutingSwitcherModifier-placeholder-B" uniqueIdentifier:&stru_283094718];
        v41 = [(SBAppLayout *)self->_peekingAppLayout itemForLayoutRole:1];
        v32 = [SBAppLayout alloc];
        v33 = [MEMORY[0x277CCABB0] numberWithInteger:1];
        v50[0] = v33;
        v51[0] = v41;
        v34 = [MEMORY[0x277CCABB0] numberWithInteger:2];
        v50[1] = v34;
        v51[1] = v40;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
        v19 = [(SBAppLayout *)v32 initWithItemsForLayoutRoles:v35 configuration:3 environment:[(SBAppLayout *)self->_peekingAppLayout environment] preferredDisplayOrdinal:[(SBPeekSplitViewRoutingSwitcherModifier *)self displayOrdinal]];

        v46.receiver = self;
        v46.super_class = SBPeekSplitViewRoutingSwitcherModifier;
        [(SBPeekSplitViewRoutingSwitcherModifier *)&v46 containerViewBounds];
        v45.receiver = self;
        v45.super_class = SBPeekSplitViewRoutingSwitcherModifier;
        [(SBPeekSplitViewRoutingSwitcherModifier *)&v45 frameForLayoutRole:1 inAppLayout:v19 withBounds:?];
LABEL_20:
        v28 = v20;
        v29 = v21;
        v30 = v22;
        v31 = v23;

        goto LABEL_21;
      }
    }

    if ([(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:self->_peekingAppLayout])
    {
      v9 = self->_peekState;
      if (v9 == 3 || v9 == 1 && self->_splitViewAppLayout)
      {
        v10 = [[SBDisplayItem alloc] initWithType:0 bundleIdentifier:@"SBPeekSplitViewRoutingSwitcherModifier-placeholder-C" uniqueIdentifier:&stru_283094718];
        v40 = v10;
        v11 = 1;
        v12 = [(SBAppLayout *)self->_peekingAppLayout itemForLayoutRole:1];
        v41 = v12;
        peekConfiguration = self->_peekConfiguration;
        if (peekConfiguration == 2)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        if (peekConfiguration == 2)
        {
          v11 = 2;
        }

        v15 = [SBAppLayout alloc];
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
        v48[0] = v16;
        v49[0] = v12;
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
        v48[1] = v17;
        v49[1] = v10;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
        v19 = [(SBAppLayout *)v15 initWithItemsForLayoutRoles:v18 configuration:SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(self->_spaceConfiguration) environment:[(SBAppLayout *)self->_peekingAppLayout environment] preferredDisplayOrdinal:[(SBPeekSplitViewRoutingSwitcherModifier *)self displayOrdinal]];

        v44.receiver = self;
        v44.super_class = SBPeekSplitViewRoutingSwitcherModifier;
        [(SBPeekSplitViewRoutingSwitcherModifier *)&v44 containerViewBounds];
        v43.receiver = self;
        v43.super_class = SBPeekSplitViewRoutingSwitcherModifier;
        [(SBPeekSplitViewRoutingSwitcherModifier *)&v43 frameForLayoutRole:v11 inAppLayout:v19 withBounds:?];
        goto LABEL_20;
      }
    }

    v42.receiver = self;
    v42.super_class = SBPeekSplitViewRoutingSwitcherModifier;
    [(SBPeekSplitViewRoutingSwitcherModifier *)&v42 containerViewBounds];
  }

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
LABEL_21:

  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (CGRect)routingModifier:(id)a3 switcherViewBoundsForModifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_peekingModifier == v7)
  {
    v32.receiver = self;
    v32.super_class = SBPeekSplitViewRoutingSwitcherModifier;
    [(SBPeekSplitViewRoutingSwitcherModifier *)&v32 containerViewBounds];
    v14 = v23;
    v16 = v24;
    v22 = v25;
    v18 = v26;
  }

  else
  {
    v31.receiver = self;
    v31.super_class = SBPeekSplitViewRoutingSwitcherModifier;
    v8 = [(SBPeekSplitViewRoutingSwitcherModifier *)&v31 isRTLEnabled];
    v9 = [(SBPeekSplitViewRoutingSwitcherModifier *)self switcherSettings];
    [v9 peekInsetWidth];
    v11 = v10;

    [(SBPeekSplitViewRoutingSwitcherModifier *)self containerViewBounds];
    v14 = v12;
    v16 = v15;
    v18 = v17;
    peekConfiguration = self->_peekConfiguration;
    v20 = (peekConfiguration != 2) | v8;
    v21 = peekConfiguration == 3;
    if ((v20 & 1) == 0 || (v21 & v8) != 0)
    {
      v14 = v11 + v12;
    }

    v22 = v13 - v11;
  }

  v27 = v14;
  v28 = v16;
  v29 = v22;
  v30 = v18;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (id)homeScreenModifierForRoutingModifier:(id)a3
{
  v4 = a3;
  peekState = self->_peekState;
  if (peekState == 4 || !peekState && [(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:self->_peekingAppLayout])
  {
    v6 = &OBJC_IVAR___SBPeekSplitViewRoutingSwitcherModifier__peekingModifier;
  }

  else
  {
    v6 = &OBJC_IVAR___SBPeekSplitViewRoutingSwitcherModifier__nonPeekingModifier;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);
  v8 = v7;

  return v7;
}

- (id)routingModifier:(id)a3 animationAttributesModifierForLayoutElement:(id)a4
{
  v5 = a4;
  if ([v5 switcherLayoutElementType])
  {
    peekState = self->_peekState;
    if (peekState == 4 || !peekState && [(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:self->_peekingAppLayout])
    {
      v7 = &OBJC_IVAR___SBPeekSplitViewRoutingSwitcherModifier__peekingModifier;
    }

    else
    {
      v7 = &OBJC_IVAR___SBPeekSplitViewRoutingSwitcherModifier__nonPeekingModifier;
    }
  }

  else
  {
    v8 = [v5 isEqual:self->_peekingAppLayout];
    v7 = &OBJC_IVAR___SBPeekSplitViewRoutingSwitcherModifier__nonPeekingModifier;
    if (v8)
    {
      v7 = &OBJC_IVAR___SBPeekSplitViewRoutingSwitcherModifier__peekingModifier;
    }
  }

  v9 = *(&self->super.super.super.super.isa + *v7);
  v10 = v9;

  return v9;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v18.receiver = self;
  v18.super_class = SBPeekSplitViewRoutingSwitcherModifier;
  v4 = [(SBChainableModifier *)&v18 descriptionBuilderWithMultilinePrefix:a3];
  v5 = SBStringForPeekConfiguration(self->_peekConfiguration);
  v6 = [v4 appendObject:v5 withName:@"peekConfiguration"];

  v7 = SBStringForSpaceConfiguration(self->_spaceConfiguration);
  v8 = [v4 appendObject:v7 withName:@"spaceConfiguration"];

  v9 = self->_peekState - 1;
  if (v9 > 3)
  {
    v10 = @"fullScreen";
  }

  else
  {
    v10 = off_2783B13A0[v9];
  }

  v11 = [v4 appendObject:v10 withName:@"peekState"];
  v12 = [v4 appendBool:self->_uncondtionallyAllowAppLayoutContainment withName:@"uncondtionallyAllowAppLayoutContainment"];
  v13 = [(SBChainableModifier *)self->_peekingModifier succinctDescription];
  v14 = [v4 appendObject:v13 withName:@"peekingAppLayout"];

  v15 = [(SBAppLayout *)self->_splitViewAppLayout succinctDescription];
  v16 = [v4 appendObject:v15 withName:@"splitViewAppLayout"];

  return v4;
}

- (id)_combinedResultingAppLayoutWithAppLayout:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (self->_peekConfiguration == 2)
  {
    peekingAppLayout = self->_peekingAppLayout;
    v5 = a3;
    v6 = [(SBAppLayout *)peekingAppLayout allItems];
    v7 = [v6 firstObject];

    v8 = [(SBPeekSplitViewRoutingSwitcherModifier *)self layoutAttributesForDisplayItem:v7 inAppLayout:self->_peekingAppLayout];
    v9 = [v5 allItems];
    v10 = [v9 firstObject];

    v11 = [(SBPeekSplitViewRoutingSwitcherModifier *)self layoutAttributesForDisplayItem:v10 inAppLayout:v5];
  }

  else
  {
    v12 = a3;
    v13 = [v12 allItems];
    v7 = [v13 firstObject];

    v8 = [(SBPeekSplitViewRoutingSwitcherModifier *)self layoutAttributesForDisplayItem:v7 inAppLayout:v12];

    v14 = [(SBAppLayout *)self->_peekingAppLayout allItems];
    v10 = [v14 firstObject];

    v11 = [(SBPeekSplitViewRoutingSwitcherModifier *)self layoutAttributesForDisplayItem:v10 inAppLayout:self->_peekingAppLayout];
  }

  v23[0] = v7;
  v23[1] = v10;
  v24[0] = v8;
  v24[1] = v11;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v21[0] = v16;
  v22[0] = v7;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v21[1] = v17;
  v22[1] = v10;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v19 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:v18 configuration:SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(self->_spaceConfiguration) centerConfiguration:0 environment:1 hidden:0 preferredDisplayOrdinal:[(SBPeekSplitViewRoutingSwitcherModifier *)self displayOrdinal]];
  [(SBPeekSplitViewRoutingSwitcherModifier *)self updateLayoutAttributesMap:v15 forAppLayout:v19];

  return v19;
}

- (void)_temporarilyAllowUnconditionaryAppLayoutContainmentWithBlock:(id)a3
{
  uncondtionallyAllowAppLayoutContainment = self->_uncondtionallyAllowAppLayoutContainment;
  self->_uncondtionallyAllowAppLayoutContainment = 1;
  (*(a3 + 2))(a3, a2);
  self->_uncondtionallyAllowAppLayoutContainment = uncondtionallyAllowAppLayoutContainment;
}

- (void)initWithPeekConfiguration:(uint64_t)a1 spaceConfiguration:(uint64_t)a2 peekingAppLayout:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPeekSplitViewRoutingSwitcherModifier.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"SBPeekConfigurationIsValid(peekConfiguration)"}];
}

- (void)initWithPeekConfiguration:(uint64_t)a1 spaceConfiguration:(uint64_t)a2 peekingAppLayout:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPeekSplitViewRoutingSwitcherModifier.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"SBSpaceConfigurationIsValid(spaceConfiguration)"}];
}

- (void)initWithPeekConfiguration:(uint64_t)a1 spaceConfiguration:(uint64_t)a2 peekingAppLayout:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPeekSplitViewRoutingSwitcherModifier.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"peekingAppLayout"}];
}

@end