@interface SBSwitcherModifier
- (BOOL)appLayoutContainsFullScreenDisplayItem:(id)item;
- (BOOL)assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdrop;
- (BOOL)autoLayoutItemIntersectsHomeAffordanceArea:(id)area;
- (BOOL)shouldZoomToSystemApertureForEvent:(id)event activeLayout:(id)layout;
- (BOOL)supportsHomeAffordanceForItem:(id)item;
- (CGPoint)perspectiveAngleForItem:(id)item;
- (CGRect)frameForContinuousExposePeekingDisplayItem:(id)item inAppLayout:(id)layout bounds:(CGRect)bounds defaultFrameForLayoutRole:(CGRect)role;
- (CGRect)scaledFrameForIndex:(unint64_t)index;
- (CGRect)scaledFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (SBSwitcherModifier)init;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForItem:(id)item;
- (SBWindowingItemCorners)cornersForItem:(SEL)item;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (SBWindowingItemShadow)shadowForItem:(id)item;
- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item;
- (double)dimmingAlphaForItem:(id)item;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)search numberOfRows:(unint64_t)rows padding:(double)padding layoutDirection:(unint64_t)direction;
- (double)opacityForItem:(id)item;
- (id)_handleEvent:(id)event;
- (id)appLayoutsToCacheSnapshotsWithVisibleRange:(_NSRange)range numberOfSnapshotsToCache:(unint64_t)cache biasForward:(BOOL)forward;
- (id)defaultAppLayoutsToCacheSnapshots;
- (id)defaultMultitaskingLayoutAttributesForDisplayItem:(id)item layoutAttributes:(id)attributes layoutGrid:(id)grid;
- (id)displayName;
- (id)flexibleAutoLayoutSpaceForAppLayout:(id)layout;
- (id)flexibleAutoLayoutSpaceForAppLayout:(id)layout calculatedUsingNewLayoutAttributesMap:(id)map itemsNeedingPositionSnapping:(id)snapping itemsNeedingSizeSnapping:(id)sizeSnapping;
- (id)stackDescriptionWithPrefix:(id)prefix;
- (id)topMostLayoutElementsByAddingAppLayoutAndAccessories:(id)accessories toTopMostLayoutElements:(id)elements orderFront:(BOOL)front;
- (id)windowingConfiguration;
- (uint64_t)_indexOfAppLayout:(void *)layout;
- (uint64_t)setWindowing_cachedAppLayoutsGenerationCount:(uint64_t)result;
- (uint64_t)setWindowing_cachedIndex:(uint64_t)result;
- (uint64_t)windowing_cachedAppLayout;
- (uint64_t)windowing_cachedAppLayoutsGenerationCount;
- (uint64_t)windowing_cachedIndex;
- (unint64_t)indexOfFirstFloatingAppFromAppLayouts:(id)layouts;
- (unint64_t)indexOfFirstMainAppLayoutFromAppLayouts:(id)layouts;
- (unint64_t)personalityDebugColorStyleForItem:(id)item;
- (void)performWithTemporarilyInsertedAppLayout:(id)layout atIndex:(unint64_t)index block:(id)block;
- (void)setWindowing_cachedAppLayout:(uint64_t)layout;
@end

@implementation SBSwitcherModifier

- (SBSwitcherModifier)init
{
  v5.receiver = self;
  v5.super_class = SBSwitcherModifier;
  v2 = [(SBChainableModifier *)&v5 init];
  if (v2)
  {
    v3 = +[SBPlatformController sharedInstance];
    v2->_verifyModifierStackCoherencyCheckAfterHandlingEvent = [v3 isInternalInstall];
  }

  return v2;
}

- (id)defaultAppLayoutsToCacheSnapshots
{
  if ([(SBSwitcherModifier *)self isDevicePad])
  {
    switcherSettings = [(SBSwitcherModifier *)self switcherSettings];
    numberOfSnapshotsToAlwaysKeepAround = [switcherSettings numberOfSnapshotsToAlwaysKeepAround];

    appLayouts = [(SBSwitcherModifier *)self appLayouts];
    v11.length = [appLayouts count];
    v10.location = 0;
    v10.length = numberOfSnapshotsToAlwaysKeepAround;
    v11.location = 0;
    v6 = NSIntersectionRange(v10, v11);
    v7 = [appLayouts subarrayWithRange:{v6.location, v6.length}];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (BOOL)assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdrop
{
  isSystemAssistantExperienceEnabled = [(SBSwitcherModifier *)self isSystemAssistantExperienceEnabled];
  v4 = [(SBSwitcherModifier *)self assistantPresentationState]== 2 || [(SBSwitcherModifier *)self assistantPresentationState]== 3;
  v5 = v4 & [(SBSwitcherModifier *)self assistantWantsDeemphasizedBackdrop];
  return isSystemAssistantExperienceEnabled && v5;
}

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)search numberOfRows:(unint64_t)rows padding:(double)padding layoutDirection:(unint64_t)direction
{
  appLayouts = [(SBSwitcherModifier *)self appLayouts];
  v12 = [appLayouts count];
  visibleAppLayouts = [(SBSwitcherModifier *)self visibleAppLayouts];
  if (search == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v12)
    {
      search = v12 - 1;
    }

    else
    {
      search = 0;
    }
  }

  else
  {
    v14 = [appLayouts objectAtIndex:search];
    v15 = [visibleAppLayouts containsObject:v14];

    v16 = v12 - 1;
    if (!v12)
    {
      v16 = 0;
    }

    if ((v15 & 1) == 0)
    {
      search = v16;
    }
  }

  v17 = search % rows;
  if (direction)
  {
    rowsCopy = rows;
  }

  else
  {
    rowsCopy = -rows;
  }

  v19 = 0.0;
  if (search >= v17 && search < v12)
  {
    v21 = [appLayouts objectAtIndex:search];
    v22 = [visibleAppLayouts containsObject:v21];

    searchCopy = 0x7FFFFFFFFFFFFFFFLL;
    if (v22)
    {
      do
      {
        searchCopy = search;
        search += rowsCopy;
        if (search < v17 || search >= v12)
        {
          break;
        }

        v25 = [appLayouts objectAtIndex:search];
        v26 = [visibleAppLayouts containsObject:v25];
      }

      while ((v26 & 1) != 0);
    }

    if (searchCopy != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SBSwitcherModifier *)self frameForIndex:searchCopy];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      [(SBSwitcherModifier *)self scaleForIndex:searchCopy];
      v36 = v35;
      UIRectGetCenter();
      CGAffineTransformMakeScale(&v48, v36, v36);
      v49.origin.x = v28;
      v49.origin.y = v30;
      v49.size.width = v32;
      v49.size.height = v34;
      CGRectApplyAffineTransform(v49, &v48);
      SBUnintegralizedRectCenteredAboutPoint();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      if ([(SBSwitcherModifier *)self isRTLEnabled])
      {
        [(SBSwitcherModifier *)self switcherViewBounds];
        MaxX = v45 - v38;
      }

      else
      {
        v50.origin.x = v38;
        v50.origin.y = v40;
        v50.size.width = v42;
        v50.size.height = v44;
        MaxX = CGRectGetMaxX(v50);
      }

      v19 = MaxX + padding;
    }
  }

  return v19;
}

