@interface SBFolderView
+ (int64_t)_pageIndexForOffset:(double)offset minimumPage:(int64_t)page maximumPage:(int64_t)maximumPage pageCount:(unint64_t)count pageWidth:(double)width pageSpacing:(double)spacing userInterfaceLayoutDirection:(int64_t)direction behavior:(int64_t)self0 fractionOfDistanceThroughPage:(double *)self1;
+ (unint64_t)_pageOffsetForOffset:(double)offset behavior:(int64_t)behavior pageWidth:(double)width pageSpacing:(double)spacing pageCount:(unint64_t)count userInterfaceLayoutDirection:(int64_t)direction fractionOfDistanceThroughPage:(double *)page;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)_useParallaxOnPageControl;
- (BOOL)canChangeCurrentPageIndexToIndex:(unint64_t)index;
- (BOOL)doesPageContainIconListView:(int64_t)view;
- (BOOL)hasIconPages;
- (BOOL)iconListView:(id)view canHandleIconDropSession:(id)session;
- (BOOL)iconListView:(id)view shouldAllowSpringLoadedInteractionForIconDropSession:(id)session onIconView:(id)iconView;
- (BOOL)isParallaxEnabled;
- (BOOL)isScrolling;
- (BOOL)isVisibleColumnRangeValid:(SBVisibleColumnRange *)valid;
- (BOOL)locationCountsAsInsideFolder:(CGPoint)folder;
- (BOOL)prefetchNextVisibleCellCount:(unint64_t)count;
- (BOOL)setCurrentPageIndex:(int64_t)index animated:(BOOL)animated completion:(id)completion;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (CGPoint)_scrollOffsetForContentAtPageIndex:(int64_t)index;
- (CGPoint)_scrollOffsetForFirstListView;
- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)index;
- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)index pageHeight:(double)height;
- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)index pageWidth:(double)width;
- (CGPoint)pointForScrollingDimension:(double)dimension;
- (CGRect)_frameForIconListAtIndex:(unint64_t)index;
- (CGRect)_rectForPageAtIndex:(int64_t)index;
- (CGSize)_iconListViewSize;
- (CGSize)_scrollViewContentSize;
- (CGSize)scrollView:(id)view contentSizeForZoomScale:(double)scale withProposedSize:(CGSize)size;
- (Class)listViewClass;
- (NSArray)iconListViews;
- (NSArray)visibleIconListViews;
- (NSString)iconLocation;
- (SBFolderView)initWithConfiguration:(id)configuration;
- (SBFolderViewDelegate)delegate;
- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)index pageHeight:(double)height;
- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)index pageWidth:(double)width;
- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)index pageWidthOrHeight:(double)height;
- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)index;
- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)index pageHeight:(double)height;
- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)index pageWidth:(double)width;
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
- (double)scrollingDimensionForPoint:(CGPoint)point;
- (id)_createIconListViewForList:(id)list;
- (id)_dragDelegate;
- (id)_legibilitySettingsWithPrimaryColor:(id)color;
- (id)_newPageControl;
- (id)accessibilityLegibilitySettingsForRect:(CGRect)rect tintStyle:(unint64_t)style;
- (id)accessibilityTintColorForRect:(CGRect)rect tintStyle:(unint64_t)style;
- (id)allIconListViews;
- (id)beginHidingIconsFromLayout:(id)layout reason:(id)reason options:(unint64_t)options;
- (id)currentPageUniqueIdentifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)disableAutoScrollForReason:(id)reason;
- (id)effectiveIconImageAppearance;
- (id)effectiveIconImageStyleConfiguration;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)iconListModelForPageIndex:(int64_t)index;
- (id)iconListView:(id)view animatorForLayingOutIconView:(id)iconView proposedAnimator:(id)animator;
- (id)iconListView:(id)view animatorForRemovingIcons:(id)icons proposedAnimator:(id)animator;
- (id)iconListView:(id)view customSpringAnimationBehaviorForDroppingItem:(id)item;
- (id)iconListView:(id)view dataDropSessionDidUpdate:(id)update;
- (id)iconListView:(id)view iconDropSessionDidUpdate:(id)update;
- (id)iconListView:(id)view iconViewForDroppingIconDragItem:(id)item proposedIconView:(id)iconView;
- (id)iconListView:(id)view previewForDroppingIconDragItem:(id)item proposedPreview:(id)preview;
- (id)iconListViewAtPoint:(CGPoint)point;
- (id)iconListViewAtScrollPoint:(CGPoint)point;
- (id)iconListViewDisplayingIconView:(id)view;
- (id)iconListViewForDrag:(id)drag;
- (id)iconListViewForIconListModelIndex:(unint64_t)index;
- (id)iconListViewForPageIndex:(int64_t)index;
- (id)iconListViewForTouch:(id)touch;
- (id)iconListViewWithList:(id)list;
- (id)iconVisibilityDescription;
- (id)preferredFocusEnvironments;
- (id)succinctDescription;
- (id)uniqueIdentifierForPageIndex:(int64_t)index;
- (int64_t)_pageIndexForOffset:(double)offset behavior:(int64_t)behavior fractionOfDistanceThroughPage:(double *)page;
- (int64_t)closestIconPageIndexForPageIndex:(int64_t)index;
- (int64_t)firstLeadingCustomPageIndex;
- (int64_t)firstTrailingCustomPageIndex;
- (int64_t)lastLeadingCustomPageIndex;
- (int64_t)lastTrailingCustomPageIndex;
- (int64_t)maximumPageIndex;
- (int64_t)nearestIconPageIndex;
- (int64_t)pageIndexForIconListModel:(id)model;
- (int64_t)pageIndexForIconListModelIndex:(unint64_t)index;
- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)index;
- (int64_t)pageIndexForTrailingCustomPageIndex:(unint64_t)index;
- (int64_t)pageIndexForUniqueIdentifier:(id)identifier;
- (int64_t)scrollAnimationTargetPageIndex;
- (int64_t)userInterfaceLayoutDirection;
- (unint64_t)_pageOffsetForOffset:(double)offset behavior:(int64_t)behavior fractionOfDistanceThroughPage:(double *)page;
- (unint64_t)columnCountForPageIndex:(int64_t)index;
- (unint64_t)columnCountInVisibleColumnRange:(SBVisibleColumnRange *)range;
- (unint64_t)columnOrRowCountForScrollingForPageIndex:(int64_t)index;
- (unint64_t)countOfAdditionalPagesToKeepVisibleInOneDirection;
- (unint64_t)iconListModelIndexForPageIndex:(int64_t)index;
- (unint64_t)iconListViewIndexForIconListModelIndex:(unint64_t)index;
- (unint64_t)iconListViewIndexForPageIndex:(int64_t)index;
- (unint64_t)iconPageCount;
- (unint64_t)leadingCustomPageIndexForPageIndex:(int64_t)index;
- (unint64_t)maximumPrefetchedCellCount;
- (unint64_t)pageCount;
- (unint64_t)trailingCustomPageIndexForPageIndex:(int64_t)index;
- (unint64_t)typeForPage:(int64_t)page;
- (unsigned)scrollingDirectionTracking:(BOOL)tracking;
- (unsigned)userInterfaceLayoutDirectionAwareScrollingDirectionTracking:(BOOL)tracking;
- (void)_addIconListView:(id)view atEnd:(BOOL)end;
- (void)_addIconListViewsForModels:(id)models;
- (void)_addScrollingCompletionBlock:(id)block;
- (void)_checkIfScrollStateChanged;
- (void)_configureIconListView:(id)view;
- (void)_configureScrollingIconListView:(id)view;
- (void)_didAddIconListView:(id)view;
- (void)_didRemoveIconListView:(id)view;
- (void)_enumerateScrollableIconViewsUsingBlock:(id)block;
- (void)_layoutSubviews;
- (void)_markListViewsAsPurged;
- (void)_orientationDidChange:(int64_t)change;
- (void)_removeDisableAutoScrollAssertion:(id)assertion;
- (void)_removeIconListView:(id)view purge:(BOOL)purge;
- (void)_resetIconListViews;
- (void)_setCurrentPageIndex:(int64_t)index deferringPageControlUpdate:(BOOL)update;
- (void)_setFolderName:(id)name;
- (void)_setPageControlDisabled:(BOOL)disabled forReason:(id)reason;
- (void)_setParallaxDisabled:(BOOL)disabled forReason:(id)reason;
- (void)_setScrollViewContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)_setScrollingDisabled:(BOOL)disabled forReason:(id)reason;
- (void)_updateCycleIdleUntil:(unint64_t)until;
- (void)_updateEditingStateAnimated:(BOOL)animated;
- (void)_updateIconListContainment:(id)containment atIndex:(unint64_t)index;
- (void)_updateIconListFrames;
- (void)_updateIconListLegibilitySettings;
- (void)_updateIconListViews:(int64_t)views;
- (void)_updateIconListViewsWithCurrentPageIndex:(int64_t)index currentPageUniqueIdentifier:(id)identifier;
- (void)_updateIconListViewsWithCurrentPageUniqueIdentifier:(id)identifier;
- (void)_updatePageControlCurrentPage;
- (void)_updatePageControlNumberOfPages;
- (void)_updatePageControlToIndex:(int64_t)index;
- (void)_updatePageControlUserInterfaceStyle;
- (void)_updateParallaxSettings;
- (void)_updateScalingViewFrame;
- (void)_updateScrollingState:(BOOL)state;
- (void)_updateTitleLegibilitySettings;
- (void)_willScrollToPageIndex:(int64_t)index animated:(BOOL)animated;
- (void)addScrollViewIsScrollingOverrideReason:(id)reason;
- (void)cancelScrolling;
- (void)clearVisibleColumnRange;
- (void)dealloc;
- (void)didAddSubview:(id)subview;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)enumerateIconListViewsUsingBlock:(id)block;
- (void)enumerateIconListViewsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)folder:(id)folder didAddList:(id)list;
- (void)folder:(id)folder didRemoveLists:(id)lists atIndexes:(id)indexes;
- (void)folder:(id)folder listHiddenWillChange:(id)change;
- (void)folder:(id)folder willRemoveLists:(id)lists atIndexes:(id)indexes;
- (void)folder:(id)folder willRestoreOverflowIcon:(id)icon toList:(id)list;
- (void)folderDidChange;
- (void)folderDisplayNameDidChange:(id)change;
- (void)folderWillChange:(id)change;
- (void)getLeadingVisiblePageIndex:(int64_t *)index trailingVisiblePageIndex:(int64_t *)pageIndex;
- (void)iconListView:(id)view iconDragItem:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)iconListView:(id)view iconDropSessionDidEnter:(id)enter;
- (void)iconListView:(id)view iconDropSessionDidExit:(id)exit;
- (void)iconListView:(id)view performIconDrop:(id)drop;
- (void)iconListView:(id)view springLoadedInteractionForIconDragDidCompleteOnIconView:(id)iconView;
- (void)iconListView:(id)view willConfigureIconView:(id)iconView forIcon:(id)icon;
- (void)iconListView:(id)view willUseIconView:(id)iconView forDroppingIconDragItem:(id)item;
- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout;
- (void)layoutSubviews;
- (void)pageControl:(id)control didMoveCurrentPageToPage:(int64_t)page withScrubbing:(BOOL)scrubbing;
- (void)performWhenScrollingEndsUsingBlock:(id)block;
- (void)prepareToOpen;
- (void)removeAssertion:(id)assertion;
- (void)removeScrollViewIsScrollingOverrideReason:(id)reason;
- (void)resetContentOffsetToCurrentPageAnimated:(BOOL)animated;
- (void)returnScalingView;
- (void)scrollUsingDecelerationAnimationToPageIndex:(int64_t)index withCompletionHandler:(id)handler;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrolling:(id)scrolling;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)scrollingDisabledGestureDidUpdate:(id)update;
- (void)setAutomaticallyCreatesIconListViews:(BOOL)views;
- (void)setContentAlpha:(double)alpha;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setDelegate:(id)delegate;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFolder:(id)folder;
- (void)setFolderIconImageCache:(id)cache;
- (void)setIconImageCache:(id)cache;
- (void)setIncludesHiddenIconListPages:(BOOL)pages;
- (void)setLegibilitySettings:(id)settings;
- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated;
- (void)setNeedsLayout;
- (void)setNumberOfInitialPagesToPreferVisible:(unint64_t)visible;
- (void)setOrientation:(int64_t)orientation;
- (void)setSuppressesEditingStateForListViews:(BOOL)views animated:(BOOL)animated;
- (void)setUsesGlassGroup:(BOOL)group;
- (void)simulatePrefetchNextVisibleCellInDirection:(unsigned int)direction;
- (void)tearDownListViews;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)transitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)updateAfterAppearanceTraitChange;
- (void)updateGlassGroup;
- (void)updateIconListIndexAndVisibility:(BOOL)visibility;
- (void)updateIconListViews;
- (void)updateVisibleColumnRange;
- (void)updateVisibleColumnRangeWithIconVisibilityHandling:(int64_t)handling;
- (void)willMoveToWindow:(id)window;
@end

@implementation SBFolderView

- (id)allIconListViews
{
  iconListViews = self->_iconListViews;
  additionalIconListViews = [(SBFolderView *)self additionalIconListViews];
  v4 = [(NSMutableArray *)iconListViews arrayByAddingObjectsFromArray:additionalIconListViews];

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
  includesHiddenIconListPages = [(SBFolderView *)self includesHiddenIconListPages];
  folder = self->_folder;
  if (includesHiddenIconListPages)
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
  leadingCustomPageCount = [(SBFolderView *)self leadingCustomPageCount];
  v4 = [(SBFolderView *)self iconPageCount]+ leadingCustomPageCount;
  return v4 + [(SBFolderView *)self trailingCustomPageCount];
}

