@interface SBTransitionSwitcherModifierEvent
- (BOOL)_isEnteringPageCenterWindowEvent;
- (BOOL)isAnyPulseEvent;
- (BOOL)isAnySplitViewToOrFromSlideOverEvent;
- (BOOL)isCenterWindowRemovalEvent;
- (BOOL)isCenterWindowToExistingSplitViewEvent;
- (BOOL)isCenterWindowToFullScreenEvent;
- (BOOL)isCenterWindowToNewSplitViewEvent;
- (BOOL)isCenterWindowToSlideOverEvent;
- (BOOL)isCenterWindowZoomingUpFromShelfEvent;
- (BOOL)isEnteringAnyPeekEvent;
- (BOOL)isEnteringSlideOverPeekEvent;
- (BOOL)isEnteringSplitViewPeekEvent;
- (BOOL)isExitingAnyPeekEvent;
- (BOOL)isExitingCenterWindowEvent;
- (BOOL)isExitingCenterWindowToOtherRoleEvent;
- (BOOL)isExitingSlideOverPeekEvent;
- (BOOL)isExitingSlideOverPeekToAppEvent;
- (BOOL)isExitingSlideOverPeekToHomeScreenEvent;
- (BOOL)isExitingSplitViewPeekEvent;
- (BOOL)isExitingSplitViewPeekToAppEvent;
- (BOOL)isExitingSplitViewPeekToHomeScreenEvent;
- (BOOL)isFloatingPulseEvent;
- (BOOL)isFullScreenToCenterWindowEvent;
- (BOOL)isFullScreenToSplitViewEvent;
- (BOOL)isMainPulseEvent;
- (BOOL)isPresentingPageCenterWindowEvent;
- (BOOL)isPrimaryToSlideOverEvent;
- (BOOL)isReplaceCenterWindowWithNewCenterWindowEvent;
- (BOOL)isSideToSlideOverEvent;
- (BOOL)isSlideOverToCenterWindowEvent;
- (BOOL)isSlideOverToFullScreenEvent;
- (BOOL)isSlideOverToPrimaryEvent;
- (BOOL)isSlideOverToSideEvent;
- (BOOL)isSplitViewCrossfadeEvent;
- (BOOL)isSplitViewToCenterWindowEvent;
- (BOOL)isSwappingFullScreenAppSidesEvent;
- (CGPoint)fromCenterOfMovingDisplayItem;
- (CGPoint)toCenterOfMovingDisplayItem;
- (CGSize)fromSizeOfMovingDisplayItem;
- (CGSize)toSizeOfMovingDisplayItem;
- (SBSwitcherShelf)fromShelf;
- (SBSwitcherShelf)toShelf;
- (SBTransitionSwitcherModifierEvent)initWithTransitionID:(id)a3 phase:(unint64_t)a4 animated:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugPredicateSummary;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)dealloc;
- (void)setRemovalContext:(id)a3 forAppLayout:(id)a4;
@end

@implementation SBTransitionSwitcherModifierEvent

- (BOOL)isExitingSlideOverPeekEvent
{
  if (![(SBTransitionSwitcherModifierEvent *)self isExitingAnyPeekEvent])
  {
    return 0;
  }

  v3 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingAppLayout];
  v4 = [v3 itemForLayoutRole:1];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isExitingAnyPeekEvent
{
  IsValid = SBPeekConfigurationIsValid([(SBTransitionSwitcherModifierEvent *)self fromPeekConfiguration]);
  if (IsValid)
  {
    LOBYTE(IsValid) = !SBPeekConfigurationIsValid([(SBTransitionSwitcherModifierEvent *)self toPeekConfiguration]);
  }

  return IsValid;
}

- (BOOL)isExitingSlideOverPeekToAppEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self toFloatingConfiguration];
  v4 = [(SBTransitionSwitcherModifierEvent *)self isExitingSlideOverPeekEvent];
  result = 0;
  if (v4)
  {
    if (v3)
    {
      return !SBFloatingConfigurationIsStashed(v3);
    }
  }

  return result;
}

- (BOOL)isExitingSlideOverPeekToHomeScreenEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self toFloatingConfiguration];
  v4 = [(SBTransitionSwitcherModifierEvent *)self isExitingSlideOverPeekEvent];
  if (v4)
  {
    if (v3)
    {

      LOBYTE(v4) = SBFloatingConfigurationIsStashed(v3);
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (BOOL)isEnteringAnyPeekEvent
{
  if (SBPeekConfigurationIsValid([(SBTransitionSwitcherModifierEvent *)self fromPeekConfiguration]))
  {
    return 0;
  }

  v4 = [(SBTransitionSwitcherModifierEvent *)self toPeekConfiguration];

  return SBPeekConfigurationIsValid(v4);
}

- (BOOL)isAnySplitViewToOrFromSlideOverEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v5 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingAppLayout];
  v6 = [(SBTransitionSwitcherModifierEvent *)self toFloatingAppLayout];
  v19 = [v3 itemForLayoutRole:1];
  v7 = [v4 itemForLayoutRole:1];
  v8 = [v3 itemForLayoutRole:2];
  v9 = [v4 itemForLayoutRole:2];
  v10 = [v5 itemForLayoutRole:1];
  v11 = [v6 itemForLayoutRole:1];
  v12 = v11;
  if (v8)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v15 = 1;
  if (v13 || (v16 = [(SBDisplayItem *)v8 isEqualToItem:v11], (v16 & 1) == 0 && ([(SBDisplayItem *)v19 isEqualToItem:v12]& 1) == 0))
  {
    v14 = !v9 || v10 == 0;
    if (v14 || (v17 = [(SBDisplayItem *)v9 isEqualToItem:v10], (v17 & 1) == 0 && ([(SBDisplayItem *)v7 isEqualToItem:v10]& 1) == 0))
    {
      v15 = 0;
    }
  }

  return v15;
}

- (void)dealloc
{
  v3 = [(SBConsumableTokenWrapper *)self->_zoomFromHardwareButtonPreludeTokenWrapper consumeToken];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = SBTransitionSwitcherModifierEvent;
  [(SBTransitionSwitcherModifierEvent *)&v4 dealloc];
}

