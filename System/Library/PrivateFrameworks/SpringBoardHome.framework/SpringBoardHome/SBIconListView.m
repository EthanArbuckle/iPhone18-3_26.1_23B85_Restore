@interface SBIconListView
+ (CGRect)defaultFrameForOrientation:(int64_t)a3;
+ (id)builtInAnimatorForAnimationType:(int64_t)a3;
+ (id)clusterAnimator;
+ (id)defaultAnimator;
+ (id)dominoAnimator;
+ (id)layoutMetricsForParameters:(SBIconListLayoutMetricsParameters *)a3 listModel:(id)a4;
+ (id)multiStageAnimator;
+ (unint64_t)gridCellInfoOptionsWithInterfaceOrientation:(int64_t)a3 reversedLayout:(BOOL)a4 flippedLayout:(BOOL)a5 allowGaps:(BOOL)a6;
+ (unint64_t)iconViewUserVisibilityStatusForContentVisibility:(unint64_t)a3;
- (BOOL)_iconMatchingCoordinateBeginsInThatRow:(SBIconCoordinate)a3 metrics:(id)a4;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)containsIcon:(id)a3;
- (BOOL)containsWidget;
- (BOOL)getIconGridRange:(SBHIconGridRange *)a3 forGridCellIndex:(unint64_t)a4 metrics:(id)a5;
- (BOOL)getIconStartGridCellIndex:(unint64_t *)a3 gridSize:(SBHIconGridSize *)a4 forGridCellIndex:(unint64_t)a5 metrics:(id)a6;
- (BOOL)hasTemporaryModel;
- (BOOL)isDisplayingIcon:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isFull;
- (BOOL)isIconGlassGroupingAllowedForIcon:(id)a3;
- (BOOL)isLayoutPausedForIconView:(id)a3;
- (BOOL)isTransitioningIconLocation;
- (BOOL)modelHasNonDefaultSizedIcons;
- (BOOL)restoreDraggedIconView:(id)a3;
- (BOOL)shouldReparentView:(id)a3;
- (CGPoint)_alignedIconPointForPoint:(CGPoint)a3;
- (CGPoint)centerForDraggedIconView:(id)a3;
- (CGPoint)centerForIcon:(id)a3;
- (CGPoint)centerForIcon:(id)a3 metrics:(id)a4;
- (CGPoint)centerForIconAtIndex:(unint64_t)a3;
- (CGPoint)centerForIconAtIndex:(unint64_t)a3 metrics:(id)a4;
- (CGPoint)centerForIconCoordinate:(SBIconCoordinate)a3;
- (CGPoint)centerForIconCoordinate:(SBIconCoordinate)a3 metrics:(id)a4;
- (CGPoint)fractionalCoordinateAtPoint:(CGPoint)a3;
- (CGPoint)originForIcon:(id)a3;
- (CGPoint)originForIconAtCoordinate:(SBIconCoordinate)a3;
- (CGPoint)originForIconAtCoordinate:(SBIconCoordinate)a3 metrics:(id)a4;
- (CGPoint)originForIconAtCoordinate:(SBIconCoordinate)a3 metrics:(id)a4 options:(unint64_t)a5;
- (CGPoint)originForIconAtIndex:(unint64_t)a3;
- (CGRect)_introductionContainerViewFrameForView:(id)a3;
- (CGRect)_widgetIconLayoutRect;
- (CGRect)fullRectForCellAtIconCoordinate:(SBIconCoordinate)a3 metrics:(id)a4 options:(unint64_t)a5;
- (CGRect)fullRectForDefaultSizedCellAtCoordinate:(SBIconCoordinate)a3 metrics:(id)a4;
- (CGRect)fullRectForGridRange:(SBHIconGridRange)a3 metrics:(id)a4;
- (CGRect)iconLayoutRect;
- (CGRect)rectForCellAtIconCoordinate:(SBIconCoordinate)a3 metrics:(id)a4;
- (CGRect)rectForCellAtIconCoordinate:(SBIconCoordinate)a3 metrics:(id)a4 options:(unint64_t)a5;
- (CGRect)rectForDefaultSizedCellAtCoordinate:(SBIconCoordinate)a3 metrics:(id)a4;
- (CGRect)rectForDefaultSizedCellsOfSize:(SBHIconGridSize)a3 startingAtCoordinate:(SBIconCoordinate)a4 metrics:(id)a5;
- (CGRect)rectForDefaultSizedCellsOfSizeClass:(id)a3 startingAtCoordinate:(SBIconCoordinate)a4 metrics:(id)a5;
- (CGRect)rectForDragHitRegion:(unint64_t)a3 forCellAtCoordinate:(SBIconCoordinate)a4 options:(unint64_t)a5;
- (CGRect)rectForDragHitRegion:(unint64_t)a3 forDefaultSizedCellAtCoordinate:(SBIconCoordinate)a4;
- (CGRect)rectForDragHitRegion:(unint64_t)a3 forIconAtCoordinate:(SBIconCoordinate)a4;
- (CGRect)rectForGridRange:(SBHIconGridRange)a3;
- (CGRect)rectForIcon:(id)a3;
- (CGRect)rectForIconAtIndex:(unint64_t)a3;
- (CGRect)rectForIconCoordinate:(SBIconCoordinate)a3;
- (CGRect)rectForIconCoordinate:(SBIconCoordinate)a3 metrics:(id)a4;
- (CGSize)alignmentIconViewSize;
- (CGSize)effectiveIconSpacing;
- (CGSize)iconImageSize;
- (CGSize)iconSpacing;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)icons;
- (NSArray)prefetchedIcons;
- (NSArray)visibleIcons;
- (NSIndexSet)prefetchedGridCellIndexes;
- (NSIndexSet)visibleGridCellIndexes;
- (NSString)iconDragTypeIdentifier;
- (NSString)layoutDescription;
- (SBHIconGridRange)closestGridRangeForIconOfSize:(SBHIconGridSize)a3 centeredAtPoint:(CGPoint)a4;
- (SBHIconGridRange)gridRangeForIconAtIndex:(unint64_t)a3;
- (SBHIconGridRange)gridRangeForRect:(CGRect)a3;
- (SBHIconGridRange)iconGridRangeForGridCellIndex:(unint64_t)a3 metrics:(id)a4 options:(unint64_t)a5;
- (SBHIconGridRange)iconGridRangeForIndex:(unint64_t)a3 metrics:(id)a4;
- (SBHIconGridRange)visibleGridRange;
- (SBHIconGridSize)boundedGridSizeForCurrentOrientation;
- (SBHIconGridSize)iconGridSizeForClass:(id)a3;
- (SBIconCoordinate)_coordinateAfterCoordinate:(SBIconCoordinate)a3 rows:(unint64_t)a4 columns:(unint64_t)a5 metrics:(id)a6;
- (SBIconCoordinate)_coordinateBeforeCoordinate:(SBIconCoordinate)a3 rows:(unint64_t)a4 columns:(unint64_t)a5 metrics:(id)a6;
- (SBIconCoordinate)coordinateAtPoint:(CGPoint)a3;
- (SBIconCoordinate)coordinateAtPoint:(CGPoint)a3 includingNearest:(BOOL)a4;
- (SBIconCoordinate)coordinateAtPoint:(CGPoint)a3 includingNearest:(BOOL)a4 metrics:(id)a5;
- (SBIconCoordinate)coordinateAtPoint:(CGPoint)a3 metrics:(id)a4;
- (SBIconCoordinate)coordinateForIcon:(id)a3;
- (SBIconCoordinate)coordinateForIconAtIndex:(unint64_t)a3;
- (SBIconCoordinate)iconCoordinateForGridCellIndex:(unint64_t)a3 metrics:(id)a4;
- (SBIconCoordinate)iconCoordinateForIndex:(unint64_t)a3 forOrientation:(int64_t)a4;
- (SBIconCoordinate)iconCoordinateForIndex:(unint64_t)a3 forOrientation:(int64_t)a4 metrics:(id)a5;
- (SBIconCoordinate)iconCoordinateForIndex:(unint64_t)a3 metrics:(id)a4;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3;
- (SBIconListLayout)layout;
- (SBIconListLayoutDelegate)layoutDelegate;
- (SBIconListModel)displayedModel;
- (SBIconListView)initWithModel:(id)a3 layoutProvider:(id)a4 iconLocation:(id)a5 orientation:(int64_t)a6 iconViewProvider:(id)a7;
- (SBIconListViewDragDelegate)dragDelegate;
- (SBIconListViewDragDelegate)effectiveDragDelegate;
- (SBIconListViewLayoutMetrics)layoutMetrics;
- (SBIconListViewReorderingDelegate)reorderingDelegate;
- (SBIconViewProviding)iconViewProvider;
- (SBIconWidgetIntroductionDelegate)widgetIntroductionDelegate;
- (UIEdgeInsets)additionalLayoutInsets;
- (UIEdgeInsets)cursorHitTestingInsetsForIconSpacing:(CGSize)a3;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3;
- (_NSRange)_allIconsVisibleColumnOrRowRange;
- (_NSRange)visibleColumnRange;
- (_NSRange)visibleRowRange;
- (double)_leadingSpacingForWidgetIntroductionPopoverView;
- (double)_topSpacingForWidgetIntroductionPopoverView;
- (double)horizontalBumpForColumn:(unint64_t)a3 metrics:(id)a4;
- (double)horizontalIconPadding;
- (double)layoutScale;
- (double)verticalIconPadding;
- (id)_iconForDragItem:(id)a3;
- (id)_stateCaptureString;
- (id)addOverridingLayoutDelegate:(id)a3 reason:(id)a4;
- (id)addPlaceholderAtGridCellIndex:(unint64_t)a3 gridSizeClass:(id)a4 reason:(id)a5 options:(unint64_t)a6;
- (id)addPlaceholderAtGridCellIndex:(unint64_t)a3 representingIcon:(id)a4 reason:(id)a5 options:(unint64_t)a6;
- (id)addPlaceholderRepresentingIcon:(id)a3 reason:(id)a4 options:(unint64_t)a5;
- (id)beginHidingIconsFromLayout:(id)a3 reason:(id)a4 options:(unint64_t)a5;
- (id)beginTransitionToIconLocation:(id)a3 reason:(id)a4;
- (id)dequeueReusableIconView;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)displayedIconViewForCoordinate:(SBIconCoordinate)a3;
- (id)displayedIconViewForGridCellIndex:(unint64_t)a3;
- (id)displayedIconViewForIcon:(id)a3;
- (id)effectiveIconImageAppearance;
- (id)effectiveIconImageStyleConfiguration;
- (id)effectiveLayoutDelegateForSelector:(SEL)a3;
- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4;
- (id)gridCellIndexesToIncludeInLayout;
- (id)gridCellInfo;
- (id)gridSizeClassDomain;
- (id)iconAtCoordinate:(SBIconCoordinate)a3;
- (id)iconAtCoordinate:(SBIconCoordinate)a3 metrics:(id)a4;
- (id)iconAtGridCellIndex:(unint64_t)a3 metrics:(id)a4;
- (id)iconAtPoint:(CGPoint)a3 includingNearest:(BOOL)a4 index:(unint64_t *)a5;
- (id)iconGridSizeClassForIconGridSize:(SBHIconGridSize)a3;
- (id)iconGridSizeClassSizes;
- (id)iconViewForCoordinate:(SBIconCoordinate)a3;
- (id)iconViewForGridCellIndex:(unint64_t)a3;
- (id)iconViewForIcon:(id)a3;
- (id)iconViewForIcon:(id)a3 location:(id)a4;
- (id)iconVisibilityInfoForRect:(CGRect)a3 normalized:(BOOL)a4;
- (id)layoutMetricsForModel:(id)a3;
- (id)layoutMetricsForOrientation:(int64_t)a3;
- (id)makeEmptyGridCellView;
- (id)makeIconView;
- (id)partialVisibleGridCellIndexes;
- (id)pauseLayoutForIconView:(id)a3 forReason:(id)a4;
- (id)removedIcons;
- (id)requireAllIconsShownForReason:(id)a3;
- (id)succinctDescription;
- (id)temporarilyMappedIconForIcon:(id)a3;
- (id)visibleGridCellLayoutDescription;
- (id)visibleIconIndexes;
- (id)widgetIconsForIntroductionContainerView;
- (int64_t)effectiveIconSpacingAxisMatchingBehavior;
- (int64_t)iconInsertionAnimationOriginatingEdge;
- (int64_t)iconRemovalAnimationDestinationEdge;
- (int64_t)layoutOrientation;
- (int64_t)userInterfaceLayoutDirection;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 atCoordinate:(SBIconCoordinate)a4;
- (unint64_t)bestIndexForInsertingIcon:(id)a3 atCoordinate:(SBIconCoordinate)a4;
- (unint64_t)columnAtPoint:(CGPoint)a3;
- (unint64_t)columnAtPoint:(CGPoint)a3 fractionOfDistanceThroughColumn:(double *)a4;
- (unint64_t)columnAtPoint:(CGPoint)a3 includingNearest:(BOOL)a4 metrics:(id)a5 fractionOfDistanceThroughColumn:(double *)a6;
- (unint64_t)contentVisibilityForIcon:(id)a3;
- (unint64_t)contentVisibilityForIcon:(id)a3 metrics:(id)a4;
- (unint64_t)dragHitRegionForPoint:(CGPoint)a3 icon:(id)a4;
- (unint64_t)folderMutationOptionsForIconLayoutHidingAssertion:(id)a3;
- (unint64_t)gridCellIndexForCoordinate:(SBIconCoordinate)a3 metrics:(id)a4;
- (unint64_t)gridCellIndexForFirstPlaceholder;
- (unint64_t)gridCellIndexForIcon:(id)a3;
- (unint64_t)gridCellIndexForIconView:(id)a3;
- (unint64_t)gridCellInfoOptions;
- (unint64_t)iconColumnsForCurrentOrientation;
- (unint64_t)iconContentVisibility;
- (unint64_t)iconIndexForCoordinate:(SBIconCoordinate)a3 metrics:(id)a4;
- (unint64_t)iconIndexForGridCellIndex:(unint64_t)a3 metrics:(id)a4;
- (unint64_t)iconRowsForCurrentOrientation;
- (unint64_t)iconViewUserVisibilityStatus;
- (unint64_t)iconViewUserVisibilityStatusForIcon:(id)a3;
- (unint64_t)indexForCoordinate:(SBIconCoordinate)a3 forOrientation:(int64_t)a4;
- (unint64_t)indexForCoordinate:(SBIconCoordinate)a3 forOrientation:(int64_t)a4 metrics:(id)a5;
- (unint64_t)indexOfIcon:(id)a3;
- (unint64_t)listMutationOptionsForIconLayoutHidingAssertion:(id)a3;
- (unint64_t)maximumIconCount;
- (unint64_t)rowAtPoint:(CGPoint)a3;
- (unint64_t)rowAtPoint:(CGPoint)a3 fractionOfDistanceThroughRow:(double *)a4;
- (unint64_t)rowAtPoint:(CGPoint)a3 includingNearest:(BOOL)a4 metrics:(id)a5 fractionOfDistanceThroughRow:(double *)a6;
- (void)_addIconViewsForIcons:(id)a3;
- (void)_addIconViewsForIcons:(id)a3 metrics:(id)a4;
- (void)_applyIconPaddingSettings;
- (void)_captureOnlyBackgroundAssertionDidInvalidate:(id)a3;
- (void)_cleanupIconViewsForRemovedIcons:(id)a3;
- (void)_getDragRegionRects:(SBIconListViewCellDragRegionRects *)a3 forIconCoordinate:(SBIconCoordinate)a4 iconImageFrame:(CGRect)a5 overlapWindowFraction:(double)a6 metrics:(id)a7 options:(unint64_t)a8;
- (void)_getDragRegionRects:(SBIconListViewCellDragRegionRects *)a3 forIconView:(id)a4;
- (void)_getRTLAwareRowIndex:(int64_t *)a3 columnIndex:(int64_t *)a4 forGridCellIndex:(unint64_t)a5 iconGridSize:(SBHIconGridSize)a6 metrics:(id)a7;
- (void)_informLayoutObserversNumberOfPlaceholdersOrLayoutHiddenIconsChanged;
- (void)_insertCaptureOnlyBackgroundViewForInsertingIconViewIfNecessary:(id)a3;
- (void)_insertOrRemoveCaptureOnlyBackgroundViewIfNecessaryForIconView:(id)a3;
- (void)_removeCaptureOnlyBackgroundViewForRemovedIconIfNecessary:(id)a3;
- (void)_removeIconViewsForIcons:(id)a3;
- (void)_setupLayoutRunLoopObserver;
- (void)_setupStateCaptureHandleIfNeeded;
- (void)_teardownLayoutRunloopObserverIfNeeded;
- (void)_teardownStateCapture;
- (void)_updateEditingStateForIcons:(id)a3 animated:(BOOL)a4;
- (void)_updateVisibleIconViewsWithOldCellVisibility:(int64_t)a3 oldVisibleGridCellIndexes:(id)a4 oldPrefetchedGridCellIndexes:(id)a5 metrics:(id)a6;
- (void)addIconViewConfigurationOption:(unint64_t)a3;
- (void)addLayoutObserver:(id)a3;
- (void)addPronouncedContainerViewWithDelegate:(id)a3 vertical:(BOOL)a4;
- (void)clearDraggedIconViews;
- (void)clearDraggedIconViewsExcludingSet:(id)a3;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)dealloc;
- (void)didAddIconView:(id)a3;
- (void)didAddSubview:(id)a3;
- (void)didMoveToWindow;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3;
- (void)enumerateIconViewsUsingBlock:(id)a3;
- (void)enumerateIconsUsingBlock:(id)a3;
- (void)enumerateKnownIconViewsUsingBlock:(id)a3;
- (void)enumerateVisibleIconsUsingBlock:(id)a3;
- (void)forgetIconView:(id)a3;
- (void)getLayoutMetricsParameters:(SBIconListLayoutMetricsParameters *)a3;
- (void)getLayoutMetricsParameters:(SBIconListLayoutMetricsParameters *)a3 orientation:(int64_t)a4;
- (void)iconList:(id)a3 didAddIcon:(id)a4;
- (void)iconList:(id)a3 didMoveIcon:(id)a4;
- (void)iconList:(id)a3 didRemoveIcon:(id)a4;
- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)iconLocationTransitionHandler:(id)a3 completeTransition:(BOOL)a4;
- (void)iconLocationTransitionHandler:(id)a3 setProgress:(double)a4;
- (void)iconView:(id)a3 willCancelDragForItem:(id)a4;
- (void)iconViewDidEndDrag:(id)a3;
- (void)layOutEmptyGridCellViewsUsingAnimator:(id)a3;
- (void)layoutAndCreateIcon:(id)a3;
- (void)layoutAndCreateIcon:(id)a3 atIndex:(unint64_t)a4;
- (void)layoutFocusGuides;
- (void)layoutHidingAssertionDidChange:(id)a3;
- (void)layoutHidingAssertionDidInvalidate:(id)a3;
- (void)layoutIconsIfNeeded:(double)a3;
- (void)layoutIconsIfNeededUsingAnimator:(id)a3 options:(unint64_t)a4;
- (void)layoutIconsIfNeededWithAnimationType:(int64_t)a3 options:(unint64_t)a4;
- (void)layoutIconsNow;
- (void)layoutSubviews;
- (void)layoutWidgetIntroductionViews;
- (void)markIcon:(id)a3 asNeedingAnimation:(int64_t)a4;
- (void)performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon:(id)a3 completionHandler:(id)a4;
- (void)performDefaultAnimatedLayoutUpdateForIconView:(id)a3 withParameters:(SBIconListLayoutAnimationParameters *)a4;
- (void)performDefaultAnimatedRemovalForIconViews:(id)a3 completionHandler:(id)a4;
- (void)performSpecialIconAnimation:(int64_t)a3 icon:(id)a4 completionHandler:(id)a5;
- (void)performSpecialIconAnimationsWithCompletionHandler:(id)a3;
- (void)performZoomInSpecialIconAnimationWithIcon:(id)a3 completionHandler:(id)a4;
- (void)performZoomOutSpecialIconAnimationWithIcon:(id)a3 completionHandler:(id)a4;
- (void)placeholderAssertionDidChangePosition:(id)a3;
- (void)regenerateTemporaryDisplayedModelIfNecessary;
- (void)removeAllIconAnimations;
- (void)removeAllIconViews;
- (void)removeIconView:(id)a3 force:(BOOL)a4;
- (void)removeIconViewConfigurationOption:(unint64_t)a3;
- (void)removeOverridingLayoutDelegateAssertion:(id)a3;
- (void)removePauseLayoutAssertion:(id)a3;
- (void)removePlaceholderAssertion:(id)a3;
- (void)removePronouncedContainerView;
- (void)removeShowAllIconsAssertion:(id)a3;
- (void)setAdditionalLayoutInsets:(UIEdgeInsets)a3;
- (void)setAddsFocusGuidesForWrapping:(BOOL)a3;
- (void)setAlignsIconsOnPixelBoundaries:(BOOL)a3;
- (void)setAllowsGaps:(BOOL)a3;
- (void)setAllowsReordering:(BOOL)a3;
- (void)setAlphaForAllIcons:(double)a3;
- (void)setAutomaticallyAdjustsLayoutMetricsToFit:(BOOL)a3;
- (void)setAutomaticallyReversedLayoutOrientations:(unint64_t)a3;
- (void)setAutomaticallyShowsEmptyGridCellsWhileEditing:(BOOL)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCellVisibility:(int64_t)a3 visibleGridCellIndexes:(id)a4 prefetchedGridCellIndexes:(id)a5;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setFolderIconImageCache:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setIconContentScale:(double)a3;
- (void)setIconGlassGroupingBehavior:(int64_t)a3;
- (void)setIconImageCache:(id)a3;
- (void)setIconLocation:(id)a3;
- (void)setIconSpacing:(CGSize)a3;
- (void)setIconSpacingAxisMatchingBehavior:(int64_t)a3;
- (void)setIconViewBackdropGroupName:(id)a3;
- (void)setIconViewConfigurationOptions:(unint64_t)a3;
- (void)setIconViewGlassHidden:(BOOL)a3;
- (void)setIconsLabelAlpha:(double)a3;
- (void)setIconsNeedLayout;
- (void)setLayoutDelegate:(id)a3;
- (void)setLayoutInsetsMode:(int64_t)a3;
- (void)setLayoutProvider:(id)a3 animated:(BOOL)a4;
- (void)setLayoutReversed:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setModel:(id)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setPausesIconsForScrolling:(BOOL)a3;
- (void)setPrefetchedGridCellIndexes:(id)a3;
- (void)setShowsEmptyGridCells:(BOOL)a3 animated:(BOOL)a4;
- (void)setUserInterfaceLayoutDirectionHandling:(unint64_t)a3;
- (void)setUsesGlassGroup:(BOOL)a3;
- (void)setVisibleColumnRange:(_NSRange)a3;
- (void)setVisibleColumnRange:(_NSRange)a3 visibleRowRange:(_NSRange)a4;
- (void)setVisibleGridRange:(SBHIconGridRange)a3;
- (void)setVisibleRowRange:(_NSRange)a3;
- (void)setVisiblySettled:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)startAnimatingPronouncedContainerAndPopoverView;
- (void)stopAnimatingPronouncedContainerAndPopoverView;
- (void)updateEditingStateAnimated:(BOOL)a3;
- (void)updateGlassGroup;
- (void)updateIconLocationWithNonDefaultSizedIcons;
- (void)updateIconLocationWithNonDefaultSizedIcons:(BOOL)a3;
- (void)updateIconViewForIcon:(id)a3 toIcon:(id)a4;
- (void)updateReversedLayoutBasedOnOrientation;
- (void)willMoveToWindow:(id)a3;
- (void)willRotateWithTransitionCoordinator:(id)a3;
@end

@implementation SBIconListView

- (unint64_t)iconViewUserVisibilityStatus
{
  v2 = [(SBIconListView *)self iconContentVisibility];
  v3 = objc_opt_class();

  return [v3 iconViewUserVisibilityStatusForContentVisibility:v2];
}

- (SBIconListModel)displayedModel
{
  v3 = [(SBIconListView *)self temporaryModel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SBIconListView *)self model];
  }

  v6 = v5;

  return v6;
}

- (BOOL)hasTemporaryModel
{
  v2 = [(SBIconListView *)self temporaryModel];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)iconColumnsForCurrentOrientation
{
  v3 = [(SBIconListView *)self layout];
  v4 = [v3 numberOfColumnsForOrientation:{-[SBIconListView layoutOrientation](self, "layoutOrientation")}];

  return v4;
}

- (SBIconListLayout)layout
{
  v3 = [(SBIconListView *)self layoutProvider];
  v4 = [(SBIconListView *)self iconLocation];
  v5 = [v3 layoutForIconLocation:v4];

  return v5;
}

- (int64_t)layoutOrientation
{
  v3 = [(SBIconListView *)self traitCollection];
  v4 = [v3 horizontalSizeClass];
  v5 = [v3 verticalSizeClass];
  if ([(SBIconListView *)self adaptsOrientationToTraitCollection]&& v4 == 1 && v5 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = [(SBIconListView *)self orientation];
  }

  return v6;
}

- (unint64_t)iconRowsForCurrentOrientation
{
  v3 = [(SBIconListView *)self layout];
  v4 = [v3 numberOfRowsForOrientation:{-[SBIconListView layoutOrientation](self, "layoutOrientation")}];

  return v4;
}

- (SBIconListViewLayoutMetrics)layoutMetrics
{
  v3 = self->_cachedMetrics;
  if (!v3)
  {
    memset(v6, 0, sizeof(v6));
    [(SBIconListView *)self getLayoutMetricsParameters:v6];
    v4 = [(SBIconListView *)self displayedModel];
    v3 = [objc_opt_class() layoutMetricsForParameters:v6 listModel:v4];
    objc_storeStrong(&self->_cachedMetrics, v3);
  }

  return v3;
}

- (SBIconListLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

- (int64_t)userInterfaceLayoutDirection
{
  v2 = [(SBIconListView *)self userInterfaceLayoutDirectionHandling];
  if (v2 == 2)
  {
    return 1;
  }

  if (v2)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E69DDA98];

  return [v3 userInterfaceLayoutDirection];
}

- (double)layoutScale
{
  v2 = [(SBIconListView *)self layout];
  [v2 iconImageInfo];
  if (v3 == 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (NSArray)icons
{
  v2 = [(SBIconListView *)self displayedModel];
  v3 = [v2 icons];

  return v3;
}

- (UIEdgeInsets)additionalLayoutInsets
{
  top = self->_additionalLayoutInsets.top;
  left = self->_additionalLayoutInsets.left;
  bottom = self->_additionalLayoutInsets.bottom;
  right = self->_additionalLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_teardownLayoutRunloopObserverIfNeeded
{
  layoutRunLoopObserver = self->_layoutRunLoopObserver;
  if (layoutRunLoopObserver)
  {
    CFRunLoopObserverInvalidate(layoutRunLoopObserver);
    CFRelease(self->_layoutRunLoopObserver);
    self->_layoutRunLoopObserver = 0;
  }
}

- (id)iconGridSizeClassSizes
{
  v3 = [(SBIconListView *)self displayedModel];
  v4 = [v3 iconGridSizeClassSizesWithOptions:{-[SBIconListView gridCellInfoOptions](self, "gridCellInfoOptions")}];
  if (!v4)
  {
    v5 = [(SBIconListView *)self layout];
    v4 = SBHIconListLayoutIconGridSizeClassSizes(v5, [(SBIconListView *)self layoutOrientation]);
  }

  return v4;
}

- (unint64_t)gridCellInfoOptions
{
  v3 = [(SBIconListView *)self orientation];
  v4 = [(SBIconListView *)self isLayoutReversed];
  v5 = [(SBIconListView *)self isLayoutFlipped];
  v6 = [(SBIconListView *)self allowsGaps];
  v7 = objc_opt_class();

  return [v7 gridCellInfoOptionsWithInterfaceOrientation:v3 reversedLayout:v4 flippedLayout:v5 allowGaps:v6];
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (id)dequeueReusableIconView
{
  v3 = [(SBIconListView *)self iconViewProvider];
  v4 = [v3 dequeueReusableIconViewOfClass:{-[SBIconListView baseIconViewClass](self, "baseIconViewClass")}];
  if (v4)
  {
    v5 = [(SBIconListView *)self layoutProvider];
    [v4 setListLayoutProvider:v5];

    [v4 setConfigurationOptions:{-[SBIconListView iconViewConfigurationOptions](self, "iconViewConfigurationOptions")}];
  }

  return v4;
}

- (_NSRange)visibleRowRange
{
  v3 = [(SBIconListView *)self cellVisibility];
  if (v3 == 1)
  {
    v7 = [(SBIconListView *)self partialVisibleGridCellIndexes];
    v8 = [(SBIconListView *)self gridSizeForCurrentOrientation];
    columns = v8.columns;
    v10 = SBHIconGridRangeMakeWithCellIndexes(v7, *&v8);
    v14 = 0u;
    v15 = 0u;
    SBHIconGridRangeGetBounds(v10, v11, columns, &v14);
    v4 = v15;
    v6 = *(&v15 + 1) - v15;
  }

  else if (v3)
  {
    v6 = 0;
    v4 = 0;
  }

  else
  {
    v4 = [(SBIconListView *)self _allIconsVisibleColumnOrRowRange];
    v6 = v5;
  }

  v12 = v4;
  v13 = v6;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)visibleColumnRange
{
  v3 = [(SBIconListView *)self cellVisibility];
  if (v3 == 1)
  {
    v7 = [(SBIconListView *)self partialVisibleGridCellIndexes];
    v8 = [(SBIconListView *)self gridSizeForCurrentOrientation];
    columns = v8.columns;
    v10 = SBHIconGridRangeMakeWithCellIndexes(v7, *&v8);
    memset(v14, 0, sizeof(v14));
    SBHIconGridRangeGetBounds(v10, v11, columns, v14);
    v4 = *&v14[0];
    v6 = *(&v14[0] + 1) - *&v14[0];
  }

  else if (v3)
  {
    v6 = 0;
    v4 = 0;
  }

  else
  {
    v4 = [(SBIconListView *)self _allIconsVisibleColumnOrRowRange];
    v6 = v5;
  }

  v12 = v4;
  v13 = v6;
  result.length = v13;
  result.location = v12;
  return result;
}

- (CGRect)_widgetIconLayoutRect
{
  v3 = [(SBIconListView *)self layout];
  [(SBIconListView *)self iconLayoutRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (objc_opt_respondsToSelector())
  {
    v12 = [(SBIconListView *)self orientation];
    v13 = [(SBIconListView *)self layout];
    [v13 additionalWidgetLayoutInsetsForOrientation:v12];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v5 = v5 + v17;
    v7 = v7 + v15;
    v9 = v9 - (v17 + v21);
    v11 = v11 - (v15 + v19);
  }

  v22 = v5;
  v23 = v7;
  v24 = v9;
  v25 = v11;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)iconLayoutRect
{
  [(SBIconListView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBIconListView *)self layoutInsetsForOrientation:[(SBIconListView *)self orientation]];
  v12 = v6 + v11;
  v15 = v8 - (v13 + v14);
  v17 = v10 - (v11 + v16);
  v18 = v4 + v13;
  v19 = v12;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (_NSRange)_allIconsVisibleColumnOrRowRange
{
  v2 = 0;
  v3 = -1;
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)makeIconView
{
  v3 = [(SBIconListView *)self iconViewConfigurationOptions];
  v4 = [(SBIconListView *)self layoutProvider];
  v5 = [objc_alloc(-[SBIconListView baseIconViewClass](self "baseIconViewClass"))];

  return v5;
}

+ (id)defaultAnimator
{
  v2 = defaultAnimator_animator;
  if (!defaultAnimator_animator)
  {
    v3 = objc_alloc_init(SBIconListViewDefaultAnimator);
    v4 = defaultAnimator_animator;
    defaultAnimator_animator = v3;

    v2 = defaultAnimator_animator;
  }

  return v2;
}

- (CGSize)iconImageSize
{
  [(SBIconListView *)self iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassDefault"];
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)effectiveIconSpacingAxisMatchingBehavior
{
  if ([(SBIconListView *)self hasSetIconSpacingAxisMatchingBehavior])
  {

    return [(SBIconListView *)self iconSpacingAxisMatchingBehavior];
  }

  else
  {
    v4 = [(SBIconListView *)self layout];
    v5 = SBHIconListLayoutIconSpacingAxisMatchingBehavior(v4);

    return v5;
  }
}

- (CGSize)iconSpacing
{
  width = self->_iconSpacing.width;
  height = self->_iconSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setIconsNeedLayout
{
  self->_needsLayout = 1;
  cachedMetrics = self->_cachedMetrics;
  self->_cachedMetrics = 0;

  if (!self->_layoutRunLoopObserver)
  {

    [(SBIconListView *)self _setupLayoutRunLoopObserver];
  }
}

- (void)_setupLayoutRunLoopObserver
{
  if (!self->_layoutRunLoopObserver)
  {
    objc_initWeak(&location, self);
    v3 = *MEMORY[0x1E695E480];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__SBIconListView__setupLayoutRunLoopObserver__block_invoke;
    v5[3] = &unk_1E8089DA0;
    objc_copyWeak(&v6, &location);
    self->_layoutRunLoopObserver = CFRunLoopObserverCreateWithHandler(v3, 0xA0uLL, 0, 1999900, v5);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, self->_layoutRunLoopObserver, *MEMORY[0x1E695E8D0]);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBIconListView;
  [(SBIconListView *)&v3 layoutSubviews];
  if (self->_widgetIntroductionPopover)
  {
    [(SBIconListView *)self bringWidgetIntroductionPopoverToFront];
  }
}

- (void)layoutFocusGuides
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = self->_wrappingFocusGuideViews;
  if (![(SBIconListView *)self addsFocusGuidesForWrapping]|| (v4 = [(SBIconListView *)self iconRowsForCurrentOrientation], v4 - 2 > 0x7FFFFFFFFFFFFFFCLL))
  {
    v43 = 0;
    if (!v3)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v5 = v4;
  v6 = [(SBIconListView *)self layoutMetrics];
  [(SBIconListView *)self iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassDefault"];
  v8 = v7;
  v9 = [(SBIconListView *)self iconColumnsForCurrentOrientation];
  [v6 iconInsets];
  v11 = v10;
  v13 = v12;
  [(SBIconListView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(SBIconListView *)self isRTL];
  v70.origin.x = v15;
  v70.origin.y = v17;
  v70.size.width = v19;
  v70.size.height = v21;
  v23 = v11 * 0.5 + CGRectGetMinX(v70);
  v71.origin.x = v15;
  v71.origin.y = v17;
  v71.size.width = v19;
  v71.size.height = v21;
  v24 = CGRectGetMaxX(v71) - v13 * 0.5 + -10.0;
  v25 = [MEMORY[0x1E695DF70] array];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF70] array];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__SBIconListView_layoutFocusGuides__block_invoke;
  aBlock[3] = &unk_1E808D060;
  v53 = v3;
  v65 = v53;
  v66 = self;
  v52 = v25;
  v67 = v52;
  v26 = _Block_copy(aBlock);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __35__SBIconListView_layoutFocusGuides__block_invoke_2;
  v58[3] = &unk_1E808D088;
  v58[4] = self;
  v27 = v6;
  v59 = v27;
  v61 = v23;
  v62 = v24;
  v63 = v8;
  v51 = v26;
  v60 = v51;
  v28 = _Block_copy(v58);
  v29 = 0;
  do
  {
    v30 = [(SBIconListView *)self _coordinateBeforeCoordinate:1 rows:++v29 columns:v5 metrics:v9, v27];
    v28[2](v28, 1, v29, v30, v31, v22);
    v32 = [(SBIconListView *)self _coordinateAfterCoordinate:v9 rows:v29 columns:v5 metrics:v9, v27];
    v28[2](v28, v9, v29, v32, v33, !v22);
  }

  while (v5 != v29);
  v34 = [(SBIconListView *)self icons];
  v35 = [v34 firstObject];
  v36 = [(SBIconListView *)self coordinateForIcon:v35];
  v50 = v37;

  v38 = [(SBIconListView *)self icons];
  v39 = [v38 lastObject];
  v40 = [(SBIconListView *)self coordinateForIcon:v39];
  v42 = v41;

  v28[2](v28, v36, v50, v40, v42, v22);
  v28[2](v28, v40, v42, v36, v50, !v22);

  v3 = v53;
  v43 = v52;
  if (v53)
  {
LABEL_10:
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v44 = v3;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v55;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v55 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v54 + 1) + 8 * i) removeFromSuperview];
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v46);
    }

    [(NSMutableArray *)v44 removeAllObjects];
  }

LABEL_18:
  wrappingFocusGuideViews = self->_wrappingFocusGuideViews;
  self->_wrappingFocusGuideViews = v43;
}

void __45__SBIconListView__setupLayoutRunLoopObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutIconsIfNeeded];
}

- (void)layoutIconsNow
{
  [(SBIconListView *)self setIconsNeedLayout];

  [(SBIconListView *)self layoutIconsIfNeeded];
}

- (void)removeAllIconViews
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(NSMapTable *)self->_iconViews copy];
  [(NSMapTable *)self->_iconViews removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKey:{*(*(&v10 + 1) + 8 * v8), v10}];
        [(SBIconListView *)self removeIconView:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = SBIconListView;
  [(SBIconListView *)&v5 didMoveToWindow];
  v3 = [(SBIconListView *)self window];

  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __33__SBIconListView_didMoveToWindow__block_invoke;
    v4[3] = &unk_1E808AEC0;
    v4[4] = self;
    [(SBIconListView *)self enumerateIconViewsUsingBlock:v4];
  }
}