- (SBVisibleColumnRange)visibleColumnRangeExcludingAdditionalWidthKeptVisible
{
  containerViewForVisibleColumnRangeCalculation = [(SBFolderView *)self containerViewForVisibleColumnRangeCalculation];
  [containerViewForVisibleColumnRangeCalculation bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  isVertical = [(SBFolderView *)self isVertical];
  minimumPageIndex = [(SBFolderView *)self minimumPageIndex];
  maximumPageIndex = [(SBFolderView *)self maximumPageIndex];
  firstIconPageIndex = [(SBFolderView *)self firstIconPageIndex];
  v16 = 0;
  retstr->var2 = 0;
  retstr->var3 = 0;
  retstr->var1 = 0;
  if (minimumPageIndex <= maximumPageIndex)
  {
    v39 = retstr;
    v40 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v41 = 0;
    v20 = maximumPageIndex - minimumPageIndex + 1;
    v21 = minimumPageIndex - firstIconPageIndex;
    do
    {
      if ([(SBFolderView *)self typeForPage:minimumPageIndex]== 1)
      {
        v22 = [(SBFolderView *)self iconListViewForPageIndex:minimumPageIndex];
        if (v22)
        {
          [containerViewForVisibleColumnRangeCalculation convertRect:v22 toView:{v6, v8, v10, v12}];
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

          gridSizeForCurrentOrientation = [v22 gridSizeForCurrentOrientation];
          if ((v19 & 1) == 0)
          {
            v40 = v35 % gridSizeForCurrentOrientation;
            v41 = v21;
          }

          if (isVertical)
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

      ++minimumPageIndex;
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
  pageCount = [(SBFolderView *)self pageCount];
  minimumPageIndex = [(SBFolderView *)self minimumPageIndex];
  v5 = pageCount - 1;
  if (!pageCount)
  {
    v5 = 0;
  }

  return minimumPageIndex + v5;
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
  scrollView = [(SBFolderView *)self scrollView];
  [scrollView contentOffset];
  v5 = v4;
  v7 = v6;
  isRTL = [(SBFolderView *)self isRTL];
  if ([(SBFolderView *)self isVertical])
  {
    v5 = v7;
  }

  else if (isRTL)
  {
    [scrollView frame];
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

  userInterfaceLayoutDirectionHandling = [(SBFolderView *)self userInterfaceLayoutDirectionHandling];
  if (userInterfaceLayoutDirectionHandling == 2)
  {
    return 1;
  }

  if (userInterfaceLayoutDirectionHandling)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E69DDA98];

  return [v4 userInterfaceLayoutDirection];
}

- (BOOL)isScrolling
{
  scrollView = [(SBFolderView *)self scrollView];
  isScrolling = [scrollView isScrolling];

  return (isScrolling & 1) != 0 || [(NSMutableSet *)self->_scrollViewIsScrollingOverrides count]!= 0;
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
  delegate = [(SBFolderView *)self delegate];
  v4 = delegate;
  if (!delegate || ([delegate iconLocationForFolderView:self], (defaultIconLocation = objc_claimAutoreleasedReturnValue()) == 0))
  {
    currentIconListView = [(SBFolderView *)self currentIconListView];
    iconLocation = [currentIconListView iconLocation];

    if (iconLocation)
    {
      goto LABEL_6;
    }

    defaultIconLocation = [objc_opt_class() defaultIconLocation];
  }

  iconLocation = defaultIconLocation;
LABEL_6:

  return iconLocation;
}

- (double)headerHeight
{
  headerHeight = self->_headerHeight;
  if (headerHeight == *MEMORY[0x1E69DE788])
  {
    headerView = [(SBFolderView *)self headerView];
    if (headerView)
    {
      [(SBFolderView *)self bounds];
      [headerView sizeThatFits:{v5, v6}];
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
  folder = [(SBFolderView *)self folder];
  effectiveGridSizeClassDomain = [folder effectiveGridSizeClassDomain];

  return effectiveGridSizeClassDomain;
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
  trailingCustomPageCount = [(SBFolderView *)self trailingCustomPageCount];
  if (trailingCustomPageCount)
  {
    return [(SBFolderView *)self maximumPageIndex]- trailingCustomPageCount + 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)hasIconPages
{
  includesHiddenIconListPages = [(SBFolderView *)self includesHiddenIconListPages];
  folder = self->_folder;
  if (includesHiddenIconListPages)
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

  currentPageIndex = [(SBFolderView *)self currentPageIndex];
  isScrolling = [(SBFolderView *)self isScrolling];
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

  if (!self->_isScalingViewBorrowed && !isScrolling && currentPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(SBFolderView *)self currentPageIndex]== currentPageIndex)
    {
      [(SBFolderView *)self resetContentOffsetToCurrentPageAnimated:0];
    }

    else
    {
      [(SBFolderView *)self setCurrentPageIndex:currentPageIndex animated:0];
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
  _pageCountForPageControl = [(SBFolderView *)self _pageCountForPageControl];
  if (_pageCountForPageControl != [(UIPageControl *)self->_pageControl numberOfPages])
  {
    [(UIPageControl *)self->_pageControl setNumberOfPages:_pageCountForPageControl];
  }

  [(SBFolderView *)self _updatePageControlCurrentPage];
}

- (void)updateVisibleColumnRange
{
  iconVisibilityHandling = [(SBFolderView *)self iconVisibilityHandling];

  [(SBFolderView *)self updateVisibleColumnRangeWithIconVisibilityHandling:iconVisibilityHandling];
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
  isRTL = [(SBFolderView *)self isRTL];
  isVertical = [(SBFolderView *)self isVertical];
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
  v25 = isVertical;
  v26 = isRTL;
  v24[6] = v12;
  v24[7] = v16;
  v24[8] = v14;
  [(NSMutableArray *)iconListViews enumerateObjectsUsingBlock:v24];
  _Block_object_dispose(v27, 8);
}

- (CGSize)_scrollViewContentSize
{
  pageCount = [(SBFolderView *)self pageCount];
  v4 = [(SBFolderView *)self extraPageCountDuringScrolling]+ pageCount;
  [(SBFolderView *)self _pageSpacing];
  v6 = v5;
  [(SBIconScrollView *)self->_scrollView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  isVertical = [(SBFolderView *)self isVertical];
  v16 = v4;
  v17 = v4 - 1;
  v18 = v6 > 0.0 && v4 != 0;
  v19 = v17;
  if (isVertical)
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
  firstIconPageIndex = [(SBFolderView *)self firstIconPageIndex];

  [(SBFolderView *)self _scrollOffsetForPageAtIndex:firstIconPageIndex];
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
  currentPageIndex = [(SBFolderView *)self currentPageIndex];

  [(SBFolderView *)self _updatePageControlToIndex:currentPageIndex];
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
  isVertical = [(SBFolderView *)self isVertical];
  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  if (isVertical)
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
  isScrolling = [(SBFolderView *)self isScrolling];
  if (self->_wasScrolling != isScrolling)
  {
    v4 = isScrolling;
    [(SBFolderView *)self _updateScrollingState:isScrolling];
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
    _useParallaxOnPageControl = [(SBFolderView *)self _useParallaxOnPageControl];
    v4 = MEMORY[0x1E69DEB00];
    if (!_useParallaxOnPageControl)
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
    folder = [(SBFolderView *)self folder];
    v4 = [folder listAtIndex:v5];
  }

  return v4;
}

- (SBFolderView)initWithConfiguration:(id)configuration
{
  v53[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  [configurationCopy initialViewFrame];
  v51.receiver = self;
  v51.super_class = SBFolderView;
  v5 = [(SBFolderView *)&v51 initWithFrame:?];
  if (v5)
  {
    folder = [configurationCopy folder];
    objc_storeStrong(&v5->_folder, folder);
    listLayoutProvider = [configurationCopy listLayoutProvider];
    listLayoutProvider = v5->_listLayoutProvider;
    v5->_listLayoutProvider = listLayoutProvider;

    v5->_orientation = [configurationCopy orientation];
    v5->_allowedOrientations = [configurationCopy allowedOrientations];
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
    iconViewProvider = [configurationCopy iconViewProvider];
    objc_storeWeak(&v5->_iconViewProvider, iconViewProvider);

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    scrollFrames = v5->_scrollFrames;
    v5->_scrollFrames = v16;

    legibilitySettings = [configurationCopy legibilitySettings];
    legibilitySettings = v5->_legibilitySettings;
    v5->_legibilitySettings = legibilitySettings;

    folderIconImageCache = [configurationCopy folderIconImageCache];
    folderIconImageCache = v5->_folderIconImageCache;
    v5->_folderIconImageCache = folderIconImageCache;

    iconImageCache = [configurationCopy iconImageCache];
    iconImageCache = v5->_iconImageCache;
    v5->_iconImageCache = iconImageCache;

    headerView = [configurationCopy headerView];
    headerView = v5->_headerView;
    v5->_headerView = headerView;

    [configurationCopy headerHeight];
    v5->_headerHeight = v26;
    v5->_userInterfaceLayoutDirectionHandling = [configurationCopy userInterfaceLayoutDirectionHandling];
    v5->_vertical = [configurationCopy isVertical];
    v5->_snapsToPageBoundariesAfterScrolling = [configurationCopy snapsToPageBoundariesAfterScrolling];
    v5->_addsFocusGuidesForWrapping = [configurationCopy addsFocusGuidesForWrapping];
    v5->_iconSpacingAxisMatchingBehavior = [configurationCopy iconSpacingAxisMatchingBehavior];
    v5->_numberOfInitialPagesToPreferVisible = [configurationCopy numberOfInitialPagesToPreferVisible];
    v5->_automaticallyCreatesIconListViews = 1;
    v5->_contentVisibility = 0;
    [configurationCopy additionalPartialPagesToKeepVisible];
    v5->_additionalPartialPagesToKeepVisible = v27;
    v5->_usesGlassGroup = [configurationCopy usesGlassGroup];
    [folder addFolderObserver:v5];
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
      displayName = [folder displayName];
      [(SBFolderTitleTextField *)v34 setText:displayName];

      [(SBFolderTitleTextField *)v5->_titleTextField setDelegate:v5];
      -[SBFolderTitleTextField setAllowsEditing:](v5->_titleTextField, "setAllowsEditing:", [folder canEditDisplayName]);
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
    _newPageControl = [(SBFolderView *)v5 _newPageControl];
    pageControl = v5->_pageControl;
    v5->_pageControl = _newPageControl;

    [(SBFolderView *)v5 _updatePageControlToIndex:[(SBFolderView *)v5 minimumPageIndex]];
    [(UIPageControl *)v5->_pageControl setHidesForSinglePage:1];
    -[UIPageControl _setPreferredNumberOfVisibleIndicators:](v5->_pageControl, "_setPreferredNumberOfVisibleIndicators:", [folder maxListCount]);
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__backgroundContrastDidChange_ name:*MEMORY[0x1E69DD920] object:0];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  [(SBFolderView *)self _markListViewsAsPurged];
  v4.receiver = self;
  v4.super_class = SBFolderView;
  [(SBFolderView *)&v4 dealloc];
}

- (void)folderWillChange:(id)change
{
  changeCopy = change;
  [changeCopy removeFolderObserver:self];
  visibleListCount = [changeCopy visibleListCount];
  iconListViewCount = [(SBFolderView *)self iconListViewCount];
  v6 = iconListViewCount - visibleListCount;
  if (iconListViewCount > visibleListCount)
  {
    do
    {
      v7 = [(SBFolderView *)self iconListViewAtIndex:visibleListCount];
      [(SBFolderView *)self _removeIconListView:v7];

      --v6;
    }

    while (v6);
  }

  [(SBFolderView *)self clearVisibleColumnRange];
}

- (void)folderDidChange
{
  folder = [(SBFolderView *)self folder];
  visibleLists = [folder visibleLists];
  v4 = [visibleLists count];
  iconListViews = [(SBFolderView *)self iconListViews];
  v6 = [iconListViews count];
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
      v10 = [visibleLists objectAtIndex:i];
      v11 = [iconListViews objectAtIndex:i];
      [v11 setModel:v10];
    }
  }

  if (v7 < v4)
  {
    do
    {
      v12 = [visibleLists objectAtIndex:v8];
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
  [folder addFolderObserver:self];
}

- (void)setFolder:(id)folder
{
  folderCopy = folder;
  v6 = folderCopy;
  if (self->_folder != folderCopy)
  {
    v7 = folderCopy;
    [(SBFolderView *)self folderWillChange:folderCopy];
    objc_storeStrong(&self->_folder, folder);
    folderCopy = [(SBFolderView *)self folderDidChange];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](folderCopy, v6);
}

- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated
{
  providerCopy = provider;
  if (self->_listLayoutProvider != providerCopy)
  {
    iconLocation = [(SBFolderView *)self iconLocation];
    SBHIconListLayoutProviderListGridSizeMatchesListLayoutProvider(self->_listLayoutProvider, providerCopy, iconLocation, 1);
    objc_storeStrong(&self->_listLayoutProvider, provider);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__SBFolderView_setListLayoutProvider_animated___block_invoke;
    v9[3] = &unk_1E8092110;
    v10 = providerCopy;
    animatedCopy = animated;
    [(SBFolderView *)self enumerateIconListViewsUsingBlock:v9];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(SBFolderView *)self updateAccessibilityTintColors];
    firstIconListView = [(SBFolderView *)self firstIconListView];
    v8 = objc_opt_class();

    listViewClass = [(SBFolderView *)self listViewClass];
    v6 = obj;
    if (v8)
    {
      listViewClass = [v8 isEqual:listViewClass];
      v6 = obj;
      if ((listViewClass & 1) == 0)
      {
        listViewClass = [(SBFolderView *)self resetIconListViews];
        v6 = obj;
      }
    }
  }

  MEMORY[0x1EEE66BB8](listViewClass, v6);
}

- (void)cancelScrolling
{
  scrollView = [(SBFolderView *)self scrollView];
  [scrollView cancelTouchTracking];

  [(SBFolderView *)self _updateScrollingIfNeeded];
}

- (void)_addScrollingCompletionBlock:(id)block
{
  blockCopy = block;
  scrollCompletionBlocks = self->_scrollCompletionBlocks;
  v10 = blockCopy;
  if (!scrollCompletionBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_scrollCompletionBlocks;
    self->_scrollCompletionBlocks = v6;

    blockCopy = v10;
    scrollCompletionBlocks = self->_scrollCompletionBlocks;
  }

  v8 = [blockCopy copy];
  v9 = _Block_copy(v8);
  [(NSMutableArray *)scrollCompletionBlocks addObject:v9];
}

- (void)_setPageControlDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  pageControlDisabledReasons = self->_pageControlDisabledReasons;
  v8 = reasonCopy;
  if (disabledCopy)
  {
    [(NSMutableSet *)pageControlDisabledReasons addObject:reasonCopy];
LABEL_3:
    [(SBIconListPageControl *)self->_pageControl setUserInteractionEnabled:!disabledCopy];
    goto LABEL_6;
  }

  if ([(NSMutableSet *)pageControlDisabledReasons containsObject:reasonCopy])
  {
    [(NSMutableSet *)self->_pageControlDisabledReasons removeObject:v8];
    if (![(NSMutableSet *)self->_pageControlDisabledReasons count])
    {
      goto LABEL_3;
    }
  }

LABEL_6:
}

- (void)_setScrollingDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  v14 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  scrollingDisabledReasons = self->_scrollingDisabledReasons;
  if (disabledCopy)
  {
    [(NSMutableSet *)scrollingDisabledReasons addObject:reasonCopy];
    [(SBIconScrollView *)self->_scrollView setScrollEnabled:0];
    v8 = SBLogIcon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = reasonCopy;
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "Disabling scrolling for reason: %{public}@", &v12, 0xCu);
    }

    scrollingDisabledGestureRecognizer = [(SBFolderView *)self scrollingDisabledGestureRecognizer];
    if (!scrollingDisabledGestureRecognizer)
    {
      scrollingDisabledGestureRecognizer = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_scrollingDisabledGestureDidUpdate_];
      [(SBFolderView *)self setScrollingDisabledGestureRecognizer:scrollingDisabledGestureRecognizer];
      [(SBIconScrollView *)self->_scrollView addGestureRecognizer:scrollingDisabledGestureRecognizer];
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([(NSMutableSet *)scrollingDisabledReasons containsObject:reasonCopy])
  {
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = reasonCopy;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Removing reason to disable scrolling: %{public}@", &v12, 0xCu);
    }

    [(NSMutableSet *)self->_scrollingDisabledReasons removeObject:reasonCopy];
    if (![(NSMutableSet *)self->_scrollingDisabledReasons count])
    {
      v11 = SBLogIcon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Re-allowing scrolling after all reasons have gone away", &v12, 2u);
      }

      [(SBIconScrollView *)self->_scrollView setScrollEnabled:1];
      scrollingDisabledGestureRecognizer = [(SBFolderView *)self scrollingDisabledGestureRecognizer];
      if (scrollingDisabledGestureRecognizer)
      {
        [(SBIconScrollView *)self->_scrollView removeGestureRecognizer:scrollingDisabledGestureRecognizer];
        [(SBFolderView *)self setScrollingDisabledGestureRecognizer:0];
      }

      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)scrollingDisabledGestureDidUpdate:(id)update
{
  v10 = *MEMORY[0x1E69E9840];
  if ([update state] == 1)
  {
    v4 = SBLogIcon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [(NSMutableSet *)self->_scrollingDisabledReasons allObjects];
      v6 = [allObjects sortedArrayUsingSelector:sel_compare_];
      v7 = [v6 componentsJoinedByString:{@", "}];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "Scrolling is disabled for reasons: %{public}@", &v8, 0xCu);
    }
  }
}

- (void)removeAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (![assertionCopy assertionType])
  {
    [(SBFolderView *)self _removeDisableAutoScrollAssertion:assertionCopy];
  }
}

- (id)disableAutoScrollForReason:(id)reason
{
  v13[1] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (!self->_autoScrollDisabledAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    autoScrollDisabledAssertions = self->_autoScrollDisabledAssertions;
    self->_autoScrollDisabledAssertions = weakObjectsHashTable;
  }

  v7 = [SBFolderViewAssertion alloc];
  v12 = @"reason";
  v13[0] = reasonCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [(SBFolderViewAssertion *)v7 initWithAssertionType:0 folderView:self extraInfo:v8];

  [(NSHashTable *)self->_autoScrollDisabledAssertions addObject:v9];
  scrollView = [(SBFolderView *)self scrollView];
  [scrollView _setAutoScrollEnabled:0];

  return v9;
}

- (void)_removeDisableAutoScrollAssertion:(id)assertion
{
  [(NSHashTable *)self->_autoScrollDisabledAssertions removeObject:assertion];
  if (![(NSHashTable *)self->_autoScrollDisabledAssertions count])
  {
    scrollView = [(SBFolderView *)self scrollView];
    [scrollView _setAutoScrollEnabled:1];
  }
}

- (void)_setCurrentPageIndex:(int64_t)index deferringPageControlUpdate:(BOOL)update
{
  if ([(SBFolderView *)self _isValidPageIndex:?]&& self->_currentPageIndex != index)
  {
    delegate = [(SBFolderView *)self delegate];
    [delegate folderView:self currentPageIndexWillChange:index];
    currentPageIndex = self->_currentPageIndex;
    self->_currentPageIndex = index;
    if (!update)
    {
      [(SBFolderView *)self _updatePageControlToIndex:index];
    }

    [(SBFolderView *)self setCurrentPageType:[(SBFolderView *)self typeForPage:index]];
    [(SBFolderView *)self _currentPageIndexDidChange];
    [(SBFolderView *)self _currentPageIndexDidChangeFromPageIndex:currentPageIndex];
    [delegate folderView:self currentPageIndexDidChange:self->_currentPageIndex];
  }
}

- (void)_updatePageControlToIndex:(int64_t)index
{
  minimumPageIndex = [(SBFolderView *)self minimumPageIndex];
  v6 = [(SBFolderView *)self _adjustPageIndexForPageControl:index - minimumPageIndex];
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  if (v6 != currentPage)
  {
    v8 = currentPage;
    v9 = self->_scrollView;
    if (![(SBIconScrollView *)v9 isScrollAnimating]|| ([(SBIconScrollView *)v9 isTracking]& 1) != 0 || v8 != [(SBFolderView *)self _adjustPageIndexForPageControl:[(SBFolderView *)self scrollAnimationTargetPageIndex]- minimumPageIndex])
    {
      [(UIPageControl *)self->_pageControl setCurrentPage:v6];
    }
  }
}

- (void)setOrientation:(int64_t)orientation
{
  orientation = self->_orientation;
  if (orientation != orientation && SBFInterfaceOrientationMaskContainsInterfaceOrientation())
  {
    self->_orientation = orientation;

    [(SBFolderView *)self _orientationDidChange:orientation];
  }
}

- (void)_orientationDidChange:(int64_t)change
{
  v16 = *MEMORY[0x1E69E9840];
  [(SBFolderView *)self clearVisibleColumnRange];
  [(SBFolderView *)self setNeedsLayout];
  [(SBFolderView *)self layoutIfNeeded];
  orientation = [(SBFolderView *)self orientation];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  iconListViews = [(SBFolderView *)self iconListViews];
  v6 = [iconListViews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(iconListViews);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 setOrientation:orientation];
        [v10 layoutIconsNow];
      }

      v7 = [iconListViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(SBFolderView *)self updateVisibleColumnRange];
}

- (unint64_t)iconListViewIndexForPageIndex:(int64_t)index
{
  firstIconPageIndex = [(SBFolderView *)self firstIconPageIndex];
  if (([(SBFolderView *)self iconListViewCount]+ firstIconPageIndex) <= index || index < firstIconPageIndex)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return index - firstIconPageIndex;
  }
}

- (unint64_t)iconListModelIndexForPageIndex:(int64_t)index
{
  if (![(SBFolderView *)self _isValidPageIndex:?])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(SBFolderView *)self isPageTypeIcon:index])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  firstIconPageIndex = [(SBFolderView *)self firstIconPageIndex];
  v6 = index < firstIconPageIndex;
  v7 = index - firstIconPageIndex;
  if (v6 || ![(SBFolderView *)self hasIconPages])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(SBFolderView *)self includesHiddenIconListPages])
  {
    folder = [(SBFolderView *)self folder];
    v7 = [folder indexForVisibleIndex:v7];
  }

  return v7;
}

