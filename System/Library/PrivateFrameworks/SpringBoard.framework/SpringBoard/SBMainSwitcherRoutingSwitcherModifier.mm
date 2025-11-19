@interface SBMainSwitcherRoutingSwitcherModifier
- (BOOL)canPerformKeyboardShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4;
- (SBMainSwitcherRoutingSwitcherModifier)initWithMainModifierSubtree:(id)a3 floatingModifierSubtree:(id)a4;
- (id)_modifierToHandleLayoutElement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugPotentialChildModifiers;
- (id)handleGestureEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)routingModifier:(id)a3 event:(id)a4 forModifier:(id)a5;
- (id)routingModifier:(id)a3 filteredAppLayouts:(id)a4 forModifier:(id)a5;
- (id)routingModifier:(id)a3 filteredContinuousExposeIdentifiers:(id)a4 forModifier:(id)a5;
- (id)routingModifier:(id)a3 modifierForAppLayout:(id)a4;
- (int64_t)occlusionStateForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
@end

@implementation SBMainSwitcherRoutingSwitcherModifier

- (SBMainSwitcherRoutingSwitcherModifier)initWithMainModifierSubtree:(id)a3 floatingModifierSubtree:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SBMainSwitcherRoutingSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mainModifierSubtree, a3);
    objc_storeStrong(&v10->_floatingModifierSubtree, a4);
    objc_storeStrong(&v10->_currentScrollableSubtree, v10->_mainModifierSubtree);
    objc_storeStrong(&v10->_activeSubtree, v10->_mainModifierSubtree);
    v11 = [SBRoutingSwitcherModifier alloc];
    v17[0] = v10->_floatingModifierSubtree;
    v17[1] = v10->_mainModifierSubtree;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v13 = [(SBRoutingSwitcherModifier *)v11 initWithModifiers:v12 delegate:v10];
    routingModifier = v10->_routingModifier;
    v10->_routingModifier = v13;

    [(SBChainableModifier *)v10 addChildModifier:v10->_routingModifier];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SBSwitcherModifier *)self->_mainModifierSubtree copy];
  v6 = [(SBSwitcherModifier *)self->_floatingModifierSubtree copy];
  v7 = [v4 initWithMainModifierSubtree:v5 floatingModifierSubtree:v6];

  return v7;
}

- (id)debugPotentialChildModifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  floatingModifierSubtree = self->_floatingModifierSubtree;
  v5[0] = self->_mainModifierSubtree;
  v5[1] = floatingModifierSubtree;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

- (id)routingModifier:(id)a3 event:(id)a4 forModifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 type] == 17)
  {
    v9 = [v7 appLayout];
    v10 = [v9 environment];

    v11 = v10 != 2;
    v12 = v10 == 2;
  }

  else
  {
    v12 = 1;
    v11 = 1;
  }

  if ([v7 type] == 16)
  {
    v11 = !self->_floatingSwitcherVisible;
    v12 = self->_floatingSwitcherVisible || self->_currentEnvironmentMode == 3;
  }

  if ([v7 type] == 12)
  {
    v13 = [v7 appLayout];
    v14 = [v13 environment];

    v11 = v14 != 2;
    v12 = v14 == 2;
  }

  if ([v7 type] == 14)
  {
    v15 = [v7 appLayout];
    v16 = [v15 environment];

    v11 = v16 != 2;
    v12 = v16 == 2;
  }

  if ([v7 type] == 13)
  {
    v17 = [v7 appLayout];
    v18 = [v17 environment];

    v11 = v18 != 2;
    v12 = v18 == 2;
  }

  if ([v7 type] == 40)
  {
    v19 = [v7 displayItemEnvironment];
    v12 = v19 == 2;
    v11 = v19 != 2;
  }

  if (self->_mainModifierSubtree == v8 || (v11 = v12, self->_floatingModifierSubtree == v8))
  {
    if (v11)
    {
      v21 = v7;
    }

    else
    {
      v21 = 0;
    }

    v20 = v21;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)routingModifier:(id)a3 filteredAppLayouts:(id)a4 forModifier:(id)a5
{
  v7 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__SBMainSwitcherRoutingSwitcherModifier_routingModifier_filteredAppLayouts_forModifier___block_invoke;
  v11[3] = &unk_2783AEDB8;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = [a4 bs_filter:v11];

  return v9;
}

