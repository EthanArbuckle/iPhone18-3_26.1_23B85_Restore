@interface SBShelfSwitcherModifier
+ (unint64_t)contentOptionsForTransitionEvent:(id)event context:(id)context;
- (CGRect)frameForShelf:(id)shelf;
- (SBShelfSwitcherModifier)initWithShelf:(id)shelf contentOptions:(unint64_t)options activeFullScreenAppLayout:(id)layout activeFloatingAppLayout:(id)appLayout presentationTargetFrame:(CGRect)frame presentedFromAppLayout:(id)fromAppLayout;
- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)shelf;
- (id)_responseForDismissingIfNeededGestureInitiated:(BOOL)initiated;
- (id)containerLeafAppLayoutForShelf:(id)shelf;
- (id)focusedAppLayoutForShelf:(id)shelf;
- (id)handleGestureEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)shelf;
- (id)ignoredDisplayItemsForShelf:(id)shelf;
- (id)topMostLayoutElements;
- (id)visibleShelves;
@end

@implementation SBShelfSwitcherModifier

+ (unint64_t)contentOptionsForTransitionEvent:(id)event context:(id)context
{
  v70 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  contextCopy = context;
  v48 = [eventCopy fromEnvironmentMode] == 3;
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  fromAppLayout = [eventCopy fromAppLayout];
  toAppLayout = [eventCopy toAppLayout];
  isQuickActionTransition = [eventCopy isQuickActionTransition];
  fromWindowPickerRole = [eventCopy fromWindowPickerRole];
  if (fromWindowPickerRole != [eventCopy toWindowPickerRole] && objc_msgSend(eventCopy, "toWindowPickerRole"))
  {
    if ([eventCopy toWindowPickerRole] == 3)
    {
      toFloatingAppLayout = [eventCopy toFloatingAppLayout];
      toAppLayout2 = toFloatingAppLayout;
      toWindowPickerRole = 1;
    }

    else
    {
      toAppLayout2 = [eventCopy toAppLayout];
      toWindowPickerRole = [eventCopy toWindowPickerRole];
      toFloatingAppLayout = toAppLayout2;
    }

    v25 = [toFloatingAppLayout itemForLayoutRole:toWindowPickerRole];
    bundleIdentifier = [v25 bundleIdentifier];

    if ([eventCopy isExitingSplitViewPeekEvent])
    {

      fromAppLayout = 0;
      v48 = 0;
    }

    if (!bundleIdentifier)
    {
      goto LABEL_5;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    appLayouts = [contextCopy appLayouts];
    v26 = [appLayouts countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v26)
    {
      v27 = v26;
      v45 = contextCopy;
      v46 = eventCopy;
      v28 = 0;
      v29 = *v60;
      v52 = *v60;
      v53 = appLayouts;
LABEL_29:
      v30 = 0;
      v54 = v27;
      while (1)
      {
        if (*v60 != v29)
        {
          objc_enumerationMutation(appLayouts);
        }

        v31 = *(*(&v59 + 1) + 8 * v30);
        if ([v31 environment] != 3 && objc_msgSend(v31, "containsItemWithBundleIdentifier:", bundleIdentifier))
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          allItems = [v31 allItems];
          v33 = [allItems countByEnumeratingWithState:&v55 objects:v67 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = 0;
            v36 = *v56;
            do
            {
              for (i = 0; i != v34; ++i)
              {
                if (*v56 != v36)
                {
                  objc_enumerationMutation(allItems);
                }

                bundleIdentifier2 = [*(*(&v55 + 1) + 8 * i) bundleIdentifier];
                v39 = BSEqualStrings();

                v35 += v39;
              }

              v34 = [allItems countByEnumeratingWithState:&v55 objects:v67 count:16];
            }

            while (v34);
          }

          else
          {
            v35 = 0;
          }

          v28 += v35;
          v29 = v52;
          appLayouts = v53;
          v27 = v54;
          if (v28 > 1)
          {
            break;
          }
        }

        if (++v30 == v27)
        {
          v27 = [appLayouts countByEnumeratingWithState:&v59 objects:v68 count:16];
          if (v27)
          {
            goto LABEL_29;
          }

          break;
        }
      }

      contextCopy = v45;
      eventCopy = v46;
    }

LABEL_47:

    v40 = 5;
    if (toEnvironmentMode == 3)
    {
      v41 = 7;
    }

    else
    {
      v41 = 5;
    }

    v42 = toEnvironmentMode == 3 && v48;
    if (!v48)
    {
      v40 = v41;
    }

    v43 = !v42;
    if (fromAppLayout == toAppLayout)
    {
      v43 = 1;
    }

    if ((v42 & ((fromAppLayout == toAppLayout) | isQuickActionTransition)) != 0)
    {
      v40 = 7;
    }

    if (v43)
    {
      v10 = v40;
    }

    else
    {
      v10 = 7;
    }

    goto LABEL_63;
  }

  fromAppExposeBundleID = [eventCopy fromAppExposeBundleID];
  toAppExposeBundleID = [eventCopy toAppExposeBundleID];
  if (BSEqualStrings())
  {

LABEL_5:
    v10 = 0;
    goto LABEL_63;
  }

  toAppExposeBundleID2 = [eventCopy toAppExposeBundleID];

  v10 = 0;
  if (toAppExposeBundleID2 && toEnvironmentMode == 3)
  {
    toAppExposeBundleID3 = [eventCopy toAppExposeBundleID];
    if (!toAppExposeBundleID3)
    {
      goto LABEL_5;
    }

    bundleIdentifier = toAppExposeBundleID3;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    appLayouts = [contextCopy appLayouts];
    v15 = [appLayouts countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = contextCopy;
      v18 = 0;
      v19 = *v64;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v64 != v19)
          {
            objc_enumerationMutation(appLayouts);
          }

          v21 = *(*(&v63 + 1) + 8 * j);
          if ([v21 environment] != 3 && objc_msgSend(v21, "containsItemWithBundleIdentifier:", bundleIdentifier))
          {
            if (v18 == 1)
            {
              goto LABEL_20;
            }

            v18 = 1;
          }
        }

        v16 = [appLayouts countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v16);
LABEL_20:
      contextCopy = v17;
    }

    goto LABEL_47;
  }