- (id)iconListModelForPageIndex:(int64_t)index
{
  v4 = [(SBFolderView *)self iconListModelIndexForPageIndex:index];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    folder = [(SBFolderView *)self folder];
    v5 = [folder listAtIndex:v6];
  }

  return v5;
}

- (unint64_t)leadingCustomPageIndexForPageIndex:(int64_t)index
{
  if ([(SBFolderView *)self typeForPage:?])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  totalLeadingCustomPageCount = [(SBFolderView *)self totalLeadingCustomPageCount];
  v5 = index - [(SBFolderView *)self minimumPageIndex];
  if (totalLeadingCustomPageCount)
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

    while (totalLeadingCustomPageCount != v8);
  }

  return v5;
}

- (unint64_t)trailingCustomPageIndexForPageIndex:(int64_t)index
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

  v7 = ~[(SBFolderView *)self lastIconPageIndex]+ index;
  if (v7 >= [(SBFolderView *)self trailingCustomPageCount])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

- (int64_t)pageIndexForIconListModelIndex:(unint64_t)index
{
  folder = [(SBFolderView *)self folder];
  if (![(SBFolderView *)self includesHiddenIconListPages])
  {
    index = [folder visibleIndexForIndex:index];
  }

  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(SBFolderView *)self firstIconPageIndex]+ index;
  }

  return v6;
}

- (int64_t)pageIndexForIconListModel:(id)model
{
  modelCopy = model;
  folder = [(SBFolderView *)self folder];
  v6 = [folder indexOfList:modelCopy];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(SBFolderView *)self pageIndexForIconListModelIndex:v6];
  }

  return v7;
}

- (unint64_t)iconListViewIndexForIconListModelIndex:(unint64_t)index
{
  v4 = [(SBFolderView *)self pageIndexForIconListModelIndex:index];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SBFolderView *)self iconListViewIndexForPageIndex:v4];
}

- (int64_t)closestIconPageIndexForPageIndex:(int64_t)index
{
  result = [(SBFolderView *)self iconListViewIndexForPageIndex:?];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [(SBFolderView *)self firstIconPageIndex];
    if (result <= index)
    {
      result = [(SBFolderView *)self lastIconPageIndex];
      if (result >= index)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return result;
}

- (id)uniqueIdentifierForPageIndex:(int64_t)index
{
  if (![(SBFolderView *)self _isValidPageIndex:?])
  {
LABEL_6:
    uniqueIdentifier = 0;
    goto LABEL_10;
  }

  v5 = [(SBFolderView *)self typeForPage:index];
  if (v5)
  {
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        v6 = [(SBFolderView *)self iconListModelForPageIndex:index];
        uniqueIdentifier = [v6 uniqueIdentifier];

        goto LABEL_10;
      }

      goto LABEL_6;
    }

    v8 = [(SBFolderView *)self trailingCustomPageIndexForPageIndex:index];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SBFolderView-Trailing-%lu", v8];
  }

  else
  {
    v9 = [(SBFolderView *)self leadingCustomPageIndexForPageIndex:index];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SBFolderView-Leading-%lu", v9];
  }
  uniqueIdentifier = ;
LABEL_10:

  return uniqueIdentifier;
}

- (int64_t)pageIndexForUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (!identifierCopy)
  {
    goto LABEL_10;
  }

  v7 = [identifierCopy rangeOfString:@"SBFolderView-Leading-" options:8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [v5 substringFromIndex:v7 + v8];
    integerValue = [v13 integerValue];

    v15 = [(SBFolderView *)self pageIndexForLeadingCustomPageIndex:integerValue];
LABEL_9:
    v6 = v15;
    goto LABEL_10;
  }

  v9 = [v5 rangeOfString:@"SBFolderView-Trailing-" options:8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v5 substringFromIndex:v9 + v10];
    integerValue2 = [v16 integerValue];

    v15 = [(SBFolderView *)self pageIndexForTrailingCustomPageIndex:integerValue2];
    goto LABEL_9;
  }

  folder = [(SBFolderView *)self folder];
  v12 = [folder listWithIdentifier:v5];
  if (v12)
  {
    v6 = [(SBFolderView *)self pageIndexForIconListModel:v12];
  }

LABEL_10:
  return v6;
}

- (id)currentPageUniqueIdentifier
{
  currentPageIndex = [(SBFolderView *)self currentPageIndex];

  return [(SBFolderView *)self uniqueIdentifierForPageIndex:currentPageIndex];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_isEditing != editing)
  {
    self->_isEditing = editing;
    [(SBFolderView *)self _updateEditingStateAnimated:animated];
  }
}

- (void)setSuppressesEditingStateForListViews:(BOOL)views animated:(BOOL)animated
{
  if (self->_suppressesEditingStateForListViews != views)
  {
    self->_suppressesEditingStateForListViews = views;
    [(SBFolderView *)self _updateEditingStateAnimated:animated];
  }
}

- (BOOL)doesPageContainIconListView:(int64_t)view
{
  v5 = [(SBFolderView *)self _isValidPageIndex:?];
  if (v5)
  {

    LOBYTE(v5) = [(SBFolderView *)self _isValidIconListViewIndex:view];
  }

  return v5;
}

- (BOOL)canChangeCurrentPageIndexToIndex:(unint64_t)index
{
  delegate = [(SBFolderView *)self delegate];
  v6 = delegate;
  if (delegate)
  {
    v7 = [delegate folderView:self canChangeCurrentPageIndexToIndex:index];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)setCurrentPageIndex:(int64_t)index animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v37 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (![(SBFolderView *)self _isValidPageIndex:index]|| ![(SBFolderView *)self canChangeCurrentPageIndexToIndex:index])
  {
    if (!completionCopy)
    {
LABEL_15:
      v23 = 0;
      goto LABEL_16;
    }

LABEL_14:
    completionCopy[2](completionCopy);
    goto LABEL_15;
  }

  [(SBFolderView *)self _scrollOffsetForPageAtIndex:index];
  v10 = v9;
  v12 = v11;
  [(SBIconScrollView *)self->_scrollView contentOffset];
  if (v10 == v14 && v12 == v13)
  {
    [(SBFolderView *)self _setCurrentPageIndex:index];
    if (!completionCopy)
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
      indexCopy = index;
      v35 = 1024;
      v36 = animatedCopy;
      _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "Delaying request to change to page %li because we are rotating (animated: %{BOOL}u)", buf, 0x12u);
    }

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __56__SBFolderView_setCurrentPageIndex_animated_completion___block_invoke;
    v28 = &unk_1E8092138;
    selfCopy = self;
    indexCopy2 = index;
    v32 = animatedCopy;
    v30 = completionCopy;
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
    [(SBFolderView *)self _willScrollToPageIndex:index animated:animatedCopy];
    if (completionCopy)
    {
      [(SBFolderView *)self _addScrollingCompletionBlock:completionCopy];
    }

    [(SBFolderView *)self _setScrollViewContentOffset:animatedCopy animated:v10, v12];
    if (!animatedCopy)
    {
      [(SBFolderView *)self layoutIconListsWithAnimationType:-1 forceRelayout:0];
    }
  }

  v23 = 1;
LABEL_16:

  return v23;
}

- (void)resetContentOffsetToCurrentPageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v19 = *MEMORY[0x1E69E9840];
  scrollAnimationTargetPageIndex = [(SBFolderView *)self scrollAnimationTargetPageIndex];
  if (scrollAnimationTargetPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = scrollAnimationTargetPageIndex;
    [(SBFolderView *)self _scrollOffsetForPageAtIndex:scrollAnimationTargetPageIndex];
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
        v18 = animatedCopy;
        v12 = v14;
        _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ initiating programmatic scroll to page: %li animated: %{BOOL}u", &v13, 0x1Cu);
      }

      [(SBIconScrollView *)self->_scrollView setContentOffset:animatedCopy animated:v8, v10];
    }
  }
}

