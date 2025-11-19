@interface SBExposeWindowingModifier
- (BOOL)groupsWindowsByApp;
- (BOOL)isFocusEnabledForAppLayout:(id)a3;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)supportsHomeAffordanceForItem:(id)a3;
- (BOOL)useItemContainerFooterViewsForAppLayout:(id)a3;
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGRect)_visibleSwitcherBoundsIncludingShadow;
- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4;
- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (CGRect)frameForShelf:(id)a3;
- (CGRect)shelfBackgroundBlurFrame;
- (CGSize)_contentSize;
- (CGSize)_fittedContentSize;
- (SBExposeWindowingModifier)init;
- (SBWindowingItemCorners)cornersForItem:(SEL)a3;
- (SBWindowingItemFrame)frameForItem:(SEL)a3;
- (SBWindowingItemShadow)shadowForItem:(id)a3;
- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)a3;
- (double)_heightForCardInSwitcherWithScaleFactor:(BOOL)a3;
- (double)contentPageViewScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withContentPageViewScale:(double)a5;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3;
- (double)homeScreenScale;
- (double)minimumTranslationToKillIndex:(unint64_t)a3;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (double)wallpaperScale;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)a3;
- (id)adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:(id)a3 identifiersInStrip:(id)a4;
- (id)animationAttributesForItem:(id)a3;
- (id)appLayout;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToResignActive;
- (id)destinationAppLayoutForDismissingCurrentMode;
- (id)displayItemsToExcludeFromStrip;
- (id)neighboringAppLayoutsForFocusedAppLayout:(id)a3;
- (id)recentAppLayouts;
- (id)scrollViewAttributes;
- (id)strip;
- (id)windowManagementContext;
- (id)windowingConfigurationForInterfaceOrientation:(int64_t)a3;
- (int64_t)_effectiveIndexInRecencyOfAppLayout:(id)a3;
- (unint64_t)_indexOfLeadingAppLayout;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3;
- (unint64_t)transactionCompletionOptions;
- (void)_captureModelForOverflowAndManualModeIfNeeded;
- (void)appLayoutHeaderTapped:(id)a3;
- (void)appLayoutTapped:(id)a3;
- (void)itemInserted:(id)a3;
- (void)itemRemoved:(id)a3;
- (void)layoutViewModelsIfNeeded;
- (void)tappedOutsideToDismiss:(id)a3;
- (void)transitionDidUpdate:(id)a3;
@end

@implementation SBExposeWindowingModifier

- (SBExposeWindowingModifier)init
{
  v9.receiver = self;
  v9.super_class = SBExposeWindowingModifier;
  v2 = [(SBWindowingModifier *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_handlesTapAppLayoutEvents = 1;
    v2->_handlesTapAppLayoutHeaderEvents = 1;
    v2->_scaleFactor = 1.0;
    v2->_horizontalEdgeSpacingScaleFactor = 1.0;
    v4 = [MEMORY[0x277CBEB98] set];
    visibleItems = v3->_visibleItems;
    v3->_visibleItems = v4;

    topMostItems = v3->_topMostItems;
    v3->_topMostItems = MEMORY[0x277CBEBF8];

    v7 = objc_opt_new();
    [(SBChainableModifier *)v3 addChildModifier:v7];
  }

  return v3;
}

- (id)strip
{
  if (self->_overrideContextToBuildAppLayoutsInExpose)
  {
    v2 = +[SBWindowingStrip emptyStrip];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBExposeWindowingModifier;
    v2 = [(SBExposeWindowingModifier *)&v4 strip];
  }

  return v2;
}

- (id)windowManagementContext
{
  v8.receiver = self;
  v8.super_class = SBExposeWindowingModifier;
  v3 = [(SBExposeWindowingModifier *)&v8 windowManagementContext];
  v4 = v3;
  if (self->_overrideContextToBuildAppLayoutsInExpose)
  {
    v5 = -[SBSwitcherWindowManagementContext initWithBaseStyle:automaticStageCreationEnabled:restoresPreviouslyOpenWindows:]([SBSwitcherWindowManagementContext alloc], "initWithBaseStyle:automaticStageCreationEnabled:restoresPreviouslyOpenWindows:", [v3 baseStyle], 1, objc_msgSend(v3, "restoresPreviouslyOpenWindows"));
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (id)windowingConfigurationForInterfaceOrientation:(int64_t)a3
{
  if (self->_overrideContextToBuildAppLayoutsInExpose)
  {
    v9.receiver = self;
    v9.super_class = SBExposeWindowingModifier;
    v4 = [(SBExposeWindowingModifier *)&v9 windowingConfigurationForInterfaceOrientation:a3];
    v5 = [v4 copy];

    v6 = [(SBExposeWindowingModifier *)self recentAppLayouts];
    [v5 setNumberOfRowsWhileInApp:{objc_msgSend(v6, "count")}];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBExposeWindowingModifier;
    v5 = [(SBExposeWindowingModifier *)&v8 windowingConfigurationForInterfaceOrientation:a3];
  }

  return v5;
}

- (id)recentAppLayouts
{
  if (self->_overrideContextToBuildAppLayoutsInExpose)
  {
    v2 = self->_effectiveRecentAppLayouts;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBExposeWindowingModifier;
    v2 = [(SBExposeWindowingModifier *)&v4 recentAppLayouts];
  }

  return v2;
}

- (id)displayItemsToExcludeFromStrip
{
  if (self->_overrideContextToBuildAppLayoutsInExpose)
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBExposeWindowingModifier;
    v2 = [(SBExposeWindowingModifier *)&v4 displayItemsToExcludeFromStrip];
  }

  return v2;
}

- (BOOL)groupsWindowsByApp
{
  if (!self->_overrideContextToBuildAppLayoutsInExpose)
  {
    goto LABEL_4;
  }

  v7.receiver = self;
  v7.super_class = SBExposeWindowingModifier;
  v3 = [(SBExposeWindowingModifier *)&v7 windowManagementContext];
  if ([v3 isAutomaticStageCreationEnabled])
  {
    v4 = [(SBExposeWindowingModifier *)self peekingAppLayout];

    if (!v4)
    {
LABEL_4:
      v6.receiver = self;
      v6.super_class = SBExposeWindowingModifier;
      return [(SBExposeWindowingModifier *)&v6 groupsWindowsByApp];
    }
  }

  else
  {
  }

  return 0;
}

- (id)appLayout
{
  if (self->_overrideContextToBuildAppLayoutsInExpose)
  {
    v2 = self->_organicExposeAppLayout;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBExposeWindowingModifier;
    v2 = [(SBExposeWindowingModifier *)&v4 appLayout];
  }

  return v2;
}

- (SBWindowingItemFrame)frameForItem:(SEL)a3
{
  v6 = a4;
  v7 = [(SBAppLayout *)v6 appLayout];
  if (v7)
  {
    retstr->scale = 0u;
    retstr->translation = 0u;
    retstr->position = 0u;
    retstr->anchorPoint = 0u;
    retstr->bounds.origin = 0u;
    retstr->bounds.size = 0u;
    v20.receiver = self;
    v20.super_class = SBExposeWindowingModifier;
    [(SBWindowingItemFrame *)&v20 frameForItem:v6];

    if (([(SBExposeWindowingModifier *)self isRTLEnabled]& 1) == 0)
    {
      [(SBExposeWindowingModifier *)self _contentSize];
      retstr->position.x = retstr->position.x + v8;
    }

    [(SBExposeWindowingModifier *)self scrollViewContentOffset];
    v10 = v9;
    v6 = self->_organicExposeAppLayout;
    if (v6)
    {
      [(SBExposeWindowingModifier *)self _contentSize];
      v12 = v11;
      [(SBExposeWindowingModifier *)self containerViewBounds];
      v14 = v13;
      if ((BSEqualObjects() & 1) == 0)
      {
        v15 = v12 - v14 - v10;
        if (v15 < 0.0)
        {
          v16 = -v15;
          BSUIConstrainValueWithRubberBand();
          v10 = v10 - (v16 - v17);
        }
      }
    }

    retstr->position.x = retstr->position.x - v10;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBExposeWindowingModifier;
    [(SBWindowingItemFrame *)&v19 frameForItem:v6];
  }

  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  v7 = a4;
  if (v7 && BSEqualObjects())
  {
    v8 = [v7 itemForLayoutRole:a3];
    v9 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v7];
    [v9 exposeBoundingBox];
    v11 = v10;
    v13 = v12;
    v14 = [v9 autoLayoutItems];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __71__SBExposeWindowingModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
    v36[3] = &unk_2783B6060;
    v37 = v8;
    v15 = v8;
    v16 = [v14 bs_firstObjectPassingTest:v36];

    [v16 exposePosition];
    v18 = v17;
    v20 = v19;
    [v16 size];
    v22 = v21;
    v24 = v23;
    v25 = v18 - v21 * 0.5 - v11;
    v26 = v20 - v23 * 0.5 - v13;
  }

  else
  {
    v9 = [v7 itemForLayoutRole:a3];
    v15 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v7];
    v27 = [v15 flexibleAutoLayoutItemForDisplayItem:v9];
    [v27 compactedPosition];
    [v15 compactedBoundingBox];
    [v27 size];
    [(SBExposeWindowingModifier *)self screenScale];
    SBRectWithSize();
    UIRectCenteredAboutPointScale();
    v25 = v28;
    v26 = v29;
    v22 = v30;
    v24 = v31;
  }

  v32 = v25;
  v33 = v26;
  v34 = v22;
  v35 = v24;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

uint64_t __71__SBExposeWindowingModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayItem];
  v4 = [(SBDisplayItem *)v3 isEqualToItem:?];

  return v4;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if (v6 && BSEqualObjects())
  {
    v7 = [v6 itemForLayoutRole:a3];
    v8 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v6];
    v9 = [v8 autoLayoutItems];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__SBExposeWindowingModifier_scaleForLayoutRole_inAppLayout___block_invoke;
    v17[3] = &unk_2783B6060;
    v18 = v7;
    v10 = v7;
    v11 = [v9 bs_firstObjectPassingTest:v17];

    [v11 exposeScale];
    v13 = v12;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBExposeWindowingModifier;
    [(SBExposeWindowingModifier *)&v16 scaleForLayoutRole:a3 inAppLayout:v6];
    v13 = v14;
  }

  return v13;
}