- (void)updateGlassGroup
{
  v3 = [(SBIconListView *)self usesGlassGroup];
  v4 = [(UIView *)self sbh_hasGlassGroup];
  if (v3)
  {
    if (v4)
    {
      [(UIView *)self sbh_removeGlass];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34__SBIconListView_updateGlassGroup__block_invoke;
      block[3] = &unk_1E8088C90;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {

      [(UIView *)self sbh_createGlassGroup];
    }
  }

  else if (v4)
  {

    [(UIView *)self sbh_removeGlass];
  }
}

- (id)effectiveIconImageAppearance
{
  v2 = [(SBIconListView *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v2];

  return v3;
}

+ (id)clusterAnimator
{
  v2 = clusterAnimator_animator;
  if (!clusterAnimator_animator)
  {
    v3 = objc_alloc_init(SBIconListViewClusterAnimator);
    v4 = clusterAnimator_animator;
    clusterAnimator_animator = v3;

    v2 = clusterAnimator_animator;
  }

  return v2;
}

+ (CGRect)defaultFrameForOrientation:(int64_t)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (SBIconListView)initWithModel:(id)a3 layoutProvider:(id)a4 iconLocation:(id)a5 orientation:(int64_t)a6 iconViewProvider:(id)a7
{
  v48 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  [objc_opt_class() defaultFrameForOrientation:a6];
  v45.receiver = self;
  v45.super_class = SBIconListView;
  v17 = [(SBIconListView *)&v45 initWithFrame:?];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_model, a3);
    objc_storeStrong(&v18->_layoutProvider, a4);
    v19 = [v15 copy];
    iconLocation = v18->_iconLocation;
    v18->_iconLocation = v19;

    v18->_orientation = a6;
    objc_storeWeak(&v18->_iconViewProvider, v16);
    v18->_iconContentScale = 1.0;
    v18->_iconViewConfigurationOptions = [objc_opt_class() defaultIconViewConfigurationOptions];
    v18->_alignsIconsOnPixelBoundaries = 1;
    v18->_iconSpacing = vdupq_n_s64(0xC05EC00000000000);
    v18->_automaticallyAdjustsLayoutMetricsToFit = 1;
    v21 = [*MEMORY[0x1E69D4390] copy];
    iconDragTypeIdentifier = v18->_iconDragTypeIdentifier;
    v18->_iconDragTypeIdentifier = v21;

    v18->_visiblySettled = 1;
    v18->_dragSpringloadingEnabled = 1;
    v18->_contentVisibility = 0;
    v18->_usesGlassGroup = 1;
    v23 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    iconViews = v18->_iconViews;
    v18->_iconViews = v23;

    [v13 addListObserver:v18];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = v13;
    v26 = [v25 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v42;
      do
      {
        v29 = 0;
        do
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v41 + 1) + 8 * v29++) addObserver:{v18, v41}];
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v27);
    }

    v30 = [[SBIconListViewDraggingDestinationDelegate alloc] initWithIconListView:v18];
    draggingDelegate = v18->_draggingDelegate;
    v18->_draggingDelegate = v30;

    v32 = +[SBHHomeScreenDomain rootSettings];
    v33 = [v32 iconSettings];
    iconSettings = v18->_iconSettings;
    v18->_iconSettings = v33;

    [(PTSettings *)v18->_iconSettings addKeyObserver:v18];
    [(SBIconListView *)v18 _applyIconPaddingSettings];
    v35 = [v32 iconEditingSettings];
    iconEditingSettings = v18->_iconEditingSettings;
    v18->_iconEditingSettings = v35;

    [(SBIconListView *)v18 _setupStateCaptureHandleIfNeeded];
    v37 = objc_opt_self();
    v46 = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    v39 = [(SBIconListView *)v18 registerForTraitChanges:v38 withAction:sel_updateAfterAppearanceTraitChange];

    [(SBIconListView *)v18 updateAfterAppearanceTraitChange];
  }

  return v18;
}

- (void)dealloc
{
  [(SBIconListView *)self _teardownLayoutRunloopObserverIfNeeded];
  [(SBIconListView *)self _teardownStateCapture];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(PTSettings *)self->_iconSettings removeKeyObserver:self];
  v4.receiver = self;
  v4.super_class = SBIconListView;
  [(SBIconListView *)&v4 dealloc];
}

- (void)setUserInterfaceLayoutDirectionHandling:(unint64_t)a3
{
  if (self->_userInterfaceLayoutDirectionHandling != a3)
  {
    self->_userInterfaceLayoutDirectionHandling = a3;
    [(SBIconListView *)self setIconsNeedLayout];
  }
}

- (void)removeIconView:(id)a3 force:(BOOL)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!a4 && (([v6 isDragging] & 1) != 0 || objc_msgSend(v7, "isAddedToDrag")))
  {
    if (([v7 isCancelingDrag] & 1) == 0)
    {
      [v7 setAlpha:0.0];
      [(SBIconListView *)self centerForDraggedIconView:v7];
      [v7 setCenter:?];
    }

    draggingIconViews = self->_draggingIconViews;
    if (!draggingIconViews)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v18 = self->_draggingIconViews;
      self->_draggingIconViews = v17;

      draggingIconViews = self->_draggingIconViews;
    }

    [(NSMutableSet *)draggingIconViews addObject:v7];
    [v7 addObserver:self];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_layoutObservers;
    v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 iconListView:self didRemoveIconView:{v7, v19}];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v14 = [(SBIconListView *)self iconViewProvider];
    v15 = v14;
    if (v14)
    {
      [v14 recycleIconView:v7];
    }

    if ([v7 isDescendantOfView:{self, v19}])
    {
      [v7 removeFromSuperview];
    }
  }
}

- (void)setModel:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  model = self->_model;
  if (model != v5)
  {
    [(SBIconListModel *)model removeListObserver:self];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_model;
    v8 = [(SBIconListModel *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v22 + 1) + 8 * v11++) removeObserver:self];
        }

        while (v9 != v11);
        v9 = [(SBIconListModel *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    [(SBIconListView *)self removeAllIconViews];
    removedIcons = self->_removedIcons;
    self->_removedIcons = 0;

    objc_storeStrong(&self->_model, a3);
    [(SBIconListModel *)v5 addListObserver:self];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v5;
    v14 = [(SBIconListModel *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v18 + 1) + 8 * v17++) addObserver:{self, v18}];
        }

        while (v15 != v17);
        v15 = [(SBIconListModel *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v15);
    }

    [(SBIconListView *)self updateIconLocationWithNonDefaultSizedIcons];
    [(SBIconListView *)self setIconsNeedLayout];
  }
}

- (void)setFolderIconImageCache:(id)a3
{
  v5 = a3;
  if (self->_folderIconImageCache != v5)
  {
    objc_storeStrong(&self->_folderIconImageCache, a3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__SBIconListView_setFolderIconImageCache___block_invoke;
    v6[3] = &unk_1E808AEC0;
    v7 = v5;
    [(SBIconListView *)self enumerateIconViewsUsingBlock:v6];
  }
}

- (void)setIconImageCache:(id)a3
{
  v5 = a3;
  if (self->_iconImageCache != v5)
  {
    objc_storeStrong(&self->_iconImageCache, a3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__SBIconListView_setIconImageCache___block_invoke;
    v6[3] = &unk_1E808AEC0;
    v7 = v5;
    [(SBIconListView *)self enumerateIconViewsUsingBlock:v6];
  }
}

- (void)setLayoutProvider:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (self->_layoutProvider != v7)
  {
    objc_storeStrong(&self->_layoutProvider, a3);
    if (v4)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __45__SBIconListView_setLayoutProvider_animated___block_invoke;
      v18[3] = &unk_1E808CC60;
      v19 = v7;
      v20 = v4;
      [(SBIconListView *)self enumerateDisplayedIconViewsUsingBlock:v18];
    }

    else
    {
      [(SBIconListView *)self removeAllIconViews];
    }

    [(SBIconListView *)self setIconsNeedLayout];
    [(SBIconListView *)self invalidateIntrinsicContentSize];
    if (v4)
    {
      [(SBIconListView *)self layoutIconsIfNeededWithAnimationType:0 options:0];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(NSHashTable *)self->_layoutObservers copy];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 iconListViewDidChangeListLayoutProvider:self];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)setIconLocation:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    iconLocation = self->_iconLocation;
    self->_iconLocation = v4;

    [(SBIconListView *)self setIconsNeedLayout];
    [(SBIconListView *)self invalidateIntrinsicContentSize];
  }
}

- (void)updateIconLocationWithNonDefaultSizedIcons:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListView_alternateIconLocationForListWithNonDefaultSizedIcons_];
  if (v5)
  {
    v7 = v5;
    v6 = [v5 iconListView:self alternateIconLocationForListWithNonDefaultSizedIcons:v3];
    if (v6)
    {
      [(SBIconListView *)self setIconLocation:v6];
    }

    v5 = v7;
  }
}

- (BOOL)modelHasNonDefaultSizedIcons
{
  v2 = [(SBIconListView *)self displayedModel];
  v3 = [v2 directlyContainsNonDefaultSizeClassIcon];

  return v3;
}

- (void)updateIconLocationWithNonDefaultSizedIcons
{
  v3 = [(SBIconListView *)self modelHasNonDefaultSizedIcons];

  [(SBIconListView *)self updateIconLocationWithNonDefaultSizedIcons:v3];
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3
{
  v5 = a4;
  v6 = [(SBIconListView *)self layout];
  SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(v6, [(SBIconListView *)self layoutOrientation], v5);

  return result;
}

- (void)setLayoutDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_layoutDelegate, obj);
    if (!obj)
    {
      [(SBIconListView *)self layoutIconsNow];
    }

    v5 = [(SBIconListView *)self updateIconLocationWithNonDefaultSizedIcons];
    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)addOverridingLayoutDelegate:(id)a3 reason:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[SBIconListViewIconOverridingLayoutDelegateAssertion alloc] initWithListView:self layoutDelegate:v7 reason:v6];

  overridingLayoutDelegates = self->_overridingLayoutDelegates;
  if (!overridingLayoutDelegates)
  {
    v10 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v11 = self->_overridingLayoutDelegates;
    self->_overridingLayoutDelegates = v10;

    overridingLayoutDelegates = self->_overridingLayoutDelegates;
  }

  [(NSPointerArray *)overridingLayoutDelegates addPointer:v8];

  return v8;
}

- (void)removeOverridingLayoutDelegateAssertion:(id)a3
{
  v7 = a3;
  [(NSPointerArray *)self->_overridingLayoutDelegates compact];
  v4 = [(NSPointerArray *)self->_overridingLayoutDelegates count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while ([(NSPointerArray *)self->_overridingLayoutDelegates pointerAtIndex:v6]!= v7)
    {
      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_overridingLayoutDelegates removePointerAtIndex:v6];
  }

LABEL_7:
  [(SBIconListView *)self updateIconLocationWithNonDefaultSizedIcons];
  [(SBIconListView *)self setIconsNeedLayout];
}

- (id)effectiveLayoutDelegateForSelector:(SEL)a3
{
  [(NSPointerArray *)self->_overridingLayoutDelegates compact];
  v4 = [(NSPointerArray *)self->_overridingLayoutDelegates count];
  if (v4)
  {
    v5 = v4 - 1;
    while (1)
    {
      v6 = [(NSPointerArray *)self->_overridingLayoutDelegates pointerAtIndex:v5];
      v7 = [v6 layoutDelegate];
      if (!v7)
      {
        v8 = [v6 reason];
        NSLog(&cfstr_OverridingLayo.isa, v8);
      }

      if (objc_opt_respondsToSelector())
      {
        break;
      }

      if (--v5 == -1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v6 = [(SBIconListView *)self layoutDelegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = v6;
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)setLayoutReversed:(BOOL)a3
{
  if (self->_layoutReversed != a3)
  {
    self->_layoutReversed = a3;
    [(SBIconListView *)self layoutIconsNow];
  }
}

- (void)setAllowsGaps:(BOOL)a3
{
  if (self->_allowsGaps != a3)
  {
    self->_allowsGaps = a3;
    [(SBIconListView *)self layoutIconsNow];
  }
}

- (void)setShowsEmptyGridCells:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showsEmptyGridCells != a3)
  {
    v4 = a4;
    self->_showsEmptyGridCells = a3;
    [(SBIconListView *)self setIconsNeedLayout];
    if (v4)
    {

      [(SBIconListView *)self layoutIconsIfNeededWithAnimationType:0 options:0];
    }
  }
}

- (void)setAutomaticallyShowsEmptyGridCellsWhileEditing:(BOOL)a3
{
  if (self->_automaticallyShowsEmptyGridCellsWhileEditing != a3)
  {
    self->_automaticallyShowsEmptyGridCellsWhileEditing = a3;
    v5 = [(SBIconListView *)self isEditing];

    [(SBIconListView *)self setShowsEmptyGridCells:v5];
  }
}

- (void)setAutomaticallyReversedLayoutOrientations:(unint64_t)a3
{
  automaticallyReversedLayoutOrientations = self->_automaticallyReversedLayoutOrientations;
  if (automaticallyReversedLayoutOrientations != a3)
  {
    self->_automaticallyReversedLayoutOrientations = a3;
    if (a3)
    {
      [(SBIconListView *)self orientation];
      v5 = SBFInterfaceOrientationMaskContainsInterfaceOrientation();
    }

    else
    {
      if (!automaticallyReversedLayoutOrientations)
      {
        return;
      }

      v5 = 0;
    }

    [(SBIconListView *)self setLayoutReversed:v5];
  }
}

- (void)updateReversedLayoutBasedOnOrientation
{
  if ([(SBIconListView *)self automaticallyReversedLayoutOrientations])
  {
    [(SBIconListView *)self orientation];
    v3 = SBFInterfaceOrientationMaskContainsInterfaceOrientation();

    [(SBIconListView *)self setLayoutReversed:v3];
  }
}

- (void)setIconViewConfigurationOptions:(unint64_t)a3
{
  if (self->_iconViewConfigurationOptions != a3)
  {
    self->_iconViewConfigurationOptions = a3;
    [(SBIconListView *)self layoutIconsNow];

    [(SBIconListView *)self invalidateIntrinsicContentSize];
  }
}

- (void)addIconViewConfigurationOption:(unint64_t)a3
{
  v4 = [(SBIconListView *)self iconViewConfigurationOptions]| a3;

  [(SBIconListView *)self setIconViewConfigurationOptions:v4];
}

- (void)removeIconViewConfigurationOption:(unint64_t)a3
{
  v4 = [(SBIconListView *)self iconViewConfigurationOptions]& ~a3;

  [(SBIconListView *)self setIconViewConfigurationOptions:v4];
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (self->_legibilitySettings != v5)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__SBIconListView_setLegibilitySettings___block_invoke;
    v6[3] = &unk_1E808AEC0;
    v7 = v5;
    [(SBIconListView *)self enumerateIconViewsUsingBlock:v6];
  }
}

- (void)setAlignsIconsOnPixelBoundaries:(BOOL)a3
{
  if (self->_alignsIconsOnPixelBoundaries != a3)
  {
    self->_alignsIconsOnPixelBoundaries = a3;
    [(SBIconListView *)self setIconsNeedLayout];
  }
}

- (void)setLayoutInsetsMode:(int64_t)a3
{
  if (self->_layoutInsetsMode != a3)
  {
    self->_layoutInsetsMode = a3;
    [(SBIconListView *)self setIconsNeedLayout];
  }
}

- (SBHIconGridSize)boundedGridSizeForCurrentOrientation
{
  v2 = self;
  v3 = [(SBIconListView *)self displayedModel];
  LODWORD(v2) = [v3 boundedGridSizeWithOptions:{-[SBIconListView gridCellInfoOptions](v2, "gridCellInfoOptions")}];

  return v2;
}

- (unint64_t)maximumIconCount
{
  v2 = [(SBIconListView *)self layout];
  v3 = SBHIconListLayoutMaximumIconCount(v2);

  return v3;
}

- (void)setAdditionalLayoutInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_additionalLayoutInsets.top), vceqq_f64(v4, *&self->_additionalLayoutInsets.bottom)))) & 1) == 0)
  {
    self->_additionalLayoutInsets = a3;
    [(SBIconListView *)self setIconsNeedLayout];

    [(SBIconListView *)self invalidateIntrinsicContentSize];
  }
}

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3
{
  v5 = [(SBIconListView *)self layout];
  [v5 layoutInsetsForOrientation:a3];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(SBIconListView *)self currentIconLocationTransitionHandler];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 iconLocation];
    v17 = [(SBIconListView *)self layoutProvider];
    v18 = [v17 layoutForIconLocation:v16];

    [v18 layoutInsetsForOrientation:a3];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v15 progress];
    SBHInterpolateEdgeInsets(v7, v9, v11, v13, v20, v22, v24, v26, v27);
  }

  [(SBIconListView *)self additionalLayoutInsets];
  UIEdgeInsetsAdd();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = v29;
  v37 = v31;
  v38 = v33;
  v39 = v35;
  result.right = v39;
  result.bottom = v38;
  result.left = v37;
  result.top = v36;
  return result;
}

- (unint64_t)indexForCoordinate:(SBIconCoordinate)a3 forOrientation:(int64_t)a4
{
  row = a3.row;
  column = a3.column;
  v8 = [(SBIconListView *)self layoutMetrics];
  v9 = [(SBIconListView *)self indexForCoordinate:column forOrientation:row metrics:a4, v8];

  return v9;
}

- (unint64_t)indexForCoordinate:(SBIconCoordinate)a3 forOrientation:(int64_t)a4 metrics:(id)a5
{
  row = a3.row;
  column = a3.column;
  v9 = a5;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (row && row != 0x7FFFFFFFFFFFFFFFLL && column != 0x7FFFFFFFFFFFFFFFLL && column)
  {
    v11 = [(SBIconListView *)self layout];
    v12 = [v11 numberOfRowsForOrientation:a4];

    v13 = [(SBIconListView *)self layout];
    v14 = [v13 numberOfColumnsForOrientation:a4];

    if (row > 0)
    {
      v15 = -1;
    }

    else
    {
      v15 = v12;
    }

    if (column > 0)
    {
      v16 = -1;
    }

    else
    {
      v16 = v14;
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = v16 + column;
    if (v17 >= 0)
    {
      v18 = v15 + row;
      if ((v18 & 0x8000000000000000) == 0 && v17 < v14 && v18 < v12)
      {
        v10 = [(SBIconListView *)self iconIndexForGridCellIndex:[(SBIconListView *)self gridCellIndexForCoordinate:column metrics:row metrics:v9], v9];
      }
    }
  }

  return v10;
}

- (SBIconCoordinate)iconCoordinateForGridCellIndex:(unint64_t)a3 metrics:(id)a4
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [a4 gridCellInfo];
    v5 = [v7 coordinateForGridCellIndex:a3];
    v4 = v8;
  }

  v9 = v5;
  v10 = v4;
  result.row = v10;
  result.column = v9;
  return result;
}

- (SBIconCoordinate)iconCoordinateForIndex:(unint64_t)a3 forOrientation:(int64_t)a4
{
  v7 = [(SBIconListView *)self layoutMetrics];
  v8 = [(SBIconListView *)self iconCoordinateForIndex:a3 forOrientation:a4 metrics:v7];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.row = v12;
  result.column = v11;
  return result;
}

- (SBIconCoordinate)iconCoordinateForIndex:(unint64_t)a3 forOrientation:(int64_t)a4 metrics:(id)a5
{
  v7 = a5;
  v8 = [v7 gridCellInfo];
  v9 = -[SBIconListView iconCoordinateForGridCellIndex:metrics:](self, "iconCoordinateForGridCellIndex:metrics:", [v8 gridCellIndexForIconIndex:a3], v7);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.row = v13;
  result.column = v12;
  return result;
}

- (SBIconCoordinate)iconCoordinateForIndex:(unint64_t)a3 metrics:(id)a4
{
  v6 = a4;
  v7 = [v6 gridCellInfo];
  v8 = -[SBIconListView iconCoordinateForGridCellIndex:metrics:](self, "iconCoordinateForGridCellIndex:metrics:", [v7 gridCellIndexForIconIndex:a3], v6);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.row = v12;
  result.column = v11;
  return result;
}

- (SBHIconGridRange)iconGridRangeForIndex:(unint64_t)a3 metrics:(id)a4
{
  v5 = [a4 gridCellInfo];
  v6 = [v5 gridRangeForGridCellIndex:{objc_msgSend(v5, "gridCellIndexForIconIndex:", a3)}];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.size = v10;
  result.cellIndex = v9;
  return result;
}

- (SBHIconGridSize)iconGridSizeForClass:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self iconGridSizeClassSizes];
  v6 = [v5 gridSizeForGridSizeClass:v4];

  return v6;
}

- (id)iconGridSizeClassForIconGridSize:(SBHIconGridSize)a3
{
  v5 = [(SBIconListView *)self iconGridSizeClassSizes];
  v6 = [(SBIconListView *)self displayedModel];
  v7 = [v6 allowedGridSizeClasses];
  v8 = [v5 bestGridSizeClassForGridSize:*&a3 allowedGridSizeClasses:v7];

  return v8;
}

- (id)visibleIconIndexes
{
  v3 = [(SBIconListView *)self cellVisibility];
  if (v3 == 2)
  {
    v6 = [MEMORY[0x1E696AC90] indexSet];
  }

  else if (v3 == 1)
  {
    v7 = [(SBIconListView *)self partialVisibleGridCellIndexes];
    v8 = [(SBIconListView *)self gridCellInfo];
    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __36__SBIconListView_visibleIconIndexes__block_invoke;
    v14[3] = &unk_1E808CC88;
    v15 = v8;
    v10 = v9;
    v16 = v10;
    v11 = v8;
    [v7 enumerateIndexesUsingBlock:v14];
    v12 = v16;
    v6 = v10;
  }

  else if (v3)
  {
    v6 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E696AC90];
    v5 = [(SBIconListView *)self displayedModel];
    v6 = [v4 indexSetWithIndexesInRange:{0, objc_msgSend(v5, "numberOfIcons")}];
  }

  return v6;
}

uint64_t __36__SBIconListView_visibleIconIndexes__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) iconIndexForGridCellIndex:a2];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = result;
    v5 = *(a1 + 40);

    return [v5 addIndex:v4];
  }

  return result;
}

- (NSArray)visibleIcons
{
  v3 = [(SBIconListView *)self visibleIconIndexes];
  v4 = [(SBIconListView *)self displayedModel];
  v5 = [v4 iconsAtIndexes:v3];

  return v5;
}

- (NSArray)prefetchedIcons
{
  v3 = [(SBIconListView *)self prefetchedGridCellIndexes];
  v4 = [(SBIconListView *)self displayedModel];
  v5 = [(SBIconListView *)self gridCellInfo];
  v6 = [v4 iconsAtGridCellIndexes:v3 gridCellInfo:v5];

  return v6;
}

- (id)temporarilyMappedIconForIcon:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ([(SBIconListView *)self hasTemporaryModel])
  {
    v5 = v4;
    if ([v4 isFolderIcon])
    {
      v6 = [v4 uniqueIdentifier];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = self->_iconViews;
      v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v5 = v4;
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            v13 = [v12 uniqueIdentifier];
            v14 = [v13 isEqual:v6];

            if (v14)
            {
              v5 = v12;

              goto LABEL_13;
            }
          }

          v9 = [(NSMapTable *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }

        v5 = v4;
      }

LABEL_13:
    }
  }

  return v5;
}

- (void)regenerateTemporaryDisplayedModelIfNecessary
{
  v154 = *MEMORY[0x1E69E9840];
  v98 = [(SBIconListView *)self model];
  v2 = self;
  if ([(NSHashTable *)self->_layoutHidingAssertions count])
  {
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    obj = self->_layoutHidingAssertions;
    v91 = [(NSHashTable *)obj countByEnumeratingWithState:&v143 objects:v153 count:16];
    if (v91)
    {
      v95 = 0;
      v3 = 0;
      v89 = *v144;
      do
      {
        v4 = 0;
        do
        {
          if (*v144 != v89)
          {
            v5 = v4;
            objc_enumerationMutation(obj);
            v4 = v5;
          }

          v93 = v4;
          v6 = *(*(&v143 + 1) + 8 * v4);
          v7 = [v6 icons];
          v8 = [v6 options];
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v9 = v7;
          v10 = [v9 countByEnumeratingWithState:&v139 objects:v152 count:16];
          if (v10)
          {
            v11 = *v140;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v140 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v139 + 1) + 8 * i);
                v14 = [v98 directlyContainsIcon:v13];
                if ((v14 | v95) & 1 | ((v8 & 8) == 0))
                {
                  v3 |= v14;
                }

                else
                {
                  v122 = 0;
                  v123 = &v122;
                  v124 = 0x2020000000;
                  LOBYTE(v125) = 0;
                  v138[0] = MEMORY[0x1E69E9820];
                  v138[1] = 3221225472;
                  v138[2] = __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke;
                  v138[3] = &unk_1E808CCB0;
                  v138[4] = v13;
                  v138[5] = &v122;
                  [v98 enumerateFolderIconsUsingBlock:v138];
                  v95 = *(v123 + 24);
                  _Block_object_dispose(&v122, 8);
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v139 objects:v152 count:16];
            }

            while (v10);
          }

          v4 = v93 + 1;
        }

        while (v93 + 1 != v91);
        v91 = [(NSHashTable *)obj countByEnumeratingWithState:&v143 objects:v153 count:16];
      }

      while (v91);
      v15 = v3 | v95;
    }

    else
    {
      LOBYTE(v95) = 0;
      v15 = 0;
    }

    v2 = self;
  }

  else
  {
    LOBYTE(v95) = 0;
    v15 = 0;
  }

  v81 = [(SBIconListView *)v2 temporaryModel];
  v80 = [(SBIconListView *)self temporaryFolder];
  v16 = ([(NSHashTable *)self->_placeholderAssertions count]!= 0) | v15;
  if (!v81 && (v16 & 1) == 0)
  {
    v17 = 0;
    v18 = 0;
    v92 = 0;
    goto LABEL_128;
  }

  v19 = v16 & 1;
  if ((v16 & 1) == 0)
  {
    v21 = 0;
    v17 = 0;
    v22 = 0;
    v92 = 0;
    goto LABEL_117;
  }

  v76 = v16 & 1;
  v78 = [v98 folder];
  v79 = [v98 uniqueIdentifier];
  if (v78 && ([v78 isExtraList:v98] & 1) == 0)
  {
    v92 = [v78 copyWithOptions:12];
    v94 = [v92 listWithIdentifier:v79];
    v20 = [v98 rotatedIconGridSizeClassSizes];
    [v94 setRotatedIconGridSizeClassSizes:v20];
  }

  else
  {
    v94 = [v98 copy];
    v20 = [v78 effectiveBadgeBehaviorProvider];
    [v94 setBadgeBehaviorProvider:v20];
    v92 = 0;
  }

  v90 = [(SBIconListView *)self gridCellInfoOptions];
  v77 = [(NSHashTable *)self->_placeholderAssertions allObjects];
  v23 = [v77 sortedArrayUsingComparator:&__block_literal_global_48];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  obja = v23;
  v24 = [obja countByEnumeratingWithState:&v134 objects:v151 count:16];
  if (v24)
  {
    v25 = *v135;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v135 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v134 + 1) + 8 * j);
        v28 = [v27 representedIcon];
        if ([v28 isFolderIcon])
        {
          v29 = [v28 nodeIdentifier];
          v30 = [v94 directlyContainedIconWithIdentifier:v29];

          v28 = v30;
        }

        if (v28)
        {
          v31 = [v27 placeholderIcon];
          if ([v94 directlyContainsIcon:v28])
          {
            if (v92)
            {
              [v92 replaceIcon:v28 withIcon:v31 options:{objc_msgSend(v27, "folderMutationOptions")}];
            }

            else
            {
              v32 = [v94 replaceIcon:v28 withIcon:v31 options:{objc_msgSend(v27, "listMutationOptions")}];
            }

            [v17 addObject:v28];
          }
        }
      }

      v24 = [obja countByEnumeratingWithState:&v134 objects:v151 count:16];
    }

    while (v24);
  }

  if (v15)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v33 = self->_layoutHidingAssertions;
    v34 = [(NSHashTable *)v33 countByEnumeratingWithState:&v130 objects:v150 count:16];
    if (v34)
    {
      v35 = *v131;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v131 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v130 + 1) + 8 * k);
          v38 = [v37 icons];
          v128[0] = MEMORY[0x1E69E9820];
          v128[1] = 3221225472;
          v128[2] = __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_3;
          v128[3] = &unk_1E808CCF8;
          v39 = v94;
          v129 = v39;
          v40 = [v38 bs_compactMap:v128];
          if (v92)
          {
            [v92 removeIcons:v40 options:-[SBIconListView folderMutationOptionsForIconLayoutHidingAssertion:](self listGridCellInfoOptions:{"folderMutationOptionsForIconLayoutHidingAssertion:", v37), v90}];
          }

          else
          {
            [v39 removeIcons:v40 gridCellInfoOptions:v90 mutationOptions:{-[SBIconListView listMutationOptionsForIconLayoutHidingAssertion:](self, "listMutationOptionsForIconLayoutHidingAssertion:", v37)}];
          }

          [v17 addObjectsFromArray:v38];
        }

        v34 = [(NSHashTable *)v33 countByEnumeratingWithState:&v130 objects:v150 count:16];
      }

      while (v34);
    }

    if (v95)
    {
      v122 = 0;
      v123 = &v122;
      v124 = 0x3032000000;
      v125 = __Block_byref_object_copy__10;
      v126 = __Block_byref_object_dispose__10;
      v127 = 0;
      v121[0] = MEMORY[0x1E69E9820];
      v121[1] = 3221225472;
      v121[2] = __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_46;
      v121[3] = &unk_1E808CD20;
      v121[4] = &v122;
      [v94 enumerateFolderIconsUsingBlock:v121];
      if (v123[5])
      {
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v96 = v123[5];
        v41 = [v96 countByEnumeratingWithState:&v117 objects:v149 count:16];
        if (v41)
        {
          v42 = *v118;
          do
          {
            for (m = 0; m != v41; ++m)
            {
              if (*v118 != v42)
              {
                objc_enumerationMutation(v96);
              }

              v44 = *(*(&v117 + 1) + 8 * m);
              v45 = [v44 folder];
              if ([v45 isEmpty])
              {
                [v94 removeIcon:v44];
              }

              else
              {
                v46 = [v45 firstIcon];
                v47 = [(SBIconListView *)self displayedIconViewForIcon:v44];
                if (v47)
                {
                  v48 = v44;
                }

                else
                {
                  v48 = 0;
                }

                v49 = v48;

                v50 = v44;
                if (!v49)
                {
                  v51 = [v44 uniqueIdentifier];
                  v50 = [v98 directlyContainedIconWithIdentifier:v51];

                  if (!v50 || ([(SBIconListView *)self displayedIconViewForIcon:v50], v52 = objc_claimAutoreleasedReturnValue(), v53 = v52 == 0, v52, v53))
                  {

                    v50 = 0;
                  }
                }

                v54 = [v94 replaceIcon:v44 withIcon:v46 options:0];
                [(SBIconListView *)self markIcon:v50 asNeedingAnimation:2];
                [(SBIconListView *)self setExtraIconForFolderCollapseSpecialIconAnimation:v46];
              }
            }

            v41 = [v96 countByEnumeratingWithState:&v117 objects:v149 count:16];
          }

          while (v41);
        }
      }

      _Block_object_dispose(&v122, 8);
    }
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v82 = obja;
  v84 = [v82 countByEnumeratingWithState:&v113 objects:v148 count:16];
  if (!v84)
  {
    goto LABEL_114;
  }

  v83 = *v114;
  do
  {
    v55 = 0;
    do
    {
      if (*v114 != v83)
      {
        objc_enumerationMutation(v82);
      }

      v56 = *(*(&v113 + 1) + 8 * v55);
      v97 = [v56 placeholderIcon];
      objb = [v56 positioningRelativeIcon];
      v57 = [v56 gridCellIndex];
      v58 = [v56 listMutationOptions];
      v59 = [v56 positioningType];
      v60 = [v56 options];
      [(SBIconListView *)self updateIconLocationWithNonDefaultSizedIcons];
      v61 = 0;
      if (v59 > 2)
      {
        switch(v59)
        {
          case 3:
            [v94 moveContainedIcon:v97 beforeIcon:objb gridCellInfoOptions:v90 mutationOptions:v58];
            break;
          case 4:
            [v94 moveContainedIcon:v97 aboveIcon:objb gridCellInfoOptions:v90 mutationOptions:v58];
            break;
          case 5:
            [v94 moveContainedIcon:v97 belowIcon:objb gridCellInfoOptions:v90 mutationOptions:v58];
            break;
          default:
            goto LABEL_100;
        }

        goto LABEL_99;
      }

      if (v59)
      {
        if (v59 == 1)
        {
          [v94 swapContainedIcon:v97 withContainedIcon:objb gridCellInfoOptions:v90 mutationOptions:v58];
        }

        else
        {
          if (v59 != 2)
          {
            goto LABEL_100;
          }

          [v94 moveContainedIcon:v97 afterIcon:objb gridCellInfoOptions:v90 mutationOptions:v58];
        }

LABEL_99:
        v61 = 0;
        goto LABEL_100;
      }

      if (v92)
      {
        v62 = [v94 icons];
        v61 = [v62 mutableCopy];

        v63 = [v56 folderMutationOptions];
        v64 = [[SBHIconGridPath alloc] initWithFolderIdentifier:0 listIdentifier:v79 gridCellIndex:v57 gridCellInfoOptions:v90];
        v65 = [v92 insertIcon:v97 atGridPath:v64 options:v63];
        v66 = [v94 icons];
        [v61 removeObjectsInArray:v66];
      }

      else
      {
        v61 = [v94 insertIcon:v97 atGridCellIndex:v57 gridCellInfoOptions:v90 mutationOptions:v58];
      }

LABEL_100:
      if ([v61 count])
      {
        if ((v60 & 8) != 0)
        {

          v21 = 1;
          goto LABEL_116;
        }

        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v67 = v61;
        v68 = [v67 countByEnumeratingWithState:&v109 objects:v147 count:16];
        if (v68)
        {
          v69 = *v110;
          do
          {
            for (n = 0; n != v68; ++n)
            {
              if (*v110 != v69)
              {
                objc_enumerationMutation(v67);
              }

              [v17 addObject:*(*(&v109 + 1) + 8 * n)];
            }

            v68 = [v67 countByEnumeratingWithState:&v109 objects:v147 count:16];
          }

          while (v68);
        }
      }

      ++v55;
    }

    while (v55 != v84);
    v71 = [v82 countByEnumeratingWithState:&v113 objects:v148 count:16];
    v84 = v71;
  }

  while (v71);