- (void)scrollUsingDecelerationAnimationToPageIndex:(int64_t)index withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(SBFolderView *)self isScrollingDisabled]|| [(SBFolderView *)self currentPageIndex]== index && ![(SBFolderView *)self isScrolling])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else if (UIAccessibilityIsReduceMotionEnabled())
  {
    [(SBFolderView *)self setCurrentPageIndex:index animated:0 completion:0];
    v7 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__SBFolderView_scrollUsingDecelerationAnimationToPageIndex_withCompletionHandler___block_invoke_2;
    v14[3] = &unk_1E808A0B8;
    v15 = handlerCopy;
    [v7 transitionWithView:self duration:5242880 options:&__block_literal_global_87 animations:v14 completion:0.3];
  }

  else
  {
    [(SBFolderView *)self setScrollingUsingDecelerationAnimation:1];
    if (handlerCopy)
    {
      [(SBFolderView *)self _addScrollingCompletionBlock:handlerCopy];
    }

    [(SBFolderView *)self _willScrollToPageIndex:index animated:1];
    [(SBFolderView *)self _scrollOffsetForPageAtIndex:index];
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

- (void)_setScrollViewContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  v14 = *MEMORY[0x1E69E9840];
  [(SBFolderView *)self _ignoreScrollingDidEndNotifications];
  v8 = SBLogIcon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 1024;
    v13 = animatedCopy;
    v9 = v11;
    _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ initiating programmatic scroll - animated: %{BOOL}u", &v10, 0x12u);
  }

  [(SBIconScrollView *)self->_scrollView setContentOffset:animatedCopy animated:x, y];
  [(SBFolderView *)self _unignoreScrollingDidEndNotifications];
}

- (void)_willScrollToPageIndex:(int64_t)index animated:(BOOL)animated
{
  if (animated)
  {
    delegate = [(SBFolderView *)self delegate];
    [delegate folderView:self willAnimateScrollToPageIndex:index];
  }
}

- (BOOL)locationCountsAsInsideFolder:(CGPoint)folder
{
  y = folder.y;
  x = folder.x;
  [(SBFolderView *)self bounds];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)setContentAlpha:(double)alpha
{
  scrollView = [(SBFolderView *)self scrollView];
  [scrollView setAlpha:alpha];

  [(SBFolderView *)self setPageControlAlpha:alpha];
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
  window = [(SBFolderView *)self window];
  interfaceOrientation = [window interfaceOrientation];
  orientation = [(SBFolderView *)self orientation];
  v6 = SBLogIcon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v11 = window;
    v12 = 2048;
    v13 = interfaceOrientation;
    v14 = 2048;
    v15 = orientation;
    _os_log_debug_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEBUG, "adding folder view to window %@ with orientation %li, current: %li", buf, 0x20u);
  }

  if (window && interfaceOrientation && interfaceOrientation != orientation)
  {
    [(SBFolderView *)self setOrientation:interfaceOrientation];
    delegate = [(SBFolderView *)self delegate];
    [delegate folderViewDidChangeOrientation:self];
  }

  else if (!window)
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

- (void)didAddSubview:(id)subview
{
  subviewCopy = subview;
  v7.receiver = self;
  v7.super_class = SBFolderView;
  [(SBFolderView *)&v7 didAddSubview:subviewCopy];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [subviewCopy setContentVisibility:{-[SBFolderView contentVisibility](self, "contentVisibility")}];
  }
}