LABEL_63:

  return v10;
}

- (SBShelfSwitcherModifier)initWithShelf:(id)shelf contentOptions:(unint64_t)options activeFullScreenAppLayout:(id)layout activeFloatingAppLayout:(id)appLayout presentationTargetFrame:(CGRect)frame presentedFromAppLayout:(id)fromAppLayout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  shelfCopy = shelf;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  fromAppLayoutCopy = fromAppLayout;
  v25.receiver = self;
  v25.super_class = SBShelfSwitcherModifier;
  v22 = [(SBSwitcherModifier *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_shelf, shelf);
    v23->_layoutRole = [shelfCopy layoutRole];
    v23->_contentOptions = options;
    objc_storeStrong(&v23->_activeFullScreenAppLayout, layout);
    objc_storeStrong(&v23->_activeFloatingAppLayout, appLayout);
    v23->_presentationTargetFrame.origin.x = x;
    v23->_presentationTargetFrame.origin.y = y;
    v23->_presentationTargetFrame.size.width = width;
    v23->_presentationTargetFrame.size.height = height;
    objc_storeStrong(&v23->_presentedFromAppLayout, fromAppLayout);
  }

  return v23;
}

- (id)visibleShelves
{
  bundleIdentifier = [(SBSwitcherShelf *)self->_shelf bundleIdentifier];
  if (([(SBShelfSwitcherModifier *)self isShieldingApplicationWithBundleIdentifier:bundleIdentifier]& 1) != 0)
  {
    [MEMORY[0x277CBEB98] set];
  }

  else
  {
    [MEMORY[0x277CBEB98] setWithObject:self->_shelf];
  }
  v4 = ;

  return v4;
}

- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)shelf
{
  v6 = a4;
  if ([(SBSwitcherShelf *)self->_shelf isEqual:v6])
  {
    isPendingDismissal = self->_isPendingDismissal;
    IsNull = CGRectIsNull(self->_presentationTargetFrame);
    if (isPendingDismissal)
    {
      if (!IsNull && !self->_isPendingDismissalFromGesture && self->_activeFullScreenAppLayout && ([(SBShelfSwitcherModifier *)self isFloatingDockFullyPresented]& 1) == 0)
      {
        v9 = 1;
LABEL_13:
        SBSwitcherShelfPresentationAttributesMake(!isPendingDismissal, v9, self->_contentOptions, retstr, self->_presentationTargetFrame.origin.x, self->_presentationTargetFrame.origin.y, self->_presentationTargetFrame.size.width, self->_presentationTargetFrame.size.height);
        goto LABEL_14;
      }
    }

    else if (!IsNull)
    {
      presentedFromAppLayout = self->_presentedFromAppLayout;
      if (presentedFromAppLayout)
      {
        bundleIdentifier = [(SBSwitcherShelf *)self->_shelf bundleIdentifier];
        v12 = [(SBAppLayout *)presentedFromAppLayout containsItemWithBundleIdentifier:bundleIdentifier];

        v9 = v12;
        goto LABEL_13;
      }
    }

    v9 = 0;
    goto LABEL_13;
  }

  v14.receiver = self;
  v14.super_class = SBShelfSwitcherModifier;
  [(SBSwitcherShelfPresentationAttributes *)&v14 presentationAttributesForShelf:v6];
LABEL_14:

  return result;
}