uint64_t __60__SBExposeWindowingModifier_scaleForLayoutRole_inAppLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayItem];
  v4 = [(SBDisplayItem *)v3 isEqualToItem:?];

  return v4;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBExposeWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 && (BSEqualObjects() & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBExposeWindowingModifier;
    v7 = [(SBExposeWindowingModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBExposeWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 && (BSEqualObjects() & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBExposeWindowingModifier;
    v7 = [(SBExposeWindowingModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (SBWindowingItemCorners)cornersForItem:(SEL)a3
{
  v6 = a4;
  v7 = [v6 appLayout];
  if (v7 && BSEqualObjects())
  {
    v8 = [(SBWindowingModifier *)self windowingConfiguration];
    [v8 solariumStageCornerRadii];
  }

  else
  {
    v9 = [(SBExposeWindowingModifier *)self switcherSettings];
    v10 = [v9 windowingSettings];
    [v10 switcherCornerRadius];
  }

  [(SBExposeWindowingModifier *)self frameForItem:v6];
  SBRectCornerRadiiForRadius();
  SBWindowingItemCornersMake(15, retstr, v11, v12, v13, v14);

  return result;
}

- (SBWindowingItemShadow)shadowForItem:(id)a3
{
  SBWindowingItemShadowMake();
  result.shadowStyle = v4;
  result.shadowOpacity = v3;
  return result;
}

- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [a4 appLayout];
  v7 = [(SBAppLayout *)self->_organicExposeAppLayout isEqual:v6];
  if (v6 && [(NSArray *)self->_allAppLayouts containsObject:v6])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_pilesInExpose;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) firstObject];
          v13 = [v6 isEqual:v12];

          if (v13)
          {
            LODWORD(v9) = 1;
            goto LABEL_16;
          }
        }

        v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v14 = 0.0;
    if ((v9 | v7))
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    retstr->titleAndIconOpacity = v15;
    if (v9)
    {
      v14 = 1.0;
    }
  }

  else
  {
    v14 = 0.0;
    v15 = 1.0;
    if (!v7)
    {
      v15 = 0.0;
    }

    retstr->titleAndIconOpacity = v15;
  }

  retstr->titleOpacity = v14;
  retstr->iconOpacity = v15;
  *&retstr->headerStyle = xmmword_21F8A6B20;

  return result;
}

- (id)animationAttributesForItem:(id)a3
{
  v3 = [(SBExposeWindowingModifier *)self switcherSettings];
  v4 = [v3 animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  v6 = [v4 layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:v6];

  v7 = [v4 opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:v7];

  return v5;
}

- (BOOL)supportsHomeAffordanceForItem:(id)a3
{
  v3 = [(SBExposeWindowingModifier *)self homeGrabberSettings];
  v4 = [v3 isEnabled];

  return v4;
}

- (double)homeScreenScale
{
  v2 = [(SBExposeWindowingModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 homeScreenScaleForMode:2];
  v5 = v4;

  return v5;
}

- (double)wallpaperScale
{
  v2 = [(SBExposeWindowingModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 wallpaperScaleForMode:2];
  v5 = v4;

  return v5;
}

- (BOOL)isFocusEnabledForAppLayout:(id)a3
{
  v4 = a3;
  v5 = [v4 continuousExposeIdentifier];
  v6 = [(SBExposeWindowingModifier *)self appLayoutsForContinuousExposeIdentifier:v5];

  v7 = [v6 firstObject];

  return v7 == v4;
}

- (id)neighboringAppLayoutsForFocusedAppLayout:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(SBExposeWindowingModifier *)self continuousExposeIdentifiersInSwitcher];
  v8 = [v5 continuousExposeIdentifier];

  v9 = [v7 indexOfObject:v8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL && [v7 count] >= 3)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __70__SBExposeWindowingModifier_neighboringAppLayoutsForFocusedAppLayout___block_invoke;
    v19 = &unk_2783B6088;
    v20 = self;
    v21 = v6;
    v10 = MEMORY[0x223D6F7F0](&v16);
    if (v9)
    {
      v11 = [v7 objectAtIndex:{v9 - 1, v16, v17, v18, v19, v20}];
      (v10)[2](v10, v11);

      if (v9 != 1)
      {
        v12 = [v7 objectAtIndex:v9 - 2];
        (v10)[2](v10, v12);
      }
    }

    if (v9 < [v7 count] - 1)
    {
      v13 = [v7 objectAtIndex:v9 + 1];
      (v10)[2](v10, v13);
    }

    if (v9 < [v7 count] - 2)
    {
      v14 = [v7 objectAtIndex:v9 + 2];
      (v10)[2](v10, v14);
    }
  }

  return v6;
}

void __70__SBExposeWindowingModifier_neighboringAppLayoutsForFocusedAppLayout___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) appLayoutsForContinuousExposeIdentifier:a2];
  v5 = [v3 firstObject];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
    v4 = v5;
  }
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 bs_map:&__block_literal_global_159];
  v6 = [v5 bs_flatten];
  v7 = [v6 bs_set];

  v8 = self->_effectiveRecentAppLayouts;
  v9 = [(SBExposeWindowingModifier *)self draggingAppLayoutsForWindowDrag];
  if ([v9 count])
  {
    v24 = v4;
    v22 = v8;
    v8 = [(NSArray *)v8 mutableCopy];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = v9;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v15 itemForLayoutRole:1];
          if ([v7 containsObject:v16])
          {
            v17 = [(NSArray *)v8 containsObject:v15];

            if (!v17)
            {
              [(NSArray *)v8 addObject:v15];
            }
          }

          else
          {
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v9 = v23;
    v4 = v24;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__SBExposeWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_2;
  v25[3] = &unk_2783B60D0;
  v26 = v4;
  v27 = v7;
  v18 = v7;
  v19 = v4;
  v20 = [(NSArray *)v8 bs_compactMap:v25];

  return v20;
}

