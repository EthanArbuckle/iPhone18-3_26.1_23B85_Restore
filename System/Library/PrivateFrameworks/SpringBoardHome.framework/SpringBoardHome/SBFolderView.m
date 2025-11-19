@interface SBFolderView
+ (int64_t)_pageIndexForOffset:(double)a3 minimumPage:(int64_t)a4 maximumPage:(int64_t)a5 pageCount:(unint64_t)a6 pageWidth:(double)a7 pageSpacing:(double)a8 userInterfaceLayoutDirection:(int64_t)a9 behavior:(int64_t)a10 fractionOfDistanceThroughPage:(double *)a11;
+ (unint64_t)_pageOffsetForOffset:(double)a3 behavior:(int64_t)a4 pageWidth:(double)a5 pageSpacing:(double)a6 pageCount:(unint64_t)a7 userInterfaceLayoutDirection:(int64_t)a8 fractionOfDistanceThroughPage:(double *)a9;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)_useParallaxOnPageControl;
- (BOOL)canChangeCurrentPageIndexToIndex:(unint64_t)a3;
- (BOOL)doesPageContainIconListView:(int64_t)a3;
- (BOOL)hasIconPages;
- (BOOL)iconListView:(id)a3 canHandleIconDropSession:(id)a4;
- (BOOL)iconListView:(id)a3 shouldAllowSpringLoadedInteractionForIconDropSession:(id)a4 onIconView:(id)a5;
- (BOOL)isParallaxEnabled;
- (BOOL)isScrolling;
- (BOOL)isVisibleColumnRangeValid:(SBVisibleColumnRange *)a3;
- (BOOL)locationCountsAsInsideFolder:(CGPoint)a3;
- (BOOL)prefetchNextVisibleCellCount:(unint64_t)a3;
- (BOOL)setCurrentPageIndex:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (CGPoint)_scrollOffsetForContentAtPageIndex:(int64_t)a3;
- (CGPoint)_scrollOffsetForFirstListView;
- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)a3;
- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)a3 pageHeight:(double)a4;
- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)a3 pageWidth:(double)a4;
- (CGPoint)pointForScrollingDimension:(double)a3;
- (CGRect)_frameForIconListAtIndex:(unint64_t)a3;
- (CGRect)_rectForPageAtIndex:(int64_t)a3;
- (CGSize)_iconListViewSize;
- (CGSize)_scrollViewContentSize;
- (CGSize)scrollView:(id)a3 contentSizeForZoomScale:(double)a4 withProposedSize:(CGSize)a5;
- (Class)listViewClass;
- (NSArray)iconListViews;
- (NSArray)visibleIconListViews;
- (NSString)iconLocation;
- (SBFolderView)initWithConfiguration:(id)a3;
- (SBFolderViewDelegate)delegate;
- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)a3 pageHeight:(double)a4;
- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)a3 pageWidth:(double)a4;
- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)a3 pageWidthOrHeight:(double)a4;
- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)a3;
- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)a3 pageHeight:(double)a4;
- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)a3 pageWidth:(double)a4;
- (SBHIconGridSizeClassDomain)gridSizeClassDomain;
- (SBIconListModel)currentIconListModel;
- (SBIconListView)currentIconListView;
- (SBIconViewProviding)iconViewProvider;
- (SBVisibleColumnRange)visibleColumnRangeExcludingAdditionalWidthKeptVisible;
- (UIEdgeInsets)_scrollingInteractionVisibleInsets;
- (double)_offsetToCenterPageControlInSpaceForPageControl;
- (double)_pageHeight;
- (double)_pageWidth;
- (double)_pageWidthOrHeight;
- (double)additionalScrollWidthToKeepVisibleInBothDirections;
- (double)currentScrollOffset;
- (double)headerHeight;
- (double)maximumVisibleScrollOffset;
- (double)minimumVisibleScrollOffset;
- (double)scrollOffsetForPageIndexCalculation;
- (double)scrollableWidth;
- (double)scrollingDimensionForPoint:(CGPoint)a3;
- (id)_createIconListViewForList:(id)a3;
- (id)_dragDelegate;
- (id)_legibilitySettingsWithPrimaryColor:(id)a3;
- (id)_newPageControl;
- (id)accessibilityLegibilitySettingsForRect:(CGRect)a3 tintStyle:(unint64_t)a4;
- (id)accessibilityTintColorForRect:(CGRect)a3 tintStyle:(unint64_t)a4;
- (id)allIconListViews;
- (id)beginHidingIconsFromLayout:(id)a3 reason:(id)a4 options:(unint64_t)a5;
- (id)currentPageUniqueIdentifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)disableAutoScrollForReason:(id)a3;
- (id)effectiveIconImageAppearance;
- (id)effectiveIconImageStyleConfiguration;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)iconListModelForPageIndex:(int64_t)a3;
- (id)iconListView:(id)a3 animatorForLayingOutIconView:(id)a4 proposedAnimator:(id)a5;
- (id)iconListView:(id)a3 animatorForRemovingIcons:(id)a4 proposedAnimator:(id)a5;
- (id)iconListView:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4;
- (id)iconListView:(id)a3 dataDropSessionDidUpdate:(id)a4;
- (id)iconListView:(id)a3 iconDropSessionDidUpdate:(id)a4;
- (id)iconListView:(id)a3 iconViewForDroppingIconDragItem:(id)a4 proposedIconView:(id)a5;
- (id)iconListView:(id)a3 previewForDroppingIconDragItem:(id)a4 proposedPreview:(id)a5;
- (id)iconListViewAtPoint:(CGPoint)a3;
- (id)iconListViewAtScrollPoint:(CGPoint)a3;
- (id)iconListViewDisplayingIconView:(id)a3;
- (id)iconListViewForDrag:(id)a3;
- (id)iconListViewForIconListModelIndex:(unint64_t)a3;
- (id)iconListViewForPageIndex:(int64_t)a3;
- (id)iconListViewForTouch:(id)a3;
- (id)iconListViewWithList:(id)a3;
- (id)iconVisibilityDescription;
- (id)preferredFocusEnvironments;
- (id)succinctDescription;
- (id)uniqueIdentifierForPageIndex:(int64_t)a3;
- (int64_t)_pageIndexForOffset:(double)a3 behavior:(int64_t)a4 fractionOfDistanceThroughPage:(double *)a5;
- (int64_t)closestIconPageIndexForPageIndex:(int64_t)a3;
- (int64_t)firstLeadingCustomPageIndex;
- (int64_t)firstTrailingCustomPageIndex;
- (int64_t)lastLeadingCustomPageIndex;
- (int64_t)lastTrailingCustomPageIndex;
- (int64_t)maximumPageIndex;
- (int64_t)nearestIconPageIndex;
- (int64_t)pageIndexForIconListModel:(id)a3;
- (int64_t)pageIndexForIconListModelIndex:(unint64_t)a3;
- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)a3;
- (int64_t)pageIndexForTrailingCustomPageIndex:(unint64_t)a3;
- (int64_t)pageIndexForUniqueIdentifier:(id)a3;
- (int64_t)scrollAnimationTargetPageIndex;
- (int64_t)userInterfaceLayoutDirection;
- (unint64_t)_pageOffsetForOffset:(double)a3 behavior:(int64_t)a4 fractionOfDistanceThroughPage:(double *)a5;
- (unint64_t)columnCountForPageIndex:(int64_t)a3;
- (unint64_t)columnCountInVisibleColumnRange:(SBVisibleColumnRange *)a3;
- (unint64_t)columnOrRowCountForScrollingForPageIndex:(int64_t)a3;
- (unint64_t)countOfAdditionalPagesToKeepVisibleInOneDirection;
- (unint64_t)iconListModelIndexForPageIndex:(int64_t)a3;
- (unint64_t)iconListViewIndexForIconListModelIndex:(unint64_t)a3;
- (unint64_t)iconListViewIndexForPageIndex:(int64_t)a3;
- (unint64_t)iconPageCount;
- (unint64_t)leadingCustomPageIndexForPageIndex:(int64_t)a3;
- (unint64_t)maximumPrefetchedCellCount;
- (unint64_t)pageCount;
- (unint64_t)trailingCustomPageIndexForPageIndex:(int64_t)a3;
- (unint64_t)typeForPage:(int64_t)a3;
- (unsigned)scrollingDirectionTracking:(BOOL)a3;
- (unsigned)userInterfaceLayoutDirectionAwareScrollingDirectionTracking:(BOOL)a3;
- (void)_addIconListView:(id)a3 atEnd:(BOOL)a4;
- (void)_addIconListViewsForModels:(id)a3;
- (void)_addScrollingCompletionBlock:(id)a3;
- (void)_checkIfScrollStateChanged;
- (void)_configureIconListView:(id)a3;
- (void)_configureScrollingIconListView:(id)a3;
- (void)_didAddIconListView:(id)a3;
- (void)_didRemoveIconListView:(id)a3;
- (void)_enumerateScrollableIconViewsUsingBlock:(id)a3;
- (void)_layoutSubviews;
- (void)_markListViewsAsPurged;
- (void)_orientationDidChange:(int64_t)a3;
- (void)_removeDisableAutoScrollAssertion:(id)a3;
- (void)_removeIconListView:(id)a3 purge:(BOOL)a4;
- (void)_resetIconListViews;
- (void)_setCurrentPageIndex:(int64_t)a3 deferringPageControlUpdate:(BOOL)a4;
- (void)_setFolderName:(id)a3;
- (void)_setPageControlDisabled:(BOOL)a3 forReason:(id)a4;
- (void)_setParallaxDisabled:(BOOL)a3 forReason:(id)a4;
- (void)_setScrollViewContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)_setScrollingDisabled:(BOOL)a3 forReason:(id)a4;
- (void)_updateCycleIdleUntil:(unint64_t)a3;
- (void)_updateEditingStateAnimated:(BOOL)a3;
- (void)_updateIconListContainment:(id)a3 atIndex:(unint64_t)a4;
- (void)_updateIconListFrames;
- (void)_updateIconListLegibilitySettings;
- (void)_updateIconListViews:(int64_t)a3;
- (void)_updateIconListViewsWithCurrentPageIndex:(int64_t)a3 currentPageUniqueIdentifier:(id)a4;
- (void)_updateIconListViewsWithCurrentPageUniqueIdentifier:(id)a3;
- (void)_updatePageControlCurrentPage;
- (void)_updatePageControlNumberOfPages;
- (void)_updatePageControlToIndex:(int64_t)a3;
- (void)_updatePageControlUserInterfaceStyle;
- (void)_updateParallaxSettings;
- (void)_updateScalingViewFrame;
- (void)_updateScrollingState:(BOOL)a3;
- (void)_updateTitleLegibilitySettings;
- (void)_willScrollToPageIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)addScrollViewIsScrollingOverrideReason:(id)a3;
- (void)cancelScrolling;
- (void)clearVisibleColumnRange;
- (void)dealloc;
- (void)didAddSubview:(id)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)enumerateIconListViewsUsingBlock:(id)a3;
- (void)enumerateIconListViewsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)folder:(id)a3 didAddList:(id)a4;
- (void)folder:(id)a3 didRemoveLists:(id)a4 atIndexes:(id)a5;
- (void)folder:(id)a3 listHiddenWillChange:(id)a4;
- (void)folder:(id)a3 willRemoveLists:(id)a4 atIndexes:(id)a5;
- (void)folder:(id)a3 willRestoreOverflowIcon:(id)a4 toList:(id)a5;
- (void)folderDidChange;
- (void)folderDisplayNameDidChange:(id)a3;
- (void)folderWillChange:(id)a3;
- (void)getLeadingVisiblePageIndex:(int64_t *)a3 trailingVisiblePageIndex:(int64_t *)a4;
- (void)iconListView:(id)a3 iconDragItem:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)iconListView:(id)a3 iconDropSessionDidEnter:(id)a4;
- (void)iconListView:(id)a3 iconDropSessionDidExit:(id)a4;
- (void)iconListView:(id)a3 performIconDrop:(id)a4;
- (void)iconListView:(id)a3 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a4;
- (void)iconListView:(id)a3 willConfigureIconView:(id)a4 forIcon:(id)a5;
- (void)iconListView:(id)a3 willUseIconView:(id)a4 forDroppingIconDragItem:(id)a5;
- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4;
- (void)layoutSubviews;
- (void)pageControl:(id)a3 didMoveCurrentPageToPage:(int64_t)a4 withScrubbing:(BOOL)a5;
- (void)performWhenScrollingEndsUsingBlock:(id)a3;
- (void)prepareToOpen;
- (void)removeAssertion:(id)a3;
- (void)removeScrollViewIsScrollingOverrideReason:(id)a3;
- (void)resetContentOffsetToCurrentPageAnimated:(BOOL)a3;
- (void)returnScalingView;
- (void)scrollUsingDecelerationAnimationToPageIndex:(int64_t)a3 withCompletionHandler:(id)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrolling:(id)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)scrollingDisabledGestureDidUpdate:(id)a3;
- (void)setAutomaticallyCreatesIconListViews:(BOOL)a3;
- (void)setContentAlpha:(double)a3;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFolder:(id)a3;
- (void)setFolderIconImageCache:(id)a3;
- (void)setIconImageCache:(id)a3;
- (void)setIncludesHiddenIconListPages:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4;
- (void)setNeedsLayout;
- (void)setNumberOfInitialPagesToPreferVisible:(unint64_t)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setSuppressesEditingStateForListViews:(BOOL)a3 animated:(BOOL)a4;
- (void)setUsesGlassGroup:(BOOL)a3;
- (void)simulatePrefetchNextVisibleCellInDirection:(unsigned int)a3;
- (void)tearDownListViews;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)transitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)updateAfterAppearanceTraitChange;
- (void)updateGlassGroup;
- (void)updateIconListIndexAndVisibility:(BOOL)a3;
- (void)updateIconListViews;
- (void)updateVisibleColumnRange;
- (void)updateVisibleColumnRangeWithIconVisibilityHandling:(int64_t)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SBFolderView

- (id)allIconListViews
{
  iconListViews = self->_iconListViews;
  v3 = [(SBFolderView *)self additionalIconListViews];
  v4 = [(NSMutableArray *)iconListViews arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (BOOL)_isEligibleForFocusInteraction
{
  if (self->_isEditing)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  if ([(SBFolderView *)self contentVisibility])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBFolderView;
  return [(SBFolderView *)&v6 _isEligibleForFocusInteraction];
}

- (unint64_t)iconPageCount
{
  v3 = [(SBFolderView *)self includesHiddenIconListPages];
  folder = self->_folder;
  if (v3)
  {

    return [(SBFolder *)folder listCount];
  }

  else
  {

    return [(SBFolder *)folder visibleListCount];
  }
}

- (unint64_t)pageCount
{
  v3 = [(SBFolderView *)self leadingCustomPageCount];
  v4 = [(SBFolderView *)self iconPageCount]+ v3;
  return v4 + [(SBFolderView *)self trailingCustomPageCount];
}

- (SBVisibleColumnRange)visibleColumnRangeExcludingAdditionalWidthKeptVisible
{
  v43 = [(SBFolderView *)self containerViewForVisibleColumnRangeCalculation];
  [v43 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v42 = [(SBFolderView *)self isVertical];
  v13 = [(SBFolderView *)self minimumPageIndex];
  v14 = [(SBFolderView *)self maximumPageIndex];
  v15 = [(SBFolderView *)self firstIconPageIndex];
  v16 = 0;
  retstr->var2 = 0;
  retstr->var3 = 0;
  retstr->var1 = 0;
  if (v13 <= v14)
  {
    v39 = retstr;
    v40 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v41 = 0;
    v20 = v14 - v13 + 1;
    v21 = v13 - v15;
    do
    {
      if ([(SBFolderView *)self typeForPage:v13]== 1)
      {
        v22 = [(SBFolderView *)self iconListViewForPageIndex:v13];
        if (v22)
        {
          [v43 convertRect:v22 toView:{v6, v8, v10, v12}];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
          [v22 bounds];
          v46.origin.x = v31;
          v46.origin.y = v32;
          v46.size.width = v33;
          v46.size.height = v34;
          v45.origin.x = v24;
          v45.origin.y = v26;
          v45.size.width = v28;
          v45.size.height = v30;
          v35 = 0x7FFFFFFFFFFFFFFFLL;
          LODWORD(v17) = 0;
          if (CGRectIntersectsRect(v45, v46))
          {
            v35 = [v22 gridRangeForRect:{v24, v26, v28, v30}];
            LODWORD(v17) = v36;
          }

          v37 = [v22 gridSizeForCurrentOrientation];
          if ((v19 & 1) == 0)
          {
            v40 = v35 % v37;
            v41 = v21;
          }

          if (v42)
          {
            v17 = v17;
          }

          else
          {
            v17 = WORD1(v17);
          }

          v19 = 1;
          v18 = v21;
        }
      }

      ++v13;
      ++v21;
      --v20;
    }

    while (v20);
    retstr = v39;
    v39->var1 = v40;
    v39->var2 = v18;
    v39->var3 = v17;
    v16 = v41;
  }

  retstr->var0 = v16;

  return result;
}

- (int64_t)maximumPageIndex
{
  v3 = [(SBFolderView *)self pageCount];
  v4 = [(SBFolderView *)self minimumPageIndex];
  v5 = v3 - 1;
  if (!v3)
  {
    v5 = 0;
  }

  return v4 + v5;
}

- (NSArray)iconListViews
{
  v2 = [(NSMutableArray *)self->_iconListViews copy];

  return v2;
}

- (SBIconListView)currentIconListView
{
  v3 = [(SBFolderView *)self iconListViewIndexForPageIndex:[(SBFolderView *)self currentPageIndex]];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SBFolderView *)self iconListViewAtIndex:v3];
  }

  return v4;
}