- (SBTransitionSwitcherModifierEvent)initWithTransitionID:(id)a3 phase:(unint64_t)a4 animated:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SBTransitionSwitcherModifierEvent;
  v10 = [(SBWindowingModifierActivity *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_transitionID, a3);
    v11->_phase = a4;
    v11->_animated = a5;
  }

  return v11;
}

- (void)setRemovalContext:(id)a3 forAppLayout:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = v13;
  v8 = v6;
  appLayoutToRemovalContext = self->_appLayoutToRemovalContext;
  if (v13)
  {
    if (!appLayoutToRemovalContext)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      v11 = self->_appLayoutToRemovalContext;
      self->_appLayoutToRemovalContext = v10;

      v7 = v13;
      appLayoutToRemovalContext = self->_appLayoutToRemovalContext;
    }

    [(NSMutableDictionary *)appLayoutToRemovalContext setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)appLayoutToRemovalContext removeObjectForKey:v8];
    if (![(NSMutableDictionary *)self->_appLayoutToRemovalContext count])
    {
      v12 = self->_appLayoutToRemovalContext;
      self->_appLayoutToRemovalContext = 0;
    }
  }
}

- (SBSwitcherShelf)fromShelf
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromEnvironmentMode];
  v4 = [(SBTransitionSwitcherModifierEvent *)self fromWindowPickerRole];
  if (v3 != 3)
  {
    goto LABEL_10;
  }

  if (self->_fromAppExposeBundleID)
  {
    v5 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:self->_fromAppExposeBundleID layoutRole:0 displayMode:0];
    goto LABEL_11;
  }

  v6 = v4;
  if (v4 == 3)
  {
    v7 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingAppLayout];
    v8 = v7;
    v9 = 1;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v7 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
    v8 = v7;
    v9 = v6;
  }

  v10 = [v7 itemForLayoutRole:v9];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v5 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:v11 layoutRole:v6 displayMode:1];

    goto LABEL_11;
  }

LABEL_10:
  v5 = 0;
LABEL_11:

  return v5;
}

- (SBSwitcherShelf)toShelf
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self toEnvironmentMode];
  v4 = [(SBTransitionSwitcherModifierEvent *)self toWindowPickerRole];
  if (v3 != 3)
  {
    goto LABEL_5;
  }

  if (self->_toAppExposeBundleID)
  {
    v5 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:self->_toAppExposeBundleID layoutRole:0 displayMode:0];
    goto LABEL_6;
  }

  v6 = v4;
  if (v4)
  {
    v8 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
    v9 = [v8 itemForLayoutRole:v6];
    v10 = [v9 bundleIdentifier];

    v5 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:v10 layoutRole:v6 displayMode:1];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_6:

  return v5;
}

- (BOOL)isEnteringSplitViewPeekEvent
{
  if (![(SBTransitionSwitcherModifierEvent *)self isEnteringAnyPeekEvent])
  {
    return 0;
  }

  v3 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v4 = [v3 itemForLayoutRole:1];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isExitingSplitViewPeekEvent
{
  if (![(SBTransitionSwitcherModifierEvent *)self isExitingAnyPeekEvent])
  {
    return 0;
  }

  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isExitingSplitViewPeekToAppEvent
{
  if (![(SBTransitionSwitcherModifierEvent *)self isExitingSplitViewPeekEvent])
  {
    return 0;
  }

  v3 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v4 = [v3 itemForLayoutRole:1];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isExitingSplitViewPeekToHomeScreenEvent
{
  if (![(SBTransitionSwitcherModifierEvent *)self isExitingSplitViewPeekEvent])
  {
    return 0;
  }

  v3 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)isEnteringSlideOverPeekEvent
{
  if (![(SBTransitionSwitcherModifierEvent *)self isEnteringAnyPeekEvent])
  {
    return 0;
  }

  v3 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v4 = [v3 itemForLayoutRole:1];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SBTransitionSwitcherModifierEvent *)self toFloatingAppLayout];
    v5 = v6 != 0;
  }

  return v5;
}

- (BOOL)isExitingCenterWindowEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  if ([v3 centerConfiguration])
  {
    v4 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
    v5 = [v4 centerConfiguration] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isExitingCenterWindowToOtherRoleEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v4 = [v3 itemForLayoutRole:4];

  v5 = 0;
  if ([(SBTransitionSwitcherModifierEvent *)self isExitingCenterWindowEvent]&& v4)
  {
    v6 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
    if ([v6 containsItem:v4])
    {
      v5 = 1;
    }

    else
    {
      v7 = [(SBTransitionSwitcherModifierEvent *)self toFloatingAppLayout];
      v5 = [v7 containsItem:v4];
    }
  }

  return v5;
}

- (BOOL)isCenterWindowRemovalEvent
{
  if (![(SBTransitionSwitcherModifierEvent *)self isExitingCenterWindowEvent]|| [(SBTransitionSwitcherModifierEvent *)self isExitingCenterWindowToOtherRoleEvent])
  {
    return 0;
  }

  v4 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v5 = SBLayoutRoleSetForRole2(1, 2);
  v6 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v7 = [v4 hasSameItemsInLayoutRoles:v5 asAppLayout:v6];

  return v7;
}

- (BOOL)isCenterWindowToFullScreenEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self toFloatingAppLayout];
  if ([(SBTransitionSwitcherModifierEvent *)self isExitingCenterWindowToOtherRoleEvent])
  {
    v5 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
    if ([v5 configuration] == 1)
    {
      if (v3 == v4)
      {
        v6 = 1;
      }

      else
      {
        v6 = [v3 isEqual:v4];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isCenterWindowToSlideOverEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self toFloatingAppLayout];
  LOBYTE(v4) = 0;
  if ([(SBTransitionSwitcherModifierEvent *)self isExitingCenterWindowToOtherRoleEvent]&& v3)
  {
    v5 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingAppLayout];
    v4 = [v3 isEqual:v5] ^ 1;
  }

  return v4;
}