id __61__SBExposeWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SBExposeWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_3;
  v10[3] = &unk_2783A8CB8;
  v5 = v3;
  v11 = v5;
  if ([v4 bs_containsObjectPassingTest:v10])
  {
    v6 = v5;
  }

  else if ([v5 containsAnyItemFromSet:*(a1 + 40)])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__SBExposeWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_4;
    v8[3] = &unk_2783A8C90;
    v9 = *(a1 + 40);
    v6 = [v5 appLayoutWithItemsPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3
{
  [(SBWindowingModifier *)self frameForIndex:a3];

  return CGRectGetWidth(*&v3);
}

- (id)destinationAppLayoutForDismissingCurrentMode
{
  v2 = [(SBExposeWindowingModifier *)self appLayout];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[SBAppLayout homeScreenAppLayout];
  }

  v5 = v4;

  return v5;
}

- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4
{
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6
{
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  v8[1] = *MEMORY[0x277D85DE8];
  organicExposeAppLayout = self->_organicExposeAppLayout;
  if (organicExposeAppLayout && (-[SBAppLayout allItems](organicExposeAppLayout, "allItems"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5 <= 2))
  {
    v8[0] = self->_organicExposeAppLayout;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (unint64_t)transactionCompletionOptions
{
  v3 = [(SBExposeWindowingModifier *)self appLayouts];
  if ([v3 count])
  {
    v4 = [(SBExposeWindowingModifier *)self isReduceMotionEnabled];

    if (v4)
    {
      return 6;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 6;
  }
}

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3
{
  result = [(SBExposeWindowingModifier *)self _indexOfLeadingAppLayout];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3
{
  v4 = [(SBExposeWindowingModifier *)self appLayouts];
  v5 = [v4 count];

  if (v5 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SBExposeWindowingModifier *)self _indexOfLeadingAppLayout];
}

- (unint64_t)_indexOfLeadingAppLayout
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_topMostItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(SBExposeWindowingModifier *)self appLayouts];
        v11 = [v10 indexOfObject:v9];

        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v5 = v11;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_11:

  return v5;
}

- (id)appLayoutsToResignActive
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(SBExposeWindowingModifier *)self appLayouts];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283370DA8];

  return v6;
}

- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([(NSSet *)self->_visibleItems containsObject:v6])
  {
    [(SBExposeWindowingModifier *)self frameForItem:v6];
    Computed = SBWindowingItemFrameGetComputed(&v14);
    v9 = v8;
  }

  else
  {
    [(SBExposeWindowingModifier *)self _heightForCardInSwitcherWithScaleFactor:0];
    v9 = Computed;
  }

  [(SBExposeWindowingModifier *)self containerViewBounds];
  [(SBExposeWindowingModifier *)self frameForLayoutRole:a3 inAppLayout:v6 withBounds:?];
  v11 = v10;
  if (BSFloatIsZero())
  {
    v12 = 1.0;
  }

  else
  {
    v12 = v9 / v11;
  }

  return v12;
}

- (double)contentPageViewScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withContentPageViewScale:(double)a5
{
  v8 = a4;
  if ([(SBAppLayout *)self->_organicExposeAppLayout isEqual:v8])
  {
    [(SBExposeWindowingModifier *)self scaleForLayoutRole:a3 inAppLayout:v8];
    a5 = v9;
  }

  return a5;
}

- (BOOL)useItemContainerFooterViewsForAppLayout:(id)a3
{
  v4 = a3;
  if ([(SBAppLayout *)self->_organicExposeAppLayout isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBExposeWindowingModifier;
    v5 = [(SBExposeWindowingModifier *)&v7 useItemContainerFooterViewsForAppLayout:v4];
  }

  return v5;
}

- (id)scrollViewAttributes
{
  v3 = objc_alloc_init(SBMutableSwitcherScrollViewAttributes);
  [(SBExposeWindowingModifier *)self _contentSize];
  [(SBSwitcherScrollViewAttributes *)v3 setContentSize:?];
  [(SBSwitcherScrollViewAttributes *)v3 setDecelerationRate:*MEMORY[0x277D76EC0]];
  [(SBSwitcherScrollViewAttributes *)v3 setScrollViewPagingEnabled:0];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpageSpacingForPaging:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setPagingOrigin:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpolatesDuringSwipeToKill:0];
  [(SBExposeWindowingModifier *)self switcherViewBounds];
  [(SBSwitcherScrollViewAttributes *)v3 setFrame:?];

  return v3;
}

- (double)minimumTranslationToKillIndex:(unint64_t)a3
{
  [(SBWindowingModifier *)self frameForIndex:?];
  [(SBWindowingModifier *)self scaleForIndex:a3];
  SBTransformedRectWithScale();

  return CGRectGetMinY(*&v5);
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  if (self->_fittedContentSize.width == *MEMORY[0x277CBF3A8] && self->_fittedContentSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    [(SBExposeWindowingModifier *)self layoutViewModelsIfNeeded];
  }

  [(SBExposeWindowingModifier *)self switcherViewBounds];
  v9 = v8;
  [(SBExposeWindowingModifier *)self _contentSize];
  v11 = v10;
  v12 = [(SBExposeWindowingModifier *)self isRTLEnabled];
  v13 = [(SBWindowingModifier *)self windowingConfiguration];
  [v13 switcherHorizontalEdgeSpacing];
  v15 = v14;
  v16 = [(SBExposeWindowingModifier *)self appLayouts];
  v17 = [v16 objectAtIndex:a3];
  [(SBExposeWindowingModifier *)self frameForItem:v17];
  Computed = SBWindowingItemFrameGetComputed(&v32);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [(SBExposeWindowingModifier *)self scrollViewContentOffset];
  v26 = 0.0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v26 = (v9 - v22) * 0.5;
      goto LABEL_20;
    }

    if (a4 != 3)
    {
      goto LABEL_20;
    }

LABEL_16:
    if (v12)
    {
      v26 = v15;
    }

    else
    {
      v26 = v9 - v22 - v15;
    }

    goto LABEL_20;
  }

  if (!a4)
  {
    goto LABEL_16;
  }

  v27 = v9 - v22 - v15;
  if (!v12)
  {
    v27 = v15;
  }

  if (a4 == 1)
  {
    v26 = v27;
  }