- (double)scrollOffsetForPageIndexCalculation
{
  v3 = [(SBFolderView *)self scrollView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;
  v8 = [(SBFolderView *)self isRTL];
  if ([(SBFolderView *)self isVertical])
  {
    v5 = v7;
  }

  else if (v8)
  {
    [v3 frame];
    Width = CGRectGetWidth(v11);
    v5 = nexttoward(v5 + Width, v5);
  }

  return v5;
}

- (int64_t)userInterfaceLayoutDirection
{
  if ([(SBFolderView *)self isVertical])
  {
    return 0;
  }

  v3 = [(SBFolderView *)self userInterfaceLayoutDirectionHandling];
  if (v3 == 2)
  {
    return 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E69DDA98];

  return [v4 userInterfaceLayoutDirection];
}

- (BOOL)isScrolling
{
  v3 = [(SBFolderView *)self scrollView];
  v4 = [v3 isScrolling];

  return (v4 & 1) != 0 || [(NSMutableSet *)self->_scrollViewIsScrollingOverrides count]!= 0;
}

- (double)currentScrollOffset
{
  [(SBIconScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  v6 = v5;
  if ([(SBFolderView *)self isVertical])
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

- (double)_pageWidthOrHeight
{
  if ([(SBFolderView *)self isVertical])
  {

    [(SBFolderView *)self _pageHeight];
  }

  else
  {

    [(SBFolderView *)self _pageWidth];
  }

  return result;
}

- (double)_pageWidth
{
  [(SBIconScrollView *)self->_scrollView _interpageSpacing];
  [(SBIconScrollView *)self->_scrollView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(SBFolderView *)self isVertical])
  {
    v11 = v4;
    v12 = v6;
    v13 = v8;
    v14 = v10;

    return CGRectGetWidth(*&v11);
  }

  else
  {

    UISizeRoundToViewScale();
  }

  return result;
}

- (double)additionalScrollWidthToKeepVisibleInBothDirections
{
  [(SBFolderView *)self additionalPartialPagesToKeepVisible];
  v4 = v3;
  [(SBFolderView *)self _pageWidthOrHeight];
  return v4 * v5;
}

- (unint64_t)countOfAdditionalPagesToKeepVisibleInOneDirection
{
  v2 = objc_opt_class();

  return [v2 countOfAdditionalPagesToKeepVisibleInOneDirection];
}

- (SBFolderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_pageHeight
{
  [(SBIconScrollView *)self->_scrollView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(SBFolderView *)self isVertical])
  {
    [(SBIconScrollView *)self->_scrollView _interpageSpacing];
    v18.origin.x = v4;
    v18.origin.y = v6;
    v18.size.width = v8;
    v18.size.height = v10;
    CGRectGetHeight(v18);
    UISizeRoundToViewScale();
    return v11;
  }

  else
  {
    v13 = v4;
    v14 = v6;
    v15 = v8;
    v16 = v10;

    return CGRectGetHeight(*&v13);
  }
}

- (NSString)iconLocation
{
  v3 = [(SBFolderView *)self delegate];
  v4 = v3;
  if (!v3 || ([v3 iconLocationForFolderView:self], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(SBFolderView *)self currentIconListView];
    v7 = [v6 iconLocation];

    if (v7)
    {
      goto LABEL_6;
    }

    v5 = [objc_opt_class() defaultIconLocation];
  }

  v7 = v5;
LABEL_6:

  return v7;
}

- (double)headerHeight
{
  headerHeight = self->_headerHeight;
  if (headerHeight == *MEMORY[0x1E69DE788])
  {
    v4 = [(SBFolderView *)self headerView];
    if (v4)
    {
      [(SBFolderView *)self bounds];
      [v4 sizeThatFits:{v5, v6}];
    }

    else
    {
      v7 = 0.0;
    }

    self->_headerHeight = v7;
  }

  return headerHeight;
}

- (SBHIconGridSizeClassDomain)gridSizeClassDomain
{
  v2 = [(SBFolderView *)self folder];
  v3 = [v2 effectiveGridSizeClassDomain];

  return v3;
}

- (int64_t)firstLeadingCustomPageIndex
{
  if (![(SBFolderView *)self leadingCustomPageCount])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SBFolderView *)self minimumPageIndex];
}

- (int64_t)firstTrailingCustomPageIndex
{
  v3 = [(SBFolderView *)self trailingCustomPageCount];
  if (v3)
  {
    return [(SBFolderView *)self maximumPageIndex]- v3 + 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)hasIconPages
{
  v3 = [(SBFolderView *)self includesHiddenIconListPages];
  folder = self->_folder;
  if (v3)
  {
    return [(SBFolder *)folder listCount]!= 0;
  }

  return [(SBFolder *)folder hasVisibleLists];
}

- (void)setNeedsLayout
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_iconListViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [*(*(&v9 + 1) + 8 * v7++) setIconsNeedLayout];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SBFolderView;
  [(SBFolderView *)&v8 setNeedsLayout];
}

- (void)layoutSubviews
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = SBLogWidgets();
  if (os_signpost_enabled(v3))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"<%@: %p>", v6, self];
    *buf = 138543362;
    v22 = v7;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_FOLDER_VIEW", "iconListView=%{public}@", buf, 0xCu);
  }

  v8 = [(SBFolderView *)self currentPageIndex];
  v9 = [(SBFolderView *)self isScrolling];
  [(SBFolderView *)self _updateScalingViewFrame];
  if (![(SBFolderView *)self iconListViewCount]&& [(SBFolder *)self->_folder hasVisibleLists]&& [(SBFolderView *)self automaticallyCreatesIconListViews])
  {
    [(SBFolderView *)self resetIconListViews];
  }

  [(SBFolderView *)self _layoutSubviews];
  [(SBFolderView *)self _updateIconListFrames];
  [(SBFolderView *)self updateVisibleColumnRange];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_iconListViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * i) layoutIconsIfNeeded];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  if (!self->_isScalingViewBorrowed && !v9 && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(SBFolderView *)self currentPageIndex]== v8)
    {
      [(SBFolderView *)self resetContentOffsetToCurrentPageAnimated:0];
    }

    else
    {
      [(SBFolderView *)self setCurrentPageIndex:v8 animated:0];
    }
  }

  [(SBFolderView *)self _updatePageControlNumberOfPages];
  [(SBIconListPageControl *)self->_pageControl layoutIfNeeded];
  v15 = SBLogWidgets();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_FOLDER_VIEW", " isAnimation=YES ", buf, 2u);
  }
}

- (void)_updateScalingViewFrame
{
  if (!self->_isScalingViewBorrowed)
  {
    scalingView = self->_scalingView;
    [(SBFolderView *)self _frameForScalingView];

    [(UIView *)scalingView sbf_setBoundsAndPositionFromFrame:?];
  }
}

- (void)_updatePageControlNumberOfPages
{
  v3 = [(SBFolderView *)self _pageCountForPageControl];
  if (v3 != [(UIPageControl *)self->_pageControl numberOfPages])
  {
    [(UIPageControl *)self->_pageControl setNumberOfPages:v3];
  }

  [(SBFolderView *)self _updatePageControlCurrentPage];
}

- (void)updateVisibleColumnRange
{
  v3 = [(SBFolderView *)self iconVisibilityHandling];

  [(SBFolderView *)self updateVisibleColumnRangeWithIconVisibilityHandling:v3];
}

- (void)_updateIconListFrames
{
  [(SBFolderView *)self _scrollViewContentSize];
  v4 = v3;
  v6 = v5;
  [(SBIconScrollView *)self->_scrollView contentSize];
  if (v4 != v8 || v6 != v7)
  {
    [(SBIconScrollView *)self->_scrollView setContentSize:v4, v6];
    v10 = *(MEMORY[0x1E695F058] + 16);
    self->_lastProcessedVisibleRect.origin = *MEMORY[0x1E695F058];
    self->_lastProcessedVisibleRect.size = v10;
  }

  [(SBFolderView *)self _pageWidth];
  v12 = v11;
  [(SBFolderView *)self _pageHeight];
  v14 = v13;
  [(SBFolderView *)self _pageSpacing];
  v16 = v15;
  v17 = [(SBFolderView *)self isRTL];
  v18 = [(SBFolderView *)self isVertical];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x4010000000;
  v27[3] = &unk_1BEECC529;
  v28 = 0u;
  v29 = 0u;
  [(SBFolderView *)self _frameForIconListAtIndex:0];
  *&v28 = v19;
  *(&v28 + 1) = v20;
  *&v29 = v21;
  *(&v29 + 1) = v22;
  iconListViews = self->_iconListViews;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __37__SBFolderView__updateIconListFrames__block_invoke;
  v24[3] = &unk_1E80921B0;
  v24[4] = self;
  v24[5] = v27;
  v25 = v18;
  v26 = v17;
  v24[6] = v12;
  v24[7] = v16;
  v24[8] = v14;
  [(NSMutableArray *)iconListViews enumerateObjectsUsingBlock:v24];
  _Block_object_dispose(v27, 8);
}

- (CGSize)_scrollViewContentSize
{
  v3 = [(SBFolderView *)self pageCount];
  v4 = [(SBFolderView *)self extraPageCountDuringScrolling]+ v3;
  [(SBFolderView *)self _pageSpacing];
  v6 = v5;
  [(SBIconScrollView *)self->_scrollView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SBFolderView *)self isVertical];
  v16 = v4;
  v17 = v4 - 1;
  v18 = v6 > 0.0 && v4 != 0;
  v19 = v17;
  if (v15)
  {
    [(SBFolderView *)self _pageHeight];
    v21 = v20 * v16;
    if (v18)
    {
      Height = v21 + v19 * v6;
    }

    else
    {
      Height = v21;
    }

    v29.origin.x = v8;
    v29.origin.y = v10;
    v29.size.width = v12;
    v29.size.height = v14;
    Width = CGRectGetWidth(v29);
  }

  else
  {
    [(SBFolderView *)self _pageWidth];
    v25 = v24 * v16;
    if (v18)
    {
      Width = v25 + v19 * v6;
    }

    else
    {
      Width = v25;
    }

    v30.origin.x = v8;
    v30.origin.y = v10;
    v30.size.width = v12;
    v30.size.height = v14;
    Height = CGRectGetHeight(v30);
  }

  v26 = Width;
  v27 = Height;
  result.height = v27;
  result.width = v26;
  return result;
}

- (CGSize)_iconListViewSize
{
  [(SBIconScrollView *)self->_scrollView bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGPoint)_scrollOffsetForFirstListView
{
  v3 = [(SBFolderView *)self firstIconPageIndex];

  [(SBFolderView *)self _scrollOffsetForPageAtIndex:v3];
  result.y = v5;
  result.x = v4;
  return result;
}

double __37__SBFolderView__updateIconListFrames__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 _updateIconListContainment:v6 atIndex:a3];
  [*(a1 + 32) _iconListFrameForPageRect:a3 atIndex:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
  [v6 setBounds:{0.0, 0.0}];
  UIRectGetCenter();
  [v6 setCenter:?];

  v7 = 48;
  if (*(a1 + 72))
  {
    v7 = 64;
  }

  v8 = *(a1 + v7);
  if (*(a1 + 72))
  {
    v9 = 40;
  }

  else
  {
    v9 = 32;
  }

  v10 = v8 + *(a1 + 56);
  if (*(a1 + 73))
  {
    v10 = -v10;
  }

  v11 = *(*(a1 + 40) + 8);
  result = v10 + *(v11 + v9);
  *(v11 + v9) = result;
  return result;
}

- (int64_t)scrollAnimationTargetPageIndex
{
  currentPageIndex = self->_currentPageIndex;
  v4 = self->_scrollView;
  if ([(SBIconScrollView *)v4 isScrollAnimating]&& ([(SBIconScrollView *)v4 isTracking]& 1) == 0)
  {
    if ([(SBIconScrollView *)v4 isDecelerating])
    {
      [(SBIconScrollView *)v4 _pageDecelerationTarget];
    }

    else
    {
      [(SBIconScrollView *)v4 lastAnimatedScrollContentOffset];
    }

    [(SBFolderView *)self scrollingDimensionForPoint:?];
    currentPageIndex = [(SBFolderView *)self _pageIndexForOffset:1 behavior:0 fractionOfDistanceThroughPage:?];
  }

  return currentPageIndex;
}

- (void)_updatePageControlCurrentPage
{
  v3 = [(SBFolderView *)self currentPageIndex];

  [(SBFolderView *)self _updatePageControlToIndex:v3];
}