- (id)routingModifier:(id)a3 filteredContinuousExposeIdentifiers:(id)a4 forModifier:(id)a5
{
  v7 = a4;
  v8 = v7;
  if (self->_mainModifierSubtree == a5)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (id)routingModifier:(id)a3 modifierForAppLayout:(id)a4
{
  v5 = [a4 environment];
  v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
  if (v5 == 2)
  {
    v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__floatingModifierSubtree;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);

  return v7;
}

- (id)_modifierToHandleLayoutElement:(id)a3
{
  v4 = a3;
  v5 = [v4 switcherLayoutElementType];
  v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__floatingModifierSubtree;
  if ((v5 - 2) >= 3)
  {
    if (v5)
    {
      v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
    }

    else if ([v4 environment] != 2)
    {
      v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
    }
  }

  v7 = *(&self->super.super.super.super.isa + *v6);
  v8 = v7;

  return v7;
}

- (int64_t)occlusionStateForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v38.receiver = self;
  v38.super_class = SBMainSwitcherRoutingSwitcherModifier;
  v7 = [(SBMainSwitcherRoutingSwitcherModifier *)&v38 occlusionStateForLayoutRole:a3 inAppLayout:v6];
  if (!SBOcclusionStateIsOccluded(v7) && self->_floatingAppLayout && self->_currentEnvironmentMode == 3 && (self->_floatingConfiguration - 1) <= 1)
  {
    v8 = [(SBMainSwitcherRoutingSwitcherModifier *)self appLayouts];
    if ([v8 containsObject:v6])
    {
      v9 = [(SBMainSwitcherRoutingSwitcherModifier *)self appLayouts];
      v10 = [v9 containsObject:self->_floatingAppLayout];

      if (v10)
      {
        v11 = [(SBMainSwitcherRoutingSwitcherModifier *)self appLayouts];
        -[SBMainSwitcherRoutingSwitcherModifier frameForIndex:](self, "frameForIndex:", [v11 indexOfObject:v6]);
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        [(SBMainSwitcherRoutingSwitcherModifier *)self frameForLayoutRole:a3 inAppLayout:v6 withBounds:v13, v15, v17, v19];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = [(SBMainSwitcherRoutingSwitcherModifier *)self appLayouts];
        -[SBMainSwitcherRoutingSwitcherModifier frameForIndex:](self, "frameForIndex:", [v28 indexOfObject:self->_floatingAppLayout]);
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v39.origin.x = v30;
        v39.origin.y = v32;
        v39.size.width = v34;
        v39.size.height = v36;
        v41.origin.x = v21;
        v41.origin.y = v23;
        v41.size.width = v25;
        v41.size.height = v27;
        if (CGRectContainsRect(v39, v41))
        {
          v7 = 3;
        }

        else
        {
          v40.origin.x = v21;
          v40.origin.y = v23;
          v40.size.width = v25;
          v40.size.height = v27;
          v42.origin.x = v30;
          v42.origin.y = v32;
          v42.size.width = v34;
          v42.size.height = v36;
          if (CGRectIntersectsRect(v40, v42))
          {
            v7 = 2;
          }

          else
          {
            v7 = 1;
          }
        }
      }
    }

    else
    {
    }
  }

  return v7;
}