LABEL_20:
  v34.origin.x = Computed + v25;
  v34.origin.y = v20;
  v34.size.width = v22;
  v34.size.height = v24;
  v28 = fmax(CGRectGetMinX(v34) - v26, 0.0);
  if (v11 - v9 <= v28)
  {
    v29 = v11 - v9;
  }

  else
  {
    v29 = v28;
  }

  v30 = 0.0;
  v31 = v29;
  result.y = v30;
  result.x = v31;
  return result;
}

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3
{
  v5 = self->_effectiveRecentAppLayouts;
  v6 = [(NSArray *)v5 count];
  v7 = [(SBExposeWindowingModifier *)self numberOfRowsInGridSwitcher];
  v8 = [(SBExposeWindowingModifier *)self visibleItems];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || v6 <= a3)
  {
    if (v6 <= 0)
    {
      a3 = 0;
    }

    else
    {
      a3 = v6 - 1;
    }
  }

  else
  {
    v9 = [(NSArray *)v5 objectAtIndex:a3];
    v10 = [v8 containsObject:v9];

    v11 = v6 - 1;
    if (v6 <= 0)
    {
      v11 = 0;
    }

    if ((v10 & 1) == 0)
    {
      a3 = v11;
    }
  }

  v12 = a3 % v7;
  v13 = 0.0;
  if (a3 >= (a3 % v7) && a3 < v6)
  {
    v15 = [(NSArray *)v5 objectAtIndex:a3];
    v16 = [v8 containsObject:v15];

    v17 = 0x7FFFFFFFFFFFFFFFLL;
    if (v16)
    {
      while ((a3 - v7) >= v12 && (a3 - v7) < v6)
      {
        a3 -= v7;
        v19 = [(NSArray *)v5 objectAtIndex:?];
        v20 = [v8 containsObject:v19];

        if ((v20 & 1) == 0)
        {
          v17 = v7 + a3;
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:
      a3 = v17;
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }
    }

    v21 = [(NSArray *)self->_effectiveRecentAppLayouts objectAtIndex:a3];
    [(SBExposeWindowingModifier *)self frameForItem:v21];
    Computed = SBWindowingItemFrameGetComputed(v34);
    v24 = v23;
    v26 = v25;
    v28 = v27;

    if ([(SBExposeWindowingModifier *)self isRTLEnabled])
    {
      [(SBExposeWindowingModifier *)self switcherViewBounds];
      MaxX = v29 - Computed;
    }

    else
    {
      v35.origin.x = Computed;
      v35.origin.y = v24;
      v35.size.width = v26;
      v35.size.height = v28;
      MaxX = CGRectGetMaxX(v35);
    }

    v31 = [(SBWindowingModifier *)self windowingConfiguration];
    [v31 switcherHorizontalEdgeSpacing];
    v13 = MaxX + v32 * self->_horizontalEdgeSpacingScaleFactor;
  }

LABEL_28:

  return v13;
}

- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)a3
{
  v3 = [(SBExposeWindowingModifier *)self strip];
  v4 = [v3 appLayoutsInStrip];
  v5 = [v4 bs_flatten];
  v6 = [v5 bs_map:&__block_literal_global_39_0];
  v7 = [v6 bs_set];
  v8 = [v7 bs_array];

  return v8;
}

- (id)adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:(id)a3 identifiersInStrip:(id)a4
{
  v4 = [(NSArray *)self->_allAppLayouts bs_map:&__block_literal_global_41_1, a4];
  v5 = [v4 bs_set];
  v6 = [v5 bs_array];

  return v6;
}

- (CGRect)frameForShelf:(id)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)shelfBackgroundBlurFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)transitionDidUpdate:(id)a3
{
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v4];
}