- (double)minimumVisibleScrollOffset
{
  [(SBIconScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  v6 = v5;
  if ([(SBFolderView *)self isVertical])
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

- (double)maximumVisibleScrollOffset
{
  [(SBFolderView *)self minimumVisibleScrollOffset];
  v4 = v3;
  [(SBFolderView *)self scrollableWidth];
  v6 = v4 + v5;

  return nexttoward(v6, v4);
}

- (double)scrollableWidth
{
  [(SBIconScrollView *)self->_scrollView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SBFolderView *)self isVertical];
  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  if (v11)
  {

    return CGRectGetHeight(*&v12);
  }

  else
  {

    return CGRectGetWidth(*&v12);
  }
}

- (void)returnScalingView
{
  self->_isScalingViewBorrowed = 0;
  [(SBFolderView *)self insertSubview:self->_scalingView atIndex:0];

  [(SBFolderView *)self _updateScalingViewFrame];
}

- (void)clearVisibleColumnRange
{
  v2 = *(MEMORY[0x1E695F058] + 16);
  self->_lastProcessedVisibleRect.origin = *MEMORY[0x1E695F058];
  self->_lastProcessedVisibleRect.size = v2;
}

- (void)_checkIfScrollStateChanged
{
  v3 = [(SBFolderView *)self isScrolling];
  if (self->_wasScrolling != v3)
  {
    v4 = v3;
    [(SBFolderView *)self _updateScrollingState:v3];
    self->_wasScrolling = v4;
  }
}

- (BOOL)isParallaxEnabled
{
  if ([(NSMutableSet *)self->_parallaxDisabledReasons count])
  {
    return 0;
  }

  else
  {
    return SBHPerformanceFlagEnabled(9) ^ 1;
  }
}

- (void)_updateParallaxSettings
{
  if ([(SBFolderView *)self isParallaxEnabled])
  {
    v3 = [(SBFolderView *)self _useParallaxOnPageControl];
    v4 = MEMORY[0x1E69DEB00];
    if (!v3)
    {
      v4 = MEMORY[0x1E69DEAF8];
    }
  }

  else
  {
    v4 = MEMORY[0x1E69DEAF8];
  }

  v5 = *v4;
  pageControl = self->_pageControl;

  [(SBIconListPageControl *)pageControl _setVisualAltitude:v5];
}

- (SBIconListModel)currentIconListModel
{
  v3 = [(SBFolderView *)self iconListModelIndexForPageIndex:[(SBFolderView *)self currentPageIndex]];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
    v6 = [(SBFolderView *)self folder];
    v4 = [v6 listAtIndex:v5];
  }

  return v4;
}

- (SBFolderView)initWithConfiguration:(id)a3
{
  v53[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 initialViewFrame];
  v51.receiver = self;
  v51.super_class = SBFolderView;
  v5 = [(SBFolderView *)&v51 initWithFrame:?];
  if (v5)
  {
    v6 = [v4 folder];
    objc_storeStrong(&v5->_folder, v6);
    v7 = [v4 listLayoutProvider];
    listLayoutProvider = v5->_listLayoutProvider;
    v5->_listLayoutProvider = v7;

    v5->_orientation = [v4 orientation];
    v5->_allowedOrientations = [v4 allowedOrientations];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    iconListViews = v5->_iconListViews;
    v5->_iconListViews = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    scrollingDisabledReasons = v5->_scrollingDisabledReasons;
    v5->_scrollingDisabledReasons = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pageControlDisabledReasons = v5->_pageControlDisabledReasons;
    v5->_pageControlDisabledReasons = v13;

    v5->_currentPageIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5->_currentPageType = 1;
    v15 = [v4 iconViewProvider];
    objc_storeWeak(&v5->_iconViewProvider, v15);

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    scrollFrames = v5->_scrollFrames;
    v5->_scrollFrames = v16;

    v18 = [v4 legibilitySettings];
    legibilitySettings = v5->_legibilitySettings;
    v5->_legibilitySettings = v18;

    v20 = [v4 folderIconImageCache];
    folderIconImageCache = v5->_folderIconImageCache;
    v5->_folderIconImageCache = v20;

    v22 = [v4 iconImageCache];
    iconImageCache = v5->_iconImageCache;
    v5->_iconImageCache = v22;

    v24 = [v4 headerView];
    headerView = v5->_headerView;
    v5->_headerView = v24;

    [v4 headerHeight];
    v5->_headerHeight = v26;
    v5->_userInterfaceLayoutDirectionHandling = [v4 userInterfaceLayoutDirectionHandling];
    v5->_vertical = [v4 isVertical];
    v5->_snapsToPageBoundariesAfterScrolling = [v4 snapsToPageBoundariesAfterScrolling];
    v5->_addsFocusGuidesForWrapping = [v4 addsFocusGuidesForWrapping];
    v5->_iconSpacingAxisMatchingBehavior = [v4 iconSpacingAxisMatchingBehavior];
    v5->_numberOfInitialPagesToPreferVisible = [v4 numberOfInitialPagesToPreferVisible];
    v5->_automaticallyCreatesIconListViews = 1;
    v5->_contentVisibility = 0;
    [v4 additionalPartialPagesToKeepVisible];
    v5->_additionalPartialPagesToKeepVisible = v27;
    v5->_usesGlassGroup = [v4 usesGlassGroup];
    [v6 addFolderObserver:v5];
    v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
    scalingView = v5->_scalingView;
    v5->_scalingView = v28;

    [(SBFolderView *)v5 addSubview:v5->_scalingView];
    if ([(SBFolderView *)v5 _showsTitle])
    {
      v30 = [SBFolderTitleTextField alloc];
      v31 = [(SBFolderTitleTextField *)v30 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      titleTextField = v5->_titleTextField;
      v5->_titleTextField = v31;

      v33 = v5->_titleTextField;
      [(SBFolderView *)v5 _titleFontSize];
      [(SBFolderTitleTextField *)v33 setFontSize:?];
      v34 = v5->_titleTextField;
      v35 = [v6 displayName];
      [(SBFolderTitleTextField *)v34 setText:v35];

      [(SBFolderTitleTextField *)v5->_titleTextField setDelegate:v5];
      -[SBFolderTitleTextField setAllowsEditing:](v5->_titleTextField, "setAllowsEditing:", [v6 canEditDisplayName]);
      [(SBFolderTitleTextField *)v5->_titleTextField setLegibilitySettings:v5->_legibilitySettings];
    }

    v36 = objc_alloc_init([objc_opt_class() _scrollViewClass]);
    scrollView = v5->_scrollView;
    v5->_scrollView = v36;

    [(BSUIScrollView *)v5->_scrollView setDelegate:v5];
    [(SBIconScrollView *)v5->_scrollView setPagingEnabled:1];
    [(SBIconScrollView *)v5->_scrollView setBounces:1];
    [(SBIconScrollView *)v5->_scrollView setScrollsToTop:0];
    [(SBIconScrollView *)v5->_scrollView setShowsHorizontalScrollIndicator:0];
    [(SBIconScrollView *)v5->_scrollView setShowsVerticalScrollIndicator:0];
    [(SBIconScrollView *)v5->_scrollView setDelaysContentTouches:0];
    [(SBIconScrollView *)v5->_scrollView setClipsToBounds:0];
    [(SBIconScrollView *)v5->_scrollView setAlwaysBounceHorizontal:!v5->_vertical];
    [(SBIconScrollView *)v5->_scrollView setAlwaysBounceVertical:v5->_vertical];
    [(SBIconScrollView *)v5->_scrollView _setSupportsPointerDragScrolling:1];
    v38 = [(SBFolderView *)v5 _newPageControl];
    pageControl = v5->_pageControl;
    v5->_pageControl = v38;

    [(SBFolderView *)v5 _updatePageControlToIndex:[(SBFolderView *)v5 minimumPageIndex]];
    [(UIPageControl *)v5->_pageControl setHidesForSinglePage:1];
    -[UIPageControl _setPreferredNumberOfVisibleIndicators:](v5->_pageControl, "_setPreferredNumberOfVisibleIndicators:", [v6 maxListCount]);
    [(SBIconListPageControl *)v5->_pageControl setLegibilitySettings:v5->_legibilitySettings];
    [(SBIconListPageControl *)v5->_pageControl setDelegate:v5];
    if ([(SBFolderView *)v5 _useParallaxOnPageControl])
    {
      [(SBIconListPageControl *)v5->_pageControl _setVisualAltitude:*MEMORY[0x1E69DEB00]];
    }

    [(SBIconListPageControl *)v5->_pageControl setAccessibilityIdentifier:@"Page control"];
    if ([(SBFolderView *)v5 _shouldUseScrollableIconViewInteraction])
    {
      v40 = [(SBHScrollableIconViewInteraction *)[SBHScrollableZoomingIconViewInteraction alloc] initWithContainer:v5];
      scrollingInteraction = v5->_scrollingInteraction;
      v5->_scrollingInteraction = v40;

      [(SBFolderView *)v5 _configureScrollingInteraction:v5->_scrollingInteraction];
    }

    v42 = [MEMORY[0x1E696AD88] defaultCenter];
    [v42 addObserver:v5 selector:sel__backgroundContrastDidChange_ name:*MEMORY[0x1E69DD920] object:0];
    v43 = objc_opt_self();
    v53[0] = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v45 = [(SBFolderView *)v5 registerForTraitChanges:v44 withAction:sel_setNeedsLayout];

    v46 = objc_opt_self();
    v52[0] = v46;
    v47 = objc_opt_self();
    v52[1] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v49 = [(SBFolderView *)v5 registerForTraitChanges:v48 withTarget:v5 action:sel_updateAfterAppearanceTraitChange];

    [(SBFolderView *)v5 updateAfterAppearanceTraitChange];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  [(SBFolderView *)self _markListViewsAsPurged];
  v4.receiver = self;
  v4.super_class = SBFolderView;
  [(SBFolderView *)&v4 dealloc];
}

- (void)folderWillChange:(id)a3
{
  v8 = a3;
  [v8 removeFolderObserver:self];
  v4 = [v8 visibleListCount];
  v5 = [(SBFolderView *)self iconListViewCount];
  v6 = v5 - v4;
  if (v5 > v4)
  {
    do
    {
      v7 = [(SBFolderView *)self iconListViewAtIndex:v4];
      [(SBFolderView *)self _removeIconListView:v7];

      --v6;
    }

    while (v6);
  }

  [(SBFolderView *)self clearVisibleColumnRange];
}

- (void)folderDidChange
{
  v14 = [(SBFolderView *)self folder];
  v3 = [v14 visibleLists];
  v4 = [v3 count];
  v5 = [(SBFolderView *)self iconListViews];
  v6 = [v5 count];
  v7 = v6;
  if (v4 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = [v3 objectAtIndex:i];
      v11 = [v5 objectAtIndex:i];
      [v11 setModel:v10];
    }
  }

  if (v7 < v4)
  {
    do
    {
      v12 = [v3 objectAtIndex:v8];
      v13 = [(SBFolderView *)self _createIconListViewForList:v12];
      [(SBFolderView *)self _addIconListView:v13];

      ++v8;
    }

    while (v4 != v8);
  }

  [(SBFolderView *)self setNeedsLayout];
  [(SBFolderView *)self layoutIfNeeded];
  [(SBFolderView *)self updateIconListIndexAndVisibility:1];
  [(SBFolderView *)self _updateEditingStateAnimated:0];
  [v14 addFolderObserver:self];
}

- (void)setFolder:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_folder != v5)
  {
    v7 = v5;
    [(SBFolderView *)self folderWillChange:v5];
    objc_storeStrong(&self->_folder, a3);
    v5 = [(SBFolderView *)self folderDidChange];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  if (self->_listLayoutProvider != v7)
  {
    v8 = [(SBFolderView *)self iconLocation];
    SBHIconListLayoutProviderListGridSizeMatchesListLayoutProvider(self->_listLayoutProvider, v7, v8, 1);
    objc_storeStrong(&self->_listLayoutProvider, a3);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__SBFolderView_setListLayoutProvider_animated___block_invoke;
    v9[3] = &unk_1E8092110;
    v10 = v7;
    v11 = a4;
    [(SBFolderView *)self enumerateIconListViewsUsingBlock:v9];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(SBFolderView *)self updateAccessibilityTintColors];
    v7 = [(SBFolderView *)self firstIconListView];
    v8 = objc_opt_class();

    v5 = [(SBFolderView *)self listViewClass];
    v6 = obj;
    if (v8)
    {
      v5 = [v8 isEqual:v5];
      v6 = obj;
      if ((v5 & 1) == 0)
      {
        v5 = [(SBFolderView *)self resetIconListViews];
        v6 = obj;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)cancelScrolling
{
  v3 = [(SBFolderView *)self scrollView];
  [v3 cancelTouchTracking];

  [(SBFolderView *)self _updateScrollingIfNeeded];
}

- (void)_addScrollingCompletionBlock:(id)a3
{
  v4 = a3;
  scrollCompletionBlocks = self->_scrollCompletionBlocks;
  v10 = v4;
  if (!scrollCompletionBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_scrollCompletionBlocks;
    self->_scrollCompletionBlocks = v6;

    v4 = v10;
    scrollCompletionBlocks = self->_scrollCompletionBlocks;
  }

  v8 = [v4 copy];
  v9 = _Block_copy(v8);
  [(NSMutableArray *)scrollCompletionBlocks addObject:v9];
}

- (void)_setPageControlDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  pageControlDisabledReasons = self->_pageControlDisabledReasons;
  v8 = v6;
  if (v4)
  {
    [(NSMutableSet *)pageControlDisabledReasons addObject:v6];
LABEL_3:
    [(SBIconListPageControl *)self->_pageControl setUserInteractionEnabled:!v4];
    goto LABEL_6;
  }

  if ([(NSMutableSet *)pageControlDisabledReasons containsObject:v6])
  {
    [(NSMutableSet *)self->_pageControlDisabledReasons removeObject:v8];
    if (![(NSMutableSet *)self->_pageControlDisabledReasons count])
    {
      goto LABEL_3;
    }
  }

LABEL_6:
}

- (void)_setScrollingDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  scrollingDisabledReasons = self->_scrollingDisabledReasons;
  if (v4)
  {
    [(NSMutableSet *)scrollingDisabledReasons addObject:v6];
    [(SBIconScrollView *)self->_scrollView setScrollEnabled:0];
    v8 = SBLogIcon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "Disabling scrolling for reason: %{public}@", &v12, 0xCu);
    }

    v9 = [(SBFolderView *)self scrollingDisabledGestureRecognizer];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_scrollingDisabledGestureDidUpdate_];
      [(SBFolderView *)self setScrollingDisabledGestureRecognizer:v9];
      [(SBIconScrollView *)self->_scrollView addGestureRecognizer:v9];
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([(NSMutableSet *)scrollingDisabledReasons containsObject:v6])
  {
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Removing reason to disable scrolling: %{public}@", &v12, 0xCu);
    }

    [(NSMutableSet *)self->_scrollingDisabledReasons removeObject:v6];
    if (![(NSMutableSet *)self->_scrollingDisabledReasons count])
    {
      v11 = SBLogIcon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Re-allowing scrolling after all reasons have gone away", &v12, 2u);
      }

      [(SBIconScrollView *)self->_scrollView setScrollEnabled:1];
      v9 = [(SBFolderView *)self scrollingDisabledGestureRecognizer];
      if (v9)
      {
        [(SBIconScrollView *)self->_scrollView removeGestureRecognizer:v9];
        [(SBFolderView *)self setScrollingDisabledGestureRecognizer:0];
      }

      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)scrollingDisabledGestureDidUpdate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if ([a3 state] == 1)
  {
    v4 = SBLogIcon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableSet *)self->_scrollingDisabledReasons allObjects];
      v6 = [v5 sortedArrayUsingSelector:sel_compare_];
      v7 = [v6 componentsJoinedByString:{@", "}];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "Scrolling is disabled for reasons: %{public}@", &v8, 0xCu);
    }
  }
}

- (void)removeAssertion:(id)a3
{
  v4 = a3;
  if (![v4 assertionType])
  {
    [(SBFolderView *)self _removeDisableAutoScrollAssertion:v4];
  }
}

- (id)disableAutoScrollForReason:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_autoScrollDisabledAssertions)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    autoScrollDisabledAssertions = self->_autoScrollDisabledAssertions;
    self->_autoScrollDisabledAssertions = v5;
  }

  v7 = [SBFolderViewAssertion alloc];
  v12 = @"reason";
  v13[0] = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [(SBFolderViewAssertion *)v7 initWithAssertionType:0 folderView:self extraInfo:v8];

  [(NSHashTable *)self->_autoScrollDisabledAssertions addObject:v9];
  v10 = [(SBFolderView *)self scrollView];
  [v10 _setAutoScrollEnabled:0];

  return v9;
}

- (void)_removeDisableAutoScrollAssertion:(id)a3
{
  [(NSHashTable *)self->_autoScrollDisabledAssertions removeObject:a3];
  if (![(NSHashTable *)self->_autoScrollDisabledAssertions count])
  {
    v4 = [(SBFolderView *)self scrollView];
    [v4 _setAutoScrollEnabled:1];
  }
}

- (void)_setCurrentPageIndex:(int64_t)a3 deferringPageControlUpdate:(BOOL)a4
{
  if ([(SBFolderView *)self _isValidPageIndex:?]&& self->_currentPageIndex != a3)
  {
    v8 = [(SBFolderView *)self delegate];
    [v8 folderView:self currentPageIndexWillChange:a3];
    currentPageIndex = self->_currentPageIndex;
    self->_currentPageIndex = a3;
    if (!a4)
    {
      [(SBFolderView *)self _updatePageControlToIndex:a3];
    }

    [(SBFolderView *)self setCurrentPageType:[(SBFolderView *)self typeForPage:a3]];
    [(SBFolderView *)self _currentPageIndexDidChange];
    [(SBFolderView *)self _currentPageIndexDidChangeFromPageIndex:currentPageIndex];
    [v8 folderView:self currentPageIndexDidChange:self->_currentPageIndex];
  }
}

- (void)_updatePageControlToIndex:(int64_t)a3
{
  v5 = [(SBFolderView *)self minimumPageIndex];
  v6 = [(SBFolderView *)self _adjustPageIndexForPageControl:a3 - v5];
  v7 = [(UIPageControl *)self->_pageControl currentPage];
  if (v6 != v7)
  {
    v8 = v7;
    v9 = self->_scrollView;
    if (![(SBIconScrollView *)v9 isScrollAnimating]|| ([(SBIconScrollView *)v9 isTracking]& 1) != 0 || v8 != [(SBFolderView *)self _adjustPageIndexForPageControl:[(SBFolderView *)self scrollAnimationTargetPageIndex]- v5])
    {
      [(UIPageControl *)self->_pageControl setCurrentPage:v6];
    }
  }
}

- (void)setOrientation:(int64_t)a3
{
  orientation = self->_orientation;
  if (orientation != a3 && SBFInterfaceOrientationMaskContainsInterfaceOrientation())
  {
    self->_orientation = a3;

    [(SBFolderView *)self _orientationDidChange:orientation];
  }
}

- (void)_orientationDidChange:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  [(SBFolderView *)self clearVisibleColumnRange];
  [(SBFolderView *)self setNeedsLayout];
  [(SBFolderView *)self layoutIfNeeded];
  v4 = [(SBFolderView *)self orientation];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SBFolderView *)self iconListViews];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 setOrientation:v4];
        [v10 layoutIconsNow];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(SBFolderView *)self updateVisibleColumnRange];
}

- (unint64_t)iconListViewIndexForPageIndex:(int64_t)a3
{
  v5 = [(SBFolderView *)self firstIconPageIndex];
  if (([(SBFolderView *)self iconListViewCount]+ v5) <= a3 || a3 < v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a3 - v5;
  }
}

- (unint64_t)iconListModelIndexForPageIndex:(int64_t)a3
{
  if (![(SBFolderView *)self _isValidPageIndex:?])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(SBFolderView *)self isPageTypeIcon:a3])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(SBFolderView *)self firstIconPageIndex];
  v6 = a3 < v5;
  v7 = a3 - v5;
  if (v6 || ![(SBFolderView *)self hasIconPages])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(SBFolderView *)self includesHiddenIconListPages])
  {
    v8 = [(SBFolderView *)self folder];
    v7 = [v8 indexForVisibleIndex:v7];
  }

  return v7;
}

- (id)iconListModelForPageIndex:(int64_t)a3
{
  v4 = [(SBFolderView *)self iconListModelIndexForPageIndex:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(SBFolderView *)self folder];
    v5 = [v7 listAtIndex:v6];
  }

  return v5;
}

- (unint64_t)leadingCustomPageIndexForPageIndex:(int64_t)a3
{
  if ([(SBFolderView *)self typeForPage:?])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [(SBFolderView *)self totalLeadingCustomPageCount];
  v5 = a3 - [(SBFolderView *)self minimumPageIndex];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if ([(SBFolderView *)self isLeadingCustomViewPageHiddenAtIndex:v8])
      {
        ++v5;
      }

      else if (++v9 >= v5)
      {
        return v5;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  return v5;
}

- (unint64_t)trailingCustomPageIndexForPageIndex:(int64_t)a3
{
  v5 = [(SBFolderView *)self typeForPage:?];
  if (v5 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v5 != 2)
  {
    return 0;
  }

  v7 = ~[(SBFolderView *)self lastIconPageIndex]+ a3;
  if (v7 >= [(SBFolderView *)self trailingCustomPageCount])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

- (int64_t)pageIndexForIconListModelIndex:(unint64_t)a3
{
  v5 = [(SBFolderView *)self folder];
  if (![(SBFolderView *)self includesHiddenIconListPages])
  {
    a3 = [v5 visibleIndexForIndex:a3];
  }

  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(SBFolderView *)self firstIconPageIndex]+ a3;
  }

  return v6;
}

- (int64_t)pageIndexForIconListModel:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderView *)self folder];
  v6 = [v5 indexOfList:v4];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(SBFolderView *)self pageIndexForIconListModelIndex:v6];
  }

  return v7;
}

- (unint64_t)iconListViewIndexForIconListModelIndex:(unint64_t)a3
{
  v4 = [(SBFolderView *)self pageIndexForIconListModelIndex:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SBFolderView *)self iconListViewIndexForPageIndex:v4];
}

- (int64_t)closestIconPageIndexForPageIndex:(int64_t)a3
{
  result = [(SBFolderView *)self iconListViewIndexForPageIndex:?];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [(SBFolderView *)self firstIconPageIndex];
    if (result <= a3)
    {
      result = [(SBFolderView *)self lastIconPageIndex];
      if (result >= a3)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return result;
}

- (id)uniqueIdentifierForPageIndex:(int64_t)a3
{
  if (![(SBFolderView *)self _isValidPageIndex:?])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_10;
  }

  v5 = [(SBFolderView *)self typeForPage:a3];
  if (v5)
  {
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        v6 = [(SBFolderView *)self iconListModelForPageIndex:a3];
        v7 = [v6 uniqueIdentifier];

        goto LABEL_10;
      }

      goto LABEL_6;
    }

    v8 = [(SBFolderView *)self trailingCustomPageIndexForPageIndex:a3];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SBFolderView-Trailing-%lu", v8];
  }

  else
  {
    v9 = [(SBFolderView *)self leadingCustomPageIndexForPageIndex:a3];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SBFolderView-Leading-%lu", v9];
  }
  v7 = ;
LABEL_10:

  return v7;
}

- (int64_t)pageIndexForUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v4)
  {
    goto LABEL_10;
  }

  v7 = [v4 rangeOfString:@"SBFolderView-Leading-" options:8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [v5 substringFromIndex:v7 + v8];
    v14 = [v13 integerValue];

    v15 = [(SBFolderView *)self pageIndexForLeadingCustomPageIndex:v14];
LABEL_9:
    v6 = v15;
    goto LABEL_10;
  }

  v9 = [v5 rangeOfString:@"SBFolderView-Trailing-" options:8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v5 substringFromIndex:v9 + v10];
    v17 = [v16 integerValue];

    v15 = [(SBFolderView *)self pageIndexForTrailingCustomPageIndex:v17];
    goto LABEL_9;
  }

  v11 = [(SBFolderView *)self folder];
  v12 = [v11 listWithIdentifier:v5];
  if (v12)
  {
    v6 = [(SBFolderView *)self pageIndexForIconListModel:v12];
  }

LABEL_10:
  return v6;
}

- (id)currentPageUniqueIdentifier
{
  v3 = [(SBFolderView *)self currentPageIndex];

  return [(SBFolderView *)self uniqueIdentifierForPageIndex:v3];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_isEditing != a3)
  {
    self->_isEditing = a3;
    [(SBFolderView *)self _updateEditingStateAnimated:a4];
  }
}