LABEL_114:
  v21 = 0;
LABEL_116:

  v22 = v94;
  v19 = v76;
LABEL_117:
  if (v81 && (v21 & 1) == 0)
  {
    v72 = v19;
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_2_48;
    v104[3] = &unk_1E808CD48;
    v105 = v98;
    v106 = v80;
    v107 = self;
    v108 = v72;
    [v81 enumerateFolderIconsUsingBlock:v104];

    v19 = v72;
  }

  v73 = v19 ^ 1;
  if (!v22)
  {
    v73 = 1;
  }

  if ((v21 | v73))
  {
    v18 = v22;
    if ((v19 & 1) == 0)
    {
      [(SBIconListView *)self setTemporaryModel:0];
      [(SBIconListView *)self setTemporaryFolder:0];
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_5;
      v99[3] = &unk_1E808CD70;
      v99[4] = self;
      [v98 enumerateFolderIconsUsingBlock:v99];
      [(SBIconListView *)self updateIconLocationWithNonDefaultSizedIcons];
      [(SBIconListView *)self setIconsNeedLayout];
    }
  }

  else
  {
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_3_49;
    v101[3] = &unk_1E8089CC0;
    v74 = v98;
    v102 = v74;
    v103 = self;
    v18 = v22;
    [v22 enumerateFolderIconsUsingBlock:v101];
    [(SBIconListView *)self setTemporaryFolder:v92];
    [(SBIconListView *)self setTemporaryModel:v22];
    -[SBIconListView updateIconLocationWithNonDefaultSizedIcons:](self, "updateIconLocationWithNonDefaultSizedIcons:", [v22 directlyContainsNonDefaultSizeClassIcon]);
    if (v17)
    {
      v75 = [(SBIconListView *)self removedIcons];
      [v75 addObjectsFromArray:v17];
    }

    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_4;
    v100[3] = &unk_1E808CD70;
    v100[4] = self;
    [v74 enumerateFolderIconsUsingBlock:v100];
    [(SBIconListView *)self setIconsNeedLayout];
    [(SBIconListView *)self invalidateIntrinsicContentSize];
  }

LABEL_128:
}

void __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 folder];
  if ([v6 containsIcon:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

BOOL __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 gridCellIndex];
  v6 = [v4 gridCellIndex];

  return v5 < v6;
}

id __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFolderIcon])
  {
    v4 = *(a1 + 32);
    v5 = [v3 nodeIdentifier];
    v6 = [v4 directlyContainedIconWithIdentifier:v5];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

void __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_46(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 folder];
  v4 = [v3 isEmpty];
  v5 = [v3 containsOneIcon];
  if ((v4 & 1) != 0 || ([v3 isCancelable] & v5) == 1)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v6 addObject:v10];
  }
}

void __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_2_48(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 uniqueIdentifier];
  v4 = [*(a1 + 32) directlyContainedIconWithIdentifier:?];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [*(a1 + 40) iconWithIdentifier:v9];
    if (v5)
    {
      v7 = [*(a1 + 48) removedIcons];
      [v7 addObject:v5];

      v6 = 1;
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v8 = [*(*(a1 + 48) + 424) objectForKey:v3];
  [*(*(a1 + 48) + 424) removeObjectForKey:v3];

  [*(*(a1 + 48) + 424) setObject:v8 forKey:v5];
  [v8 setOverrideBadgeNumberOrString:0];
  if ((v6 & 1) == 0 && v5 && (*(a1 + 56) & 1) == 0)
  {
    [v8 setIcon:v5];
  }
}

void __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_3_49(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 uniqueIdentifier];
  v4 = [*(a1 + 32) directlyContainedIconWithIdentifier:v3];
  if (v4)
  {
    v5 = [*(*(a1 + 40) + 424) objectForKey:v4];
    if (v5)
    {
      [*(*(a1 + 40) + 424) setObject:v5 forKey:v8];
      [*(*(a1 + 40) + 424) removeObjectForKey:v4];
      v6 = [v8 badgeNumberOrString];
      if (v6)
      {
        [v5 setOverrideBadgeNumberOrString:v6];
      }

      else
      {
        v7 = [MEMORY[0x1E695DFB0] null];
        [v5 setOverrideBadgeNumberOrString:v7];
      }
    }
  }
}

void __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 folder];
  [v3 addFolderObserver:*(a1 + 32)];
}

void __62__SBIconListView_regenerateTemporaryDisplayedModelIfNecessary__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 folder];
  [v3 removeFolderObserver:*(a1 + 32)];
}

- (unint64_t)folderMutationOptionsForIconLayoutHidingAssertion:(id)a3
{
  v4 = [a3 folderMutationOptions];
  if ([(SBIconListView *)self allowsGaps])
  {
    return v4 | 0x400000;
  }

  else
  {
    return v4;
  }
}

- (unint64_t)listMutationOptionsForIconLayoutHidingAssertion:(id)a3
{
  v4 = [a3 listMutationOptions];
  v5 = [(SBIconListView *)self allowsGaps];
  v6 = v4 | 0x100000;
  if (!v5)
  {
    v6 = v4;
  }

  return v6 | 0x8000;
}

- (BOOL)isEmpty
{
  v2 = [(SBIconListView *)self displayedModel];
  v3 = [v2 isEmpty];

  return v3;
}

- (BOOL)isFull
{
  v2 = [(SBIconListView *)self displayedModel];
  v3 = [v2 isFull];

  return v3;
}

- (BOOL)containsIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self displayedModel];
  v6 = [v5 directlyContainsIcon:v4];

  return v6;
}

- (void)markIcon:(id)a3 asNeedingAnimation:(int64_t)a4
{
  v10 = a3;
  specialIconAnimations = self->_specialIconAnimations;
  if (!specialIconAnimations)
  {
    v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v8 = self->_specialIconAnimations;
    self->_specialIconAnimations = v7;

    specialIconAnimations = self->_specialIconAnimations;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMapTable *)specialIconAnimations setObject:v9 forKey:v10];

  [(SBIconListView *)self setIconsNeedLayout];
}

- (id)pauseLayoutForIconView:(id)a3 forReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_pausedLayoutAssertionsForIconViews)
  {
    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    pausedLayoutAssertionsForIconViews = self->_pausedLayoutAssertionsForIconViews;
    self->_pausedLayoutAssertionsForIconViews = v8;
  }

  v10 = [[SBIconListViewPauseLayoutAssertion alloc] initWithListView:self iconView:v6 reason:v7];
  v11 = [(NSMapTable *)self->_pausedLayoutAssertionsForIconViews objectForKey:v6];
  if (!v11)
  {
    v11 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(NSMapTable *)self->_pausedLayoutAssertionsForIconViews setObject:v11 forKey:v6];
  }

  [v11 addObject:v10];

  return v10;
}

- (void)removePauseLayoutAssertion:(id)a3
{
  v4 = a3;
  v7 = [v4 iconView];
  v5 = [(NSMapTable *)self->_pausedLayoutAssertionsForIconViews objectForKey:?];
  v6 = [v5 count];
  [v5 removeObject:v4];

  if (![v5 count])
  {
    [(NSMapTable *)self->_pausedLayoutAssertionsForIconViews removeObjectForKey:v7];
    if (v6)
    {
      [(SBIconListView *)self setIconsNeedLayout];
    }
  }
}

- (BOOL)isLayoutPausedForIconView:(id)a3
{
  v3 = [(NSMapTable *)self->_pausedLayoutAssertionsForIconViews objectForKey:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)setPausesIconsForScrolling:(BOOL)a3
{
  if (self->_pausesIconsForScrolling != a3)
  {
    self->_pausesIconsForScrolling = a3;
    [(SBIconListView *)self setIconsNeedLayout];
  }
}

- (void)performSpecialIconAnimationsWithCompletionHandler:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_specialIconAnimations;
  specialIconAnimations = self->_specialIconAnimations;
  self->_specialIconAnimations = 0;

  v7 = [(NSMapTable *)v5 count];
  if (v7)
  {
    v8 = v7;
    self->_performingSpecialIconAnimations = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__SBIconListView_performSpecialIconAnimationsWithCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E8088D68;
    aBlock[4] = self;
    v29 = v4;
    v19 = v4;
    block = _Block_copy(aBlock);
    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = dispatch_group_create();
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v5;
    v10 = v5;
    v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [(NSMapTable *)v10 objectForKey:v15];
          v17 = [v16 integerValue];

          if (v9)
          {
            dispatch_group_enter(v9);
          }

          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __68__SBIconListView_performSpecialIconAnimationsWithCompletionHandler___block_invoke_2;
          v21[3] = &unk_1E8088D68;
          v22 = v9;
          v23 = block;
          [(SBIconListView *)self performSpecialIconAnimation:v17 icon:v15 completionHandler:v21];
        }

        v12 = [(NSMapTable *)v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v12);
    }

    if (v9)
    {
      dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);
    }

    v5 = v18;
    v4 = v19;
  }

  else
  {
    v4[2](v4);
  }
}

void __68__SBIconListView_performSpecialIconAnimationsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)performSpecialIconAnimation:(int64_t)a3 icon:(id)a4 completionHandler:(id)a5
{
  v9 = a4;
  v8 = a5;
  switch(a3)
  {
    case 2:
      [(SBIconListView *)self performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon:v9 completionHandler:v8];
      break;
    case 1:
      [(SBIconListView *)self performZoomInSpecialIconAnimationWithIcon:v9 completionHandler:v8];
      break;
    case 0:
      [(SBIconListView *)self performZoomOutSpecialIconAnimationWithIcon:v9 completionHandler:v8];
      break;
  }
}

- (void)performZoomInSpecialIconAnimationWithIcon:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(SBIconListView *)self iconViewForIcon:a3];
  CGAffineTransformMakeScale(&v15, 0.001, 0.001);
  [v7 setTransform:&v15];
  [v7 setAlpha:0.0];
  v8 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__SBIconListView_performZoomInSpecialIconAnimationWithIcon_completionHandler___block_invoke;
  v13[3] = &unk_1E8088C90;
  v14 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__SBIconListView_performZoomInSpecialIconAnimationWithIcon_completionHandler___block_invoke_2;
  v11[3] = &unk_1E808A0B8;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  [v8 animateWithDuration:v13 animations:v11 completion:0.2];
}

uint64_t __78__SBIconListView_performZoomInSpecialIconAnimationWithIcon_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

- (void)performZoomOutSpecialIconAnimationWithIcon:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(SBIconListView *)self displayedIconViewForIcon:a3];
  v8 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SBIconListView_performZoomOutSpecialIconAnimationWithIcon_completionHandler___block_invoke;
  v13[3] = &unk_1E8088C90;
  v14 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__SBIconListView_performZoomOutSpecialIconAnimationWithIcon_completionHandler___block_invoke_2;
  v11[3] = &unk_1E808A0B8;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  [v8 animateWithDuration:v13 animations:v11 completion:0.2];
}

uint64_t __79__SBIconListView_performZoomOutSpecialIconAnimationWithIcon_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.001, 0.001);
  [v2 setTransform:&v4];
  return [*(a1 + 32) setAlpha:0.0];
}

- (void)performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListView *)self iconViewForIcon:v6];
  [v8 frameForMiniIconAtIndex:0];
  v44 = v10;
  v45 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SBIconListView *)self extraIconForFolderCollapseSpecialIconAnimation];
  if (!v15)
  {
    v16 = SBLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SBIconListView performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon:v6 completionHandler:v16];
    }
  }

  v17 = [(SBIconListView *)self iconViewForIcon:v15];
  v47 = [(SBIconListView *)self effectiveIconImageAppearance];
  v18 = [(SBIconListView *)self layout];
  [v18 iconImageInfo];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = SBHIconListLayoutFolderIconGridCellSize(v18);
  v29 = v28;
  v30 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v31 = [v17 iconImageSnapshot];
  v32 = [v30 initWithImage:v31];

  v46 = v8;
  if (v15)
  {
    v33 = [v8 folderIconImageCache];
    v34 = [v33 gridCellImageOfSize:v15 forIcon:v47 iconImageInfo:v27 imageAppearance:{v29, v20, v22, v24, v26}];
  }

  else
  {
    v34 = 0;
  }

  v35 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v34];
  [v17 setIconImageAndAccessoryAlpha:0.0];
  [v17 setIconLabelAlpha:0.0];
  [v17 setRefusesRecipientStatus:1];
  v36 = [v32 layer];
  [v36 setAllowsEdgeAntialiasing:1];

  v37 = [v35 layer];
  [v37 setAllowsEdgeAntialiasing:1];

  [v32 setFrame:{v45, v44, v12, v14}];
  [v35 setFrame:{v45, v44, v12, v14}];
  [v17 addSubview:v32];
  [v17 addSubview:v35];
  v38 = MEMORY[0x1E69DD250];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __103__SBIconListView_performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon_completionHandler___block_invoke;
  v53[3] = &unk_1E8088F88;
  v54 = v17;
  v55 = v32;
  v56 = v35;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __103__SBIconListView_performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon_completionHandler___block_invoke_4;
  v48[3] = &unk_1E808CD98;
  v48[4] = self;
  v49 = v15;
  v50 = v55;
  v51 = v56;
  v52 = v7;
  v39 = v17;
  v40 = v15;
  v41 = v55;
  v42 = v56;
  v43 = v7;
  [v38 animateKeyframesWithDuration:0 delay:v53 options:v48 animations:0.5 completion:0.0];
  [(SBIconListView *)self setExtraIconForFolderCollapseSpecialIconAnimation:0];
}

void __103__SBIconListView_performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon_completionHandler___block_invoke(id *a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __103__SBIconListView_performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon_completionHandler___block_invoke_2;
  v6[3] = &unk_1E8088F88;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  [v2 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:1.0];
  v3 = MEMORY[0x1E69DD250];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __103__SBIconListView_performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon_completionHandler___block_invoke_3;
  v4[3] = &unk_1E8088C90;
  v5 = a1[4];
  [v3 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.7 animations:0.3];
}

uint64_t __103__SBIconListView_performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon_completionHandler___block_invoke_2(id *a1)
{
  [a1[4] iconImageFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1[5] setFrame:?];
  [a1[6] setFrame:{v3, v5, v7, v9}];
  v10 = a1[6];

  return [v10 setAlpha:0.0];
}

void __103__SBIconListView_performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) iconViewForIcon:*(a1 + 40)];
  [v2 setIconImageAlpha:1.0];
  [v2 setIconAccessoryAlpha:0.0];
  [v2 setRefusesRecipientStatus:0];
  v3 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __103__SBIconListView_performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon_completionHandler___block_invoke_5;
  v5[3] = &unk_1E8088C90;
  v6 = v2;
  v4 = v2;
  [v3 animateWithDuration:v5 animations:0.15];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 56) removeFromSuperview];
  (*(*(a1 + 64) + 16))();
}

- (void)layoutAndCreateIcon:(id)a3
{
  v6 = a3;
  v4 = [(SBIconListView *)self displayedModel];
  v5 = [v4 indexForIcon:v6];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBIconListView *)self layoutAndCreateIcon:v6 atIndex:v5];
  }
}

- (void)layoutAndCreateIcon:(id)a3 atIndex:(unint64_t)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SBIconListView *)self iconViewForIcon:v6];
  [v7 setAlpha:1.0];
  [(SBIconListView *)self setIconsNeedLayout];
  if (v7)
  {
    [(SBIconListView *)self centerForIconAtIndex:a4];
    [(SBIconListView *)self layoutScale];
    UIPointRoundToScale();
    v9 = v8;
    v11 = v10;
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    v17[0] = *MEMORY[0x1E695EFD0];
    v17[1] = v12;
    v17[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v7 setTransform:v17];
    [v7 setCenter:{v9, v11}];
    v13 = [v7 superview];
    v14 = v13;
    if (v13 == self)
    {
    }

    else
    {
      v15 = [(SBIconListView *)self shouldReparentView:v7];

      if (v15)
      {
        [(SBIconListView *)self _insertCaptureOnlyBackgroundViewForInsertingIconViewIfNecessary:v7];
        [(SBIconListView *)self addSubview:v7];
      }
    }

    v18[0] = v6;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(SBIconListView *)self _updateEditingStateForIcons:v16 animated:0];
  }
}

- (id)removedIcons
{
  removedIcons = self->_removedIcons;
  if (!removedIcons)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->_removedIcons;
    self->_removedIcons = v4;

    removedIcons = self->_removedIcons;
  }

  return removedIcons;
}

- (void)setAlphaForAllIcons:(double)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(SBIconListView *)self displayedModel];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 icons];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SBIconListView *)self displayedIconViewForIcon:*(*(&v12 + 1) + 8 * v10)];
        [v11 setAlpha:a3];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)removeAllIconAnimations
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(SBIconListView *)self displayedModel];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 icons];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(SBIconListView *)self displayedIconViewForIcon:*(*(&v10 + 1) + 8 * v8)];
        [v9 removeAllIconAnimations];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (CGSize)alignmentIconViewSize
{
  v3 = [(SBIconListView *)self baseIconViewClass];
  [(SBIconListView *)self iconImageSize];
  v5 = v4;
  v7 = v6;
  v8 = [(SBIconListView *)self iconViewConfigurationOptions];

  [(objc_class *)v3 defaultIconViewSizeForIconImageSize:v8 configurationOptions:v5, v7];
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGPoint)originForIconAtIndex:(unint64_t)a3
{
  v5 = [(SBIconListView *)self layoutMetrics];
  v6 = [(SBIconListView *)self iconCoordinateForIndex:a3 forOrientation:[(SBIconListView *)self layoutOrientation] metrics:v5];
  [(SBIconListView *)self originForIconAtCoordinate:v6 metrics:v7, v5];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)originForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self displayedModel];
  v6 = [v5 indexForIcon:v4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBIconListView *)v4 originForIcon:v7];
    }

    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [(SBIconListView *)self originForIconAtIndex:v6];
    v8 = v10;
    v9 = v11;
  }

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)centerForIcon:(id)a3
{
  v5 = [(SBIconListView *)self coordinateForIcon:a3];

  [(SBIconListView *)self centerForIconCoordinate:v5, v4];
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)centerForIcon:(id)a3 metrics:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBIconListView *)self displayedModel];
  v9 = [v8 indexForIcon:v7];

  v10 = [(SBIconListView *)self iconCoordinateForIndex:v9 metrics:v6];
  [(SBIconListView *)self centerForIconCoordinate:v10 metrics:v11, v6];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)centerForIconCoordinate:(SBIconCoordinate)a3
{
  row = a3.row;
  column = a3.column;
  v6 = [(SBIconListView *)self layoutMetrics];
  [(SBIconListView *)self centerForIconCoordinate:column metrics:row, v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)centerForIconCoordinate:(SBIconCoordinate)a3 metrics:(id)a4
{
  row = a3.row;
  column = a3.column;
  v7 = a4;
  [(SBIconListView *)self originForIconAtCoordinate:column metrics:row, v7];
  v9 = v8;
  v11 = v10;
  v12 = [(SBIconListView *)self iconAtCoordinate:column metrics:row, v7];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 gridSizeClass];
    [(SBIconListView *)self iconImageSizeForGridSizeClass:v14];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    [(SBIconListView *)self iconImageSize];
    v16 = v19;
    v18 = v20;
  }

  [(objc_class *)[(SBIconListView *)self baseIconViewClass] defaultIconImageCenterForIconImageSize:v16, v18];
  v22 = v21;
  v24 = v23;
  [v7 iconContentScale];
  v26 = v9 + v22 * v25;
  v27 = v11 + v24 * v25;

  v28 = v26;
  v29 = v27;
  result.y = v29;
  result.x = v28;
  return result;
}

- (CGRect)rectForCellAtIconCoordinate:(SBIconCoordinate)a3 metrics:(id)a4
{
  [(SBIconListView *)self rectForCellAtIconCoordinate:a3.column metrics:a3.row options:a4, 0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)rectForCellAtIconCoordinate:(SBIconCoordinate)a3 metrics:(id)a4 options:(unint64_t)a5
{
  row = a3.row;
  column = a3.column;
  v9 = a4;
  if (column != 0x7FFFFFFFFFFFFFFFLL && column && row != 0x7FFFFFFFFFFFFFFFLL && row)
  {
    v18 = [(SBIconListView *)self gridCellIndexForCoordinate:column metrics:row, v9];
    v19 = [(SBIconListView *)self iconGridRangeForGridCellIndex:v18 metrics:v9 options:a5];
    v20 = [(SBIconListView *)self iconAtGridCellIndex:v18 metrics:v9];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 gridSizeClass];
    }

    else
    {
      v22 = @"SBHIconGridSizeClassDefault";
    }

    v23 = v22;
    v24 = [(SBIconListView *)self iconGridSizeForClass:v22];
    v25 = column;
    v26 = row;
    if (v19 != v18)
    {
      v25 = [(SBIconListView *)self iconCoordinateForGridCellIndex:v19 metrics:v9, row];
      v26 = v27;
    }

    [(SBIconListView *)self rectForDefaultSizedCellsOfSize:*&v24 startingAtCoordinate:v25 metrics:v26, v9];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [(SBIconListView *)self iconImageSizeForGridSizeClass:v23];
    v12 = v36;
    v13 = v37;
    [v9 iconContentScale];
    v39 = v38;
    if (!BSFloatIsOne())
    {
      v12 = v12 * v39;
      v13 = v13 * v39;
    }

    v57.origin.x = v29;
    v57.origin.y = v31;
    v57.size.width = v33;
    v57.size.height = v35;
    MinX = CGRectGetMinX(v57);
    v58.origin.x = v29;
    v58.origin.y = v31;
    v58.size.width = v33;
    v58.size.height = v35;
    v41 = MinX - (v12 - CGRectGetWidth(v58)) * 0.5;
    v59.origin.x = v29;
    v59.origin.y = v31;
    v59.size.width = v33;
    v59.size.height = v35;
    MinY = CGRectGetMinY(v59);
    v60.origin.x = v29;
    v60.origin.y = v31;
    v60.size.width = v33;
    v60.size.height = v35;
    [(SBIconListView *)self _alignedIconPointForPoint:v41, MinY - (v13 - CGRectGetHeight(v60)) * 0.5];
    v10 = v43;
    v11 = v44;
    v45 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListView_centerForIconCoordinate_metrics_proposedCenter_];
    if (v45)
    {
      UIRectGetCenter();
      v47 = v46;
      v49 = v48;
      [v45 iconListView:self centerForIconCoordinate:column metrics:row proposedCenter:v9];
      if (v51 != v47 || v50 != v49)
      {
        UIRectCenteredAboutPoint();
        v10 = v53;
        v11 = v54;
        v12 = v55;
        v13 = v56;
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)fullRectForCellAtIconCoordinate:(SBIconCoordinate)a3 metrics:(id)a4 options:(unint64_t)a5
{
  row = a3.row;
  column = a3.column;
  v9 = a4;
  if (column != 0x7FFFFFFFFFFFFFFFLL && column && row != 0x7FFFFFFFFFFFFFFFLL && row)
  {
    v18 = [(SBIconListView *)self iconGridRangeForGridCellIndex:[(SBIconListView *)self gridCellIndexForCoordinate:column metrics:row metrics:v9] options:v9, a5];
    [(SBIconListView *)self fullRectForGridRange:v18 metrics:v19, v9];
    v10 = v20;
    v11 = v21;
    v12 = v22;
    v13 = v23;
  }

  else
  {
    v10 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)fullRectForGridRange:(SBHIconGridRange)a3 metrics:(id)a4
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4010000000;
  v26 = &unk_1BEECC529;
  v8 = *(MEMORY[0x1E695F050] + 16);
  v27 = *MEMORY[0x1E695F050];
  v28 = v8;
  v9 = [v7 gridCellInfo];
  v10 = [v9 gridSize];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__SBIconListView_fullRectForGridRange_metrics___block_invoke;
  v20[3] = &unk_1E808CDC0;
  v20[4] = self;
  v11 = v7;
  v21 = v11;
  v22 = &v23;
  SBHIconGridRangeEnumerateCellIndexes(cellIndex, size, v10, v20);

  v12 = v24[4];
  v13 = v24[5];
  v14 = v24[6];
  v15 = v24[7];

  _Block_object_dispose(&v23, 8);
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

void __47__SBIconListView_fullRectForGridRange_metrics___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) iconCoordinateForGridCellIndex:a2 metrics:*(a1 + 40)];
  [*(a1 + 32) fullRectForDefaultSizedCellAtCoordinate:v3 metrics:{v4, *(a1 + 40)}];
  v6 = v5;
  y = v7;
  width = v9;
  height = v11;
  IsNull = CGRectIsNull(*(*(*(a1 + 48) + 8) + 32));
  v14 = *(*(a1 + 48) + 8);
  if (IsNull)
  {
    v14[1].origin.x = v6;
  }

  else
  {
    v16.origin.x = v6;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v15 = CGRectUnion(v14[1], v16);
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    v14 = *(*(a1 + 48) + 8);
    v14[1].origin.x = v15.origin.x;
  }

  v14[1].origin.y = y;
  v14[1].size.width = width;
  v14[1].size.height = height;
}