- (void)layoutViewModelsIfNeeded
{
  v176.receiver = self;
  v176.super_class = SBExposeWindowingModifier;
  [(SBWindowingModifier *)&v176 layoutViewModelsIfNeeded];
  [(SBExposeWindowingModifier *)self _captureModelForOverflowAndManualModeIfNeeded];
  v3 = [(SBExposeWindowingModifier *)self switcherSettings];
  v4 = [v3 windowingSettings];

  v5 = [(SBWindowingModifier *)self windowingConfiguration];
  v6 = self->_organicExposeAppLayout;
  [(SBExposeWindowingModifier *)self containerViewBounds];
  v134 = v7;
  v9 = v8;
  scaleFactor = self->_scaleFactor;
  [v5 screenEdgePadding];
  v144 = v10;
  v142 = self->_scaleFactor;
  [v5 switcherHorizontalEdgeSpacing];
  v12 = v11;
  horizontalEdgeSpacingScaleFactor = self->_horizontalEdgeSpacingScaleFactor;
  [v5 switcherHorizontalInterItemSpacing];
  v150 = v14;
  v147 = self->_scaleFactor;
  [v5 switcherVerticalEdgeSpacing];
  v140 = v15;
  v138 = self->_scaleFactor;
  [v5 switcherVerticalInterItemSpacing];
  v136 = v16;
  v132 = self->_scaleFactor;
  [v5 switcherPileCardMinimumPeekAmount];
  v130 = v17;
  v126 = self->_scaleFactor;
  v18 = [(SBExposeWindowingModifier *)self isRTLEnabled];
  v146 = [v4 numberOfVisibleItemsPerGroup];
  [(SBExposeWindowingModifier *)self _heightForCardInSwitcherWithScaleFactor:1];
  v145 = v19;
  v170 = 0;
  v171 = &v170;
  v172 = 0x3032000000;
  v173 = __Block_byref_object_copy__58;
  v174 = __Block_byref_object_dispose__58;
  v175 = 0;
  self->_overrideContextToBuildAppLayoutsInExpose = 1;
  v20 = objc_opt_new();
  v167[0] = MEMORY[0x277D85DD0];
  v167[1] = 3221225472;
  v167[2] = __53__SBExposeWindowingModifier_layoutViewModelsIfNeeded__block_invoke;
  v167[3] = &unk_2783A9300;
  v21 = v20;
  v168 = v21;
  v169 = &v170;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v21 usingBlock:v167];
  v124 = v9 * scaleFactor;
  v22 = v12 * horizontalEdgeSpacingScaleFactor;

  self->_overrideContextToBuildAppLayoutsInExpose = 0;
  __asm { FMOV            V0.2D, #0.5 }

  v149 = _Q0;
  v123 = v22;
  if (v6)
  {
    v28 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v6];
    [v28 exposeBoundingBox];
    v30 = v29;
    UIRectGetCenter();
    if (v18)
    {
      v32 = v31;
    }

    else
    {
      v32 = -v31;
    }

    [(SBExposeWindowingModifier *)self floatingDockHeight];
    v36 = v35;
    SBRectWithSize();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v30 * 0.5 + (v124 - v36 - v30) * 0.5;
    v158 = v37;
    v159 = v39;
    v160 = v41;
    v161 = v43;
    v162 = v32;
    v163 = v45;
    __asm { FMOV            V1.2D, #1.0 }

    v164 = v149;
    v165 = _Q1;
    v128 = _Q1;
    v166 = *MEMORY[0x277CBF348];
    v125 = v166;
    Computed = SBWindowingItemFrameGetComputed(&v158);
    v119 = v48;
    v121 = v49;
    v50 = Computed;
    v52 = v51;
    v53 = [(SBWindowingModifier *)self viewModelForItem:v6];
    v54 = [v53 mutableCopy];

    v158 = v38;
    v159 = v40;
    v160 = v42;
    v161 = v44;
    v162 = v32;
    v163 = v45;
    v164 = v149;
    v165 = v128;
    v166 = v125;
    [v54 setFrame:&v158];
    [(SBWindowingModifier *)self setViewModel:v54 forItem:v6];
    if (v18)
    {
      v34 = v134 * scaleFactor + -40.0;
    }

    else
    {
      v34 = 40.0 - v134 * scaleFactor;
    }

    v55 = v50;
    v56 = v52;
    v57 = v119;
    v58 = v121;
    if (v18)
    {
      MaxX = CGRectGetMaxX(*&v55);
    }

    else
    {
      MaxX = CGRectGetMinX(*&v55);
    }

    [(SBExposeWindowingModifier *)self isRTLEnabled];
  }

  else
  {
    v33 = -v22;
    if (v18)
    {
      v33 = v22;
    }

    v34 = v33 + 0.0;
  }

  v60 = [v171[5] count];
  v117 = v6;
  v120 = v5;
  v122 = v4;
  v135 = v150 * v147;
  if (v60)
  {
    v61 = 0;
    v62 = v144 * v142;
    v143 = v130 * v126;
    v131 = v62 + v140 * v138 + v136 * v132 + v145;
    v133 = v62 + v140 * v138;
    v63 = -1.0;
    if (v18)
    {
      v63 = 1.0;
    }

    v127 = v63;
    v141 = v34;
    v129 = v60;
    do
    {
      v139 = v61;
      v64 = [v171[5] objectAtIndex:v117];
      v65 = [v64 count];
      v66 = v65;
      v67 = v133;
      if (v139)
      {
        v67 = v131;
      }

      v137 = v34;
      if (v139)
      {
        v34 = v141;
      }

      if (v65)
      {
        v68 = 0;
        v151 = v145 * 0.5 + v67;
        v153 = v34;
        v69 = v34;
        do
        {
          v70 = [v64 objectAtIndex:v68];
          v71 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v70];
          [v71 compactedBoundingBox];
          v74 = v145 / v73 + v68 * -0.01;
          v75 = v72 * v74;
          if (v68)
          {
            if (v18)
            {
              v76 = v153;
              if (v153 < v143 + v69 - v75)
              {
                v76 = v143 + v69 - v75;
              }
            }

            else
            {
              v76 = v153;
              if (v153 >= v69 - v143 + v75)
              {
                v76 = v69 - v143 + v75;
              }
            }

            v153 = v76;
          }

          if (v18)
          {
            v77 = -v75;
          }

          else
          {
            v77 = v72 * v74;
          }

          SBRectWithSize();
          v79 = v78;
          v81 = v80;
          v83 = v82;
          v85 = v84;
          v86 = v153 + v77 * -0.5;
          v158 = v78;
          v159 = v80;
          v160 = v82;
          v161 = v84;
          v162 = v86;
          v163 = v151;
          v164 = v149;
          *&v165 = v74;
          *(&v165 + 1) = v74;
          v148 = *MEMORY[0x277CBF348];
          v166 = *MEMORY[0x277CBF348];
          v87 = SBWindowingItemFrameGetComputed(&v158);
          if (v18)
          {
            MinX = CGRectGetMaxX(*&v87);
          }

          else
          {
            MinX = CGRectGetMinX(*&v87);
          }

          v69 = MinX;
          if (v68 < v146)
          {
            v34 = MinX;
          }

          v92 = [(SBWindowingModifier *)self viewModelForItem:v70];
          v93 = [v92 mutableCopy];

          v158 = v79;
          v159 = v81;
          v160 = v83;
          v161 = v85;
          v162 = v86;
          v163 = v151;
          v164 = v149;
          *&v165 = v74;
          *(&v165 + 1) = v74;
          v166 = v148;
          [v93 setFrame:&v158];
          [(SBWindowingModifier *)self setViewModel:v93 forItem:v70];

          ++v68;
        }

        while (v66 != v68);
      }

      v94 = v34 + v127 * v135;
      v95 = v141;
      if (v139)
      {
        v95 = v34 + v127 * v135;
      }

      v141 = v95;
      v34 = v137;
      if ((v139 & 1) == 0)
      {
        v34 = v94;
      }

      v61 = v139 + 1;
    }

    while (v139 + 1 != v129);
  }

  else
  {
    v141 = v34;
  }

  v96 = v141;
  if (v34 >= v141)
  {
    v97 = v34;
  }

  else
  {
    v97 = v141;
  }

  if (v34 < v141)
  {
    v96 = v34;
  }

  v98 = -v96;
  if (!v18)
  {
    v97 = v98;
  }

  self->_fittedContentSize.width = v123 - v135 + v97;
  self->_fittedContentSize.height = v124;
  [(SBExposeWindowingModifier *)self _visibleSwitcherBoundsIncludingShadow];
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v107 = [v171[5] bs_flatten];
  v108 = v107;
  if (v118)
  {
    v109 = [v107 sb_arrayByInsertingOrMovingObject:v118 toIndex:0];

    v108 = v109;
  }

  objc_storeStrong(&self->_pilesInExpose, v171[5]);
  objc_storeStrong(&self->_allAppLayouts, v108);
  allAppLayouts = self->_allAppLayouts;
  v157[0] = MEMORY[0x277D85DD0];
  v157[1] = 3221225472;
  v157[2] = __53__SBExposeWindowingModifier_layoutViewModelsIfNeeded__block_invoke_2;
  v157[3] = &unk_2783B60F8;
  v157[4] = self;
  v157[5] = v100;
  v157[6] = v102;
  v157[7] = v104;
  v157[8] = v106;
  v111 = [(NSArray *)allAppLayouts bs_filter:v157];
  v112 = [v111 mutableCopy];

  pilesInExpose = self->_pilesInExpose;
  v154[0] = MEMORY[0x277D85DD0];
  v154[1] = 3221225472;
  v154[2] = __53__SBExposeWindowingModifier_layoutViewModelsIfNeeded__block_invoke_3;
  v154[3] = &unk_2783B6120;
  v156 = v146;
  v114 = v112;
  v155 = v114;
  [(NSArray *)pilesInExpose enumerateObjectsUsingBlock:v154];
  objc_storeStrong(&self->_topMostItems, v112);
  v115 = [(NSArray *)self->_topMostItems bs_set];
  visibleItems = self->_visibleItems;
  self->_visibleItems = v115;

  _Block_object_dispose(&v170, 8);
}

void __53__SBExposeWindowingModifier_layoutViewModelsIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) update];
  v7 = [*(a1 + 32) stateModel];
  v3 = [v7 strip];
  v4 = [v3 appLayoutsInStrip];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

BOOL __53__SBExposeWindowingModifier_layoutViewModelsIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 frameForItem:a2];
  }

  v8[2] = v11;
  v8[3] = v12;
  v8[4] = v13;
  v8[5] = v14;
  v8[0] = v9;
  v8[1] = v10;
  v15.origin.x = SBWindowingItemFrameGetComputed(v8);
  v15.origin.y = v4;
  v15.size.width = v5;
  v15.size.height = v6;
  return CGRectIntersectsRect(*(a1 + 40), v15);
}

void __53__SBExposeWindowingModifier_layoutViewModelsIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  while (v4 < [v3 count])
  {
    v5 = *(a1 + 32);
    v6 = [v7 objectAtIndex:v4];
    [v5 removeObject:v6];

    ++v4;
    v3 = v7;
  }
}