- (CGRect)scaledFrameForIndex:(unint64_t)index
{
  [(SBSwitcherModifier *)self frameForIndex:?];
  [(SBSwitcherModifier *)self scaleForIndex:index];

  SBTransformedRectWithScale();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)scaledFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [(SBSwitcherModifier *)self frameForIndex:index];
    [(SBSwitcherModifier *)self scaleForIndex:index];
    v14 = v13;
    SBTransformedRectWithScale();
    v10 = v15;
    v9 = v16;
    v11 = v17;
    v12 = v18;
    isRTLEnabled = [(SBSwitcherModifier *)self isRTLEnabled];
    if (role == 1 && isRTLEnabled == 0)
    {
      v21 = 1;
    }

    else
    {
      v21 = (role == 2) & isRTLEnabled;
    }

    if ([layoutCopy isSplitConfiguration])
    {
      v22 = MEMORY[0x277D76620];
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      userInterfaceLayoutDirection = [*v22 userInterfaceLayoutDirection];
      [(SBSwitcherModifier *)self containerViewBounds];
      [(SBSwitcherModifier *)self frameForLayoutRole:v23 inAppLayout:layoutCopy withBounds:?];
      SBTransformedRectWithScale();
      v11 = v26;
      if (v21)
      {
        v12 = v25;
      }

      else
      {
        if (userInterfaceLayoutDirection == 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        [(SBSwitcherModifier *)self containerViewBounds];
        [(SBSwitcherModifier *)self frameForLayoutRole:v27 inAppLayout:layoutCopy withBounds:?];
        SBTransformedRectWithScale();
        v29 = v28;
        v12 = v30;
        [(SBSwitcherModifier *)self separatorViewWidth];
        v10 = v10 + v11 + v31 * v14;
        v11 = v29;
      }
    }
  }

  v32 = v10;
  v33 = v9;
  v34 = v11;
  v35 = v12;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (BOOL)autoLayoutItemIntersectsHomeAffordanceArea:(id)area
{
  areaCopy = area;
  [(SBSwitcherModifier *)self containerViewBounds];
  v6 = v5;
  v8 = v7;
  [areaCopy frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v18 = 0;
  v19 = 20.0;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  v23 = v16;
  v24 = v6;

  v17 = v8 + -20.0;
  return CGRectIntersectsRect(*&v20, *&v18);
}

- (id)appLayoutsToCacheSnapshotsWithVisibleRange:(_NSRange)range numberOfSnapshotsToCache:(unint64_t)cache biasForward:(BOOL)forward
{
  forwardCopy = forward;
  forwardCopy2 = forward;
  length = range.length;
  location = range.location;
  v65 = *MEMORY[0x277D85DE8];
  appLayouts = [(SBSwitcherModifier *)self appLayouts];
  v10 = [appLayouts count];
  v11 = cache - length;
  if (cache < length)
  {
    v11 = 0;
  }

  v12 = vcvtd_n_f64_u64(v11, 1uLL);
  v13 = ceil(v12);
  v14 = floor(v12);
  if (!forwardCopy)
  {
    v14 = v13;
  }

  v15 = v14;
  v16 = v11 >= v14;
  v17 = v11 - v14;
  if (v16)
  {
    v18.length = v17;
  }

  else
  {
    v18.length = 0;
  }

  v18.location = location + length;
  v67.location = 0;
  v67.length = v10;
  v19 = NSIntersectionRange(v18, v67);
  if (location >= v15)
  {
    v20.location = location - v15;
  }

  else
  {
    v20.location = 0;
  }

  v20.length = v15;
  v68.location = 0;
  v68.length = v10;
  v21 = NSIntersectionRange(v20, v68);
  v22 = v19.location + v19.length;
  v23 = appLayouts;
  if (v19.location + v19.length <= location + length)
  {
    v22 = location + length;
  }

  v59 = v22;
  v16 = v10 >= v22;
  v24 = v10 - v22;
  if (v16)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v21.location >= location)
  {
    v26 = location;
  }

  else
  {
    v26 = v21.location;
  }

  v57 = v26;
  v58 = v25;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v28 = [appLayouts subarrayWithRange:{location, length}];
  v29 = v28;
  if (forwardCopy2)
  {
    [orderedSet addObjectsFromArray:v28];

    v30 = [appLayouts subarrayWithRange:{v19.location, v19.length}];
    [orderedSet addObjectsFromArray:v30];

    v31 = [appLayouts subarrayWithRange:{v21.location, v21.length}];
    reverseObjectEnumerator = [v31 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    [orderedSet addObjectsFromArray:allObjects];

    v34 = [v23 subarrayWithRange:{v59, v58}];
    [orderedSet addObjectsFromArray:v34];

    v35 = [v23 subarrayWithRange:{0, v57}];
    reverseObjectEnumerator2 = [v35 reverseObjectEnumerator];
    allObjects2 = [reverseObjectEnumerator2 allObjects];
    [orderedSet addObjectsFromArray:allObjects2];
  }

  else
  {
    reverseObjectEnumerator3 = [v28 reverseObjectEnumerator];
    allObjects3 = [reverseObjectEnumerator3 allObjects];
    [orderedSet addObjectsFromArray:allObjects3];

    v40 = [v23 subarrayWithRange:{v21.location, v21.length}];
    reverseObjectEnumerator4 = [v40 reverseObjectEnumerator];
    allObjects4 = [reverseObjectEnumerator4 allObjects];
    [orderedSet addObjectsFromArray:allObjects4];

    v43 = [v23 subarrayWithRange:{v19.location, v19.length}];
    [orderedSet addObjectsFromArray:v43];

    v44 = [v23 subarrayWithRange:{0, v57}];
    reverseObjectEnumerator5 = [v44 reverseObjectEnumerator];
    allObjects5 = [reverseObjectEnumerator5 allObjects];
    [orderedSet addObjectsFromArray:allObjects5];

    v35 = [v23 subarrayWithRange:{v59, v58}];
    [orderedSet addObjectsFromArray:v35];
  }

  v47 = v23;

  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v49 = orderedSet;
  v50 = [v49 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v61;
LABEL_24:
    v53 = 0;
    while (1)
    {
      if (*v61 != v52)
      {
        objc_enumerationMutation(v49);
      }

      v54 = *(*(&v60 + 1) + 8 * v53);
      if ([v48 count] >= cache)
      {
        break;
      }

      if (![v54 type])
      {
        [v48 addObject:v54];
      }

      if (v51 == ++v53)
      {
        v51 = [v49 countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v51)
        {
          goto LABEL_24;
        }

        break;
      }
    }
  }

  return v48;
}

- (unint64_t)indexOfFirstMainAppLayoutFromAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__SBSwitcherModifier_SharedModifierUtilities__indexOfFirstMainAppLayoutFromAppLayouts___block_invoke;
  v6[3] = &unk_2783AFC08;
  v6[4] = &v7;
  [layoutsCopy enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __87__SBSwitcherModifier_SharedModifierUtilities__indexOfFirstMainAppLayoutFromAppLayouts___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 environment];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (unint64_t)indexOfFirstFloatingAppFromAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__SBSwitcherModifier_SharedModifierUtilities__indexOfFirstFloatingAppFromAppLayouts___block_invoke;
  v6[3] = &unk_2783AFC08;
  v6[4] = &v7;
  [layoutsCopy enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __85__SBSwitcherModifier_SharedModifierUtilities__indexOfFirstFloatingAppFromAppLayouts___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 environment];
  if (result == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (void)performWithTemporarilyInsertedAppLayout:(id)layout atIndex:(unint64_t)index block:(id)block
{
  layoutCopy = layout;
  blockCopy = block;
  if (!layoutCopy)
  {
    [SBSwitcherModifier(SharedModifierUtilities) performWithTemporarilyInsertedAppLayout:a2 atIndex:self block:?];
  }

  appLayouts = [(SBSwitcherModifier *)self appLayouts];
  v11 = [appLayouts mutableCopy];

  [v11 insertObject:layoutCopy atIndex:index];
  v12 = [[SBOverrideAppLayoutsSwitcherModifier alloc] initWithAppLayouts:v11];
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v12 usingBlock:blockCopy];
}

- (id)flexibleAutoLayoutSpaceForAppLayout:(id)layout
{
  layoutCopy = layout;
  displayItemLayoutAttributesCalculator = [(SBSwitcherModifier *)self displayItemLayoutAttributesCalculator];
  v6 = [(SBSwitcherModifier *)self appLayoutContainingAppLayout:layoutCopy];

  switcherInterfaceOrientation = [(SBSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBSwitcherModifier *)self floatingDockHeight];
  v36 = v8;
  [(SBSwitcherModifier *)self screenScale];
  v35 = v9;
  [(SBSwitcherModifier *)self containerViewBounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  isDisplayEmbedded = [(SBSwitcherModifier *)self isDisplayEmbedded];
  prefersStripHidden = [(SBSwitcherModifier *)self prefersStripHidden];
  prefersDockHidden = [(SBSwitcherModifier *)self prefersDockHidden];
  [(SBSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(SBSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
  v33 = [displayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:v6 containerOrientation:switcherInterfaceOrientation floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden bounds:prefersDockHidden isEmbeddedDisplay:v36 prefersStripHidden:v35 prefersDockHidden:v11 leftStatusBarPartIntersectionRegion:v13 rightStatusBarPartIntersectionRegion:{v15, v17, v22, v24, v26, v28, v29, v30, v31, v32}];

  return v33;
}

- (id)flexibleAutoLayoutSpaceForAppLayout:(id)layout calculatedUsingNewLayoutAttributesMap:(id)map itemsNeedingPositionSnapping:(id)snapping itemsNeedingSizeSnapping:(id)sizeSnapping
{
  sizeSnappingCopy = sizeSnapping;
  snappingCopy = snapping;
  mapCopy = map;
  layoutCopy = layout;
  displayItemLayoutAttributesCalculator = [(SBSwitcherModifier *)self displayItemLayoutAttributesCalculator];
  v15 = [(SBSwitcherModifier *)self appLayoutContainingAppLayout:layoutCopy];

  switcherInterfaceOrientation = [(SBSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBSwitcherModifier *)self floatingDockHeight];
  v45 = v17;
  [(SBSwitcherModifier *)self screenScale];
  v44 = v18;
  [(SBSwitcherModifier *)self containerViewBounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  isDisplayEmbedded = [(SBSwitcherModifier *)self isDisplayEmbedded];
  prefersStripHidden = [(SBSwitcherModifier *)self prefersStripHidden];
  prefersDockHidden = [(SBSwitcherModifier *)self prefersDockHidden];
  [(SBSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [(SBSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
  v42 = [displayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:v15 containerOrientation:switcherInterfaceOrientation floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden bounds:prefersDockHidden isEmbeddedDisplay:mapCopy prefersStripHidden:v45 prefersDockHidden:v44 newLayoutAttributes:v20 leftStatusBarPartIntersectionRegion:v22 rightStatusBarPartIntersectionRegion:v24 itemsNeedingPositionSnapping:v26 itemsNeedingSizeSnapping:{v31, v33, v35, v37, v38, v39, v40, v41, snappingCopy, sizeSnappingCopy}];

  return v42;
}

- (id)topMostLayoutElementsByAddingAppLayoutAndAccessories:(id)accessories toTopMostLayoutElements:(id)elements orderFront:(BOOL)front
{
  frontCopy = front;
  accessoriesCopy = accessories;
  elementsCopy = elements;
  visibleSplitViewHandleNubViews = [(SBSwitcherModifier *)self visibleSplitViewHandleNubViews];
  windowManagementContext = [(SBSwitcherModifier *)self windowManagementContext];
  if (![windowManagementContext isFlexibleWindowingEnabled])
  {

    goto LABEL_6;
  }

  v12 = [visibleSplitViewHandleNubViews count];

  if (!v12)
  {
LABEL_6:
    if (frontCopy)
    {
      [elementsCopy sb_arrayByInsertingOrMovingObject:accessoriesCopy toIndex:0];
    }

    else
    {
      [elementsCopy sb_arrayByAddingOrMovingObject:accessoriesCopy];
    }
    v20 = ;
    goto LABEL_12;
  }

  v13 = objc_opt_new();
  v14 = [(SBSwitcherModifier *)self zOrderedItemsInAppLayout:accessoriesCopy];
  v15 = [accessoriesCopy leafAppLayoutsFromDisplayItems:v14];

  visibleSplitViewHandleDimmingViews = [(SBSwitcherModifier *)self visibleSplitViewHandleDimmingViews];
  [v13 addObjectsFromArray:v15];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __135__SBSwitcherModifier_SharedModifierUtilities__topMostLayoutElementsByAddingAppLayoutAndAccessories_toTopMostLayoutElements_orderFront___block_invoke;
  v28[3] = &unk_2783B76F0;
  v17 = accessoriesCopy;
  v29 = v17;
  v18 = visibleSplitViewHandleDimmingViews;
  v30 = v18;
  v19 = v13;
  v31 = v19;
  [visibleSplitViewHandleNubViews enumerateObjectsUsingBlock:v28];
  if (frontCopy)
  {
    v20 = [v19 arrayByAddingObjectsFromArray:elementsCopy];
  }

  else
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __135__SBSwitcherModifier_SharedModifierUtilities__topMostLayoutElementsByAddingAppLayoutAndAccessories_toTopMostLayoutElements_orderFront___block_invoke_4;
    v26 = &unk_2783AEA98;
    v27 = v17;
    v21 = [elementsCopy bs_filter:&v23];

    v20 = [v21 arrayByAddingObjectsFromArray:{v19, v23, v24, v25, v26}];

    elementsCopy = v21;
  }

LABEL_12:

  return v20;
}

void __135__SBSwitcherModifier_SharedModifierUtilities__topMostLayoutElementsByAddingAppLayoutAndAccessories_toTopMostLayoutElements_orderFront___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayItems];
  v5 = *(a1 + 32);
  v6 = [v3 displayItems];
  v7 = [v6 bs_set];
  LODWORD(v5) = [v5 containsAnyItemFromSet:v7];

  if (v5)
  {
    v8 = *(a1 + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __135__SBSwitcherModifier_SharedModifierUtilities__topMostLayoutElementsByAddingAppLayoutAndAccessories_toTopMostLayoutElements_orderFront___block_invoke_2;
    v18[3] = &unk_2783AEBD8;
    v9 = v4;
    v19 = v9;
    v10 = [v8 bs_firstObjectPassingTest:v18];
    v11 = *(a1 + 48);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __135__SBSwitcherModifier_SharedModifierUtilities__topMostLayoutElementsByAddingAppLayoutAndAccessories_toTopMostLayoutElements_orderFront___block_invoke_3;
    v16 = &unk_2783B76C8;
    v17 = v9;
    v12 = [v11 indexesOfObjectsPassingTest:&v13];
    [*(a1 + 48) insertObject:v10 atIndex:{objc_msgSend(v12, "lastIndex", v13, v14, v15, v16) + 1}];
    [*(a1 + 48) insertObject:v3 atIndex:{objc_msgSend(v12, "firstIndex")}];
  }
}

uint64_t __135__SBSwitcherModifier_SharedModifierUtilities__topMostLayoutElementsByAddingAppLayoutAndAccessories_toTopMostLayoutElements_orderFront___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 displayItems];
  v3 = BSEqualArrays();

  return v3;
}

uint64_t __135__SBSwitcherModifier_SharedModifierUtilities__topMostLayoutElementsByAddingAppLayoutAndAccessories_toTopMostLayoutElements_orderFront___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAppLayout])
  {
    v4 = *(a1 + 32);
    v5 = [v3 appLayout];
    v6 = [v5 allItems];
    v7 = [v6 firstObject];
    v8 = [v4 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __135__SBSwitcherModifier_SharedModifierUtilities__topMostLayoutElementsByAddingAppLayoutAndAccessories_toTopMostLayoutElements_orderFront___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAppLayout])
  {
    v4 = *(a1 + 32);
    v5 = [v3 appLayout];
    v6 = ([v4 isOrContainsAppLayout:v5] & 1) == 0 && objc_msgSend(v3, "switcherLayoutElementType") != 10 && objc_msgSend(v3, "switcherLayoutElementType") != 11;
  }

  else
  {
    v6 = [v3 switcherLayoutElementType] != 10 && objc_msgSend(v3, "switcherLayoutElementType") != 11;
  }

  return v6;
}

- (id)defaultMultitaskingLayoutAttributesForDisplayItem:(id)item layoutAttributes:(id)attributes layoutGrid:(id)grid
{
  attributesCopy = attributes;
  gridCopy = grid;
  itemCopy = item;
  windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
  [(SBSwitcherModifier *)self containerViewBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(SBSwitcherModifier *)self statusBarHeight];
  v21 = v20;
  [windowingConfiguration stripWidth];
  v23 = v22;
  [(SBSwitcherModifier *)self floatingDockViewTopMargin];
  v25 = v19 - v21 - v24;
  [(SBSwitcherModifier *)self floatingDockHeight];
  v27 = v25 - v26;
  v28 = v17 - v23;
  v29 = v13;
  v71 = [(SBDisplayItemLayoutAttributes *)v17 * 0.5 normalizedPointForPoint:v13 inBounds:v15, v17, v19];
  v73 = v30;
  [windowingConfiguration defaultWindowSize];
  v33 = v28 < v31;
  v34 = v27 < v32;
  v35 = v33 && v34;
  if (v33 && v34)
  {
    v36 = v27;
  }

  else
  {
    v36 = v32;
  }

  if (!v33 || !v34)
  {
    v28 = v31;
  }

  v37 = [(SBSwitcherModifier *)self layoutRestrictionInfoForItem:itemCopy];
  authenticator = [(SBHomeScreenConfigurationServer *)attributesCopy authenticator];
  [(SBSwitcherModifier *)self screenScale];
  [(SBSwitcherModifier *)self minSizeForDisplayItem:itemCopy inContainerBounds:gridCopy layoutGrid:v37 layoutRestrictionInfo:authenticator contentOrientation:windowingConfiguration screenScale:v29 windowingConfiguration:v15, v17, v19, v39];
  v41 = v40;
  v43 = v42;

  SBRectWithSize();
  UIRectCenteredAboutPoint();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v28 >= v41 && v36 >= v43;
  v78.origin.x = v29;
  v78.origin.y = v21;
  v78.size.width = v17;
  v78.size.height = v27;
  v53 = CGRectContainsRect(v78, *&v45);
  v54 = v52 || v53;
  if (v52 || v53)
  {
    v55 = v36;
  }

  else
  {
    v55 = v43;
  }

  if (v52 || v53)
  {
    v56 = v28;
  }

  else
  {
    v56 = v41;
  }

  v57 = 0.5;
  v58 = v71;
  if ((v54 & v35) == 0)
  {
    v58 = 0.5;
  }

  v72 = v58;
  v76 = 0;
  memset(&v75[1], 0, 32);
  if ((v54 & v35) != 0)
  {
    v57 = v73;
  }

  v74 = v57;
  v75[0] = 0uLL;
  [windowingConfiguration containerBounds];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  [windowingConfiguration defaultWindowSize];
  [windowingConfiguration screenEdgePadding];
  SBDisplayItemAttributedSizeInfer(v75, v56, v55, v60, v62, v64, v66);
  v67 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:attributesCopy];
  v68 = [(SBDisplayItemLayoutAttributes *)v67 attributesByModifyingNormalizedCenter:v72, v74];

  v69 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v68];

  return v69;
}

- (id)windowingConfiguration
{
  switcherInterfaceOrientation = [(SBSwitcherModifier *)self switcherInterfaceOrientation];

  return [(SBSwitcherModifier *)self windowingConfigurationForInterfaceOrientation:switcherInterfaceOrientation];
}

- (BOOL)appLayoutContainsFullScreenDisplayItem:(id)item
{
  itemCopy = item;
  allItems = [itemCopy allItems];
  v6 = [allItems count];

  if (v6 == 1)
  {
    appLayouts = [(SBSwitcherModifier *)self appLayouts];
    v8 = [appLayouts indexOfObject:itemCopy];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SBSwitcherModifier *)self containerViewBounds];
    }

    else
    {
      v10 = v8;
      [(SBSwitcherModifier *)self frameForIndex:v8];
      [(SBSwitcherModifier *)self scaleForIndex:v10];
    }

    SBRectWithSize();
    [(SBSwitcherModifier *)self frameForLayoutRole:1 inAppLayout:itemCopy withBounds:?];
    [(SBSwitcherModifier *)self scaleForLayoutRole:1 inAppLayout:itemCopy];
    windowManagementContext = [(SBSwitcherModifier *)self windowManagementContext];
    if ([windowManagementContext isFlexibleWindowingEnabled])
    {
      [(SBSwitcherModifier *)self containerViewBounds];
      UIRectGetCenter();
      v13 = v12;
      v15 = v14;
      UIRectGetCenter();
      v18 = v15 == v17 && v13 == v16;
    }

    else
    {
      v18 = 1;
    }

    [(SBSwitcherModifier *)self containerViewBounds];
    v9 = BSSizeEqualToSize() & v18;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (CGRect)frameForContinuousExposePeekingDisplayItem:(id)item inAppLayout:(id)layout bounds:(CGRect)bounds defaultFrameForLayoutRole:(CGRect)role
{
  height = role.size.height;
  width = role.size.width;
  y = role.origin.y;
  itemCopy = item;
  layoutCopy = layout;
  [(SBSwitcherModifier *)self containerViewBounds];
  v14 = v13;
  v16 = v15;
  v80 = v17;
  v19 = v18;
  v20 = [layoutCopy itemForLayoutRole:2];

  if (!v20)
  {
    v79 = [SBDisplayItem displayItemWithType:0 bundleIdentifier:@"com.apple.springboard.PeekPlacholderItem" uniqueIdentifier:@"com.apple.springboard.PeekPlacholderItem.1"];
    v21 = [layoutCopy appLayoutByInsertingItem:? inLayoutRole:?];
    displayItemLayoutAttributesCalculator = [(SBSwitcherModifier *)self displayItemLayoutAttributesCalculator];
    v77 = [v21 layoutRoleForItem:itemCopy];
    switcherInterfaceOrientation = [(SBSwitcherModifier *)self switcherInterfaceOrientation];
    [(SBSwitcherModifier *)self floatingDockHeight];
    v76 = v23;
    [(SBSwitcherModifier *)self screenScale];
    v75 = v24;
    windowManagementContext = [(SBSwitcherModifier *)self windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];
    isDisplayEmbedded = [(SBSwitcherModifier *)self isDisplayEmbedded];
    prefersStripHidden = [(SBSwitcherModifier *)self prefersStripHidden];
    prefersDockHidden = [(SBSwitcherModifier *)self prefersDockHidden];
    [(SBSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
    v74 = v30;
    v32 = v31;
    v33 = v14;
    v34 = v16;
    v36 = v35;
    v37 = y;
    v39 = v38;
    [(SBSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
    v73 = v39;
    y = v37;
    v40 = v19;
    v41 = v34;
    v14 = v33;
    LOBYTE(v72) = prefersDockHidden;
    [displayItemLayoutAttributesCalculator frameForLayoutRole:v77 inAppLayout:v21 containerBounds:switcherInterfaceOrientation containerOrientation:isChamoisOrFlexibleWindowing floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden isChamoisWindowingUIEnabled:v33 isEmbeddedDisplay:v41 prefersStripHidden:v80 prefersDockHidden:v40 leftStatusBarPartIntersectionRegion:v76 rightStatusBarPartIntersectionRegion:{v75, v72, v74, v32, v36, v73, v42, v43, v44, v45}];
    width = v46;
    height = v47;

    if (SBRectEqualsRect())
    {
      UIRectCenteredYInRect();
      y = v48;
      width = v49;
      height = v50;
    }
  }

  v51 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];
  v52 = [(SBSwitcherModifier *)self zOrderedItemsInAppLayout:layoutCopy];
  firstObject = [v52 firstObject];

  v54 = [v51 flexibleAutoLayoutItemForDisplayItem:firstObject];
  [v54 position];
  v56 = v55;
  configuration = [v51 configuration];
  [configuration containerBounds];
  UIRectGetCenter();
  v59 = v58;

  v60 = [(SBDisplayItem *)firstObject isEqualToItem:itemCopy];
  if (v56 >= v59)
  {
    v61 = v60 ^ 1;
  }

  else
  {
    v61 = v60;
  }

  [(SBSwitcherModifier *)self statusBarHeight];
  v63 = fmax(v62, 24.0);
  v64 = v63 + v63;
  [v51 boundingBox];
  v66 = v14 + v80 - v64;
  if (v61)
  {
    v66 = v14 - width + v64;
  }

  v67 = v66 - v65;

  v68 = v67;
  v69 = y;
  v70 = width;
  v71 = height;
  result.size.height = v71;
  result.size.width = v70;
  result.origin.y = v69;
  result.origin.x = v68;
  return result;
}

- (BOOL)shouldZoomToSystemApertureForEvent:(id)event activeLayout:(id)layout
{
  eventCopy = event;
  layoutCopy = layout;
  if (([(SBSwitcherModifier *)self isReduceMotionEnabled]& 1) != 0 || ![(SBSwitcherModifier *)self isJindoEnabled])
  {
    v10 = 0;
  }

  else
  {
    fromEnvironmentMode = [eventCopy fromEnvironmentMode];
    toEnvironmentMode = [eventCopy toEnvironmentMode];
    v10 = 0;
    if ((fromEnvironmentMode & 0xFFFFFFFFFFFFFFFELL) == 2 && toEnvironmentMode == 1)
    {
      v11 = [layoutCopy itemForLayoutRole:1];
      v12 = [(SBSwitcherModifier *)self switcherInterfaceOrientation]== 1;
      uniqueIdentifier = [v11 uniqueIdentifier];
      bundleIdentifier = [v11 bundleIdentifier];
      v10 = [(SBSwitcherModifier *)self isSystemApertureTransitionTargetForSceneIdentifier:uniqueIdentifier bundleIdentifier:bundleIdentifier isPortrait:v12];
    }
  }

  return v10;
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
{
  v6 = a4;
  appLayout = [v6 appLayout];
  if (!appLayout || (v9 = [(SBSwitcherModifier *)self _indexOfAppLayout:appLayout], v9 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v28.receiver = self;
    v28.super_class = SBSwitcherModifier;
    [(SBWindowingItemFrame *)&v28 frameForItem:v6];
  }

  else
  {
    v10 = v9;
    [(SBSwitcherModifier *)self frameForIndex:v9];
    [(SBSwitcherModifier *)self scaleForIndex:v10];
    v12 = v11;
    [(SBSwitcherModifier *)self anchorPointForIndex:v10];
    v26 = v14;
    v27 = v13;
    SBRectWithSize();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    UIRectGetCenter();
    *&v25 = v12;
    *(&v25 + 1) = v12;
    SBWindowingItemFrameMake(retstr, v16, v18, v20, v22, v23, v24, v27, v26, v25, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  }

  return result;
}

- (SBWindowingItemCorners)cornersForItem:(SEL)item
{
  v6 = a4;
  appLayout = [v6 appLayout];
  if (!appLayout || ([(SBSwitcherModifier(WindowingModifier) *)self cornersForItem:appLayout, retstr]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = SBSwitcherModifier;
    [(SBWindowingItemCorners *)&v9 cornersForItem:v6];
  }

  return result;
}

- (SBWindowingItemShadow)shadowForItem:(id)item
{
  v12[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  appLayout = [itemCopy appLayout];
  if (!appLayout || ([(SBSwitcherModifier(WindowingModifier) *)self shadowForItem:appLayout, v12]& 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = SBSwitcherModifier;
    v6 = [(SBSwitcherModifier *)&v11 shadowForItem:itemCopy];
    v8 = v7;
  }

  else
  {
    v6 = v12[0];
    v8 = v12[1];
  }

  v9 = *&v6;
  v10 = v8;
  result.shadowStyle = v10;
  result.shadowOpacity = v9;
  return result;
}

- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item
{
  v6 = a4;
  appLayout = [v6 appLayout];
  if (!appLayout || ([(SBSwitcherModifier(WindowingModifier) *)self titleStyleForItem:appLayout, retstr]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = SBSwitcherModifier;
    [(SBWindowingItemTitleStyle *)&v9 titleStyleForItem:v6];
  }

  return result;
}

- (double)opacityForItem:(id)item
{
  itemCopy = item;
  appLayout = [itemCopy appLayout];
  if (appLayout)
  {
    v9 = [(SBSwitcherModifier *)self _indexOfAppLayout:appLayout];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SBSwitcherModifier *)self opacityForLayoutRole:1 inAppLayout:appLayout atIndex:v9];
      goto LABEL_3;
    }

    if (([(SBSwitcherModifier(WindowingModifier) *)self opacityForItem:appLayout, &v11]& 1) == 0)
    {
      v7 = v11;
      goto LABEL_4;
    }
  }

  v10.receiver = self;
  v10.super_class = SBSwitcherModifier;
  [(SBSwitcherModifier *)&v10 opacityForItem:itemCopy];
LABEL_3:
  v7 = v6;
LABEL_4:

  return v7;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForItem:(id)item
{
  itemCopy = item;
  appLayout = [itemCopy appLayout];
  if (appLayout)
  {
    [(SBSwitcherModifier *)self wallpaperGradientAttributesForLayoutRole:1 inAppLayout:appLayout];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBSwitcherModifier;
    [(SBSwitcherModifier *)&v12 wallpaperGradientAttributesForItem:itemCopy];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.trailingAlpha = v11;
  result.leadingAlpha = v10;
  return result;
}

- (CGPoint)perspectiveAngleForItem:(id)item
{
  itemCopy = item;
  appLayout = [itemCopy appLayout];
  if (!appLayout || (v12 = [(SBSwitcherModifier *)self _indexOfAppLayout:appLayout], v12 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v13.receiver = self;
    v13.super_class = SBSwitcherModifier;
    [(SBSwitcherModifier *)&v13 perspectiveAngleForItem:itemCopy];
  }

  else
  {
    [(SBSwitcherModifier *)self perspectiveAngleForIndex:v12];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (double)dimmingAlphaForItem:(id)item
{
  itemCopy = item;
  appLayout = [itemCopy appLayout];
  if (appLayout)
  {
    [(SBSwitcherModifier *)self dimmingAlphaForLayoutRole:1 inAppLayout:appLayout];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSwitcherModifier;
    [(SBSwitcherModifier *)&v9 dimmingAlphaForItem:itemCopy];
  }

  v7 = v6;

  return v7;
}

- (BOOL)supportsHomeAffordanceForItem:(id)item
{
  itemCopy = item;
  appLayout = [itemCopy appLayout];
  if (appLayout)
  {
    v6 = [(SBSwitcherModifier *)self isHomeAffordanceSupportedForAppLayout:appLayout];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSwitcherModifier;
    v6 = [(SBSwitcherModifier *)&v9 supportsHomeAffordanceForItem:itemCopy];
  }

  v7 = v6;

  return v7;
}

- (unint64_t)personalityDebugColorStyleForItem:(id)item
{
  itemCopy = item;
  appLayout = [itemCopy appLayout];
  if (appLayout)
  {
    v6 = [(SBSwitcherModifier *)self personalityDebugColorStyleForAppLayout:appLayout];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSwitcherModifier;
    v6 = [(SBSwitcherModifier *)&v9 personalityDebugColorStyleForItem:itemCopy];
  }

  v7 = v6;

  return v7;
}

- (id)_handleEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = SBSwitcherModifier;
  v5 = [(SBChainableModifier *)&v9 _handleEvent:eventCopy];
  v6 = 0;
  switch([eventCopy type])
  {
    case 0:
      v7 = [(SBSwitcherModifier *)self handleInitialSetupEvent:eventCopy];
      goto LABEL_3;
    case 1:
      v7 = [(SBSwitcherModifier *)self handleTransitionEvent:eventCopy];
      goto LABEL_3;
    case 2:
    case 3:
    case 4:
    case 5:
    case 31:
      v7 = [(SBSwitcherModifier *)self handleGestureEvent:eventCopy];
      goto LABEL_3;
    case 6:
      v7 = [(SBSwitcherModifier *)self handleReduceMotionChangedEvent:eventCopy];
      goto LABEL_3;
    case 7:
      v7 = [(SBSwitcherModifier *)self handleSwitcherSettingsChangedEvent:eventCopy];
      goto LABEL_3;
    case 8:
      v7 = [(SBSwitcherModifier *)self handleHomeGestureSettingsChangedEvent:eventCopy];
      goto LABEL_3;
    case 9:
      v7 = [(SBSwitcherModifier *)self handleMedusaSettingsChangedEvent:eventCopy];
      goto LABEL_3;
    case 10:
      v7 = [(SBSwitcherModifier *)self handleHomeGrabberSettingsChangedEvent:eventCopy];
      goto LABEL_3;
    case 11:
      v7 = [(SBSwitcherModifier *)self handleHighlightEvent:eventCopy];
      goto LABEL_3;
    case 12:
      v7 = [(SBSwitcherModifier *)self handleSwipeToKillEvent:eventCopy];
      goto LABEL_3;
    case 13:
      v7 = [(SBSwitcherModifier *)self handleInsertionEvent:eventCopy];
      goto LABEL_3;
    case 14:
      v7 = [(SBSwitcherModifier *)self handleRemovalEvent:eventCopy];
      goto LABEL_3;
    case 15:
      v7 = [(SBSwitcherModifier *)self handleTimerEvent:eventCopy];
      goto LABEL_3;
    case 16:
      v7 = [(SBSwitcherModifier *)self handleTapOutsideToDismissEvent:eventCopy];
      goto LABEL_3;
    case 17:
      v7 = [(SBSwitcherModifier *)self handleTapAppLayoutEvent:eventCopy];
      goto LABEL_3;
    case 18:
      v7 = [(SBSwitcherModifier *)self handleTapSlideOverTongueEvent:eventCopy];
      goto LABEL_3;
    case 19:
      v7 = [(SBSwitcherModifier *)self handleScrollEvent:eventCopy];
      goto LABEL_3;
    case 20:
      v7 = [(SBSwitcherModifier *)self handleUpdateFocusedAppLayoutEvent:eventCopy];
      goto LABEL_3;
    case 21:
      v7 = [(SBSwitcherModifier *)self handleResizeProgressEvent:eventCopy];
      goto LABEL_3;
    case 22:
      v7 = [(SBSwitcherModifier *)self handleBlurProgressEvent:eventCopy];
      goto LABEL_3;
    case 23:
      v7 = [(SBSwitcherModifier *)self handleRepositionProgressEvent:eventCopy];
      goto LABEL_3;
    case 24:
      v7 = [(SBSwitcherModifier *)self handleSceneReadyEvent:eventCopy];
      goto LABEL_3;
    case 25:
      v7 = [(SBSwitcherModifier *)self handleSwitcherDropEvent:eventCopy];
      goto LABEL_3;
    case 26:
      v7 = [(SBSwitcherModifier *)self handleSlideOverEdgeProtectTongueEvent:eventCopy];
      goto LABEL_3;
    case 27:
      v7 = [(SBSwitcherModifier *)self handleHideMorphToPIPAppLayoutEvent:eventCopy];
      goto LABEL_3;
    case 28:
      v7 = [(SBSwitcherModifier *)self handleAnimatablePropertyChangedEvent:eventCopy];
      goto LABEL_3;
    case 29:
      v7 = [(SBSwitcherModifier *)self handleShelfFocusedDisplayItemsChangedEvent:eventCopy];
      goto LABEL_3;
    case 30:
      v7 = [(SBSwitcherModifier *)self handlePrepareForSceneUpdateEvent:eventCopy];
      goto LABEL_3;
    case 32:
      v7 = [(SBSwitcherModifier *)self handleHoverEvent:eventCopy];
      goto LABEL_3;
    case 33:
      v7 = [(SBSwitcherModifier *)self handleUpdateWindowingModeEvent:eventCopy];
      goto LABEL_3;
    case 34:
      v7 = [(SBSwitcherModifier *)self handleContinuousExposeIdentifiersChangedEvent:eventCopy];
      goto LABEL_3;
    case 35:
      v7 = [(SBSwitcherModifier *)self handleContinuousExposeStripEdgeProtectTongueEvent:eventCopy];
      goto LABEL_3;
    case 36:
      v7 = [(SBSwitcherModifier *)self handleTapAppLayoutHeaderEvent:eventCopy];
      goto LABEL_3;
    case 37:
      v7 = [(SBSwitcherModifier *)self handlePointerCrossedDisplayBoundaryEvent:eventCopy];
      goto LABEL_3;
    case 38:
      v7 = [(SBSwitcherModifier *)self handleAssistantPresentationChangedEvent:eventCopy];
      goto LABEL_3;
    case 39:
      v7 = [(SBSwitcherModifier *)self handleHardwareButtonDropletAnimationEvent:eventCopy];
      goto LABEL_3;
    case 40:
      v7 = [(SBSwitcherModifier *)self handleSwitcherShortcutActionEvent:eventCopy];
      goto LABEL_3;
    case 42:
      v7 = [(SBSwitcherModifier *)self handleMoveDisplayItemFromOtherDisplayEvent:eventCopy];
      goto LABEL_3;
    case 43:
      v7 = [(SBSwitcherModifier *)self handleAppInteractionEvent:eventCopy];
      goto LABEL_3;
    case 44:
      v7 = [(SBSwitcherModifier *)self handleDidEdgeProtectResizeGrabberEvent:eventCopy];
LABEL_3:
      v6 = v7;
      break;
    default:
      break;
  }

  return v6;
}

- (id)stackDescriptionWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CCACA8];
  displayName = [(SBSwitcherModifier *)self displayName];
  v8 = [v6 stringWithFormat:@"%@%@", prefixCopy, displayName];
  [v5 addObject:v8];

  v9 = [prefixCopy stringByAppendingString:@"    "];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__SBSwitcherModifier_stackDescriptionWithPrefix___block_invoke;
  v14[3] = &unk_2783C0AB8;
  v15 = v5;
  v16 = v9;
  v10 = v9;
  v11 = v5;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v14];
  v12 = [v11 componentsJoinedByString:@"\n"];

  return v12;
}

void __49__SBSwitcherModifier_stackDescriptionWithPrefix___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stackDescriptionWithPrefix:*(a1 + 40)];
  [v2 addObject:v3];
}

- (id)displayName
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 length];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [&unk_28336EC58 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(&unk_28336EC58);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([v3 hasPrefix:v9])
        {
          v10 = [v9 length];
          goto LABEL_11;
        }
      }

      v6 = [&unk_28336EC58 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [&unk_28336EC70 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(&unk_28336EC70);
        }

        v15 = *(*(&v19 + 1) + 8 * j);
        if ([v3 hasSuffix:v15])
        {
          v16 = [v3 length];
          v4 = v16 - [v15 length];
          goto LABEL_21;
        }
      }

      v12 = [&unk_28336EC70 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
  v17 = [v3 substringWithRange:{v10, v4 - v10}];

  return v17;
}

- (uint64_t)_indexOfAppLayout:(void *)layout
{
  v3 = a2;
  if (layout)
  {
    windowing_cachedAppLayout = [(SBSwitcherModifier *)layout windowing_cachedAppLayout];
    appLayoutsGenerationCount = [layout appLayoutsGenerationCount];
    if (windowing_cachedAppLayout && [windowing_cachedAppLayout isEqual:v3] && -[SBSwitcherModifier windowing_cachedAppLayoutsGenerationCount](layout) == appLayoutsGenerationCount)
    {
      windowing_cachedIndex = [(SBSwitcherModifier *)layout windowing_cachedIndex];
    }

    else
    {
      [(SBSwitcherModifier *)layout setWindowing_cachedAppLayout:v3];
      [(SBSwitcherModifier *)layout setWindowing_cachedAppLayoutsGenerationCount:appLayoutsGenerationCount];
      appLayouts = [layout appLayouts];
      windowing_cachedIndex = [appLayouts indexOfObject:v3];
      [(SBSwitcherModifier *)layout setWindowing_cachedIndex:windowing_cachedIndex];
    }
  }

  else
  {
    windowing_cachedIndex = 0;
  }

  return windowing_cachedIndex;
}

- (uint64_t)windowing_cachedIndex
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (uint64_t)setWindowing_cachedIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 104) = a2;
  }

  return result;
}

- (uint64_t)windowing_cachedAppLayoutsGenerationCount
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)setWindowing_cachedAppLayoutsGenerationCount:(uint64_t)result
{
  if (result)
  {
    *(result + 112) = a2;
  }

  return result;
}

- (uint64_t)windowing_cachedAppLayout
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (void)setWindowing_cachedAppLayout:(uint64_t)layout
{
  if (layout)
  {
    objc_storeStrong((layout + 120), a2);
  }
}

@end