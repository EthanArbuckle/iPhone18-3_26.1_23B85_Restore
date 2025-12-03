@interface SBMainSwitcherRoutingSwitcherModifier
- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier;
- (SBMainSwitcherRoutingSwitcherModifier)initWithMainModifierSubtree:(id)subtree floatingModifierSubtree:(id)modifierSubtree;
- (id)_modifierToHandleLayoutElement:(id)element;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugPotentialChildModifiers;
- (id)handleGestureEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)routingModifier:(id)modifier event:(id)event forModifier:(id)forModifier;
- (id)routingModifier:(id)modifier filteredAppLayouts:(id)layouts forModifier:(id)forModifier;
- (id)routingModifier:(id)modifier filteredContinuousExposeIdentifiers:(id)identifiers forModifier:(id)forModifier;
- (id)routingModifier:(id)modifier modifierForAppLayout:(id)layout;
- (int64_t)occlusionStateForLayoutRole:(int64_t)role inAppLayout:(id)layout;
@end

@implementation SBMainSwitcherRoutingSwitcherModifier

- (SBMainSwitcherRoutingSwitcherModifier)initWithMainModifierSubtree:(id)subtree floatingModifierSubtree:(id)modifierSubtree
{
  v17[2] = *MEMORY[0x277D85DE8];
  subtreeCopy = subtree;
  modifierSubtreeCopy = modifierSubtree;
  v16.receiver = self;
  v16.super_class = SBMainSwitcherRoutingSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mainModifierSubtree, subtree);
    objc_storeStrong(&v10->_floatingModifierSubtree, modifierSubtree);
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

- (id)copyWithZone:(_NSZone *)zone
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