- (BOOL)canPerformKeyboardShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v36.receiver = self;
  v36.super_class = SBMainSwitcherRoutingSwitcherModifier;
  v7 = [(SBMainSwitcherRoutingSwitcherModifier *)&v36 canPerformKeyboardShortcutAction:a3 forBundleIdentifier:v6];
  v8 = v7;
  if (a3 <= 11)
  {
    if ((a3 - 4) >= 2)
    {
      if ((a3 - 9) < 2)
      {
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v35 = 0;
        v10 = [(SBSwitcherModifier *)self->_floatingModifierSubtree visibleAppLayouts];
        v11 = [v10 count];

        if (v11)
        {
          v12 = [(SBMainSwitcherRoutingSwitcherModifier *)self appLayouts];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __94__SBMainSwitcherRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke_3;
          v31[3] = &unk_2783AFC08;
          v31[4] = &v32;
          [v12 enumerateObjectsUsingBlock:v31];
        }

        if (v8)
        {
          LOBYTE(v8) = self->_currentEnvironmentMode == 3 && *(v33 + 6) > 1;
        }

        _Block_object_dispose(&v32, 8);
      }

      goto LABEL_35;
    }

    goto LABEL_15;
  }

  if ((a3 - 13) < 2)
  {
    if (v6)
    {
      v15 = +[SBApplicationController sharedInstanceIfExists];
      v16 = [v15 applicationWithBundleIdentifier:v6];

      if (v16)
      {
        v18 = [v16 info];
        v17 = [v18 supportsMultiwindow];

        LOBYTE(v18) = v17 & v8;
        if ((v17 & 1) == 0 && ((v8 ^ 1) & 1) == 0)
        {
          v19 = [(SBSwitcherModifier *)self->_mainModifierSubtree visibleAppLayouts];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __94__SBMainSwitcherRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke_5;
          v26[3] = &unk_2783A8CB8;
          v27 = v6;
          LODWORD(v18) = [v19 bs_containsObjectPassingTest:v26] ^ 1;
        }
      }

      else
      {
        LOBYTE(v18) = v8;
      }

      LOBYTE(v8) = v18;
      goto LABEL_35;
    }

    v20 = [(SBMainSwitcherRoutingSwitcherModifier *)self leafAppLayoutForKeyboardFocusedScene];
    if ((a3 == 13) != ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1))
    {
      v21 = &SBLayoutRolePrimary;
    }

    else
    {
      v21 = &SBLayoutRoleSide;
    }

    v22 = *v21;
    v23 = [(SBSwitcherModifier *)self->_mainModifierSubtree visibleAppLayouts];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __94__SBMainSwitcherRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke_4;
    v28[3] = &unk_2783AFC30;
    v29 = v20;
    v30 = v22;
    v13 = v20;
    v24 = [v23 bs_containsObjectPassingTest:v28];

    LOBYTE(v8) = v8 & (v24 ^ 1);
LABEL_30:

    goto LABEL_35;
  }

  if ((a3 - 15) < 2)
  {
LABEL_15:
    if (!v7)
    {
      goto LABEL_35;
    }

    if (self->_currentEnvironmentMode != 3)
    {
      goto LABEL_24;
    }

    v13 = [(SBSwitcherModifier *)self->_mainModifierSubtree visibleAppLayouts];
    if ([v13 bs_containsObjectPassingTest:&__block_literal_global_7_0])
    {
      v14 = [(SBSwitcherModifier *)self->_floatingModifierSubtree visibleAppLayouts];
      LOBYTE(v8) = [v14 count] != 0;
    }

    else
    {
      LOBYTE(v8) = 1;
    }

    goto LABEL_30;
  }

  if (a3 == 12 && v7)
  {
    if (self->_currentEnvironmentMode == 3)
    {
      v9 = [(SBSwitcherModifier *)self->_mainModifierSubtree visibleAppLayouts];
      LOBYTE(v8) = [v9 bs_containsObjectPassingTest:&__block_literal_global_67];

      goto LABEL_35;
    }

LABEL_24:
    LOBYTE(v8) = 0;
  }