- (void)setSuppressesEditingStateForListViews:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_suppressesEditingStateForListViews != a3)
  {
    self->_suppressesEditingStateForListViews = a3;
    [(SBFolderView *)self _updateEditingStateAnimated:a4];
  }
}

- (BOOL)doesPageContainIconListView:(int64_t)a3
{
  v5 = [(SBFolderView *)self _isValidPageIndex:?];
  if (v5)
  {

    LOBYTE(v5) = [(SBFolderView *)self _isValidIconListViewIndex:a3];
  }

  return v5;
}

- (BOOL)canChangeCurrentPageIndexToIndex:(unint64_t)a3
{
  v5 = [(SBFolderView *)self delegate];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 folderView:self canChangeCurrentPageIndexToIndex:a3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)setCurrentPageIndex:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (![(SBFolderView *)self _isValidPageIndex:a3]|| ![(SBFolderView *)self canChangeCurrentPageIndexToIndex:a3])
  {
    if (!v8)
    {
LABEL_15:
      v23 = 0;
      goto LABEL_16;
    }

LABEL_14:
    v8[2](v8);
    goto LABEL_15;
  }

  [(SBFolderView *)self _scrollOffsetForPageAtIndex:a3];
  v10 = v9;
  v12 = v11;
  [(SBIconScrollView *)self->_scrollView contentOffset];
  if (v10 == v14 && v12 == v13)
  {
    [(SBFolderView *)self _setCurrentPageIndex:a3];
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ([(SBFolderView *)self isRotating])
  {
    v16 = SBLogIcon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v34 = a3;
      v35 = 1024;
      v36 = v5;
      _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "Delaying request to change to page %li because we are rotating (animated: %{BOOL}u)", buf, 0x12u);
    }

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __56__SBFolderView_setCurrentPageIndex_animated_completion___block_invoke;
    v28 = &unk_1E8092138;
    v29 = self;
    v31 = a3;
    v32 = v5;
    v30 = v8;
    v17 = _Block_copy(&v25);
    rotationCompletionBlocks = self->_rotationCompletionBlocks;
    if (!rotationCompletionBlocks)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = self->_rotationCompletionBlocks;
      self->_rotationCompletionBlocks = v19;

      rotationCompletionBlocks = self->_rotationCompletionBlocks;
    }

    v21 = [v17 copy];
    v22 = _Block_copy(v21);
    [(NSMutableArray *)rotationCompletionBlocks addObject:v22];
  }

  else
  {
    [(SBFolderView *)self _willScrollToPageIndex:a3 animated:v5];
    if (v8)
    {
      [(SBFolderView *)self _addScrollingCompletionBlock:v8];
    }

    [(SBFolderView *)self _setScrollViewContentOffset:v5 animated:v10, v12];
    if (!v5)
    {
      [(SBFolderView *)self layoutIconListsWithAnimationType:-1 forceRelayout:0];
    }
  }

  v23 = 1;
LABEL_16:

  return v23;
}

- (void)resetContentOffsetToCurrentPageAnimated:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(SBFolderView *)self scrollAnimationTargetPageIndex];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    [(SBFolderView *)self _scrollOffsetForPageAtIndex:v5];
    v8 = v7;
    v10 = v9;
    [(SBIconScrollView *)self->_scrollView contentOffset];
    if (!BSFloatApproximatelyEqualToFloat() || (BSFloatApproximatelyEqualToFloat() & 1) == 0)
    {
      v11 = SBLogIcon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543874;
        v14 = objc_opt_class();
        v15 = 2048;
        v16 = v6;
        v17 = 1024;
        v18 = v3;
        v12 = v14;
        _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ initiating programmatic scroll to page: %li animated: %{BOOL}u", &v13, 0x1Cu);
      }

      [(SBIconScrollView *)self->_scrollView setContentOffset:v3 animated:v8, v10];
    }
  }
}

- (void)scrollUsingDecelerationAnimationToPageIndex:(int64_t)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(SBFolderView *)self isScrollingDisabled]|| [(SBFolderView *)self currentPageIndex]== a3 && ![(SBFolderView *)self isScrolling])
  {
    if (v6)
    {
      v6[2](v6);
    }
  }

  else if (UIAccessibilityIsReduceMotionEnabled())
  {
    [(SBFolderView *)self setCurrentPageIndex:a3 animated:0 completion:0];
    v7 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__SBFolderView_scrollUsingDecelerationAnimationToPageIndex_withCompletionHandler___block_invoke_2;
    v14[3] = &unk_1E808A0B8;
    v15 = v6;
    [v7 transitionWithView:self duration:5242880 options:&__block_literal_global_87 animations:v14 completion:0.3];
  }

  else
  {
    [(SBFolderView *)self setScrollingUsingDecelerationAnimation:1];
    if (v6)
    {
      [(SBFolderView *)self _addScrollingCompletionBlock:v6];
    }

    [(SBFolderView *)self _willScrollToPageIndex:a3 animated:1];
    [(SBFolderView *)self _scrollOffsetForPageAtIndex:a3];
    v9 = v8;
    v11 = v10;
    [(SBFolderView *)self _ignoreScrollingDidEndNotifications];
    v12 = SBLogIcon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ initiating programmatic scroll to page zero - animated: YES", buf, 0xCu);
    }

    [(SBIconScrollView *)self->_scrollView _setContentOffsetWithDecelerationAnimation:v9, v11];
    [(SBFolderView *)self _unignoreScrollingDidEndNotifications];
  }
}

uint64_t __82__SBFolderView_scrollUsingDecelerationAnimationToPageIndex_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setScrollViewContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v14 = *MEMORY[0x1E69E9840];
  [(SBFolderView *)self _ignoreScrollingDidEndNotifications];
  v8 = SBLogIcon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 1024;
    v13 = v4;
    v9 = v11;
    _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ initiating programmatic scroll - animated: %{BOOL}u", &v10, 0x12u);
  }

  [(SBIconScrollView *)self->_scrollView setContentOffset:v4 animated:x, y];
  [(SBFolderView *)self _unignoreScrollingDidEndNotifications];
}

- (void)_willScrollToPageIndex:(int64_t)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v6 = [(SBFolderView *)self delegate];
    [v6 folderView:self willAnimateScrollToPageIndex:a3];
  }
}

- (BOOL)locationCountsAsInsideFolder:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SBFolderView *)self bounds];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)setContentAlpha:(double)a3
{
  v5 = [(SBFolderView *)self scrollView];
  [v5 setAlpha:a3];

  [(SBFolderView *)self setPageControlAlpha:a3];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = SBFolderView;
  [(SBFolderView *)&v3 didMoveToSuperview];
  [(SBFolderView *)self _updateScrollingIfNeeded];
}

- (void)didMoveToWindow
{
  v16 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SBFolderView;
  [(SBFolderView *)&v9 didMoveToWindow];
  [(SBFolderView *)self _updateScrollingIfNeeded];
  v3 = [(SBFolderView *)self window];
  v4 = [v3 interfaceOrientation];
  v5 = [(SBFolderView *)self orientation];
  v6 = SBLogIcon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    _os_log_debug_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEBUG, "adding folder view to window %@ with orientation %li, current: %li", buf, 0x20u);
  }

  if (v3 && v4 && v4 != v5)
  {
    [(SBFolderView *)self setOrientation:v4];
    v7 = [(SBFolderView *)self delegate];
    [v7 folderViewDidChangeOrientation:self];
  }

  else if (!v3)
  {
    if (![(SBFolderView *)self isRegisteredForIdleUpdates])
    {
      goto LABEL_11;
    }

    _UIUpdateCycleUnregisterIdleObserver();
    v8 = 0;
    goto LABEL_10;
  }

  if (![(SBFolderView *)self isRegisteredForIdleUpdates])
  {
    _UIUpdateCycleRegisterIdleObserver();
    v8 = 1;
LABEL_10:
    [(SBFolderView *)self setRegisteredForIdleUpdates:v8];
  }

LABEL_11:
  [(SBFolderView *)self updateVisibleColumnRange];
}

- (void)didAddSubview:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBFolderView;
  [(SBFolderView *)&v7 didAddSubview:v4];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v4 setContentVisibility:{-[SBFolderView contentVisibility](self, "contentVisibility")}];
  }
}

- (void)setContentVisibility:(unint64_t)a3
{
  if (self->_contentVisibility != a3)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_contentVisibility = a3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__SBFolderView_setContentVisibility___block_invoke;
    v9[3] = &__block_descriptor_40_e28_v24__0__SBIconListView_8_B16l;
    v9[4] = a3;
    [(SBFolderView *)self enumerateIconListViewsUsingBlock:v9];
    v6 = [(SBFolderView *)self _isEligibleForFocusInteraction];
    v7 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
    v8 = [v7 focusedItem];

    if (v6 != (v8 != 0))
    {
      [(SBFolderView *)self setNeedsFocusUpdate];
    }
  }
}

void __37__SBFolderView_setContentVisibility___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 visibleGridCellIndexes];
  if ([v5 count])
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 2;
  }

  [v3 setContentVisibility:v4];
}

- (void)_setParallaxDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v10 = a4;
  v6 = [(SBFolderView *)self isParallaxEnabled];
  parallaxDisabledReasons = self->_parallaxDisabledReasons;
  if (v4)
  {
    if (!parallaxDisabledReasons)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v9 = self->_parallaxDisabledReasons;
      self->_parallaxDisabledReasons = v8;

      parallaxDisabledReasons = self->_parallaxDisabledReasons;
    }

    [(NSMutableSet *)parallaxDisabledReasons addObject:v10];
  }

  else
  {
    [(NSMutableSet *)parallaxDisabledReasons removeObject:v10];
  }

  if (v6 != [(SBFolderView *)self isParallaxEnabled])
  {
    [(SBFolderView *)self _updateParallaxSettings];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v12.receiver = self;
  v12.super_class = SBFolderView;
  v7 = [(SBFolderView *)&v12 hitTest:a4 withEvent:?];
  v8 = v7;
  v9 = self->_isScalingViewBorrowed && v7 == self;
  if (v9 && ([(SBFolderView *)self _frameForScalingView], v14.x = x, v14.y = y, CGRectContainsPoint(v15, v14)))
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (void)_layoutSubviews
{
  v4 = [(SBFolderView *)self scrollView];
  [(SBFolderView *)self bounds];
  [v4 setFrame:?];
  v3 = [v4 superview];

  if (!v3)
  {
    [(SBFolderView *)self addSubview:v4];
  }
}

- (id)_newPageControl
{
  v2 = [SBIconListPageControl alloc];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);

  return [(SBIconListPageControl *)v2 initWithFrame:v3, v4, v5, v6];
}

- (BOOL)_useParallaxOnPageControl
{
  if (SBHPerformanceFlagEnabled(9))
  {
    return 0;
  }

  else
  {
    return SBHPerformanceFlagEnabled(10) ^ 1;
  }
}

- (double)_offsetToCenterPageControlInSpaceForPageControl
{
  [(SBFolderView *)self pageControlAreaHeight];
  v4 = v3;
  [(SBIconListPageControl *)self->_pageControl defaultHeight];
  v5.n128_f64[0] = (v4 - v5.n128_f64[0]) * 0.5;

  MEMORY[0x1EEE4E080](self, v5);
  return result;
}

- (void)_updatePageControlUserInterfaceStyle
{
  v4 = [(SBFolderView *)self traitCollection];
  v3 = [(SBFolderView *)self pageControlOverrideUserInterfaceStyle];
  if (!v3)
  {
    v3 = [MEMORY[0x1E69DD1B8] sbh_materialUserInterfaceStyleFromTraitCollection:v4];
  }

  [(SBIconListPageControl *)self->_pageControl setOverrideUserInterfaceStyle:v3];
}

- (int64_t)nearestIconPageIndex
{
  v3 = [(SBFolderView *)self currentPageType];
  v4 = [(SBFolderView *)self currentPageIndex];
  v5 = v4;
  if (v3 != 1)
  {
    v6 = v4 - 1;
    while (2)
    {
      ++v5;
      do
      {
        if (![(SBFolderView *)self _isValidPageIndex:v6]&& ![(SBFolderView *)self _isValidPageIndex:v5])
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }

        if ([(SBFolderView *)self _isValidPageIndex:v6])
        {
          if ([(SBFolderView *)self typeForPage:v6]== 1)
          {
            return v6;
          }

          --v6;
        }
      }

      while (![(SBFolderView *)self _isValidPageIndex:v5]);
      if ([(SBFolderView *)self typeForPage:v5]!= 1)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (int64_t)lastLeadingCustomPageIndex
{
  v3 = [(SBFolderView *)self leadingCustomPageCount];
  if (v3)
  {
    return v3 + [(SBFolderView *)self minimumPageIndex]- 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)a3
{
  v5 = [(SBFolderView *)self totalLeadingCustomPageCount];
  if (![(SBFolderView *)self isLeadingCustomViewPageHidden]&& ![(SBFolderView *)self isLeadingCustomViewPageHiddenAtIndex:a3])
  {
    if (a3)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v7 += [(SBFolderView *)self isLeadingCustomViewPageHiddenAtIndex:v6++];
      }

      while (a3 != v6);
      if (v5)
      {
        return a3 - v7 + [(SBFolderView *)self minimumPageIndex];
      }
    }

    else
    {
      v7 = 0;
      if (v5)
      {
        return a3 - v7 + [(SBFolderView *)self minimumPageIndex];
      }
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (int64_t)lastTrailingCustomPageIndex
{
  if (![(SBFolderView *)self trailingCustomPageCount])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SBFolderView *)self maximumPageIndex];
}

- (int64_t)pageIndexForTrailingCustomPageIndex:(unint64_t)a3
{
  v5 = [(SBFolderView *)self trailingCustomPageCount];
  if (v5)
  {
    return a3 - v5 + [(SBFolderView *)self maximumPageIndex]+ 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)typeForPage:(int64_t)a3
{
  v5 = [(SBFolderView *)self minimumPageIndex];
  v6 = [(SBFolderView *)self leadingCustomPageCount];
  v7 = [(SBFolderView *)self maximumPageIndex];
  v8 = [(SBFolderView *)self trailingCustomPageCount];
  if (v6 && (v6 + v5) > a3)
  {
    return 0;
  }

  if ((v7 - v8) >= a3 || v8 == 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)a3
{
  if ([(SBFolderView *)self isVertical])
  {
    [(SBFolderView *)self _pageHeight];

    [(SBFolderView *)self _scrollOffsetForPageAtIndex:a3 pageHeight:?];
  }

  else
  {
    [(SBFolderView *)self _pageWidth];

    [(SBFolderView *)self _scrollOffsetForPageAtIndex:a3 pageWidth:?];
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)a3 pageWidth:(double)a4
{
  v6 = a3 - [(SBFolderView *)self minimumPageIndex];
  [(SBFolderView *)self _pageSpacing];
  v8 = v7;
  if ([(SBFolderView *)self isRTL])
  {
    [(SBIconScrollView *)self->_scrollView contentSize];
    v10 = v9 - (v6 + 1) * a4 - v6 * v8;
  }

  else
  {
    v10 = v6 * a4;
    if (v6 >= 1 && v8 > 0.0)
    {
      v10 = v10 + (v6 - 1) * v8;
    }
  }

  v11 = 0.0;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)a3 pageHeight:(double)a4
{
  v6 = a3 - [(SBFolderView *)self minimumPageIndex];
  [(SBFolderView *)self _pageSpacing];
  v8 = v6 * a4;
  v9 = v7 <= 0.0 || v6 <= 0;
  v10 = v8 + (v6 - 1) * v7;
  if (!v9)
  {
    v8 = v10;
  }

  v11 = 0.0;
  result.y = v8;
  result.x = v11;
  return result;
}

- (CGPoint)_scrollOffsetForContentAtPageIndex:(int64_t)a3
{
  if ([(SBFolderView *)self isVertical])
  {
    [(SBFolderView *)self _pageHeight];

    [(SBFolderView *)self _scrollOffsetForPageAtIndex:a3 pageHeight:?];
  }

  else
  {
    [(SBFolderView *)self _pageWidth];

    [(SBFolderView *)self _scrollOffsetForPageAtIndex:a3 pageWidth:?];
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)a3
{
  if ([(SBFolderView *)self isVertical])
  {
    [(SBFolderView *)self _pageHeight];

    [(SBFolderView *)self _scrollRangeForPageAtIndex:a3 pageHeight:?];
  }

  else
  {
    [(SBFolderView *)self _pageWidth];

    [(SBFolderView *)self _scrollRangeForPageAtIndex:a3 pageWidth:?];
  }

  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)a3 pageWidth:(double)a4
{
  [(SBFolderView *)self _scrollOffsetForContentAtPageIndex:a3];
  v6 = a4;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)a3 pageHeight:(double)a4
{
  [(SBFolderView *)self _scrollOffsetForContentAtPageIndex:a3];
  v6 = v5;
  v7 = a4;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)a3 pageWidth:(double)a4
{
  [(SBFolderView *)self _scrollOffsetForPageAtIndex:?];
  v8 = v7;
  [(SBFolderView *)self _scrollOffsetForContentAtPageIndex:a3];
  v10 = a4 - (v9 - v8);
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)a3 pageHeight:(double)a4
{
  [(SBFolderView *)self _scrollOffsetForPageAtIndex:?];
  v8 = v7;
  [(SBFolderView *)self _scrollOffsetForContentAtPageIndex:a3];
  v10 = v9;
  v11 = a4 - (v9 - v8);
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)a3 pageWidthOrHeight:(double)a4
{
  if ([(SBFolderView *)self isVertical])
  {

    [(SBFolderView *)self _scrollRangeForContentAtPageIndex:a3 pageHeight:a4];
  }

  else
  {

    [(SBFolderView *)self _scrollRangeForContentAtPageIndex:a3 pageWidth:a4];
  }

  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)_addIconListView:(id)a3 atEnd:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v16 = v6;
    [(SBFolderView *)self _configureScrollingIconListView:v6];
    if (v4)
    {
      [(NSMutableArray *)self->_iconListViews addObject:v16];
    }

    else
    {
      v8 = [(SBFolderView *)self folder];
      v9 = [v16 model];
      if ([(SBFolderView *)self includesHiddenIconListPages])
      {
        v10 = [v8 indexOfList:v9];
      }

      else
      {
        v10 = [v8 visibleIndexOfList:v9];
      }

      v11 = v10;
      v12 = [(NSMutableArray *)self->_iconListViews count];
      iconListViews = self->_iconListViews;
      if (v11 >= v12)
      {
        [(NSMutableArray *)iconListViews addObject:v16];
      }

      else
      {
        [(NSMutableArray *)iconListViews insertObject:v16 atIndex:v11];
      }
    }

    v14 = [(SBFolderView *)self scrollView];
    [v14 addSubview:v16];

    [(SBFolderView *)self _updatePageControlNumberOfPages];
    [(SBFolderView *)self _didAddIconListView:v16];
    v15 = [(SBFolderView *)self delegate];
    [v15 folderView:self didAddIconListView:v16];

    v7 = v16;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)_configureScrollingIconListView:(id)a3
{
  v4 = a3;
  [(SBFolderView *)self _configureIconListView:v4];
  [v4 setUsesGlassGroup:0];
}

- (void)_configureIconListView:(id)a3
{
  v4 = a3;
  [v4 setVisiblySettled:{-[SBFolderView isScrolling](self, "isScrolling") ^ 1}];
}

- (void)_didAddIconListView:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_layoutHidingAssertions;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) addAssertionFromChild:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_removeIconListView:(id)a3 purge:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if (v4)
  {
    [v9 setPurged:1];
    [v9 setDragDelegate:0];
    [v9 removeAllIconViews];
  }

  v6 = [v9 superview];
  v7 = [(SBFolderView *)self containerViewForVisibleColumnRangeCalculation];

  if (v6 == v7)
  {
    [v9 removeFromSuperview];
  }

  [(NSMutableArray *)self->_iconListViews removeObject:v9];
  [(SBFolderView *)self _updatePageControlNumberOfPages];
  [(SBFolderView *)self _didRemoveIconListView:v9];
  v8 = [(SBFolderView *)self delegate];
  [v8 folderView:self didRemoveIconListView:v9];
}

- (void)_didRemoveIconListView:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_layoutHidingAssertions;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeAndInvalidateAssertionsForChild:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)iconListViewWithList:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_iconListViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 model];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)iconListViewDisplayingIconView:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__27;
  v15 = __Block_byref_object_dispose__27;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SBFolderView_iconListViewDisplayingIconView___block_invoke;
  v8[3] = &unk_1E8092160;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(SBFolderView *)self enumerateIconListViewsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __47__SBFolderView_iconListViewDisplayingIconView___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 isDisplayingIconView:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)enumerateIconListViewsUsingBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SBFolderView *)self allIconListViews];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = 0;
      v4[2](v4, v10, &v11);
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateIconListViewsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ((v4 & 2) != 0)
  {
    v7 = self->_iconListViews;
  }

  else
  {
    v7 = [(SBFolderView *)self allIconListViews];
  }

  v8 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__SBFolderView_enumerateIconListViewsWithOptions_usingBlock___block_invoke;
  v10[3] = &unk_1E8092188;
  v11 = v6;
  v9 = v6;
  [(NSMutableArray *)v8 enumerateObjectsWithOptions:2 * (v4 & 1) usingBlock:v10];
}