- (CGPoint)centerForIconAtIndex:(unint64_t)a3
{
  v5 = [(SBIconListView *)self iconCoordinateForIndex:a3 forOrientation:[(SBIconListView *)self layoutOrientation]];

  [(SBIconListView *)self centerForIconCoordinate:v5, v4];
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)centerForIconAtIndex:(unint64_t)a3 metrics:(id)a4
{
  v6 = a4;
  v7 = [(SBIconListView *)self iconCoordinateForIndex:a3 metrics:v6];
  [(SBIconListView *)self centerForIconCoordinate:v7 metrics:v8, v6];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)rectForIconAtIndex:(unint64_t)a3
{
  v5 = [(SBIconListView *)self layoutMetrics];
  v6 = [(SBIconListView *)self iconCoordinateForIndex:a3 metrics:v5];
  [(SBIconListView *)self rectForIconCoordinate:v6 metrics:v7, v5];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)rectForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self displayedModel];
  v6 = [v5 indexForIcon:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(SBIconListView *)self model];
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    [(SBIconListView *)self rectForIconAtIndex:v6];
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
  }

  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)rectForIconCoordinate:(SBIconCoordinate)a3
{
  row = a3.row;
  column = a3.column;
  v6 = [(SBIconListView *)self layoutMetrics];
  [(SBIconListView *)self rectForIconCoordinate:column metrics:row, v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)rectForIconCoordinate:(SBIconCoordinate)a3 metrics:(id)a4
{
  row = a3.row;
  column = a3.column;
  v7 = a4;
  v8 = [(SBIconListView *)self iconIndexForCoordinate:column metrics:row, v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v13 = v8;
    v14 = [(SBIconListView *)self displayedModel];
    v15 = [v14 iconAtIndex:v13];
    v16 = [v15 gridSizeClass];
    [(SBIconListView *)self originForIconAtCoordinate:column metrics:row, v7];
    v9 = v17;
    v10 = v18;
    [(SBIconListView *)self iconImageSizeForGridSizeClass:v16];
    v11 = v19;
    v12 = v20;
  }

  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)displayedIconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_iconViews objectForKey:v4];
  if (!v5)
  {
    if ([v4 isFolderIcon] && -[SBIconListView hasTemporaryModel](self, "hasTemporaryModel"))
    {
      v6 = [(SBIconListView *)self temporarilyMappedIconForIcon:v4];
      v5 = [(NSMapTable *)self->_iconViews objectForKey:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)iconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self displayedIconViewForIcon:v4];
  v6 = [(SBIconListView *)self displayedModel];
  v7 = v6;
  if (!v5)
  {
    if (self->_inLayout || [v6 directlyContainsIcon:v4])
    {
      draggingIconViews = self->_draggingIconViews;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __34__SBIconListView_iconViewForIcon___block_invoke;
      v13[3] = &unk_1E808CDE8;
      v9 = v4;
      v14 = v9;
      v10 = [(NSMutableSet *)draggingIconViews bs_firstObjectPassingTest:v13];
      if (v10 || ([(SBIconListView *)self dequeueReusableIconView], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v5 = v10;
      }

      else
      {
        v5 = [(SBIconListView *)self makeIconView];
        if (!v5)
        {
LABEL_9:

          goto LABEL_11;
        }
      }

      [(SBIconListView *)self configureIconView:v5 forIcon:v9];
      [(NSMapTable *)self->_iconViews setObject:v5 forKey:v9];
      [(NSMutableSet *)self->_draggingIconViews removeObject:v5];
      if (!self->_inLayout)
      {
        v11 = [(SBIconListView *)self removedIcons];
        [v11 addObject:v9];

        [(SBIconListView *)self setIconsNeedLayout];
      }

      goto LABEL_9;
    }

    v5 = 0;
  }

LABEL_11:

  return v5;
}

BOOL __34__SBIconListView_iconViewForIcon___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 icon];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListView_willConfigureIconView_forIcon_];
  [v9 iconListView:self willConfigureIconView:v7 forIcon:v8];
  v10 = [v7 isDescendantOfView:self];
  [v7 setPendingIcon:v8];
  if ((v10 & 1) == 0)
  {
    v11 = [(SBIconListView *)self effectiveIconImageStyleConfiguration];
    [v7 setOverrideIconImageStyleConfiguration:v11];
    v12 = *MEMORY[0x1E69DDA98];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __44__SBIconListView_configureIconView_forIcon___block_invoke;
    v32[3] = &unk_1E8088C90;
    v33 = v7;
    [v12 _performBlockAfterCATransactionCommits:v32];
  }

  v13 = [(SBIconListView *)self iconLocation];
  [v7 setLocation:v13];

  v14 = [(SBIconListView *)self layoutProvider];
  [v7 setListLayoutProvider:v14];

  v15 = [(SBIconListView *)self folderIconImageCache];
  [v7 setFolderIconImageCache:v15];

  v16 = [v8 gridSizeClass];
  if (!v16 || ([v8 gridSizeClass], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "isEqualToString:", @"SBHIconGridSizeClassDefault")))
  {
    v17 = [(SBIconListView *)self iconImageCache];
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_8:
  [v7 setIconImageCache:v17];
  if (!self->_inLayout)
  {
    [v7 setContentVisibility:{-[SBIconListView contentVisibilityForIcon:](self, "contentVisibilityForIcon:", v8)}];
  }

  v18 = [(SBIconListView *)self legibilitySettings];
  [v7 setLegibilitySettings:v18];

  [v7 setEditing:{-[SBIconListView isEditing](self, "isEditing")}];
  [v7 setContinuityInfo:0];
  [v7 setUserVisibilityStatus:{-[SBIconListView iconViewUserVisibilityStatus](self, "iconViewUserVisibilityStatus")}];
  [v7 setAlpha:1.0];
  [v7 setIconImageAllowsGlassGrouping:{-[SBIconListView isIconGlassGroupingAllowedForIcon:](self, "isIconGlassGroupingAllowedForIcon:", v8)}];
  v19 = [(SBIconListView *)self iconViewBackdropGroupName];
  [v7 setIconImageBackdropGroupName:v19];

  [v7 setIconImageGlassHidden:{-[SBIconListView isIconViewGlassHidden](self, "isIconViewGlassHidden")}];
  v20 = [v8 gridSizeClass];
  v21 = v20;
  if (v20 && (([v20 isEqualToString:@"SBHIconGridSizeClassDefault"] | v10) & 1) == 0)
  {
    [v7 iconImageInfo];
    v23 = v22;
    [(SBIconListView *)self iconImageSizeForGridSizeClass:v21];
    v25 = v24;
    v27 = v26;
    [(SBIconListView *)self continuousCornerRadiusForGridSizeClass:v21];
    [v7 setIconImageInfo:{v25, v27, v23, v28}];
  }

  else if ((v10 & 1) == 0)
  {
    [v7 clearIconImageInfo];
  }

  v29 = [(SBIconListView *)self iconViewProvider];
  [v29 configureIconView:v7 forIcon:v8];

  [v7 setIcon:v8];
  if (!v21)
  {
    if (v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!(v10 & 1 | (([v21 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)))
  {
LABEL_17:
    [v7 iconViewSize];
    [v7 setBounds:{0.0, 0.0, v30, v31}];
  }

LABEL_18:
}

- (SBIconCoordinate)coordinateForIcon:(id)a3
{
  v4 = [(SBIconListView *)self temporarilyMappedIconForIcon:a3];
  v5 = [(SBIconListView *)self displayedModel];
  v6 = [v5 indexForIcon:v4];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(SBIconListView *)self iconCoordinateForIndex:v6 forOrientation:[(SBIconListView *)self layoutOrientation]];
    v8 = v9;
  }

  v10 = v7;
  v11 = v8;
  result.row = v11;
  result.column = v10;
  return result;
}

- (SBIconCoordinate)coordinateForIconAtIndex:(unint64_t)a3
{
  v5 = [(SBIconListView *)self layoutOrientation];

  v6 = [(SBIconListView *)self iconCoordinateForIndex:a3 forOrientation:v5];
  result.row = v7;
  result.column = v6;
  return result;
}

- (unint64_t)gridCellIndexForIcon:(id)a3
{
  v4 = [(SBIconListView *)self coordinateForIcon:a3];
  v6 = v5;
  v7 = [(SBIconListView *)self gridSizeForCurrentOrientation];

  return SBIconCoordinateGetGridCellIndex(v4, v6, v7);
}

- (unint64_t)gridCellIndexForIconView:(id)a3
{
  v4 = [a3 icon];
  v5 = [(SBIconListView *)self gridCellIndexForIcon:v4];

  return v5;
}

- (SBHIconGridRange)gridRangeForIconAtIndex:(unint64_t)a3
{
  v5 = [(SBIconListView *)self layoutMetrics];
  v6 = [(SBIconListView *)self iconGridRangeForIndex:a3 metrics:v5];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.size = v10;
  result.cellIndex = v9;
  return result;
}

- (id)iconViewForCoordinate:(SBIconCoordinate)a3
{
  row = a3.row;
  column = a3.column;
  v6 = [(SBIconListView *)self layoutMetrics];
  v7 = [(SBIconListView *)self iconAtCoordinate:column metrics:row, v6];
  if (v7)
  {
    v8 = [(SBIconListView *)self iconViewForIcon:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)displayedIconViewForCoordinate:(SBIconCoordinate)a3
{
  row = a3.row;
  column = a3.column;
  v6 = [(SBIconListView *)self layoutMetrics];
  v7 = [(SBIconListView *)self iconAtCoordinate:column metrics:row, v6];
  if (v7)
  {
    v8 = [(SBIconListView *)self displayedIconViewForIcon:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconViewForGridCellIndex:(unint64_t)a3
{
  v5 = [(SBIconListView *)self layoutMetrics];
  v6 = [(SBIconListView *)self iconAtGridCellIndex:a3 metrics:v5];
  if (v6)
  {
    v7 = [(SBIconListView *)self iconViewForIcon:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)displayedIconViewForGridCellIndex:(unint64_t)a3
{
  v5 = [(SBIconListView *)self layoutMetrics];
  v6 = [(SBIconListView *)self iconAtGridCellIndex:a3 metrics:v5];
  if (v6)
  {
    v7 = [(SBIconListView *)self displayedIconViewForIcon:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)indexOfIcon:(id)a3
{
  v4 = [(SBIconListView *)self temporarilyMappedIconForIcon:a3];
  v5 = [(SBIconListView *)self displayedModel];
  v6 = [v5 indexForIcon:v4];

  return v6;
}

- (BOOL)shouldReparentView:(id)a3
{
  v4 = a3;
  v5 = [v4 superview];
  if (v5 && (-[SBIconListView iconViewProvider](self, "iconViewProvider"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isIconViewRecycled:v4], v6, (v7 & 1) == 0))
  {
    if (v5 == self->_pronouncedContainerView)
    {
      v8 = 0;
    }

    else
    {
      v9 = ![(SBIconListView *)self hasOverridingLayoutDelegates];
      if (v5 == self)
      {
        v8 = 0;
      }

      else
      {
        v8 = v9;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SBIconListView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = SBIconListView;
  [(SBIconListView *)&v13 setFrame:x, y, width, height];
  if (!self->_inLayout && (v9 != width || v11 != height))
  {
    [(SBIconListView *)self layoutIconsNow];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SBIconListView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = SBIconListView;
  [(SBIconListView *)&v13 setBounds:x, y, width, height];
  if (!self->_inLayout && (v9 != width || v11 != height))
  {
    [(SBIconListView *)self layoutIconsNow];
  }
}

- (void)didAddSubview:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBIconListView;
  [(SBIconListView *)&v7 didAddSubview:v4];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(SBIconListView *)self didAddIconView:v4];
  }
}

- (void)didAddIconView:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_layoutObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 iconListView:self didAddIconView:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_widgetIntroductionPopover)
  {
    [(SBIconListView *)self bringWidgetIntroductionPopoverToFront];
  }
}

+ (id)dominoAnimator
{
  v2 = dominoAnimator_animator;
  if (!dominoAnimator_animator)
  {
    v3 = objc_alloc_init(SBIconListViewDominoAnimator);
    v4 = dominoAnimator_animator;
    dominoAnimator_animator = v3;

    v2 = dominoAnimator_animator;
  }

  [v2 reset];
  v5 = dominoAnimator_animator;

  return v5;
}

+ (id)multiStageAnimator
{
  v2 = multiStageAnimator_animator;
  if (!multiStageAnimator_animator)
  {
    v3 = objc_alloc_init(SBIconListViewMultiStageAnimator);
    v4 = multiStageAnimator_animator;
    multiStageAnimator_animator = v3;

    v2 = multiStageAnimator_animator;
  }

  return v2;
}

+ (id)builtInAnimatorForAnimationType:(int64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [a1 dominoAnimator];
    }

    else if (a3 == 3)
    {
      v4 = [a1 multiStageAnimator];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = [a1 clusterAnimator];
    }
  }

  else
  {
    v4 = [a1 defaultAnimator];
  }

  return v4;
}

- (void)layoutIconsIfNeeded:(double)a3
{
  if (a3 > 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  [(SBIconListView *)self layoutIconsIfNeededWithAnimationType:v3 options:0];
}

- (void)layoutIconsIfNeededWithAnimationType:(int64_t)a3 options:(unint64_t)a4
{
  v7 = [(SBHIconEditingSettings *)self->_iconEditingSettings overrideAnimationType];
  if (v7 != -1)
  {
    a3 = v7;
  }

  v8 = [objc_opt_class() builtInAnimatorForAnimationType:a3];
  [(SBIconListView *)self layoutIconsIfNeededUsingAnimator:v8 options:a4];
}

- (void)layoutIconsIfNeededUsingAnimator:(id)a3 options:(unint64_t)a4
{
  v168 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(SBIconListView *)self _teardownLayoutRunloopObserverIfNeeded];
  if (!self->_needsLayout || self->_purged || self->_rotating)
  {
    goto LABEL_88;
  }

  v7 = SBLogWidgets();
  if (os_signpost_enabled(v7))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"<%@: %p>", v10, self];
    *buf = 138543362;
    v167 = v11;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_ICON_LIST_VIEW", "iconListView=%{public}@", buf, 0xCu);
  }

  if (![(NSMapTable *)self->_specialIconAnimations count])
  {
LABEL_14:
    v114 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListViewWillLayoutIcons_];
    [v114 iconListViewWillLayoutIcons:self];
    self->_inLayout = 1;
    v117 = v6;
    if ([(SBIconListView *)self boundsSizeTracksContentSize])
    {
      [(SBIconListView *)self iconSpacing];
      v19 = v18;
      v20 = v17;
      if (v18 != -123.0 || v17 != -123.0)
      {
        [(SBIconListView *)self bounds];
        v24 = v23;
        v26 = v25;
        v27 = v21;
        v28 = v22;
        v29 = 30000.0;
        if (v19 == -123.0)
        {
          v30 = v21;
        }

        else
        {
          v30 = 30000.0;
        }

        if (v20 == -123.0)
        {
          v29 = v22;
        }

        [(SBIconListView *)self sizeThatFits:v30, v29];
        if (v31 != v27 || v32 != v28)
        {
          [(SBIconListView *)self setBounds:v24, v26, v31, v32];
          v158 = 0u;
          v159 = 0u;
          v156 = 0u;
          v157 = 0u;
          v34 = self->_layoutObservers;
          v35 = [(NSHashTable *)v34 countByEnumeratingWithState:&v156 objects:v165 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v157;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v157 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v156 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  [v39 iconListViewDidChangeBoundsSize:self];
                }
              }

              v36 = [(NSHashTable *)v34 countByEnumeratingWithState:&v156 objects:v165 count:16];
            }

            while (v36);
          }
        }
      }
    }

    v113 = [(SBIconListView *)self displayedModel];
    v40 = [v113 icons];
    v111 = [MEMORY[0x1E695DF70] array];
    v109 = [(SBIconListView *)self iconLocation];
    v115 = [(SBIconListView *)self pausesIconsForScrolling];
    v41 = [(SBIconListView *)self isLayoutReversed];
    v42 = 2;
    if (!v41)
    {
      v42 = 0;
    }

    v97 = v42;
    v43 = [(SBIconListView *)self layoutMetrics];
    v44 = [v43 gridCellInfo];
    v107 = [(SBIconListView *)self gridCellIndexesToIncludeInLayout];
    v105 = [(SBIconListView *)self cellVisibility];
    v118 = [v43 columnsUsedForLayout];
    [v43 iconContentScale];
    v46 = v45;
    v95 = [v43 adjustedIconContentScaleToFit];
    v103 = [(SBIconListView *)self iconViewConfigurationOptions];
    v48 = (a4 & 2) == 0 && v6 != 0;
    v94 = v48;
    [(SBIconListView *)self layoutScale];
    v50 = v49;
    v101 = [(SBIconListView *)self layoutOrientation];
    v92 = [v44 gridSize];
    [v43 iconSpacing];
    [(SBIconListView *)self cursorHitTestingInsetsForIconSpacing:?];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v93 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListView_willLayoutIconView_];
    v99 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListView_animatorForLayingOutIconView_proposedAnimator_];
    v59 = objc_alloc(MEMORY[0x1E695DFA8]);
    v60 = [(NSMapTable *)self->_iconViews keyEnumerator];
    v61 = [v60 allObjects];
    v62 = [v59 initWithArray:v61];

    v6 = v117;
    v131[0] = MEMORY[0x1E69E9820];
    v131[1] = 3221225472;
    v131[2] = __59__SBIconListView_layoutIconsIfNeededUsingAnimator_options___block_invoke_2;
    v131[3] = &unk_1E808CE10;
    v142 = v118;
    v119 = v62;
    v132 = v119;
    v133 = self;
    v63 = v44;
    v134 = v63;
    v143 = v105;
    v108 = v107;
    v135 = v108;
    v152 = v92;
    v64 = v109;
    v136 = v64;
    v144 = v101;
    v145 = v52;
    v146 = v54;
    v147 = v56;
    v148 = v58;
    v149 = v103;
    v106 = v111;
    v137 = v106;
    v65 = v43;
    v138 = v65;
    v150 = v50;
    v151 = v46;
    v102 = v93;
    v139 = v102;
    v66 = v117;
    v140 = v66;
    v100 = v99;
    v141 = v100;
    v153 = v94;
    v154 = v115;
    v155 = v95;
    v112 = v40;
    [v40 enumerateObjectsWithOptions:v97 usingBlock:v131];
    v67 = v66;
    v68 = v67;
    v110 = v64;
    v104 = v65;
    v98 = v67;
    if (v117)
    {
      v69 = v67;
      v68 = v67;
      if ((a4 & 1) == 0)
      {
        v68 = v67;
        if ([v119 count])
        {
          v96 = v63;
          v70 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListView_animatorForRemovingIcons_proposedAnimator_];
          v68 = v69;
          if (v70)
          {
            v71 = [v119 allObjects];
            v68 = [v70 iconListView:self animatorForRemovingIcons:v71 proposedAnimator:v69];
          }

          v72 = objc_opt_respondsToSelector();

          if (v72)
          {
            v116 = v68;
            v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v130 = 0u;
            v74 = v119;
            v75 = [v74 countByEnumeratingWithState:&v127 objects:v164 count:16];
            if (v75)
            {
              v76 = v75;
              v77 = *v128;
              do
              {
                for (j = 0; j != v76; ++j)
                {
                  if (*v128 != v77)
                  {
                    objc_enumerationMutation(v74);
                  }

                  v79 = *(*(&v127 + 1) + 8 * j);
                  v80 = [(NSMapTable *)self->_iconViews objectForKey:v79];
                  if (v80)
                  {
                    [(NSMapTable *)self->_iconViews removeObjectForKey:v79];
                    v81 = [v80 superview];

                    if (v81 == self)
                    {
                      [v73 addObject:v80];
                    }
                  }
                }

                v76 = [v74 countByEnumeratingWithState:&v127 objects:v164 count:16];
              }

              while (v76);
            }

            if ([v73 count])
            {
              v124[0] = MEMORY[0x1E69E9820];
              v124[1] = 3221225472;
              v124[2] = __59__SBIconListView_layoutIconsIfNeededUsingAnimator_options___block_invoke_2_95;
              v124[3] = &unk_1E8088F18;
              v73 = v73;
              v125 = v73;
              v126 = self;
              [v116 iconListView:self wantsAnimatedRemovalForIconViews:v73 completionHandler:v124];
            }

            v6 = v117;
            goto LABEL_77;
          }

          v63 = v96;
        }
      }
    }

    v116 = v68;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v73 = v119;
    v82 = [v73 countByEnumeratingWithState:&v120 objects:v163 count:16];
    if (!v82)
    {
      v13 = v114;
LABEL_79:

      removedIcons = self->_removedIcons;
      self->_removedIcons = 0;

      if ([(SBIconListView *)self showsEmptyGridCells]|| [(NSMutableDictionary *)self->_emptyGridCells count])
      {
        [(SBIconListView *)self layOutEmptyGridCellViewsUsingAnimator:v98];
      }

      self->_inLayout = 0;
      self->_needsLayout = 0;
      [(SBIconListView *)self layoutFocusGuides];
      if ([(SBIconListView *)self isDisplayingWidgetIntroduction])
      {
        [(SBIconListView *)self layoutWidgetIntroductionViews];
      }

      [(SBIconListView *)self _updateEditingStateForIcons:v106 animated:v6 != 0];
      v90 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListViewDidLayoutIcons_];
      [v90 iconListViewDidLayoutIcons:self];
      v91 = SBLogWidgets();
      if (os_signpost_enabled(v91))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BEB18000, v91, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_ICON_LIST_VIEW", " isAnimation=YES ", buf, 2u);
      }

      goto LABEL_87;
    }

    v83 = v82;
    v96 = v63;
    v84 = *v121;
    do
    {
      for (k = 0; k != v83; ++k)
      {
        if (*v121 != v84)
        {
          objc_enumerationMutation(v73);
        }

        v86 = *(*(&v120 + 1) + 8 * k);
        v87 = [(NSMapTable *)self->_iconViews objectForKey:v86];
        if (v87)
        {
          [(NSMapTable *)self->_iconViews removeObjectForKey:v86];
          v88 = [v87 superview];

          if (v88 == self)
          {
            [(SBIconListView *)self removeIconView:v87];
          }
        }
      }

      v83 = [v73 countByEnumeratingWithState:&v120 objects:v163 count:16];
    }

    while (v83);
LABEL_77:
    v13 = v114;
    v63 = v96;
    goto LABEL_79;
  }

  if (!v6)
  {
    specialIconAnimations = self->_specialIconAnimations;
    self->_specialIconAnimations = 0;

    v16 = SBLogWidgets();
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_ICON_LIST_VIEW", "animator Nil isAnimation=YES ", buf, 2u);
    }

    goto LABEL_14;
  }

  performingSpecialIconAnimations = self->_performingSpecialIconAnimations;
  v13 = SBLogWidgets();
  v14 = os_signpost_enabled(v13);
  if (performingSpecialIconAnimations)
  {
    if (v14)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_ICON_LIST_VIEW", "EndedEarly=YES isAnimation=YES ", buf, 2u);
    }

LABEL_87:

    goto LABEL_88;
  }

  if (v14)
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_ICON_LIST_VIEW", "performSpecialIconAnimations isAnimation=YES ", buf, 2u);
  }

  v160[0] = MEMORY[0x1E69E9820];
  v160[1] = 3221225472;
  v160[2] = __59__SBIconListView_layoutIconsIfNeededUsingAnimator_options___block_invoke;
  v160[3] = &unk_1E808A090;
  v160[4] = self;
  v161 = v6;
  v162 = a4;
  [(SBIconListView *)self performSpecialIconAnimationsWithCompletionHandler:v160];

LABEL_88:
}

void __59__SBIconListView_layoutIconsIfNeededUsingAnimator_options___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 112))
  {
    [*(a1 + 32) removeObject:v5];
    v6 = [v5 gridSizeClass];
    v7 = [*(a1 + 40) iconGridSizeForClass:v6];
    v8 = [*(a1 + 48) gridCellIndexForIconIndex:a3];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_37:

      goto LABEL_38;
    }

    v9 = v8;
    v10 = *(a1 + 120);
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_7;
      }

      if (v7 == 65537)
      {
        if (([*(a1 + 56) containsIndex:v8] & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else if ((SBHIconGridRangeIntersectsIndexSet(v8, v7, *(a1 + 56), *(a1 + 192)) & 1) == 0)
      {
LABEL_7:
        v11 = [*(*(a1 + 40) + 424) objectForKey:v5];
        if (v11)
        {
          v12 = SBLogIcon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __59__SBIconListView_layoutIconsIfNeededUsingAnimator_options___block_invoke_2_cold_1(v5, v12);
          }

          [*(*(a1 + 40) + 424) removeObjectForKey:v5];
          [*(a1 + 40) removeIconView:v11];
        }

        goto LABEL_36;
      }
    }

    v11 = [*(a1 + 40) iconViewForIcon:v5];
    if (!v11 || ([*(a1 + 40) isLayoutPausedForIconView:v11] & 1) != 0)
    {
LABEL_36:

      goto LABEL_37;
    }

    [v11 setLocation:*(a1 + 64)];
    [v11 setOrientation:*(a1 + 128)];
    [v11 setCursorHitTestPadding:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];
    if ([v11 configurationOptions] != *(a1 + 168))
    {
      [v11 setConfigurationOptions:?];
    }

    [v11 setContentVisibility:{objc_msgSend(*(a1 + 40), "contentVisibilityForIcon:", v5)}];
    [*(*(a1 + 40) + 408) removeObject:v5];
    v13 = [v11 superview];
    v14 = *(a1 + 40);
    if (v13 == v14)
    {
    }

    else
    {
      v15 = [v14 shouldReparentView:v11];

      if (v15)
      {
        [*(a1 + 40) _insertCaptureOnlyBackgroundViewForInsertingIconViewIfNecessary:v11];
        [*(a1 + 40) addSubview:v11];
        [*(a1 + 72) addObject:v5];
        v16 = 1;
        goto LABEL_21;
      }
    }

    v16 = 0;
LABEL_21:
    v17 = [*(a1 + 40) iconCoordinateForGridCellIndex:v9 metrics:*(a1 + 80)];
    v19 = v18;
    [*(a1 + 40) centerForIconCoordinate:v17 metrics:{v18, *(a1 + 80)}];
    v21 = v20;
    v23 = v22;
    [v11 center];
    v39 = SBFPointEqualToPointAtScale() ^ 1;
    if (v16)
    {
      v24 = 2;
    }

    else
    {
      v24 = 6;
    }

    v25 = *(a1 + 184);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__SBIconListView_layoutIconsIfNeededUsingAnimator_options___block_invoke_89;
    aBlock[3] = &unk_1E8088F88;
    v26 = *(a1 + 88);
    v27 = *(a1 + 40);
    v54 = v26;
    v55 = v27;
    v11 = v11;
    v56 = v11;
    v28 = _Block_copy(aBlock);
    v29 = *(a1 + 96);
    v30 = *(a1 + 104);
    if (v30 && *(a1 + 96))
    {
      [v30 iconListView:*(a1 + 40) animatorForLayingOutIconView:v11 proposedAnimator:?];
      v38 = v16;
      v31 = v28;
      v32 = v17;
      v33 = v19;
      v35 = v34 = v24;

      v29 = v35;
      v24 = v34;
      v19 = v33;
      v17 = v32;
      v28 = v31;
      v16 = v38;
    }

    if (v16 && v29)
    {
      if ((*(a1 + 196) & 1) == 0)
      {
LABEL_30:
        v36 = *(a1 + 40);
        v40 = v21;
        v41 = v23;
        v42 = v25;
        v43 = 0u;
        v44 = 0u;
        v45 = 0;
        v46 = v17;
        v47 = v19;
        v48 = v16;
        v49 = v39;
        v50 = 0;
        v51 = 0;
        v52 = v24;
        [v36 performDefaultAnimatedLayoutUpdateForIconView:v11 withParameters:&v40];
        v28[2](v28);
LABEL_33:
        [v11 setPaused:*(a1 + 197) forReason:8];
        if (*(a1 + 198) == 1)
        {
          [v11 setIconContentScalingEnabled:1];
        }

        goto LABEL_36;
      }
    }

    else if (!v29)
    {
      goto LABEL_30;
    }

    v37 = *(a1 + 40);
    v40 = v21;
    v41 = v23;
    v42 = v25;
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    v46 = v17;
    v47 = v19;
    v48 = v16;
    v49 = v39;
    v50 = 0;
    v51 = 0;
    v52 = v24;
    [v29 iconListView:v37 wantsAnimatedLayoutForIconView:v11 withParameters:&v40 alongsideAnimationBlock:v28];
    goto LABEL_33;
  }

LABEL_38:
}

void __59__SBIconListView_layoutIconsIfNeededUsingAnimator_options___block_invoke_2_95(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeIconView:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)layOutEmptyGridCellViewsUsingAnimator:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v4 = [(SBIconListView *)self showsEmptyGridCells];
  if (v4 || [(NSMutableDictionary *)self->_emptyGridCells count])
  {
    v5 = [(SBIconListView *)self layoutMetrics];
    v6 = [v5 gridCellInfo];
    v7 = v6;
    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [(NSMutableDictionary *)self->_emptyGridCells allKeys];
    v11 = [v10 mutableCopy];

    v12 = [v7 gridSize];
    [(SBIconListView *)self iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassDefault"];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke;
    v56[3] = &unk_1E808CE38;
    v21 = v11;
    v64 = v12;
    v57 = v21;
    v58 = self;
    v22 = v5;
    v59 = v22;
    v65 = v39 != 0;
    v60 = v14;
    v61 = v16;
    v62 = v18;
    v63 = v20;
    v38 = v9;
    [v9 enumerateEmptyGridCellIndexesUsingBlock:v56];
    emptyGridCells = self->_emptyGridCells;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke_5;
    v52[3] = &unk_1E808CE60;
    v54 = v12;
    v52[4] = self;
    v24 = v22;
    v53 = v24;
    v55 = v39 != 0;
    [(NSMutableDictionary *)emptyGridCells enumerateKeysAndObjectsUsingBlock:v52];
    if ([v21 count])
    {
      v35 = v24;
      v36 = v21;
      v37 = v7;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = v21;
      v25 = [obj countByEnumeratingWithState:&v48 objects:v66 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v49;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v49 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v48 + 1) + 8 * i);
            v30 = [(NSMutableDictionary *)self->_emptyGridCells objectForKey:v29];
            if (([v30 isRemoved] & 1) == 0)
            {
              v31 = [v30 cellView];
              [v30 setRemoved:1];
              if (v39)
              {
                v32 = MEMORY[0x1E69DD250];
                v46[0] = MEMORY[0x1E69E9820];
                v46[1] = 3221225472;
                v46[2] = __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke_7;
                v46[3] = &unk_1E8088C90;
                v33 = v31;
                v47 = v33;
                v41[0] = MEMORY[0x1E69E9820];
                v41[1] = 3221225472;
                v41[2] = __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke_8;
                v41[3] = &unk_1E808CE88;
                v42 = v30;
                v43 = self;
                v44 = v29;
                v45 = v33;
                [v32 animateWithDuration:v46 animations:v41 completion:0.2];
              }

              else
              {
                [v31 removeFromSuperview];
                [(NSMutableDictionary *)self->_emptyGridCells removeObjectForKey:v29];
              }
            }
          }

          v26 = [obj countByEnumeratingWithState:&v48 objects:v66 count:16];
        }

        while (v26);
      }

      v21 = v36;
      v7 = v37;
      v24 = v35;
    }

    if (![(NSMutableDictionary *)self->_emptyGridCells count])
    {
      v34 = self->_emptyGridCells;
      self->_emptyGridCells = 0;
    }
  }
}

void __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v4 removeObject:v5];

  v6 = SBIconCoordinateMakeWithGridCellIndex(a2, *(a1 + 88));
  [*(a1 + 40) rectForDefaultSizedCellAtCoordinate:v6 metrics:{v7, *(a1 + 48)}];
  UIRectGetCenter();
  v9 = v8;
  v11 = v10;
  v12 = *(*(a1 + 40) + 496);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v14 = [v12 objectForKey:v13];

  if (!v14)
  {
    v18 = [*(a1 + 40) makeEmptyGridCellView];
    v15 = v18;
    if (v18)
    {
      v19 = MEMORY[0x1E69DD250];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke_3;
      v28[3] = &unk_1E808B4E0;
      v15 = v18;
      v29 = v15;
      v30 = *(a1 + 56);
      v31 = *(a1 + 72);
      v32 = v9;
      v33 = v11;
      [v19 performWithoutAnimation:v28];
      [*(a1 + 40) insertSubview:v15 atIndex:0];
      v14 = [[SBIconListViewEmptyCell alloc] initWithCellView:v15];
      v20 = *(*(a1 + 40) + 496);
      if (!v20)
      {
        v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v22 = *(a1 + 40);
        v23 = *(v22 + 496);
        *(v22 + 496) = v21;

        v20 = *(*(a1 + 40) + 496);
      }

      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      [v20 setObject:v14 forKey:v24];

      if (*(a1 + 92) == 1)
      {
        [v15 setAlpha:0.0];
        v25 = MEMORY[0x1E69DD250];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke_4;
        v26[3] = &unk_1E8088C90;
        v27 = v15;
        [v25 animateWithDuration:v26 animations:0.2];
      }

      else
      {
        [v15 setAlpha:1.0];
      }

      v17 = v29;
      goto LABEL_14;
    }

    v14 = 0;
LABEL_15:

    goto LABEL_16;
  }

  if ([(SBIconListViewEmptyCell *)v14 isRemoved])
  {
    v15 = [(SBIconListViewEmptyCell *)v14 cellView];
    [(SBIconListViewEmptyCell *)v14 setRemoved:0];
    if (*(a1 + 92) == 1)
    {
      v16 = MEMORY[0x1E69DD250];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke_2;
      v34[3] = &unk_1E8088C90;
      v15 = v15;
      v35 = v15;
      [v16 animateWithDuration:v34 animations:0.2];
      v17 = v35;
LABEL_14:

      goto LABEL_15;
    }

    [v15 setAlpha:1.0];
    goto LABEL_15;
  }

LABEL_16:
}

uint64_t __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setBounds:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];
  [*(a1 + 32) _setContinuousCornerRadius:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);

  return [v2 setCenter:{v3, v4}];
}

void __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 cellView];
  v7 = [v5 unsignedIntegerValue];

  v8 = SBIconCoordinateMakeWithGridCellIndex(v7, *(a1 + 48));
  [*(a1 + 32) rectForDefaultSizedCellAtCoordinate:v8 metrics:{v9, *(a1 + 40)}];
  UIRectGetCenter();
  v12 = v10;
  v13 = v11;
  if (*(a1 + 52) == 1)
  {
    v14 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke_6;
    v15[3] = &unk_1E808BCE0;
    v16 = v6;
    v17 = v12;
    v18 = v13;
    [v14 animateWithDuration:v15 animations:0.2];
  }

  else
  {
    [v6 setCenter:{v10, v11}];
  }
}

void __56__SBIconListView_layOutEmptyGridCellViewsUsingAnimator___block_invoke_8(uint64_t a1, int a2)
{
  if (a2)
  {
    if ([*(a1 + 32) isRemoved])
    {
      v3 = [*(*(a1 + 40) + 496) objectForKey:*(a1 + 48)];
      v4 = *(a1 + 32);

      if (v3 == v4)
      {
        [*(a1 + 56) removeFromSuperview];
        v5 = *(a1 + 48);
        v6 = *(*(a1 + 40) + 496);

        [v6 removeObjectForKey:v5];
      }
    }
  }
}

- (id)makeEmptyGridCellView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
  [v2 setBackgroundColor:v3];

  return v2;
}

- (void)performDefaultAnimatedLayoutUpdateForIconView:(id)a3 withParameters:(SBIconListLayoutAnimationParameters *)a4
{
  v5 = a3;
  [v5 setCenter:{a4->var0.x, a4->var0.y}];
  [v5 setIconContentScale:a4->var1];
  if (a4->var3)
  {
    [v5 setIconImageInfo:{a4->var2.size.width, a4->var2.size.height, a4->var2.scale, a4->var2.continuousCornerRadius}];
  }

  else
  {
    [v5 clearIconImageInfo];
  }

  [v5 layoutIfNeeded];
}

- (void)performDefaultAnimatedRemovalForIconViews:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__SBIconListView_performDefaultAnimatedRemovalForIconViews_completionHandler___block_invoke;
  v12[3] = &unk_1E8088C90;
  v13 = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__SBIconListView_performDefaultAnimatedRemovalForIconViews_completionHandler___block_invoke_2;
  v10[3] = &unk_1E808A0B8;
  v11 = v6;
  v8 = v6;
  v9 = v5;
  [v7 animateWithDuration:0 delay:v12 options:v10 animations:0.3 completion:0.0];
}

void __78__SBIconListView_performDefaultAnimatedRemovalForIconViews_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) setAlpha:{0.0, v6}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (int64_t)iconRemovalAnimationDestinationEdge
{
  v3 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconRemovalAnimationDestinationEdgeForIconListView_];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 iconRemovalAnimationDestinationEdgeForIconListView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)iconInsertionAnimationOriginatingEdge
{
  v3 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconInsertionAnimationOriginatingEdgeForIconListView_];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 iconInsertionAnimationOriginatingEdgeForIconListView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)iconAtCoordinate:(SBIconCoordinate)a3
{
  row = a3.row;
  column = a3.column;
  v6 = [(SBIconListView *)self layoutMetrics];
  v7 = [(SBIconListView *)self iconAtCoordinate:column metrics:row, v6];

  return v7;
}

- (id)iconAtCoordinate:(SBIconCoordinate)a3 metrics:(id)a4
{
  row = a3.row;
  column = a3.column;
  v7 = a4;
  v8 = [(SBIconListView *)self gridCellIndexForCoordinate:column metrics:row, v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(SBIconListView *)self iconAtGridCellIndex:v8 metrics:v7];
  }

  return v9;
}

- (id)iconAtGridCellIndex:(unint64_t)a3 metrics:(id)a4
{
  v6 = a4;
  v7 = [(SBIconListView *)self displayedModel];
  v8 = [(SBIconListView *)self iconIndexForGridCellIndex:a3 metrics:v6];

  if (v8 >= [v7 numberOfIcons])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 iconAtIndex:v8];
  }

  return v9;
}

- (unint64_t)iconIndexForGridCellIndex:(unint64_t)a3 metrics:(id)a4
{
  v5 = [a4 gridCellInfo];
  v6 = [v5 iconIndexForGridCellIndex:a3];

  return v6;
}

- (unint64_t)iconIndexForCoordinate:(SBIconCoordinate)a3 metrics:(id)a4
{
  row = a3.row;
  column = a3.column;
  v7 = a4;
  v8 = [(SBIconListView *)self gridCellIndexForCoordinate:column metrics:row, v7];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(SBIconListView *)self iconIndexForGridCellIndex:v8 metrics:v7];
  }

  return v9;
}