- (void)setContentVisibility:(unint64_t)visibility
{
  if (self->_contentVisibility != visibility)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_contentVisibility = visibility;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__SBFolderView_setContentVisibility___block_invoke;
    v9[3] = &__block_descriptor_40_e28_v24__0__SBIconListView_8_B16l;
    v9[4] = visibility;
    [(SBFolderView *)self enumerateIconListViewsUsingBlock:v9];
    _isEligibleForFocusInteraction = [(SBFolderView *)self _isEligibleForFocusInteraction];
    v7 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
    focusedItem = [v7 focusedItem];

    if (_isEligibleForFocusInteraction != (focusedItem != 0))
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

- (void)_setParallaxDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  isParallaxEnabled = [(SBFolderView *)self isParallaxEnabled];
  parallaxDisabledReasons = self->_parallaxDisabledReasons;
  if (disabledCopy)
  {
    if (!parallaxDisabledReasons)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v9 = self->_parallaxDisabledReasons;
      self->_parallaxDisabledReasons = v8;

      parallaxDisabledReasons = self->_parallaxDisabledReasons;
    }

    [(NSMutableSet *)parallaxDisabledReasons addObject:reasonCopy];
  }

  else
  {
    [(NSMutableSet *)parallaxDisabledReasons removeObject:reasonCopy];
  }

  if (isParallaxEnabled != [(SBFolderView *)self isParallaxEnabled])
  {
    [(SBFolderView *)self _updateParallaxSettings];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v12.receiver = self;
  v12.super_class = SBFolderView;
  v7 = [(SBFolderView *)&v12 hitTest:event withEvent:?];
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
  scrollView = [(SBFolderView *)self scrollView];
  [(SBFolderView *)self bounds];
  [scrollView setFrame:?];
  superview = [scrollView superview];

  if (!superview)
  {
    [(SBFolderView *)self addSubview:scrollView];
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
  traitCollection = [(SBFolderView *)self traitCollection];
  pageControlOverrideUserInterfaceStyle = [(SBFolderView *)self pageControlOverrideUserInterfaceStyle];
  if (!pageControlOverrideUserInterfaceStyle)
  {
    pageControlOverrideUserInterfaceStyle = [MEMORY[0x1E69DD1B8] sbh_materialUserInterfaceStyleFromTraitCollection:traitCollection];
  }

  [(SBIconListPageControl *)self->_pageControl setOverrideUserInterfaceStyle:pageControlOverrideUserInterfaceStyle];
}

- (int64_t)nearestIconPageIndex
{
  currentPageType = [(SBFolderView *)self currentPageType];
  currentPageIndex = [(SBFolderView *)self currentPageIndex];
  v5 = currentPageIndex;
  if (currentPageType != 1)
  {
    v6 = currentPageIndex - 1;
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
  leadingCustomPageCount = [(SBFolderView *)self leadingCustomPageCount];
  if (leadingCustomPageCount)
  {
    return leadingCustomPageCount + [(SBFolderView *)self minimumPageIndex]- 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)index
{
  totalLeadingCustomPageCount = [(SBFolderView *)self totalLeadingCustomPageCount];
  if (![(SBFolderView *)self isLeadingCustomViewPageHidden]&& ![(SBFolderView *)self isLeadingCustomViewPageHiddenAtIndex:index])
  {
    if (index)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v7 += [(SBFolderView *)self isLeadingCustomViewPageHiddenAtIndex:v6++];
      }

      while (index != v6);
      if (totalLeadingCustomPageCount)
      {
        return index - v7 + [(SBFolderView *)self minimumPageIndex];
      }
    }

    else
    {
      v7 = 0;
      if (totalLeadingCustomPageCount)
      {
        return index - v7 + [(SBFolderView *)self minimumPageIndex];
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

- (int64_t)pageIndexForTrailingCustomPageIndex:(unint64_t)index
{
  trailingCustomPageCount = [(SBFolderView *)self trailingCustomPageCount];
  if (trailingCustomPageCount)
  {
    return index - trailingCustomPageCount + [(SBFolderView *)self maximumPageIndex]+ 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)typeForPage:(int64_t)page
{
  minimumPageIndex = [(SBFolderView *)self minimumPageIndex];
  leadingCustomPageCount = [(SBFolderView *)self leadingCustomPageCount];
  maximumPageIndex = [(SBFolderView *)self maximumPageIndex];
  trailingCustomPageCount = [(SBFolderView *)self trailingCustomPageCount];
  if (leadingCustomPageCount && (leadingCustomPageCount + minimumPageIndex) > page)
  {
    return 0;
  }

  if ((maximumPageIndex - trailingCustomPageCount) >= page || trailingCustomPageCount == 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)index
{
  if ([(SBFolderView *)self isVertical])
  {
    [(SBFolderView *)self _pageHeight];

    [(SBFolderView *)self _scrollOffsetForPageAtIndex:index pageHeight:?];
  }

  else
  {
    [(SBFolderView *)self _pageWidth];

    [(SBFolderView *)self _scrollOffsetForPageAtIndex:index pageWidth:?];
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)index pageWidth:(double)width
{
  v6 = index - [(SBFolderView *)self minimumPageIndex];
  [(SBFolderView *)self _pageSpacing];
  v8 = v7;
  if ([(SBFolderView *)self isRTL])
  {
    [(SBIconScrollView *)self->_scrollView contentSize];
    v10 = v9 - (v6 + 1) * width - v6 * v8;
  }

  else
  {
    v10 = v6 * width;
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

- (CGPoint)_scrollOffsetForPageAtIndex:(int64_t)index pageHeight:(double)height
{
  v6 = index - [(SBFolderView *)self minimumPageIndex];
  [(SBFolderView *)self _pageSpacing];
  v8 = v6 * height;
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

- (CGPoint)_scrollOffsetForContentAtPageIndex:(int64_t)index
{
  if ([(SBFolderView *)self isVertical])
  {
    [(SBFolderView *)self _pageHeight];

    [(SBFolderView *)self _scrollOffsetForPageAtIndex:index pageHeight:?];
  }

  else
  {
    [(SBFolderView *)self _pageWidth];

    [(SBFolderView *)self _scrollOffsetForPageAtIndex:index pageWidth:?];
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)index
{
  if ([(SBFolderView *)self isVertical])
  {
    [(SBFolderView *)self _pageHeight];

    [(SBFolderView *)self _scrollRangeForPageAtIndex:index pageHeight:?];
  }

  else
  {
    [(SBFolderView *)self _pageWidth];

    [(SBFolderView *)self _scrollRangeForPageAtIndex:index pageWidth:?];
  }

  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)index pageWidth:(double)width
{
  [(SBFolderView *)self _scrollOffsetForContentAtPageIndex:index];
  widthCopy = width;
  result.var1 = widthCopy;
  result.var0 = v5;
  return result;
}

- (SBHFloatRange)_scrollRangeForPageAtIndex:(int64_t)index pageHeight:(double)height
{
  [(SBFolderView *)self _scrollOffsetForContentAtPageIndex:index];
  v6 = v5;
  heightCopy = height;
  result.var1 = heightCopy;
  result.var0 = v6;
  return result;
}

- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)index pageWidth:(double)width
{
  [(SBFolderView *)self _scrollOffsetForPageAtIndex:?];
  v8 = v7;
  [(SBFolderView *)self _scrollOffsetForContentAtPageIndex:index];
  v10 = width - (v9 - v8);
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)index pageHeight:(double)height
{
  [(SBFolderView *)self _scrollOffsetForPageAtIndex:?];
  v8 = v7;
  [(SBFolderView *)self _scrollOffsetForContentAtPageIndex:index];
  v10 = v9;
  v11 = height - (v9 - v8);
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (SBHFloatRange)_scrollRangeForContentAtPageIndex:(int64_t)index pageWidthOrHeight:(double)height
{
  if ([(SBFolderView *)self isVertical])
  {

    [(SBFolderView *)self _scrollRangeForContentAtPageIndex:index pageHeight:height];
  }

  else
  {

    [(SBFolderView *)self _scrollRangeForContentAtPageIndex:index pageWidth:height];
  }

  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)_addIconListView:(id)view atEnd:(BOOL)end
{
  endCopy = end;
  viewCopy = view;
  v7 = viewCopy;
  if (viewCopy)
  {
    v16 = viewCopy;
    [(SBFolderView *)self _configureScrollingIconListView:viewCopy];
    if (endCopy)
    {
      [(NSMutableArray *)self->_iconListViews addObject:v16];
    }

    else
    {
      folder = [(SBFolderView *)self folder];
      model = [v16 model];
      if ([(SBFolderView *)self includesHiddenIconListPages])
      {
        v10 = [folder indexOfList:model];
      }

      else
      {
        v10 = [folder visibleIndexOfList:model];
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

    scrollView = [(SBFolderView *)self scrollView];
    [scrollView addSubview:v16];

    [(SBFolderView *)self _updatePageControlNumberOfPages];
    [(SBFolderView *)self _didAddIconListView:v16];
    delegate = [(SBFolderView *)self delegate];
    [delegate folderView:self didAddIconListView:v16];

    v7 = v16;
  }

  MEMORY[0x1EEE66BB8](viewCopy, v7);
}

- (void)_configureScrollingIconListView:(id)view
{
  viewCopy = view;
  [(SBFolderView *)self _configureIconListView:viewCopy];
  [viewCopy setUsesGlassGroup:0];
}

- (void)_configureIconListView:(id)view
{
  viewCopy = view;
  [viewCopy setVisiblySettled:{-[SBFolderView isScrolling](self, "isScrolling") ^ 1}];
}

- (void)_didAddIconListView:(id)view
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
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

        [*(*(&v10 + 1) + 8 * v9++) addAssertionFromChild:{viewCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_removeIconListView:(id)view purge:(BOOL)purge
{
  purgeCopy = purge;
  viewCopy = view;
  if (purgeCopy)
  {
    [viewCopy setPurged:1];
    [viewCopy setDragDelegate:0];
    [viewCopy removeAllIconViews];
  }

  superview = [viewCopy superview];
  containerViewForVisibleColumnRangeCalculation = [(SBFolderView *)self containerViewForVisibleColumnRangeCalculation];

  if (superview == containerViewForVisibleColumnRangeCalculation)
  {
    [viewCopy removeFromSuperview];
  }

  [(NSMutableArray *)self->_iconListViews removeObject:viewCopy];
  [(SBFolderView *)self _updatePageControlNumberOfPages];
  [(SBFolderView *)self _didRemoveIconListView:viewCopy];
  delegate = [(SBFolderView *)self delegate];
  [delegate folderView:self didRemoveIconListView:viewCopy];
}

- (void)_didRemoveIconListView:(id)view
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
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

        [*(*(&v10 + 1) + 8 * v9++) removeAndInvalidateAssertionsForChild:{viewCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)iconListViewWithList:(id)list
{
  v17 = *MEMORY[0x1E69E9840];
  listCopy = list;
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
        model = [v9 model];

        if (model == listCopy)
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

- (id)iconListViewDisplayingIconView:(id)view
{
  viewCopy = view;
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
  v5 = viewCopy;
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

- (void)enumerateIconListViewsUsingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allIconListViews = [(SBFolderView *)self allIconListViews];
  v6 = [allIconListViews countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(allIconListViews);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = 0;
      blockCopy[2](blockCopy, v10, &v11);
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allIconListViews countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateIconListViewsWithOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  if ((optionsCopy & 2) != 0)
  {
    allIconListViews = self->_iconListViews;
  }

  else
  {
    allIconListViews = [(SBFolderView *)self allIconListViews];
  }

  v8 = allIconListViews;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__SBFolderView_enumerateIconListViewsWithOptions_usingBlock___block_invoke;
  v10[3] = &unk_1E8092188;
  v11 = blockCopy;
  v9 = blockCopy;
  [(NSMutableArray *)v8 enumerateObjectsWithOptions:2 * (optionsCopy & 1) usingBlock:v10];
}

- (Class)listViewClass
{
  delegate = [(SBFolderView *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    defaultIconListViewClass = [delegate iconListViewClassForFolderView:self];
  }

  else
  {
    defaultIconListViewClass = [objc_opt_class() defaultIconListViewClass];
  }

  v6 = defaultIconListViewClass;
  v7 = defaultIconListViewClass;

  return v6;
}

- (id)_createIconListViewForList:(id)list
{
  listCopy = list;
  listViewClass = [(SBFolderView *)self listViewClass];
  listLayoutProvider = [(SBFolderView *)self listLayoutProvider];
  v7 = [(SBFolderView *)self iconLocationForList:listCopy];
  iconViewProvider = [(SBFolderView *)self iconViewProvider];
  v9 = [[listViewClass alloc] initWithModel:listCopy layoutProvider:listLayoutProvider iconLocation:v7 orientation:self->_orientation iconViewProvider:iconViewProvider];
  [v9 setUserInterfaceLayoutDirectionHandling:{-[SBFolderView userInterfaceLayoutDirectionHandling](self, "userInterfaceLayoutDirectionHandling")}];
  [v9 setEditing:{-[SBFolderView isEditing](self, "isEditing")}];
  [v9 setLayoutDelegate:self];
  [v9 setDragDelegate:self];
  legibilitySettingsForIconListViews = [(SBFolderView *)self legibilitySettingsForIconListViews];
  [v9 setLegibilitySettings:legibilitySettingsForIconListViews];

  folderIconImageCache = [(SBFolderView *)self folderIconImageCache];
  [v9 setFolderIconImageCache:folderIconImageCache];

  [v9 setAddsFocusGuidesForWrapping:self->_addsFocusGuidesForWrapping];
  iconImageCache = [(SBFolderView *)self iconImageCache];
  [v9 setIconImageCache:iconImageCache];

  [v9 setIconSpacingAxisMatchingBehavior:{-[SBFolderView iconSpacingAxisMatchingBehavior](self, "iconSpacingAxisMatchingBehavior")}];
  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", v7))
  {
    [v9 setFocusGroupIdentifier:@"FolderViewFocusGroup"];
  }

  else
  {
    uniqueIdentifier = [listCopy uniqueIdentifier];
    [v9 setFocusGroupIdentifier:uniqueIdentifier];
  }

  [v9 hideAllIcons];

  return v9;
}

- (void)_addIconListViewsForModels:(id)models
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  modelsCopy = models;
  v5 = [modelsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(modelsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [(SBFolderView *)self _createIconListViewForList:v9, v12];
        [(SBFolderView *)self _addIconListView:v11];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [modelsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  includesHiddenIconListPages = [(SBFolderView *)self includesHiddenIconListPages];
  folder = self->_folder;
  if (includesHiddenIconListPages)
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
  currentPageIndex = [(SBFolderView *)self currentPageIndex];

  [(SBFolderView *)self _updateIconListViews:currentPageIndex];
}

- (void)_updateIconListViews:(int64_t)views
{
  v5 = [(SBFolderView *)self uniqueIdentifierForPageIndex:?];
  [(SBFolderView *)self _updateIconListViewsWithCurrentPageIndex:views currentPageUniqueIdentifier:v5];
}

- (void)_updateIconListViewsWithCurrentPageUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(SBFolderView *)self _updateIconListViewsWithCurrentPageIndex:[(SBFolderView *)self pageIndexForUniqueIdentifier:identifierCopy] currentPageUniqueIdentifier:identifierCopy];
}

- (void)_updateIconListViewsWithCurrentPageIndex:(int64_t)index currentPageUniqueIdentifier:(id)identifier
{
  v53 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [(SBFolderView *)self typeForPage:index];
  includesHiddenIconListPages = [(SBFolderView *)self includesHiddenIconListPages];
  automaticallyCreatesIconListViews = [(SBFolderView *)self automaticallyCreatesIconListViews];
  v10 = [(SBFolderView *)self iconListViewForPageIndex:index];
  isShowingAllIcons = [v10 isShowingAllIcons];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(NSMutableArray *)self->_iconListViews copy];
  folder = self->_folder;
  v39 = v10;
  v40 = identifierCopy;
  v37 = v12;
  indexCopy = index;
  v35 = v7;
  if (includesHiddenIconListPages)
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
        if (v20 == 0 && automaticallyCreatesIconListViews)
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
  v30 = indexCopy;
  if (v40)
  {
    v30 = [(SBFolderView *)self pageIndexForUniqueIdentifier:v40];
  }

  if ([(SBFolderView *)self _isValidPageIndex:v30])
  {
    if (v35 == 1 && [(SBFolderView *)self iconListViewIndexForPageIndex:v30]== 0x7FFFFFFFFFFFFFFFLL)
    {
      firstIconPageIndex = [(SBFolderView *)self firstIconPageIndex];
      lastIconPageIndex = [(SBFolderView *)self lastIconPageIndex];
      if (v30 >= lastIconPageIndex)
      {
        v33 = lastIconPageIndex;
      }

      else
      {
        v33 = v30;
      }

      if (v30 >= firstIconPageIndex)
      {
        v30 = v33;
      }

      else
      {
        v30 = firstIconPageIndex;
      }
    }

    else if ((v29 & 1) == 0)
    {
      [(SBFolderView *)self updateVisibleColumnRange];
    }

    [(SBFolderView *)self setCurrentPageIndex:v30 animated:0];
  }

  if (isShowingAllIcons)
  {
    v34 = [(SBFolderView *)self iconListViewForPageIndex:v30];

    if (v34 == v39)
    {
      [v39 showAllIcons];
    }
  }

  [(SBFolderView *)self updateIconListIndexAndVisibility:1];
}

- (void)_updateIconListContainment:(id)containment atIndex:(unint64_t)index
{
  containmentCopy = containment;
  superview = [containmentCopy superview];
  scrollView = self->_scrollView;

  if (superview != scrollView)
  {
    [(SBIconScrollView *)self->_scrollView addSubview:containmentCopy];
  }
}

- (CGRect)_rectForPageAtIndex:(int64_t)index
{
  [(SBFolderView *)self _pageWidth];
  v6 = v5;
  [(SBFolderView *)self _pageHeight];
  v8 = v7;
  [(SBFolderView *)self _pageSpacing];
  v10 = v9;
  isRTL = [(SBFolderView *)self isRTL];
  isVertical = [(SBFolderView *)self isVertical];
  if (isRTL)
  {
    v13 = [(SBFolderView *)self maximumPageIndex]- index;
  }

  else
  {
    v13 = index - [(SBFolderView *)self minimumPageIndex];
  }

  v14 = v13;
  if (isVertical)
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

- (CGRect)_frameForIconListAtIndex:(unint64_t)index
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
  isRTL = [(SBFolderView *)self isRTL];
  isVertical = [(SBFolderView *)self isVertical];
  [(SBFolderView *)self _scrollOffsetForFirstListView];
  v19 = v10 + v14;
  if (isRTL)
  {
    v19 = -(v10 + v14);
  }

  v20 = v19 * index;
  v21 = v12 * 0.5 + v18;
  v22 = v10 * 0.5 + v17;
  if (isVertical)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v19 * index;
  }

  if (!isVertical)
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

- (int64_t)_pageIndexForOffset:(double)offset behavior:(int64_t)behavior fractionOfDistanceThroughPage:(double *)page
{
  v9 = objc_opt_class();
  minimumPageIndex = [(SBFolderView *)self minimumPageIndex];
  maximumPageIndex = [(SBFolderView *)self maximumPageIndex];
  pageCount = [(SBFolderView *)self pageCount];
  [(SBFolderView *)self _pageWidthOrHeight];
  v14 = v13;
  [(SBFolderView *)self _pageSpacing];
  v16 = v15;
  userInterfaceLayoutDirection = [(SBFolderView *)self userInterfaceLayoutDirection];

  return [v9 _pageIndexForOffset:minimumPageIndex minimumPage:maximumPageIndex maximumPage:pageCount pageCount:userInterfaceLayoutDirection pageWidth:behavior pageSpacing:page userInterfaceLayoutDirection:offset behavior:v14 fractionOfDistanceThroughPage:v16];
}

+ (int64_t)_pageIndexForOffset:(double)offset minimumPage:(int64_t)page maximumPage:(int64_t)maximumPage pageCount:(unint64_t)count pageWidth:(double)width pageSpacing:(double)spacing userInterfaceLayoutDirection:(int64_t)direction behavior:(int64_t)self0 fractionOfDistanceThroughPage:(double *)self1
{
  v13 = [objc_opt_class() _pageOffsetForOffset:behavior behavior:count pageWidth:direction pageSpacing:throughPage pageCount:offset userInterfaceLayoutDirection:width fractionOfDistanceThroughPage:spacing];
  pageCopy = v13 + page;
  if (page > v13 + page)
  {
    pageCopy = page;
  }

  if (maximumPage >= pageCopy)
  {
    return pageCopy;
  }

  else
  {
    return maximumPage;
  }
}

- (unint64_t)_pageOffsetForOffset:(double)offset behavior:(int64_t)behavior fractionOfDistanceThroughPage:(double *)page
{
  v9 = objc_opt_class();
  [(SBFolderView *)self _pageWidthOrHeight];
  v11 = v10;
  [(SBFolderView *)self _pageSpacing];
  v13 = v12;
  pageCount = [(SBFolderView *)self pageCount];
  userInterfaceLayoutDirection = [(SBFolderView *)self userInterfaceLayoutDirection];

  return [v9 _pageOffsetForOffset:behavior behavior:pageCount pageWidth:userInterfaceLayoutDirection pageSpacing:page pageCount:offset userInterfaceLayoutDirection:v11 fractionOfDistanceThroughPage:v13];
}

+ (unint64_t)_pageOffsetForOffset:(double)offset behavior:(int64_t)behavior pageWidth:(double)width pageSpacing:(double)spacing pageCount:(unint64_t)count userInterfaceLayoutDirection:(int64_t)direction fractionOfDistanceThroughPage:(double *)page
{
  if (fabs(width) < 2.22044605e-16)
  {
    result = 0;
    if (page)
    {
      *page = 0.0;
    }

    return result;
  }

  __y = 0.0;
  v17 = count * width;
  if (spacing <= 0.0)
  {
    v18 = offset / width;
    v22 = modf(offset / width, &__y);
  }

  else
  {
    v18 = offset / (width + spacing);
    modf(v18, &__y);
    v19 = fmod(offset, width + spacing);
    v20 = v19 / width;
    v21 = v19 < width;
    v22 = 1.0;
    if (v21)
    {
      v22 = v20;
    }

    if (count > 1)
    {
      v17 = v17 + (count - 1) * spacing;
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

  if (direction == 1)
  {
    result = ~__y + count;
  }

  else
  {
    v25 = v23;
    result = __y;
  }

  if (behavior != 1)
  {
    goto LABEL_26;
  }

  if (v25 < 0.01)
  {
    v25 = 0.0;
LABEL_26:
    if (!page)
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

  if (page)
  {
LABEL_27:
    *page = v25;
  }

  return result;
}

- (id)iconListViewForPageIndex:(int64_t)index
{
  v4 = [(SBFolderView *)self iconListViewIndexForPageIndex:index];
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

- (id)iconListViewForIconListModelIndex:(unint64_t)index
{
  v4 = [(SBFolderView *)self iconListViewIndexForIconListModelIndex:index];
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

- (id)iconListViewAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v24 = *MEMORY[0x1E69E9840];
  scrollView = [(SBFolderView *)self scrollView];
  [(SBFolderView *)self convertPoint:scrollView toView:x, y];
  v8 = v7;
  v10 = v9;
  currentIconListView = [(SBFolderView *)self currentIconListView];
  currentIconListView2 = [(SBFolderView *)self currentIconListView];
  v13 = currentIconListView2;
  if (!currentIconListView2 || ([currentIconListView2 frame], v26.x = v8, v26.y = v10, !CGRectContainsPoint(v28, v26)))
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
          if (v17 != currentIconListView)
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

- (id)iconListViewForTouch:(id)touch
{
  [touch locationInView:self];

  return [(SBFolderView *)self iconListViewAtPoint:?];
}

- (id)iconListViewForDrag:(id)drag
{
  [drag locationInView:self];

  return [(SBFolderView *)self iconListViewAtPoint:?];
}

- (id)iconListViewAtScrollPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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
  array = [MEMORY[0x1E695DF70] array];
  v4 = v9;
  if (v9 <= v8)
  {
    do
    {
      v5 = [(SBFolderView *)self iconListViewForPageIndex:v4];
      if (v5)
      {
        [array addObject:v5];
      }
    }

    while (v4++ < v8);
  }

  return array;
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

- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout
{
  relayoutCopy = relayout;
  v18 = *MEMORY[0x1E69E9840];
  [(SBFolderView *)self updateIconListIndexAndVisibility:relayout];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  iconListViews = [(SBFolderView *)self iconListViews];
  v8 = [iconListViews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(iconListViews);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (relayoutCopy)
        {
          [*(*(&v13 + 1) + 8 * v11) setIconsNeedLayout];
        }

        [v12 layoutIconsIfNeededWithAnimationType:type options:0];
        ++v11;
      }

      while (v9 != v11);
      v9 = [iconListViews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setIncludesHiddenIconListPages:(BOOL)pages
{
  if (self->_includesHiddenIconListPages != pages)
  {
    currentPageUniqueIdentifier = [(SBFolderView *)self currentPageUniqueIdentifier];
    self->_includesHiddenIconListPages = pages;
    [(SBFolderView *)self _updateIconListViewsWithCurrentPageUniqueIdentifier:currentPageUniqueIdentifier];
  }
}

- (void)setAutomaticallyCreatesIconListViews:(BOOL)views
{
  if (self->_automaticallyCreatesIconListViews != views)
  {
    self->_automaticallyCreatesIconListViews = views;
    [(SBFolderView *)self setNeedsLayout];
  }
}

- (void)_updateEditingStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v26 = *MEMORY[0x1E69E9840];
  isEditing = [(SBFolderView *)self isEditing];
  suppressesEditingStateForListViews = [(SBFolderView *)self suppressesEditingStateForListViews];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  iconListViews = [(SBFolderView *)self iconListViews];
  v8 = [iconListViews countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    v11 = !suppressesEditingStateForListViews;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(iconListViews);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        [v13 setEditing:isEditing & v11];
        [v13 updateEditingStateAnimated:animatedCopy];
      }

      v9 = [iconListViews countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  [(SBFolderView *)self updateIconListIndexAndVisibility];
  if (isEditing && (p_titleTextField = &self->_titleTextField, [(SBFolderTitleTextField *)self->_titleTextField allowsEditing]))
  {
    v15 = 1;
  }

  else
  {
    p_titleTextField = &self->_titleTextField;
    [(SBFolderTitleTextField *)self->_titleTextField endEditing:1];
    v15 = 0;
  }

  [(SBFolderTitleTextField *)*p_titleTextField setShowsEditUI:v15 animated:animatedCopy];
  _isEligibleForFocusInteraction = [(SBFolderView *)self _isEligibleForFocusInteraction];
  v17 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
  focusedItem = [v17 focusedItem];

  if (_isEligibleForFocusInteraction != (focusedItem != 0))
  {
    [(SBFolderView *)self setNeedsFocusUpdate];
  }

  [(SBFolderView *)self setNeedsLayout];
  if (animatedCopy)
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

- (double)scrollingDimensionForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(SBFolderView *)self isVertical])
  {
    return y;
  }

  else
  {
    return x;
  }
}

- (CGPoint)pointForScrollingDimension:(double)dimension
{
  isVertical = [(SBFolderView *)self isVertical];
  dimensionCopy2 = 0.0;
  if (isVertical)
  {
    dimensionCopy = 0.0;
  }

  else
  {
    dimensionCopy = dimension;
  }

  if (isVertical)
  {
    dimensionCopy2 = dimension;
  }

  result.y = dimensionCopy2;
  result.x = dimensionCopy;
  return result;
}

- (void)setNumberOfInitialPagesToPreferVisible:(unint64_t)visible
{
  if (self->_numberOfInitialPagesToPreferVisible != visible)
  {
    self->_numberOfInitialPagesToPreferVisible = visible;
    [(SBFolderView *)self updateVisibleColumnRange];
  }
}

- (void)updateIconListIndexAndVisibility:(BOOL)visibility
{
  iconVisibilityHandling = [(SBFolderView *)self iconVisibilityHandling];
  isTracking = [(SBIconScrollView *)self->_scrollView isTracking];
  isDragging = [(SBIconScrollView *)self->_scrollView isDragging];
  isDecelerating = [(SBIconScrollView *)self->_scrollView isDecelerating];
  if (visibility || !isDecelerating || (isTracking & 1) != 0 || (isDragging & 1) != 0 || iconVisibilityHandling == 1 || ([(SBIconScrollView *)self->_scrollView _pageDecelerationTarget], [(SBFolderView *)self scrollingDimensionForPoint:?], v9 = [(SBFolderView *)self _pageIndexForOffset:1 behavior:0 fractionOfDistanceThroughPage:?], [(SBFolderView *)self currentPageIndex]!= v9))
  {
    currentPageIndex = [(SBFolderView *)self currentPageIndex];
    [(SBFolderView *)self bounds];
    if (CGRectGetWidth(v13) > 0.0)
    {
      [(SBFolderView *)self scrollOffsetForPageIndexCalculation];
      currentPageIndex = [(SBFolderView *)self _pageIndexForOffset:[(SBFolderView *)self isScrolling]^ 1 behavior:0 fractionOfDistanceThroughPage:v11];
    }

    [(SBFolderView *)self updateVisibleColumnRangeWithIconVisibilityHandling:iconVisibilityHandling];

    [(SBFolderView *)self _setCurrentPageIndex:currentPageIndex deferringPageControlUpdate:(isTracking | isDragging) & 1];
  }
}

- (void)updateVisibleColumnRangeWithIconVisibilityHandling:(int64_t)handling
{
  v130 = *MEMORY[0x1E69E9840];
  if (![(SBFolderView *)self isRotating])
  {
    handlingCopy = handling;
    containerViewForVisibleColumnRangeCalculation = [(SBFolderView *)self containerViewForVisibleColumnRangeCalculation];
    [containerViewForVisibleColumnRangeCalculation bounds];
    v117 = v6;
    v118 = v5;
    v115 = v8;
    v116 = v7;
    countOfAdditionalPagesToKeepVisibleInOneDirection = [(SBFolderView *)self countOfAdditionalPagesToKeepVisibleInOneDirection];
    [(SBFolderView *)self additionalScrollWidthToKeepVisibleInOneDirection];
    v11 = v10;
    [(SBFolderView *)self additionalScrollWidthToKeepVisibleInBothDirections];
    v13 = v12;
    [(SBFolderView *)self _pageWidthOrHeight];
    v15 = v14;
    isScrolling = [(SBFolderView *)self isScrolling];
    if (isScrolling)
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
    isVertical = [(SBFolderView *)self isVertical];
    v21 = v11 + v15 * countOfAdditionalPagesToKeepVisibleInOneDirection;
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
      v25 = SBHRectInsetVerticallOrHorizontally(isVertical, v25, v24, v23, v22, -v13);
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

    numberOfInitialPagesToPreferVisible = [(SBFolderView *)self numberOfInitialPagesToPreferVisible];
    _UIScrollViewNotifyForScrollView();
    contentVisibility = [(SBFolderView *)self contentVisibility];
    v30 = 3;
    if (!isScrolling || contentVisibility != 0)
    {
      v30 = contentVisibility;
    }

    v109 = v30;
    minimumPageIndex = [(SBFolderView *)self minimumPageIndex];
    maximumPageIndex = [(SBFolderView *)self maximumPageIndex];
    firstIconPageIndex = [(SBFolderView *)self firstIconPageIndex];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    if (isScrolling)
    {
      prefetchedCellCount = self->_prefetchedCellCount;
      v129 = prefetchedCellCount;
      v34 = v103 < 2;
      if (v103 <= 1 && prefetchedCellCount)
      {
        v122 = -1;
        v35 = 4;
        v36 = maximumPageIndex;
LABEL_26:
        if (v36 <= maximumPageIndex && v36 >= minimumPageIndex)
        {
          v114 = 0;
          if (isVertical)
          {
            v38 = v35;
          }

          else
          {
            v38 = v35 | 8;
          }

          v97 = v38;
          v99 = -firstIconPageIndex;
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

            layer = [v45 layer];
            [layer setNeedsLayoutOnGeometryChange:0];

            if (!handlingCopy)
            {
              [containerViewForVisibleColumnRangeCalculation convertRect:v46 toView:{*v121, *&v121[8], *&v121[16], *&v121[24]}];
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

            if (handlingCopy == 2)
            {
              goto LABEL_57;
            }

            if (handlingCopy != 1)
            {
              goto LABEL_58;
            }

            [v46 bounds];
            v49 = v48;
            v51 = v50;
            v53 = v52;
            v55 = v54;
            [containerViewForVisibleColumnRangeCalculation convertRect:v46 toView:{*v121, *&v121[8], *&v121[16], *&v121[24]}];
            v112 = v57;
            v113 = v56;
            v110 = v59;
            v111 = v58;
            [containerViewForVisibleColumnRangeCalculation convertRect:v46 toView:{v107, v106, v105, v104}];
            v61 = v60;
            v63 = v62;
            v65 = v64;
            v67 = v66;
            gridSizeForCurrentOrientation = [v46 gridSizeForCurrentOrientation];
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

            if (isScrolling)
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

            if (!SBHIconGridRangeEqualToIconGridRange(v83, v84, 0, gridSizeForCurrentOrientation) && (!numberOfInitialPagesToPreferVisible || v39 != 1 || v99 + v36 >= numberOfInitialPagesToPreferVisible))
            {
              gridSizeForCurrentOrientation2 = [v46 gridSizeForCurrentOrientation];
              v98 = v98 & 0xFFFFFFFF00000000 | gridSizeForCurrentOrientation2;
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
                  v96 = v96 & 0xFFFFFFFF00000000 | gridSizeForCurrentOrientation2;
                  SBHIconGridRangeEnumerateSubranges(0, gridSizeForCurrentOrientation2, 0x10001u, gridSizeForCurrentOrientation2, v97, v124);
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
                  v94 = v94 & 0xFFFFFFFF00000000 | gridSizeForCurrentOrientation2;
                  SBHIconGridRangeEnumerateOutOfBoundsCellIndexesOnEdge(v83, v84, v103, isVertical ^ 1u, gridSizeForCurrentOrientation2, v126);
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
            layer2 = [v46 layer];
            [layer2 setNeedsLayoutOnGeometryChange:1];

LABEL_61:
            v36 += v122;
            if (v36 > maximumPageIndex || v36 < minimumPageIndex)
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
    v36 = minimumPageIndex;
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

- (BOOL)prefetchNextVisibleCellCount:(unint64_t)count
{
  scrollView = [(SBFolderView *)self scrollView];
  isDragging = [scrollView isDragging];

  if (!isDragging)
  {
    return 0;
  }

  v7 = [(SBFolderView *)self userInterfaceLayoutDirectionAwareScrollingDirectionTracking:0];
  if (v7 != self->_prefetchedColumnDirection)
  {
    self->_prefetchedCellCount = 0;
    self->_prefetchedColumnDirection = v7;
  }

  maximumPrefetchedCellCount = [(SBFolderView *)self maximumPrefetchedCellCount];
  prefetchedCellCount = self->_prefetchedCellCount;
  v10 = prefetchedCellCount + count;
  if (prefetchedCellCount + count >= maximumPrefetchedCellCount)
  {
    v10 = maximumPrefetchedCellCount;
  }

  if (v10 == prefetchedCellCount)
  {
    return 0;
  }

  self->_prefetchedCellCount = v10;
  [(SBFolderView *)self updateVisibleColumnRange];
  return 1;
}

- (void)simulatePrefetchNextVisibleCellInDirection:(unsigned int)direction
{
  self->_prefetchedColumnDirection = direction;
  ++self->_prefetchedCellCount;
  [(SBFolderView *)self updateVisibleColumnRange];
}

- (unint64_t)maximumPrefetchedCellCount
{
  folder = [(SBFolderView *)self folder];
  v3 = 2 * SBHIconGridSizeGetArea([folder listGridSize]);

  return v3;
}

- (unint64_t)columnCountForPageIndex:(int64_t)index
{
  v4 = [(SBFolderView *)self iconListModelIndexForPageIndex:index];
  gridSize = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    folder = [(SBFolderView *)self folder];
    v8 = [folder listAtIndex:v6];
    gridSize = [v8 gridSize];
  }

  return gridSize;
}

- (unint64_t)columnOrRowCountForScrollingForPageIndex:(int64_t)index
{
  v4 = [(SBFolderView *)self iconListModelIndexForPageIndex:index];
  isVertical = [(SBFolderView *)self isVertical];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = isVertical;
    folder = [(SBFolderView *)self folder];
    v9 = [folder listAtIndex:v4];
    gridSize = [v9 gridSize];
    if (v7)
    {
      v6 = HIWORD(gridSize);
    }

    else
    {
      v6 = gridSize;
    }
  }

  return v6;
}

- (unint64_t)columnCountInVisibleColumnRange:(SBVisibleColumnRange *)range
{
  var0 = range->var0;
  if (var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (var0 == range->var2)
  {
    return range->var3 - range->var1 + 1;
  }

  if ([(SBFolderView *)self columnCountForPageIndex:?]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = -range->var1;
  }

  v5 = range->var3 + v7;
  for (i = range->var0 + 1; i < range->var2; ++i)
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

- (BOOL)isVisibleColumnRangeValid:(SBVisibleColumnRange *)valid
{
  v5 = *&valid->var2;
  v9 = *&valid->var0;
  v10 = v5;
  if (SBVisibleColumnRangeIsEmpty(&v9))
  {
    return 1;
  }

  iconListViewCount = [(SBFolderView *)self iconListViewCount];
  if (valid->var0 >= iconListViewCount || valid->var2 >= iconListViewCount)
  {
    return 0;
  }

  v8 = *&valid->var2;
  v9 = *&valid->var0;
  v10 = v8;
  return SBVisibleColumnRangeMaxIconListIndex(&v9) < iconListViewCount;
}

- (void)getLeadingVisiblePageIndex:(int64_t *)index trailingVisiblePageIndex:(int64_t *)pageIndex
{
  [(SBFolderView *)self minimumVisibleScrollOffset];
  v8 = v7;
  [(SBFolderView *)self maximumVisibleScrollOffset];
  v10 = v9;
  isRTL = [(SBFolderView *)self isRTL];
  if (isRTL)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (isRTL)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if (v8 == v10)
  {
    defaultPageIndex = [(SBFolderView *)self defaultPageIndex];
    if (index)
    {
      *index = defaultPageIndex;
    }

    if (!pageIndex)
    {
      return;
    }

LABEL_16:
    *pageIndex = defaultPageIndex;
    return;
  }

  v15 = isRTL;
  if (index)
  {
    *index = [(SBFolderView *)self _pageIndexForOffset:!isRTL behavior:0 fractionOfDistanceThroughPage:v12];
  }

  if (pageIndex)
  {
    defaultPageIndex = [(SBFolderView *)self _pageIndexForOffset:v15 behavior:0 fractionOfDistanceThroughPage:v13];
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

- (void)addScrollViewIsScrollingOverrideReason:(id)reason
{
  reasonCopy = reason;
  scrollViewIsScrollingOverrides = self->_scrollViewIsScrollingOverrides;
  v8 = reasonCopy;
  if (!scrollViewIsScrollingOverrides)
  {
    v6 = objc_opt_new();
    v7 = self->_scrollViewIsScrollingOverrides;
    self->_scrollViewIsScrollingOverrides = v6;

    reasonCopy = v8;
    scrollViewIsScrollingOverrides = self->_scrollViewIsScrollingOverrides;
  }

  [(NSMutableSet *)scrollViewIsScrollingOverrides addObject:reasonCopy];
  [(SBFolderView *)self _checkIfScrollStateChanged];
}

- (void)removeScrollViewIsScrollingOverrideReason:(id)reason
{
  [(NSMutableSet *)self->_scrollViewIsScrollingOverrides removeObject:reason];

  [(SBFolderView *)self _checkIfScrollStateChanged];
}

- (void)_updateScrollingState:(BOOL)state
{
  stateCopy = state;
  v17 = *MEMORY[0x1E69E9840];
  if (self->_wasScrolling == state)
  {
    NSLog(&cfstr_SomehowThisGot.isa, a2);
  }

  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v16 = 138412546;
    *&v16[4] = objc_opt_class();
    *&v16[12] = 1024;
    *&v16[14] = stateCopy;
    v6 = *&v16[4];
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "%@ updating scrolling: %{BOOL}u", v16, 0x12u);
  }

  delegate = [(SBFolderView *)self delegate];
  if (stateCopy)
  {
    [(SBFolderView *)self noteUserIsInteractingWithIcons];
    scrollView = [(SBFolderView *)self scrollView];
    [scrollView contentOffset];
    self->_scrollStartContentOffset.x = v9;
    self->_scrollStartContentOffset.y = v10;

    self->_scrollTrackingContentOffset = self->_scrollStartContentOffset;
    [(SBFolderView *)self enumerateIconListViewsUsingBlock:&__block_literal_global_94_1];
    [delegate folderViewWillBeginScrolling:self];
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

    [delegate folderViewDidEndScrolling:self];
    v15 = [(NSMutableArray *)self->_scrollCompletionBlocks copy];
    [(NSMutableArray *)self->_scrollCompletionBlocks removeAllObjects];
    [v15 enumerateObjectsUsingBlock:&__block_literal_global_100_0];
  }
}

- (void)performWhenScrollingEndsUsingBlock:(id)block
{
  blockCopy = block;
  if ([(SBFolderView *)self isScrolling])
  {
    [(SBFolderView *)self _addScrollingCompletionBlock:blockCopy];
  }

  else
  {
    blockCopy[2]();
  }
}

- (unsigned)scrollingDirectionTracking:(BOOL)tracking
{
  v3 = &OBJC_IVAR___SBFolderView__scrollStartContentOffset;
  if (tracking)
  {
    v3 = &OBJC_IVAR___SBFolderView__scrollTrackingContentOffset;
  }

  v4 = (self + *v3);
  v6 = *v4;
  v5 = v4[1];
  scrollView = [(SBFolderView *)self scrollView];
  [scrollView contentOffset];
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

- (unsigned)userInterfaceLayoutDirectionAwareScrollingDirectionTracking:(BOOL)tracking
{
  v4 = [(SBFolderView *)self scrollingDirectionTracking:tracking];
  isRTL = [(SBFolderView *)self isRTL];
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

  if (isRTL)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

- (void)setIconImageCache:(id)cache
{
  cacheCopy = cache;
  if (self->_iconImageCache != cacheCopy)
  {
    objc_storeStrong(&self->_iconImageCache, cache);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__SBFolderView_setIconImageCache___block_invoke;
    v6[3] = &unk_1E8089BD8;
    v7 = cacheCopy;
    [(SBFolderView *)self enumerateIconListViewsUsingBlock:v6];
  }
}

- (void)setFolderIconImageCache:(id)cache
{
  cacheCopy = cache;
  if (self->_folderIconImageCache != cacheCopy)
  {
    objc_storeStrong(&self->_folderIconImageCache, cache);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__SBFolderView_setFolderIconImageCache___block_invoke;
    v6[3] = &unk_1E8089BD8;
    v7 = cacheCopy;
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

- (void)_enumerateScrollableIconViewsUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  currentIconListView = [(SBFolderView *)self currentIconListView];
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  icons = [currentIconListView icons];
  v7 = [icons countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(icons);
        }

        v11 = [currentIconListView displayedIconViewForIcon:*(*(&v12 + 1) + 8 * i)];
        if (v11)
        {
          blockCopy[2](blockCopy, v11, &v16);
          if (v16 == 1)
          {

            goto LABEL_12;
          }
        }
      }

      v8 = [icons countByEnumeratingWithState:&v12 objects:v17 count:16];
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
  traitCollection = [(SBFolderView *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];

  return v3;
}

- (id)effectiveIconImageStyleConfiguration
{
  traitCollection = [(SBFolderView *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:traitCollection];

  return v3;
}

- (void)setUsesGlassGroup:(BOOL)group
{
  if (self->_usesGlassGroup != group)
  {
    self->_usesGlassGroup = group;
    [(SBFolderView *)self updateGlassGroup];
  }
}

- (void)updateGlassGroup
{
  viewForGlassGroup = [(SBFolderView *)self viewForGlassGroup];
  usesGlassGroup = [(SBFolderView *)self usesGlassGroup];
  sbh_hasGlassGroup = [viewForGlassGroup sbh_hasGlassGroup];
  if (usesGlassGroup)
  {
    if (sbh_hasGlassGroup)
    {
      [viewForGlassGroup sbh_removeGlass];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __32__SBFolderView_updateGlassGroup__block_invoke;
      block[3] = &unk_1E8088C90;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [viewForGlassGroup sbh_createGlassGroup];
    }
  }

  else if (sbh_hasGlassGroup)
  {
    [viewForGlassGroup sbh_removeGlass];
  }
}

- (void)updateAfterAppearanceTraitChange
{
  [(SBFolderView *)self _updatePageControlUserInterfaceStyle];

  [(SBFolderView *)self updateGlassGroup];
}

- (id)beginHidingIconsFromLayout:(id)layout reason:(id)reason options:(unint64_t)options
{
  reasonCopy = reason;
  layoutCopy = layout;
  v10 = [[SBHIconLayoutHidingCompoundAssertion alloc] initWithInvalidationHandler:self icons:layoutCopy reason:reasonCopy options:options];

  layoutHidingAssertions = self->_layoutHidingAssertions;
  if (!layoutHidingAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v13 = self->_layoutHidingAssertions;
    self->_layoutHidingAssertions = weakObjectsHashTable;

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

- (void)transitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v45 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  _window = [(SBFolderView *)self _window];
  _toWindowOrientation = [_window _toWindowOrientation];
  if ([(SBFolderView *)self orientation]!= _toWindowOrientation)
  {
    [(SBFolderView *)self setRotating:1];
    [(SBFolderView *)self willTransitionAnimated:1 withSettings:0];
    if ([(SBFolderView *)self _animatesRotationForAllVisibleIconListViews])
    {
      [(SBFolderView *)self minimumVisibleScrollOffset];
      v9 = v8;
      [(SBFolderView *)self maximumVisibleScrollOffset];
      v11 = v10;
      currentIconListView = [(SBFolderView *)self currentIconListView];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      iconListViews = [(SBFolderView *)self iconListViews];
      v14 = [iconListViews countByEnumeratingWithState:&v39 objects:v44 count:16];
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
              objc_enumerationMutation(iconListViews);
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
              if (v19 != currentIconListView)
              {
                [v19 setHidden:{1, v26}];
              }
            }

            else
            {
              [v19 willRotateWithTransitionCoordinator:{coordinatorCopy, v26}];
            }
          }

          v15 = [iconListViews countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v15);
      }
    }

    else
    {
      currentIconListView = [(SBFolderView *)self currentIconListView];
      [currentIconListView willRotateWithTransitionCoordinator:coordinatorCopy];
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      iconListViews = [(SBFolderView *)self iconListViews];
      v28 = [iconListViews countByEnumeratingWithState:&v35 objects:v43 count:16];
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
              objc_enumerationMutation(iconListViews);
            }

            v32 = *(*(&v35 + 1) + 8 * j);
            if (v32 != currentIconListView)
            {
              [v32 setHidden:1];
            }
          }

          v29 = [iconListViews countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v29);
      }
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __59__SBFolderView_transitionToSize_withTransitionCoordinator___block_invoke;
    v34[3] = &unk_1E808B460;
    v34[4] = self;
    v34[5] = _toWindowOrientation;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __59__SBFolderView_transitionToSize_withTransitionCoordinator___block_invoke_2;
    v33[3] = &unk_1E8089418;
    v33[4] = self;
    [coordinatorCopy animateAlongsideTransition:v34 completion:v33];
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_scrollView == dragging)
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

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (self->_scrollView == scrollCopy)
  {
    v18 = scrollCopy;
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
      delegate = [(SBFolderView *)self delegate];
      [delegate folderViewWillUpdatePageDuringScrolling:self];
      [(SBFolderView *)self updateIconListIndexAndVisibility];
      [delegate folderViewDidScroll:self];
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
    scrollCopy = v18;
    p_scrollTrackingContentOffset->x = v16;
    p_scrollTrackingContentOffset->y = v17;
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (self->_scrollView == dragging)
  {
    [(SBFolderView *)self scrollingDimensionForPoint:offset->x, offset->y];
    v7 = [(SBFolderView *)self _pageIndexForOffset:1 behavior:0 fractionOfDistanceThroughPage:?];

    [(SBFolderView *)self _updatePageControlToIndex:v7];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_scrollView == dragging)
  {
    decelerateCopy = decelerate;
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 1024;
      v11 = decelerateCopy;
      v7 = v9;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ ending user-initiated scroll - willDecelerate: %{BOOL}u", &v8, 0x12u);
    }

    if (!decelerateCopy)
    {
      [(SBFolderView *)self _checkIfScrollStateChanged];
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_scrollView == decelerating)
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

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_scrollView == animation)
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

- (void)scrollViewDidEndScrolling:(id)scrolling
{
  if (self->_scrollView == scrolling)
  {
    [(SBFolderView *)self _checkIfScrollStateChanged];
    self->_scrollTrackingContentOffset = *MEMORY[0x1E695EFF8];
  }
}

- (CGSize)scrollView:(id)view contentSizeForZoomScale:(double)scale withProposedSize:(CGSize)size
{
  if (self->_scrollView == view)
  {
    [(SBFolderView *)self _scrollViewContentSize:scale];
    size.height = v8;
  }

  else
  {
    width = size.width;
  }

  height = size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)pageControl:(id)control didMoveCurrentPageToPage:(int64_t)page withScrubbing:(BOOL)scrubbing
{
  scrubbingCopy = scrubbing;
  controlCopy = control;
  v9 = [(SBFolderView *)self _adjustPageIndexFromPageControl:page];
  scrollAnimationTargetPageIndex = [(SBFolderView *)self scrollAnimationTargetPageIndex];
  minimumPageIndex = [(SBFolderView *)self minimumPageIndex];
  v12 = scrollAnimationTargetPageIndex - 1;
  if (minimumPageIndex + v9 >= scrollAnimationTargetPageIndex)
  {
    v12 = scrollAnimationTargetPageIndex + 1;
  }

  if (scrubbingCopy)
  {
    v13 = minimumPageIndex + v9;
  }

  else
  {
    v13 = v12;
  }

  if (scrubbingCopy)
  {
    v14 = +[SBHHomeScreenDomain rootSettings];
    folderSettings = [v14 folderSettings];
    animatesPageScrubbing = [folderSettings animatesPageScrubbing];
  }

  else
  {
    animatesPageScrubbing = 1;
  }

  objc_initWeak(&location, self);
  [(SBFolderView *)self _disableUserInteractionBeforeSignificantAnimation];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__SBFolderView_pageControl_didMoveCurrentPageToPage_withScrubbing___block_invoke;
  v17[3] = &unk_1E808C278;
  objc_copyWeak(&v18, &location);
  [(SBFolderView *)self setCurrentPageIndex:v13 animated:animatesPageScrubbing completion:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __67__SBFolderView_pageControl_didMoveCurrentPageToPage_withScrubbing___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enableUserInteractionAfterSignificantAnimation];
}

- (void)_setFolderName:(id)name
{
  v4 = MEMORY[0x1E696AB08];
  nameCopy = name;
  whitespaceCharacterSet = [v4 whitespaceCharacterSet];
  v11 = [nameCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if ([v11 length])
  {
    folder = [(SBFolderView *)self folder];
    [folder setDisplayName:v11];

    [(SBFolderTitleTextField *)self->_titleTextField setText:v11];
  }

  else
  {
    titleTextField = self->_titleTextField;
    folder2 = [(SBFolderView *)self folder];
    displayName = [folder2 displayName];
    [(SBFolderTitleTextField *)titleTextField setText:displayName];
  }

  [(SBFolderView *)self setNeedsLayout];
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  isEditing = [(SBFolderView *)self isEditing];
  if (isEditing)
  {
    folder = [(SBFolderView *)self folder];
    canEditDisplayName = [folder canEditDisplayName];

    LOBYTE(isEditing) = canEditDisplayName;
  }

  return isEditing;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  delegate = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate folderView:self didBeginEditingTitle:editingCopy];
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  v11 = text;
  v12 = &stru_1F3D472A8;
  if (text)
  {
    v12 = text;
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

  v15 = [stringCopy length] + v14;
  if (v15 >= 0x65 && v14 != 100)
  {
    v16 = 100 - v14;
    if ([stringCopy length] > v16)
    {
      v17 = [stringCopy substringToIndex:{objc_msgSend(stringCopy, "rangeOfComposedCharacterSequenceAtIndex:", v16)}];
      v18 = [(__CFString *)v13 stringByReplacingCharactersInRange:location withString:length, v17];
      [fieldCopy setText:v18];
    }
  }

  return v15 < 0x65;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  text = [editingCopy text];
  [(SBFolderView *)self _setFolderName:text];

  delegate = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate folderView:self didEndEditingTitle:editingCopy];
  }
}

- (void)iconListView:(id)view willConfigureIconView:(id)iconView forIcon:(id)icon
{
  viewCopy = view;
  iconViewCopy = iconView;
  iconCopy = icon;
  delegate = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate folderView:self iconListView:viewCopy willConfigureIconView:iconViewCopy forIcon:iconCopy];
  }
}

- (id)iconListView:(id)view animatorForLayingOutIconView:(id)iconView proposedAnimator:(id)animator
{
  animatorCopy = animator;
  icon = [iconView icon];
  v9 = animatorCopy;
  v10 = v9;
  if ([(NSMutableSet *)self->_iconsNeedingSlideInAnimator containsObject:icon])
  {
    v10 = objc_alloc_init(SBIconListViewSlideInAnimator);

    [(NSMutableSet *)self->_iconsNeedingSlideInAnimator removeObject:icon];
  }

  return v10;
}

- (id)iconListView:(id)view animatorForRemovingIcons:(id)icons proposedAnimator:(id)animator
{
  v37 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  iconsCopy = icons;
  animatorCopy = animator;
  displayedModel = [viewCopy displayedModel];
  folder = [displayedModel folder];
  v30 = [folder indexPathForList:displayedModel];
  v29 = [folder isExtraList:displayedModel];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = iconsCopy;
  v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v26 = displayedModel;
    v27 = animatorCopy;
    v28 = viewCopy;
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
          v20 = [folder listContainingIcon:v17];
          folder2 = [v20 folder];
          v22 = [folder2 isExtraList:v20];
          if (folder2)
          {
            v23 = folder2 == folder;
          }

          else
          {
            v23 = 0;
          }

          if (!v23 || ((v29 ^ v22) & 1) != 0)
          {

            animatorCopy = v27;
            viewCopy = v28;
            displayedModel = v26;
            goto LABEL_22;
          }

          if (!v14)
          {
            v14 = objc_alloc_init(SBIconListViewClusterAnimator);
          }

          -[SBIconListViewClusterAnimator setRemovalDirection:forIcon:](v14, "setRemovalDirection:forIcon:", [folder2 indexOfList:{v20, v26, v27, v28}] < objc_msgSend(v30, "sbListIndex"), v17);
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
      animatorCopy = v27;
      viewCopy = v28;
      displayedModel = v26;
      goto LABEL_24;
    }

    animatorCopy = v27;
    viewCopy = v28;
    displayedModel = v26;
  }

  else
  {
    v14 = 0;
LABEL_22:
  }

  v24 = animatorCopy;
LABEL_24:

  return v24;
}

- (BOOL)iconListView:(id)view canHandleIconDropSession:(id)session
{
  viewCopy = view;
  sessionCopy = session;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [_dragDelegate folderView:self iconListView:viewCopy canHandleIconDropSession:sessionCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)iconListView:(id)view iconDropSessionDidEnter:(id)enter
{
  viewCopy = view;
  enterCopy = enter;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderView:self iconListView:viewCopy iconDropSessionDidEnter:enterCopy];
  }
}

- (id)iconListView:(id)view iconDropSessionDidUpdate:(id)update
{
  viewCopy = view;
  updateCopy = update;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([_dragDelegate folderView:self iconListView:viewCopy iconDropSessionDidUpdate:updateCopy], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];
  }

  return v9;
}

- (id)iconListView:(id)view dataDropSessionDidUpdate:(id)update
{
  v4 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];

  return v4;
}

- (void)iconListView:(id)view iconDropSessionDidExit:(id)exit
{
  viewCopy = view;
  exitCopy = exit;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderView:self iconListView:viewCopy iconDropSessionDidExit:exitCopy];
  }
}

- (void)iconListView:(id)view performIconDrop:(id)drop
{
  viewCopy = view;
  dropCopy = drop;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderView:self iconListView:viewCopy performIconDrop:dropCopy];
  }
}

- (id)iconListView:(id)view iconViewForDroppingIconDragItem:(id)item proposedIconView:(id)iconView
{
  viewCopy = view;
  itemCopy = item;
  iconViewCopy = iconView;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  v12 = iconViewCopy;
  if (objc_opt_respondsToSelector())
  {
    v12 = [_dragDelegate folderView:self iconListView:viewCopy iconViewForDroppingIconDragItem:itemCopy proposedIconView:iconViewCopy];
  }

  return v12;
}

- (void)iconListView:(id)view willUseIconView:(id)iconView forDroppingIconDragItem:(id)item
{
  viewCopy = view;
  iconViewCopy = iconView;
  itemCopy = item;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderView:self iconListView:viewCopy willUseIconView:iconViewCopy forDroppingIconDragItem:itemCopy];
  }
}

- (id)iconListView:(id)view previewForDroppingIconDragItem:(id)item proposedPreview:(id)preview
{
  viewCopy = view;
  itemCopy = item;
  previewCopy = preview;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  v12 = previewCopy;
  if (objc_opt_respondsToSelector())
  {
    v12 = [_dragDelegate folderView:self iconListView:viewCopy previewForDroppingIconDragItem:itemCopy proposedPreview:previewCopy];
  }

  return v12;
}

- (void)iconListView:(id)view iconDragItem:(id)item willAnimateDropWithAnimator:(id)animator
{
  viewCopy = view;
  itemCopy = item;
  animatorCopy = animator;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderView:self iconListView:viewCopy iconDragItem:itemCopy willAnimateDropWithAnimator:animatorCopy];
  }
}

- (BOOL)iconListView:(id)view shouldAllowSpringLoadedInteractionForIconDropSession:(id)session onIconView:(id)iconView
{
  viewCopy = view;
  sessionCopy = session;
  iconViewCopy = iconView;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [_dragDelegate folderView:self iconListView:viewCopy shouldAllowSpringLoadedInteractionForIconDropSession:sessionCopy onIconView:iconViewCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)iconListView:(id)view springLoadedInteractionForIconDragDidCompleteOnIconView:(id)iconView
{
  viewCopy = view;
  iconViewCopy = iconView;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderView:self iconListView:viewCopy springLoadedInteractionForIconDragDidCompleteOnIconView:iconViewCopy];
  }
}

- (id)iconListView:(id)view customSpringAnimationBehaviorForDroppingItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  _dragDelegate = [(SBFolderView *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [_dragDelegate folderView:self iconListView:viewCopy customSpringAnimationBehaviorForDroppingItem:itemCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)folder:(id)folder didAddList:(id)list
{
  v20 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  listCopy = list;
  v8 = [folderCopy indexOfList:listCopy];
  currentPageIndex = [(SBFolderView *)self currentPageIndex];
  v10 = [(SBFolderView *)self iconListModelIndexForPageIndex:currentPageIndex];
  v11 = SBLogIcon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138413058;
    v13 = folderCopy;
    v14 = 2112;
    v15 = listCopy;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = currentPageIndex;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_INFO, "%@ --> %@; index = %lu; currentPage: %li", &v12, 0x2Au);
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v8 <= v10 && (![listCopy isHidden] || -[SBFolderView includesHiddenIconListPages](self, "includesHiddenIconListPages")))
  {
    ++currentPageIndex;
  }

  [(SBFolderView *)self _noteFolderListsDidChange:currentPageIndex];
}

- (void)folder:(id)folder willRemoveLists:(id)lists atIndexes:(id)indexes
{
  folderCopy = folder;
  listsCopy = lists;
  indexesCopy = indexes;
  currentPageIndex = [(SBFolderView *)self currentPageIndex];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __49__SBFolderView_folder_willRemoveLists_atIndexes___block_invoke;
  v34[3] = &unk_1E8092220;
  v34[4] = self;
  v34[5] = currentPageIndex;
  v12 = [listsCopy bs_containsObjectPassingTest:v34];
  lastVisibleListIndex = [folderCopy lastVisibleListIndex];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __49__SBFolderView_folder_willRemoveLists_atIndexes___block_invoke_2;
  v31[3] = &unk_1E8092220;
  v14 = folderCopy;
  v32 = v14;
  v33 = lastVisibleListIndex;
  v15 = [listsCopy bs_containsObjectPassingTest:v31];
  if (v12 && v15)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__27;
    v29 = __Block_byref_object_dispose__27;
    v30 = 0;
    lists = [v14 lists];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __49__SBFolderView_folder_willRemoveLists_atIndexes___block_invoke_3;
    v22 = &unk_1E8092248;
    v23 = listsCopy;
    v24 = &v25;
    [lists enumerateObjectsWithOptions:2 usingBlock:&v19];

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
      v18 = currentPageIndex - v17;
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

- (void)folder:(id)folder didRemoveLists:(id)lists atIndexes:(id)indexes
{
  v18 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  listsCopy = lists;
  indexesCopy = indexes;
  v11 = SBLogIcon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138412802;
    v13 = folderCopy;
    v14 = 2112;
    v15 = listsCopy;
    v16 = 2112;
    v17 = indexesCopy;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_INFO, "%@ --> %@; indexes = %@", &v12, 0x20u);
  }

  [(SBFolderView *)self _noteFolderListsDidChange:[(SBFolderView *)self currentPageIndex]];
}

- (void)folder:(id)folder listHiddenWillChange:(id)change
{
  if (([change isHidden] & 1) == 0)
  {
    currentPageIndex = [(SBFolderView *)self currentPageIndex];
    if (currentPageIndex == [(SBFolderView *)self lastIconPageIndex])
    {
      v6 = currentPageIndex - 1;
      firstIconPageIndex = [(SBFolderView *)self firstIconPageIndex];
      if (v6 <= firstIconPageIndex)
      {
        v8 = firstIconPageIndex;
      }

      else
      {
        v8 = v6;
      }

      [(SBFolderView *)self setCurrentPageIndex:v8 animated:0];
    }
  }
}

- (void)folderDisplayNameDidChange:(id)change
{
  displayName = [change displayName];
  [(SBFolderView *)self _setFolderName:displayName];
}

- (void)folder:(id)folder willRestoreOverflowIcon:(id)icon toList:(id)list
{
  iconCopy = icon;
  v7 = [(SBFolderView *)self iconListViewWithList:list];
  visibleGridCellIndexes = [v7 visibleGridCellIndexes];
  v9 = [visibleGridCellIndexes count];

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

    [(NSMutableSet *)iconsNeedingSlideInAnimator addObject:iconCopy];
  }
}

- (id)_legibilitySettingsWithPrimaryColor:(id)color
{
  colorCopy = color;
  legibilitySettings = [(SBFolderView *)self legibilitySettings];
  v6 = [legibilitySettings settingsWithUpdatedPrimaryColor:colorCopy];

  return v6;
}

- (void)_updateTitleLegibilitySettings
{
  legibilitySettings = [(SBFolderView *)self legibilitySettings];
  if (UIAccessibilityIsReduceTransparencyEnabled() && [legibilitySettings style] == 2)
  {
    titleTextField = self->_titleTextField;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v5 = [(SBFolderView *)self _legibilitySettingsWithPrimaryColor:blackColor];
    [(SBFolderTitleTextField *)titleTextField setLegibilitySettings:v5];
  }

  else
  {
    [(SBFolderTitleTextField *)self->_titleTextField setLegibilitySettings:legibilitySettings];
  }
}

- (void)_updateIconListLegibilitySettings
{
  v14 = *MEMORY[0x1E69E9840];
  legibilitySettingsForIconListViews = [(SBFolderView *)self legibilitySettingsForIconListViews];
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

        [*(*(&v9 + 1) + 8 * v8++) setLegibilitySettings:{legibilitySettingsForIconListViews, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(SBIconListPageControl *)self->_pageControl setLegibilitySettings:legibilitySettingsForIconListViews];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBFolderView *)self _updateTitleLegibilitySettings];
    [(SBFolderView *)self _updateIconListLegibilitySettings];
  }
}

- (id)accessibilityTintColorForRect:(CGRect)rect tintStyle:(unint64_t)style
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegate = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [delegate folderView:self accessibilityTintColorForRect:{x, y, width, height}];
  }

  else
  {
    v11 = 0;
  }

  v12 = SBHomeAccessibilityTintColor(style, v11);

  return v12;
}

- (id)accessibilityLegibilitySettingsForRect:(CGRect)rect tintStyle:(unint64_t)style
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegate = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [delegate folderView:self accessibilityTintColorForRect:{x, y, width, height}];
  }

  else
  {
    v11 = 0;
  }

  v12 = SBHomeAccessibilityTintLegibiliitySettings(style, v11);

  return v12;
}

- (void)willMoveToWindow:(id)window
{
  v12.receiver = self;
  v12.super_class = SBFolderView;
  [(SBFolderView *)&v12 willMoveToWindow:?];
  window = [(SBFolderView *)self window];
  if (window)
  {
    v6 = 0;
  }

  else
  {
    v6 = window != 0;
  }

  window2 = [(SBFolderView *)self window];

  if (window2)
  {
    v8 = window != 0;
  }

  else
  {
    v8 = 1;
  }

  if (v6 || !v8)
  {
    minimumPageIndex = [(SBFolderView *)self minimumPageIndex];
    maximumPageIndex = [(SBFolderView *)self maximumPageIndex];
    currentPageIndex = self->_currentPageIndex;
    if (currentPageIndex < minimumPageIndex || (minimumPageIndex = maximumPageIndex & ~(maximumPageIndex >> 63), currentPageIndex > minimumPageIndex))
    {
      [(SBFolderView *)self setCurrentPageIndex:minimumPageIndex animated:0];
    }
  }

  if (window)
  {
    [(SBFolderView *)self setHasEverBeenInAWindow:1];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFolderView *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFolderView *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBFolderView *)self succinctDescriptionBuilder];
  [(SBFolderView *)self frame];
  v5 = [succinctDescriptionBuilder appendRect:@"frame" withName:?];
  folder = [(SBFolderView *)self folder];
  v7 = [succinctDescriptionBuilder appendObject:folder withName:@"folder"];

  v8 = [succinctDescriptionBuilder appendBool:-[SBFolderView isEditing](self withName:{"isEditing"), @"editing"}];
  v9 = [succinctDescriptionBuilder appendBool:-[SBFolderView isScrolling](self withName:{"isScrolling"), @"scrolling"}];
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

  [succinctDescriptionBuilder appendString:v10 withName:@"orientation"];
  v11 = [succinctDescriptionBuilder appendInteger:-[SBFolderView currentPageIndex](self withName:{"currentPageIndex"), @"currentPageIndex"}];
  v12 = [succinctDescriptionBuilder appendInteger:-[SBFolderView iconListViewCount](self withName:{"iconListViewCount"), @"iconListViewCount"}];
  v13 = [succinctDescriptionBuilder appendBool:self->_isScalingViewBorrowed withName:@"isScalingViewBorrowed" ifEqualTo:1];
  v14 = [succinctDescriptionBuilder appendInteger:-[SBFolderView leadingCustomPageCount](self withName:{"leadingCustomPageCount"), @"leadingCustomPageCount"}];
  v15 = [succinctDescriptionBuilder appendInteger:-[SBFolderView trailingCustomPageCount](self withName:{"trailingCustomPageCount"), @"trailingCustomPageCount"}];
  allObjects = [(NSMutableSet *)self->_scrollViewIsScrollingOverrides allObjects];
  [succinctDescriptionBuilder appendArraySection:allObjects withName:@"scrollViewIsScrollingOverrides" skipIfEmpty:0];

  v17 = [succinctDescriptionBuilder appendRect:@"lastProcessedVisibleRect" withName:{self->_lastProcessedVisibleRect.origin.x, self->_lastProcessedVisibleRect.origin.y, self->_lastProcessedVisibleRect.size.width, self->_lastProcessedVisibleRect.size.height}];
  contentVisibility = [(SBFolderView *)self contentVisibility];
  if (contentVisibility)
  {
    v19 = SBHStringFromContentVisibility(contentVisibility);
    [succinctDescriptionBuilder appendString:v19 withName:@"contentVisibility"];
  }

  return succinctDescriptionBuilder;
}

- (id)_dragDelegate
{
  delegate = [(SBFolderView *)self delegate];
  v4 = delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate draggingDelegateForFolderView:self];
  }

  return v4;
}

- (void)_updateCycleIdleUntil:(unint64_t)until
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

    if (v9 > until)
    {
      break;
    }

    v5 += v9 - v7;
    v10 = v5 / v6++ + v9;
  }

  while (v10 <= until);
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

@end