- (id)routingModifier:(id)modifier event:(id)event forModifier:(id)forModifier
{
  eventCopy = event;
  forModifierCopy = forModifier;
  if ([eventCopy type] == 17)
  {
    appLayout = [eventCopy appLayout];
    environment = [appLayout environment];

    v11 = environment != 2;
    v12 = environment == 2;
  }

  else
  {
    v12 = 1;
    v11 = 1;
  }

  if ([eventCopy type] == 16)
  {
    v11 = !self->_floatingSwitcherVisible;
    v12 = self->_floatingSwitcherVisible || self->_currentEnvironmentMode == 3;
  }

  if ([eventCopy type] == 12)
  {
    appLayout2 = [eventCopy appLayout];
    environment2 = [appLayout2 environment];

    v11 = environment2 != 2;
    v12 = environment2 == 2;
  }

  if ([eventCopy type] == 14)
  {
    appLayout3 = [eventCopy appLayout];
    environment3 = [appLayout3 environment];

    v11 = environment3 != 2;
    v12 = environment3 == 2;
  }

  if ([eventCopy type] == 13)
  {
    appLayout4 = [eventCopy appLayout];
    environment4 = [appLayout4 environment];

    v11 = environment4 != 2;
    v12 = environment4 == 2;
  }

  if ([eventCopy type] == 40)
  {
    displayItemEnvironment = [eventCopy displayItemEnvironment];
    v12 = displayItemEnvironment == 2;
    v11 = displayItemEnvironment != 2;
  }

  if (self->_mainModifierSubtree == forModifierCopy || (v11 = v12, self->_floatingModifierSubtree == forModifierCopy))
  {
    if (v11)
    {
      v21 = eventCopy;
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

- (id)routingModifier:(id)modifier filteredAppLayouts:(id)layouts forModifier:(id)forModifier
{
  forModifierCopy = forModifier;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__SBMainSwitcherRoutingSwitcherModifier_routingModifier_filteredAppLayouts_forModifier___block_invoke;
  v11[3] = &unk_2783AEDB8;
  v12 = forModifierCopy;
  selfCopy = self;
  v8 = forModifierCopy;
  v9 = [layouts bs_filter:v11];

  return v9;
}

- (id)routingModifier:(id)modifier filteredContinuousExposeIdentifiers:(id)identifiers forModifier:(id)forModifier
{
  identifiersCopy = identifiers;
  v8 = identifiersCopy;
  if (self->_mainModifierSubtree == forModifier)
  {
    v9 = identifiersCopy;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (id)routingModifier:(id)modifier modifierForAppLayout:(id)layout
{
  environment = [layout environment];
  v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
  if (environment == 2)
  {
    v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__floatingModifierSubtree;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);

  return v7;
}

- (id)_modifierToHandleLayoutElement:(id)element
{
  elementCopy = element;
  switcherLayoutElementType = [elementCopy switcherLayoutElementType];
  v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__floatingModifierSubtree;
  if ((switcherLayoutElementType - 2) >= 3)
  {
    if (switcherLayoutElementType)
    {
      v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
    }

    else if ([elementCopy environment] != 2)
    {
      v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
    }
  }

  v7 = *(&self->super.super.super.super.isa + *v6);
  v8 = v7;

  return v7;
}

- (int64_t)occlusionStateForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v38.receiver = self;
  v38.super_class = SBMainSwitcherRoutingSwitcherModifier;
  v7 = [(SBMainSwitcherRoutingSwitcherModifier *)&v38 occlusionStateForLayoutRole:role inAppLayout:layoutCopy];
  if (!SBOcclusionStateIsOccluded(v7) && self->_floatingAppLayout && self->_currentEnvironmentMode == 3 && (self->_floatingConfiguration - 1) <= 1)
  {
    appLayouts = [(SBMainSwitcherRoutingSwitcherModifier *)self appLayouts];
    if ([appLayouts containsObject:layoutCopy])
    {
      appLayouts2 = [(SBMainSwitcherRoutingSwitcherModifier *)self appLayouts];
      v10 = [appLayouts2 containsObject:self->_floatingAppLayout];

      if (v10)
      {
        appLayouts3 = [(SBMainSwitcherRoutingSwitcherModifier *)self appLayouts];
        -[SBMainSwitcherRoutingSwitcherModifier frameForIndex:](self, "frameForIndex:", [appLayouts3 indexOfObject:layoutCopy]);
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        [(SBMainSwitcherRoutingSwitcherModifier *)self frameForLayoutRole:role inAppLayout:layoutCopy withBounds:v13, v15, v17, v19];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        appLayouts4 = [(SBMainSwitcherRoutingSwitcherModifier *)self appLayouts];
        -[SBMainSwitcherRoutingSwitcherModifier frameForIndex:](self, "frameForIndex:", [appLayouts4 indexOfObject:self->_floatingAppLayout]);
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

- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v36.receiver = self;
  v36.super_class = SBMainSwitcherRoutingSwitcherModifier;
  v7 = [(SBMainSwitcherRoutingSwitcherModifier *)&v36 canPerformKeyboardShortcutAction:action forBundleIdentifier:identifierCopy];
  v8 = v7;
  if (action <= 11)
  {
    if ((action - 4) >= 2)
    {
      if ((action - 9) < 2)
      {
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v35 = 0;
        visibleAppLayouts = [(SBSwitcherModifier *)self->_floatingModifierSubtree visibleAppLayouts];
        v11 = [visibleAppLayouts count];

        if (v11)
        {
          appLayouts = [(SBMainSwitcherRoutingSwitcherModifier *)self appLayouts];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __94__SBMainSwitcherRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke_3;
          v31[3] = &unk_2783AFC08;
          v31[4] = &v32;
          [appLayouts enumerateObjectsUsingBlock:v31];
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

  if ((action - 13) < 2)
  {
    if (identifierCopy)
    {
      v15 = +[SBApplicationController sharedInstanceIfExists];
      v16 = [v15 applicationWithBundleIdentifier:identifierCopy];

      if (v16)
      {
        info = [v16 info];
        supportsMultiwindow = [info supportsMultiwindow];

        LOBYTE(info) = supportsMultiwindow & v8;
        if ((supportsMultiwindow & 1) == 0 && ((v8 ^ 1) & 1) == 0)
        {
          visibleAppLayouts2 = [(SBSwitcherModifier *)self->_mainModifierSubtree visibleAppLayouts];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __94__SBMainSwitcherRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke_5;
          v26[3] = &unk_2783A8CB8;
          v27 = identifierCopy;
          LODWORD(info) = [visibleAppLayouts2 bs_containsObjectPassingTest:v26] ^ 1;
        }
      }

      else
      {
        LOBYTE(info) = v8;
      }

      LOBYTE(v8) = info;
      goto LABEL_35;
    }

    leafAppLayoutForKeyboardFocusedScene = [(SBMainSwitcherRoutingSwitcherModifier *)self leafAppLayoutForKeyboardFocusedScene];
    if ((action == 13) != ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1))
    {
      v21 = &SBLayoutRolePrimary;
    }

    else
    {
      v21 = &SBLayoutRoleSide;
    }

    v22 = *v21;
    visibleAppLayouts3 = [(SBSwitcherModifier *)self->_mainModifierSubtree visibleAppLayouts];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __94__SBMainSwitcherRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke_4;
    v28[3] = &unk_2783AFC30;
    v29 = leafAppLayoutForKeyboardFocusedScene;
    v30 = v22;
    visibleAppLayouts4 = leafAppLayoutForKeyboardFocusedScene;
    v24 = [visibleAppLayouts3 bs_containsObjectPassingTest:v28];

    LOBYTE(v8) = v8 & (v24 ^ 1);
LABEL_30:

    goto LABEL_35;
  }

  if ((action - 15) < 2)
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

    visibleAppLayouts4 = [(SBSwitcherModifier *)self->_mainModifierSubtree visibleAppLayouts];
    if ([visibleAppLayouts4 bs_containsObjectPassingTest:&__block_literal_global_7_0])
    {
      visibleAppLayouts5 = [(SBSwitcherModifier *)self->_floatingModifierSubtree visibleAppLayouts];
      LOBYTE(v8) = [visibleAppLayouts5 count] != 0;
    }

    else
    {
      LOBYTE(v8) = 1;
    }

    goto LABEL_30;
  }

  if (action == 12 && v7)
  {
    if (self->_currentEnvironmentMode == 3)
    {
      visibleAppLayouts6 = [(SBSwitcherModifier *)self->_mainModifierSubtree visibleAppLayouts];
      LOBYTE(v8) = [visibleAppLayouts6 bs_containsObjectPassingTest:&__block_literal_global_67];

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

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  toFloatingSwitcherVisible = [eventCopy toFloatingSwitcherVisible];
  v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__floatingModifierSubtree;
  if ((toFloatingSwitcherVisible & 1) == 0)
  {
    fromFloatingSwitcherVisible = [eventCopy fromFloatingSwitcherVisible];
    v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
    if (fromFloatingSwitcherVisible)
    {
      v6 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__floatingModifierSubtree;
    }
  }

  objc_storeStrong(&self->_currentScrollableSubtree, *(&self->super.super.super.super.isa + *v6));
  self->_currentEnvironmentMode = [eventCopy toEnvironmentMode];
  self->_floatingSwitcherVisible = [eventCopy toFloatingSwitcherVisible];
  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  floatingAppLayout = self->_floatingAppLayout;
  self->_floatingAppLayout = toFloatingAppLayout;

  self->_floatingConfiguration = [eventCopy toFloatingConfiguration];
  if ([eventCopy phase] == 1 && (objc_msgSend(eventCopy, "isGestureInitiated") & 1) == 0)
  {
    v10 = [eventCopy fromWindowPickerRole] != 1 && objc_msgSend(eventCopy, "toWindowPickerRole") == 1;
    v11 = [eventCopy fromWindowPickerRole] == 1 && objc_msgSend(eventCopy, "toWindowPickerRole") != 1;
    v12 = [eventCopy fromWindowPickerRole] != 2 && objc_msgSend(eventCopy, "toWindowPickerRole") == 2;
    v13 = [eventCopy fromWindowPickerRole] == 2 && objc_msgSend(eventCopy, "toWindowPickerRole") != 2;
    v14 = v10 || v11 || v12 || v13;
    fromAppExposeBundleID = [eventCopy fromAppExposeBundleID];
    toAppExposeBundleID = [eventCopy toAppExposeBundleID];
    v17 = BSEqualStrings();

    fromAppLayout = [eventCopy fromAppLayout];
    toAppLayout = [eventCopy toAppLayout];
    if (fromAppLayout == toAppLayout && (v20 = [eventCopy fromEnvironmentMode], !((v20 != objc_msgSend(eventCopy, "toEnvironmentMode")) | v14 & 1)))
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
  v22 = [(SBSwitcherModifier *)&v24 handleTransitionEvent:eventCopy];

  return v22;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy phase] == 1)
  {
    selectedAppLayout = [eventCopy selectedAppLayout];
    environment = [selectedAppLayout environment];
    v7 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__mainModifierSubtree;
    if (environment == 2)
    {
      v7 = &OBJC_IVAR___SBMainSwitcherRoutingSwitcherModifier__floatingModifierSubtree;
    }

    objc_storeStrong(&self->_activeSubtree, *(&self->super.super.super.super.isa + *v7));
  }

  v10.receiver = self;
  v10.super_class = SBMainSwitcherRoutingSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v10 handleGestureEvent:eventCopy];

  return v8;
}

@end