- (unint64_t)gridCellIndexForCoordinate:(SBIconCoordinate)a3 metrics:(id)a4
{
  row = a3.row;
  column = a3.column;
  v6 = [a4 gridCellInfo];
  v7 = [v6 gridCellIndexForCoordinate:{column, row}];

  return v7;
}

- (id)iconAtPoint:(CGPoint)a3 includingNearest:(BOOL)a4 index:(unint64_t *)a5
{
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v10 = [(SBIconListView *)self layoutMetrics];
  [(SBIconListView *)self bounds];
  v19.x = x;
  v19.y = y;
  if (CGRectContainsPoint(v20, v19) || [v10 columnOffset])
  {
    v11 = [(SBIconListView *)self coordinateAtPoint:v6 includingNearest:v10 metrics:x, y];
    v13 = 0;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL && v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [(SBIconListView *)self indexForCoordinate:v11 forOrientation:v12 metrics:[(SBIconListView *)self layoutOrientation], v10];
      v15 = v14;
      if (a5)
      {
        *a5 = v14;
      }

      v16 = [(SBIconListView *)self displayedModel];
      if (v15 >= [v16 numberOfIcons])
      {
        v13 = 0;
      }

      else
      {
        v13 = [v16 iconAtIndex:v15];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)dragHitRegionForPoint:(CGPoint)a3 icon:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (!v7)
  {
    v7 = [(SBIconListView *)self iconAtPoint:0 index:x, y];
    if (!v7)
    {
      return 0;
    }
  }

  v8 = v7;
  v9 = [(SBIconListView *)self iconViewForIcon:v7];
  memset(v12, 0, sizeof(v12));
  [(SBIconListView *)self _getDragRegionRects:v12 forIconView:v9];
  v13.x = x;
  v13.y = y;
  v10 = CGRectContainsPoint(v12[0], v13);
  v14.x = x;
  v14.y = y;
  if (CGRectContainsPoint(v12[1], v14))
  {
    v10 |= 2uLL;
  }

  v15.x = x;
  v15.y = y;
  if (CGRectContainsPoint(v12[2], v15))
  {
    v10 |= 0x10uLL;
  }

  v16.x = x;
  v16.y = y;
  if (CGRectContainsPoint(v12[3], v16))
  {
    v10 |= 0x20uLL;
  }

  v17.x = x;
  v17.y = y;
  if (CGRectContainsPoint(v12[4], v17))
  {
    v10 |= 4uLL;
  }

  v18.x = x;
  v18.y = y;
  if (CGRectContainsPoint(v12[5], v18))
  {
    v10 |= 8uLL;
  }

  return v10;
}

- (void)_getDragRegionRects:(SBIconListViewCellDragRegionRects *)a3 forIconView:(id)a4
{
  v6 = a4;
  v20 = [(SBIconListView *)self layoutMetrics];
  v7 = [v6 icon];
  [v6 iconImageFrame];
  [(SBIconListView *)self convertRect:v6 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(SBIconListView *)self coordinateForIcon:v7];
  v18 = v17;
  if ([v7 isFolderIcon])
  {
    v19 = 0.833333333;
  }

  else if ([v7 isWidgetIcon])
  {
    v19 = 0.7;
  }

  else
  {
    v19 = 0.666666667;
  }

  [(SBIconListView *)self _getDragRegionRects:a3 forIconCoordinate:v16 iconImageFrame:v18 overlapWindowFraction:v20 metrics:0 options:v9, v11, v13, v15, v19];
}

- (void)_getDragRegionRects:(SBIconListViewCellDragRegionRects *)a3 forIconCoordinate:(SBIconCoordinate)a4 iconImageFrame:(CGRect)a5 overlapWindowFraction:(double)a6 metrics:(id)a7 options:(unint64_t)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  [(SBIconListView *)self fullRectForCellAtIconCoordinate:a4.column metrics:a4.row options:a7, a8];
  v30 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = 1.0 - a6;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v34 = v21 * CGRectGetWidth(v45) * 0.5;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v31 = v21 * CGRectGetHeight(v46) * 0.5;
  a3->var0.origin.x = x;
  a3->var0.origin.y = y;
  v47.size.width = width;
  a3->var0.size.width = width;
  a3->var0.size.height = height;
  v47.size.height = height;
  v47.origin.x = x;
  v47.origin.y = y;
  v22 = y;
  v23 = v47.size.width;
  v29 = v47.size.width;
  MinX = CGRectGetMinX(v47);
  v48.origin.x = v30;
  v48.origin.y = v16;
  v48.size.width = v18;
  v48.size.height = v20;
  amount = v34 + MinX - CGRectGetMinX(v48);
  memset(&remainder, 0, sizeof(remainder));
  v49.origin.x = v30;
  v49.origin.y = v16;
  v49.size.width = v18;
  v49.size.height = v20;
  CGRectDivide(v49, &a3->var2, &remainder, amount, CGRectMinXEdge);
  v50.origin.x = v30;
  v50.origin.y = v16;
  v50.size.width = v18;
  v50.size.height = v20;
  MaxX = CGRectGetMaxX(v50);
  v51.origin.x = x;
  v51.origin.y = v22;
  v51.size.width = v23;
  v51.size.height = height;
  v35 = v34 + MaxX - CGRectGetMaxX(v51);
  memset(&v43, 0, sizeof(v43));
  v52.origin.x = v30;
  v52.origin.y = v16;
  v52.size.width = v18;
  v52.size.height = v20;
  CGRectDivide(v52, &a3->var3, &v43, v35, CGRectMaxXEdge);
  v53.origin.x = x;
  v53.origin.y = v22;
  v53.size.width = v29;
  v53.size.height = height;
  MinY = CGRectGetMinY(v53);
  v54.origin.x = v30;
  v54.origin.y = v16;
  v54.size.width = v18;
  v54.size.height = v20;
  v32 = v31 + MinY - CGRectGetMinY(v54);
  memset(&v42, 0, sizeof(v42));
  v55.origin.x = v30;
  v55.origin.y = v16;
  v55.size.width = v18;
  v55.size.height = v20;
  CGRectDivide(v55, &a3->var4, &v42, v32, CGRectMinYEdge);
  v56.origin.x = v30;
  v56.origin.y = v16;
  v56.size.width = v18;
  v56.size.height = v20;
  MaxY = CGRectGetMaxY(v56);
  v57.origin.y = v22;
  v57.origin.x = x;
  v57.size.width = v29;
  v57.size.height = height;
  v28 = v31 + MaxY - CGRectGetMaxY(v57);
  memset(&v41, 0, sizeof(v41));
  v58.origin.x = v30;
  v58.origin.y = v16;
  v58.size.width = v18;
  v58.size.height = v20;
  CGRectDivide(v58, &a3->var5, &v41, v28, CGRectMaxYEdge);
  v40.origin.x = v30;
  v40.origin.y = v16;
  v40.size.width = v18;
  v40.size.height = v20;
  memset(&slice, 0, sizeof(slice));
  v59.origin.x = v30;
  v59.origin.y = v16;
  v59.size.width = v18;
  v59.size.height = v20;
  CGRectDivide(v59, &slice, &v40, amount, CGRectMinXEdge);
  memset(&v38, 0, sizeof(v38));
  CGRectDivide(v40, &v38, &v40, v35, CGRectMaxXEdge);
  memset(&v37, 0, sizeof(v37));
  CGRectDivide(v40, &v37, &v40, v32, CGRectMinYEdge);
  memset(&v36, 0, sizeof(v36));
  CGRectDivide(v40, &v36, &a3->var1, v28, CGRectMaxYEdge);
}

- (CGRect)rectForDragHitRegion:(unint64_t)a3 forDefaultSizedCellAtCoordinate:(SBIconCoordinate)a4
{
  [(SBIconListView *)self rectForDragHitRegion:a3 forCellAtCoordinate:a4.column options:a4.row, 1];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)rectForDragHitRegion:(unint64_t)a3 forIconAtCoordinate:(SBIconCoordinate)a4
{
  [(SBIconListView *)self rectForDragHitRegion:a3 forCellAtCoordinate:a4.column options:a4.row, 0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)rectForDragHitRegion:(unint64_t)a3 forCellAtCoordinate:(SBIconCoordinate)a4 options:(unint64_t)a5
{
  row = a4.row;
  column = a4.column;
  v10 = [(SBIconListView *)self layoutMetrics];
  [(SBIconListView *)self rectForCellAtIconCoordinate:column metrics:row options:v10, a5];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  [(SBIconListView *)self _getDragRegionRects:&v28 forIconCoordinate:column iconImageFrame:row overlapWindowFraction:v10 metrics:a5 options:?];
  v11 = vcnt_s8(a3);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] < 3uLL)
  {
    if ((~a3 & 0x14) != 0)
    {
      if ((~a3 & 0x24) != 0)
      {
        if ((~a3 & 3) != 0)
        {
          if ((a3 & 4) != 0)
          {
            y = *(&v36 + 1);
            x = *&v36;
            height = *(&v37 + 1);
            width = *&v37;
            goto LABEL_10;
          }

          if ((a3 & 0x20) != 0)
          {
            y = *(&v34 + 1);
            x = *&v34;
            height = *(&v35 + 1);
            width = *&v35;
            goto LABEL_10;
          }

          if ((a3 & 8) != 0)
          {
            y = *(&v38 + 1);
            x = *&v38;
            height = *(&v39 + 1);
            width = *&v39;
            goto LABEL_10;
          }

          if ((a3 & 0x10) != 0)
          {
            y = *(&v32 + 1);
            x = *&v32;
            height = *(&v33 + 1);
            width = *&v33;
            goto LABEL_10;
          }

          if ((a3 & 2) != 0)
          {
            y = *(&v30 + 1);
            x = *&v30;
            height = *(&v31 + 1);
            width = *&v31;
            goto LABEL_10;
          }

          if (a3)
          {
            y = *(&v28 + 1);
            x = *&v28;
            height = *(&v29 + 1);
            width = *&v29;
            goto LABEL_10;
          }

          goto LABEL_2;
        }

        v17 = *(&v28 + 1);
        v16 = v28;
        v19 = *(&v29 + 1);
        v18 = v29;
        v21 = *(&v30 + 1);
        v20 = v30;
        v23 = *(&v31 + 1);
        v22 = v31;
      }

      else
      {
        v17 = *(&v36 + 1);
        v16 = v36;
        v19 = *(&v37 + 1);
        v18 = v37;
        v21 = *(&v34 + 1);
        v20 = v34;
        v23 = *(&v35 + 1);
        v22 = v35;
      }
    }

    else
    {
      v17 = *(&v36 + 1);
      v16 = v36;
      v19 = *(&v37 + 1);
      v18 = v37;
      v21 = *(&v32 + 1);
      v20 = v32;
      v23 = *(&v33 + 1);
      v22 = v33;
    }

    v40 = CGRectIntersection(*&v16, *&v20);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    goto LABEL_10;
  }

LABEL_2:
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
LABEL_10:

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)setVisibleColumnRange:(_NSRange)a3
{
  location = a3.location;
  v5 = [(SBIconListView *)self gridSizeForCurrentOrientation];
  columns = v5.columns;
  v7 = SBHIconGridRangeSubrangeForColumnRange(0, *&v5, location);
  v9 = SBHIconGridRangeCellIndexes(v7, v8, columns);
  [(SBIconListView *)self setCellVisibility:1 visibleGridCellIndexes:v9 prefetchedGridCellIndexes:0];
}

- (void)setVisibleRowRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(SBIconListView *)self gridSizeForCurrentOrientation];
  v7 = SBHIconGridRangeSubrangeForRowRange(0, v6, location, length, v6);
  v9 = SBHIconGridRangeCellIndexes(v7, v8, v6);
  [(SBIconListView *)self setCellVisibility:1 visibleGridCellIndexes:v9 prefetchedGridCellIndexes:0];
}

- (void)setVisibleColumnRange:(_NSRange)a3 visibleRowRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3.location;
  v8 = [(SBIconListView *)self gridSizeForCurrentOrientation];
  v9 = SBHIconGridRangeSubrangeForColumnRange(0, v8, v6);
  LODWORD(v6) = v10;
  v11 = SBHIconGridRangeSubrangeForRowRange(0, v8, location, length, v8);
  v13 = SBHIconGridRangeIntersection(v9, v6, v11, v12, v8);
  v15 = SBHIconGridRangeCellIndexes(v13, v14, v8);
  [(SBIconListView *)self setCellVisibility:1 visibleGridCellIndexes:v15 prefetchedGridCellIndexes:0];
}

- (void)setCellVisibility:(int64_t)a3 visibleGridCellIndexes:(id)a4 prefetchedGridCellIndexes:(id)a5
{
  v17 = a4;
  v8 = a5;
  if (a3 == 1)
  {
    if ([v17 count] || objc_msgSend(v8, "count"))
    {
      a3 = 1;
    }

    else
    {

      v8 = 0;
      v17 = 0;
      a3 = 2;
    }
  }

  if ([(NSHashTable *)self->_iconVisibilityAssertions count])
  {

    v8 = 0;
    v17 = 0;
    a3 = 0;
  }

  cellVisibility = self->_cellVisibility;
  v10 = self->_visibleGridCellIndexes;
  v11 = self->_prefetchedGridCellIndexes;
  if (a3 != self->_cellVisibility || !BSEqualObjects() || (BSEqualObjects() & 1) == 0)
  {
    self->_cellVisibility = a3;
    v12 = [v17 copy];
    visibleGridCellIndexes = self->_visibleGridCellIndexes;
    self->_visibleGridCellIndexes = v12;

    v14 = [v8 copy];
    prefetchedGridCellIndexes = self->_prefetchedGridCellIndexes;
    self->_prefetchedGridCellIndexes = v14;

    v16 = [(SBIconListView *)self layoutMetrics];
    [(SBIconListView *)self _updateVisibleIconViewsWithOldCellVisibility:cellVisibility oldVisibleGridCellIndexes:v10 oldPrefetchedGridCellIndexes:v11 metrics:v16];
  }
}

- (SBHIconGridRange)visibleGridRange
{
  v3 = [(SBIconListView *)self cellVisibility];
  if (v3 == 2)
  {
    v5 = 0;
    v6 = 0;
  }

  else if (v3 == 1)
  {
    v7 = [(SBIconListView *)self partialVisibleGridCellIndexes];
    v5 = SBHIconGridRangeMakeWithCellIndexes(v7, [(SBIconListView *)self gridSizeForCurrentOrientation]);
    v6 = v8;
  }

  else if (v3)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v4 = [(SBIconListView *)self gridSizeForCurrentOrientation];
    v5 = 0;
    v6 = v4;
  }

  v9 = v5;
  v10 = v6;
  result.size = v10;
  result.cellIndex = v9;
  return result;
}

- (void)setVisibleGridRange:(SBHIconGridRange)a3
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v8 = [(SBIconListView *)self layoutMetrics];
  v6 = [v8 gridCellInfo];
  v7 = SBHIconGridRangeCellIndexes(cellIndex, size, [v6 gridSize]);
  [(SBIconListView *)self setCellVisibility:1 visibleGridCellIndexes:v7 prefetchedGridCellIndexes:0];
}

- (NSIndexSet)visibleGridCellIndexes
{
  v3 = [(SBIconListView *)self cellVisibility];
  if (v3 == 2)
  {
    v5 = [MEMORY[0x1E696AC90] indexSet];
  }

  else if (v3 == 1)
  {
    v5 = self->_visibleGridCellIndexes;
  }

  else if (v3)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(SBIconListView *)self gridSizeForCurrentOrientation];
    v5 = SBHIconGridRangeCellIndexes(0, *&v4, v4.columns);
  }

  return v5;
}

- (id)partialVisibleGridCellIndexes
{
  visibleGridCellIndexes = self->_visibleGridCellIndexes;
  if (visibleGridCellIndexes)
  {
    v3 = visibleGridCellIndexes;
  }

  else
  {
    v3 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v3;
}

- (id)visibleGridCellLayoutDescription
{
  v3 = [(SBIconListView *)self layoutMetrics];
  v4 = [v3 gridCellInfo];
  v5 = [v4 copy];

  v6 = [v3 listModel];
  v7 = [(SBIconListView *)self visibleGridCellIndexes];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __50__SBIconListView_visibleGridCellLayoutDescription__block_invoke;
  v16 = &unk_1E808CEB0;
  v17 = v5;
  v18 = v7;
  v19 = self;
  v20 = v3;
  v8 = v3;
  v9 = v7;
  v10 = v5;
  [v6 enumerateIconsUsingBlock:&v13];
  v11 = [v10 layoutDescription];

  return v11;
}

uint64_t __50__SBIconListView_visibleGridCellLayoutDescription__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) gridCellIndexForIconIndex:?];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*(a1 + 40) containsIndex:result];
    if ((result & 1) == 0)
    {
      v7 = [*(a1 + 48) iconGridRangeForIndex:a3 metrics:*(a1 + 56)];
      v8 = *(a1 + 32);

      return [v8 setIconIndex:0x7FFFFFFFFFFFFFFFLL inGridRange:{v7, v6}];
    }
  }

  return result;
}

- (NSIndexSet)prefetchedGridCellIndexes
{
  prefetchedGridCellIndexes = self->_prefetchedGridCellIndexes;
  if (prefetchedGridCellIndexes)
  {
    v3 = prefetchedGridCellIndexes;
  }

  else
  {
    v3 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v3;
}

- (void)setPrefetchedGridCellIndexes:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self partialVisibleGridCellIndexes];
  [(SBIconListView *)self setCellVisibility:1 visibleGridCellIndexes:v5 prefetchedGridCellIndexes:v4];
}

- (id)gridCellIndexesToIncludeInLayout
{
  v3 = [(SBIconListView *)self partialVisibleGridCellIndexes];
  v4 = [(SBIconListView *)self prefetchedGridCellIndexes];
  if ([v4 count])
  {
    v5 = [v3 sbh_indexSetByAddingIndexes:v4];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (void)_updateVisibleIconViewsWithOldCellVisibility:(int64_t)a3 oldVisibleGridCellIndexes:(id)a4 oldPrefetchedGridCellIndexes:(id)a5 metrics:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(SBIconListView *)self visibleGridCellIndexes];
  v14 = [(SBIconListView *)self prefetchedGridCellIndexes];
  v15 = [(SBIconListView *)self cellVisibility];
  v16 = [v10 mutableCopy];
  [v16 addIndexes:v11];
  v39 = [v13 mutableCopy];
  [v39 addIndexes:v14];
  v17 = [v12 gridCellInfo];
  v38 = [v12 listModel];
  v40 = v17;
  if (!v17)
  {
    goto LABEL_27;
  }

  if (!v15)
  {
    goto LABEL_26;
  }

  if (v15 != 1)
  {
    if (v15 == 2)
    {
      [(SBIconListView *)self removeAllIconViews];
    }

    v18 = 0;
    v32 = 0;
    v19 = v39;
    goto LABEL_7;
  }

  v19 = v39;
  switch(a3)
  {
    case 0:
LABEL_26:
      [(SBIconListView *)self layoutIconsNow];
      goto LABEL_27;
    case 1:
      v32 = [v39 mutableCopy];
      [v32 removeIndexes:v16];
      v18 = [v16 mutableCopy];
      [v18 removeIndexes:v39];
      break;
    case 2:
      v32 = v39;
      v18 = 0;
      break;
    default:
      v18 = 0;
      v32 = 0;
      break;
  }

LABEL_7:
  v34 = v14;
  v35 = v13;
  v20 = v18;
  if ([v18 count])
  {
    v21 = [v38 iconsAtGridCellIndexes:v18 gridCellInfo:v40];
    [(SBIconListView *)self _removeIconViewsForIcons:v21];
  }

  v33 = v16;
  v36 = v11;
  v37 = v10;
  if ([v19 count])
  {
    v22 = [v38 iconsAtGridCellIndexes:v19 gridCellInfo:v40];
    [(SBIconListView *)self _addIconViewsForIcons:v22 metrics:v12];
  }

  v23 = [(SBIconListView *)self contentVisibility];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v24 = [v38 icons];
  v25 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v42;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v41 + 1) + 8 * i);
        v30 = [(SBIconListView *)self displayedIconViewForIcon:v29];
        if (v23 == 2)
        {
          v31 = 2;
        }

        else
        {
          v31 = [(SBIconListView *)self contentVisibilityForIcon:v29 metrics:v12];
        }

        [v30 setContentVisibility:v31];
      }

      v26 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v26);
  }

  v11 = v36;
  v10 = v37;
  v14 = v34;
  v13 = v35;
  v16 = v33;
LABEL_27:
}

- (id)requireAllIconsShownForReason:(id)a3
{
  v4 = a3;
  v5 = [[SBIconListViewIconVisibilityAssertion alloc] initWithListView:self reason:v4];

  iconVisibilityAssertions = self->_iconVisibilityAssertions;
  if (!iconVisibilityAssertions)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v8 = self->_iconVisibilityAssertions;
    self->_iconVisibilityAssertions = v7;

    iconVisibilityAssertions = self->_iconVisibilityAssertions;
  }

  [(NSHashTable *)iconVisibilityAssertions addObject:v5];
  [(SBIconListView *)self showAllIcons];

  return v5;
}

- (void)removeShowAllIconsAssertion:(id)a3
{
  [(NSHashTable *)self->_iconVisibilityAssertions removeObject:a3];
  if (![(NSHashTable *)self->_iconVisibilityAssertions count])
  {
    iconVisibilityAssertions = self->_iconVisibilityAssertions;
    self->_iconVisibilityAssertions = 0;
  }
}

- (id)iconVisibilityInfoForRect:(CGRect)a3 normalized:(BOOL)a4
{
  v4 = a4;
  v40 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(SBIconListViewIconVisibilityInfo);
  [(SBIconListViewIconVisibilityInfo *)v6 setNormalized:v4];
  v7 = [(SBIconListView *)self icons];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        [(SBIconListView *)self rectForIcon:v12];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v47.origin.x = v13;
        v47.origin.y = v15;
        v47.size.width = v17;
        v47.size.height = v19;
        v42 = CGRectIntersection(a3, v47);
        x = v42.origin.x;
        y = v42.origin.y;
        width = v42.size.width;
        height = v42.size.height;
        if (!CGRectIsNull(v42))
        {
          v43.origin.x = x;
          v43.origin.y = y;
          v43.size.width = width;
          v43.size.height = height;
          MinX = CGRectGetMinX(v43);
          v44.origin.x = v14;
          v44.origin.y = v16;
          v44.size.width = v18;
          v44.size.height = v20;
          v33 = MinX - CGRectGetMinX(v44);
          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          MinY = CGRectGetMinY(v45);
          v46.origin.x = v14;
          v46.origin.y = v16;
          v46.size.width = v18;
          v46.size.height = v20;
          v26 = MinY - CGRectGetMinY(v46);
          if (v4)
          {
            v27 = SBHNormalizedRectFromSubRect(v14, v16, v18, v20, v33, v26, width, height);
            v26 = v28;
            width = v29;
            height = v30;
          }

          else
          {
            v27 = v33;
          }

          [(SBIconListViewIconVisibilityInfo *)v6 setVisibleRect:v12 forIcon:v27, v26, width, height];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v9);
  }

  return v6;
}

- (unint64_t)iconViewUserVisibilityStatusForIcon:(id)a3
{
  v3 = [(SBIconListView *)self contentVisibilityForIcon:a3];
  v4 = objc_opt_class();

  return [v4 iconViewUserVisibilityStatusForContentVisibility:v3];
}

+ (unint64_t)iconViewUserVisibilityStatusForContentVisibility:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1BEE85DC8[a3];
  }
}

- (void)setVisiblySettled:(BOOL)a3
{
  if (self->_visiblySettled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_visiblySettled = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__SBIconListView_setVisiblySettled___block_invoke;
    v5[3] = &unk_1E808AEC0;
    v5[4] = self;
    [(SBIconListView *)self enumerateIconViewsUsingBlock:v5];
  }
}

void __36__SBIconListView_setVisiblySettled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 icon];
  v4 = [*(a1 + 32) contentVisibilityForIcon:v5];
  [v3 setContentVisibility:v4];
  [v3 setUserVisibilityStatus:{objc_msgSend(objc_opt_class(), "iconViewUserVisibilityStatusForContentVisibility:", v4)}];
}

- (BOOL)isIconGlassGroupingAllowedForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self iconGlassGroupingBehavior];
  if (v5 == 2)
  {
    v7 = objc_opt_self();
    v6 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  return v6 & 1;
}

- (void)setIconGlassGroupingBehavior:(int64_t)a3
{
  if (self->_iconGlassGroupingBehavior != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_iconGlassGroupingBehavior = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__SBIconListView_setIconGlassGroupingBehavior___block_invoke;
    v5[3] = &unk_1E8089928;
    v5[4] = self;
    [(SBIconListView *)self enumerateDisplayedIconViewsUsingBlock:v5];
  }
}

void __47__SBIconListView_setIconGlassGroupingBehavior___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = [v5 icon];
  v4 = [v2 isIconGlassGroupingAllowedForIcon:v3];

  [v5 setIconImageAllowsGlassGrouping:v4];
}

- (void)setIconViewBackdropGroupName:(id)a3
{
  v4 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [v4 copy];
    iconViewBackdropGroupName = self->_iconViewBackdropGroupName;
    self->_iconViewBackdropGroupName = v5;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__SBIconListView_setIconViewBackdropGroupName___block_invoke;
    v7[3] = &unk_1E8089928;
    v8 = v4;
    [(SBIconListView *)self enumerateDisplayedIconViewsUsingBlock:v7];
  }
}

- (void)setIconViewGlassHidden:(BOOL)a3
{
  if (self->_iconViewGlassHidden != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_iconViewGlassHidden = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__SBIconListView_setIconViewGlassHidden___block_invoke;
    v5[3] = &__block_descriptor_33_e24_v24__0__SBIconView_8_B16l;
    v6 = a3;
    [(SBIconListView *)self enumerateDisplayedIconViewsUsingBlock:v5];
  }
}

- (void)updateEditingStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSMapTable *)self->_iconViews keyEnumerator];
  v6 = [v5 allObjects];
  [(SBIconListView *)self _updateEditingStateForIcons:v6 animated:v3];

  if ([(SBIconListView *)self automaticallyShowsEmptyGridCellsWhileEditing])
  {
    [(SBIconListView *)self setShowsEmptyGridCells:[(SBIconListView *)self isEditing] animated:v3];
  }

  [(SBIconListView *)self updateGlassGroup];
}

- (void)_updateEditingStateForIcons:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SBIconListView *)self isEditing];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(SBIconListView *)self displayedIconViewForIcon:*(*(&v14 + 1) + 8 * v12), v14];
        [v13 setEditing:v7 animated:v4];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)enumerateIconsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self displayedModel];
  v6 = [v5 icons];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__SBIconListView_enumerateIconsUsingBlock___block_invoke;
  v8[3] = &unk_1E808CEF8;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __43__SBIconListView_enumerateIconsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SBIconListView_enumerateIconViewsUsingBlock___block_invoke;
  v6[3] = &unk_1E808BE50;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBIconListView *)self enumerateIconsUsingBlock:v6];
}

uint64_t __47__SBIconListView_enumerateIconViewsUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) displayedIconViewForIcon:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 40) + 16))();
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)enumerateVisibleIconsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self visibleIcons];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SBIconListView_enumerateVisibleIconsUsingBlock___block_invoke;
  v7[3] = &unk_1E808CEF8;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)enumerateKnownIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__SBIconListView_enumerateKnownIconViewsUsingBlock___block_invoke;
  v10[3] = &unk_1E808A808;
  v5 = v4;
  v11 = v5;
  v12 = &v13;
  [(SBIconListView *)self enumerateIconViewsUsingBlock:v10];
  if ((v14[3] & 1) == 0)
  {
    draggingIconViews = self->_draggingIconViews;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__SBIconListView_enumerateKnownIconViewsUsingBlock___block_invoke_2;
    v7[3] = &unk_1E808A830;
    v8 = v5;
    v9 = &v13;
    [(NSMutableSet *)draggingIconViews enumerateObjectsUsingBlock:v7];
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __52__SBIconListView_enumerateKnownIconViewsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = 0;
  result = (*(*(a1 + 32) + 16))();
  if (v7 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __52__SBIconListView_enumerateKnownIconViewsUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = 0;
  result = (*(*(a1 + 32) + 16))();
  if (v6 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)setIconsLabelAlpha:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__SBIconListView_setIconsLabelAlpha___block_invoke;
  v3[3] = &__block_descriptor_40_e27_v32__0__SBIconView_8Q16_B24l;
  *&v3[4] = a3;
  [(SBIconListView *)self enumerateIconViewsUsingBlock:v3];
}

- (void)setIconContentScale:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_iconContentScale = a3;

    [(SBIconListView *)self layoutIconsNow];
  }
}

- (void)setAllowsReordering:(BOOL)a3
{
  if (self->_allowsReordering != a3)
  {
    self->_allowsReordering = a3;
    if (a3)
    {
      v5 = [[SBIconListViewReorderingManager alloc] initWithIconListView:self];
      reorderingManager = self->_reorderingManager;
      self->_reorderingManager = v5;
    }

    else
    {
      v5 = [(SBIconListViewReorderingManager *)self->_reorderingManager invalidate];
      reorderingManager = self->_reorderingManager;
      self->_reorderingManager = 0;
    }

    MEMORY[0x1EEE66BB8](v5, reorderingManager);
  }
}

- (NSString)iconDragTypeIdentifier
{
  if ([(SBIconListView *)self allowsReordering])
  {
    v3 = [(SBIconListViewReorderingManager *)self->_reorderingManager uniqueDragTypeIdentifier];
  }

  else
  {
    v3 = self->_iconDragTypeIdentifier;
  }

  return v3;
}

- (void)setContentVisibility:(unint64_t)a3
{
  if (self->_contentVisibility != a3)
  {
    v8[8] = v3;
    v8[9] = v4;
    self->_contentVisibility = a3;
    v7 = [(SBIconListView *)self iconViewUserVisibilityStatus];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__SBIconListView_setContentVisibility___block_invoke;
    v8[3] = &__block_descriptor_48_e27_v32__0__SBIconView_8Q16_B24l;
    v8[4] = a3;
    v8[5] = v7;
    [(SBIconListView *)self enumerateIconViewsUsingBlock:v8];
  }
}

void __39__SBIconListView_setContentVisibility___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setContentVisibility:v3];
  [v4 setUserVisibilityStatus:*(a1 + 40)];
}

- (unint64_t)iconContentVisibility
{
  result = [(SBIconListView *)self contentVisibility];
  if (!result)
  {
    if ([(SBIconListView *)self isVisiblySettled])
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

- (unint64_t)contentVisibilityForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self layoutMetrics];
  v6 = [(SBIconListView *)self contentVisibilityForIcon:v4 metrics:v5];

  return v6;
}

- (unint64_t)contentVisibilityForIcon:(id)a3 metrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListView *)self iconContentVisibility];
  if (v8 == 2)
  {
    v9 = 2;
  }

  else
  {
    v10 = v8;
    v11 = [(SBIconListView *)self cellVisibility];
    v9 = v11;
    if (v11 != 2)
    {
      if (v11)
      {
        v12 = [v7 gridCellInfo];
        v13 = [v7 listModel];
        v14 = v13;
        if (v12)
        {
          v15 = [v13 gridRangeForIcon:v6 gridCellInfo:v12];
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = v15;
            v18 = v16;
            v19 = [(SBIconListView *)self partialVisibleGridCellIndexes];
            if (!SBHIconGridRangeIntersectsIndexSet(v17, v18, v19, [v12 gridSize]))
            {
              v10 = 2;
            }
          }
        }
      }

      v9 = v10;
    }
  }

  return v9;
}

- (id)layoutMetricsForOrientation:(int64_t)a3
{
  memset(v7, 0, sizeof(v7));
  [(SBIconListView *)self getLayoutMetricsParameters:v7 orientation:a3];
  v4 = [(SBIconListView *)self displayedModel];
  v5 = [objc_opt_class() layoutMetricsForParameters:v7 listModel:v4];

  return v5;
}

- (id)layoutMetricsForModel:(id)a3
{
  memset(v7, 0, sizeof(v7));
  v4 = a3;
  [(SBIconListView *)self getLayoutMetricsParameters:v7];
  v5 = [objc_opt_class() layoutMetricsForParameters:v7 listModel:v4];

  return v5;
}

- (void)getLayoutMetricsParameters:(SBIconListLayoutMetricsParameters *)a3
{
  v5 = [(SBIconListView *)self layoutOrientation];

  [(SBIconListView *)self getLayoutMetricsParameters:a3 orientation:v5];
}

- (void)getLayoutMetricsParameters:(SBIconListLayoutMetricsParameters *)a3 orientation:(int64_t)a4
{
  v24 = [(SBIconListView *)self layout];
  v7 = [(SBIconListView *)self alignsIconsOnPixelBoundaries];
  if ([(SBIconListView *)self automaticallyAdjustsLayoutMetricsToFit])
  {
    v7 |= 2uLL;
  }

  if ([(SBIconListView *)self isLayoutReversed])
  {
    v7 |= 4uLL;
  }

  if ([(SBIconListView *)self isLayoutFlipped])
  {
    v7 |= 0x20uLL;
  }

  if ([(SBIconListView *)self adjustsColumnPositionsForFullScreenWidth])
  {
    v7 |= 8uLL;
  }

  if ([(SBIconListView *)self allowsGaps])
  {
    v7 |= 0x10uLL;
  }

  [(SBIconListView *)self bounds];
  a3->var0.origin.x = v8;
  a3->var0.origin.y = v9;
  a3->var0.size.width = v10;
  a3->var0.size.height = v11;
  [(SBIconListView *)self layoutScale];
  a3->var1 = v12;
  a3->var4 = a4;
  [(SBIconListView *)self layoutInsetsForOrientation:a4];
  a3->var2.top = v13;
  a3->var2.left = v14;
  a3->var2.bottom = v15;
  a3->var2.right = v16;
  a3->var3 = [(SBIconListView *)self layoutInsetsMode];
  a3->var5 = [v24 numberOfColumnsForOrientation:a4];
  a3->var6 = [v24 numberOfRowsForOrientation:a4];
  a3->var7 = [v24 numberOfColumnsForOrientation:1];
  a3->var8 = [v24 numberOfRowsForOrientation:1];
  a3->var9 = [v24 numberOfColumnsForOrientation:3];
  a3->var10 = [v24 numberOfRowsForOrientation:3];
  [(SBIconListView *)self alignmentIconSize];
  a3->var11.width = v17;
  a3->var11.height = v18;
  [(SBIconListView *)self iconImageSize];
  a3->var12.width = v19;
  a3->var12.height = v20;
  [(SBIconListView *)self iconContentScale];
  a3->var13 = v21;
  [(SBIconListView *)self iconSpacing];
  a3->var14.width = v22;
  a3->var14.height = v23;
  a3->var15 = [(SBIconListView *)self effectiveIconSpacingAxisMatchingBehavior];
  a3->var16 = v7;
}