- (void)appLayoutTapped:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_handlesTapAppLayoutEvents && ([v4 isHandled] & 1) == 0)
  {
    v6 = [v5 appLayout];
    v7 = [v6 itemForLayoutRole:{objc_msgSend(v5, "layoutRole")}];
    if (!v7)
    {
      goto LABEL_32;
    }

    v8 = [(SBExposeWindowingModifier *)self appLayout];
    v9 = [(SBExposeWindowingModifier *)self windowManagementContext];
    if ([v9 isAutomaticStageCreationEnabled])
    {
      v10 = [(SBExposeWindowingModifier *)self peekingAppLayout];

      if (v8)
      {
        v11 = [v8 containsItem:v7];
        if ((v11 & 1) != 0 || v10)
        {
          if (!v11)
          {
            if (!v10)
            {
              goto LABEL_29;
            }

            goto LABEL_14;
          }

          goto LABEL_13;
        }

LABEL_31:

        goto LABEL_32;
      }

      if (!v10)
      {
        goto LABEL_31;
      }
    }

    else
    {

      if (v8)
      {
        if (([v8 containsItem:v7] & 1) == 0)
        {
LABEL_14:
          v12 = [v8 appLayoutByInsertingItem:v7];
          goto LABEL_17;
        }

LABEL_13:
        v38.receiver = self;
        v38.super_class = SBExposeWindowingModifier;
        v10 = [(SBExposeWindowingModifier *)&v38 appLayoutContainingAppLayout:v6];
        goto LABEL_29;
      }
    }

    v12 = v6;
LABEL_17:
    v10 = v12;
    v13 = [(SBExposeWindowingModifier *)self desktopSpaceDisplayItems];
    v14 = [v13 containsObject:v7];

    if (v14)
    {
      v31 = v7;
      v37.receiver = self;
      v37.super_class = SBExposeWindowingModifier;
      v15 = [(SBExposeWindowingModifier *)&v37 appLayoutContainingAppLayout:v6];
      v16 = v15;
      v32 = v6;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v6;
      }

      v18 = v17;

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v30 = v18;
      v19 = [v18 leafAppLayouts];
      v20 = [v19 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v34;
        do
        {
          v23 = 0;
          v24 = v10;
          do
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v25 = [*(*(&v33 + 1) + 8 * v23) itemForLayoutRole:1];
            v10 = [v24 appLayoutByInsertingItem:v25];

            ++v23;
            v24 = v10;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v21);
      }

      v7 = v31;
      v6 = v32;
    }

LABEL_29:
    v26 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    v27 = [(SBExposeWindowingModifier *)self appLayoutByBringingItemToFront:v7 inAppLayout:v10];
    [(SBSwitcherTransitionRequest *)v26 setAppLayout:v27];

    [(SBSwitcherTransitionRequest *)v26 setPeekConfiguration:1];
    if (v26)
    {
LABEL_33:
      v29 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v26 gestureInitiated:0];
      [(SBWindowingModifier *)self appendResponse:v29];
      [v5 handleWithReason:@"Expose"];

      goto LABEL_34;
    }

LABEL_32:
    v26 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    v28 = [v5 appLayout];
    [(SBSwitcherTransitionRequest *)v26 setAppLayout:v28];

    [(SBSwitcherTransitionRequest *)v26 setPeekConfiguration:1];
    goto LABEL_33;
  }

LABEL_34:
}

- (void)appLayoutHeaderTapped:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_handlesTapAppLayoutHeaderEvents)
  {
    v13 = v4;
    v6 = [v4 isHandled];
    v5 = v13;
    if ((v6 & 1) == 0)
    {
      v7 = [v13 appLayout];
      v8 = [v7 itemForLayoutRole:{objc_msgSend(v13, "layoutRole")}];

      if ([(SBExposeWindowingModifier *)self displayItemSupportsMultipleWindowsIndicator:v8])
      {
        v9 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        [(SBSwitcherTransitionRequest *)v9 setSource:3];
        v10 = [v8 bundleIdentifier];
        [(SBSwitcherTransitionRequest *)v9 setBundleIdentifierForAppExpose:v10];

        [(SBSwitcherTransitionRequest *)v9 setPeekConfiguration:1];
        v11 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v9 gestureInitiated:0];
      }

      else
      {
        v9 = [[SBPulseDisplayItemSwitcherModifier alloc] initWithDisplayItem:v8];
        v11 = [[SBAddModifierSwitcherEventResponse alloc] initWithModifier:v9 level:3];
      }

      v12 = v11;
      [(SBWindowingModifier *)self appendResponse:v11];

      v5 = v13;
    }
  }
}

- (void)tappedOutsideToDismiss:(id)a3
{
  v14 = a3;
  if (([v14 isHandled] & 1) == 0)
  {
    v4 = [(SBExposeWindowingModifier *)self appLayout];
    if (([(SBExposeWindowingModifier *)self isDisplayEmbedded]& 1) == 0 && v4)
    {
      v5 = objc_opt_new();
      [v5 setUnlockedEnvironmentMode:3];
LABEL_19:
      v13 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v5 gestureInitiated:0];
      [(SBWindowingModifier *)self appendResponse:v13];

      [v14 handleWithReason:@"Expose"];
      goto LABEL_20;
    }

    v6 = [(SBExposeWindowingModifier *)self appLayout];
    v7 = [(SBExposeWindowingModifier *)self windowManagementContext];
    v8 = [v7 isAutomaticStageCreationEnabled];

    if (!v8 || !v6)
    {
      v12 = [(SBExposeWindowingModifier *)self desktopSpaceDisplayItems];
      if ([v12 count] && objc_msgSend(v6, "containsAllItemsFromSet:", v12))
      {
        v5 = objc_opt_new();
        [v5 setPeekConfiguration:2];
        [v5 setAppLayout:v6];
        [v5 setUnlockedEnvironmentMode:1];
      }

      else
      {
        v5 = +[SBSwitcherTransitionRequest requestForActivatingHomeScreen];
      }

      goto LABEL_18;
    }

    v5 = objc_opt_new();
    v9 = [v6 allItems];
    if ([v9 count] == 1)
    {
      v10 = [(SBExposeWindowingModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v6 ignoreOcclusion:1 ignoreCentering:0];
      v11 = [v10 count];

      if (v11 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    [v5 setPeekConfiguration:2];
LABEL_17:
    [v5 setAppLayout:v6];
    [v5 setUnlockedEnvironmentMode:1];
LABEL_18:

    goto LABEL_19;
  }

LABEL_20:
}

- (void)itemInserted:(id)a3
{
  if ([a3 phase] == 2)
  {
    v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    [(SBWindowingModifier *)self appendResponse:v4];
  }
}

- (void)itemRemoved:(id)a3
{
  v4 = a3;
  if ([v4 phase] == 1)
  {
    ++self->_ongoingAppLayoutRemovals;
    v5 = [(SBExposeWindowingModifier *)self windowManagementContext];
    if (![v5 isFlexibleWindowingEnabled])
    {
LABEL_18:

      goto LABEL_19;
    }

    v6 = [v4 appLayout];
    v7 = [v6 itemForLayoutRole:{objc_msgSend(v4, "layoutRole")}];

    if (([v5 isAutomaticStageCreationEnabled] & 1) == 0)
    {
      v8 = [SBRemoveFromDesktopSwitcherEventResponse alloc];
      v9 = [MEMORY[0x277CBEB98] setWithObject:v7];
      v10 = [(SBRemoveFromDesktopSwitcherEventResponse *)v8 initWithDisplayItems:v9];
      [(SBWindowingModifier *)self appendResponse:v10];
    }

    v11 = [[SBToggleSlideOverForDisplayItemSwitcherEventResponse alloc] initWithDisplayItem:v7 direction:1];
LABEL_17:
    v21 = v11;
    [(SBWindowingModifier *)self appendResponse:v11];

    goto LABEL_18;
  }

  if ([v4 phase] == 2)
  {
    --self->_ongoingAppLayoutRemovals;
    [(SBExposeWindowingModifier *)self _captureModelForOverflowAndManualModeIfNeeded];
    v5 = [(SBExposeWindowingModifier *)self appLayout];
    v7 = [v4 appLayout];
    if ([(NSArray *)self->_effectiveRecentAppLayouts count]|| self->_ongoingAppLayoutRemovals)
    {
      if (BSEqualObjects() && !self->_ongoingAppLayoutRemovals)
      {
        v12 = [v7 itemForLayoutRole:{objc_msgSend(v4, "layoutRole")}];
        v13 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __41__SBExposeWindowingModifier_itemRemoved___block_invoke;
        v22[3] = &unk_2783A8C90;
        v14 = v12;
        v23 = v14;
        v15 = [v5 appLayoutWithItemsPassingTest:v22];
        if (v15)
        {
          [(SBSwitcherTransitionRequest *)v13 setAppLayout:v15];
        }

        else
        {
          v19 = +[SBAppLayout homeScreenAppLayout];
          [(SBSwitcherTransitionRequest *)v13 setAppLayout:v19];
        }

        [(SBSwitcherTransitionRequest *)v13 setUnlockedEnvironmentMode:2];
        v20 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v13 gestureInitiated:0];
        [(SBWindowingModifier *)self appendResponse:v20];
      }
    }

    else
    {
      v16 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      v17 = +[SBAppLayout homeScreenAppLayout];
      [(SBSwitcherTransitionRequest *)v16 setAppLayout:v17];

      [(SBSwitcherTransitionRequest *)v16 setAutoPIPDisabled:1];
      v18 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v16 gestureInitiated:0];
      [(SBWindowingModifier *)self appendResponse:v18];
    }

    v11 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    goto LABEL_17;
  }

LABEL_19:
}