- (Class)listViewClass
{
  v3 = [(SBFolderView *)self delegate];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 iconListViewClassForFolderView:self];
  }

  else
  {
    v5 = [objc_opt_class() defaultIconListViewClass];
  }

  v6 = v5;
  v7 = v5;

  return v6;
}

- (id)_createIconListViewForList:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderView *)self listViewClass];
  v6 = [(SBFolderView *)self listLayoutProvider];
  v7 = [(SBFolderView *)self iconLocationForList:v4];
  v8 = [(SBFolderView *)self iconViewProvider];
  v9 = [[v5 alloc] initWithModel:v4 layoutProvider:v6 iconLocation:v7 orientation:self->_orientation iconViewProvider:v8];
  [v9 setUserInterfaceLayoutDirectionHandling:{-[SBFolderView userInterfaceLayoutDirectionHandling](self, "userInterfaceLayoutDirectionHandling")}];
  [v9 setEditing:{-[SBFolderView isEditing](self, "isEditing")}];
  [v9 setLayoutDelegate:self];
  [v9 setDragDelegate:self];
  v10 = [(SBFolderView *)self legibilitySettingsForIconListViews];
  [v9 setLegibilitySettings:v10];

  v11 = [(SBFolderView *)self folderIconImageCache];
  [v9 setFolderIconImageCache:v11];

  [v9 setAddsFocusGuidesForWrapping:self->_addsFocusGuidesForWrapping];
  v12 = [(SBFolderView *)self iconImageCache];
  [v9 setIconImageCache:v12];

  [v9 setIconSpacingAxisMatchingBehavior:{-[SBFolderView iconSpacingAxisMatchingBehavior](self, "iconSpacingAxisMatchingBehavior")}];
  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", v7))
  {
    [v9 setFocusGroupIdentifier:@"FolderViewFocusGroup"];
  }

  else
  {
    v13 = [v4 uniqueIdentifier];
    [v9 setFocusGroupIdentifier:v13];
  }

  [v9 hideAllIcons];

  return v9;
}

- (void)_addIconListViewsForModels:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [(SBFolderView *)self _createIconListViewForList:v9, v12];
        [(SBFolderView *)self _addIconListView:v11];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(SBFolderView *)self setNeedsLayout];
  [(SBFolderView *)self layoutIfNeeded];
  [(SBFolderView *)self updateIconListIndexAndVisibility:1];
  [(SBFolderView *)self _updateEditingStateAnimated:0];
}

- (void)_resetIconListViews
{
  [(SBFolderView *)self tearDownListViews];
  v3 = [(SBFolderView *)self includesHiddenIconListPages];
  folder = self->_folder;
  if (v3)
  {
    [(SBFolder *)folder lists];
  }

  else
  {
    [(SBFolder *)folder visibleLists];
  }
  v5 = ;
  [(SBFolderView *)self _addIconListViewsForModels:v5];
}

- (void)updateIconListViews
{
  v3 = [(SBFolderView *)self currentPageIndex];

  [(SBFolderView *)self _updateIconListViews:v3];
}

- (void)_updateIconListViews:(int64_t)a3
{
  v5 = [(SBFolderView *)self uniqueIdentifierForPageIndex:?];
  [(SBFolderView *)self _updateIconListViewsWithCurrentPageIndex:a3 currentPageUniqueIdentifier:v5];
}

- (void)_updateIconListViewsWithCurrentPageUniqueIdentifier:(id)a3
{
  v4 = a3;
  [(SBFolderView *)self _updateIconListViewsWithCurrentPageIndex:[(SBFolderView *)self pageIndexForUniqueIdentifier:v4] currentPageUniqueIdentifier:v4];
}

- (void)_updateIconListViewsWithCurrentPageIndex:(int64_t)a3 currentPageUniqueIdentifier:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(SBFolderView *)self typeForPage:a3];
  v8 = [(SBFolderView *)self includesHiddenIconListPages];
  v9 = [(SBFolderView *)self automaticallyCreatesIconListViews];
  v10 = [(SBFolderView *)self iconListViewForPageIndex:a3];
  v36 = [v10 isShowingAllIcons];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(NSMutableArray *)self->_iconListViews copy];
  folder = self->_folder;
  v39 = v10;
  v40 = v6;
  v37 = v12;
  v38 = a3;
  v35 = v7;
  if (v8)
  {
    [(SBFolder *)folder lists];
  }

  else
  {
    [(SBFolder *)folder visibleLists];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v14 = v46 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v46;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v45 + 1) + 8 * i);
        v20 = [(SBFolderView *)self iconListViewWithList:v19];
        if (v20 == 0 && v9)
        {
          v20 = [(SBFolderView *)self _createIconListViewForList:v19];
          v21 = SBLogIcon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v51 = v19;
            _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_INFO, "adding new view for %@", buf, 0xCu);
          }

          [(SBFolderView *)self _addIconListView:v20 atEnd:0];
        }

        if (v20)
        {
          [v11 addObject:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v16);
  }

  v22 = [MEMORY[0x1E695DF70] arrayWithArray:self->_iconListViews];
  [v22 removeObjectsInArray:v11];
  if ([v22 count])
  {
    v23 = SBLogIcon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v22;
      _os_log_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_INFO, "removing leftover views: %@", buf, 0xCu);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [(SBFolderView *)self _removeIconListView:*(*(&v41 + 1) + 8 * j)];
        }

        v26 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v26);
    }
  }

  v29 = BSEqualArrays();
  [(NSMutableArray *)self->_iconListViews setArray:v11];
  [(SBFolderView *)self clearVisibleColumnRange];
  [(SBFolderView *)self _updateIconListFrames];
  [(SBFolderView *)self _layoutSubviews];
  [(SBFolderView *)self _updatePageControlNumberOfPages];
  v30 = v38;
  if (v40)
  {
    v30 = [(SBFolderView *)self pageIndexForUniqueIdentifier:v40];
  }

  if ([(SBFolderView *)self _isValidPageIndex:v30])
  {
    if (v35 == 1 && [(SBFolderView *)self iconListViewIndexForPageIndex:v30]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = [(SBFolderView *)self firstIconPageIndex];
      v32 = [(SBFolderView *)self lastIconPageIndex];
      if (v30 >= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v30;
      }

      if (v30 >= v31)
      {
        v30 = v33;
      }

      else
      {
        v30 = v31;
      }
    }

    else if ((v29 & 1) == 0)
    {
      [(SBFolderView *)self updateVisibleColumnRange];
    }

    [(SBFolderView *)self setCurrentPageIndex:v30 animated:0];
  }

  if (v36)
  {
    v34 = [(SBFolderView *)self iconListViewForPageIndex:v30];

    if (v34 == v39)
    {
      [v39 showAllIcons];
    }
  }

  [(SBFolderView *)self updateIconListIndexAndVisibility:1];
}

- (void)_updateIconListContainment:(id)a3 atIndex:(unint64_t)a4
{
  v7 = a3;
  v5 = [v7 superview];
  scrollView = self->_scrollView;

  if (v5 != scrollView)
  {
    [(SBIconScrollView *)self->_scrollView addSubview:v7];
  }
}

- (CGRect)_rectForPageAtIndex:(int64_t)a3
{
  [(SBFolderView *)self _pageWidth];
  v6 = v5;
  [(SBFolderView *)self _pageHeight];
  v8 = v7;
  [(SBFolderView *)self _pageSpacing];
  v10 = v9;
  v11 = [(SBFolderView *)self isRTL];
  v12 = [(SBFolderView *)self isVertical];
  if (v11)
  {
    v13 = [(SBFolderView *)self maximumPageIndex]- a3;
  }

  else
  {
    v13 = a3 - [(SBFolderView *)self minimumPageIndex];
  }

  v14 = v13;
  if (v12)
  {
    v15 = *MEMORY[0x1E695EFF8];
    v16 = (v8 + v10) * v14;
  }

  else
  {
    v16 = *(MEMORY[0x1E695EFF8] + 8);
    v15 = (v6 + v10) * v14;
  }

  v17 = v6;
  v18 = v8;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_frameForIconListAtIndex:(unint64_t)a3
{
  [(SBFolderView *)self _iconListViewSize];
  v6 = v5;
  v8 = v7;
  [(SBFolderView *)self _pageWidth];
  v10 = v9;
  [(SBFolderView *)self _pageHeight];
  v12 = v11;
  [(SBFolderView *)self _pageSpacing];
  v14 = v13;
  v15 = [(SBFolderView *)self isRTL];
  v16 = [(SBFolderView *)self isVertical];
  [(SBFolderView *)self _scrollOffsetForFirstListView];
  v19 = v10 + v14;
  if (v15)
  {
    v19 = -(v10 + v14);
  }

  v20 = v19 * a3;
  v21 = v12 * 0.5 + v18;
  v22 = v10 * 0.5 + v17;
  if (v16)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v19 * a3;
  }

  if (!v16)
  {
    v20 = 0.0;
  }

  v24 = v22 - v6 * 0.5 + v23;
  v25 = v21 - v8 * 0.5 + v20;
  v26 = v6;
  v27 = v8;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (int64_t)_pageIndexForOffset:(double)a3 behavior:(int64_t)a4 fractionOfDistanceThroughPage:(double *)a5
{
  v9 = objc_opt_class();
  v10 = [(SBFolderView *)self minimumPageIndex];
  v11 = [(SBFolderView *)self maximumPageIndex];
  v12 = [(SBFolderView *)self pageCount];
  [(SBFolderView *)self _pageWidthOrHeight];
  v14 = v13;
  [(SBFolderView *)self _pageSpacing];
  v16 = v15;
  v17 = [(SBFolderView *)self userInterfaceLayoutDirection];

  return [v9 _pageIndexForOffset:v10 minimumPage:v11 maximumPage:v12 pageCount:v17 pageWidth:a4 pageSpacing:a5 userInterfaceLayoutDirection:a3 behavior:v14 fractionOfDistanceThroughPage:v16];
}

+ (int64_t)_pageIndexForOffset:(double)a3 minimumPage:(int64_t)a4 maximumPage:(int64_t)a5 pageCount:(unint64_t)a6 pageWidth:(double)a7 pageSpacing:(double)a8 userInterfaceLayoutDirection:(int64_t)a9 behavior:(int64_t)a10 fractionOfDistanceThroughPage:(double *)a11
{
  v13 = [objc_opt_class() _pageOffsetForOffset:a10 behavior:a6 pageWidth:a9 pageSpacing:a11 pageCount:a3 userInterfaceLayoutDirection:a7 fractionOfDistanceThroughPage:a8];
  v14 = v13 + a4;
  if (a4 > v13 + a4)
  {
    v14 = a4;
  }

  if (a5 >= v14)
  {
    return v14;
  }

  else
  {
    return a5;
  }
}

- (unint64_t)_pageOffsetForOffset:(double)a3 behavior:(int64_t)a4 fractionOfDistanceThroughPage:(double *)a5
{
  v9 = objc_opt_class();
  [(SBFolderView *)self _pageWidthOrHeight];
  v11 = v10;
  [(SBFolderView *)self _pageSpacing];
  v13 = v12;
  v14 = [(SBFolderView *)self pageCount];
  v15 = [(SBFolderView *)self userInterfaceLayoutDirection];

  return [v9 _pageOffsetForOffset:a4 behavior:v14 pageWidth:v15 pageSpacing:a5 pageCount:a3 userInterfaceLayoutDirection:v11 fractionOfDistanceThroughPage:v13];
}

+ (unint64_t)_pageOffsetForOffset:(double)a3 behavior:(int64_t)a4 pageWidth:(double)a5 pageSpacing:(double)a6 pageCount:(unint64_t)a7 userInterfaceLayoutDirection:(int64_t)a8 fractionOfDistanceThroughPage:(double *)a9
{
  if (fabs(a5) < 2.22044605e-16)
  {
    result = 0;
    if (a9)
    {
      *a9 = 0.0;
    }

    return result;
  }

  __y = 0.0;
  v17 = a7 * a5;
  if (a6 <= 0.0)
  {
    v18 = a3 / a5;
    v22 = modf(a3 / a5, &__y);
  }

  else
  {
    v18 = a3 / (a5 + a6);
    modf(v18, &__y);
    v19 = fmod(a3, a5 + a6);
    v20 = v19 / a5;
    v21 = v19 < a5;
    v22 = 1.0;
    if (v21)
    {
      v22 = v20;
    }

    if (a7 > 1)
    {
      v17 = v17 + (a7 - 1) * a6;
    }
  }

  v23 = 0.0;
  if (v18 >= 0.0)
  {
    v23 = v22;
    if (v18 > v17)
    {
      v23 = 0.0;
    }
  }

  v24 = v23 >= 1.0 || v23 <= 0.0;
  v25 = 1.0 - v23;
  if (v24)
  {
    v25 = v23;
  }

  if (a8 == 1)
  {
    result = ~__y + a7;
  }

  else
  {
    v25 = v23;
    result = __y;
  }

  if (a4 != 1)
  {
    goto LABEL_26;
  }

  if (v25 < 0.01)
  {
    v25 = 0.0;
LABEL_26:
    if (!a9)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v25 > 0.99)
  {
    v25 = 0.0;
    ++result;
  }

  if (a9)
  {
LABEL_27:
    *a9 = v25;
  }

  return result;
}

- (id)iconListViewForPageIndex:(int64_t)a3
{
  v4 = [(SBFolderView *)self iconListViewIndexForPageIndex:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBFolderView *)self iconListViewAtIndex:v4];
  }

  return v5;
}

- (id)iconListViewForIconListModelIndex:(unint64_t)a3
{
  v4 = [(SBFolderView *)self iconListViewIndexForIconListModelIndex:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBFolderView *)self iconListViewAtIndex:v4];
  }

  return v5;
}

- (id)iconListViewAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v24 = *MEMORY[0x1E69E9840];
  v6 = [(SBFolderView *)self scrollView];
  [(SBFolderView *)self convertPoint:v6 toView:x, y];
  v8 = v7;
  v10 = v9;
  v11 = [(SBFolderView *)self currentIconListView];
  v12 = [(SBFolderView *)self currentIconListView];
  v13 = v12;
  if (!v12 || ([v12 frame], v26.x = v8, v26.y = v10, !CGRectContainsPoint(v28, v26)))
  {

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = self->_iconListViews;
    v13 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v15 = *v20;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v14);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          if (v17 != v11)
          {
            [*(*(&v19 + 1) + 8 * i) frame];
            v27.x = v8;
            v27.y = v10;
            if (CGRectContainsPoint(v29, v27))
            {
              v13 = v17;
              goto LABEL_14;
            }
          }
        }

        v13 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v13;
}

- (id)iconListViewForTouch:(id)a3
{
  [a3 locationInView:self];

  return [(SBFolderView *)self iconListViewAtPoint:?];
}

- (id)iconListViewForDrag:(id)a3
{
  [a3 locationInView:self];

  return [(SBFolderView *)self iconListViewAtPoint:?];
}

- (id)iconListViewAtScrollPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_iconListViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 frame];
        v18.x = x;
        v18.y = y;
        if (CGRectContainsPoint(v19, v18))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSArray)visibleIconListViews
{
  v8 = 0;
  v9 = 0;
  [(SBFolderView *)self getLeadingVisiblePageIndex:&v9 trailingVisiblePageIndex:&v8];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v9;
  if (v9 <= v8)
  {
    do
    {
      v5 = [(SBFolderView *)self iconListViewForPageIndex:v4];
      if (v5)
      {
        [v3 addObject:v5];
      }
    }

    while (v4++ < v8);
  }

  return v3;
}