+ (id)layoutMetricsForParameters:(SBIconListLayoutMetricsParameters *)a3 listModel:(id)a4
{
  v79 = a4;
  x = a3->var0.origin.x;
  y = a3->var0.origin.y;
  width = a3->var0.size.width;
  height = a3->var0.size.height;
  var1 = a3->var1;
  top = a3->var2.top;
  left = a3->var2.left;
  bottom = a3->var2.bottom;
  right = a3->var2.right;
  var5 = a3->var5;
  var6 = a3->var6;
  v84 = a3->var11.height;
  v85 = a3->var11.width;
  var13 = a3->var13;
  var15 = a3->var15;
  var16 = a3->var16;
  v95.origin.x = a3->var0.origin.x;
  v95.origin.y = y;
  v95.size.width = width;
  v95.size.height = height;
  v77 = CGRectGetWidth(v95);
  v73 = y;
  v74 = x;
  v96.origin.x = x;
  v96.origin.y = y;
  v75 = width;
  v76 = height;
  v96.size.width = width;
  v96.size.height = height;
  v18 = CGRectGetHeight(v96);
  v19 = var16 & 8;
  v20 = a3->var14.width;
  v21 = v20 != -123.0;
  if (v20 != -123.0 && a3->var14.height != -123.0)
  {
    v21 = 1;
LABEL_8:
    v22 = v77;
    goto LABEL_10;
  }

  if (var15 == 1)
  {
    goto LABEL_8;
  }

  v22 = v77;
  v21 = var15 == 2 && a3->var14.height != -123.0;
LABEL_10:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__SBIconListView_layoutMetricsForParameters_listModel___block_invoke;
  aBlock[3] = &__block_descriptor_106_e39__CGSize_dd_48__0_UIEdgeInsets_dddd_8d40l;
  aBlock[4] = var15;
  aBlock[5] = a3;
  *&aBlock[6] = v22;
  *&aBlock[7] = v85;
  *&aBlock[8] = v84;
  aBlock[9] = var5;
  v92 = var16 & 1;
  v93 = (var16 & 8) >> 3;
  *&aBlock[10] = var1;
  *&aBlock[11] = v18;
  aBlock[12] = var6;
  v23 = _Block_copy(aBlock);
  v24 = v23[2](top, left, bottom, right, var13);
  v25 = v24;
  v27 = v26;
  v28 = 0;
  v78 = var5;
  if ((var16 & 2) != 0 && v22 > 0.0 && v18 > 0.0)
  {
    v81 = bottom;
    v29 = 0;
    if (v24 >= 10.0 || (v30 = left + -4.0, left + -4.0 < 20.0))
    {
      v32 = right;
      v31 = left;
    }

    else
    {
      v29 = 0;
      do
      {
        v31 = left;
        v32 = right;
        right = right + -4.0;
        if (right < 20.0)
        {
          break;
        }

        left = v30;
        v25 = (v23[2])(v23, top, v30, bottom, right, var13);
        v27 = v33;
        v30 = left + -4.0;
        v29 = 1;
        v34 = v25 >= 10.0 || v30 < 20.0;
        v32 = right;
        v31 = left;
      }

      while (!v34);
    }

    v86 = v32;
    v82 = v31;
    if (v27 >= 10.0)
    {
      v40 = top;
      v41 = v81;
    }

    else
    {
      v36 = top;
      v37 = top + -4.0;
      if (top + -4.0 >= 20.0)
      {
        v42 = bottom;
        do
        {
          v39 = v36;
          v38 = v42;
          v42 = v42 + -4.0;
          if (v42 < 20.0)
          {
            break;
          }

          v36 = v37;
          v25 = (v23[2])(v23);
          v27 = v43;
          v37 = v36 + -4.0;
          v29 = 1;
          v44 = v43 >= 10.0 || v37 < 20.0;
          v38 = v42;
          v39 = v36;
        }

        while (!v44);
      }

      else
      {
        v38 = bottom;
        v39 = top;
      }

      v40 = v39;
      v41 = v38;
    }

    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __55__SBIconListView_layoutMetricsForParameters_listModel___block_invoke_2;
    v89[3] = &__block_descriptor_49_e18_B24__0_CGSize_dd_8l;
    v90 = v21;
    v89[4] = var5;
    v89[5] = var6;
    v45 = _Block_copy(v89);
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __55__SBIconListView_layoutMetricsForParameters_listModel___block_invoke_3;
    v88[3] = &__block_descriptor_88_e31_B40__0_CGSize_dd_8_CGSize_dd_24l;
    top = v40;
    *&v88[4] = v40;
    *&v88[5] = v82;
    bottom = v41;
    *&v88[6] = v41;
    *&v88[7] = v86;
    v88[8] = var5;
    *&v88[9] = var1;
    *&v88[10] = v77;
    v46 = _Block_copy(v88);
    v28 = 0;
    v47 = v84;
    v48 = v85;
    while ((!v45[2](v45, v25, v27) || (v46[2](v46, v48, v47, v25, v27) & 1) == 0) && var13 >= 0.25)
    {
      var13 = var13 + -0.05;
      v48 = v85 * var13;
      v47 = v84 * var13;
      v25 = (v23[2])(v23, top, v82, v41, v86, var13);
      v27 = v49;
      v28 = 1;
    }

    var5 = v78;
    v35 = v82;
  }

  else
  {
    v29 = 0;
    v86 = right;
    v35 = left;
  }

  v50 = [a1 gridCellInfoOptionsWithInterfaceOrientation:a3->var4 reversedLayout:(a3->var16 >> 2) & 1 flippedLayout:(a3->var16 >> 5) & 1 allowGaps:(a3->var16 >> 4) & 1];
  v51 = 0;
  v52 = top;
  if (var6 && var5)
  {
    v51 = [v79 gridCellInfoForGridSize:var5 | (var6 << 16) options:v50];
  }

  v53 = v85 * var13;
  v83 = v84 * var13;
  var3 = a3->var3;
  if (var3)
  {
    if (a3->var14.width == -123.0)
    {
      v64 = var5;
    }

    else
    {
      v55 = var5;
      if (var3 == 2)
      {
        v55 = [v51 numberOfUsedColumns];
      }

      v56 = v25;
      if (v19)
      {
        SBFFloatRoundForScale();
        v56 = v57;
      }

      v97.origin.x = v74 + v35;
      v97.origin.y = v73 + top;
      v58 = v86;
      v97.size.width = v75 - (v86 + v35);
      v97.size.height = v76 - (bottom + top);
      v59 = CGRectGetWidth(v97);
      if (v55)
      {
        v60 = v56 * (v55 - 1);
        v53 = v85 * var13;
        v61 = (var1 * v59 - (var1 * (v60 + v55 * (v85 * var13)) - ((var1 * (v60 + v55 * (v85 * var13))) % var1))) * 0.5;
        v62 = round(v61);
        if (v19)
        {
          v61 = v62;
        }

        v63 = v61 / a3->var1;
        v35 = v35 + v63;
        v58 = v86 + v63;
      }

      else
      {
        v53 = v85 * var13;
      }

      v86 = v58;
      if (a3->var3 == 2)
      {
        v64 = [v51 numberOfUsedColumns];
      }

      else
      {
        v64 = var5;
      }

      v52 = top;
    }

    if (a3->var14.height != -123.0)
    {
      v65 = bottom;
      v66 = var6;
      if (a3->var3 == 2)
      {
        v66 = [v51 numberOfUsedRows];
      }

      v67 = a3->var1;
      v98.origin.x = v74 + v35;
      v98.origin.y = v73 + v52;
      v98.size.width = v75 - (v86 + v35);
      v98.size.height = v76 - (v65 + v52);
      v68 = CGRectGetHeight(v98);
      if (v66)
      {
        v69 = (v68 * a3->var1 - v67 * (v27 * (v66 - 1) + v66 * v83)) * 0.5 / a3->var1;
        v52 = v52 + v69;
        bottom = v65 + v69;
      }

      else
      {
        bottom = v65;
      }
    }
  }

  else
  {
    v64 = var5;
  }

  v70 = var6;
  if (var6 == -1)
  {
    v70 = [v51 numberOfUsedRows];
  }

  v71 = objc_alloc_init(SBIconListViewLayoutMetrics);
  [(SBIconListViewLayoutMetrics *)v71 setIconSpacing:v25, v27];
  [(SBIconListViewLayoutMetrics *)v71 setIconContentScale:var13];
  [(SBIconListViewLayoutMetrics *)v71 setColumns:v78];
  [(SBIconListViewLayoutMetrics *)v71 setRows:var6];
  [(SBIconListViewLayoutMetrics *)v71 setColumnsUsedForLayout:v64];
  [(SBIconListViewLayoutMetrics *)v71 setRowsUsedForLayout:v70];
  [(SBIconListViewLayoutMetrics *)v71 setIconSize:v53, v83];
  [(SBIconListViewLayoutMetrics *)v71 setAlignmentIconSize:v85, v84];
  [(SBIconListViewLayoutMetrics *)v71 setIconImageSize:a3->var12.width, a3->var12.height];
  [(SBIconListViewLayoutMetrics *)v71 setIconInsets:v52, v35, bottom, v86];
  [(SBIconListViewLayoutMetrics *)v71 setListModel:v79];
  [(SBIconListViewLayoutMetrics *)v71 setGridCellInfo:v51];
  [(SBIconListViewLayoutMetrics *)v71 setAdjustedInsetsToFit:v29 & 1];
  [(SBIconListViewLayoutMetrics *)v71 setAdjustedIconContentScaleToFit:v28 & 1];
  [(SBIconListViewLayoutMetrics *)v71 setNeedsHorizontalColumnBumps:v19 != 0];

  return v71;
}

uint64_t __55__SBIconListView_layoutMetricsForParameters_listModel___block_invoke(uint64_t result)
{
  if (*(result + 32) != 2)
  {
    if (*(*(result + 40) + 176) == -123.0)
    {
      if ((*(result + 104) & 1) == 0)
      {
        return result;
      }
    }

    else if (*(result + 105) != 1)
    {
      return result;
    }

    return SBFFloatFloorForScale();
  }

  return result;
}

- (void)setAutomaticallyAdjustsLayoutMetricsToFit:(BOOL)a3
{
  if (self->_automaticallyAdjustsLayoutMetricsToFit != a3)
  {
    self->_automaticallyAdjustsLayoutMetricsToFit = a3;
    [(SBIconListView *)self setIconsNeedLayout];
  }
}

- (double)horizontalBumpForColumn:(unint64_t)a3 metrics:(id)a4
{
  v6 = a4;
  v7 = 0.0;
  if (-[SBIconListView alignsIconsOnPixelBoundaries](self, "alignsIconsOnPixelBoundaries") && [v6 needsHorizontalColumnBumps])
  {
    [(SBIconListView *)self layoutScale];
    v9 = v8;
    v10 = [v6 columnsUsedForLayout];
    [v6 iconInsets];
    v12 = v11;
    v14 = v13;
    [v6 iconSpacing];
    v16 = v15;
    [(SBIconListView *)self bounds];
    v17 = CGRectGetWidth(v20) - v12 - v14;
    [v6 iconSize];
    v7 = SBHIconListLayoutCalculateHorizontalColumnBump(a3, v10, v18, v16, v17, v9);
  }

  return v7;
}

- (double)horizontalIconPadding
{
  v2 = [(SBIconListView *)self layoutMetrics];
  [v2 iconSpacing];
  v4 = v3;

  return v4;
}

- (double)verticalIconPadding
{
  v2 = [(SBIconListView *)self layoutMetrics];
  [v2 iconSpacing];
  v4 = v3;

  return v4;
}

- (CGPoint)_alignedIconPointForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(SBIconListView *)self alignsIconsOnPixelBoundaries])
  {
    [(SBIconListView *)self layoutScale];
    UIPointRoundToScale();
    x = v6;
    y = v7;
  }

  v8 = x;
  v9 = y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_getRTLAwareRowIndex:(int64_t *)a3 columnIndex:(int64_t *)a4 forGridCellIndex:(unint64_t)a5 iconGridSize:(SBHIconGridSize)a6 metrics:(id)a7
{
  v22 = a7;
  v12 = [(SBIconListView *)self isRTL];
  v13 = [v22 columns];
  v14 = a5 / v13;
  v15 = a5 % v13;
  if (v12)
  {
    v16 = v13;
    v17 = [(SBIconListView *)self layoutInsetsMode];
    if (v17 >= 2)
    {
      if (v17 == 2)
      {
        v19 = [v22 gridCellInfo];
        v16 = [v19 numberOfUsedColumns];

        v20 = [v22 gridCellInfo];
        v18 = [v20 numberOfUsedRows];
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }
    }

    else
    {
      v18 = [v22 rows];
    }

    if ([(SBIconListView *)self isVertical])
    {
      v14 = v18 - v14 + -a6.rows;
    }

    else
    {
      v15 = v16 - (v15 + a6.columns);
    }
  }

  v21 = [v22 columnOffset];
  if (a3)
  {
    *a3 = v14;
  }

  if (a4)
  {
    *a4 = v21 + v15;
  }
}

- (CGPoint)originForIconAtCoordinate:(SBIconCoordinate)a3
{
  row = a3.row;
  column = a3.column;
  v6 = [(SBIconListView *)self layoutMetrics];
  [(SBIconListView *)self originForIconAtCoordinate:column metrics:row, v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)originForIconAtCoordinate:(SBIconCoordinate)a3 metrics:(id)a4
{
  [(SBIconListView *)self originForIconAtCoordinate:a3.column metrics:a3.row options:a4, 0];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)originForIconAtCoordinate:(SBIconCoordinate)a3 metrics:(id)a4 options:(unint64_t)a5
{
  row = a3.row;
  column = a3.column;
  v9 = a4;
  if (a5)
  {
    v12 = [(SBIconListView *)self gridCellIndexForCoordinate:column metrics:row, v9];
    v13 = [v9 gridCellInfo];
    LODWORD(v12) = [v13 gridSizeForGridCellIndex:v12];

    v11 = [(SBIconListView *)self iconGridSizeClassForIconGridSize:v12];
  }

  else
  {
    v10 = [(SBIconListView *)self iconAtCoordinate:column metrics:row, v9];
    v11 = [v10 gridSizeClass];
  }

  if (v11 == @"SBHIconGridSizeClassDefault" || [(__CFString *)v11 isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    [(SBIconListView *)self rectForDefaultSizedCellAtCoordinate:column metrics:row, v9];
  }

  else
  {
    [(SBIconListView *)self rectForCellAtIconCoordinate:column metrics:row options:v9, a5];
  }

  v16 = v14;
  v17 = v15;

  v18 = v16;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGRect)rectForDefaultSizedCellAtCoordinate:(SBIconCoordinate)a3 metrics:(id)a4
{
  row = a3.row;
  column = a3.column;
  v7 = a4;
  [v7 iconSize];
  v9 = v8;
  v11 = v10;
  [v7 iconSpacing];
  v13 = v12;
  v15 = v14;
  [v7 iconInsets];
  v17 = v16;
  v19 = v18;
  v20 = [(SBIconListView *)self alignsIconsOnPixelBoundaries];
  if (column != 0x7FFFFFFFFFFFFFFFLL && column && row != 0x7FFFFFFFFFFFFFFFLL && row)
  {
    v27 = v20;
    v31 = 0;
    v32 = 0;
    [(SBIconListView *)self _getRTLAwareRowIndex:&v32 columnIndex:&v31 forGridCellIndex:[(SBIconListView *)self gridCellIndexForCoordinate:column metrics:row iconGridSize:v7] metrics:65537, v7];
    v22 = v19 + v31 * (v9 + v13);
    if (v31 >= 0 && v27 && [v7 needsHorizontalColumnBumps])
    {
      [(SBIconListView *)self horizontalBumpForColumn:v31 metrics:v7];
      v22 = v22 + v28;
    }

    v21 = v17 + v32 * (v11 + v15);
    if (v27)
    {
      [(SBIconListView *)self _alignedIconPointForPoint:v22, v21];
      v22 = v29;
      v21 = v30;
    }
  }

  else
  {
    v22 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
  }

  v23 = v22;
  v24 = v21;
  v25 = v9;
  v26 = v11;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)rectForDefaultSizedCellsOfSize:(SBHIconGridSize)a3 startingAtCoordinate:(SBIconCoordinate)a4 metrics:(id)a5
{
  row = a4.row;
  column = a4.column;
  v9 = a5;
  v10 = *MEMORY[0x1E695F050];
  v11 = *(MEMORY[0x1E695F050] + 8);
  v12 = *(MEMORY[0x1E695F050] + 16);
  v13 = *(MEMORY[0x1E695F050] + 24);
  rows = a3.rows;
  if (a3.rows)
  {
    v15 = 0;
    columns = a3.columns;
    do
    {
      if (columns)
      {
        v17 = column;
        v18 = columns;
        do
        {
          [(SBIconListView *)self rectForDefaultSizedCellAtCoordinate:v17 metrics:v15 + row, v9];
          x = v19;
          y = v21;
          width = v23;
          height = v25;
          v31.origin.x = v10;
          v31.origin.y = v11;
          v31.size.width = v12;
          v31.size.height = v13;
          if (!CGRectIsNull(v31))
          {
            v32.origin.x = v10;
            v32.origin.y = v11;
            v32.size.width = v12;
            v32.size.height = v13;
            v35.origin.x = x;
            v35.origin.y = y;
            v35.size.width = width;
            v35.size.height = height;
            v33 = CGRectUnion(v32, v35);
            x = v33.origin.x;
            y = v33.origin.y;
            width = v33.size.width;
            height = v33.size.height;
          }

          ++v17;
          v10 = x;
          v11 = y;
          v12 = width;
          v13 = height;
          --v18;
        }

        while (v18);
      }

      else
      {
        height = v13;
        width = v12;
        y = v11;
        x = v10;
      }

      ++v15;
      v10 = x;
      v11 = y;
      v12 = width;
      v13 = height;
    }

    while (v15 != rows);
  }

  else
  {
    height = *(MEMORY[0x1E695F050] + 24);
    width = *(MEMORY[0x1E695F050] + 16);
    y = *(MEMORY[0x1E695F050] + 8);
    x = *MEMORY[0x1E695F050];
  }

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)rectForDefaultSizedCellsOfSizeClass:(id)a3 startingAtCoordinate:(SBIconCoordinate)a4 metrics:(id)a5
{
  row = a4.row;
  column = a4.column;
  v9 = a5;
  [(SBIconListView *)self rectForDefaultSizedCellsOfSize:[(SBIconListView *)self iconGridSizeForClass:a3] startingAtCoordinate:column metrics:row, v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)fullRectForDefaultSizedCellAtCoordinate:(SBIconCoordinate)a3 metrics:(id)a4
{
  row = a3.row;
  column = a3.column;
  v7 = a4;
  v8 = v7;
  if (column != 0x7FFFFFFFFFFFFFFFLL && column && row != 0x7FFFFFFFFFFFFFFFLL && row)
  {
    [v7 iconInsets];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v8 iconSpacing];
    v26 = v25;
    v28 = v27;
    [(SBIconListView *)self bounds];
    v42.origin.x = v20 + v29;
    v42.origin.y = v18 + v30;
    v42.size.width = v31 - (v20 + v24);
    v42.size.height = v32 - (v18 + v22);
    v33 = v26;
    v43 = CGRectInset(v42, v26 * -0.5, v28 * -0.5);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    v38 = [v8 columnsUsedForLayout];
    [v8 iconSize];
    v11 = v28 + v39;
    v12 = v33 + v40;
    if ([(SBIconListView *)self isRTL])
    {
      v41 = v38 - column;
    }

    else
    {
      v41 = column - 1;
    }

    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v9 = CGRectGetMinX(v44) + v41 * v12;
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v10 = CGRectGetMinY(v45) + (row - 1) * v11;
  }

  else
  {
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = v9;
  v14 = v10;
  v15 = v12;
  v16 = v11;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)getIconStartGridCellIndex:(unint64_t *)a3 gridSize:(SBHIconGridSize *)a4 forGridCellIndex:(unint64_t)a5 metrics:(id)a6
{
  v10 = a6;
  v11 = [(SBIconListView *)self displayedModel];
  v16 = 0;
  v17 = 0;
  v12 = [v10 gridCellInfo];

  v13 = [v11 getIconGridRange:&v16 forGridCellIndex:a5 gridCellInfo:v12];
  if (a3 && v13)
  {
    *a3 = v16;
  }

  v14 = v13 ^ 1;
  if (!a4)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    *a4 = v17;
  }

  return v13;
}

- (BOOL)getIconGridRange:(SBHIconGridRange *)a3 forGridCellIndex:(unint64_t)a4 metrics:(id)a5
{
  v8 = a5;
  v9 = [(SBIconListView *)self displayedModel];
  v10 = [v8 gridCellInfo];

  LOBYTE(a4) = [v9 getIconGridRange:a3 forGridCellIndex:a4 gridCellInfo:v10];
  return a4;
}

- (SBHIconGridRange)iconGridRangeForGridCellIndex:(unint64_t)a3 metrics:(id)a4 options:(unint64_t)a5
{
  if ((a5 & 1) != 0 || (v8 = 0, v9 = 0, ![(SBIconListView *)self getIconGridRange:&v8 forGridCellIndex:a3 metrics:a4]))
  {
    v8 = a3;
    LODWORD(v9) = 65537;
  }

  v6 = v8;
  v7 = v9;
  result.size = v7;
  result.cellIndex = v6;
  return result;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 atCoordinate:(SBIconCoordinate)a4
{
  row = a4.row;
  column = a4.column;
  v7 = a3;
  v8 = [(SBIconListView *)self displayedModel];
  v9 = [(SBIconListView *)self layoutMetrics];
  v10 = [(SBIconListView *)self gridCellIndexForCoordinate:column metrics:row, v9];
  v11 = [v9 gridCellInfo];
  v12 = [v8 bestGridCellIndexForInsertingIcon:v7 atGridCellIndex:v10 gridCellInfo:v11];

  return v12;
}

- (unint64_t)bestIndexForInsertingIcon:(id)a3 atCoordinate:(SBIconCoordinate)a4
{
  v5 = [(SBIconListView *)self bestGridCellIndexForInsertingIcon:a3 atCoordinate:a4.column, a4.row];
  v6 = [(SBIconListView *)self layoutMetrics];
  v7 = [(SBIconListView *)self iconIndexForGridCellIndex:v5 metrics:v6];

  return v7;
}

+ (unint64_t)gridCellInfoOptionsWithInterfaceOrientation:(int64_t)a3 reversedLayout:(BOOL)a4 flippedLayout:(BOOL)a5 allowGaps:(BOOL)a6
{
  v6 = a4;
  if (a6)
  {
    v6 = a4 | 4;
  }

  if ((a3 - 3) < 2)
  {
    v6 |= 2uLL;
  }

  if (a5)
  {
    return v6 | 0x10;
  }

  else
  {
    return v6;
  }
}

- (id)gridCellInfo
{
  v2 = [(SBIconListView *)self layoutMetrics];
  v3 = [v2 gridCellInfo];

  return v3;
}

- (NSString)layoutDescription
{
  v2 = [(SBIconListView *)self gridCellInfo];
  v3 = [v2 layoutDescription];

  return v3;
}

- (unint64_t)columnAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBIconListView *)self layoutMetrics];
  v7 = [(SBIconListView *)self columnAtPoint:1 includingNearest:v6 metrics:0 fractionOfDistanceThroughColumn:x, y];

  return v7;
}

- (unint64_t)columnAtPoint:(CGPoint)a3 fractionOfDistanceThroughColumn:(double *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(SBIconListView *)self layoutMetrics];
  v9 = [(SBIconListView *)self columnAtPoint:1 includingNearest:v8 metrics:a4 fractionOfDistanceThroughColumn:x, y];

  return v9;
}

- (unint64_t)columnAtPoint:(CGPoint)a3 includingNearest:(BOOL)a4 metrics:(id)a5 fractionOfDistanceThroughColumn:(double *)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a5;
  if (!a4)
  {
    [(SBIconListView *)self bounds];
    v32.x = x;
    v32.y = y;
    if (!CGRectContainsPoint(v33, v32))
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_29;
    }
  }

  [v11 iconSize];
  v13 = v12;
  [v11 iconSpacing];
  v15 = v14;
  [v11 iconInsets];
  v17 = v16;
  v18 = [v11 columnOffset];
  v19 = [v11 columnsUsedForLayout];
  if (!v19)
  {
    if (a6)
    {
      v23 = 0;
      *a6 = 0.0;
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  v20 = v19;
  v21 = [(SBIconListView *)self isRTL];
  v22 = v20 - 1;
  if (v20 == 1)
  {
    v27 = 0.0;
LABEL_16:
    [(SBIconListView *)self bounds];
    v29 = (x - v27) / (CGRectGetMaxX(v34) - v27);
    if (!v21)
    {
      if (a6)
      {
        *a6 = v29;
      }

      v23 = v22;
      goto LABEL_29;
    }

    if (a6)
    {
      v23 = 0;
      v30 = 1.0 - v29;
      goto LABEL_28;
    }

LABEL_19:
    v23 = 0;
    goto LABEL_29;
  }

  v23 = 0;
  v24 = v15 * 0.5 + v13 + v17;
  v25 = v13 + v15;
  v26 = 0.0;
  while (1)
  {
    v27 = v24 + v25 * (v18 + v23);
    if (-[SBIconListView alignsIconsOnPixelBoundaries](self, "alignsIconsOnPixelBoundaries") && [v11 needsHorizontalColumnBumps])
    {
      [(SBIconListView *)self horizontalBumpForColumn:v23 metrics:v11];
      v27 = v27 + v28;
    }

    if (x < v27)
    {
      break;
    }

    ++v23;
    v26 = v27;
    if (v22 == v23)
    {
      goto LABEL_16;
    }
  }

  v30 = (x - v26) / (v27 - v26);
  if (!v21)
  {
    if (!a6)
    {
      goto LABEL_29;
    }

LABEL_28:
    *a6 = v30;
    goto LABEL_29;
  }

  if (a6)
  {
    *a6 = 1.0 - v30;
  }

  v23 = v22 - v23;
LABEL_29:

  return v23;
}

- (unint64_t)rowAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBIconListView *)self layoutMetrics];
  v7 = [(SBIconListView *)self rowAtPoint:1 includingNearest:v6 metrics:0 fractionOfDistanceThroughRow:x, y];

  return v7;
}

- (unint64_t)rowAtPoint:(CGPoint)a3 fractionOfDistanceThroughRow:(double *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(SBIconListView *)self layoutMetrics];
  v9 = [(SBIconListView *)self rowAtPoint:1 includingNearest:v8 metrics:a4 fractionOfDistanceThroughRow:x, y];

  return v9;
}

- (unint64_t)rowAtPoint:(CGPoint)a3 includingNearest:(BOOL)a4 metrics:(id)a5 fractionOfDistanceThroughRow:(double *)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a5;
  if (a4 || ([(SBIconListView *)self bounds], v32.x = x, v32.y = y, CGRectContainsPoint(v33, v32)))
  {
    [v11 iconInsets];
    v13 = v12;
    [v11 iconSize];
    v15 = v14;
    [v11 iconSpacing];
    v17 = v16;
    v18 = [v11 rows];
    if (y >= v13)
    {
      [(SBIconListView *)self layoutScale];
      v19 = ((y * v20) - (v13 * v20) + ((v17 * v20) >> 1)) / ((v15 + v17) * v20);
    }

    else
    {
      v19 = 0;
    }

    if (v18 - 1 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18 - 1;
    }

    [(SBIconListView *)self fullRectForDefaultSizedCellAtCoordinate:1 metrics:v21 + 1, v11];
    v22 = v34.origin.x;
    v23 = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    v26 = y - CGRectGetMinY(v34);
    v35.origin.x = v22;
    v35.origin.y = v23;
    v35.size.width = width;
    v35.size.height = height;
    v27 = v26 / CGRectGetHeight(v35);
    v28 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListView_rowAtPoint_metrics_proposedRow_];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 iconListView:self rowAtPoint:v11 metrics:v21 proposedRow:{x, y}];
      if (v30 != v21)
      {
        v27 = 0.0;
      }

      v21 = v30;
    }

    if (a6)
    {
      *a6 = v27;
    }
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v21;
}

- (CGPoint)fractionalCoordinateAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(SBIconListView *)self layoutMetrics];
  v6 = [v5 copy];

  v7 = [v6 gridCellInfo];
  [v7 clearAllIconAndGridCellIndexes];
  v8 = [(SBIconListView *)self displayedModel];
  v9 = [v8 numberOfIcons];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      [v7 setIconIndex:i forGridCellIndex:i];
    }
  }

  [(SBIconListView *)self iconImageSizeForGridSizeClass:@"SBHIconGridSizeClassDefault"];
  [(objc_class *)[(SBIconListView *)self baseIconViewClass] defaultIconImageCenterForIconImageSize:v12, v13];
  v15 = v14;
  v17 = v16;
  [v6 iconContentScale];
  v19 = v15 * v18;
  [v6 iconContentScale];
  v21 = v17 * v20;
  [(SBIconListView *)self originForIconAtCoordinate:1 metrics:1 options:v6, 1];
  v23 = v22;
  v25 = v19 + v24;
  v26 = [v6 rows];
  if (v26 == 1.84467441e19)
  {
    v26 = [v8 numberOfUsedRows];
  }

  v27 = v21 + v23;
  -[SBIconListView originForIconAtCoordinate:metrics:options:](self, "originForIconAtCoordinate:metrics:options:", [v6 columns], v26, v6, 1);
  v30 = v21 + v29;
  v31 = v19 + v28 - v25;
  v32 = 0.0;
  v33 = 0.0;
  if ((BSFloatIsZero() & 1) == 0)
  {
    v33 = (x - v25) / v31;
  }

  v34 = [v6 columns];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v32 = (y - v27) / (v30 - v27);
  }

  v35 = v33 * (v34 - 1) + 1.0;
  v36 = v32 * (v26 + -1.0) + 1.0;
  result.y = v36;
  result.x = v35;
  return result;
}

- (SBIconCoordinate)coordinateAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBIconListView *)self layoutMetrics];
  v7 = [(SBIconListView *)self coordinateAtPoint:1 includingNearest:v6 metrics:x, y];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.row = v11;
  result.column = v10;
  return result;
}

- (SBIconCoordinate)coordinateAtPoint:(CGPoint)a3 includingNearest:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(SBIconListView *)self layoutMetrics];
  v9 = [(SBIconListView *)self coordinateAtPoint:v4 includingNearest:v8 metrics:x, y];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.row = v13;
  result.column = v12;
  return result;
}

- (SBIconCoordinate)coordinateAtPoint:(CGPoint)a3 metrics:(id)a4
{
  v4 = [(SBIconListView *)self coordinateAtPoint:1 includingNearest:a4 metrics:a3.x, a3.y];
  result.row = v5;
  result.column = v4;
  return result;
}

- (SBIconCoordinate)coordinateAtPoint:(CGPoint)a3 includingNearest:(BOOL)a4 metrics:(id)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v10 = [(SBIconListView *)self columnAtPoint:v5 includingNearest:v9 metrics:0 fractionOfDistanceThroughColumn:x, y];
  v11 = [(SBIconListView *)self rowAtPoint:v5 includingNearest:v9 metrics:0 fractionOfDistanceThroughRow:x, y];

  v12 = v10 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0x7FFFFFFFFFFFFFFFLL;
  if (v12)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v10 + 1;
  }

  if (v12)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11 + 1;
  }

  result.row = v14;
  result.column = v13;
  return result;
}

- (SBHIconGridRange)gridRangeForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SBIconListView *)self bounds];
  v63.origin.x = v8;
  v63.origin.y = v9;
  v63.size.width = v10;
  v63.size.height = v11;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v58 = CGRectIntersection(v57, v63);
  v12 = v58.origin.x;
  v13 = v58.origin.y;
  v14 = v58.size.width;
  v15 = v58.size.height;
  if (CGRectIsEmpty(v58))
  {
    v16 = 0;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v59.origin.x = v12;
    v59.origin.y = v13;
    v59.size.width = v14;
    v59.size.height = v15;
    MinX = CGRectGetMinX(v59);
    v60.origin.x = v12;
    v60.origin.y = v13;
    v60.size.width = v14;
    v60.size.height = v15;
    MaxX = CGRectGetMaxX(v60);
    v20 = nexttoward(MaxX, MinX);
    v61.origin.x = v12;
    v61.origin.y = v13;
    v61.size.width = v14;
    v61.size.height = v15;
    MinY = CGRectGetMinY(v61);
    v62.origin.x = v12;
    v62.origin.y = v13;
    v62.size.width = v14;
    v62.size.height = v15;
    MaxY = CGRectGetMaxY(v62);
    v23 = nexttoward(MaxY, MinY);
    v24 = [(SBIconListView *)self layoutMetrics];
    v25 = [(SBIconListView *)self gridSizeForCurrentOrientation];
    v26 = [(SBIconListView *)self coordinateAtPoint:0 includingNearest:v24 metrics:MinX, MinY];
    v28 = v27;
    v29 = [(SBIconListView *)self coordinateAtPoint:0 includingNearest:v24 metrics:v20, MinY];
    v31 = v30;
    v32 = [(SBIconListView *)self coordinateAtPoint:0 includingNearest:v24 metrics:MinX, v23];
    v34 = v33;
    v55 = [(SBIconListView *)self coordinateAtPoint:0 includingNearest:v24 metrics:v20, v23];
    v36 = v35;
    v37 = v25;
    GridCellIndex = SBIconCoordinateGetGridCellIndex(v26, v28, v25);
    v39 = SBIconCoordinateGetGridCellIndex(v29, v31, v37);
    v40 = SBHIconGridRangeAddCellIndex(GridCellIndex, 65537, v39, v37);
    v42 = v41;
    v43 = SBIconCoordinateGetGridCellIndex(v29, v31, v37);
    v44 = SBHIconGridRangeAddCellIndex(v40, v42, v43, v37);
    v46 = v45;
    v47 = SBIconCoordinateGetGridCellIndex(v32, v34, v37);
    v48 = SBHIconGridRangeAddCellIndex(v44, v46, v47, v37);
    v50 = v49;
    v51 = SBIconCoordinateGetGridCellIndex(v55, v36, v37);
    v17 = SBHIconGridRangeAddCellIndex(v48, v50, v51, v37);
    v16 = v52;
  }

  v53 = v17;
  v54 = v16;
  result.size = v54;
  result.cellIndex = v53;
  return result;
}