- (BOOL)isCenterWindowToNewSplitViewEvent
{
  if (![(SBTransitionSwitcherModifierEvent *)self isExitingCenterWindowToOtherRoleEvent])
  {
    return 0;
  }

  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  if ([v3 configuration] == 1)
  {
    v4 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
    v5 = [v4 isSplitConfiguration];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isCenterWindowToExistingSplitViewEvent
{
  if ([(SBTransitionSwitcherModifierEvent *)self isExitingCenterWindowToOtherRoleEvent])
  {
    v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
    if ([v3 isSplitConfiguration])
    {
      v4 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
      if ([v4 isSplitConfiguration])
      {
        v5 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
        v6 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
        v7 = [v5 isEqual:v6] ^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_isEnteringPageCenterWindowEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v4 = [v3 centerConfiguration];

  v5 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v6 = [v5 centerConfiguration];

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = (v6 - 1) >= 2;
  }

  return !v7;
}

- (BOOL)isPresentingPageCenterWindowEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self _isEnteringPageCenterWindowEvent];
  if (v3)
  {
    v4 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
    v5 = SBLayoutRoleSetForRole2(1, 2);
    v6 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
    v7 = [v4 hasSameItemsInLayoutRoles:v5 asAppLayout:v6];

    LOBYTE(v3) = v7;
  }

  return v3;
}

- (BOOL)isReplaceCenterWindowWithNewCenterWindowEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  if ([v3 centerConfiguration] == 1 && objc_msgSend(v4, "centerConfiguration") == 1)
  {
    v5 = SBLayoutRoleSetForRole(4);
    if ([v3 hasSameItemsInLayoutRoles:v5 asAppLayout:v4])
    {
      v6 = 0;
    }

    else
    {
      v7 = SBLayoutRoleSetForRole2(1, 2);
      v6 = [v3 hasSameItemsInLayoutRoles:v7 asAppLayout:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSplitViewToCenterWindowEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v5 = [v4 itemForLayoutRole:4];
  if (-[SBTransitionSwitcherModifierEvent _isEnteringPageCenterWindowEvent](self, "_isEnteringPageCenterWindowEvent") && (v6 = SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration([v3 configuration]), SBSpaceConfigurationIsSplitView(v6)) && objc_msgSend(v4, "configuration") == 1)
  {
    v7 = [v3 itemForLayoutRole:1];
    if (([(SBDisplayItem *)v7 isEqualToItem:v5]& 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      v10 = [v3 itemForLayoutRole:2];
      v8 = [(SBDisplayItem *)v10 isEqualToItem:v5];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSlideOverToCenterWindowEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  if ([v3 centerConfiguration])
  {
    v4 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
    v5 = SBLayoutRoleSetForRole(4);
    v6 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
    if ([v4 hasSameItemsInLayoutRoles:v5 asAppLayout:v6])
    {
      v7 = 0;
    }

    else
    {
      v8 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
      v9 = [v8 itemForLayoutRole:4];
      v10 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingAppLayout];
      v11 = [v10 itemForLayoutRole:1];
      v7 = [(SBDisplayItem *)v9 isEqualToItem:v11];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isFullScreenToCenterWindowEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v4 = [v3 itemForLayoutRole:1];

  v5 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v6 = [v5 itemForLayoutRole:4];

  v7 = 0;
  if ([(SBTransitionSwitcherModifierEvent *)self _isEnteringPageCenterWindowEvent])
  {
    if (v4)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if ([(SBDisplayItem *)v4 isEqualToItem:v6])
      {
        v9 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
        v7 = [v9 configuration] == 1;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (BOOL)isSwappingFullScreenAppSidesEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v5 = [v3 itemForLayoutRole:1];
  v6 = [v3 itemForLayoutRole:2];
  v7 = [v4 itemForLayoutRole:1];
  v8 = [v4 itemForLayoutRole:2];
  v9 = v8;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = v10 || v7 == 0 || v8 == 0;
  if (v12 || ![(SBDisplayItem *)v5 isEqualToItem:v8])
  {
    v13 = 0;
  }

  else
  {
    v13 = [(SBDisplayItem *)v6 isEqualToItem:v7];
  }

  return v13;
}

- (BOOL)isCenterWindowZoomingUpFromShelfEvent
{
  if (![(SBTransitionSwitcherModifierEvent *)self isShelfTransition])
  {
    return 0;
  }

  v3 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v4 = [v3 itemForLayoutRole:4];
  if (v4)
  {
    v5 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
    v6 = SBLayoutRoleSetForRole(4);
    v7 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
    if ([v5 hasSameItemsInLayoutRoles:v6 asAppLayout:v7])
    {
      v8 = 0;
    }

    else
    {
      v9 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
      v10 = SBLayoutRoleSetForRole2(1, 2);
      v11 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
      v8 = [v9 hasSameItemsInLayoutRoles:v10 asAppLayout:v11];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isAnyPulseEvent
{
  if ([(SBTransitionSwitcherModifierEvent *)self isMainPulseEvent])
  {
    return 1;
  }

  return [(SBTransitionSwitcherModifierEvent *)self isFloatingPulseEvent];
}

- (BOOL)isMainPulseEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self activatingAppLayout];
  if (v3)
  {
    v4 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
    v5 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
    if ((BSEqualObjects() & 1) == 0)
    {

      v9 = 0;
      goto LABEL_7;
    }

    v6 = [(SBTransitionSwitcherModifierEvent *)self fromAppExposeBundleID];
    v7 = [(SBTransitionSwitcherModifierEvent *)self toAppExposeBundleID];
    v8 = BSEqualObjects();

    if (v8)
    {
      v4 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
      v9 = [v4 isOrContainsAppLayout:v3];
LABEL_7:

      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (BOOL)isFloatingPulseEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self activatingAppLayout];
  if (v3)
  {
    v4 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingAppLayout];
    v5 = [(SBTransitionSwitcherModifierEvent *)self toFloatingAppLayout];
    if ((BSEqualObjects() & 1) == 0)
    {

      v9 = 0;
      goto LABEL_7;
    }

    v6 = [(SBTransitionSwitcherModifierEvent *)self fromAppExposeBundleID];
    v7 = [(SBTransitionSwitcherModifierEvent *)self toAppExposeBundleID];
    v8 = BSEqualObjects();

    if (v8)
    {
      v4 = [(SBTransitionSwitcherModifierEvent *)self toFloatingAppLayout];
      v9 = [v4 isOrContainsAppLayout:v3];
LABEL_7:

      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (BOOL)isFullScreenToSplitViewEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  if ([v3 configuration] == 1 && objc_msgSend(v4, "configuration") >= 2)
  {
    v5 = [v3 itemForLayoutRole:1];
    v6 = [v4 itemForLayoutRole:1];
    if ([(SBDisplayItem *)v5 isEqualToItem:v6])
    {
      v7 = [v3 itemForLayoutRole:2];
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v9 = [v4 itemForLayoutRole:2];
        v8 = v9 != 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSplitViewCrossfadeEvent
{
  v35 = [(SBTransitionSwitcherModifierEvent *)self fromInterfaceOrientation];
  v34 = [(SBTransitionSwitcherModifierEvent *)self toInterfaceOrientation];
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self toFloatingAppLayout];

  v33 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingConfiguration];
  v5 = [(SBTransitionSwitcherModifierEvent *)self toFloatingConfiguration];
  v6 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingSwitcherVisible];
  v7 = [(SBTransitionSwitcherModifierEvent *)self toFloatingSwitcherVisible];
  v8 = [(SBTransitionSwitcherModifierEvent *)self fromEnvironmentMode];
  v9 = [(SBTransitionSwitcherModifierEvent *)self toEnvironmentMode];
  v10 = [(SBTransitionSwitcherModifierEvent *)self fromPeekConfiguration];
  v11 = [(SBTransitionSwitcherModifierEvent *)self toPeekConfiguration];
  v12 = [(SBTransitionSwitcherModifierEvent *)self isGestureInitiated];
  v13 = 0;
  if (!v12 && v35 == v34 && v3 == v4 && v33 == v5 && ((v6 ^ v7) & 1) == 0 && v8 == v9 && v10 == v11)
  {
    v14 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
    v15 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
    v16 = v15;
    LOBYTE(v17) = 0;
    if (v14 && v15)
    {
      v18 = [v14 itemForLayoutRole:2];
      if (v18 && (v19 = v18, [v16 itemForLayoutRole:2], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
      {
        v21 = MEMORY[0x277CBEB98];
        v22 = [v14 itemForLayoutRole:1];
        v23 = [v14 itemForLayoutRole:2];
        v24 = [v21 setWithObjects:{v22, v23, 0}];

        v25 = MEMORY[0x277CBEB98];
        v26 = [v16 itemForLayoutRole:1];
        v27 = [v16 itemForLayoutRole:2];
        v28 = [v25 setWithObjects:{v26, v27, 0}];

        v29 = MEMORY[0x277CBEB98];
        v30 = [v14 allItems];
        v31 = [v29 setWithArray:v30];
        if ([v16 containsAnyItemFromSet:v31])
        {
          v17 = [v24 isEqual:v28] ^ 1;
        }

        else
        {
          LOBYTE(v17) = 0;
        }
      }

      else
      {
        LOBYTE(v17) = 0;
      }
    }

    return v17;
  }

  return v13;
}

- (BOOL)isPrimaryToSlideOverEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self toFloatingAppLayout];
  v5 = [v3 itemForLayoutRole:1];
  v6 = [v3 itemForLayoutRole:2];
  v7 = [v4 itemForLayoutRole:1];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9 && ([(SBDisplayItem *)v5 isEqualToItem:v7]& 1) != 0;

  return v10;
}

- (BOOL)isSideToSlideOverEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self fromAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self toFloatingAppLayout];
  v5 = [v3 itemForLayoutRole:2];
  v6 = [v4 itemForLayoutRole:1];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8 && ([(SBDisplayItem *)v5 isEqualToItem:v6]& 1) != 0;

  return v9;
}

- (BOOL)isSlideOverToPrimaryEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingAppLayout];
  v5 = [v3 itemForLayoutRole:1];
  v6 = [v3 itemForLayoutRole:2];
  v7 = [v4 itemForLayoutRole:1];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9 && ([(SBDisplayItem *)v5 isEqualToItem:v7]& 1) != 0;

  return v10;
}

- (BOOL)isSlideOverToSideEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingAppLayout];
  v5 = [v3 itemForLayoutRole:2];
  v6 = [v4 itemForLayoutRole:1];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8 && ([(SBDisplayItem *)v5 isEqualToItem:v6]& 1) != 0;

  return v9;
}

- (BOOL)isSlideOverToFullScreenEvent
{
  v3 = [(SBTransitionSwitcherModifierEvent *)self toAppLayout];
  v4 = [(SBTransitionSwitcherModifierEvent *)self fromFloatingAppLayout];
  v5 = [v3 itemForLayoutRole:1];
  v6 = [v3 itemForLayoutRole:2];
  v7 = [v4 itemForLayoutRole:1];
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  v10 = !v9 && ([(SBDisplayItem *)v5 isEqualToItem:v7]& 1) != 0;

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v34.receiver = self;
  v34.super_class = SBTransitionSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v34 copyWithZone:a3];
  v5 = [(NSUUID *)self->_transitionID copy];
  v6 = *(v4 + 10);
  *(v4 + 10) = v5;

  *(v4 + 11) = self->_phase;
  *(v4 + 40) = self->_animated;
  v7 = [(SBAppLayout *)self->_fromAppLayout copy];
  v8 = *(v4 + 12);
  *(v4 + 12) = v7;

  *(v4 + 13) = self->_fromEnvironmentMode;
  v9 = [(SBAppLayout *)self->_toAppLayout copy];
  v10 = *(v4 + 14);
  *(v4 + 14) = v9;

  *(v4 + 15) = self->_toEnvironmentMode;
  *(v4 + 16) = self->_fromInterfaceOrientation;
  *(v4 + 17) = self->_toInterfaceOrientation;
  *(v4 + 18) = self->_fromWindowPickerRole;
  *(v4 + 19) = self->_toWindowPickerRole;
  *(v4 + 41) = self->_fromAppLayoutWantsExclusiveForeground;
  *(v4 + 42) = self->_toAppLayoutWantsExclusiveForeground;
  v11 = [(SBAppLayout *)self->_fromFloatingAppLayout copy];
  v12 = *(v4 + 20);
  *(v4 + 20) = v11;

  *(v4 + 21) = self->_fromFloatingConfiguration;
  *(v4 + 43) = self->_fromFloatingSwitcherVisible;
  v13 = [(SBAppLayout *)self->_toFloatingAppLayout copy];
  v14 = *(v4 + 22);
  *(v4 + 22) = v13;

  *(v4 + 23) = self->_toFloatingConfiguration;
  *(v4 + 44) = self->_toFloatingSwitcherVisible;
  v15 = [(NSString *)self->_fromAppExposeBundleID copy];
  v16 = *(v4 + 24);
  *(v4 + 24) = v15;

  v17 = [(NSString *)self->_toAppExposeBundleID copy];
  v18 = *(v4 + 25);
  *(v4 + 25) = v17;

  v19 = [(NSString *)self->_ambiguouslyLaunchedBundleIDIfAny copy];
  v20 = *(v4 + 26);
  *(v4 + 26) = v19;

  *(v4 + 27) = self->_fromPeekConfiguration;
  *(v4 + 28) = self->_toPeekConfiguration;
  *(v4 + 29) = self->_fromSpaceConfiguration;
  *(v4 + 30) = self->_toSpaceConfiguration;
  v21 = [(SBBannerUnfurlSourceContext *)self->_bannerUnfurlSourceContext copy];
  v22 = *(v4 + 31);
  *(v4 + 31) = v21;

  *(v4 + 45) = self->_prefersCrossfadeTransition;
  v23 = [(NSMutableDictionary *)self->_appLayoutToRemovalContext mutableCopy];
  v24 = *(v4 + 4);
  *(v4 + 4) = v23;

  v25 = [(NSSet *)self->_fromDisplayItemsPendingTermination copy];
  v26 = *(v4 + 33);
  *(v4 + 33) = v25;

  v27 = [(SBAppLayout *)self->_activatingAppLayout copy];
  v28 = *(v4 + 34);
  *(v4 + 34) = v27;

  v29 = [(NSDictionary *)self->_fromDisplayItemLayoutAttributesMap copy];
  v30 = *(v4 + 35);
  *(v4 + 35) = v29;

  v31 = [(NSDictionary *)self->_toDisplayItemLayoutAttributesMap copy];
  v32 = *(v4 + 36);
  *(v4 + 36) = v31;

  objc_storeStrong(v4 + 37, self->_moveDisplaysContext);
  *(v4 + 48) = self->_gestureInitiated;
  *(v4 + 49) = self->_keyboardShortcutInitiated;
  *(v4 + 47) = self->_prefersZoomDownAnimation;
  *(v4 + 50) = self->_topAffordanceInitiated;
  *(v4 + 51) = self->_dragAndDropTransition;
  *(v4 + 52) = self->_breadcrumbTransition;
  *(v4 + 53) = self->_morphToPIPTransition;
  *(v4 + 54) = self->_morphFromPIPTransition;
  *(v4 + 42) = self->_morphingPIPLayoutRole;
  *(v4 + 55) = self->_zoomFromSystemApertureTransition;
  *(v4 + 56) = self->_continuityTransition;
  *(v4 + 57) = self->_bannerUnfurlTransition;
  *(v4 + 58) = self->_iconZoomDisabled;
  *(v4 + 59) = self->_spotlightTransition;
  *(v4 + 60) = self->_shelfTransition;
  *(v4 + 43) = self->_dosidoTransitionDirection;
  *(v4 + 61) = self->_shelfRequestTransition;
  *(v4 + 62) = self->_morphFromInAppView;
  *(v4 + 63) = self->_quickActionTransition;
  *(v4 + 64) = self->_newSceneTransition;
  *(v4 + 65) = self->_moveDisplaysTransition;
  *(v4 + 66) = self->_continuousExposeConfigurationChangeEvent;
  *(v4 + 67) = self->_iPadOSWindowingModeChangeEvent;
  *(v4 + 68) = self->_commandTabTransition;
  *(v4 + 69) = self->_launchingFromDockTransition;
  *(v4 + 70) = self->_appLaunchDuringWindowDragGestureTransition;
  *(v4 + 71) = self->_unstashFromHomeTransition;
  objc_storeStrong(v4 + 39, self->_coverSheetFlyInContext);
  *(v4 + 72) = self->_rotationTransition;
  objc_storeStrong(v4 + 40, self->_previousDesktopItems);
  objc_storeStrong(v4 + 41, self->_minimizingDisplayItem);
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v86.receiver = self;
  v86.super_class = SBTransitionSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v86 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(NSUUID *)self->_transitionID UUIDString];
  [v4 appendString:v5 withName:@"transitionID"];

  v6 = self->_phase - 1;
  if (v6 > 2)
  {
    v7 = @"Possible";
  }

  else
  {
    v7 = off_2783AE148[v6];
  }

  [v4 appendString:v7 withName:@"phase"];
  v8 = NSStringFromBOOL();
  [v4 appendString:v8 withName:@"animated"];

  if ((BSEqualObjects() & 1) == 0)
  {
    v9 = [(SBAppLayout *)self->_fromAppLayout succinctDescription];
    v10 = [v4 appendObject:v9 withName:@"fromAppLayout"];

    v11 = [(SBAppLayout *)self->_toAppLayout succinctDescription];
    v12 = [v4 appendObject:v11 withName:@"toAppLayout"];
  }

  fromEnvironmentMode = self->_fromEnvironmentMode;
  if (fromEnvironmentMode != self->_toEnvironmentMode)
  {
    v14 = SBStringForUnlockedEnvironmentMode(fromEnvironmentMode);
    [v4 appendString:v14 withName:@"fromEnvironmentMode"];

    v15 = SBStringForUnlockedEnvironmentMode(self->_toEnvironmentMode);
    [v4 appendString:v15 withName:@"toEnvironmentMode"];
  }

  fromInterfaceOrientation = self->_fromInterfaceOrientation;
  if (fromInterfaceOrientation != self->_toInterfaceOrientation)
  {
    if (fromInterfaceOrientation == 1)
    {
      v19 = @"UIInterfaceOrientationPortrait";
    }

    else
    {
      v17 = @"UIInterfaceOrientationLandscapeLeft";
      if (fromInterfaceOrientation == 2)
      {
        v18 = @"UIInterfaceOrientationPortraitUpsideDown";
      }

      else
      {
        v18 = 0;
      }

      if (fromInterfaceOrientation != 4)
      {
        v17 = v18;
      }

      if (fromInterfaceOrientation == 3)
      {
        v19 = @"UIInterfaceOrientationLandscapeRight";
      }

      else
      {
        v19 = v17;
      }
    }

    [v4 appendString:v19 withName:@"fromOrientation"];
    toInterfaceOrientation = self->_toInterfaceOrientation;
    if (toInterfaceOrientation == 1)
    {
      v23 = @"UIInterfaceOrientationPortrait";
    }

    else
    {
      v21 = @"UIInterfaceOrientationLandscapeLeft";
      if (toInterfaceOrientation == 2)
      {
        v22 = @"UIInterfaceOrientationPortraitUpsideDown";
      }

      else
      {
        v22 = 0;
      }

      if (toInterfaceOrientation != 4)
      {
        v21 = v22;
      }

      if (toInterfaceOrientation == 3)
      {
        v23 = @"UIInterfaceOrientationLandscapeRight";
      }

      else
      {
        v23 = v21;
      }
    }

    [v4 appendString:v23 withName:@"toOrientation"];
  }

  fromWindowPickerRole = self->_fromWindowPickerRole;
  if (fromWindowPickerRole != self->_toWindowPickerRole)
  {
    v25 = SBLayoutRoleDescription(fromWindowPickerRole);
    [v4 appendString:v25 withName:@"fromWindowPickerRole"];

    v26 = SBLayoutRoleDescription(self->_toWindowPickerRole);
    [v4 appendString:v26 withName:@"toWindowPickerRole"];
  }

  v27 = [v4 appendBool:self->_fromAppLayoutWantsExclusiveForeground withName:@"fromAppLayoutWantsExclusiveForeground" ifEqualTo:1];
  v28 = [v4 appendBool:self->_toAppLayoutWantsExclusiveForeground withName:@"toAppLayoutWantsExclusiveForeground" ifEqualTo:1];
  fromFloatingAppLayout = self->_fromFloatingAppLayout;
  if (fromFloatingAppLayout != self->_toFloatingAppLayout)
  {
    v30 = [(SBAppLayout *)fromFloatingAppLayout succinctDescription];
    v31 = [v4 appendObject:v30 withName:@"fromFloatingAppLayout"];

    v32 = [(SBAppLayout *)self->_toFloatingAppLayout succinctDescription];
    v33 = [v4 appendObject:v32 withName:@"toFloatingAppLayout"];
  }

  fromFloatingConfiguration = self->_fromFloatingConfiguration;
  if (fromFloatingConfiguration != self->_toFloatingConfiguration)
  {
    v35 = SBStringForFloatingConfiguration(fromFloatingConfiguration);
    [v4 appendString:v35 withName:@"fromFloatingConfiguration"];

    v36 = SBStringForFloatingConfiguration(self->_toFloatingConfiguration);
    [v4 appendString:v36 withName:@"toFloatingConfiguration"];
  }

  if (self->_fromFloatingSwitcherVisible != self->_toFloatingSwitcherVisible)
  {
    v37 = NSStringFromBOOL();
    [v4 appendString:v37 withName:@"fromFloatingSwitcherVisible"];

    v38 = NSStringFromBOOL();
    [v4 appendString:v38 withName:@"toFloatingSwitcherVisible"];
  }

  if ((BSEqualStrings() & 1) == 0)
  {
    [v4 appendString:self->_fromAppExposeBundleID withName:@"fromAppExposeBundleID"];
    [v4 appendString:self->_toAppExposeBundleID withName:@"toAppExposeBundleID"];
  }

  [v4 appendString:self->_ambiguouslyLaunchedBundleIDIfAny withName:@"ambiguouslyLaunchedBundleIDIfAny" skipIfEmpty:1];
  fromPeekConfiguration = self->_fromPeekConfiguration;
  if (fromPeekConfiguration != self->_toPeekConfiguration)
  {
    v40 = SBStringForPeekConfiguration(fromPeekConfiguration);
    [v4 appendString:v40 withName:@"fromPeekConfiguration"];

    v41 = SBStringForPeekConfiguration(self->_toPeekConfiguration);
    [v4 appendString:v41 withName:@"toPeekConfiguration"];
  }

  fromSpaceConfiguration = self->_fromSpaceConfiguration;
  if (fromSpaceConfiguration != self->_toSpaceConfiguration)
  {
    v43 = SBStringForSpaceConfiguration(fromSpaceConfiguration);
    [v4 appendString:v43 withName:@"fromSpaceConfiguration"];

    v44 = SBStringForSpaceConfiguration(self->_toSpaceConfiguration);
    [v4 appendString:v44 withName:@"toSpaceConfiguration"];
  }

  v45 = [v4 appendObject:self->_bannerUnfurlSourceContext withName:@"bannerUnfurlSourceContext" skipIfNil:1];
  v46 = [v4 appendBool:self->_prefersCrossfadeTransition withName:@"prefersCrossfadeTransition" ifEqualTo:1];
  if ([(NSMutableDictionary *)self->_appLayoutToRemovalContext count])
  {
    [v4 appendString:@"YES" withName:@"isEntityDestructionTransition"];
  }

  v47 = [v4 appendObject:self->_fromDisplayItemsPendingTermination withName:@"pendingTermination" skipIfNil:1];
  activatingAppLayout = self->_activatingAppLayout;
  if (activatingAppLayout)
  {
    v49 = [(SBAppLayout *)activatingAppLayout succinctDescription];
    v50 = [v4 appendObject:v49 withName:@"activating"];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    v51 = [v4 appendObject:self->_fromDisplayItemLayoutAttributesMap withName:@"fromDisplayItemLayoutAttributesMap"];
    v52 = [v4 appendObject:self->_toDisplayItemLayoutAttributesMap withName:@"toDisplayItemLayoutAttributesMap"];
  }

  v53 = [v4 appendObject:self->_moveDisplaysContext withName:@"moveDisplaysContext" skipIfNil:1];
  v54 = [v4 appendBool:self->_gestureInitiated withName:@"isGestureInitiated" ifEqualTo:1];
  v55 = [v4 appendBool:self->_keyboardShortcutInitiated withName:@"isKeyboardShortcutInitiated" ifEqualTo:1];
  v56 = [v4 appendBool:self->_prefersZoomDownAnimation withName:@"prefersZoomDownAnimation" ifEqualTo:1];
  v57 = [v4 appendBool:self->_topAffordanceInitiated withName:@"isTopAffordanceInitiated" ifEqualTo:1];
  v58 = [v4 appendBool:self->_dragAndDropTransition withName:@"isDragAndDropTransition" ifEqualTo:1];
  v59 = [v4 appendBool:self->_breadcrumbTransition withName:@"isBreadcrumbTransition" ifEqualTo:1];
  v60 = [v4 appendBool:self->_morphToPIPTransition withName:@"isMorphToPIPTransition" ifEqualTo:1];
  v61 = [v4 appendBool:self->_morphFromPIPTransition withName:@"isMorphFromPIPTransition" ifEqualTo:1];
  v62 = SBLayoutRoleDescription(self->_morphingPIPLayoutRole);
  [v4 appendString:v62 withName:@"morphingPIPLayoutRole"];

  v63 = [v4 appendBool:self->_zoomFromSystemApertureTransition withName:@"isZoomFromSystemApertureTransition" ifEqualTo:1];
  v64 = [v4 appendBool:self->_continuityTransition withName:@"isContinuityTransition" ifEqualTo:1];
  v65 = [v4 appendBool:self->_bannerUnfurlTransition withName:@"isBannerUnfurlTransition" ifEqualTo:1];
  v66 = [v4 appendBool:self->_iconZoomDisabled withName:@"isIconZoomDisabled" ifEqualTo:1];
  v67 = [v4 appendBool:self->_spotlightTransition withName:@"isSpotlightTransition" ifEqualTo:1];
  v68 = [v4 appendBool:self->_shelfTransition withName:@"isShelfTransition" ifEqualTo:1];
  dosidoTransitionDirection = self->_dosidoTransitionDirection;
  if (dosidoTransitionDirection)
  {
    v70 = [v4 appendInteger:dosidoTransitionDirection withName:@"dosidoTransitionDirection"];
  }

  v71 = [v4 appendBool:self->_shelfRequestTransition withName:@"isShelfRequestTransition" ifEqualTo:1];
  v72 = [v4 appendBool:self->_morphFromInAppView withName:@"isMorphFromInAppView" ifEqualTo:1];
  v73 = [v4 appendBool:self->_quickActionTransition withName:@"isQuickActionTransition" ifEqualTo:1];
  v74 = [v4 appendBool:self->_newSceneTransition withName:@"isNewSceneTransition" ifEqualTo:1];
  v75 = [v4 appendBool:self->_moveDisplaysTransition withName:@"isMoveDisplaysTransition" ifEqualTo:1];
  v76 = [v4 appendBool:self->_continuousExposeConfigurationChangeEvent withName:@"isContinuousExposeConfigurationChangeEvent" ifEqualTo:1];
  v77 = [v4 appendBool:self->_iPadOSWindowingModeChangeEvent withName:@"iPadOSWindowingModeChangeEvent" ifEqualTo:1];
  v78 = [v4 appendBool:self->_commandTabTransition withName:@"isCommandTabTransition" ifEqualTo:1];
  v79 = [v4 appendBool:self->_launchingFromDockTransition withName:@"isLaunchingFromDockTransition" ifEqualTo:1];
  v80 = [v4 appendBool:self->_appLaunchDuringWindowDragGestureTransition withName:@"isAppLaunchDuringWindowDragGestureTransition" ifEqualTo:1];
  v81 = [v4 appendBool:self->_unstashFromHomeTransition withName:@"isUnstashFromHomeTransition" ifEqualTo:1];
  v82 = [v4 appendBool:self->_rotationTransition withName:@"isRotationTransition" ifEqualTo:1];
  v83 = [v4 appendObject:self->_previousDesktopItems withName:@"previousDesktopItems" skipIfNil:1];
  v84 = [v4 appendObject:self->_minimizingDisplayItem withName:@"minimizingDisplayItem" skipIfNil:1];

  return v4;
}

- (CGSize)fromSizeOfMovingDisplayItem
{
  width = self->_fromSizeOfMovingDisplayItem.width;
  height = self->_fromSizeOfMovingDisplayItem.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)fromCenterOfMovingDisplayItem
{
  x = self->_fromCenterOfMovingDisplayItem.x;
  y = self->_fromCenterOfMovingDisplayItem.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)toSizeOfMovingDisplayItem
{
  width = self->_toSizeOfMovingDisplayItem.width;
  height = self->_toSizeOfMovingDisplayItem.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)toCenterOfMovingDisplayItem
{
  x = self->_toCenterOfMovingDisplayItem.x;
  y = self->_toCenterOfMovingDisplayItem.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)debugPredicateSummary
{
  v75 = *MEMORY[0x277D85DE8];
  v68 = objc_opt_new();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v49 = NSStringFromSelector(sel_isAnyPulseEvent);
  v73[0] = v49;
  v47 = NSStringFromSelector(sel_isMainPulseEvent);
  v73[1] = v47;
  v46 = NSStringFromSelector(sel_isFloatingPulseEvent);
  v73[2] = v46;
  v65 = NSStringFromSelector(sel_isFullScreenToSplitViewEvent);
  v73[3] = v65;
  v64 = NSStringFromSelector(sel_isSplitViewCrossfadeEvent);
  v73[4] = v64;
  v63 = NSStringFromSelector(sel_isAnySplitViewToOrFromSlideOverEvent);
  v73[5] = v63;
  v62 = NSStringFromSelector(sel_isPrimaryToSlideOverEvent);
  v73[6] = v62;
  v61 = NSStringFromSelector(sel_isSideToSlideOverEvent);
  v73[7] = v61;
  v60 = NSStringFromSelector(sel_isSlideOverToPrimaryEvent);
  v73[8] = v60;
  v59 = NSStringFromSelector(sel_isSlideOverToSideEvent);
  v73[9] = v59;
  v58 = NSStringFromSelector(sel_isSlideOverToFullScreenEvent);
  v73[10] = v58;
  v57 = NSStringFromSelector(sel_isEnteringAnyPeekEvent);
  v73[11] = v57;
  v56 = NSStringFromSelector(sel_isExitingAnyPeekEvent);
  v73[12] = v56;
  v55 = NSStringFromSelector(sel_isEnteringSplitViewPeekEvent);
  v73[13] = v55;
  v54 = NSStringFromSelector(sel_isExitingSplitViewPeekEvent);
  v73[14] = v54;
  v53 = NSStringFromSelector(sel_isExitingSplitViewPeekToAppEvent);
  v73[15] = v53;
  v52 = NSStringFromSelector(sel_isExitingSplitViewPeekToHomeScreenEvent);
  v73[16] = v52;
  v51 = NSStringFromSelector(sel_isEnteringSlideOverPeekEvent);
  v73[17] = v51;
  v50 = NSStringFromSelector(sel_isExitingSlideOverPeekEvent);
  v73[18] = v50;
  v48 = NSStringFromSelector(sel_isExitingSlideOverPeekToAppEvent);
  v73[19] = v48;
  v45 = NSStringFromSelector(sel_isExitingSlideOverPeekToHomeScreenEvent);
  v73[20] = v45;
  v44 = NSStringFromSelector(sel_isExitingCenterWindowEvent);
  v73[21] = v44;
  v43 = NSStringFromSelector(sel_isCenterWindowRemovalEvent);
  v73[22] = v43;
  v42 = NSStringFromSelector(sel_isCenterWindowToFullScreenEvent);
  v73[23] = v42;
  v41 = NSStringFromSelector(sel_isCenterWindowToSlideOverEvent);
  v73[24] = v41;
  v40 = NSStringFromSelector(sel_isCenterWindowToNewSplitViewEvent);
  v73[25] = v40;
  v39 = NSStringFromSelector(sel_isCenterWindowToExistingSplitViewEvent);
  v73[26] = v39;
  v38 = NSStringFromSelector(sel_isReplaceCenterWindowWithNewCenterWindowEvent);
  v73[27] = v38;
  v37 = NSStringFromSelector(sel_isPresentingPageCenterWindowEvent);
  v73[28] = v37;
  v36 = NSStringFromSelector(sel_isSplitViewToCenterWindowEvent);
  v73[29] = v36;
  v35 = NSStringFromSelector(sel_isSlideOverToCenterWindowEvent);
  v73[30] = v35;
  v34 = NSStringFromSelector(sel_isFullScreenToCenterWindowEvent);
  v73[31] = v34;
  v33 = NSStringFromSelector(sel_isSwappingFullScreenAppSidesEvent);
  v73[32] = v33;
  v32 = NSStringFromSelector(sel_isCenterWindowZoomingUpFromShelfEvent);
  v73[33] = v32;
  v31 = NSStringFromSelector(sel_isGestureInitiated);
  v73[34] = v31;
  v30 = NSStringFromSelector(sel_isDragAndDropTransition);
  v73[35] = v30;
  v29 = NSStringFromSelector(sel_isBreadcrumbTransition);
  v73[36] = v29;
  v28 = NSStringFromSelector(sel_isMorphToPIPTransition);
  v73[37] = v28;
  v27 = NSStringFromSelector(sel_isMorphFromPIPTransition);
  v73[38] = v27;
  v26 = NSStringFromSelector(sel_isContinuityTransition);
  v73[39] = v26;
  v25 = NSStringFromSelector(sel_isBannerUnfurlTransition);
  v73[40] = v25;
  v24 = NSStringFromSelector(sel_isIconZoomDisabled);
  v73[41] = v24;
  v23 = NSStringFromSelector(sel_isSpotlightTransition);
  v73[42] = v23;
  v2 = NSStringFromSelector(sel_isShelfTransition);
  v73[43] = v2;
  v3 = NSStringFromSelector(sel_isShelfRequestTransition);
  v73[44] = v3;
  v4 = NSStringFromSelector(sel_isMorphFromInAppView);
  v73[45] = v4;
  v5 = NSStringFromSelector(sel_isQuickActionTransition);
  v73[46] = v5;
  v6 = NSStringFromSelector(sel_isNewSceneTransition);
  v73[47] = v6;
  v7 = NSStringFromSelector(sel_isMoveDisplaysTransition);
  v73[48] = v7;
  v8 = NSStringFromSelector(sel_isContinuousExposeConfigurationChangeEvent);
  v73[49] = v8;
  v9 = NSStringFromSelector(sel_isiPadOSWindowingModeChangeEvent);
  v73[50] = v9;
  v10 = NSStringFromSelector(sel_isCommandTabTransition);
  v73[51] = v10;
  v11 = NSStringFromSelector(sel_isLaunchingFromDockTransition);
  v73[52] = v11;
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:53];

  v12 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v70;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v70 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v69 + 1) + 8 * i);
        v17 = [(SBTransitionSwitcherModifierEvent *)self valueForKeyPath:v16];
        v18 = [v17 BOOLValue];

        if (v18)
        {
          v19 = @"YES";
        }

        else
        {
          v19 = @"NO";
        }

        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v16, v19];
        [v68 addObject:v20];
      }

      v13 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    }

    while (v13);
  }

  v21 = [v68 componentsJoinedByString:@"\n"];

  return v21;
}

@end