- (CGRect)_visibleSwitcherBoundsIncludingShadow
{
  v3 = [(SBExposeWindowingModifier *)self switcherSettings];
  [v3 switcherCardShadowRadius];
  v5 = v4;

  [(SBExposeWindowingModifier *)self bounds];

  return CGRectInset(*&v6, v5 * -2.8, v5 * -2.8);
}

- (CGSize)_contentSize
{
  [(SBExposeWindowingModifier *)self bounds];
  v5 = v4;
  width = self->_fittedContentSize.width;
  if (width < v3)
  {
    width = v3;
  }

  result.height = v5;
  result.width = width;
  return result;
}

- (CGSize)_fittedContentSize
{
  width = self->_fittedContentSize.width;
  height = self->_fittedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)_heightForCardInSwitcherWithScaleFactor:(BOOL)a3
{
  v4 = [(SBWindowingModifier *)self windowingConfiguration];
  [v4 screenEdgePadding];
  [v4 switcherVerticalEdgeSpacing];
  [v4 switcherVerticalInterItemSpacing];
  [(SBExposeWindowingModifier *)self switcherViewBounds];
  [(SBExposeWindowingModifier *)self numberOfRowsInGridSwitcher];
  [(SBExposeWindowingModifier *)self screenScale];
  [(SBExposeWindowingModifier *)self floatingDockHeight];
  [(SBExposeWindowingModifier *)self statusBarHeight];
  BSFloatRoundForScale();
  v6 = v5;

  return v6;
}

- (void)_captureModelForOverflowAndManualModeIfNeeded
{
  v2 = self;
  v124 = *MEMORY[0x277D85DE8];
  v120.receiver = self;
  v120.super_class = SBExposeWindowingModifier;
  v3 = [(SBExposeWindowingModifier *)&v120 recentAppLayouts];
  v4 = [v3 bs_map:&__block_literal_global_60_0];
  v5 = [v4 bs_flatten];
  v6 = [v5 bs_set];

  v119.receiver = v2;
  v119.super_class = SBExposeWindowingModifier;
  obj = [(SBExposeWindowingModifier *)&v119 recentAppLayouts];
  v7 = [(SBExposeWindowingModifier *)v2 displayItemInSlideOver];
  if (v7)
  {
    if ([v6 containsObject:v7])
    {
      v8 = [(SBExposeWindowingModifier *)v2 appLayout];
      v9 = [(SBExposeWindowingModifier *)v2 layoutAttributesForDisplayItem:v7 inAppLayout:v8];
      [(SBDisplayItemLayoutAttributes *)v9 slideOverConfiguration];
      v10 = v118[33];

      v11 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      v8 = v7;
      v7 = 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  v12 = [(SBExposeWindowingModifier *)v2 windowManagementContext];
  if (([v12 isAutomaticStageCreationEnabled] & 1) == 0)
  {

    goto LABEL_23;
  }

  v13 = [(SBExposeWindowingModifier *)v2 peekingAppLayout];

  if (v13)
  {
LABEL_23:
    v26 = [(SBExposeWindowingModifier *)v2 desktopSpaceDisplayItems];
    v27 = [(SBExposeWindowingModifier *)v2 appLayout];
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = __74__SBExposeWindowingModifier__captureModelForOverflowAndManualModeIfNeeded__block_invoke_2;
    v114[3] = &unk_2783B6148;
    v115 = v26;
    v116 = v7;
    v117 = v27;
    v15 = v27;
    v25 = v26;
    v28 = [obj bs_compactMap:v114];
    v14 = [v28 bs_flatten];

    goto LABEL_24;
  }

  if (v11 & 1 | ((v10 & 1) == 0))
  {
    goto LABEL_25;
  }

  v14 = objc_opt_new();
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v15 = obj;
  v16 = [v15 countByEnumeratingWithState:&v110 objects:v123 count:16];
  if (v16)
  {
    v17 = v16;
    v87 = v11;
    v91 = v10;
    obja = v6;
    v18 = *v111;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v111 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v110 + 1) + 8 * i);
        if ([v20 containsItem:v7] && (objc_msgSend(v20, "allItems"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v22 != 1))
        {
          v23 = [v20 leafAppLayoutForItem:v7];
          v24 = [v20 appLayoutByRemovingItemInLayoutRole:{objc_msgSend(v20, "layoutRoleForItem:", v7)}];
          [v14 addObject:v23];
          [v14 addObject:v24];
        }

        else
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v110 objects:v123 count:16];
    }

    while (v17);
    v25 = v15;
    v6 = obja;
    v10 = v91;
    v11 = v87;
  }

  else
  {
    v25 = v15;
  }

LABEL_24:

  obj = v14;