- (id)containerLeafAppLayoutForShelf:(id)shelf
{
  shelfCopy = shelf;
  if ([(SBSwitcherShelf *)self->_shelf isEqual:shelfCopy])
  {
    layoutRole = self->_layoutRole;
    if (!layoutRole)
    {
      v6 = 0;
      goto LABEL_6;
    }

    if (layoutRole == 3)
    {
      v7 = self->_activeFloatingAppLayout;
    }

    else
    {
      v7 = [(SBAppLayout *)self->_activeFullScreenAppLayout leafAppLayoutForRole:?];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBShelfSwitcherModifier;
    v7 = [(SBShelfSwitcherModifier *)&v9 containerLeafAppLayoutForShelf:shelfCopy];
  }

  v6 = v7;
LABEL_6:

  return v6;
}

- (CGRect)frameForShelf:(id)shelf
{
  shelfCopy = shelf;
  if ([shelfCopy isEqual:self->_shelf])
  {
    layoutRole = self->_layoutRole;
    if (layoutRole)
    {
      if (layoutRole == 3)
      {
        [(SBShelfSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:[(SBShelfSwitcherModifier *)self switcherInterfaceOrientation] floatingConfiguration:2];
        v7 = v17;
        v9 = v18;
        v10 = 0.0;
      }

      else
      {
        activeFullScreenAppLayout = self->_activeFullScreenAppLayout;
        [(SBShelfSwitcherModifier *)self containerViewBounds];
        [(SBShelfSwitcherModifier *)self frameForLayoutRole:layoutRole inAppLayout:activeFullScreenAppLayout withBounds:?];
        v10 = v20;
        v7 = v21;
        v9 = v22;
      }
    }

    else
    {
      [(SBShelfSwitcherModifier *)self containerViewBounds];
      v7 = v6;
      v9 = v8;
      v10 = *MEMORY[0x277CBF348];
    }

    medusaSettings = [(SBShelfSwitcherModifier *)self medusaSettings];
    [medusaSettings switcherShelfCardScale];
    v25 = v24;
    [medusaSettings switcherShelfBottomSpacing];
    v16 = v26 + v25 * v9;
    v13 = v9 - v16;
  }

  else
  {
    v31.receiver = self;
    v31.super_class = SBShelfSwitcherModifier;
    [(SBShelfSwitcherModifier *)&v31 frameForShelf:shelfCopy];
    v10 = v11;
    v13 = v12;
    v7 = v14;
    v16 = v15;
  }

  v27 = v10;
  v28 = v13;
  v29 = v7;
  v30 = v16;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (id)focusedAppLayoutForShelf:(id)shelf
{
  shelfCopy = shelf;
  if (![shelfCopy isEqual:self->_shelf])
  {
    v10.receiver = self;
    v10.super_class = SBShelfSwitcherModifier;
    v7 = [(SBShelfSwitcherModifier *)&v10 focusedAppLayoutForShelf:shelfCopy];
    goto LABEL_9;
  }

  layoutRole = self->_layoutRole;
  if (!layoutRole)
  {
    v6 = 136;
LABEL_7:
    v7 = *(&self->super.super.super.super.isa + v6);
    goto LABEL_9;
  }

  if (layoutRole == 3)
  {
    v6 = 144;
    goto LABEL_7;
  }

  v7 = [(SBAppLayout *)self->_activeFullScreenAppLayout leafAppLayoutForRole:?];
LABEL_9:
  v8 = v7;

  return v8;
}

- (id)ignoredDisplayItemsForShelf:(id)shelf
{
  shelfCopy = shelf;
  if ([shelfCopy isEqual:self->_shelf])
  {
    allItems = [(SBAppLayout *)self->_activeFullScreenAppLayout allItems];
    allItems2 = [(SBAppLayout *)self->_activeFloatingAppLayout allItems];
    v7 = [allItems arrayByAddingObjectsFromArray:allItems2];

    v8 = [v7 mutableCopy];
    v9 = [(SBShelfSwitcherModifier *)self focusedAppLayoutForShelf:shelfCopy];
    allItems3 = [v9 allItems];
    [v8 removeObjectsInArray:allItems3];

    v11 = [MEMORY[0x277CBEB98] setWithArray:v8];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBShelfSwitcherModifier;
    v11 = [(SBShelfSwitcherModifier *)&v13 ignoredDisplayItemsForShelf:shelfCopy];
  }

  return v11;
}

- (id)topMostLayoutElements
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SBShelfSwitcherModifier;
  topMostLayoutElements = [(SBShelfSwitcherModifier *)&v8 topMostLayoutElements];
  v4 = topMostLayoutElements;
  if (topMostLayoutElements)
  {
    v5 = [topMostLayoutElements mutableCopy];
    v6 = [v5 indexOfObject:self->_shelf];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 removeObjectAtIndex:v6];
    }

    [v5 insertObject:self->_shelf atIndex:0];
  }

  else
  {
    v9[0] = self->_shelf;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  return v5;
}

- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)shelf
{
  shelfCopy = shelf;
  if ([(SBSwitcherShelf *)self->_shelf isEqual:shelfCopy]&& (![(SBSwitcherShelf *)self->_shelf displayMode]|| (SBLayoutRoleIsValidForSplitView(self->_layoutRole) & 1) != 0 || self->_layoutRole == 3))
  {
    v9.receiver = self;
    v9.super_class = SBShelfSwitcherModifier;
    visibleHomeAffordanceLayoutElements = [(SBShelfSwitcherModifier *)&v9 visibleHomeAffordanceLayoutElements];
    anyObject = [visibleHomeAffordanceLayoutElements anyObject];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBShelfSwitcherModifier;
    anyObject = [(SBShelfSwitcherModifier *)&v8 homeAffordanceLayoutElementToPortalIntoShelf:shelfCopy];
  }

  return anyObject;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = SBShelfSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v16 handleTransitionEvent:eventCopy];
  toAppLayout = [eventCopy toAppLayout];
  activeFullScreenAppLayout = self->_activeFullScreenAppLayout;
  self->_activeFullScreenAppLayout = toAppLayout;

  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  activeFloatingAppLayout = self->_activeFloatingAppLayout;
  self->_activeFloatingAppLayout = toFloatingAppLayout;

  phase = [eventCopy phase];
  if (-[SBSwitcherShelf displayMode](self->_shelf, "displayMode") || ([eventCopy toAppExposeBundleID], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    if ([(SBSwitcherShelf *)self->_shelf displayMode]!= 1)
    {
      goto LABEL_13;
    }

    if ([eventCopy toWindowPickerRole] == self->_layoutRole || phase == 0)
    {
      goto LABEL_13;
    }
  }

  else if (!phase)
  {
    goto LABEL_13;
  }

  if (phase == 1)
  {
    v13 = [(SBShelfSwitcherModifier *)self _responseForDismissingIfNeededGestureInitiated:0];
    v14 = SBAppendSwitcherModifierResponse(v13, v5);

    v5 = v14;
  }

  else
  {
    [(SBChainableModifier *)self setState:1];
  }

LABEL_13:

  return v5;
}

- (id)handleGestureEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBShelfSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v8 handleGestureEvent:event];
  v5 = [(SBShelfSwitcherModifier *)self _responseForDismissingIfNeededGestureInitiated:1];
  v6 = SBAppendSwitcherModifierResponse(v5, v4);

  return v6;
}

- (id)_responseForDismissingIfNeededGestureInitiated:(BOOL)initiated
{
  if (self->_isPendingDismissal)
  {
    v5 = 0;
  }

  else
  {
    self->_isPendingDismissal = 1;
    self->_isPendingDismissalFromGesture = initiated;
    v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3, v3];
  }

  return v5;
}

@end