- (CGRect)rectForGridRange:(SBHIconGridRange)a3
{
  v3 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
  v6 = [(SBIconListView *)self layoutMetrics];
  [(SBIconListView *)self fullRectForGridRange:cellIndex metrics:v3, v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (SBHIconGridRange)closestGridRangeForIconOfSize:(SBHIconGridSize)a3 centeredAtPoint:(CGPoint)a4
{
  v6 = [(SBIconListView *)self layoutMetrics];
  [(SBIconListView *)self rectForDefaultSizedCellsOfSize:*&a3 startingAtCoordinate:1 metrics:1, v6];

  UIRectCenteredAboutPoint();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SBIconListView *)self gridRangeForRect:?];
  v17 = v16;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3010000000;
  v28 = &unk_1BEECC529;
  v29 = xmmword_1BEE85DF0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v18 = [(SBIconListView *)self gridSizeForCurrentOrientation];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __64__SBIconListView_closestGridRangeForIconOfSize_centeredAtPoint___block_invoke;
  v23[3] = &unk_1E808CFC0;
  v23[7] = v8;
  v23[8] = v10;
  *&v23[9] = v12;
  *&v23[10] = v14;
  *&v23[11] = v12 * v14;
  v23[4] = self;
  v23[5] = v24;
  v23[6] = &v25;
  SBHIconGridRangeEnumerateSubranges(v15, v17, *&a3, v18, 1, v23);
  v19 = v26[4];
  v20 = v26[5];
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v25, 8);
  v21 = v19;
  v22 = v20;
  result.size = v22;
  result.cellIndex = v21;
  return result;
}

uint64_t __64__SBIconListView_closestGridRangeForIconOfSize_centeredAtPoint___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) rectForGridRange:{a2, a3}];
  v15.origin.x = v6;
  v15.origin.y = v7;
  v15.size.width = v8;
  v15.size.height = v9;
  v10 = v8 * v9;
  v14 = CGRectIntersection(*(a1 + 56), v15);
  v11 = 1.0 - (v10 + *(a1 + 88) - v14.size.width * v14.size.height - v14.size.width * v14.size.height) / (v10 + *(a1 + 88));
  result = BSFloatGreaterThanFloat();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = v11;
    v13 = *(*(a1 + 48) + 8);
    *(v13 + 32) = a2;
    *(v13 + 40) = a3;
  }

  return result;
}

- (void)setIconSpacing:(CGSize)a3
{
  if (a3.width != self->_iconSpacing.width || a3.height != self->_iconSpacing.height)
  {
    self->_iconSpacing = a3;
    [(SBIconListView *)self setIconsNeedLayout];

    [(SBIconListView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)effectiveIconSpacing
{
  v2 = [(SBIconListView *)self layoutMetrics];
  [v2 iconSpacing];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setIconSpacingAxisMatchingBehavior:(int64_t)a3
{
  if (self->_iconSpacingAxisMatchingBehavior != a3)
  {
    self->_iconSpacingAxisMatchingBehavior = a3;
    [(SBIconListView *)self setHasSetIconSpacingAxisMatchingBehavior:1];
    [(SBIconListView *)self setIconsNeedLayout];

    [(SBIconListView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  [(SBIconListView *)self getLayoutMetricsParameters:&v19];
  v6 = [(SBIconListView *)self displayedModel];
  [v6 gridSize];
  v7 = [v6 numberOfUsedRows];
  *&v20 = width;
  *(&v20 + 1) = height;
  *&v25 = v7;
  *(&v23 + 1) = 0;
  v8 = [objc_opt_class() layoutMetricsForParameters:&v19 listModel:v6];
  [v8 alignmentIconSize];
  [v8 iconContentScale];
  [v8 alignmentIconSize];
  [v8 iconContentScale];
  [v8 iconInsets];
  [v8 iconSpacing];
  [v8 iconInsets];
  [v8 iconInsets];
  [v8 iconSpacing];
  [v8 iconInsets];
  UISizeRoundToViewScale();
  v10 = v9;
  v12 = v11;
  v13 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListView_sizeThatFits_metrics_proposedSize_];
  v14 = v13;
  if (v13)
  {
    [v13 iconListView:self sizeThatFits:v8 metrics:width proposedSize:{height, v10, v12}];
    v10 = v15;
    v12 = v16;
  }

  v17 = v10;
  v18 = v12;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(SBIconListView *)self iconSpacing];
  v5 = v4;
  if (v3 == -123.0 && v4 == -123.0)
  {
    v6 = *MEMORY[0x1E69DE788];
    v7 = *MEMORY[0x1E69DE788];
  }

  else if (v3 == -123.0)
  {
    v7 = *MEMORY[0x1E69DE788];
    [(SBIconListView *)self sizeThatFits:10000.0, 10000.0];
  }

  else
  {
    [(SBIconListView *)self sizeThatFits:10000.0, 10000.0];
    v7 = v6;
    if (v5 == -123.0)
    {
      v6 = *MEMORY[0x1E69DE788];
    }

    else
    {
      v7 = v8;
    }
  }

  v9 = v7;
  result.height = v6;
  result.width = v9;
  return result;
}

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBIconListView;
  [(SBIconListView *)&v6 willMoveToWindow:?];
  if (self->_ignoreNextWindowChange)
  {
    self->_ignoreNextWindowChange = 0;
  }

  else if (a3)
  {
    v5 = [(SBIconListView *)self window];

    if (!v5)
    {
      [(SBIconListView *)self layoutIconsNow];
    }
  }

  else
  {
    [(SBIconListView *)self removeAllIconViews];
    [(SBIconListView *)self _teardownLayoutRunloopObserverIfNeeded];
  }
}

- (void)addLayoutObserver:(id)a3
{
  v4 = a3;
  layoutObservers = self->_layoutObservers;
  v8 = v4;
  if (!layoutObservers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_layoutObservers;
    self->_layoutObservers = v6;

    v4 = v8;
    layoutObservers = self->_layoutObservers;
  }

  [(NSHashTable *)layoutObservers addObject:v4];
}

- (id)gridSizeClassDomain
{
  v2 = [(SBIconListView *)self model];
  v3 = [v2 effectiveGridSizeClassDomain];

  return v3;
}

- (id)effectiveIconImageStyleConfiguration
{
  v2 = [(SBIconListView *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:v2];

  return v3;
}

- (void)setUsesGlassGroup:(BOOL)a3
{
  if (self->_usesGlassGroup != a3)
  {
    self->_usesGlassGroup = a3;
    [(SBIconListView *)self updateGlassGroup];
  }
}

- (BOOL)containsWidget
{
  v2 = [(SBIconListView *)self displayedModel];
  v3 = objc_opt_self();
  v4 = [v2 directlyContainsIconOfClass:v3];

  return v4;
}

- (id)widgetIconsForIntroductionContainerView
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SBIconListView *)self displayedModel];
  v5 = [v4 icons];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isWidgetIcon])
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)addPronouncedContainerViewWithDelegate:(id)a3 vertical:(BOOL)a4
{
  v45[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  pronouncedContainerView = self->_pronouncedContainerView;
  if (pronouncedContainerView)
  {
    [(SBIconWidgetIntroductionView *)pronouncedContainerView removeFromSuperview];
    v8 = self->_pronouncedContainerView;
    self->_pronouncedContainerView = 0;
  }

  v9 = [(SBIconListView *)self widgetIconsForIntroductionContainerView];
  if ([v9 count])
  {
    v42 = v6;
    objc_storeWeak(&self->_widgetIntroductionDelegate, v6);
    self->_isWidgetIntroductionVertical = a4;
    v41 = v9;
    v10 = [[SBIconWidgetIntroductionView alloc] initWithWidgetIcons:v9];
    v11 = self->_pronouncedContainerView;
    self->_pronouncedContainerView = v10;

    [(SBIconListView *)self addSubview:self->_pronouncedContainerView];
    [(SBIconListView *)self sendSubviewToBack:self->_pronouncedContainerView];
    WeakRetained = objc_loadWeakRetained(&self->_widgetIntroductionDelegate);
    [SBIconWidgetIntroductionPopoverView contentSize:self->_isWidgetIntroductionVertical];
    v14 = v13;
    v16 = v15;
    v17 = [[SBIconWidgetIntroductionPopoverView alloc] initWithDelegate:WeakRetained vertical:self->_isWidgetIntroductionVertical];
    widgetIntroductionPopover = self->_widgetIntroductionPopover;
    self->_widgetIntroductionPopover = v17;

    [(SBIconListView *)self addSubview:self->_widgetIntroductionPopover];
    [(SBIconWidgetIntroductionPopoverView *)self->_widgetIntroductionPopover setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBIconListView *)self _introductionContainerViewFrameForView:self->_pronouncedContainerView];
    self->_widgetIntroductionPopOverTopAnchorOffset = v19;
    v20 = [(SBIconWidgetIntroductionPopoverView *)self->_widgetIntroductionPopover topAnchor];
    v21 = [(SBIconListView *)self topAnchor];
    [(SBIconListView *)self _topSpacingForWidgetIntroductionPopoverView];
    v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21 constant:?];
    widgetIntroductionPopoverTopAnchorConstraint = self->_widgetIntroductionPopoverTopAnchorConstraint;
    self->_widgetIntroductionPopoverTopAnchorConstraint = v22;

    v24 = [(SBIconWidgetIntroductionPopoverView *)self->_widgetIntroductionPopover leadingAnchor];
    v25 = [(SBIconListView *)self leadingAnchor];
    [(SBIconListView *)self _leadingSpacingForWidgetIntroductionPopoverView];
    v26 = [v24 constraintEqualToAnchor:v25 constant:?];
    widgetIntroductionPopoverLeadingAnchorConstraint = self->_widgetIntroductionPopoverLeadingAnchorConstraint;
    self->_widgetIntroductionPopoverLeadingAnchorConstraint = v26;

    v40 = MEMORY[0x1E696ACD8];
    v28 = self->_widgetIntroductionPopover;
    if (self->_isWidgetIntroductionVertical)
    {
      v29 = [(SBIconWidgetIntroductionPopoverView *)v28 topAnchor];
      v30 = [(SBIconListView *)self topAnchor];
      [(SBIconListView *)self _topSpacingForWidgetIntroductionPopoverView];
      v31 = [v29 constraintEqualToAnchor:v30 constant:?];
      v32 = self->_widgetIntroductionPopoverLeadingAnchorConstraint;
      v45[0] = v31;
      v45[1] = v32;
      v33 = [(SBIconWidgetIntroductionPopoverView *)self->_widgetIntroductionPopover widthAnchor];
      v34 = [v33 constraintEqualToConstant:v14];
      v45[2] = v34;
      v35 = [(SBIconWidgetIntroductionPopoverView *)self->_widgetIntroductionPopover heightAnchor];
      v36 = [v35 constraintEqualToConstant:v16];
      v45[3] = v36;
      v37 = v45;
    }

    else
    {
      v29 = [(SBIconWidgetIntroductionPopoverView *)v28 centerXAnchor];
      v30 = [(SBIconListView *)self centerXAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];
      v44[0] = v31;
      v33 = [(SBIconWidgetIntroductionPopoverView *)self->_widgetIntroductionPopover widthAnchor];
      v34 = [v33 constraintEqualToConstant:v14];
      v44[1] = v34;
      v35 = [(SBIconWidgetIntroductionPopoverView *)self->_widgetIntroductionPopover heightAnchor];
      v36 = [v35 constraintEqualToConstant:v16];
      v38 = self->_widgetIntroductionPopoverTopAnchorConstraint;
      v44[2] = v36;
      v44[3] = v38;
      v37 = v44;
    }

    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v40 activateConstraints:v39];

    [(SBIconListView *)self bringSubviewToFront:self->_widgetIntroductionPopover];
    [(SBIconListView *)self layoutWidgetIntroductionViews];
    [(SBIconListView *)self setNeedsLayout];
    [(SBIconListView *)self layoutIfNeeded];
    [(SBIconListView *)self startAnimatingPronouncedContainerAndPopoverView];
    [(SBIconWidgetIntroductionPopoverView *)self->_widgetIntroductionPopover setAlpha:0.0];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __66__SBIconListView_addPronouncedContainerViewWithDelegate_vertical___block_invoke;
    v43[3] = &unk_1E8088C90;
    v43[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v43 animations:0.225];

    v9 = v41;
    v6 = v42;
  }
}

- (CGRect)_introductionContainerViewFrameForView:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [a3 widgetIcons];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v29;
    width = 1.0;
    x = 0.0;
    *&v6 = 138412290;
    v27 = v6;
    y = 0.0;
    height = 1.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [(SBIconListView *)self displayedIconViewForIcon:v14, v27];
        v16 = SBLogWidgetDiscoverabilityMigration();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v27;
          v33 = v15;
          _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "introductionContainerView contained icon view %@", buf, 0xCu);
        }

        if (v15)
        {
          [(SBIconListView *)self rectForIcon:v14];
          v40.origin.x = v17;
          v40.origin.y = v18;
          v40.size.width = v19;
          v40.size.height = v20;
          v36.origin.x = x;
          v36.origin.y = y;
          v36.size.width = width;
          v36.size.height = height;
          v37 = CGRectUnion(v36, v40);
          x = v37.origin.x;
          y = v37.origin.y;
          width = v37.size.width;
          height = v37.size.height;
          v21 = SBLogWidgetDiscoverabilityMigration();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v38.origin.x = x;
            v38.origin.y = y;
            v38.size.width = width;
            v38.size.height = height;
            v22 = NSStringFromCGRect(v38);
            *buf = v27;
            v33 = v22;
            _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "introductionContainerView union frame %@", buf, 0xCu);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  else
  {
    width = 1.0;
    x = 0.0;
    y = 0.0;
    height = 1.0;
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)layoutWidgetIntroductionViews
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = self->_pronouncedContainerView;
  v4 = v3;
  if (v3)
  {
    v5 = [(SBIconWidgetIntroductionView *)v3 widgetIcons];
    [(SBIconListView *)self _introductionContainerViewFrameForView:v4];
    [(SBIconWidgetIntroductionView *)v4 sbf_setBoundsAndPositionFromFrame:?];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v29;
      *&v8 = 138412290;
      v27 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = [(SBIconListView *)self displayedIconViewForIcon:v12, v27, v28];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 superview];

            if (v15 == self)
            {
              [(SBIconWidgetIntroductionView *)v4 addSubview:v14];
              [(SBIconListView *)self centerForIcon:v12];
              v17 = v16;
              v19 = v18;
              v20 = [v14 superview];
              [(SBIconListView *)self convertPoint:v20 toView:v17, v19];
              v22 = v21;
              v24 = v23;

              v25 = SBLogWidgetDiscoverabilityMigration();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v36.x = v22;
                v36.y = v24;
                v26 = NSStringFromCGPoint(v36);
                *buf = v27;
                v33 = v26;
                _os_log_impl(&dword_1BEB18000, v25, OS_LOG_TYPE_DEFAULT, "introductionContainerView contained icon view reparent center(%@)", buf, 0xCu);
              }

              [v14 setCenter:{v22, v24}];
            }
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v9);
    }
  }

  if (self->_widgetIntroductionPopover)
  {
    [(SBIconListView *)self bringWidgetIntroductionPopoverToFront];
  }
}

- (double)_topSpacingForWidgetIntroductionPopoverView
{
  if ([(SBIconListView *)self isWidgetIntroductionVertical])
  {
    v3 = [(SBIconListView *)self layoutOrientation];
    result = 70.0;
    if ((v3 - 1) < 2)
    {
      return 50.0;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v7 = 33.0;
    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v7 = 15.0;
    }

    return self->_widgetIntroductionPopOverTopAnchorOffset + v7;
  }

  return result;
}

- (double)_leadingSpacingForWidgetIntroductionPopoverView
{
  v3 = [(SBIconListView *)self layoutOrientation]- 1;
  [(SBIconListView *)self frame];
  result = v4 / 3.0 + 50.0;
  if (v3 <= 1)
  {
    return v4 * 0.5 + 15.0;
  }

  return result;
}

- (void)removePronouncedContainerView
{
  v18 = *MEMORY[0x1E69E9840];
  [(SBIconListView *)self stopAnimatingPronouncedContainerAndPopoverView];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(SBIconWidgetIntroductionView *)self->_pronouncedContainerView subviews];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SBIconListView *)self addSubview:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  widgetIntroductionPopover = self->_widgetIntroductionPopover;
  if (widgetIntroductionPopover)
  {
    [(SBIconWidgetIntroductionPopoverView *)widgetIntroductionPopover removeFromSuperview];
    v10 = self->_widgetIntroductionPopover;
    self->_widgetIntroductionPopover = 0;
  }

  pronouncedContainerView = self->_pronouncedContainerView;
  if (pronouncedContainerView)
  {
    [(SBIconWidgetIntroductionView *)pronouncedContainerView removeFromSuperview];
    v12 = self->_pronouncedContainerView;
    self->_pronouncedContainerView = 0;
  }

  objc_storeWeak(&self->_widgetIntroductionDelegate, 0);
  [(SBIconListView *)self setIconsNeedLayout];
}

- (void)startAnimatingPronouncedContainerAndPopoverView
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__SBIconListView_startAnimatingPronouncedContainerAndPopoverView__block_invoke;
  v2[3] = &unk_1E8088C90;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:30 delay:v2 options:0 animations:0.65 completion:0.0];
}

uint64_t __65__SBIconListView_startAnimatingPronouncedContainerAndPopoverView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pronouncedContainerView];
  CGAffineTransformMakeScale(&v8, 1.01, 1.01);
  [v2 setTransform:&v8];

  v3 = [*(a1 + 32) isWidgetIntroductionVertical];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 widgetIntroductionPopoverLeadingAnchorConstraint];
    [*(a1 + 32) _leadingSpacingForWidgetIntroductionPopoverView];
  }

  else
  {
    v5 = [v4 widgetIntroductionPopoverTopAnchorConstraint];
    [*(a1 + 32) _topSpacingForWidgetIntroductionPopoverView];
  }

  [v5 setConstant:v6 + 2.0];

  return [*(a1 + 32) layoutIfNeeded];
}

- (void)stopAnimatingPronouncedContainerAndPopoverView
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__SBIconListView_stopAnimatingPronouncedContainerAndPopoverView__block_invoke;
  v2[3] = &unk_1E8088C90;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v2 options:0 animations:0.5 completion:0.0];
}

uint64_t __64__SBIconListView_stopAnimatingPronouncedContainerAndPopoverView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pronouncedContainerView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v3;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v8];

  v4 = [*(a1 + 32) isWidgetIntroductionVertical];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 widgetIntroductionPopoverLeadingAnchorConstraint];
    [*(a1 + 32) _leadingSpacingForWidgetIntroductionPopoverView];
  }

  else
  {
    v6 = [v5 widgetIntroductionPopoverTopAnchorConstraint];
    [*(a1 + 32) _topSpacingForWidgetIntroductionPopoverView];
  }

  [v6 setConstant:?];

  return [*(a1 + 32) layoutIfNeeded];
}

- (SBIconListViewDragDelegate)effectiveDragDelegate
{
  v3 = [(SBIconListView *)self dragDelegate];
  if (!v3)
  {
    v3 = [(SBIconListViewReorderingManager *)self->_reorderingManager reorderingDragDelegate];
  }

  return v3;
}

- (id)beginTransitionToIconLocation:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListView *)self iconLocation];
  v9 = BSEqualObjects();

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [[SBIconListViewIconLocationTransitionHandler alloc] initWithIconLocation:v6 reason:v7 iconListView:self];
    [(SBIconListView *)self setCurrentIconLocationTransitionHandler:v10];
    [(SBIconListView *)self setAlignsIconsOnPixelBoundaries:0];
    [(SBIconListView *)self setIconsNeedLayout];
  }

  return v10;
}

- (BOOL)isTransitioningIconLocation
{
  v2 = [(SBIconListView *)self currentIconLocationTransitionHandler];
  v3 = v2 != 0;

  return v3;
}

- (void)iconLocationTransitionHandler:(id)a3 setProgress:(double)a4
{
  v5 = a3;
  v6 = [(SBIconListView *)self currentIconLocationTransitionHandler];

  if (v6 == v5)
  {

    [(SBIconListView *)self layoutIconsNow];
  }
}

- (void)iconLocationTransitionHandler:(id)a3 completeTransition:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(SBIconListView *)self currentIconLocationTransitionHandler];

  v7 = v9;
  if (v6 == v9)
  {
    if (v4)
    {
      v8 = [v9 iconLocation];
      [(SBIconListView *)self setIconLocation:v8];
    }

    [(SBIconListView *)self setCurrentIconLocationTransitionHandler:0];
    [(SBIconListView *)self setAlignsIconsOnPixelBoundaries:1];
    [(SBIconListView *)self layoutIconsNow];
    v7 = v9;
  }
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    if (!self->_rotating)
    {
      [(SBIconListView *)self setIconsNeedLayout];

      [(SBIconListView *)self updateReversedLayoutBasedOnOrientation];
    }
  }
}

- (void)willRotateWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self _window];
  v70 = [v5 _toWindowOrientation];
  if (v70 == [(SBIconListView *)self orientation])
  {
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "Trying to rotate an icon list view to the orientation it already is; ignoring", buf, 2u);
    }

    goto LABEL_58;
  }

  if (!self->_rotating)
  {
    v8 = [(SBIconListView *)self layout];
    v9 = [(SBIconListView *)self isDisplayingWidgetIntroduction];
    v10 = [(SBIconListView *)self widgetIntroductionDelegate];
    if (v9)
    {
      [(SBIconListView *)self removePronouncedContainerView];
    }

    v11 = _os_activity_create(&dword_1BEB18000, "IconListView rotation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    v96 = buf;
    v97 = 0x3010000000;
    v99.opaque[0] = 0;
    v99.opaque[1] = 0;
    v98 = &unk_1BEECC529;
    os_activity_scope_enter(v11, &v99);
    self->_rotating = 1;
    v67 = [(SBIconListView *)self displayedModel];
    v72 = [v8 numberOfColumnsForOrientation:self->_orientation];
    v54 = v10;
    v12 = [v8 numberOfColumnsForOrientation:v70];
    v13 = v72;
    v64 = v12;
    if (v72 <= v12)
    {
      v13 = v12;
    }

    v58 = v13;
    v69 = self;
    v14 = [v8 numberOfRowsForOrientation:self->_orientation];
    v15 = [v8 numberOfRowsForOrientation:v70];
    v16 = v15;
    if (v14 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    v59 = v17;
    v74 = [v67 numberOfIcons];
    v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v74];
    v62 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v61 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v56 = [(SBIconListView *)self isRTL];
    v18 = [objc_opt_class() rotationAnchor];
    v19 = 1;
    if ((v18 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v19 = -1;
    }

    v57 = v19;
    v20 = -1;
    if (v18 <= 1)
    {
      v20 = 1;
    }

    v71 = v20;
    v55 = [(SBIconListView *)self iconLocation];
    v21 = [(SBIconListView *)self layoutMetrics];
    v68 = [v21 copy];

    v66 = [(SBIconListView *)v69 layoutMetricsForOrientation:v70];
    v22 = [v68 copy];
    v52 = v9;
    v49 = v11;
    v50 = v8;
    v51 = v5;
    v53 = v4;
    v23 = [v22 columns];
    v24 = [v22 rows];
    v25 = v58 - v23;
    if ((v58 - v23) >= 1)
    {
      v26 = [v22 gridCellInfo];
      v27 = [v26 gridCellInfoByAddingEmptyColumns:v25];

      [v22 setGridCellInfo:v27];
    }

    if ((v59 - v24) >= 1)
    {
      v28 = [v22 gridCellInfo];
      v29 = [v28 gridCellInfoByAddingEmptyRows:{v59 - objc_msgSend(v22, "rows")}];

      [v22 setGridCellInfo:v29];
    }

    [v22 setColumns:v58];
    [v22 setRows:v59];
    if (v56)
    {
      v30 = -v25;
    }

    else
    {
      v30 = 0;
    }

    [v22 setColumnOffset:v30];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__SBIconListView_willRotateWithTransitionCoordinator___block_invoke;
    aBlock[3] = &unk_1E808CFE8;
    v92 = v72;
    v93 = v16;
    v94 = v64;
    v91 = v14;
    aBlock[4] = v69;
    v47 = v22;
    v88 = v47;
    v89 = v55;
    v48 = v63;
    v90 = v48;
    v65 = _Block_copy(aBlock);
    if (!v59)
    {
      goto LABEL_57;
    }

    v31 = 0;
    v32 = 0;
    v73 = 0;
    v33 = v57;
    while (1)
    {
      if (v31 == v73 && v31 >= v74)
      {
        goto LABEL_57;
      }

      v60 = v32;
      v34 = v58;
      v35 = v71;
      if (!v58)
      {
        goto LABEL_56;
      }

      while (v31 != v73 || v31 < v74)
      {
        v36 = [(SBIconListView *)v69 indexForCoordinate:v35 forOrientation:v33 metrics:v69->_orientation, v68, v47, v48];
        v37 = [(SBIconListView *)v69 indexForCoordinate:v35 forOrientation:v33 metrics:v70, v66];
        if (v36 >= v74)
        {
          goto LABEL_38;
        }

        v38 = [v67 iconAtIndex:v36];
        if (v38)
        {
          if (![v62 containsObject:v38])
          {
            [v62 addObject:v38];
            ++v31;
            goto LABEL_39;
          }

LABEL_38:
          v38 = 0;
        }

LABEL_39:
        if (v37 < v74)
        {
          v39 = [v67 iconAtIndex:v37];
          if (v39)
          {
            if (![v61 containsObject:v39])
            {
              [v61 addObject:v39];
              ++v73;
              v41 = v38 != 0;
              v40 = 1;
LABEL_47:
              v42 = [v38 gridSizeClass];
              v43 = [v39 gridSizeClass];
              v44 = v43;
              if ((v40 & v41) != 1 || v42 == v43 || [v42 isEqualToString:v43])
              {
                v65[2](v65, v38, v39, v35, v33);
              }

              else
              {
                v65[2](v65, v38, 0, v35, v33);
                v65[2](v65, 0, v39, v35, v33);
              }

              goto LABEL_53;
            }
          }
        }

        if (v38)
        {
          v40 = 0;
          v39 = 0;
          v41 = 1;
          goto LABEL_47;
        }

LABEL_53:

        v35 += v71;
        if (!--v34)
        {
          goto LABEL_56;
        }
      }

      v73 = v31;
LABEL_56:
      v32 = v60 + 1;
      v33 += v57;
      if (v60 + 1 == v59)
      {
LABEL_57:
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __54__SBIconListView_willRotateWithTransitionCoordinator___block_invoke_2;
        v81[3] = &unk_1E808D010;
        v81[4] = v69;
        v83 = v70;
        v84 = v58;
        v85 = v59;
        v86 = v56;
        v82 = v48;
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __54__SBIconListView_willRotateWithTransitionCoordinator___block_invoke_3;
        v75[3] = &unk_1E808D038;
        v45 = v82;
        v76 = v45;
        v77 = v69;
        v80 = v52;
        v46 = v54;
        v78 = v46;
        v79 = buf;
        v4 = v53;
        [v53 animateAlongsideTransition:v81 completion:v75];

        _Block_object_dispose(buf, 8);
        v5 = v51;
        goto LABEL_58;
      }
    }
  }

  v7 = SBLogIcon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "Trying to rotate an icon list view that is already rotating; ignoring", buf, 2u);
  }

  [(SBIconListView *)self setOrientation:v70];
  [(SBIconListView *)self setIconsNeedLayout];
LABEL_58:
}

void __54__SBIconListView_willRotateWithTransitionCoordinator___block_invoke(uint64_t a1, void *a2, void *a3, unint64_t a4, unint64_t a5)
{
  v27 = a2;
  v9 = a3;
  if (v27 == v9)
  {
    v11 = 0;
    v10 = 0;
    if (v27)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v27)
    {
      if (v9)
      {
        v10 = 0;
        v11 = 3;
      }

      else if (a5 >= *(a1 + 80))
      {
        v11 = 1;
        v10 = 1;
      }

      else
      {
        v10 = a4 >= *(a1 + 88);
        v11 = 1;
      }

LABEL_16:
      v12 = [v27 gridSizeClass];
      if (v9)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    v10 = a5 >= *(a1 + 64) || a4 >= *(a1 + 72);
    v11 = 2;
  }

  v12 = [v9 gridSizeClass];
  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v12 == @"SBHIconGridSizeClassDefault" || [(__CFString *)v12 isEqualToString:?])
  {
    [*(a1 + 32) rectForDefaultSizedCellAtCoordinate:a4 metrics:{a5, *(a1 + 40)}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    goto LABEL_21;
  }

LABEL_20:
  [*(a1 + 32) originForIconAtCoordinate:a4 metrics:{a5, *(a1 + 40)}];
  v14 = v21;
  v16 = v22;
  [*(a1 + 32) iconImageSizeForGridSizeClass:v12];
  v18 = v23;
  v20 = v24;
LABEL_21:
  LOBYTE(v26) = v10;
  v25 = [[SBIconRotationContainer alloc] initWithFrame:v27 startIcon:v9 endIcon:*(a1 + 32) listView:a4 coordinate:a5 location:*(a1 + 48) transitionAnimation:v14 offscreen:v16, v18, v20, v11, v26];
  [(SBIconRotationContainer *)v25 prepareToTransition];
  [*(a1 + 56) addObject:v25];
  [*(a1 + 32) addSubview:v25];
}

void __54__SBIconListView_willRotateWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setOrientation:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 544);
  *(v2 + 544) = 0;

  v4 = [*(a1 + 32) layoutMetrics];
  v5 = [v4 copy];

  v6 = *(a1 + 56);
  v7 = v6 - [v5 columns];
  v8 = [v5 gridCellInfo];
  v9 = [v8 gridCellInfoByAddingEmptyColumns:v7];

  v10 = [v9 gridCellInfoByAddingEmptyRows:{*(a1 + 64) - objc_msgSend(v5, "rows")}];

  v24 = v10;
  [v5 setGridCellInfo:v10];
  [v5 setColumns:*(a1 + 56)];
  [v5 setRows:*(a1 + 64)];
  if (*(a1 + 72))
  {
    v11 = -v7;
  }

  else
  {
    v11 = 0;
  }

  [v5 setColumnOffset:v11];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = *(a1 + 40);
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [v17 startIcon];
        v19 = [v17 endIcon];
        v20 = v19;
        if (v18)
        {
          v21 = [v18 gridSizeClass];
          v23 = [v17 coordinate];
          if (v20)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v21 = [v19 gridSizeClass];
          v23 = [v17 coordinate];
          if (!v20)
          {
LABEL_11:
            [*(a1 + 32) centerForIconCoordinate:v23 metrics:{v22, v5}];
            goto LABEL_14;
          }
        }

        [*(a1 + 32) rectForDefaultSizedCellsOfSizeClass:v21 startingAtCoordinate:v23 metrics:{v22, v5}];
        UIRectGetCenter();
LABEL_14:
        [v17 setCenter:?];
        [v17 performTransition];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }
}

void __54__SBIconListView_willRotateWithTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 concludeTransition];
        [v7 removeFromSuperview];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  *(*(a1 + 40) + 418) = 0;
  [*(a1 + 40) layoutIconsNow];
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 40) addPronouncedContainerViewWithDelegate:*(a1 + 48) vertical:{objc_msgSend(*(a1 + 40), "isWidgetIntroductionVertical")}];
  }

  os_activity_scope_leave((*(*(a1 + 56) + 8) + 32));
}

- (void)setAddsFocusGuidesForWrapping:(BOOL)a3
{
  if (self->_addsFocusGuidesForWrapping != a3)
  {
    self->_addsFocusGuidesForWrapping = a3;
    [(SBIconListView *)self setIconsNeedLayout];
  }
}

SBHFocusGuideView *__35__SBIconListView_layoutFocusGuides__block_invoke(id *a1)
{
  if ([a1[4] count])
  {
    v2 = [a1[4] lastObject];
    [a1[4] removeLastObject];
  }

  else
  {
    v2 = objc_alloc_init(SBHFocusGuideView);
    [a1[5] addSubview:v2];
  }

  [a1[6] addObject:v2];

  return v2;
}