LABEL_35:

  return v8;
}

BOOL __94__SBMainSwitcherRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration([a2 configuration]);

  return SBSpaceConfigurationIsSplitView(v2);
}

BOOL __94__SBMainSwitcherRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = SBMainDisplayLayoutStateCenterConfigurationFromAppLayoutCenterConfiguration([a2 centerConfiguration]);

  return SBCenterConfigurationIsValid(v2);
}

uint64_t __94__SBMainSwitcherRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 environment];
  if (result == 2)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  if (*(*(*(a1 + 32) + 8) + 24) >= 2)
  {
    *a4 = 1;
  }

  return result;
}

BOOL __94__SBMainSwitcherRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration([v3 configuration]);
  if (SBSpaceConfigurationIsSplitView(v4))
  {
    v5 = [v3 leafAppLayoutForRole:*(a1 + 40)];
    v6 = v5 == *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 toFloatingSwitcherVisible];
  v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__floatingModifierSubtree;
  if ((v5 & 1) == 0)
  {
    v7 = [v4 fromFloatingSwitcherVisible];
    v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
    if (v7)
    {
      v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__floatingModifierSubtree;
    }
  }

  objc_storeStrong(&self->_currentScrollableSubtree, *(&self->super.super.super.super.isa + *v6));
  self->_currentEnvironmentMode = [v4 toEnvironmentMode];
  self->_floatingSwitcherVisible = [v4 toFloatingSwitcherVisible];
  v8 = [v4 toFloatingAppLayout];
  floatingAppLayout = self->_floatingAppLayout;
  self->_floatingAppLayout = v8;

  self->_floatingConfiguration = [v4 toFloatingConfiguration];
  if ([v4 phase] == 1 && (objc_msgSend(v4, "isGestureInitiated") & 1) == 0)
  {
    v10 = [v4 fromWindowPickerRole] != 1 && objc_msgSend(v4, "toWindowPickerRole") == 1;
    v11 = [v4 fromWindowPickerRole] == 1 && objc_msgSend(v4, "toWindowPickerRole") != 1;
    v12 = [v4 fromWindowPickerRole] != 2 && objc_msgSend(v4, "toWindowPickerRole") == 2;
    v13 = [v4 fromWindowPickerRole] == 2 && objc_msgSend(v4, "toWindowPickerRole") != 2;
    v14 = v10 || v11 || v12 || v13;
    v15 = [v4 fromAppExposeBundleID];
    v16 = [v4 toAppExposeBundleID];
    v17 = BSEqualStrings();

    v18 = [v4 fromAppLayout];
    v19 = [v4 toAppLayout];
    if (v18 == v19 && (v20 = [v4 fromEnvironmentMode], !((v20 != objc_msgSend(v4, "toEnvironmentMode")) | v14 & 1)))
    {

      v21 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
      if (v17)
      {
        v21 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__floatingModifierSubtree;
      }
    }

    else
    {

      v21 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
    }

    objc_storeStrong(&self->_activeSubtree, *(&self->super.super.super.super.isa + *v21));
  }

  v24.receiver = self;
  v24.super_class = SBMainSwitcherRoutingSwitcherModifier;
  v22 = [(SBSwitcherModifier *)&v24 handleTransitionEvent:v4];

  return v22;
}

- (id)handleGestureEvent:(id)a3
{
  v4 = a3;
  if ([v4 phase] == 1)
  {
    v5 = [v4 selectedAppLayout];
    v6 = [v5 environment];
    v7 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
    if (v6 == 2)
    {
      v7 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__floatingModifierSubtree;
    }

    objc_storeStrong(&self->_activeSubtree, *(&self->super.super.super.super.isa + *v7));
  }

  v10.receiver = self;
  v10.super_class = SBMainSwitcherRoutingSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v10 handleGestureEvent:v4];

  return v8;
}

@end