- (void)tearDownListViews
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_iconListViews copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBFolderView *)self _removeIconListView:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_iconListViews removeAllObjects];
  [(SBFolderView *)self clearVisibleColumnRange];
}

- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  [(SBFolderView *)self updateIconListIndexAndVisibility:a4];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(SBFolderView *)self iconListViews];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (v4)
        {
          [*(*(&v13 + 1) + 8 * v11) setIconsNeedLayout];
        }

        [v12 layoutIconsIfNeededWithAnimationType:a3 options:0];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setIncludesHiddenIconListPages:(BOOL)a3
{
  if (self->_includesHiddenIconListPages != a3)
  {
    v5 = [(SBFolderView *)self currentPageUniqueIdentifier];
    self->_includesHiddenIconListPages = a3;
    [(SBFolderView *)self _updateIconListViewsWithCurrentPageUniqueIdentifier:v5];
  }
}

- (void)setAutomaticallyCreatesIconListViews:(BOOL)a3
{
  if (self->_automaticallyCreatesIconListViews != a3)
  {
    self->_automaticallyCreatesIconListViews = a3;
    [(SBFolderView *)self setNeedsLayout];
  }
}

- (void)_updateEditingStateAnimated:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(SBFolderView *)self isEditing];
  v6 = [(SBFolderView *)self suppressesEditingStateForListViews];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(SBFolderView *)self iconListViews];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    v11 = !v6;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        [v13 setEditing:v5 & v11];
        [v13 updateEditingStateAnimated:v3];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  [(SBFolderView *)self updateIconListIndexAndVisibility];
  if (v5 && (p_titleTextField = &self->_titleTextField, [(SBFolderTitleTextField *)self->_titleTextField allowsEditing]))
  {
    v15 = 1;
  }

  else
  {
    p_titleTextField = &self->_titleTextField;
    [(SBFolderTitleTextField *)self->_titleTextField endEditing:1];
    v15 = 0;
  }

  [(SBFolderTitleTextField *)*p_titleTextField setShowsEditUI:v15 animated:v3];
  v16 = [(SBFolderView *)self _isEligibleForFocusInteraction];
  v17 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
  v18 = [v17 focusedItem];

  if (v16 != (v18 != 0))
  {
    [(SBFolderView *)self setNeedsFocusUpdate];
  }

  [(SBFolderView *)self setNeedsLayout];
  if (v3)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__SBFolderView__updateEditingStateAnimated___block_invoke;
    v20[3] = &unk_1E8088C90;
    v20[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __44__SBFolderView__updateEditingStateAnimated___block_invoke_2;
    v19[3] = &unk_1E8088C90;
    v19[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v19 animations:0.3];
  }

  [(SBFolderView *)self updateGlassGroup];
}

uint64_t __44__SBFolderView__updateEditingStateAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePageControlNumberOfPages];
  v2 = *(*(a1 + 32) + 432);

  return [v2 layoutIfNeeded];
}

- (double)scrollingDimensionForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(SBFolderView *)self isVertical])
  {
    return y;
  }

  else
  {
    return x;
  }
}

- (CGPoint)pointForScrollingDimension:(double)a3
{
  v4 = [(SBFolderView *)self isVertical];
  v5 = 0.0;
  if (v4)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a3;
  }

  if (v4)
  {
    v5 = a3;
  }

  result.y = v5;
  result.x = v6;
  return result;
}

- (void)setNumberOfInitialPagesToPreferVisible:(unint64_t)a3
{
  if (self->_numberOfInitialPagesToPreferVisible != a3)
  {
    self->_numberOfInitialPagesToPreferVisible = a3;
    [(SBFolderView *)self updateVisibleColumnRange];
  }
}

- (void)updateIconListIndexAndVisibility:(BOOL)a3
{
  v5 = [(SBFolderView *)self iconVisibilityHandling];
  v6 = [(SBIconScrollView *)self->_scrollView isTracking];
  v7 = [(SBIconScrollView *)self->_scrollView isDragging];
  v8 = [(SBIconScrollView *)self->_scrollView isDecelerating];
  if (a3 || !v8 || (v6 & 1) != 0 || (v7 & 1) != 0 || v5 == 1 || ([(SBIconScrollView *)self->_scrollView _pageDecelerationTarget], [(SBFolderView *)self scrollingDimensionForPoint:?], v9 = [(SBFolderView *)self _pageIndexForOffset:1 behavior:0 fractionOfDistanceThroughPage:?], [(SBFolderView *)self currentPageIndex]!= v9))
  {
    v10 = [(SBFolderView *)self currentPageIndex];
    [(SBFolderView *)self bounds];
    if (CGRectGetWidth(v13) > 0.0)
    {
      [(SBFolderView *)self scrollOffsetForPageIndexCalculation];
      v10 = [(SBFolderView *)self _pageIndexForOffset:[(SBFolderView *)self isScrolling]^ 1 behavior:0 fractionOfDistanceThroughPage:v11];
    }

    [(SBFolderView *)self updateVisibleColumnRangeWithIconVisibilityHandling:v5];

    [(SBFolderView *)self _setCurrentPageIndex:v10 deferringPageControlUpdate:(v6 | v7) & 1];
  }
}

- (void)updateVisibleColumnRangeWithIconVisibilityHandling:(int64_t)a3
{
  v130 = *MEMORY[0x1E69E9840];
  if (![(SBFolderView *)self isRotating])
  {
    v120 = a3;
    v119 = [(SBFolderView *)self containerViewForVisibleColumnRangeCalculation];
    [v119 bounds];
    v117 = v6;
    v118 = v5;
    v115 = v8;
    v116 = v7;
    v9 = [(SBFolderView *)self countOfAdditionalPagesToKeepVisibleInOneDirection];
    [(SBFolderView *)self additionalScrollWidthToKeepVisibleInOneDirection];
    v11 = v10;
    [(SBFolderView *)self additionalScrollWidthToKeepVisibleInBothDirections];
    v13 = v12;
    [(SBFolderView *)self _pageWidthOrHeight];
    v15 = v14;
    v108 = [(SBFolderView *)self isScrolling];
    if (v108)
    {
      v16 = [(SBFolderView *)self userInterfaceLayoutDirectionAwareScrollingDirectionTracking:0];
    }

    else
    {
      v16 = 2;
    }

    v103 = v16;
    EdgeRect = SBHRectGetEdgeRect(v16, v118, v117, v116, v115);
    v106 = v18;
    v107 = EdgeRect;
    v104 = v20;
    v105 = v19;
    v102 = [(SBFolderView *)self isVertical];
    v21 = v11 + v15 * v9;
    v22 = v115;
    v23 = v116;
    v24 = v117;
    v25 = v118;
    if (v21 > 0.0)
    {
      v25 = SBHRectGrow(v103, v118, v117, v116, v115, v21);
    }

    if (v13 > 0.0)
    {
      v25 = SBHRectInsetVerticallOrHorizontally(v102, v25, v24, v23, v22, -v13);
    }

    p_lastProcessedVisibleRect = &self->_lastProcessedVisibleRect;
    *v121 = v25;
    *&v121[8] = v24;
    *&v121[16] = v23;
    *&v121[24] = v22;
    if (CGRectEqualToRect(*&v25, self->_lastProcessedVisibleRect) && self->_prefetchedCellCount == self->_lastProcessedPrefetchedCellCount)
    {
LABEL_75:

      return;
    }

    v26 = SBLogIcon();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);

    if (v27)
    {
      v28 = SBLogIcon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v136.origin.x = p_lastProcessedVisibleRect->origin.x;
        v136.origin.y = self->_lastProcessedVisibleRect.origin.y;
        v136.size.width = self->_lastProcessedVisibleRect.size.width;
        v136.size.height = self->_lastProcessedVisibleRect.size.height;
        v92 = NSStringFromCGRect(v136);
        v93 = NSStringFromCGRect(*v121);
        *buf = 138543618;
        *&buf[4] = v92;
        *&buf[12] = 2114;
        *&buf[14] = v93;
        _os_log_debug_impl(&dword_1BEB18000, v28, OS_LOG_TYPE_DEBUG, "Visible region changed. Was %{public}@, now %{public}@", buf, 0x16u);
      }
    }

    v100 = [(SBFolderView *)self numberOfInitialPagesToPreferVisible];
    _UIScrollViewNotifyForScrollView();
    v29 = [(SBFolderView *)self contentVisibility];
    v30 = 3;
    if (!v108 || v29 != 0)
    {
      v30 = v29;
    }

    v109 = v30;
    v123 = [(SBFolderView *)self minimumPageIndex];
    v31 = [(SBFolderView *)self maximumPageIndex];
    v32 = [(SBFolderView *)self firstIconPageIndex];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    if (v108)
    {
      prefetchedCellCount = self->_prefetchedCellCount;
      v129 = prefetchedCellCount;
      v34 = v103 < 2;
      if (v103 <= 1 && prefetchedCellCount)
      {
        v122 = -1;
        v35 = 4;
        v36 = v31;
LABEL_26:
        if (v36 <= v31 && v36 >= v123)
        {
          v114 = 0;
          if (v102)
          {
            v38 = v35;
          }

          else
          {
            v38 = v35 | 8;
          }

          v97 = v38;
          v99 = -v32;
          while (1)
          {
            v39 = [(SBFolderView *)self typeForPage:v36];
            if (v39 != 1)
            {
              [(SBFolderView *)self _rectForPageAtIndex:v36];
              x = v131.origin.x;
              y = v131.origin.y;
              width = v131.size.width;
              height = v131.size.height;
              if (CGRectIntersectsRect(v131, *v121))
              {
                v132.origin.x = x;
                v132.origin.y = y;
                v132.size.width = width;
                v132.size.height = height;
                v137.origin.y = v117;
                v137.origin.x = v118;
                v137.size.height = v115;
                v137.size.width = v116;
                v44 = !CGRectIntersectsRect(v132, v137);
              }

              else
              {
                v44 = 0;
              }

              [(SBFolderView *)self setShouldPrewarmContent:v44 ofNonIconPageAtIndex:v36];
            }

            v45 = [(SBFolderView *)self iconListViewForPageIndex:v36];
            v46 = v45;
            if (!v45)
            {
              goto LABEL_61;
            }

            v47 = [v45 layer];
            [v47 setNeedsLayoutOnGeometryChange:0];

            if (!v120)
            {
              [v119 convertRect:v46 toView:{*v121, *&v121[8], *&v121[16], *&v121[24]}];
              v71 = v70;
              v73 = v72;
              v75 = v74;
              v77 = v76;
              [v46 bounds];
              v139.origin.x = v78;
              v139.origin.y = v79;
              v139.size.width = v80;
              v139.size.height = v81;
              v134.origin.x = v71;
              v134.origin.y = v73;
              v134.size.width = v75;
              v134.size.height = v77;
              if (!CGRectIntersectsRect(v134, v139))
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            }

            if (v120 == 2)
            {
              goto LABEL_57;
            }

            if (v120 != 1)
            {
              goto LABEL_58;
            }

            [v46 bounds];
            v49 = v48;
            v51 = v50;
            v53 = v52;
            v55 = v54;
            [v119 convertRect:v46 toView:{*v121, *&v121[8], *&v121[16], *&v121[24]}];
            v112 = v57;
            v113 = v56;
            v110 = v59;
            v111 = v58;
            [v119 convertRect:v46 toView:{v107, v106, v105, v104}];
            v61 = v60;
            v63 = v62;
            v65 = v64;
            v67 = v66;
            v68 = [v46 gridSizeForCurrentOrientation];
            v133.origin.y = v112;
            v133.origin.x = v113;
            v133.size.height = v110;
            v133.size.width = v111;
            v138.origin.x = v49;
            v138.origin.y = v51;
            v138.size.width = v53;
            v138.size.height = v55;
            v69 = CGRectIntersectsRect(v133, v138);
            if (v114)
            {
              v114 = 1;
            }

            else
            {
              v135.origin.x = v49;
              v135.origin.y = v51;
              v135.size.width = v53;
              v135.size.height = v55;
              v140.origin.x = v61;
              v140.origin.y = v63;
              v140.size.width = v65;
              v140.size.height = v67;
              v114 = CGRectContainsRect(v135, v140);
            }

            if (v108)
            {
              break;
            }

            v82 = 0;
            v83 = 0x7FFFFFFFFFFFFFFFLL;
            v84 = 0;
            if (v69)
            {
              goto LABEL_50;
            }

LABEL_52:
            if (!(v82 & 1 | ((SBHIconGridRangeIsEmpty(v83, v84) & 1) == 0)))
            {
LABEL_58:
              [v46 setContentVisibility:2];
              [v46 hideAllIcons];
              goto LABEL_59;
            }

            if (!SBHIconGridRangeEqualToIconGridRange(v83, v84, 0, v68) && (!v100 || v39 != 1 || v99 + v36 >= v100))
            {
              v89 = [v46 gridSizeForCurrentOrientation];
              v98 = v98 & 0xFFFFFFFF00000000 | v89;
              v87 = SBHIconGridRangeCellIndexes(v83, v84, v98);
              if (v82)
              {
                v86 = objc_alloc_init(MEMORY[0x1E696AD50]);
                if (SBHIconGridRangeIsEmpty(v83, v84))
                {
                  v124[0] = MEMORY[0x1E69E9820];
                  v124[1] = 3221225472;
                  v124[2] = __67__SBFolderView_updateVisibleColumnRangeWithIconVisibilityHandling___block_invoke_2;
                  v124[3] = &unk_1E80921D8;
                  v125[0] = v86;
                  v125[1] = buf;
                  v95 = v95 & 0xFFFFFFFF00000000 | 0x10001;
                  v96 = v96 & 0xFFFFFFFF00000000 | v89;
                  SBHIconGridRangeEnumerateSubranges(0, v89, 0x10001u, v89, v97, v124);
                  v90 = v125;
                }

                else
                {
                  v126[0] = MEMORY[0x1E69E9820];
                  v126[1] = 3221225472;
                  v126[2] = __67__SBFolderView_updateVisibleColumnRangeWithIconVisibilityHandling___block_invoke;
                  v126[3] = &unk_1E808E400;
                  v127[0] = v86;
                  v127[1] = buf;
                  v94 = v94 & 0xFFFFFFFF00000000 | v89;
                  SBHIconGridRangeEnumerateOutOfBoundsCellIndexesOnEdge(v83, v84, v103, v102 ^ 1u, v89, v126);
                  v90 = v127;
                }
              }

              else
              {
                v86 = 0;
              }

              if ([v87 count])
              {
                v91 = v109;
              }

              else
              {
                v91 = 2;
              }

              [v46 setContentVisibility:v91];
              [v46 setVisibleGridCellIndexes:v87 prefetchedGridCellIndexes:v86];
              goto LABEL_60;
            }

LABEL_57:
            [v46 setContentVisibility:v109];
            [v46 showAllIcons];
LABEL_59:
            v86 = 0;
            v87 = 0;
LABEL_60:
            [v46 layoutIconsIfNeeded];
            v88 = [v46 layer];
            [v88 setNeedsLayoutOnGeometryChange:1];

LABEL_61:
            v36 += v122;
            if (v36 > v31 || v36 < v123)
            {
              goto LABEL_74;
            }
          }

          if (!v69 && (*(*&buf[8] + 24) == 0 || !v114))
          {
            v82 = 0;
            v83 = 0x7FFFFFFFFFFFFFFFLL;
            v84 = 0;
            goto LABEL_52;
          }

          v82 = !v69 || *(*&buf[8] + 24) != 0 && v114;
LABEL_50:
          v83 = [v46 gridRangeForRect:{v113, v112, v111, v110}];
          v84 = v85;
          goto LABEL_52;
        }

LABEL_74:
        p_lastProcessedVisibleRect->origin.x = *v121;
        self->_lastProcessedVisibleRect.origin.y = *&v121[8];
        self->_lastProcessedVisibleRect.size.width = *&v121[16];
        self->_lastProcessedVisibleRect.size.height = *&v121[24];
        self->_lastProcessedPrefetchedCellCount = self->_prefetchedCellCount;
        _Block_object_dispose(buf, 8);
        goto LABEL_75;
      }
    }

    else
    {
      v129 = 0;
      v34 = v103 < 2;
    }

    v37 = !v34;
    v35 = 4;
    if (v37)
    {
      v35 = 0;
    }

    v122 = 1;
    v36 = v123;
    goto LABEL_26;
  }
}