uint64_t __35__SBIconListView_layoutFocusGuides__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  [*(a1 + 32) rectForDefaultSizedCellAtCoordinate:a2 metrics:{a3, *(a1 + 40)}];
  v11 = v10;
  v12 = 56;
  if (a6)
  {
    v12 = 64;
  }

  v13 = *(a1 + v12);
  v14 = *(a1 + 72);
  v15 = [*(a1 + 32) iconAtCoordinate:a4 metrics:{a5, *(a1 + 40)}];
  if (v15)
  {
    v16 = [*(a1 + 32) displayedIconViewForIcon:v15];
    if (v16)
    {
      v17 = v16;
      v18 = (*(*(a1 + 48) + 16))();
      [v18 setFrame:{v13, v11, 10.0, v14}];
      [v18 setTargetView:v17];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_iconMatchingCoordinateBeginsInThatRow:(SBIconCoordinate)a3 metrics:(id)a4
{
  row = a3.row;
  v6 = [(SBIconListView *)self iconAtCoordinate:a3.column metrics:a3.row, a4];
  [(SBIconListView *)self coordinateForIcon:v6];
  LOBYTE(row) = v7 == row;

  return row;
}

- (SBIconCoordinate)_coordinateBeforeCoordinate:(SBIconCoordinate)a3 rows:(unint64_t)a4 columns:(unint64_t)a5 metrics:(id)a6
{
  row = a3.row;
  column = a3.column;
  v10 = a6;
  if (column < 2)
  {
    if (row < 2)
    {
      row = 0x7FFFFFFFFFFFFFFFLL;
      a5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (![(SBIconListView *)self _iconMatchingCoordinateBeginsInThatRow:a5 metrics:--row, v10])
    {
      v11 = [(SBIconListView *)self iconAtCoordinate:a5 metrics:row, v10];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 gridSizeClass];
        v14 = [(SBIconListView *)self iconGridSizeForClass:v13];
      }

      else
      {
        v14 = 1;
      }

      a5 -= v14;
    }
  }

  else
  {
    a5 = column - 1;
  }

  v15 = a5;
  v16 = row;
  result.row = v16;
  result.column = v15;
  return result;
}

- (SBIconCoordinate)_coordinateAfterCoordinate:(SBIconCoordinate)a3 rows:(unint64_t)a4 columns:(unint64_t)a5 metrics:(id)a6
{
  row = a3.row;
  column = a3.column;
  v11 = a6;
  if (column >= a5)
  {
    if (row >= a4)
    {
      row = 0x7FFFFFFFFFFFFFFFLL;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      ++row;
      v12 = 1;
      if (![(SBIconListView *)self _iconMatchingCoordinateBeginsInThatRow:1 metrics:row, v11])
      {
        v13 = [(SBIconListView *)self iconAtCoordinate:1 metrics:row, v11];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 gridSizeClass];
          v12 = [(SBIconListView *)self iconGridSizeForClass:v15]+ 1;
        }

        else
        {
          v12 = 2;
        }
      }
    }
  }

  else
  {
    v12 = column + 1;
  }

  v16 = v12;
  v17 = row;
  result.row = v17;
  result.column = v16;
  return result;
}

- (id)addPlaceholderAtGridCellIndex:(unint64_t)a3 gridSizeClass:(id)a4 reason:(id)a5 options:(unint64_t)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = [(SBIconListView *)self model];
  [(SBIconListView *)self gridCellInfoOptions];
  v13 = SBLogIcon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(SBIconListView *)self gridSizeClassDomain];
    v15 = [v14 descriptionForGridSizeClass:v10];
    v21 = 134218754;
    v22 = self;
    v23 = 2048;
    v24 = a3;
    v25 = 2114;
    v26 = v15;
    v27 = 2114;
    v28 = v11;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "%p: add placeholder at grid cell index %lu size '%{public}@ reason %{public}@", &v21, 0x2Au);
  }

  v16 = [[SBIconListViewPlaceholderAssertion alloc] initWithGridCellIndex:a3 gridSizeClass:v10 reason:v11 options:a6 listView:self];
  placeholderAssertions = self->_placeholderAssertions;
  if (!placeholderAssertions)
  {
    v18 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v19 = self->_placeholderAssertions;
    self->_placeholderAssertions = v18;

    placeholderAssertions = self->_placeholderAssertions;
  }

  [(NSHashTable *)placeholderAssertions addObject:v16];
  [(SBIconListView *)self regenerateTemporaryDisplayedModelIfNecessary];
  [(SBIconListView *)self _informLayoutObserversNumberOfPlaceholdersOrLayoutHiddenIconsChanged];

  return v16;
}

- (id)addPlaceholderRepresentingIcon:(id)a3 reason:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SBIconListView *)self displayedModel];
  v11 = [v10 indexForIcon:v8];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(SBIconListView *)self model];
    v13 = [v12 indexForIcon:v8];
    v14 = [v12 gridCellInfoWithOptions:{-[SBIconListView gridCellInfoOptions](self, "gridCellInfoOptions")}];
    v15 = [v14 gridCellIndexForIconIndex:v13];
  }

  else
  {
    v16 = v11;
    v12 = [(SBIconListView *)self gridCellInfo];
    v15 = [v12 gridCellIndexForIconIndex:v16];
  }

  v17 = [(SBIconListView *)self addPlaceholderAtGridCellIndex:v15 representingIcon:v8 reason:v9 options:a5];

  return v17;
}

- (id)addPlaceholderAtGridCellIndex:(unint64_t)a3 representingIcon:(id)a4 reason:(id)a5 options:(unint64_t)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = [(SBIconListView *)self model];
  [(SBIconListView *)self gridCellInfoOptions];
  v13 = SBLogIcon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134218754;
    v20 = self;
    v21 = 2112;
    v22 = v10;
    v23 = 2048;
    v24 = a3;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "%p: add placeholder for icon %@ at grid cell index %lu reason %{public}@", &v19, 0x2Au);
  }

  v14 = [[SBIconListViewPlaceholderAssertion alloc] initWithGridCellIndex:a3 representedIcon:v10 reason:v11 options:a6 listView:self];
  placeholderAssertions = self->_placeholderAssertions;
  if (!placeholderAssertions)
  {
    v16 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v17 = self->_placeholderAssertions;
    self->_placeholderAssertions = v16;

    placeholderAssertions = self->_placeholderAssertions;
  }

  [(NSHashTable *)placeholderAssertions addObject:v14];
  [(SBIconListView *)self regenerateTemporaryDisplayedModelIfNecessary];
  [(SBIconListView *)self _informLayoutObserversNumberOfPlaceholdersOrLayoutHiddenIconsChanged];

  return v14;
}

- (void)placeholderAssertionDidChangePosition:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218496;
    v7 = self;
    v8 = 2048;
    v9 = v4;
    v10 = 2048;
    v11 = [v4 gridCellIndex];
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%p: placeholder %p did change position to grid cell index %lu", &v6, 0x20u);
  }

  if ([(NSHashTable *)self->_placeholderAssertions containsObject:v4])
  {
    [(SBIconListView *)self regenerateTemporaryDisplayedModelIfNecessary];
  }
}

- (void)removePlaceholderAssertion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218496;
    v10 = self;
    v11 = 2048;
    v12 = v4;
    v13 = 2048;
    v14 = [v4 gridCellIndex];
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%p: remove placeholder %p from grid cell index %lu", &v9, 0x20u);
  }

  if ([(NSHashTable *)self->_placeholderAssertions containsObject:v4])
  {
    v6 = [v4 placeholderIcon];
    if (v6)
    {
      v7 = [(SBIconListView *)self removedIcons];
      [v7 addObject:v6];
    }

    [(NSHashTable *)self->_placeholderAssertions removeObject:v4];
    if (![(NSHashTable *)self->_placeholderAssertions count])
    {
      placeholderAssertions = self->_placeholderAssertions;
      self->_placeholderAssertions = 0;
    }

    [(SBIconListView *)self regenerateTemporaryDisplayedModelIfNecessary];
    [(SBIconListView *)self _informLayoutObserversNumberOfPlaceholdersOrLayoutHiddenIconsChanged];
  }
}

- (void)_informLayoutObserversNumberOfPlaceholdersOrLayoutHiddenIconsChanged
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_layoutObservers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconListViewDidChangeNumberOfPlaceholdersOrLayoutHiddenIcons:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (unint64_t)gridCellIndexForFirstPlaceholder
{
  v2 = [(NSHashTable *)self->_placeholderAssertions objectEnumerator];
  v3 = [v2 nextObject];

  if (v3)
  {
    v4 = [v3 effectiveGridCellIndex];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (id)beginHidingIconsFromLayout:(id)a3 reason:(id)a4 options:(unint64_t)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = SBLogIcon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v28 = self;
    v29 = 2112;
    v30 = v8;
    v31 = 2114;
    v32 = v9;
    v33 = 2048;
    v34 = a5;
    _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "%p: begin hiding icons %@ for reason '%{public}@' options: %lx", buf, 0x2Au);
  }

  v11 = [[SBHIconLayoutHidingAssertion alloc] initWithDelegate:self icons:v8 reason:v9 options:a5];
  layoutHidingAssertions = self->_layoutHidingAssertions;
  if (!layoutHidingAssertions)
  {
    v13 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v14 = self->_layoutHidingAssertions;
    self->_layoutHidingAssertions = v13;

    layoutHidingAssertions = self->_layoutHidingAssertions;
  }

  [(NSHashTable *)layoutHidingAssertions addObject:v11];
  [(SBIconListView *)self regenerateTemporaryDisplayedModelIfNecessary];
  if (a5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [(SBIconListView *)self displayedIconViewForIcon:*(*(&v22 + 1) + 8 * i), v22];
          [v20 setAlpha:0.0];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }
  }

  if ((a5 & 2) != 0)
  {
    [(SBIconListView *)self layoutIconsIfNeededWithAnimationType:0 options:0];
  }

  [(SBIconListView *)self _informLayoutObserversNumberOfPlaceholdersOrLayoutHiddenIconsChanged];

  return v11;
}

- (void)layoutHidingAssertionDidChange:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 icons];
    v7 = 134218498;
    v8 = self;
    v9 = 2048;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%p: icon hiding assertion %p did change icons %@", &v7, 0x20u);
  }

  if ([(NSHashTable *)self->_layoutHidingAssertions containsObject:v4])
  {
    [(SBIconListView *)self regenerateTemporaryDisplayedModelIfNecessary];
    [(SBIconListView *)self _informLayoutObserversNumberOfPlaceholdersOrLayoutHiddenIconsChanged];
  }
}

- (void)layoutHidingAssertionDidInvalidate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = self;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%p: remove icon hiding assertion %p", &v7, 0x16u);
  }

  if ([(NSHashTable *)self->_layoutHidingAssertions containsObject:v4])
  {
    [(NSHashTable *)self->_layoutHidingAssertions removeObject:v4];
    if (![(NSHashTable *)self->_layoutHidingAssertions count])
    {
      layoutHidingAssertions = self->_layoutHidingAssertions;
      self->_layoutHidingAssertions = 0;
    }

    [(SBIconListView *)self regenerateTemporaryDisplayedModelIfNecessary];
    [(SBIconListView *)self _informLayoutObserversNumberOfPlaceholdersOrLayoutHiddenIconsChanged];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_iconSettings == a3)
  {
    [(SBIconListView *)self _applyIconPaddingSettings];
  }
}

- (void)_applyIconPaddingSettings
{
  [(SBHIconSettings *)self->_iconSettings iconHitboxPaddingX];
  self->_desiredLaserPaddingX = v3;
  [(SBHIconSettings *)self->_iconSettings iconHitboxPaddingY];
  self->_desiredLaserPaddingY = v4;
  self->_laserPadUsesAllAvailableSpace = [(SBHIconSettings *)self->_iconSettings alwaysHitTestNearestIcon];
  [(SBIconListView *)self setIconsNeedLayout];

  [(SBIconListView *)self setNeedsLayout];
}

- (UIEdgeInsets)cursorHitTestingInsetsForIconSpacing:(CGSize)a3
{
  desiredLaserPaddingX = fabs(a3.width) * 0.5;
  desiredLaserPaddingY = fabs(a3.height) * 0.5;
  if (!self->_laserPadUsesAllAvailableSpace)
  {
    if (desiredLaserPaddingX > self->_desiredLaserPaddingX)
    {
      desiredLaserPaddingX = self->_desiredLaserPaddingX;
    }

    if (desiredLaserPaddingY > self->_desiredLaserPaddingY)
    {
      desiredLaserPaddingY = self->_desiredLaserPaddingY;
    }
  }

  v5 = -desiredLaserPaddingY;
  v6 = -desiredLaserPaddingX;
  v7 = v5;
  v8 = v6;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)iconList:(id)a3 didAddIcon:(id)a4
{
  v5 = a4;
  [v5 addObserver:self];
  v6 = [(SBIconListView *)self removedIcons];
  [v6 removeObject:v5];

  [(SBIconListView *)self updateIconViewForIcon:v5 toIcon:v5];
  [(SBIconListView *)self regenerateTemporaryDisplayedModelIfNecessary];
  [(SBIconListView *)self setIconsNeedLayout];

  [(SBIconListView *)self invalidateIntrinsicContentSize];
}

- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SBIconListView *)self removedIcons];
  [v9 addObject:v8];

  v10 = [(SBIconListView *)self removedIcons];
  [v10 removeObject:v7];

  [v8 removeObserver:self];
  [(SBIconListView *)self updateIconViewForIcon:v8 toIcon:v7];

  [v7 addObserver:self];
  [(SBIconListView *)self regenerateTemporaryDisplayedModelIfNecessary];
  [(SBIconListView *)self setIconsNeedLayout];

  [(SBIconListView *)self invalidateIntrinsicContentSize];
}

- (void)iconList:(id)a3 didRemoveIcon:(id)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  [v5 removeObserver:self];
  v6 = [(SBIconListView *)self removedIcons];
  [v6 addObject:v5];

  [(SBIconListView *)self _removeCaptureOnlyBackgroundViewForRemovedIconIfNecessary:v5];
  [(SBIconListView *)self regenerateTemporaryDisplayedModelIfNecessary];
  [(SBIconListView *)self setIconsNeedLayout];
  [(SBIconListView *)self invalidateIntrinsicContentSize];
  v8[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  [(SBIconListView *)self _cleanupIconViewsForRemovedIcons:v7];
}

- (void)iconList:(id)a3 didMoveIcon:(id)a4
{
  [(SBIconListView *)self regenerateTemporaryDisplayedModelIfNecessary:a3];

  [(SBIconListView *)self setIconsNeedLayout];
}

- (void)iconView:(id)a3 willCancelDragForItem:(id)a4
{
  v5 = a3;
  if ([(NSMutableSet *)self->_draggingIconViews containsObject:?])
  {
    [(SBIconListView *)self setCanceledDraggingIconView:v5];
    [(SBIconListView *)self restoreDraggedIconView:v5];
  }
}

- (void)iconViewDidEndDrag:(id)a3
{
  v8 = a3;
  if ([(NSMutableSet *)self->_draggingIconViews containsObject:?])
  {
    [(NSMutableSet *)self->_draggingIconViews removeObject:v8];
    v4 = [v8 superview];

    if (v4 == self)
    {
      [v8 setAlpha:1.0];
      v5 = [v8 icon];
      v6 = [(SBIconListView *)self canceledDraggingIconView];

      if (v6 == v8)
      {
        [(SBIconListView *)self setCanceledDraggingIconView:0];
      }

      else if (!v5 || ([(SBIconListView *)self displayedIconViewForIcon:v5], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != v8))
      {
        [(SBIconListView *)self removeIconView:v8];
      }
    }
  }
}

- (void)_insertOrRemoveCaptureOnlyBackgroundViewIfNecessaryForIconView:(id)a3
{
  v6 = a3;
  v4 = [v6 backgroundViewGroupNameBase];

  if (v4)
  {
    [(SBIconListView *)self _insertCaptureOnlyBackgroundViewForInsertingIconViewIfNecessary:v6];
  }

  else
  {
    v5 = [v6 icon];

    [(SBIconListView *)self _removeCaptureOnlyBackgroundViewForRemovedIconIfNecessary:v5];
    v6 = v5;
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBIconListView;
    v5 = [(SBIconListView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)_captureOnlyBackgroundAssertionDidInvalidate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17 = v4;
    v5 = self;
    objc_sync_enter(v5);
    iconsToCaptureOnlyBackgroundAssertions = v5->_iconsToCaptureOnlyBackgroundAssertions;
    v7 = [v17 icon];
    [(NSMapTable *)iconsToCaptureOnlyBackgroundAssertions removeObjectForKey:v7];

    v8 = [v17 groupName];
    v9 = [(NSMapTable *)v5->_iconsToCaptureOnlyBackgroundAssertions objectEnumerator];
    v10 = 0;
    do
    {
      v11 = [v9 nextObject];

      if (!v11)
      {
        break;
      }

      v12 = [v11 groupName];
      v13 = [v12 isEqualToString:v8];

      v10 = v11;
    }

    while ((v13 & 1) == 0);
    if ([(NSMapTable *)v5->_iconsToCaptureOnlyBackgroundAssertions count])
    {
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v14 = v5->_iconsToCaptureOnlyBackgroundAssertions;
      v5->_iconsToCaptureOnlyBackgroundAssertions = 0;

      if (!v11)
      {
LABEL_9:
        v15 = [(NSMutableDictionary *)v5->_groupNamesToCaptureOnlyBackgroundViews objectForKey:v8];
        [v15 removeFromSuperview];
        [(NSMutableDictionary *)v5->_groupNamesToCaptureOnlyBackgroundViews removeObjectForKey:v8];
        if (![(NSMutableDictionary *)v5->_groupNamesToCaptureOnlyBackgroundViews count])
        {
          groupNamesToCaptureOnlyBackgroundViews = v5->_groupNamesToCaptureOnlyBackgroundViews;
          v5->_groupNamesToCaptureOnlyBackgroundViews = 0;
        }
      }
    }

    objc_sync_exit(v5);
    v4 = v17;
  }
}

- (void)_insertCaptureOnlyBackgroundViewForInsertingIconViewIfNecessary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 backgroundViewGroupNameBase];
    if ([v6 length])
    {
      v7 = self;
      objc_sync_enter(v7);
      v8 = [(NSMutableDictionary *)v7->_groupNamesToCaptureOnlyBackgroundViews objectForKey:v6];

      if (!v8)
      {
        v9 = [v5 newCaptureOnlyBackgroundView];
        if (v9)
        {
          [(SBIconListView *)v7 insertSubview:v9 atIndex:0];
          [(SBIconListView *)v7 bounds];
          [v9 setFrame:?];
          [v9 setAutoresizingMask:18];
          groupNamesToCaptureOnlyBackgroundViews = v7->_groupNamesToCaptureOnlyBackgroundViews;
          if (!groupNamesToCaptureOnlyBackgroundViews)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v12 = v7->_groupNamesToCaptureOnlyBackgroundViews;
            v7->_groupNamesToCaptureOnlyBackgroundViews = v11;

            groupNamesToCaptureOnlyBackgroundViews = v7->_groupNamesToCaptureOnlyBackgroundViews;
          }

          [(NSMutableDictionary *)groupNamesToCaptureOnlyBackgroundViews setObject:v9 forKey:v6];
        }
      }

      objc_initWeak(&location, v7);
      v13 = [v5 icon];
      v14 = [(NSMapTable *)v7->_iconsToCaptureOnlyBackgroundAssertions objectForKey:v13];
      v15 = v14;
      if (!v14 || ([v14 groupName], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", v6), v16, (v17 & 1) == 0))
      {
        [v15 invalidate];
        v18 = [SBIconListViewCaptureOnlyBackgroundAssertion alloc];
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __82__SBIconListView__insertCaptureOnlyBackgroundViewForInsertingIconViewIfNecessary___block_invoke;
        v26 = &unk_1E808D0B0;
        objc_copyWeak(&v27, &location);
        v19 = [(SBIconListViewCaptureOnlyBackgroundAssertion *)v18 initWithIcon:v13 groupName:v6 invalidation:&v23];
        iconsToCaptureOnlyBackgroundAssertions = v7->_iconsToCaptureOnlyBackgroundAssertions;
        if (!iconsToCaptureOnlyBackgroundAssertions)
        {
          v21 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          v22 = v7->_iconsToCaptureOnlyBackgroundAssertions;
          v7->_iconsToCaptureOnlyBackgroundAssertions = v21;

          iconsToCaptureOnlyBackgroundAssertions = v7->_iconsToCaptureOnlyBackgroundAssertions;
        }

        [(NSMapTable *)iconsToCaptureOnlyBackgroundAssertions setObject:v19 forKey:v13, v23, v24, v25, v26];

        objc_destroyWeak(&v27);
      }

      objc_destroyWeak(&location);
      objc_sync_exit(v7);
    }
  }
}

void __82__SBIconListView__insertCaptureOnlyBackgroundViewForInsertingIconViewIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _captureOnlyBackgroundAssertionDidInvalidate:v3];
}

- (void)_removeCaptureOnlyBackgroundViewForRemovedIconIfNecessary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMapTable *)v5->_iconsToCaptureOnlyBackgroundAssertions objectForKey:v7];
    [v6 invalidate];

    objc_sync_exit(v5);
    v4 = v7;
  }
}

- (void)_addIconViewsForIcons:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListView *)self layoutMetrics];
  [(SBIconListView *)self _addIconViewsForIcons:v4 metrics:v5];
}

- (void)_addIconViewsForIcons:(id)a3 metrics:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  self->_inLayout = 1;
  v29 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListView_willLayoutIconView_];
  v28 = [(SBIconListView *)self layoutOrientation];
  [v7 iconContentScale];
  v9 = v8;
  v30 = v7;
  v27 = [v7 adjustedIconContentScaleToFit];
  v10 = [(SBIconListView *)self pausesIconsForScrolling];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        v17 = [(SBIconListView *)self displayedIconViewForIcon:v16];

        if (!v17)
        {
          v18 = [(SBIconListView *)self iconViewForIcon:v16];
          [v18 setOrientation:v28];
          [(SBIconListView *)self centerForIcon:v16 metrics:v30];
          v20 = v19;
          v22 = v21;
          v23 = [(SBIconListView *)self coordinateForIcon:v16];
          v25 = v24;
          [(SBIconListView *)self addSubview:v18];
          [v29 iconListView:self willLayoutIconView:v18];
          v31[0] = v20;
          v31[1] = v22;
          v31[2] = v9;
          v32 = 0u;
          v33 = 0u;
          v34 = 0;
          v35 = v23;
          v36 = v25;
          v37 = 257;
          memset(v38, 0, sizeof(v38));
          [(SBIconListView *)self performDefaultAnimatedLayoutUpdateForIconView:v18 withParameters:v31];
          [v18 layoutIfNeeded];
          [(SBIconListView *)self _insertCaptureOnlyBackgroundViewForInsertingIconViewIfNecessary:v18];
          [v18 setPaused:v10 forReason:8];
          if (v27)
          {
            [v18 setIconContentScalingEnabled:1];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v13);
  }

  v26 = [(SBIconListView *)self effectiveLayoutDelegateForSelector:sel_iconListViewDidLayoutIcons_];
  [v26 iconListViewDidLayoutIcons:self];
  self->_inLayout = 0;
  [(SBIconListView *)self layoutFocusGuides];
  if ([(SBIconListView *)self isDisplayingWidgetIntroduction])
  {
    [(SBIconListView *)self layoutWidgetIntroductionViews];
  }
}

- (void)_removeIconViewsForIcons:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_iconViews objectForKey:v9];
        if (v10)
        {
          [(NSMapTable *)self->_iconViews removeObjectForKey:v9];
          [(SBIconListView *)self removeIconView:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_cleanupIconViewsForRemovedIcons:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_iconViews objectForKey:v9];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 superview];

          if (!v12)
          {
            [(NSMapTable *)self->_iconViews removeObjectForKey:v9];
            [(SBIconListView *)self removeIconView:v11];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)updateIconViewForIcon:(id)a3 toIcon:(id)a4
{
  v6 = a4;
  v11 = [(SBIconListView *)self temporarilyMappedIconForIcon:a3];
  v7 = [(SBIconListView *)self temporarilyMappedIconForIcon:v6];

  v8 = [(NSMapTable *)self->_iconViews objectForKey:v11];
  if (v7 == v11)
  {
    v10 = 0;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = [(NSMapTable *)self->_iconViews objectForKey:v7];

    v10 = v9 != 0;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if (!v10)
  {
    [(NSMapTable *)self->_iconViews removeObjectForKey:v11];
    [(SBIconListView *)self configureIconView:v8 forIcon:v7];
    [(NSMapTable *)self->_iconViews setObject:v8 forKey:v7];
  }

LABEL_7:
}

- (void)forgetIconView:(id)a3
{
  v5 = a3;
  if ([(SBIconListView *)self isDisplayingIconView:?])
  {
    v4 = [v5 icon];
    [(NSMapTable *)self->_iconViews removeObjectForKey:v4];
    [(NSMutableSet *)self->_draggingIconViews removeObject:v5];
    [v5 setEligibleForReuse:0];
    [(SBIconListView *)self setIconsNeedLayout];
  }
}

- (id)_iconForDragItem:(id)a3
{
  v4 = [a3 sbh_appDragLocalContext];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 droppedIconIdentifier];
    if (!v6)
    {
      v6 = [v5 uniqueIdentifier];
    }

    v7 = [(SBIconListView *)self model];
    v8 = [v7 iconWithIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)restoreDraggedIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 superview];

  if (v5 == self)
  {
    v7 = [v4 icon];
    if (v7)
    {
      v8 = [(SBIconListView *)self displayedIconViewForIcon:v7];
      v9 = v8;
      v6 = v8 != v4;
      if (v8 != v4)
      {
        if (v8)
        {
          [(SBIconListView *)self removeIconView:v8];
        }

        [(SBIconListView *)self configureIconView:v4 forIcon:v7];
        [(NSMapTable *)self->_iconViews setObject:v4 forKey:v7];
        [v4 setAlpha:1.0];
        [(SBIconListView *)self centerForDraggedIconView:v4];
        [v4 setCenter:?];
        [(NSMutableSet *)self->_draggingIconViews removeObject:v4];
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

- (CGPoint)centerForDraggedIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  v6 = [(SBIconListView *)self model];
  v7 = [(SBIconListView *)self layoutMetricsForModel:v6];
  v8 = [v7 gridCellInfo];
  v9 = [v6 indexForIcon:v5];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 center];
  }

  else
  {
    v12 = -[SBIconListView iconGridRangeForGridCellIndex:metrics:options:](self, "iconGridRangeForGridCellIndex:metrics:options:", [v8 gridCellIndexForIconIndex:v9], v7, 0);
    [(SBIconListView *)self fullRectForGridRange:v12 metrics:v13, v7];
    UIRectGetCenter();
  }

  v14 = v10;
  v15 = v11;

  v16 = v14;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)clearDraggedIconViews
{
  v3 = [MEMORY[0x1E695DFD8] set];
  [(SBIconListView *)self clearDraggedIconViewsExcludingSet:v3];
}

- (void)clearDraggedIconViewsExcludingSet:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableSet *)self->_draggingIconViews mutableCopy];
  [v5 intersectSet:v4];
  v6 = [(NSMutableSet *)self->_draggingIconViews mutableCopy];
  [v6 minusSet:v4];
  if ([v5 count])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&self->_draggingIconViews, v7);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v13 icon];
        if (!v14 || ([(SBIconListView *)self displayedIconViewForIcon:v14], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 != v13))
        {
          [(SBIconListView *)self removeIconView:v13 force:1];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(SBIconListView *)self setCanceledDraggingIconView:0];
}

- (id)iconViewForIcon:(id)a3 location:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListView *)self iconLocation];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(SBIconListView *)self displayedIconViewForIcon:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListView *)self iconLocation];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [(SBIconListView *)self displayedIconViewForIcon:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListView *)self iconLocation];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(SBIconListView *)self displayedIconViewForIcon:v6];
  }

  return v10;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListView *)self iconLocation];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(SBIconListView *)self displayedIconViewForIcon:v6];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListView *)self iconLocation];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [(SBIconListView *)self displayedIconViewForIcon:v6];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isDisplayingIcon:(id)a3
{
  v3 = [(SBIconListView *)self displayedIconViewForIcon:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListView *)self iconLocation];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [v6 superview];
    v11 = v10 == self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v7 = a4;
  v6 = [(SBIconListView *)self displayedIconViewForIcon:a3];
  if (v6)
  {
    v7[2](v7, v6);
  }
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SBIconListView *)self icons];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(SBIconListView *)self displayedIconViewForIcon:*(*(&v12 + 1) + 8 * i)];
        if (v10)
        {
          v11 = 0;
          v4[2](v4, v10, &v11);
          if (v11)
          {

            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (id)succinctDescription
{
  v2 = [(SBIconListView *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconListView *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconListView *)self succinctDescriptionBuilder];
  [(SBIconListView *)self frame];
  v5 = [v4 appendRect:@"frame" withName:?];
  v6 = [(SBIconListView *)self model];
  v7 = [v4 appendObject:v6 withName:@"model"];

  v8 = [(SBIconListView *)self temporaryModel];
  v9 = [v4 appendObject:v8 withName:@"temporaryModel" skipIfNil:1];

  v10 = [v4 appendObject:self->_iconLocation withName:@"iconLocation"];
  orientation = self->_orientation;
  switch(orientation)
  {
    case 1:
      v12 = @"UIInterfaceOrientationPortrait";
      break;
    case 3:
      v12 = @"UIInterfaceOrientationLandscapeRight";
      break;
    case 4:
      v12 = @"UIInterfaceOrientationLandscapeLeft";
      break;
    case 2:
      v12 = @"UIInterfaceOrientationPortraitUpsideDown";
      break;
    default:
      v12 = 0;
      break;
  }

  v13 = [v4 appendObject:v12 withName:@"orientation"];
  v14 = [(SBIconListView *)self layoutOrientation];
  if (v14 != self->_orientation)
  {
    v15 = @"UIInterfaceOrientationLandscapeRight";
    v16 = @"UIInterfaceOrientationLandscapeLeft";
    v17 = @"UIInterfaceOrientationPortraitUpsideDown";
    if (v14 != 2)
    {
      v17 = 0;
    }

    if (v14 != 4)
    {
      v16 = v17;
    }

    if (v14 != 3)
    {
      v15 = v16;
    }

    if (v14 == 1)
    {
      v18 = @"UIInterfaceOrientationPortrait";
    }

    else
    {
      v18 = v15;
    }

    v19 = [v4 appendObject:v18 withName:@"layoutOrientation"];
  }

  if (self->_iconContentScale != 1.0)
  {
    v20 = [v4 appendFloat:@"iconContentScale" withName:2 decimalPrecision:?];
  }

  v21 = [v4 appendUnsignedInteger:-[SBIconListView iconRowsForCurrentOrientation](self withName:{"iconRowsForCurrentOrientation"), @"iconRowsForCurrentOrientation"}];
  v22 = [v4 appendUnsignedInteger:-[SBIconListView iconColumnsForCurrentOrientation](self withName:{"iconColumnsForCurrentOrientation"), @"iconColumnsForCurrentOrientation"}];
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);
  v24 = [v4 appendObject:WeakRetained withName:@"layoutDelegate" skipIfNil:1];

  v25 = [v4 appendBool:self->_needsLayout withName:@"needsLayout" ifEqualTo:1];
  v26 = [v4 appendBool:self->_inLayout withName:@"inLayout" ifEqualTo:1];
  v27 = [v4 appendBool:self->_performingSpecialIconAnimations withName:@"performingSpecialIconAnimations" ifEqualTo:1];
  v28 = [v4 appendBool:self->_rotating withName:@"rotating" ifEqualTo:1];
  v29 = [v4 appendBool:self->_layoutReversed withName:@"layoutReversed" ifEqualTo:1];
  v30 = [v4 appendBool:self->_purged withName:@"purged" ifEqualTo:1];
  v31 = [v4 appendBool:self->_alignsIconsOnPixelBoundaries withName:@"alignsIconsOnPixelBoundaries" ifEqualTo:0];
  v32 = [(SBIconListView *)self visibleGridCellIndexes];
  v33 = [v4 appendObject:v32 withName:@"visibleGridCellIndexes"];

  v34 = [(SBIconListView *)self currentIconLocationTransitionHandler];
  v35 = [v4 appendObject:v34 withName:@"currentIconLocationTransitionHandler" skipIfNil:1];

  v36 = [(SBIconListView *)self contentVisibility];
  if (v36)
  {
    v37 = SBHStringFromContentVisibility(v36);
    [v4 appendString:v37 withName:@"contentVisibility"];
  }

  return v4;
}

- (void)_setupStateCaptureHandleIfNeeded
{
  if (!self->_stateCaptureHandle)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v6, &location);
    v4 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandle = self->_stateCaptureHandle;
    self->_stateCaptureHandle = v4;

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

__CFString *__50__SBIconListView__setupStateCaptureHandleIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _stateCaptureString];
  }

  else
  {
    v3 = @"nil";
  }

  return v3;
}

- (id)_stateCaptureString
{
  v3 = [(SBIconListView *)self descriptionBuilderWithMultilinePrefix:&stru_1F3D472A8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__SBIconListView__stateCaptureString__block_invoke;
  v7[3] = &unk_1E808AEC0;
  v8 = v3;
  v4 = v3;
  [(SBIconListView *)self enumerateIconViewsUsingBlock:v7];
  v5 = [v4 build];

  return v5;
}

void __37__SBIconListView__stateCaptureString__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__SBIconListView__stateCaptureString__block_invoke_2;
  v9[3] = &unk_1E8088F18;
  v10 = v7;
  v11 = v6;
  v8 = v6;
  [v10 appendBodySectionWithName:0 multilinePrefix:0 block:v9];
  *a4 = 1;
}

void __37__SBIconListView__stateCaptureString__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) icon];
  v4 = [v3 displayName];
  [v2 appendString:v4 withName:@"Display Name"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) listLayout];
  v7 = [v5 appendObject:v6 withName:@"List Layout"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) _labelHidingReason];
  [v8 appendString:v9 withName:@"Label Hiding Reason"];
}

- (void)_teardownStateCapture
{
  stateCaptureHandle = self->_stateCaptureHandle;
  if (stateCaptureHandle)
  {
    [(BSInvalidatable *)stateCaptureHandle invalidate];
    v4 = self->_stateCaptureHandle;
    self->_stateCaptureHandle = 0;
  }
}

- (SBIconListViewDragDelegate)dragDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);

  return WeakRetained;
}

- (SBIconListViewReorderingDelegate)reorderingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reorderingDelegate);

  return WeakRetained;
}

- (SBIconWidgetIntroductionDelegate)widgetIntroductionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetIntroductionDelegate);

  return WeakRetained;
}

- (void)performCollapseFolderWithContainedIconSpecialIconAnimationWithIcon:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "No extra icon found for collapsing folder special animation: %@", &v2, 0xCu);
}

- (void)originForIcon:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Can't return an origin for icon not in this list: %@", &v2, 0xCu);
}

void __59__SBIconListView_layoutIconsIfNeededUsingAnimator_options___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 uniqueIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "Removing icon view from screen for icon %@", &v4, 0xCu);
}

@end