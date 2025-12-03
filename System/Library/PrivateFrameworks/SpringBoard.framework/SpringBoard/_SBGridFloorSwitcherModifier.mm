@interface _SBGridFloorSwitcherModifier
- (BOOL)clipsToUnobscuredMarginAtIndex:(unint64_t)index;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout;
- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)layout;
- (BOOL)shouldAnimateInsertionOrRemovalOfAppLayout:(id)layout atIndex:(unint64_t)index;
- (BOOL)shouldBringCardToFrontDuringInsertionOrRemoval;
- (CGPoint)adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)view horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity;
- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment;
- (CGPoint)restingOffsetForScrollOffset:(CGPoint)offset velocity:(CGPoint)velocity;
- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForShelf:(id)shelf;
- (CGRect)shelfBackgroundBlurFrame;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)contentPageViewScaleForAppLayout:(id)layout withScale:(double)scale;
- (double)contentViewScale;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)search;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)iconOpacityForIndex:(unint64_t)index;
- (double)minimumTranslationToKillIndex:(unint64_t)index;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)rotationAngleForIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)shadowOffsetForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (double)snapshotScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (double)titleOpacityForIndex:(unint64_t)index;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index;
- (double)wallpaperScale;
- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)strip;
- (id)adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:(id)switcher identifiersInStrip:(id)strip;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)scrollViewAttributes;
- (id)visibleHomeAffordanceLayoutElements;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)index;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)index;
- (unint64_t)transactionCompletionOptions;
- (void)resetAdjustedScrollingState;
@end

@implementation _SBGridFloorSwitcherModifier

- (CGRect)frameForIndex:(unint64_t)index
{
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  appLayouts = [(_SBGridFloorSwitcherModifier *)self appLayouts];
  v10 = [appLayouts objectAtIndex:index];

  v11 = [(_SBGridFloorSwitcherModifier *)self appLayoutContainingAppLayout:v10];
  allItems = [v10 allItems];
  v13 = [allItems count];

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

- (double)scaleForIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:293 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 1.0;
}

- (double)rotationAngleForIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:298 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 0.0;
}

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout
{
  homeGrabberSettings = [(_SBGridFloorSwitcherModifier *)self homeGrabberSettings];
  isEnabled = [homeGrabberSettings isEnabled];

  return isEnabled;
}

- (id)visibleHomeAffordanceLayoutElements
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:311 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  v8 = MEMORY[0x277CBEB98];

  return [v8 set];
}

- (CGRect)frameForShelf:(id)shelf
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:352 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  return 1.0;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:357 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  __break(1u);
  return result;
}

- (BOOL)clipsToUnobscuredMarginAtIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:362 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 0;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:367 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  [(_SBGridFloorSwitcherModifier *)self frameForIndex:index];

  return CGRectGetWidth(*&v10);
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:390 description:{@"%@ shouldn't be asked %@.", v9, v10}];

  return 1.0;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:407 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 1.0;
}

- (double)titleOpacityForIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:412 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 1.0;
}

- (double)iconOpacityForIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:417 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 1.0;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:422 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return 1.0;
}

- (double)shadowOffsetForIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:427 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 0.0;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:432 description:{@"%@ shouldn't be asked %@.", v7, v8}];

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
  switcherSettings = [(_SBGridFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenOpacityInSwitcher];
  v5 = v4;

  return v5;
}

- (double)homeScreenScale
{
  switcherSettings = [(_SBGridFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenScaleForMode:2];
  v5 = v4;

  return v5;
}

- (double)wallpaperScale
{
  switcherSettings = [(_SBGridFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings wallpaperScaleForMode:2];
  v5 = v4;

  return v5;
}

- (double)homeScreenDimmingAlpha
{
  switcherSettings = [(_SBGridFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenDimmingAlphaForMode:2];
  v5 = v4;

  return v5;
}

- (double)homeScreenBackdropBlurProgress
{
  switcherSettings = [(_SBGridFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenBlurProgressForMode:2];
  v5 = v4;

  return v5;
}

- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds
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

- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds
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

- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)layout
{
  v3 = [layout itemForLayoutRole:2];
  v4 = v3 != 0;

  return v4;
}

- (id)appLayoutsToCacheSnapshots
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:599 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  return MEMORY[0x277CBEBF8];
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:604 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  return MEMORY[0x277CBEBF8];
}

- (unint64_t)transactionCompletionOptions
{
  appLayouts = [(_SBGridFloorSwitcherModifier *)self appLayouts];
  if ([appLayouts count])
  {
    isReduceMotionEnabled = [(_SBGridFloorSwitcherModifier *)self isReduceMotionEnabled];

    if (isReduceMotionEnabled)
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

- (BOOL)shouldAnimateInsertionOrRemovalOfAppLayout:(id)layout atIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:663 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return 1;
}

- (BOOL)shouldBringCardToFrontDuringInsertionOrRemoval
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:668 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  return 1;
}

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:673 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return index;
}

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:678 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return index;
}

- (id)appLayoutsToResignActive
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CBEB98];
  appLayouts = [(_SBGridFloorSwitcherModifier *)self appLayouts];
  v5 = [v3 setWithArray:appLayouts];
  v6 = [v2 dictionaryWithObject:v5 forKey:&unk_2833720C8];

  return v6;
}

- (id)scrollViewAttributes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:757 description:{@"%@ shouldn't be asked %@.", v6, v7}];

  return 0;
}

- (double)contentPageViewScaleForAppLayout:(id)layout withScale:(double)scale
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:762 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return 0.0;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:767 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)restingOffsetForScrollOffset:(CGPoint)offset velocity:(CGPoint)velocity
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:772 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  result.y = v11;
  result.x = v10;
  return result;
}

- (double)minimumTranslationToKillIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:777 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 0.0;
}

- (id)adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:(id)switcher identifiersInStrip:(id)strip
{
  switcherCopy = switcher;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:784 description:{@"%@ shouldn't be asked %@.", v9, v10}];

  return switcherCopy;
}

- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)strip
{
  stripCopy = strip;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:789 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return stripCopy;
}

- (double)snapshotScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:794 description:{@"%@ shouldn't be asked %@.", v8, v9}];

  return 0.0;
}

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)search
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:799 description:{@"%@ shouldn't be asked %@.", v7, v8}];

  return 0.0;
}

- (CGPoint)adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)view horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:804 description:{@"%@ shouldn't be asked %@.", v12, v13}];

  v14 = *MEMORY[0x277CBF348];
  v15 = *(MEMORY[0x277CBF348] + 8);
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)resetAdjustedScrollingState
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBGridSwitcherModifier.m" lineNumber:809 description:{@"%@ shouldn't be asked %@.", v5, v6}];
}

@end