uint64_t __67__SBFolderView_updateVisibleColumnRangeWithIconVisibilityHandling___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) addIndex:a2];
  if (!--*(*(*(a1 + 40) + 8) + 24))
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __67__SBFolderView_updateVisibleColumnRangeWithIconVisibilityHandling___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) addIndex:a2];
  if (!--*(*(*(a1 + 40) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

- (BOOL)prefetchNextVisibleCellCount:(unint64_t)a3
{
  v5 = [(SBFolderView *)self scrollView];
  v6 = [v5 isDragging];

  if (!v6)
  {
    return 0;
  }

  v7 = [(SBFolderView *)self userInterfaceLayoutDirectionAwareScrollingDirectionTracking:0];
  if (v7 != self->_prefetchedColumnDirection)
  {
    self->_prefetchedCellCount = 0;
    self->_prefetchedColumnDirection = v7;
  }

  v8 = [(SBFolderView *)self maximumPrefetchedCellCount];
  prefetchedCellCount = self->_prefetchedCellCount;
  v10 = prefetchedCellCount + a3;
  if (prefetchedCellCount + a3 >= v8)
  {
    v10 = v8;
  }

  if (v10 == prefetchedCellCount)
  {
    return 0;
  }

  self->_prefetchedCellCount = v10;
  [(SBFolderView *)self updateVisibleColumnRange];
  return 1;
}

- (void)simulatePrefetchNextVisibleCellInDirection:(unsigned int)a3
{
  self->_prefetchedColumnDirection = a3;
  ++self->_prefetchedCellCount;
  [(SBFolderView *)self updateVisibleColumnRange];
}

- (unint64_t)maximumPrefetchedCellCount
{
  v2 = [(SBFolderView *)self folder];
  v3 = 2 * SBHIconGridSizeGetArea([v2 listGridSize]);

  return v3;
}

- (unint64_t)columnCountForPageIndex:(int64_t)a3
{
  v4 = [(SBFolderView *)self iconListModelIndexForPageIndex:a3];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    v7 = [(SBFolderView *)self folder];
    v8 = [v7 listAtIndex:v6];
    v5 = [v8 gridSize];
  }

  return v5;
}

- (unint64_t)columnOrRowCountForScrollingForPageIndex:(int64_t)a3
{
  v4 = [(SBFolderView *)self iconListModelIndexForPageIndex:a3];
  v5 = [(SBFolderView *)self isVertical];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v8 = [(SBFolderView *)self folder];
    v9 = [v8 listAtIndex:v4];
    v10 = [v9 gridSize];
    if (v7)
    {
      v6 = HIWORD(v10);
    }

    else
    {
      v6 = v10;
    }
  }

  return v6;
}

- (unint64_t)columnCountInVisibleColumnRange:(SBVisibleColumnRange *)a3
{
  var0 = a3->var0;
  if (var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (var0 == a3->var2)
  {
    return a3->var3 - a3->var1 + 1;
  }

  if ([(SBFolderView *)self columnCountForPageIndex:?]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = -a3->var1;
  }

  v5 = a3->var3 + v7;
  for (i = a3->var0 + 1; i < a3->var2; ++i)
  {
    v5 += [(SBFolderView *)self columnCountForPageIndex:i];
  }

  return v5;
}

- (id)iconVisibilityDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromCGRect(self->_lastProcessedVisibleRect);
  v5 = [v3 stringWithFormat:@"Visible region: %@, prefetched cell count: %lu, direction: %li", v4, self->_prefetchedCellCount, self->_prefetchedColumnDirection];

  return v5;
}

- (BOOL)isVisibleColumnRangeValid:(SBVisibleColumnRange *)a3
{
  v5 = *&a3->var2;
  v9 = *&a3->var0;
  v10 = v5;
  if (SBVisibleColumnRangeIsEmpty(&v9))
  {
    return 1;
  }

  v7 = [(SBFolderView *)self iconListViewCount];
  if (a3->var0 >= v7 || a3->var2 >= v7)
  {
    return 0;
  }

  v8 = *&a3->var2;
  v9 = *&a3->var0;
  v10 = v8;
  return SBVisibleColumnRangeMaxIconListIndex(&v9) < v7;
}

- (void)getLeadingVisiblePageIndex:(int64_t *)a3 trailingVisiblePageIndex:(int64_t *)a4
{
  [(SBFolderView *)self minimumVisibleScrollOffset];
  v8 = v7;
  [(SBFolderView *)self maximumVisibleScrollOffset];
  v10 = v9;
  v11 = [(SBFolderView *)self isRTL];
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if (v8 == v10)
  {
    v14 = [(SBFolderView *)self defaultPageIndex];
    if (a3)
    {
      *a3 = v14;
    }

    if (!a4)
    {
      return;
    }

LABEL_16:
    *a4 = v14;
    return;
  }

  v15 = v11;
  if (a3)
  {
    *a3 = [(SBFolderView *)self _pageIndexForOffset:!v11 behavior:0 fractionOfDistanceThroughPage:v12];
  }

  if (a4)
  {
    v14 = [(SBFolderView *)self _pageIndexForOffset:v15 behavior:0 fractionOfDistanceThroughPage:v13];
    goto LABEL_16;
  }
}

- (void)_markListViewsAsPurged
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_iconListViews;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        [*(*(&v7 + 1) + 8 * v6++) setPurged:{1, v7}];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)addScrollViewIsScrollingOverrideReason:(id)a3
{
  v4 = a3;
  scrollViewIsScrollingOverrides = self->_scrollViewIsScrollingOverrides;
  v8 = v4;
  if (!scrollViewIsScrollingOverrides)
  {
    v6 = objc_opt_new();
    v7 = self->_scrollViewIsScrollingOverrides;
    self->_scrollViewIsScrollingOverrides = v6;

    v4 = v8;
    scrollViewIsScrollingOverrides = self->_scrollViewIsScrollingOverrides;
  }

  [(NSMutableSet *)scrollViewIsScrollingOverrides addObject:v4];
  [(SBFolderView *)self _checkIfScrollStateChanged];
}

- (void)removeScrollViewIsScrollingOverrideReason:(id)a3
{
  [(NSMutableSet *)self->_scrollViewIsScrollingOverrides removeObject:a3];

  [(SBFolderView *)self _checkIfScrollStateChanged];
}

- (void)_updateScrollingState:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (self->_wasScrolling == a3)
  {
    NSLog(&cfstr_SomehowThisGot.isa, a2);
  }

  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v16 = 138412546;
    *&v16[4] = objc_opt_class();
    *&v16[12] = 1024;
    *&v16[14] = v3;
    v6 = *&v16[4];
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "%@ updating scrolling: %{BOOL}u", v16, 0x12u);
  }

  v7 = [(SBFolderView *)self delegate];
  if (v3)
  {
    [(SBFolderView *)self noteUserIsInteractingWithIcons];
    v8 = [(SBFolderView *)self scrollView];
    [v8 contentOffset];
    self->_scrollStartContentOffset.x = v9;
    self->_scrollStartContentOffset.y = v10;

    self->_scrollTrackingContentOffset = self->_scrollStartContentOffset;
    [(SBFolderView *)self enumerateIconListViewsUsingBlock:&__block_literal_global_94_1];
    [v7 folderViewWillBeginScrolling:self];
  }

  else
  {
    v11 = SBLogIcon();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

    if (v12)
    {
      self->_scrollFrameCount = 0;
      v13 = SBLogIcon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        scrollFrames = self->_scrollFrames;
        *v16 = 138543362;
        *&v16[4] = scrollFrames;
        _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_INFO, "Scroll frames: %{public}@", v16, 0xCu);
      }

      [(NSMutableArray *)self->_scrollFrames removeAllObjects];
    }

    if ([(SBFolderView *)self extraPageCountDuringScrolling:*v16])
    {
      [(SBFolderView *)self setExtraPageCountDuringScrolling:0];
      [(SBFolderView *)self _updateIconListFrames];
    }

    [(SBFolderView *)self updateIconListIndexAndVisibility:1];
    if ([(SBFolderView *)self snapsToPageBoundariesAfterScrolling])
    {
      [(SBFolderView *)self resetContentOffsetToCurrentPageAnimated:0];
    }

    [(SBFolderView *)self _updatePageControlToIndex:self->_currentPageIndex];
    [(SBFolderView *)self enumerateIconListViewsUsingBlock:&__block_literal_global_97];
    self->_prefetchedCellCount = 0;
    [(SBFolderView *)self updateVisibleColumnRange];
    if ([(SBFolderView *)self addsFocusGuidesForWrapping])
    {
      [(SBFolderView *)self setNeedsFocusUpdate];
    }

    [v7 folderViewDidEndScrolling:self];
    v15 = [(NSMutableArray *)self->_scrollCompletionBlocks copy];
    [(NSMutableArray *)self->_scrollCompletionBlocks removeAllObjects];
    [v15 enumerateObjectsUsingBlock:&__block_literal_global_100_0];
  }
}

- (void)performWhenScrollingEndsUsingBlock:(id)a3
{
  v4 = a3;
  if ([(SBFolderView *)self isScrolling])
  {
    [(SBFolderView *)self _addScrollingCompletionBlock:v4];
  }

  else
  {
    v4[2]();
  }
}

- (unsigned)scrollingDirectionTracking:(BOOL)a3
{
  v3 = &OBJC_IVAR___SBFolderView__scrollStartContentOffset;
  if (a3)
  {
    v3 = &OBJC_IVAR___SBFolderView__scrollTrackingContentOffset;
  }

  v4 = (self + *v3);
  v6 = *v4;
  v5 = v4[1];
  v7 = [(SBFolderView *)self scrollView];
  [v7 contentOffset];
  v9 = v8;
  v11 = v10;

  v12 = vabdd_f64(v11, v5);
  v13 = vabdd_f64(v9, v6);
  if (v11 - v5 < 0.0)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  if (v12 <= v13)
  {
    return 2 * (v9 - v6 >= 0.0);
  }

  else
  {
    return v14;
  }
}

- (unsigned)userInterfaceLayoutDirectionAwareScrollingDirectionTracking:(BOOL)a3
{
  v4 = [(SBFolderView *)self scrollingDirectionTracking:a3];
  v5 = [(SBFolderView *)self isRTL];
  if (v4 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  if (v5)
  {
    return v7;
  }

  else
  {
    return v4;
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
    v6[2] = __34__SBFolderView_setIconImageCache___block_invoke;
    v6[3] = &unk_1E8089BD8;
    v7 = v5;
    [(SBFolderView *)self enumerateIconListViewsUsingBlock:v6];
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
    v6[2] = __40__SBFolderView_setFolderIconImageCache___block_invoke;
    v6[3] = &unk_1E8089BD8;
    v7 = v5;
    [(SBFolderView *)self enumerateIconListViewsUsingBlock:v6];
  }
}

- (UIEdgeInsets)_scrollingInteractionVisibleInsets
{
  [(SBIconScrollView *)self->_scrollView adjustedContentInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_enumerateScrollableIconViewsUsingBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBFolderView *)self currentIconListView];
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 icons];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 displayedIconViewForIcon:*(*(&v12 + 1) + 8 * i)];
        if (v11)
        {
          v4[2](v4, v11, &v16);
          if (v16 == 1)
          {

            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (id)effectiveIconImageAppearance
{
  v2 = [(SBFolderView *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v2];

  return v3;
}

- (id)effectiveIconImageStyleConfiguration
{
  v2 = [(SBFolderView *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:v2];

  return v3;
}

- (void)setUsesGlassGroup:(BOOL)a3
{
  if (self->_usesGlassGroup != a3)
  {
    self->_usesGlassGroup = a3;
    [(SBFolderView *)self updateGlassGroup];
  }
}

- (void)updateGlassGroup
{
  v3 = [(SBFolderView *)self viewForGlassGroup];
  v4 = [(SBFolderView *)self usesGlassGroup];
  v5 = [v3 sbh_hasGlassGroup];
  if (v4)
  {
    if (v5)
    {
      [v3 sbh_removeGlass];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __32__SBFolderView_updateGlassGroup__block_invoke;
      block[3] = &unk_1E8088C90;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [v3 sbh_createGlassGroup];
    }
  }

  else if (v5)
  {
    [v3 sbh_removeGlass];
  }
}

- (void)updateAfterAppearanceTraitChange
{
  [(SBFolderView *)self _updatePageControlUserInterfaceStyle];

  [(SBFolderView *)self updateGlassGroup];
}

- (id)beginHidingIconsFromLayout:(id)a3 reason:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[SBHIconLayoutHidingCompoundAssertion alloc] initWithInvalidationHandler:self icons:v9 reason:v8 options:a5];

  layoutHidingAssertions = self->_layoutHidingAssertions;
  if (!layoutHidingAssertions)
  {
    v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v13 = self->_layoutHidingAssertions;
    self->_layoutHidingAssertions = v12;

    layoutHidingAssertions = self->_layoutHidingAssertions;
  }

  [(NSHashTable *)layoutHidingAssertions addObject:v10];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__SBFolderView_beginHidingIconsFromLayout_reason_options___block_invoke;
  v16[3] = &unk_1E8089BD8;
  v14 = v10;
  v17 = v14;
  [(SBFolderView *)self enumerateIconListViewsUsingBlock:v16];

  return v14;
}

- (void)prepareToOpen
{
  if (![(SBFolderView *)self _isValidPageIndex:[(SBFolderView *)self currentPageIndex]])
  {
    [(SBFolderView *)self setCurrentPageIndex:[(SBFolderView *)self defaultPageIndex] animated:0];
  }

  [(SBFolderView *)self setHidden:0];
  [(SBFolderView *)self setNeedsLayout];

  [(SBFolderView *)self layoutIfNeeded];
}

- (id)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(SBFolderView *)self iconListViewForPageIndex:[(SBFolderView *)self currentPageIndex]];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (void)transitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SBFolderView *)self _window];
  v7 = [v6 _toWindowOrientation];
  if ([(SBFolderView *)self orientation]!= v7)
  {
    [(SBFolderView *)self setRotating:1];
    [(SBFolderView *)self willTransitionAnimated:1 withSettings:0];
    if ([(SBFolderView *)self _animatesRotationForAllVisibleIconListViews])
    {
      [(SBFolderView *)self minimumVisibleScrollOffset];
      v9 = v8;
      [(SBFolderView *)self maximumVisibleScrollOffset];
      v11 = v10;
      v12 = [(SBFolderView *)self currentIconListView];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = [(SBFolderView *)self iconListViews];
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = v11 - v9;
        v17 = *v40;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v39 + 1) + 8 * i);
            [v19 frame];
            x = v46.origin.x;
            y = v46.origin.y;
            width = v46.size.width;
            height = v46.size.height;
            MinX = CGRectGetMinX(v46);
            v47.origin.x = x;
            v47.origin.y = y;
            v47.size.width = width;
            v47.size.height = height;
            v25 = CGRectGetWidth(v47);
            v26 = SBHIntersectionFloatRange(MinX, v25, v9, v16);
            if (v27 <= 0.0)
            {
              if (v19 != v12)
              {
                [v19 setHidden:{1, v26}];
              }
            }

            else
            {
              [v19 willRotateWithTransitionCoordinator:{v5, v26}];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v12 = [(SBFolderView *)self currentIconListView];
      [v12 willRotateWithTransitionCoordinator:v5];
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v13 = [(SBFolderView *)self iconListViews];
      v28 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v36;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v36 != v30)
            {
              objc_enumerationMutation(v13);
            }

            v32 = *(*(&v35 + 1) + 8 * j);
            if (v32 != v12)
            {
              [v32 setHidden:1];
            }
          }

          v29 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v29);
      }
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __59__SBFolderView_transitionToSize_withTransitionCoordinator___block_invoke;
    v34[3] = &unk_1E808B460;
    v34[4] = self;
    v34[5] = v7;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __59__SBFolderView_transitionToSize_withTransitionCoordinator___block_invoke_2;
    v33[3] = &unk_1E8089418;
    v33[4] = self;
    [v5 animateAlongsideTransition:v34 completion:v33];
  }
}

uint64_t __59__SBFolderView_transitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateIconListFrames];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setOrientation:v3];
}

void __59__SBFolderView_transitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setRotating:0];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) iconListViews];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v19 + 1) + 8 * v6++) setHidden:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) cancelScrolling];
  [*(a1 + 32) resetContentOffsetToCurrentPageAnimated:1];
  [*(a1 + 32) didTransitionAnimated:1];
  v7 = [*(*(a1 + 32) + 640) copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 640);
  *(v8 + 640) = 0;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v15 + 1) + 8 * v14) + 16))(*(*(&v15 + 1) + 8 * v14));
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_scrollView == a3)
  {
    v4 = SBLogIcon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = objc_opt_class();
      v5 = v7;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ beginning user-initiated scroll", &v6, 0xCu);
    }

    [(SBFolderView *)self _checkIfScrollStateChanged];
    self->_scrollFrameCount = 0;
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  if (self->_scrollView == v4)
  {
    v18 = v4;
    v5 = SBLogIcon();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    v7 = 0.0;
    if (v6)
    {
      ++self->_scrollFrameCount;
      v7 = CACurrentMediaTime();
    }

    if (!self->_rotating)
    {
      [(SBFolderView *)self _checkIfScrollStateChanged];
      v8 = [(SBFolderView *)self delegate];
      [v8 folderViewWillUpdatePageDuringScrolling:self];
      [(SBFolderView *)self updateIconListIndexAndVisibility];
      [v8 folderViewDidScroll:self];
    }

    if (v6)
    {
      v9 = CACurrentMediaTime();
      scrollFrames = self->_scrollFrames;
      v11 = MEMORY[0x1E696AEC0];
      scrollFrameCount = self->_scrollFrameCount;
      [(SBIconScrollView *)self->_scrollView contentOffset];
      v13 = NSStringFromCGPoint(v20);
      v14 = [v11 stringWithFormat:@"scroll view did scroll time: frame=%u, offset: %@, time: %f ms", scrollFrameCount, v13, (v9 - v7) * 100.0];
      [(NSMutableArray *)scrollFrames addObject:v14];
    }

    p_scrollTrackingContentOffset = &self->_scrollTrackingContentOffset;
    [(SBIconScrollView *)v18 contentOffset];
    v4 = v18;
    p_scrollTrackingContentOffset->x = v16;
    p_scrollTrackingContentOffset->y = v17;
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (self->_scrollView == a3)
  {
    [(SBFolderView *)self scrollingDimensionForPoint:a5->x, a5->y];
    v7 = [(SBFolderView *)self _pageIndexForOffset:1 behavior:0 fractionOfDistanceThroughPage:?];

    [(SBFolderView *)self _updatePageControlToIndex:v7];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_scrollView == a3)
  {
    v4 = a4;
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 1024;
      v11 = v4;
      v7 = v9;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ ending user-initiated scroll - willDecelerate: %{BOOL}u", &v8, 0x12u);
    }

    if (!v4)
    {
      [(SBFolderView *)self _checkIfScrollStateChanged];
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_scrollView == a3)
  {
    v4 = SBLogIcon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = objc_opt_class();
      v5 = v7;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ ending deceleration of user-initiated scroll", &v6, 0xCu);
    }

    [(SBFolderView *)self _checkIfScrollStateChanged];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_scrollView == a3)
  {
    v4 = SBLogIcon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 138543362;
      *&v6[4] = objc_opt_class();
      v5 = *&v6[4];
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ ending programmatic scroll animation", v6, 0xCu);
    }

    if (![(SBFolderView *)self _shouldIgnoreScrollingDidEndNotifications])
    {
      [(SBFolderView *)self _checkIfScrollStateChanged];
    }

    [(SBFolderView *)self setScrollingUsingDecelerationAnimation:0, *v6];
  }
}

- (void)scrollViewDidEndScrolling:(id)a3
{
  if (self->_scrollView == a3)
  {
    [(SBFolderView *)self _checkIfScrollStateChanged];
    self->_scrollTrackingContentOffset = *MEMORY[0x1E695EFF8];
  }
}