LABEL_25:
  v29 = [(SBExposeWindowingModifier *)v2 appLayout];
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __74__SBExposeWindowingModifier__captureModelForOverflowAndManualModeIfNeeded__block_invoke_3;
  v108[3] = &unk_2783A8C90;
  v30 = v6;
  v109 = v30;
  v31 = [v29 appLayoutWithItemsPassingTest:v108];

  v32 = [(SBExposeWindowingModifier *)v2 desktopSpaceDisplayItems];
  v33 = v32;
  if ((v11 | v10))
  {
    v34 = v32;
  }

  else
  {
    v34 = [v32 setByAddingObject:v7];
  }

  v35 = v34;
  if (![v34 count])
  {
LABEL_59:
    if (!v31)
    {
      goto LABEL_77;
    }

    goto LABEL_60;
  }

  if (!v31)
  {
    if (![v33 count])
    {
      v31 = 0;
      goto LABEL_77;
    }

    v39 = [SBAppLayout alloc];
    v40 = [v33 bs_array];
    if ([v33 count] <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = 3;
    }

    LOBYTE(v85) = 0;
    v31 = [(SBAppLayout *)v39 initWithItems:v40 centerItem:0 floatingItem:0 configuration:v41 centerConfiguration:0 environment:1 hidden:v85 preferredDisplayOrdinal:[(SBExposeWindowingModifier *)v2 displayOrdinal]];
    goto LABEL_58;
  }

  if ([(SBAppLayout *)v31 containsAllItemsFromSet:v35])
  {
    v36 = [(SBAppLayout *)v31 allItems];
    v37 = [v36 count];
    if (v37 <= [v35 count])
    {
    }

    else
    {
      v38 = [(SBExposeWindowingModifier *)v2 _effectiveIndexInRecencyOfAppLayout:v31];

      if (v38)
      {
        goto LABEL_42;
      }
    }
  }

  if (![(SBAppLayout *)v31 containsAllItemsFromSet:v35]&& [(SBExposeWindowingModifier *)v2 _effectiveIndexInRecencyOfAppLayout:v31]>= 2)
  {
LABEL_42:
    v42 = [SBAppLayout alloc];
    v40 = [v35 bs_array];
    [v35 bs_array];
    v44 = v43 = v30;
    if ([v44 count] <= 1)
    {
      v45 = 1;
    }

    else
    {
      v45 = 3;
    }

    LOBYTE(v85) = 0;
    v46 = [(SBAppLayout *)v42 initWithItems:v40 centerItem:0 floatingItem:0 configuration:v45 centerConfiguration:0 environment:1 hidden:v85 preferredDisplayOrdinal:[(SBExposeWindowingModifier *)v2 displayOrdinal]];

    v30 = v43;
    v31 = v46;
LABEL_58:

    goto LABEL_59;
  }

  if (![(SBAppLayout *)v31 containsAllItemsFromSet:v35]&& [(SBExposeWindowingModifier *)v2 _effectiveIndexInRecencyOfAppLayout:v31]== 1)
  {
    v47 = v30;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v40 = v35;
    v48 = [v40 countByEnumeratingWithState:&v104 objects:v122 count:16];
    if (v48)
    {
      v49 = v48;
      v88 = v35;
      v92 = v33;
      v50 = *v105;
      do
      {
        v51 = 0;
        v52 = v31;
        do
        {
          if (*v105 != v50)
          {
            objc_enumerationMutation(v40);
          }

          v31 = [(SBAppLayout *)v52 appLayoutByInsertingItem:*(*(&v104 + 1) + 8 * v51)];

          ++v51;
          v52 = v31;
        }

        while (v49 != v51);
        v49 = [v40 countByEnumeratingWithState:&v104 objects:v122 count:16];
      }

      while (v49);
      v30 = v47;
      v35 = v88;
      v33 = v92;
    }

    goto LABEL_58;
  }

LABEL_60:
  v53 = v30;
  v54 = [obj mutableCopy];
  v55 = [(SBExposeWindowingModifier *)v2 maximumNumberOfVisibleScenesOnStage];
  v56 = [(SBExposeWindowingModifier *)v2 switcherSettings];
  v57 = [v56 sceneRelevancySettings];
  v58 = v55 - [v57 numberOfFadingScenesOnStage];

  v59 = [(SBAppLayout *)v31 allItems];
  v60 = [v59 count];

  v93 = v33;
  if (v60 <= v58)
  {
    v30 = v53;
  }

  else
  {
    v61 = [(SBExposeWindowingModifier *)v2 zOrderedItemsInAppLayout:v31];
    v62 = [v61 count];
    v30 = v53;
    if (v62 > v58)
    {
      v89 = v35;
      v86 = v61;
      v63 = [v61 subarrayWithRange:{v58, (v62 - v58) & ~((v62 - v58) >> 63)}];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v64 = [v63 countByEnumeratingWithState:&v100 objects:v121 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v101;
        do
        {
          for (j = 0; j != v65; ++j)
          {
            if (*v101 != v66)
            {
              objc_enumerationMutation(v63);
            }

            v68 = [(SBAppLayout *)v31 leafAppLayoutForItem:*(*(&v100 + 1) + 8 * j)];
            [v54 insertObject:v68 atIndex:0];
          }

          v65 = [v63 countByEnumeratingWithState:&v100 objects:v121 count:16];
        }

        while (v65);
      }

      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __74__SBExposeWindowingModifier__captureModelForOverflowAndManualModeIfNeeded__block_invoke_4;
      v98[3] = &unk_2783A8C90;
      v99 = v63;
      v69 = v63;
      v70 = [(SBAppLayout *)v31 appLayoutWithItemsPassingTest:v98];

      v31 = v70;
      v30 = v53;
      v35 = v89;
      v61 = v86;
    }
  }

  if (![v54 containsObject:v31] || objc_msgSend(v35, "count") && (objc_msgSend(v54, "firstObject"), v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(v71, "containsAllItemsFromSet:", v35), v71, (v72 & 1) == 0))
  {
    [v54 insertObject:v31 atIndex:0];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __74__SBExposeWindowingModifier__captureModelForOverflowAndManualModeIfNeeded__block_invoke_5;
    v96[3] = &unk_2783AE218;
    v97 = v31;
    v73 = [v54 bs_compactMap:v96];
    v74 = [v73 mutableCopy];

    v54 = v74;
  }

  obj = v54;
  v33 = v93;
LABEL_77:
  objc_storeStrong(&v2->_effectiveRecentAppLayouts, obj);
  v75 = [(SBAppLayout *)v31 allItems];
  if ([v75 count] < 2)
  {
    if (v31)
    {
      [(SBExposeWindowingModifier *)v2 maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v31 ignoreOcclusion:1 ignoreCentering:0];
      v90 = v2;
      v76 = v35;
      v78 = v77 = v33;
      v79 = [(SBAppLayout *)v31 allItems];
      [v79 firstObject];
      v81 = v80 = v30;
      v82 = [v78 containsObject:v81];

      v30 = v80;
      v33 = v77;
      v35 = v76;
      v2 = v90;

      if ((v82 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
    }

    organicExposeAppLayout = v2->_organicExposeAppLayout;
    v2->_organicExposeAppLayout = 0;
    goto LABEL_84;
  }

LABEL_81:
  v83 = v31;
  organicExposeAppLayout = v2->_organicExposeAppLayout;
  v2->_organicExposeAppLayout = v83;
LABEL_84:
}

id __74__SBExposeWindowingModifier__captureModelForOverflowAndManualModeIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count] && objc_msgSend(v3, "containsAllItemsFromSet:", *(a1 + 32)) || *(a1 + 40) && objc_msgSend(v3, "containsItem:") && objc_msgSend(*(a1 + 48), "isOrContainsAppLayout:", v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 leafAppLayouts];
  }

  v5 = v4;

  return v5;
}

id __74__SBExposeWindowingModifier__captureModelForOverflowAndManualModeIfNeeded__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqual:*(a1 + 32)])
  {
    v4 = v3;
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__SBExposeWindowingModifier__captureModelForOverflowAndManualModeIfNeeded__block_invoke_6;
    v6[3] = &unk_2783A8C90;
    v7 = *(a1 + 32);
    v4 = [v3 appLayoutWithItemsPassingTest:v6];
  }

  return v4;
}

- (int64_t)_effectiveIndexInRecencyOfAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBExposeWindowingModifier *)self recentAppLayouts];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(SBExposeWindowingModifier *)self recentAppLayouts];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__SBExposeWindowingModifier__effectiveIndexInRecencyOfAppLayout___block_invoke;
    v9[3] = &unk_2783AE1A0;
    v10 = v4;
    v6 = [v7 indexOfObjectPassingTest:v9];
  }

  return v6;
}

uint64_t __65__SBExposeWindowingModifier__effectiveIndexInRecencyOfAppLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isOrContainsAppLayout:*(a1 + 32)])
  {
    v4 = [*(a1 + 32) isOrContainsAppLayout:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end