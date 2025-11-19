@interface SBShelfSwitcherModifier
+ (unint64_t)contentOptionsForTransitionEvent:(id)a3 context:(id)a4;
- (CGRect)frameForShelf:(id)a3;
- (SBShelfSwitcherModifier)initWithShelf:(id)a3 contentOptions:(unint64_t)a4 activeFullScreenAppLayout:(id)a5 activeFloatingAppLayout:(id)a6 presentationTargetFrame:(CGRect)a7 presentedFromAppLayout:(id)a8;
- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)a3;
- (id)_responseForDismissingIfNeededGestureInitiated:(BOOL)a3;
- (id)containerLeafAppLayoutForShelf:(id)a3;
- (id)focusedAppLayoutForShelf:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)a3;
- (id)ignoredDisplayItemsForShelf:(id)a3;
- (id)topMostLayoutElements;
- (id)visibleShelves;
@end

@implementation SBShelfSwitcherModifier

+ (unint64_t)contentOptionsForTransitionEvent:(id)a3 context:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v48 = [v5 fromEnvironmentMode] == 3;
  v49 = [v5 toEnvironmentMode];
  v51 = [v5 fromAppLayout];
  v50 = [v5 toAppLayout];
  v47 = [v5 isQuickActionTransition];
  v7 = [v5 fromWindowPickerRole];
  if (v7 != [v5 toWindowPickerRole] && objc_msgSend(v5, "toWindowPickerRole"))
  {
    if ([v5 toWindowPickerRole] == 3)
    {
      v22 = [v5 toFloatingAppLayout];
      v23 = v22;
      v24 = 1;
    }

    else
    {
      v23 = [v5 toAppLayout];
      v24 = [v5 toWindowPickerRole];
      v22 = v23;
    }

    v25 = [v22 itemForLayoutRole:v24];
    v13 = [v25 bundleIdentifier];

    if ([v5 isExitingSplitViewPeekEvent])
    {

      v51 = 0;
      v48 = 0;
    }

    if (!v13)
    {
      goto LABEL_5;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v14 = [v6 appLayouts];
    v26 = [v14 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v26)
    {
      v27 = v26;
      v45 = v6;
      v46 = v5;
      v28 = 0;
      v29 = *v60;
      v52 = *v60;
      v53 = v14;
LABEL_29:
      v30 = 0;
      v54 = v27;
      while (1)
      {
        if (*v60 != v29)
        {
          objc_enumerationMutation(v14);
        }

        v31 = *(*(&v59 + 1) + 8 * v30);
        if ([v31 environment] != 3 && objc_msgSend(v31, "containsItemWithBundleIdentifier:", v13))
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v32 = [v31 allItems];
          v33 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
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
                  objc_enumerationMutation(v32);
                }

                v38 = [*(*(&v55 + 1) + 8 * i) bundleIdentifier];
                v39 = BSEqualStrings();

                v35 += v39;
              }

              v34 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
            }

            while (v34);
          }

          else
          {
            v35 = 0;
          }

          v28 += v35;
          v29 = v52;
          v14 = v53;
          v27 = v54;
          if (v28 > 1)
          {
            break;
          }
        }

        if (++v30 == v27)
        {
          v27 = [v14 countByEnumeratingWithState:&v59 objects:v68 count:16];
          if (v27)
          {
            goto LABEL_29;
          }

          break;
        }
      }

      v6 = v45;
      v5 = v46;
    }

LABEL_47:

    v40 = 5;
    if (v49 == 3)
    {
      v41 = 7;
    }

    else
    {
      v41 = 5;
    }

    v42 = v49 == 3 && v48;
    if (!v48)
    {
      v40 = v41;
    }

    v43 = !v42;
    if (v51 == v50)
    {
      v43 = 1;
    }

    if ((v42 & ((v51 == v50) | v47)) != 0)
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

  v8 = [v5 fromAppExposeBundleID];
  v9 = [v5 toAppExposeBundleID];
  if (BSEqualStrings())
  {

LABEL_5:
    v10 = 0;
    goto LABEL_63;
  }

  v11 = [v5 toAppExposeBundleID];

  v10 = 0;
  if (v11 && v49 == 3)
  {
    v12 = [v5 toAppExposeBundleID];
    if (!v12)
    {
      goto LABEL_5;
    }

    v13 = v12;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v14 = [v6 appLayouts];
    v15 = [v14 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = v6;
      v18 = 0;
      v19 = *v64;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v64 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v63 + 1) + 8 * j);
          if ([v21 environment] != 3 && objc_msgSend(v21, "containsItemWithBundleIdentifier:", v13))
          {
            if (v18 == 1)
            {
              goto LABEL_20;
            }

            v18 = 1;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v16);
LABEL_20:
      v6 = v17;
    }

    goto LABEL_47;
  }

LABEL_63:

  return v10;
}

- (SBShelfSwitcherModifier)initWithShelf:(id)a3 contentOptions:(unint64_t)a4 activeFullScreenAppLayout:(id)a5 activeFloatingAppLayout:(id)a6 presentationTargetFrame:(CGRect)a7 presentedFromAppLayout:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v25.receiver = self;
  v25.super_class = SBShelfSwitcherModifier;
  v22 = [(SBSwitcherModifier *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_shelf, a3);
    v23->_layoutRole = [v18 layoutRole];
    v23->_contentOptions = a4;
    objc_storeStrong(&v23->_activeFullScreenAppLayout, a5);
    objc_storeStrong(&v23->_activeFloatingAppLayout, a6);
    v23->_presentationTargetFrame.origin.x = x;
    v23->_presentationTargetFrame.origin.y = y;
    v23->_presentationTargetFrame.size.width = width;
    v23->_presentationTargetFrame.size.height = height;
    objc_storeStrong(&v23->_presentedFromAppLayout, a8);
  }

  return v23;
}

