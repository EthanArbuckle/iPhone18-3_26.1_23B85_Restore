@interface _SBGridFloorSwitcherModifier
- (BOOL)clipsToUnobscuredMarginAtIndex:(unint64_t)a3;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3;
- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)a3;
- (BOOL)shouldAnimateInsertionOrRemovalOfAppLayout:(id)a3 atIndex:(unint64_t)a4;
- (BOOL)shouldBringCardToFrontDuringInsertionOrRemoval;
- (CGPoint)adjustedOffsetForOffset:(CGPoint)a3 translation:(CGPoint)a4 startPoint:(CGPoint)a5 locationInView:(CGPoint)a6 horizontalVelocity:(double *)a7 verticalVelocity:(double *)a8;
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGPoint)restingOffsetForScrollOffset:(CGPoint)a3 velocity:(CGPoint)a4;
- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4;
- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForShelf:(id)a3;
- (CGRect)shelfBackgroundBlurFrame;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4;
- (double)contentViewScale;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)iconOpacityForIndex:(unint64_t)a3;
- (double)minimumTranslationToKillIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)rotationAngleForIndex:(unint64_t)a3;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOffsetForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (double)titleOpacityForIndex:(unint64_t)a3;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (double)wallpaperScale;
- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)a3;
- (id)adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:(id)a3 identifiersInStrip:(id)a4;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)scrollViewAttributes;
- (id)visibleHomeAffordanceLayoutElements;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3;
- (unint64_t)transactionCompletionOptions;
- (void)resetAdjustedScrollingState;
@end

@implementation _SBGridFloorSwitcherModifier

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v9 = [(_SBGridFloorSwitcherModifier *)self appLayouts];
  v10 = [v9 objectAtIndex:a3];

  v11 = [(_SBGridFloorSwitcherModifier *)self appLayoutContainingAppLayout:v10];
  v12 = [v10 allItems];
  v13 = [v12 count];

  if (v13 == 1 && v10 != v11)
  {
    v14 = [v10 itemForLayoutRole:1];
    v15 = [v11 layoutRoleForItem:v14];
    [(_SBGridFloorSwitcherModifier *)self containerViewBounds];
    v30.receiver = self;
    v30.super_class = _SBGridFloorSwitcherModifier;
    [(_SBGridFloorSwitcherModifier *)&v30 frameForLayoutRole:v15 inAppLayout:v11 withBounds:?];
    v5 = v16;
    v6 = v17;
    v7 = v18;
    v8 = v19;
  }

  v31.origin.x = v5;
  v31.origin.y = v6;
  v31.size.width = v7;
  v31.size.height = v8;
  if (CGRectIsNull(v31))
  {
    if ([v10 environment] == 3)
    {
      [(_SBGridFloorSwitcherModifier *)self centerWindowFrameInInterfaceOrientation:[(_SBGridFloorSwitcherModifier *)self switcherInterfaceOrientation] centerConfiguration:1];
      v7 = v20;
      v8 = v21;
      v5 = *MEMORY[0x277CBF348];
      v6 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      [(_SBGridFloorSwitcherModifier *)self containerViewBounds];
      v5 = v22;
      v6 = v23;
      v7 = v24;
      v8 = v25;
    }
  }

  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:293 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 1.0;
}

- (double)rotationAngleForIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:298 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 0.0;
}

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3
{
  v3 = [(_SBGridFloorSwitcherModifier *)self homeGrabberSettings];
  v4 = [v3 isEnabled];

  return v4;
}

- (id)visibleHomeAffordanceLayoutElements
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:311 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  v8 = MEMORY[0x277CBEB98];

  return [v8 set];
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

- (double)contentViewScale
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:352 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  return 1.0;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:357 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  __break(1u);
  return result;
}

- (BOOL)clipsToUnobscuredMarginAtIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:362 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 0;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:367 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  [(_SBGridFloorSwitcherModifier *)self frameForIndex:a3];

  return CGRectGetWidth(*&v10);
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:390 description:{@"%@ shouldn't be asked %@.", v9, v10}];

  return 1.0;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:407 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 1.0;
}