- (CGSize)scrollView:(id)a3 contentSizeForZoomScale:(double)a4 withProposedSize:(CGSize)a5
{
  if (self->_scrollView == a3)
  {
    [(SBFolderView *)self _scrollViewContentSize:a4];
    a5.height = v8;
  }

  else
  {
    width = a5.width;
  }

  height = a5.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)pageControl:(id)a3 didMoveCurrentPageToPage:(int64_t)a4 withScrubbing:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(SBFolderView *)self _adjustPageIndexFromPageControl:a4];
  v10 = [(SBFolderView *)self scrollAnimationTargetPageIndex];
  v11 = [(SBFolderView *)self minimumPageIndex];
  v12 = v10 - 1;
  if (v11 + v9 >= v10)
  {
    v12 = v10 + 1;
  }

  if (v5)
  {
    v13 = v11 + v9;
  }

  else
  {
    v13 = v12;
  }

  if (v5)
  {
    v14 = +[SBHHomeScreenDomain rootSettings];
    v15 = [v14 folderSettings];
    v16 = [v15 animatesPageScrubbing];
  }

  else
  {
    v16 = 1;
  }

  objc_initWeak(&location, self);
  [(SBFolderView *)self _disableUserInteractionBeforeSignificantAnimation];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__SBFolderView_pageControl_didMoveCurrentPageToPage_withScrubbing___block_invoke;
  v17[3] = &unk_1E808C278;
  objc_copyWeak(&v18, &location);
  [(SBFolderView *)self setCurrentPageIndex:v13 animated:v16 completion:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __67__SBFolderView_pageControl_didMoveCurrentPageToPage_withScrubbing___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enableUserInteractionAfterSignificantAnimation];
}

- (void)_setFolderName:(id)a3
{
  v4 = MEMORY[0x1E696AB08];
  v5 = a3;
  v6 = [v4 whitespaceCharacterSet];
  v11 = [v5 stringByTrimmingCharactersInSet:v6];

  if ([v11 length])
  {
    v7 = [(SBFolderView *)self folder];
    [v7 setDisplayName:v11];

    [(SBFolderTitleTextField *)self->_titleTextField setText:v11];
  }

  else
  {
    titleTextField = self->_titleTextField;
    v9 = [(SBFolderView *)self folder];
    v10 = [v9 displayName];
    [(SBFolderTitleTextField *)titleTextField setText:v10];
  }

  [(SBFolderView *)self setNeedsLayout];
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = [(SBFolderView *)self isEditing];
  if (v4)
  {
    v5 = [(SBFolderView *)self folder];
    v6 = [v5 canEditDisplayName];

    LOBYTE(v4) = v6;
  }

  return v4;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v5 = a3;
  v4 = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 folderView:self didBeginEditingTitle:v5];
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = [v8 text];
  v11 = v10;
  v12 = &stru_1F3D472A8;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  if ([(__CFString *)v13 length]<= length)
  {
    v14 = 0;
  }

  else
  {
    v14 = [(__CFString *)v13 length]- length;
  }

  v15 = [v9 length] + v14;
  if (v15 >= 0x65 && v14 != 100)
  {
    v16 = 100 - v14;
    if ([v9 length] > v16)
    {
      v17 = [v9 substringToIndex:{objc_msgSend(v9, "rangeOfComposedCharacterSequenceAtIndex:", v16)}];
      v18 = [(__CFString *)v13 stringByReplacingCharactersInRange:location withString:length, v17];
      [v8 setText:v18];
    }
  }

  return v15 < 0x65;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v6 = a3;
  v4 = [v6 text];
  [(SBFolderView *)self _setFolderName:v4];

  v5 = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 folderView:self didEndEditingTitle:v6];
  }
}

- (void)iconListView:(id)a3 willConfigureIconView:(id)a4 forIcon:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 folderView:self iconListView:v11 willConfigureIconView:v8 forIcon:v9];
  }
}

- (id)iconListView:(id)a3 animatorForLayingOutIconView:(id)a4 proposedAnimator:(id)a5
{
  v7 = a5;
  v8 = [a4 icon];
  v9 = v7;
  v10 = v9;
  if ([(NSMutableSet *)self->_iconsNeedingSlideInAnimator containsObject:v8])
  {
    v10 = objc_alloc_init(SBIconListViewSlideInAnimator);

    [(NSMutableSet *)self->_iconsNeedingSlideInAnimator removeObject:v8];
  }

  return v10;
}

- (id)iconListView:(id)a3 animatorForRemovingIcons:(id)a4 proposedAnimator:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 displayedModel];
  v11 = [v10 folder];
  v30 = [v11 indexPathForList:v10];
  v29 = [v11 isExtraList:v10];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v26 = v10;
    v27 = v9;
    v28 = v7;
    v14 = 0;
    v15 = *v33;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v20 = [v11 listContainingIcon:v17];
          v21 = [v20 folder];
          v22 = [v21 isExtraList:v20];
          if (v21)
          {
            v23 = v21 == v11;
          }

          else
          {
            v23 = 0;
          }

          if (!v23 || ((v29 ^ v22) & 1) != 0)
          {

            v9 = v27;
            v7 = v28;
            v10 = v26;
            goto LABEL_22;
          }

          if (!v14)
          {
            v14 = objc_alloc_init(SBIconListViewClusterAnimator);
          }

          -[SBIconListViewClusterAnimator setRemovalDirection:forIcon:](v14, "setRemovalDirection:forIcon:", [v21 indexOfList:{v20, v26, v27, v28}] < objc_msgSend(v30, "sbListIndex"), v17);
        }
      }

      v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    if (v14)
    {
      v14 = v14;
      v24 = v14;
      v9 = v27;
      v7 = v28;
      v10 = v26;
      goto LABEL_24;
    }

    v9 = v27;
    v7 = v28;
    v10 = v26;
  }

  else
  {
    v14 = 0;
LABEL_22:
  }

  v24 = v9;
LABEL_24:

  return v24;
}

- (BOOL)iconListView:(id)a3 canHandleIconDropSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 folderView:self iconListView:v6 canHandleIconDropSession:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)iconListView:(id)a3 iconDropSessionDidEnter:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 folderView:self iconListView:v8 iconDropSessionDidEnter:v6];
  }
}

- (id)iconListView:(id)a3 iconDropSessionDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderView *)self _dragDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 folderView:self iconListView:v6 iconDropSessionDidUpdate:v7], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];
  }

  return v9;
}

- (id)iconListView:(id)a3 dataDropSessionDidUpdate:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];

  return v4;
}

- (void)iconListView:(id)a3 iconDropSessionDidExit:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 folderView:self iconListView:v8 iconDropSessionDidExit:v6];
  }
}

- (void)iconListView:(id)a3 performIconDrop:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 folderView:self iconListView:v8 performIconDrop:v6];
  }
}

- (id)iconListView:(id)a3 iconViewForDroppingIconDragItem:(id)a4 proposedIconView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBFolderView *)self _dragDelegate];
  v12 = v10;
  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 folderView:self iconListView:v8 iconViewForDroppingIconDragItem:v9 proposedIconView:v10];
  }

  return v12;
}

- (void)iconListView:(id)a3 willUseIconView:(id)a4 forDroppingIconDragItem:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 folderView:self iconListView:v11 willUseIconView:v8 forDroppingIconDragItem:v9];
  }
}

- (id)iconListView:(id)a3 previewForDroppingIconDragItem:(id)a4 proposedPreview:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBFolderView *)self _dragDelegate];
  v12 = v10;
  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 folderView:self iconListView:v8 previewForDroppingIconDragItem:v9 proposedPreview:v10];
  }

  return v12;
}

- (void)iconListView:(id)a3 iconDragItem:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 folderView:self iconListView:v11 iconDragItem:v8 willAnimateDropWithAnimator:v9];
  }
}

- (BOOL)iconListView:(id)a3 shouldAllowSpringLoadedInteractionForIconDropSession:(id)a4 onIconView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 folderView:self iconListView:v8 shouldAllowSpringLoadedInteractionForIconDropSession:v9 onIconView:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)iconListView:(id)a3 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 folderView:self iconListView:v8 springLoadedInteractionForIconDragDidCompleteOnIconView:v6];
  }
}

- (id)iconListView:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 folderView:self iconListView:v6 customSpringAnimationBehaviorForDroppingItem:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)folder:(id)a3 didAddList:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 indexOfList:v7];
  v9 = [(SBFolderView *)self currentPageIndex];
  v10 = [(SBFolderView *)self iconListModelIndexForPageIndex:v9];
  v11 = SBLogIcon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138413058;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_INFO, "%@ --> %@; index = %lu; currentPage: %li", &v12, 0x2Au);
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v8 <= v10 && (![v7 isHidden] || -[SBFolderView includesHiddenIconListPages](self, "includesHiddenIconListPages")))
  {
    ++v9;
  }

  [(SBFolderView *)self _noteFolderListsDidChange:v9];
}

- (void)folder:(id)a3 willRemoveLists:(id)a4 atIndexes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBFolderView *)self currentPageIndex];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __49__SBFolderView_folder_willRemoveLists_atIndexes___block_invoke;
  v34[3] = &unk_1E8092220;
  v34[4] = self;
  v34[5] = v11;
  v12 = [v9 bs_containsObjectPassingTest:v34];
  v13 = [v8 lastVisibleListIndex];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __49__SBFolderView_folder_willRemoveLists_atIndexes___block_invoke_2;
  v31[3] = &unk_1E8092220;
  v14 = v8;
  v32 = v14;
  v33 = v13;
  v15 = [v9 bs_containsObjectPassingTest:v31];
  if (v12 && v15)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__27;
    v29 = __Block_byref_object_dispose__27;
    v30 = 0;
    v16 = [v14 lists];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __49__SBFolderView_folder_willRemoveLists_atIndexes___block_invoke_3;
    v22 = &unk_1E8092248;
    v23 = v9;
    v24 = &v25;
    [v16 enumerateObjectsWithOptions:2 usingBlock:&v19];

    if (!v26[5] || (v17 = [(SBFolderView *)self pageIndexForIconListModel:v19, v20, v21, v22], v17 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v17 = [(SBFolderView *)self firstIconPageIndex:v19];
    }

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = 0;
    }

    else
    {
      v18 = v11 - v17;
    }

    [(SBFolderView *)self setExtraPageCountDuringScrolling:v18];
    [(SBFolderView *)self setCurrentPageIndex:v17 animated:1];

    _Block_object_dispose(&v25, 8);
  }
}

void __49__SBFolderView_folder_willRemoveLists_atIndexes___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 isHidden] & 1) == 0 && (objc_msgSend(*(a1 + 32), "containsObject:", v7) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)folder:(id)a3 didRemoveLists:(id)a4 atIndexes:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogIcon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_INFO, "%@ --> %@; indexes = %@", &v12, 0x20u);
  }

  [(SBFolderView *)self _noteFolderListsDidChange:[(SBFolderView *)self currentPageIndex]];
}

- (void)folder:(id)a3 listHiddenWillChange:(id)a4
{
  if (([a4 isHidden] & 1) == 0)
  {
    v5 = [(SBFolderView *)self currentPageIndex];
    if (v5 == [(SBFolderView *)self lastIconPageIndex])
    {
      v6 = v5 - 1;
      v7 = [(SBFolderView *)self firstIconPageIndex];
      if (v6 <= v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v6;
      }

      [(SBFolderView *)self setCurrentPageIndex:v8 animated:0];
    }
  }
}

- (void)folderDisplayNameDidChange:(id)a3
{
  v4 = [a3 displayName];
  [(SBFolderView *)self _setFolderName:v4];
}

- (void)folder:(id)a3 willRestoreOverflowIcon:(id)a4 toList:(id)a5
{
  v13 = a4;
  v7 = [(SBFolderView *)self iconListViewWithList:a5];
  v8 = [v7 visibleGridCellIndexes];
  v9 = [v8 count];

  if (v9)
  {
    iconsNeedingSlideInAnimator = self->_iconsNeedingSlideInAnimator;
    if (!iconsNeedingSlideInAnimator)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v12 = self->_iconsNeedingSlideInAnimator;
      self->_iconsNeedingSlideInAnimator = v11;

      iconsNeedingSlideInAnimator = self->_iconsNeedingSlideInAnimator;
    }

    [(NSMutableSet *)iconsNeedingSlideInAnimator addObject:v13];
  }
}

- (id)_legibilitySettingsWithPrimaryColor:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderView *)self legibilitySettings];
  v6 = [v5 settingsWithUpdatedPrimaryColor:v4];

  return v6;
}

- (void)_updateTitleLegibilitySettings
{
  v6 = [(SBFolderView *)self legibilitySettings];
  if (UIAccessibilityIsReduceTransparencyEnabled() && [v6 style] == 2)
  {
    titleTextField = self->_titleTextField;
    v4 = [MEMORY[0x1E69DC888] blackColor];
    v5 = [(SBFolderView *)self _legibilitySettingsWithPrimaryColor:v4];
    [(SBFolderTitleTextField *)titleTextField setLegibilitySettings:v5];
  }

  else
  {
    [(SBFolderTitleTextField *)self->_titleTextField setLegibilitySettings:v6];
  }
}

- (void)_updateIconListLegibilitySettings
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(SBFolderView *)self legibilitySettingsForIconListViews];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_iconListViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setLegibilitySettings:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(SBIconListPageControl *)self->_pageControl setLegibilitySettings:v3];
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBFolderView *)self _updateTitleLegibilitySettings];
    [(SBFolderView *)self _updateIconListLegibilitySettings];
  }
}

- (id)accessibilityTintColorForRect:(CGRect)a3 tintStyle:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 folderView:self accessibilityTintColorForRect:{x, y, width, height}];
  }

  else
  {
    v11 = 0;
  }

  v12 = SBHomeAccessibilityTintColor(a4, v11);

  return v12;
}

- (id)accessibilityLegibilitySettingsForRect:(CGRect)a3 tintStyle:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 folderView:self accessibilityTintColorForRect:{x, y, width, height}];
  }

  else
  {
    v11 = 0;
  }

  v12 = SBHomeAccessibilityTintLegibiliitySettings(a4, v11);

  return v12;
}

- (void)willMoveToWindow:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBFolderView;
  [(SBFolderView *)&v12 willMoveToWindow:?];
  v5 = [(SBFolderView *)self window];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3 != 0;
  }

  v7 = [(SBFolderView *)self window];

  if (v7)
  {
    v8 = a3 != 0;
  }

  else
  {
    v8 = 1;
  }

  if (v6 || !v8)
  {
    v9 = [(SBFolderView *)self minimumPageIndex];
    v10 = [(SBFolderView *)self maximumPageIndex];
    currentPageIndex = self->_currentPageIndex;
    if (currentPageIndex < v9 || (v9 = v10 & ~(v10 >> 63), currentPageIndex > v9))
    {
      [(SBFolderView *)self setCurrentPageIndex:v9 animated:0];
    }
  }

  if (a3)
  {
    [(SBFolderView *)self setHasEverBeenInAWindow:1];
  }
}

- (id)succinctDescription
{
  v2 = [(SBFolderView *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFolderView *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBFolderView *)self succinctDescriptionBuilder];
  [(SBFolderView *)self frame];
  v5 = [v4 appendRect:@"frame" withName:?];
  v6 = [(SBFolderView *)self folder];
  v7 = [v4 appendObject:v6 withName:@"folder"];

  v8 = [v4 appendBool:-[SBFolderView isEditing](self withName:{"isEditing"), @"editing"}];
  v9 = [v4 appendBool:-[SBFolderView isScrolling](self withName:{"isScrolling"), @"scrolling"}];
  if ([(SBFolderView *)self orientation]== 1)
  {
    v10 = @"UIInterfaceOrientationPortrait";
  }

  else if ([(SBFolderView *)self orientation]== 4)
  {
    v10 = @"UIInterfaceOrientationLandscapeLeft";
  }

  else if ([(SBFolderView *)self orientation]== 3)
  {
    v10 = @"UIInterfaceOrientationLandscapeRight";
  }

  else if ([(SBFolderView *)self orientation]== 2)
  {
    v10 = @"UIInterfaceOrientationPortraitUpsideDown";
  }

  else
  {
    v10 = 0;
  }

  [v4 appendString:v10 withName:@"orientation"];
  v11 = [v4 appendInteger:-[SBFolderView currentPageIndex](self withName:{"currentPageIndex"), @"currentPageIndex"}];
  v12 = [v4 appendInteger:-[SBFolderView iconListViewCount](self withName:{"iconListViewCount"), @"iconListViewCount"}];
  v13 = [v4 appendBool:self->_isScalingViewBorrowed withName:@"isScalingViewBorrowed" ifEqualTo:1];
  v14 = [v4 appendInteger:-[SBFolderView leadingCustomPageCount](self withName:{"leadingCustomPageCount"), @"leadingCustomPageCount"}];
  v15 = [v4 appendInteger:-[SBFolderView trailingCustomPageCount](self withName:{"trailingCustomPageCount"), @"trailingCustomPageCount"}];
  v16 = [(NSMutableSet *)self->_scrollViewIsScrollingOverrides allObjects];
  [v4 appendArraySection:v16 withName:@"scrollViewIsScrollingOverrides" skipIfEmpty:0];

  v17 = [v4 appendRect:@"lastProcessedVisibleRect" withName:{self->_lastProcessedVisibleRect.origin.x, self->_lastProcessedVisibleRect.origin.y, self->_lastProcessedVisibleRect.size.width, self->_lastProcessedVisibleRect.size.height}];
  v18 = [(SBFolderView *)self contentVisibility];
  if (v18)
  {
    v19 = SBHStringFromContentVisibility(v18);
    [v4 appendString:v19 withName:@"contentVisibility"];
  }

  return v4;
}

- (id)_dragDelegate
{
  v3 = [(SBFolderView *)self delegate];
  v4 = v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 draggingDelegateForFolderView:self];
  }

  return v4;
}

- (void)_updateCycleIdleUntil:(unint64_t)a3
{
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = mach_absolute_time();
    v8 = [(SBFolderView *)self prefetchNextVisibleCellCount:1];
    v9 = mach_absolute_time();
    if (!v8)
    {
      break;
    }

    if (v9 > a3)
    {
      break;
    }

    v5 += v9 - v7;
    v10 = v5 / v6++ + v9;
  }

  while (v10 <= a3);
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

@end