- (id)visibleShelves
{
  v3 = [(SBSwitcherShelf *)self->_shelf bundleIdentifier];
  if (([(SBShelfSwitcherModifier *)self isShieldingApplicationWithBundleIdentifier:v3]& 1) != 0)
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

- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)a3
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
        v11 = [(SBSwitcherShelf *)self->_shelf bundleIdentifier];
        v12 = [(SBAppLayout *)presentedFromAppLayout containsItemWithBundleIdentifier:v11];

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

- (id)containerLeafAppLayoutForShelf:(id)a3
{
  v4 = a3;
  if ([(SBSwitcherShelf *)self->_shelf isEqual:v4])
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
    v7 = [(SBShelfSwitcherModifier *)&v9 containerLeafAppLayoutForShelf:v4];
  }

  v6 = v7;
LABEL_6:

  return v6;
}

- (CGRect)frameForShelf:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_shelf])
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

    v23 = [(SBShelfSwitcherModifier *)self medusaSettings];
    [v23 switcherShelfCardScale];
    v25 = v24;
    [v23 switcherShelfBottomSpacing];
    v16 = v26 + v25 * v9;
    v13 = v9 - v16;
  }

  else
  {
    v31.receiver = self;
    v31.super_class = SBShelfSwitcherModifier;
    [(SBShelfSwitcherModifier *)&v31 frameForShelf:v4];
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

- (id)focusedAppLayoutForShelf:(id)a3
{
  v4 = a3;
  if (![v4 isEqual:self->_shelf])
  {
    v10.receiver = self;
    v10.super_class = SBShelfSwitcherModifier;
    v7 = [(SBShelfSwitcherModifier *)&v10 focusedAppLayoutForShelf:v4];
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

- (id)ignoredDisplayItemsForShelf:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_shelf])
  {
    v5 = [(SBAppLayout *)self->_activeFullScreenAppLayout allItems];
    v6 = [(SBAppLayout *)self->_activeFloatingAppLayout allItems];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];

    v8 = [v7 mutableCopy];
    v9 = [(SBShelfSwitcherModifier *)self focusedAppLayoutForShelf:v4];
    v10 = [v9 allItems];
    [v8 removeObjectsInArray:v10];

    v11 = [MEMORY[0x277CBEB98] setWithArray:v8];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBShelfSwitcherModifier;
    v11 = [(SBShelfSwitcherModifier *)&v13 ignoredDisplayItemsForShelf:v4];
  }

  return v11;
}

- (id)topMostLayoutElements
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SBShelfSwitcherModifier;
  v3 = [(SBShelfSwitcherModifier *)&v8 topMostLayoutElements];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
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

- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)a3
{
  v4 = a3;
  if ([(SBSwitcherShelf *)self->_shelf isEqual:v4]&& (![(SBSwitcherShelf *)self->_shelf displayMode]|| (SBLayoutRoleIsValidForSplitView(self->_layoutRole) & 1) != 0 || self->_layoutRole == 3))
  {
    v9.receiver = self;
    v9.super_class = SBShelfSwitcherModifier;
    v5 = [(SBShelfSwitcherModifier *)&v9 visibleHomeAffordanceLayoutElements];
    v6 = [v5 anyObject];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBShelfSwitcherModifier;
    v6 = [(SBShelfSwitcherModifier *)&v8 homeAffordanceLayoutElementToPortalIntoShelf:v4];
  }

  return v6;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBShelfSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v16 handleTransitionEvent:v4];
  v6 = [v4 toAppLayout];
  activeFullScreenAppLayout = self->_activeFullScreenAppLayout;
  self->_activeFullScreenAppLayout = v6;

  v8 = [v4 toFloatingAppLayout];
  activeFloatingAppLayout = self->_activeFloatingAppLayout;
  self->_activeFloatingAppLayout = v8;

  v10 = [v4 phase];
  if (-[SBSwitcherShelf displayMode](self->_shelf, "displayMode") || ([v4 toAppExposeBundleID], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    if ([(SBSwitcherShelf *)self->_shelf displayMode]!= 1)
    {
      goto LABEL_13;
    }

    if ([v4 toWindowPickerRole] == self->_layoutRole || v10 == 0)
    {
      goto LABEL_13;
    }
  }

  else if (!v10)
  {
    goto LABEL_13;
  }

  if (v10 == 1)
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

- (id)handleGestureEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBShelfSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v8 handleGestureEvent:a3];
  v5 = [(SBShelfSwitcherModifier *)self _responseForDismissingIfNeededGestureInitiated:1];
  v6 = SBAppendSwitcherModifierResponse(v5, v4);

  return v6;
}

- (id)_responseForDismissingIfNeededGestureInitiated:(BOOL)a3
{
  if (self->_isPendingDismissal)
  {
    v5 = 0;
  }

  else
  {
    self->_isPendingDismissal = 1;
    self->_isPendingDismissalFromGesture = a3;
    v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3, v3];
  }

  return v5;
}

@end