- (double)titleOpacityForIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:412 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 1.0;
}

- (double)iconOpacityForIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:417 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 1.0;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:422 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return 1.0;
}

- (double)shadowOffsetForIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:427 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 0.0;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:432 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  v9 = *MEMORY[0x277D76E40];
  v10 = *(MEMORY[0x277D76E40] + 8);
  v11 = *(MEMORY[0x277D76E40] + 16);
  v12 = *(MEMORY[0x277D76E40] + 24);
  result.topRight = v12;
  result.bottomRight = v11;
  result.bottomLeft = v10;
  result.topLeft = v9;
  return result;
}

- (double)homeScreenAlpha
{
  v2 = [(_SBGridFloorSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 homeScreenOpacityInSwitcher];
  v5 = v4;

  return v5;
}

- (double)homeScreenScale
{
  v2 = [(_SBGridFloorSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 homeScreenScaleForMode:2];
  v5 = v4;

  return v5;
}

- (double)wallpaperScale
{
  v2 = [(_SBGridFloorSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 wallpaperScaleForMode:2];
  v5 = v4;

  return v5;
}

- (double)homeScreenDimmingAlpha
{
  v2 = [(_SBGridFloorSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 homeScreenDimmingAlphaForMode:2];
  v5 = v4;

  return v5;
}

- (double)homeScreenBackdropBlurProgress
{
  v2 = [(_SBGridFloorSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 homeScreenBlurProgressForMode:2];
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

- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)a3
{
  v3 = [a3 itemForLayoutRole:2];
  v4 = v3 != 0;

  return v4;
}

- (id)appLayoutsToCacheSnapshots
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:599 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  return MEMORY[0x277CBEBF8];
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:604 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  return MEMORY[0x277CBEBF8];
}

- (unint64_t)transactionCompletionOptions
{
  v3 = [(_SBGridFloorSwitcherModifier *)self appLayouts];
  if ([v3 count])
  {
    v4 = [(_SBGridFloorSwitcherModifier *)self isReduceMotionEnabled];

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

- (BOOL)shouldAnimateInsertionOrRemovalOfAppLayout:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:663 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return 1;
}

- (BOOL)shouldBringCardToFrontDuringInsertionOrRemoval
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:668 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  return 1;
}

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:673 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return a3;
}

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:678 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return a3;
}

- (id)appLayoutsToResignActive
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(_SBGridFloorSwitcherModifier *)self appLayouts];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 dictionaryWithObject:v5 forKey:&unk_2833720C8];

  return v6;
}

- (id)scrollViewAttributes
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:757 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  return 0;
}

- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:762 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return 0.0;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:767 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)restingOffsetForScrollOffset:(CGPoint)a3 velocity:(CGPoint)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:772 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  result.y = v11;
  result.x = v10;
  return result;
}

- (double)minimumTranslationToKillIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:777 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 0.0;
}

- (id)adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:(id)a3 identifiersInStrip:(id)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:784 description:{@"%@ shouldn't be asked %@.", v9, v10}];

  return v6;
}

- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:789 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return v5;
}

- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:794 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return 0.0;
}

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:799 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 0.0;
}

- (CGPoint)adjustedOffsetForOffset:(CGPoint)a3 translation:(CGPoint)a4 startPoint:(CGPoint)a5 locationInView:(CGPoint)a6 horizontalVelocity:(double *)a7 verticalVelocity:(double *)a8
{
  v10 = [MEMORY[0x277CCA890] currentHandler];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = NSStringFromSelector(a2);
  [v10 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:804 description:{@"%@ shouldn't be asked %@.", v12, v13}];

  v14 = *MEMORY[0x277CBF348];
  v15 = *(MEMORY[0x277CBF348] + 8);
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)resetAdjustedScrollingState
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:809 description:{@"%@ shouldn't be asked %@.", v5, v6}];
}

@end