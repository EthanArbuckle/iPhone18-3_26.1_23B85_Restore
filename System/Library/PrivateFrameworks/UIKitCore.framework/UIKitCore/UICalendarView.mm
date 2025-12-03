@interface UICalendarView
- (BOOL)_canSelectItemAtIndexPath:(id)path forSelection:(BOOL)selection;
- (BOOL)_shouldUpdateDateViewForVisibleMonth:(id)month;
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (NSDateComponents)visibleDateComponents;
- (UICalendarView)initWithCoder:(id)coder;
- (UICalendarView)initWithFrame:(CGRect)frame;
- (_UICalendarViewDecorationSystem)decorationSystem;
- (double)__dayAndWeekdayLabelWidth;
- (double)_preferredCollectionViewHeightForWidth:(double)width;
- (id)_configuedCellForCollectionView:(id)view indexPath:(id)path day:(id)day;
- (id)_contentSizeCategoryForContentWidth:(double)width;
- (id)_delegateDecorationForDay:(id)day;
- (id)delegate;
- (unint64_t)_selectionRoundedEdgeForDay:(id)day;
- (void)_cleanupDataIfNecessary;
- (void)_configureMonthYearSelector;
- (void)_deselectDates:(id)dates animated:(BOOL)animated;
- (void)_destroyMonthYearSelector;
- (void)_freezeContentOffset;
- (void)_performIfNotIgnoringScrollCallbacks:(id)callbacks;
- (void)_performIgnoringScrollCallbacks:(id)callbacks;
- (void)_reconfigureVisibleItems;
- (void)_reloadCollectionViewLayout;
- (void)_reloadDataSourceController;
- (void)_reloadDateFormatters;
- (void)_reloadEverythingIncludingLayout:(BOOL)layout;
- (void)_reloadPossibleDayValues;
- (void)_reloadVisibleMonthIfNeeded;
- (void)_restoreContentOffsetWithPageOffset:(int64_t)offset;
- (void)_selectDates:(id)dates animated:(BOOL)animated;
- (void)_setVisibleMonth:(id)month animated:(BOOL)animated;
- (void)_setVisibleMonth:(id)month animated:(BOOL)animated updateDataSource:(BOOL)source updateCollectionView:(BOOL)view notifyDelegate:(BOOL)delegate;
- (void)_setupInitialValues;
- (void)_setupViewHierarchy;
- (void)_updateCollectionViewContentInsets;
- (void)_updateCollectionViewScrollPosition:(BOOL)position;
- (void)_updateCollectionViewSelection:(BOOL)selection;
- (void)_updateContentSizeLimitations;
- (void)_updateForChangedLayoutMargins;
- (void)_updateSizing;
- (void)_updateViewState:(int64_t)state animated:(BOOL)animated;
- (void)_updateVisibleMonth:(id)month animated:(BOOL)animated;
- (void)_updateVisibleMonthIfNecessary;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)headerViewDidStepBackward:(id)backward;
- (void)headerViewDidStepForward:(id)forward;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)monthYearSelector:(id)selector didSelectMonth:(id)month;
- (void)reloadDecorationsForDateComponents:(NSArray *)dates animated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAvailableDateRange:(NSDateInterval *)availableDateRange;
- (void)setBounds:(CGRect)bounds;
- (void)setCalendar:(NSCalendar *)calendar;
- (void)setDelegate:(id)delegate;
- (void)setFontDesign:(UIFontDescriptorSystemDesign)fontDesign;
- (void)setFrame:(CGRect)frame;
- (void)setLocale:(NSLocale *)locale;
- (void)setSelectionBehavior:(UICalendarSelection *)selectionBehavior;
- (void)setTimeZone:(NSTimeZone *)timeZone;
- (void)setVisibleDateComponents:(NSDateComponents *)dateComponents animated:(BOOL)animated;
- (void)setWantsDateDecorations:(BOOL)wantsDateDecorations;
@end

@implementation UICalendarView

- (UICalendarView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UICalendarView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UICalendarView *)v3 _setupInitialValues];
    [(UICalendarView *)v4 _setupViewHierarchy];
    [(UICalendarView *)v4 _reloadEverythingIncludingLayout:1];
  }

  return v4;
}

- (UICalendarView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UICalendarView;
  v3 = [(UIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(UICalendarView *)v3 _setupInitialValues];
    [(UICalendarView *)v4 _setupViewHierarchy];
  }

  return v4;
}

- (void)_setupInitialValues
{
  v3 = objc_opt_new();
  [(NSDateFormatter *)v3 setDateFormat:@"d"];
  [(NSDateFormatter *)v3 setFormattingContext:2];
  cellFormatter = self->_cellFormatter;
  self->_cellFormatter = v3;
  v5 = v3;

  self->_frozenContentOffset = InvalidFrozenContentOffset;
  v6 = objc_opt_new();
  dataModel = self->_dataModel;
  self->_dataModel = v6;

  self->_viewState = 0;
  *&self->_flags |= 0x80u;
}

- (void)_reloadDateFormatters
{
  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  [(NSDateFormatter *)self->_cellFormatter setCalendar:effectiveCalendar];

  effectiveLocale = [(_UICalendarDataModel *)self->_dataModel effectiveLocale];
  [(NSDateFormatter *)self->_cellFormatter setLocale:effectiveLocale];

  effectiveTimeZone = [(_UICalendarDataModel *)self->_dataModel effectiveTimeZone];
  [(NSDateFormatter *)self->_cellFormatter setTimeZone:effectiveTimeZone];
}

- (void)_setupViewHierarchy
{
  v28[2] = *MEMORY[0x1E69E9840];
  [(UIView *)self setPreservesSuperviewLayoutMargins:1];
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UICalendarViewGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  headerViewLayoutMarginsForProposedLayoutMargins = [v4 headerViewLayoutMarginsForProposedLayoutMargins];
  [(UIView *)self layoutMargins];
  headerViewLayoutMarginsForProposedLayoutMargins[2](headerViewLayoutMarginsForProposedLayoutMargins);
  [(UIView *)self setLayoutMargins:?];

  v6 = [[_UICalendarHeaderView alloc] initWithDataModel:self->_dataModel delegate:self];
  headerView = self->_headerView;
  self->_headerView = v6;

  v8 = [[_UICalendarWeekdayView alloc] initWithDataModel:self->_dataModel];
  weekdayView = self->_weekdayView;
  self->_weekdayView = v8;

  v10 = objc_opt_new();
  daySizingLabel = self->_daySizingLabel;
  self->_daySizingLabel = v10;

  v12 = [UICollectionView alloc];
  v13 = objc_opt_new();
  v14 = [(UICollectionView *)v12 initWithFrame:v13 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(UICollectionView *)v14 setLayoutMargins:0.0, 0.0, 0.0, 0.0];
  [(UIView *)v14 setClipsToBounds:0];
  [(UIView *)v14 setPreservesSuperviewLayoutMargins:1];
  [(UIScrollView *)v14 setPagingEnabled:1];
  [(UIScrollView *)v14 setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)v14 setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)v14 setAllowsFocus:0];
  [(UICollectionView *)v14 setBackgroundColor:0];
  [(UICollectionView *)v14 setDelegate:self];
  v15 = objc_opt_class();
  v16 = +[_UICalendarDateViewCell reuseIdentifier];
  [(UICollectionView *)v14 registerClass:v15 forCellWithReuseIdentifier:v16];

  [(UIScrollView *)v14 _setAutomaticContentOffsetAdjustmentEnabled:0];
  objc_initWeak(&location, self);
  v17 = [UICollectionViewDiffableDataSource alloc];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __37__UICalendarView__setupViewHierarchy__block_invoke;
  v25[3] = &unk_1E7109510;
  objc_copyWeak(&v26, &location);
  v18 = [(UICollectionViewDiffableDataSource *)v17 initWithCollectionView:v14 cellProvider:v25];
  dataSource = self->_dataSource;
  self->_dataSource = v18;

  objc_storeStrong(&self->_collectionView, v14);
  v20 = objc_opt_new();
  contentView = self->_contentView;
  self->_contentView = v20;

  [(UIView *)self->_contentView setPreservesSuperviewLayoutMargins:1];
  [(UIView *)self->_contentView setClipsToBounds:1];
  [(UIView *)self addSubview:self->_contentView];
  [(UIView *)self->_contentView addSubview:self->_headerView];
  [(UIView *)self->_contentView addSubview:self->_weekdayView];
  [(UIView *)self->_contentView addSubview:self->_collectionView];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__shouldDifferentiateWithoutColorUpdated_ name:@"UIAccessibilityShouldDifferentiateWithoutColorDidChangeNotification" object:0];

  [(UICalendarView *)self _updateContentSizeLimitations];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v24 = [(UIView *)self registerForTraitChanges:v23 withHandler:&__block_literal_global_247];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

id __37__UICalendarView__setupViewHierarchy__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained _configuedCellForCollectionView:v7 indexPath:v8 day:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __37__UICalendarView__setupViewHierarchy__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setNeedsLayout];
  [v2 invalidateIntrinsicContentSize];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v7.receiver = self;
  v7.super_class = UICalendarView;
  [(UIView *)&v7 setFrame:frame.origin.x, frame.origin.y];
  if (width != self->_lastKnownSize.width || height != self->_lastKnownSize.height)
  {
    self->_lastKnownSize.width = width;
    self->_lastKnownSize.height = height;
    [(UICalendarView *)self _setNeedsCollectionViewScrollPositionUpdate];
    [(UICalendarView *)self _setNeedsUpdateSizing];
    [(UICalendarView *)self _updateContentSizeLimitations];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v7.receiver = self;
  v7.super_class = UICalendarView;
  [(UIView *)&v7 setBounds:bounds.origin.x, bounds.origin.y];
  if (width != self->_lastKnownSize.width || height != self->_lastKnownSize.height)
  {
    self->_lastKnownSize.width = width;
    self->_lastKnownSize.height = height;
    [(UICalendarView *)self _setNeedsCollectionViewScrollPositionUpdate];
    [(UICalendarView *)self _setNeedsUpdateSizing];
    [(UICalendarView *)self _updateContentSizeLimitations];
  }
}

- (void)_updateSizing
{
  *&self->_flags &= ~4u;
  [(UICalendarView *)self __dayAndWeekdayLabelWidth];
  v4 = v3;
  weekdayView = self->_weekdayView;
  if (v3 == self->_lastWeekdayLabelWidth)
  {
    [(UIView *)weekdayView invalidateIntrinsicContentSize];
    collectionView = self->_collectionView;

    [(UIView *)collectionView invalidateIntrinsicContentSize];
  }

  else
  {
    [(_UICalendarWeekdayView *)weekdayView setPreferredLabelWidth:v3];
    self->_lastWeekdayLabelWidth = v4;

    [(UICalendarView *)self _reloadCollectionViewLayout];
  }
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = UICalendarView;
  [(UIView *)&v49 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_contentView setFrame:?];
  v50.origin.x = v4;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v10;
  if (CGRectGetWidth(v50) != 0.0)
  {
    v51.origin.x = v4;
    v51.origin.y = v6;
    v51.size.width = v8;
    v51.size.height = v10;
    if (CGRectGetHeight(v51) != 0.0)
    {
      traitCollection = [(UIView *)self traitCollection];
      v12 = _UICalendarViewGetPlatformMetrics([traitCollection userInterfaceIdiom]);

      [(UIView *)self layoutMargins];
      v14 = v13;
      [(UIView *)self layoutMargins];
      v16 = v10 - (v14 + v15);
      maximumContentWidthForLayoutMargins = [v12 maximumContentWidthForLayoutMargins];
      [(UIView *)self layoutMargins];
      v18 = fmax((v8 - maximumContentWidthForLayoutMargins[2](maximumContentWidthForLayoutMargins)) * 0.5, 0.0);
      v52.origin.x = v4 + 0.0;
      v52.origin.y = v6 + v14;
      v52.size.width = v8;
      v52.size.height = v16;
      v53 = CGRectInset(v52, v18, 0.0);
      x = v53.origin.x;
      y = v53.origin.y;
      width = v53.size.width;
      height = v53.size.height;
      remainder = v53;

      [v12 minimumLayoutWidth];
      v24 = v23;
      if (width >= v23)
      {
        v25 = width;
      }

      else
      {
        x = (width - v23) * 0.5;
        remainder.origin.x = x;
        remainder.size.width = v23;
        v25 = v23;
      }

      [(_UICalendarWeekdayView *)self->_weekdayView sizeThatFits:v25, height];
      v27 = v26;
      [(_UICalendarHeaderView *)self->_headerView sizeThatFits:v25, height];
      v29 = v28;
      [v12 minimumContentWidth];
      maximumContentWidthForLayoutMargins2 = [v12 maximumContentWidthForLayoutMargins];
      [(UIView *)self layoutMargins];
      maximumContentWidthForLayoutMargins2[2](maximumContentWidthForLayoutMargins2);

      v31 = *(MEMORY[0x1E695F058] + 16);
      slice.origin = *MEMORY[0x1E695F058];
      slice.size = v31;
      v32 = x;
      v31.width = y;
      v33 = v25;
      v34 = height;
      CGRectDivide(*(&v31 - 8), &slice, &remainder, v29, CGRectMinYEdge);
      [(UIView *)self->_headerView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      remainder.origin.y = remainder.origin.y + 16.0;
      remainder.size.height = remainder.size.height + -16.0;
      [(UIView *)self->_monthYearSelector setFrame:remainder.origin.x];
      CGRectDivide(remainder, &slice, &remainder, v27, CGRectMinYEdge);
      [(UIView *)self->_weekdayView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      [v12 weekdayViewVerticalSpacing];
      remainder.origin.y = v35 + remainder.origin.y;
      remainder.size.height = remainder.size.height - v35;
      [(UICalendarView *)self _preferredCollectionViewHeightForWidth:CGRectGetWidth(remainder)];
      v37 = v36;
      [v12 collectionViewHeightOffset];
      v39 = v37 - v38;
      v40 = CGRectGetHeight(remainder);
      if (v40 < v39)
      {
        remainder.size.height = fmax(v39, 0.0);
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v46 = remainder;
      v45[2] = __32__UICalendarView_layoutSubviews__block_invoke;
      v45[3] = &unk_1E70F3B20;
      v45[4] = self;
      [(UICalendarView *)self _performIgnoringScrollCallbacks:v45];
      flags = self->_flags;
      if (v40 >= v39 && width >= v24 && (*&self->_flags & 8) != 0)
      {
        [(UICalendarView *)self _updateForChangedLayoutMargins];
        flags = self->_flags;
      }

      if ((flags & 4) != 0)
      {
        [(UICalendarView *)self _updateSizing];
        flags = self->_flags;
        if ((flags & 1) == 0)
        {
LABEL_14:
          if ((flags & 2) == 0)
          {
LABEL_16:
            if (width >= v24 || v40 >= v39)
            {
              if (width >= v24)
              {
                if (v40 >= v39)
                {
                  goto LABEL_30;
                }

                v42 = *(__UILogGetCategoryCachedImpl("UICalendarView", &qword_1ED49A6E0) + 8);
                if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_30;
                }

                *v44 = 0;
                v43 = "UICalendarView's height is smaller than it can render its content in; defaulting to the minimum height.";
                goto LABEL_29;
              }

              v42 = *(__UILogGetCategoryCachedImpl("UICalendarView", &qword_1ED49A6D8) + 8);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *v44 = 0;
                v43 = "UICalendarView's width is smaller than it can render its content in; defaulting to the minimum width.";
                goto LABEL_29;
              }
            }

            else
            {
              v42 = *(__UILogGetCategoryCachedImpl("UICalendarView", &_MergedGlobals_5_12) + 8);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *v44 = 0;
                v43 = "UICalendarView's size is smaller than it can render its content in; defaulting to the minimum size.";
LABEL_29:
                _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, v43, v44, 2u);
              }
            }

LABEL_30:

            return;
          }

LABEL_15:
          [(UICalendarView *)self _updateCollectionViewScrollPosition:0];
          goto LABEL_16;
        }
      }

      else if ((flags & 1) == 0)
      {
        goto LABEL_14;
      }

      [(UICalendarView *)self _updateCollectionViewSelection:0];
      if ((*&self->_flags & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }
}

- (id)_contentSizeCategoryForContentWidth:(double)width
{
  v3 = &UIContentSizeCategoryExtraExtraLarge;
  if (width >= 280.0)
  {
    v3 = &UIContentSizeCategoryExtraExtraExtraLarge;
  }

  if (width >= 330.0)
  {
    v3 = &UIContentSizeCategoryAccessibilityMedium;
  }

  return *v3;
}

- (void)_updateContentSizeLimitations
{
  [(UIView *)self bounds];
  v4 = [(UICalendarView *)self _contentSizeCategoryForContentWidth:v3];
  [(UIView *)self->_contentView setMaximumContentSizeCategory:v4];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  traitCollection = [(UIView *)self traitCollection];
  v7 = _UICalendarViewGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  [effectiveCalendar maximumRangeOfUnit:4096];

  [v7 minimumContentWidth];
  v10 = v9;
  maximumContentWidthForLayoutMargins = [v7 maximumContentWidthForLayoutMargins];
  [(UIView *)self layoutMargins];
  v12 = fmax(v10, fmin(width, maximumContentWidthForLayoutMargins[2](maximumContentWidthForLayoutMargins)));

  maximumContentSizeCategory = [(UIView *)self->_contentView maximumContentSizeCategory];
  v14 = [(UICalendarView *)self _contentSizeCategoryForContentWidth:v12];
  [(UIView *)self->_contentView setMaximumContentSizeCategory:v14];
  [(_UICalendarWeekdayView *)self->_weekdayView sizeThatFits:width, height];
  v16 = v15;
  v18 = v17;
  [(_UICalendarHeaderView *)self->_headerView sizeThatFits:width, height];
  v20 = v19;
  v22 = v21;
  [v7 minimumContentWidth];
  v24 = v23;
  maximumContentWidthForLayoutMargins2 = [v7 maximumContentWidthForLayoutMargins];
  [(UIView *)self layoutMargins];
  v26 = fmax(v24, fmin(fmax(v16, v20), maximumContentWidthForLayoutMargins2[2](maximumContentWidthForLayoutMargins2)));

  [(UIView *)self->_contentView setMaximumContentSizeCategory:maximumContentSizeCategory];
  [(UICalendarView *)self _preferredCollectionViewHeightForWidth:v26];
  v28 = v18 + 16.0 + v22 + v27;
  [(UIView *)self layoutMargins];
  v30 = v28 + v29;
  [(UIView *)self layoutMargins];
  v32 = v30 + v31 + 2.0;

  v33 = v26;
  v34 = v32;
  result.height = v34;
  result.width = v33;
  return result;
}

- (void)_updateForChangedLayoutMargins
{
  *&self->_flags &= ~8u;
  collectionView = [(UICalendarView *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = UICalendarView;
  [(UIView *)&v3 layoutMarginsDidChange];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UICalendarView *)self _setNeedsUpdateSizing];
  [(UICalendarView *)self _updateContentSizeLimitations];
  [(UICalendarView *)self _setNeedsUpdateForChangedLayoutMargins];
}

- (double)_preferredCollectionViewHeightForWidth:(double)width
{
  if ([(UICalendarView *)self _hasCellDecorations])
  {
    effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
    [effectiveCalendar maximumRangeOfUnit:4096];

    traitCollection = [(UIView *)self->_contentView traitCollection];
    [UICalendarViewDecoration _referenceHeightForTraitCollection:traitCollection];
  }

  traitCollection2 = [(UIView *)self traitCollection];
  v7 = _UICalendarViewGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);

  [v7 dateViewCellSpacing];
  if (v8 > 0.0)
  {
    effectiveCalendar2 = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
    [effectiveCalendar2 maximumRangeOfUnit:4096];

    [v7 dateViewCellBackgroundSize];
    [v7 dateViewCellSpacing];
  }

  UIRoundToViewScale(self);
  v11 = v10;

  return v11;
}

- (double)__dayAndWeekdayLabelWidth
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UICalendarViewGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  v5 = [_UICalendarDateViewCellState alloc];
  traitCollection2 = [(UIView *)self traitCollection];
  v7 = [(_UICalendarDateViewCellState *)v5 initWithTraits:traitCollection2];

  [(_UICalendarDateViewCellState *)v7 setForceEmphasizedFont:1];
  dateCellFontProvider = [v4 dateCellFontProvider];
  fontDesign = [(_UICalendarDataModel *)self->_dataModel fontDesign];
  traitCollection3 = [(UIView *)self->_contentView traitCollection];
  v11 = (dateCellFontProvider)[2](dateCellFontProvider, v7, fontDesign, traitCollection3);
  [(_UIDatePickerLinkedLabel *)self->_daySizingLabel setFont:v11];

  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  weekdaySymbols = [effectiveCalendar weekdaySymbols];
  v14 = [weekdaySymbols count];

  sizingLabel = [(_UICalendarWeekdayView *)self->_weekdayView sizingLabel];
  [(UIView *)self bounds];
  [sizingLabel sizeThatFits:{v16, v17}];
  v19 = v18;

  daySizingLabel = self->_daySizingLabel;
  [(UIView *)self bounds];
  [(_UIDatePickerLinkedLabel *)daySizingLabel sizeThatFits:v21, v22];
  v24 = v23;
  [(UIView *)self bounds];
  Width = CGRectGetWidth(v31);
  [(UIView *)self layoutMargins];
  v27 = Width - v26;
  [(UIView *)self layoutMargins];
  v29 = fmax(v24, fmin(v19, (v27 - v28) / v14));

  return v29;
}

- (BOOL)_shouldUpdateDateViewForVisibleMonth:(id)month
{
  dataModel = self->_dataModel;
  monthCopy = month;
  visibleMonth = [(_UICalendarDataModel *)dataModel visibleMonth];
  v6 = [visibleMonth isEqual:monthCopy];

  return v6 ^ 1;
}

- (void)_updateVisibleMonth:(id)month animated:(BOOL)animated
{
  [(UICalendarView *)self _updateDateViewForVisibleMonth:month animated:animated];
  headerView = self->_headerView;

  [(_UICalendarHeaderView *)headerView didUpdateVisibleMonth];
}

- (void)headerViewDidStepForward:(id)forward
{
  dataModel = [forward dataModel];
  visibleMonth = [dataModel visibleMonth];
  nextMonth = [visibleMonth nextMonth];

  [(UICalendarView *)self _updateVisibleMonth:nextMonth animated:1];
}

- (void)headerViewDidStepBackward:(id)backward
{
  dataModel = [backward dataModel];
  visibleMonth = [dataModel visibleMonth];
  previousMonth = [visibleMonth previousMonth];

  [(UICalendarView *)self _updateVisibleMonth:previousMonth animated:1];
}

- (void)_updateViewState:(int64_t)state animated:(BOOL)animated
{
  if (self->_viewState != state)
  {
    animatedCopy = animated;
    monthYearSelector = self->_monthYearSelector;
    v9 = state == 1;
    if (state == 1 && !monthYearSelector)
    {
      [(UICalendarView *)self _configureMonthYearSelector];
      monthYearSelector = self->_monthYearSelector;
    }

    [(UIView *)monthYearSelector setNeedsLayout];
    self->_viewState = state;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__UICalendarView__updateViewState_animated___block_invoke;
    aBlock[3] = &unk_1E70F35E0;
    v16 = v9;
    aBlock[4] = self;
    v10 = _Block_copy(aBlock);
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__UICalendarView__updateViewState_animated___block_invoke_2;
    v12[3] = &unk_1E7109558;
    objc_copyWeak(v13, &location);
    v13[1] = a2;
    v11 = _Block_copy(v12);
    ++self->_stateUpdatesInFlight;
    if (animatedCopy)
    {
      [UIView animateWithDuration:4 delay:v10 options:v11 animations:0.25 completion:0.0];
    }

    else
    {
      v10[2](v10);
      v11[2](v11, 1);
    }

    [(_UICalendarHeaderView *)self->_headerView setExpanded:state == 1 animated:animatedCopy];

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

uint64_t __44__UICalendarView__updateViewState_animated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 448);
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  if (*(a1 + 40))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  [v2 setAlpha:v3];
  [*(*(a1 + 32) + 576) setAlpha:v4];
  v5 = *(*(a1 + 32) + 568);

  return [v5 setAlpha:v4];
}

void __44__UICalendarView__updateViewState_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[55];
    if (v3 <= 0)
    {
      v7 = WeakRetained;
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:*(a1 + 40) object:v7 file:@"UICalendarView.m" lineNumber:517 description:@"Internal inconsistency: finishing a state update with 0 state updates being tracked right now."];

      WeakRetained = v7;
      v3 = v7[55];
    }

    v4 = v3 - 1;
    WeakRetained[55] = v4;
    if (!v4 && WeakRetained[66] != 1)
    {
      v6 = WeakRetained;
      [WeakRetained _destroyMonthYearSelector];
      WeakRetained = v6;
    }
  }
}

- (void)_destroyMonthYearSelector
{
  [(UIView *)self->_monthYearSelector removeFromSuperview];
  monthYearSelector = self->_monthYearSelector;
  self->_monthYearSelector = 0;
}

- (void)_configureMonthYearSelector
{
  if (!self->_monthYearSelector)
  {
    v3 = [[_UICalendarMonthYearSelector alloc] initWithDataModel:self->_dataModel];
    [(_UICalendarMonthYearSelector *)v3 setDelegate:self];
    v4 = 0.0;
    if (self->_viewState == 1)
    {
      v4 = 1.0;
    }

    [(UIView *)v3 setAlpha:v4];
    [(UIView *)self addSubview:v3];
    monthYearSelector = self->_monthYearSelector;
    self->_monthYearSelector = v3;
  }
}

- (void)monthYearSelector:(id)selector didSelectMonth:(id)month
{
  selectionBehavior = self->_selectionBehavior;
  monthCopy = month;
  components = [monthCopy components];
  [(UICalendarSelection *)selectionBehavior didChangeVisibleMonth:components];

  [(UICalendarView *)self _updateVisibleMonth:monthCopy animated:0];
}

- (id)_configuedCellForCollectionView:(id)view indexPath:(id)path day:(id)day
{
  v21[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dayCopy = day;
  collectionView = self->_collectionView;
  v10 = +[_UICalendarDateViewCell reuseIdentifier];
  v11 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

  [v11 setCalendarView:self];
  if ([(UICalendarView *)self _hasCellDecorations])
  {
    v12 = [(UICalendarView *)self _delegateDecorationForDay:dayCopy];
    v13 = v12;
    if (v12)
    {
      v21[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v14 = 0;
  }

  [v11 setSelectionRoundedEdge:{-[UICalendarView _selectionRoundedEdgeForDay:](self, "_selectionRoundedEdgeForDay:", dayCopy)}];
  cellFormatter = self->_cellFormatter;
  fontDesign = [(_UICalendarDataModel *)self->_dataModel fontDesign];
  v17 = [(UICalendarView *)self _canSelectItemAtIndexPath:pathCopy forSelection:0];
  renderOverhangDays = [(UICalendarSelection *)self->_selectionBehavior renderOverhangDays];
  LOBYTE(v20) = [(UICalendarSelection *)self->_selectionBehavior highlightsToday];
  [v11 configureWithDay:dayCopy formatter:cellFormatter fontDesign:fontDesign decorations:v14 outOfRange:!v17 renderOverhangDays:renderOverhangDays highlightsToday:v20];

  return v11;
}

- (id)_delegateDecorationForDay:(id)day
{
  if ((*&self->_flags & 0x20) != 0)
  {
    dayCopy = day;
    delegate = [(UICalendarView *)self delegate];
    components = [dayCopy components];

    v3 = [delegate calendarView:self decorationForDateComponents:components];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)_selectionRoundedEdgeForDay:(id)day
{
  dayCopy = day;
  selectionBehavior = [(UICalendarView *)self selectionBehavior];

  if (selectionBehavior)
  {
    selectionBehavior2 = [(UICalendarView *)self selectionBehavior];
    components = [dayCopy components];
    v8 = [selectionBehavior2 roundedEdgeForDate:components];
  }

  else
  {
    v8 = 3;
  }

  return v8;
}

- (void)_reloadCollectionViewLayout
{
  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  [effectiveCalendar maximumRangeOfUnit:512];
  v5 = v4;
  [effectiveCalendar maximumRangeOfUnit:4096];
  v7 = (v6 - 1);
  self->_collectionViewAspectRatio = (v6 - 1) / v5;
  v8 = objc_opt_new();
  [v8 setScrollDirection:1];
  objc_initWeak(&location, self);
  v9 = [UICollectionViewCompositionalLayout alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__UICalendarView__reloadCollectionViewLayout__block_invoke;
  v15[3] = &unk_1E7109580;
  objc_copyWeak(v17, &location);
  v10 = effectiveCalendar;
  v16 = v10;
  v17[1] = v5;
  v17[2] = v7;
  v11 = [(UICollectionViewCompositionalLayout *)v9 initWithSectionProvider:v15 configuration:v8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__UICalendarView__reloadCollectionViewLayout__block_invoke_2;
  v13[3] = &unk_1E70F35B8;
  v13[4] = self;
  v12 = v11;
  v14 = v12;
  [(UICalendarView *)self _performIgnoringScrollCallbacks:v13];
  [(UICalendarView *)self _setNeedsCollectionViewScrollPositionUpdate];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

id __45__UICalendarView__reloadCollectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v60 = v5;
    v8 = [WeakRetained traitCollection];
    v9 = _UICalendarViewGetPlatformMetrics([v8 userInterfaceIdiom]);

    [v7 directionalLayoutMargins];
    v11 = v10;
    v13 = v12;
    v14 = [v7[53] snapshot];
    v15 = [v14 sectionIdentifiers];
    v16 = [v15 objectAtIndexedSubscript:a2];

    v17 = *(a1 + 32);
    v59 = v16;
    v18 = [v16 date];
    [v17 rangeOfUnit:0x2000 inUnit:8 forDate:v18];
    v20 = v19;

    [v9 dateViewCellSpacing];
    v22 = v21;
    if (v21 <= 0.0)
    {
      [off_1E70ECB18 fractionalWidthDimension:1.0 / *(a1 + 48)];
    }

    else
    {
      [v9 dateViewCellBackgroundSize];
      [off_1E70ECB18 absoluteDimension:?];
    }
    v24 = ;
    v25 = [off_1E70ECB18 fractionalHeightDimension:1.0];
    v26 = [off_1E70ECB40 sizeWithWidthDimension:v24 heightDimension:v25];

    v57 = v26;
    v27 = [off_1E70ECB30 itemWithLayoutSize:v26];
    v58 = v24;
    if (v22 <= 0.0)
    {
      v29 = *(a1 + 56);
      if (v29 <= v20)
      {
        v29 = v20;
      }

      v28 = [off_1E70ECB18 fractionalHeightDimension:1.0 / v29];
    }

    else
    {
      [v9 dateViewCellBackgroundSize];
      v28 = [off_1E70ECB18 absoluteDimension:?];
    }

    v30 = v28;
    v31 = [off_1E70ECB18 fractionalWidthDimension:1.0];
    v55 = v30;
    v32 = [off_1E70ECB40 sizeWithWidthDimension:v31 heightDimension:v30];

    v56 = v27;
    v62[0] = v27;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
    v34 = [off_1E70ECB28 horizontalGroupWithLayoutSize:v32 subitems:v33];

    if (v22 > 0.0)
    {
      [v9 dateViewCellSpacing];
      v35 = [off_1E70ECB48 flexibleSpacing:?];
      [v34 setInterItemSpacing:v35];
    }

    [v7 __dayAndWeekdayLabelWidth];
    v37 = v36;
    v38 = [v60 container];
    [v38 effectiveContentSize];
    v40 = v39;

    v41 = 0.0;
    if (v22 <= 0.0)
    {
      v41 = (v40 - v11 - v13 - fmax(v37, 1.0) * *(a1 + 48)) / (*(a1 + 48) - 1) * 0.5;
    }

    v42 = [v32 widthDimension];
    v43 = [off_1E70ECB18 fractionalHeightDimension:1.0];
    v44 = [off_1E70ECB40 sizeWithWidthDimension:v42 heightDimension:v43];

    v61 = v34;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
    v46 = [off_1E70ECB28 verticalGroupWithLayoutSize:v44 subitems:v45];

    if (v22 > 0.0)
    {
      [v9 dateViewCellSpacing];
      if (v20 > *(a1 + 56))
      {
        v47 = 0.0;
      }

      v48 = [off_1E70ECB48 flexibleSpacing:v47];
      [v46 setInterItemSpacing:v48];
    }

    v49 = v11 - v41;
    v50 = *(a1 + 56);
    v51 = 0.0;
    if (v20 > v50)
    {
      v51 = (v20 - v50) / (v20 * v50) * 0.5;
    }

    if (v49 < 0.5)
    {
      v49 = 0.0;
    }

    if (v13 - v41 >= 0.5)
    {
      v52 = v13 - v41;
    }

    else
    {
      v52 = 0.0;
    }

    if (v51 >= 0.5)
    {
      v53 = v51;
    }

    else
    {
      v53 = 0.0;
    }

    [v46 setContentInsets:{v53, v49, v53, v52}];
    v23 = [off_1E70ECB38 sectionWithGroup:v46];
    [v23 setContentInsets:{1.0, 0.0, 1.0, 0.0}];

    v5 = v60;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_reloadEverythingIncludingLayout:(BOOL)layout
{
  layoutCopy = layout;
  [(UICalendarView *)self _reloadVisibleMonthIfNeeded];
  [(UICalendarView *)self _reloadDateFormatters];
  [(UICalendarView *)self _reloadPossibleDayValues];
  [(UICalendarView *)self _reloadDataSourceController];
  if (layoutCopy)
  {

    [(UICalendarView *)self _reloadCollectionViewLayout];
  }
}

- (void)_reloadVisibleMonthIfNeeded
{
  availableDateRange = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
  visibleMonth = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  v5 = [availableDateRange _ui_containsMonth:visibleMonth];

  if ((v5 & 1) == 0)
  {
    availableDateRange2 = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
    visibleMonth2 = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
    date = [visibleMonth2 date];
    v12 = [availableDateRange2 _ui_dateInRangeForDate:date];

    v9 = [_UIDatePickerCalendarMonth alloc];
    effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
    v11 = [(_UIDatePickerCalendarDateComponent *)v9 initWithDate:v12 calendar:effectiveCalendar];

    [(UICalendarView *)self _setVisibleMonth:v11 animated:0 updateDataSource:1 updateCollectionView:1 notifyDelegate:0];
  }
}

- (void)_reloadDataSourceController
{
  visibleMonth = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __45__UICalendarView__reloadDataSourceController__block_invoke;
  v8 = &unk_1E70F35B8;
  selfCopy = self;
  v10 = visibleMonth;
  v4 = visibleMonth;
  [(UICalendarView *)self _performIgnoringScrollCallbacks:&v5];
  [(UICalendarView *)self _setVisibleMonth:v4, v5, v6, v7, v8, selfCopy];
}

uint64_t __45__UICalendarView__reloadDataSourceController__block_invoke(uint64_t a1)
{
  v2 = [_UICalendarViewDataSourceController alloc];
  v3 = [*(*(a1 + 32) + 520) effectiveCalendar];
  v4 = [(_UICalendarViewDataSourceController *)v2 initWithCalendar:v3 dataSource:*(*(a1 + 32) + 424)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 432);
  *(v5 + 432) = v4;

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 432);

  return [v8 reloadDataSourceAroundMonth:v7];
}

- (void)_reloadPossibleDayValues
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  effectiveLocale = [(_UICalendarDataModel *)self->_dataModel effectiveLocale];
  [v3 setLocale:effectiveLocale];

  v5 = objc_opt_new();
  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  v7 = [effectiveCalendar maximumRangeOfUnit:16];
  v9 = v8;

  if (v7 < v7 + v9)
  {
    do
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      v11 = [v3 stringFromNumber:v10];

      [v5 addObject:v11];
      ++v7;
      --v9;
    }

    while (v9);
  }

  v12 = [v5 copy];
  v14[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(_UIDatePickerLinkedLabel *)self->_daySizingLabel setPossibleTitles:v13];
}

- (void)setSelectionBehavior:(UICalendarSelection *)selectionBehavior
{
  v7 = selectionBehavior;
  v5 = self->_selectionBehavior;
  if (v5)
  {
    [(UICalendarSelection *)v5 setView:0];
  }

  objc_storeStrong(&self->_selectionBehavior, selectionBehavior);
  v6 = self->_selectionBehavior;
  if (v6)
  {
    [(UICalendarSelection *)v6 setView:self];
  }

  [(UICalendarView *)self _reconfigureVisibleItems];
}

- (void)_selectDates:(id)dates animated:(BOOL)animated
{
  animatedCopy = animated;
  v23 = *MEMORY[0x1E69E9840];
  datesCopy = dates;
  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  v16 = datesCopy;
  v7 = _asCalendarDay(datesCopy, effectiveCalendar, [(UICalendarSelection *)self->_selectionBehavior renderOverhangDays]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [(UICollectionViewDiffableDataSource *)self->_dataSource indexPathForItemIdentifier:v13, v16];
        if (v14)
        {
          v15 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v14];
          [v15 setSelectionRoundedEdge:{-[UICalendarView _selectionRoundedEdgeForDay:](self, "_selectionRoundedEdgeForDay:", v13)}];
          [(UICollectionView *)self->_collectionView selectItemAtIndexPath:v14 animated:animatedCopy scrollPosition:0];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)_deselectDates:(id)dates animated:(BOOL)animated
{
  animatedCopy = animated;
  v20 = *MEMORY[0x1E69E9840];
  datesCopy = dates;
  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  v8 = _asCalendarDay(datesCopy, effectiveCalendar, [(UICalendarSelection *)self->_selectionBehavior renderOverhangDays]);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(UICollectionViewDiffableDataSource *)self->_dataSource indexPathForItemIdentifier:*(*(&v15 + 1) + 8 * v13), v15];
        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:v14 animated:animatedCopy];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (_UICalendarViewDecorationSystem)decorationSystem
{
  decorationSystem = self->_decorationSystem;
  if (!decorationSystem)
  {
    v4 = objc_opt_new();
    v5 = self->_decorationSystem;
    self->_decorationSystem = v4;

    decorationSystem = self->_decorationSystem;
  }

  return decorationSystem;
}

- (void)_reconfigureVisibleItems
{
  [(UICalendarView *)self _reloadCollectionViewLayout];
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__UICalendarView__reconfigureVisibleItems__block_invoke;
  v6[3] = &unk_1E71095A8;
  v6[4] = self;
  v5 = _UICalendarMap(indexPathsForVisibleItems, v6);

  [snapshot reconfigureItemsWithIdentifiers:v5];
  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:0];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  _hasCellDecorations = [(UICalendarView *)self _hasCellDecorations];
  objc_storeWeak(&self->_delegate, v4);
  if (objc_opt_respondsToSelector())
  {
    v6 = 32;
  }

  else
  {
    v6 = 0;
  }

  *&self->_flags = *&self->_flags & 0xDF | v6;
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = 64;
  }

  else
  {
    v8 = 0;
  }

  *&self->_flags = *&self->_flags & 0xBF | v8;
  if (_hasCellDecorations != [(UICalendarView *)self _hasCellDecorations])
  {

    [(UICalendarView *)self _reconfigureVisibleItems];
  }
}

- (void)setWantsDateDecorations:(BOOL)wantsDateDecorations
{
  v3 = wantsDateDecorations;
  _hasCellDecorations = [(UICalendarView *)self _hasCellDecorations];
  if (v3)
  {
    v6 = 0x80;
  }

  else
  {
    v6 = 0;
  }

  *&self->_flags = v6 & 0x80 | *&self->_flags & 0x7F;
  if (_hasCellDecorations != [(UICalendarView *)self _hasCellDecorations])
  {
    if (![(UICalendarView *)self _hasCellDecorations])
    {
      [(_UICalendarViewDecorationSystem *)self->_decorationSystem reset];
    }

    [(UICalendarView *)self _reconfigureVisibleItems];
  }
}

- (void)reloadDecorationsForDateComponents:(NSArray *)dates animated:(BOOL)animated
{
  v4 = animated;
  dataSource = self->_dataSource;
  v7 = dates;
  snapshot = [(UICollectionViewDiffableDataSource *)dataSource snapshot];
  itemIdentifiers = [snapshot itemIdentifiers];
  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  v10 = _asCalendarDay(v7, effectiveCalendar, [(UICalendarSelection *)self->_selectionBehavior renderOverhangDays]);

  v11 = [MEMORY[0x1E695DFA8] setWithArray:itemIdentifiers];
  v12 = [MEMORY[0x1E695DFD8] setWithArray:v10];
  [v11 intersectSet:v12];

  allObjects = [v11 allObjects];
  [snapshot reconfigureItemsWithIdentifiers:allObjects];

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:v4];
}

- (BOOL)_canSelectItemAtIndexPath:(id)path forSelection:(BOOL)selection
{
  v6 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  if ((-[UICalendarSelection renderOverhangDays](self->_selectionBehavior, "renderOverhangDays") || ([v6 assignedMonth], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7)) && (-[_UICalendarDataModel availableDateRange](self->_dataModel, "availableDateRange"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "_ui_containsDay:", v6), v8, v9))
  {
    if (self->_selectionBehavior)
    {
      components = [v6 components];
      effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
      [components setCalendar:effectiveCalendar];

      v12 = [(UICalendarSelection *)self->_selectionBehavior canSelectDate:components];
    }

    else
    {
      v12 = !selection;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v7 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  components = [v7 components];
  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  [components setCalendar:effectiveCalendar];

  [(UICalendarSelection *)self->_selectionBehavior didSelectDate:components];
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
{
  selfCopy = self;
  v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  components = [v5 components];
  effectiveCalendar = [(_UICalendarDataModel *)selfCopy->_dataModel effectiveCalendar];
  [components setCalendar:effectiveCalendar];

  LOBYTE(selfCopy) = [(UICalendarSelection *)selfCopy->_selectionBehavior shouldDeselectDate:components];
  return selfCopy;
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v7 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  components = [v7 components];
  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  [components setCalendar:effectiveCalendar];

  [(UICalendarSelection *)self->_selectionBehavior didDeselectDate:components];
}

- (void)setCalendar:(NSCalendar *)calendar
{
  v4 = calendar;
  calendar = [(_UICalendarDataModel *)self->_dataModel calendar];
  v8 = v4;
  v6 = calendar;
  if (v6 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSCalendar *)v8 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(_UICalendarDataModel *)self->_dataModel setCalendar:v8];
    [(_UICalendarHeaderView *)self->_headerView didUpdateCalendar];
    [(_UICalendarWeekdayView *)self->_weekdayView didUpdateCalendar];
    [(_UICalendarMonthYearSelector *)self->_monthYearSelector didUpdateCalendar];
    [(UICalendarSelection *)self->_selectionBehavior didChangeCalendar:v8];
    [(UICalendarView *)self _reloadEverythingIncludingLayout:1];
  }

LABEL_9:
}

- (void)setLocale:(NSLocale *)locale
{
  v4 = locale;
  locale = [(_UICalendarDataModel *)self->_dataModel locale];
  v8 = v4;
  v6 = locale;
  if (v6 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSLocale *)v8 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(_UICalendarDataModel *)self->_dataModel setLocale:v8];
    [(_UICalendarHeaderView *)self->_headerView didUpdateLocale];
    [(_UICalendarWeekdayView *)self->_weekdayView didUpdateLocale];
    [(_UICalendarMonthYearSelector *)self->_monthYearSelector didUpdateLocale];
    [(UICalendarView *)self _reloadEverythingIncludingLayout:1];
  }

LABEL_9:
}

- (void)setTimeZone:(NSTimeZone *)timeZone
{
  v4 = timeZone;
  timeZone = [(_UICalendarDataModel *)self->_dataModel timeZone];
  v8 = v4;
  v6 = timeZone;
  if (v6 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSTimeZone *)v8 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(_UICalendarDataModel *)self->_dataModel setTimeZone:v8];
    [(_UICalendarHeaderView *)self->_headerView didUpdateTimeZone];
    [(_UICalendarMonthYearSelector *)self->_monthYearSelector didUpdateTimeZone];
    [(UICalendarView *)self _reloadEverythingIncludingLayout:1];
  }

LABEL_9:
}

- (void)setFontDesign:(UIFontDescriptorSystemDesign)fontDesign
{
  v4 = fontDesign;
  fontDesign = [(_UICalendarDataModel *)self->_dataModel fontDesign];
  v6 = v4;
  v8 = v6;
  if (fontDesign == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !fontDesign)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)fontDesign isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(_UICalendarDataModel *)self->_dataModel setFontDesign:v8];
    [(_UICalendarHeaderView *)self->_headerView didUpdateFontDesign];
    [(_UICalendarWeekdayView *)self->_weekdayView didUpdateFontDesign];
    [(UICollectionView *)self->_collectionView reloadData];
    [(UICalendarSelection *)self->_selectionBehavior selectAllDatesAnimated:0];
  }

LABEL_9:
}

- (void)setAvailableDateRange:(NSDateInterval *)availableDateRange
{
  v4 = availableDateRange;
  availableDateRange = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
  v6 = v4;
  v8 = v6;
  if (availableDateRange == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !availableDateRange)
  {

    goto LABEL_8;
  }

  v7 = [(NSDateInterval *)availableDateRange isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(_UICalendarDataModel *)self->_dataModel setAvailableDateRange:v8];
    [(UICalendarSelection *)self->_selectionBehavior didChangeAvailableDateRange:v8];
    [(_UICalendarHeaderView *)self->_headerView didUpdateDateRange];
    [(UICalendarView *)self _updateCollectionViewSelection:0];
    [(UICalendarView *)self _reloadEverythingIncludingLayout:0];
  }

LABEL_9:
}

- (NSDateComponents)visibleDateComponents
{
  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  visibleMonth = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  date = [visibleMonth date];
  v6 = [effectiveCalendar components:1048590 fromDate:date];

  return v6;
}

- (void)setVisibleDateComponents:(NSDateComponents *)dateComponents animated:(BOOL)animated
{
  v4 = animated;
  v18 = dateComponents;
  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  if (v18)
  {
    v7 = [(NSDateComponents *)v18 copy];
    calendar = [v7 calendar];

    if (!calendar)
    {
      [v7 setCalendar:effectiveCalendar];
    }

    if (effectiveCalendar)
    {
      calendar2 = [v7 calendar];
      v10 = [calendar2 isEqual:effectiveCalendar];

      if ((v10 & 1) == 0)
      {
        calendar3 = [v7 calendar];
        v12 = [calendar3 dateFromComponents:v7];

        if (!v12)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDateComponents * _Nullable _UICalendarSanitizeWithCalendar(NSDateComponents * _Nonnull __strong, NSCalendar * _Nonnull __strong)"}];
          [currentHandler handleFailureInFunction:v17 file:@"_UICalendarViewHelper.h" lineNumber:92 description:@"Date components yielded an invalid NSDate"];
        }

        v13 = [effectiveCalendar components:1048606 fromDate:v12];

        v7 = v13;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  date = [v7 date];

  v15 = [(_UIDatePickerCalendarDateComponent *)[_UIDatePickerCalendarMonth alloc] initWithDate:date calendar:effectiveCalendar];
  [(UICalendarView *)self _setVisibleMonth:v15 animated:v4];
}

- (void)_freezeContentOffset
{
  p_frozenContentOffset = &self->_frozenContentOffset;
  y = self->_frozenContentOffset.y;
  v5 = INFINITY;
  if (self->_frozenContentOffset.x != INFINITY || y != INFINITY)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICalendarView.m" lineNumber:1157 description:@"Frozen content offset found. You need to clear the current one out by calling _restoreContentOffsetWithPageOffset: first."];
  }

  [(UIScrollView *)self->_collectionView contentOffset:v5];
  p_frozenContentOffset->x = v7;
  p_frozenContentOffset->y = v8;
}

- (void)_restoreContentOffsetWithPageOffset:(int64_t)offset
{
  p_frozenContentOffset = &self->_frozenContentOffset;
  x = self->_frozenContentOffset.x;
  y = self->_frozenContentOffset.y;
  if (x == INFINITY && y == INFINITY)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICalendarView.m" lineNumber:1164 description:@"No content offset found to restore. You need to call _freezeContentOffset first."];
  }

  [(UIView *)self->_collectionView bounds];
  [(UICollectionView *)self->_collectionView setContentOffset:x + CGRectGetWidth(v11) * offset, y];
  *p_frozenContentOffset = InvalidFrozenContentOffset;
}

- (void)_setVisibleMonth:(id)month animated:(BOOL)animated
{
  animatedCopy = animated;
  monthCopy = month;
  visibleMonth = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  v9 = [monthCopy isEqual:visibleMonth];

  if ((v9 & 1) == 0)
  {
    availableDateRange = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
    v11 = [availableDateRange _ui_containsMonth:monthCopy];

    if ((v11 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICalendarView.m" lineNumber:1187 description:@"Unable to set a visible month that is before the minimum or after the maximum date."];
    }

    [(UICalendarView *)self _setVisibleMonth:monthCopy animated:animatedCopy updateDataSource:1 updateCollectionView:1 notifyDelegate:0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__UICalendarView__setVisibleMonth_animated___block_invoke;
    v13[3] = &unk_1E70F3590;
    v13[4] = self;
    [(UICalendarView *)self _performIfNotIgnoringScrollCallbacks:v13];
  }
}

- (void)_setVisibleMonth:(id)month animated:(BOOL)animated updateDataSource:(BOOL)source updateCollectionView:(BOOL)view notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  viewCopy = view;
  animatedCopy = animated;
  monthCopy = month;
  availableDateRange = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
  v14 = [availableDateRange _ui_containsMonth:monthCopy];

  if (v14)
  {
    visibleDateComponents = [(UICalendarView *)self visibleDateComponents];
    [(_UICalendarDataModel *)self->_dataModel setVisibleMonth:monthCopy];
    [(_UICalendarHeaderView *)self->_headerView didUpdateVisibleMonth];
    [(_UICalendarMonthYearSelector *)self->_monthYearSelector didUpdateVisibleMonth];
    if (source || viewCopy)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __97__UICalendarView__setVisibleMonth_animated_updateDataSource_updateCollectionView_notifyDelegate___block_invoke;
      v22 = &unk_1E70F35B8;
      selfCopy = self;
      v24 = monthCopy;
      [(UICalendarView *)self _performIgnoringScrollCallbacks:&v19];
      [(UICalendarView *)self _updateCollectionViewSelection:0, v19, v20, v21, v22, selfCopy];
    }

    if (viewCopy)
    {
      [(UICalendarView *)self _updateCollectionViewScrollPosition:animatedCopy];
    }

    visibleDateComponents2 = [(UICalendarView *)self visibleDateComponents];
    v17 = [visibleDateComponents isEqual:visibleDateComponents2];

    if (delegateCopy && (v17 & 1) == 0 && (*&self->_flags & 0x40) != 0)
    {
      delegate = [(UICalendarView *)self delegate];
      [delegate calendarView:self didChangeVisibleDateComponentsFrom:visibleDateComponents];
    }
  }
}

uint64_t __97__UICalendarView__setVisibleMonth_animated_updateDataSource_updateCollectionView_notifyDelegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _freezeContentOffset];
  v2 = [*(*(a1 + 32) + 432) prepareDataSourceWithScrollPositionIfNecessary:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 _restoreContentOffsetWithPageOffset:v2];
}

- (void)_updateCollectionViewSelection:(BOOL)selection
{
  selectionCopy = selection;
  *&self->_flags &= ~1u;
  [(UIView *)self->_collectionView bounds];
  if (v6 == 0.0 || v5 == 0.0)
  {

    [(UICalendarView *)self _setNeedsCollectionViewSelectionUpdate];
  }

  else
  {
    [(UICalendarSelection *)self->_selectionBehavior selectAllDatesAnimated:selectionCopy];

    [(UICalendarView *)self _updateCollectionViewContentInsets];
  }
}

- (void)_updateCollectionViewScrollPosition:(BOOL)position
{
  positionCopy = position;
  *&self->_flags &= ~2u;
  [(UIView *)self->_collectionView bounds];
  if (v7 == 0.0 || v6 == 0.0)
  {

    [(UICalendarView *)self _setNeedsCollectionViewScrollPositionUpdate];
  }

  else
  {
    visibleMonth = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
    snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    sectionIdentifiers = [snapshot sectionIdentifiers];
    v10 = [sectionIdentifiers indexOfObject:visibleMonth];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICalendarView.m" lineNumber:1289 description:@"Trying to scroll to a month marked as visible that is not loaded."];
    }

    collectionView = self->_collectionView;
    v12 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v10];
    [(UICollectionView *)collectionView scrollToItemAtIndexPath:v12 atScrollPosition:9 animated:positionCopy];
  }
}

- (void)_updateCollectionViewContentInsets
{
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];

  if ([sectionIdentifiers count] <= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICalendarView.m" lineNumber:1298 description:{@"Internal inconsistency. Unable to set content insets, need at least 3 loaded months."}];
  }

  if ([sectionIdentifiers count])
  {
    v5 = 0;
    while (1)
    {
      availableDateRange = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
      v7 = [sectionIdentifiers objectAtIndexedSubscript:v5];
      v8 = [availableDateRange _ui_containsMonth:v7];

      if (v8)
      {
        break;
      }

      if (++v5 >= [sectionIdentifiers count])
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = [sectionIdentifiers count];
  while (--v9 >= 0)
  {
    availableDateRange2 = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
    v11 = [sectionIdentifiers objectAtIndexedSubscript:v9];
    v12 = [availableDateRange2 _ui_containsMonth:v11];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UICalendarView.m" lineNumber:1322 description:@"Invalid state. Unable to find a lower bounds in range."];
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"UICalendarView.m" lineNumber:1323 description:@"Invalid state. Unable to find an upper bounds in range."];
  }

  [(UIView *)self->_collectionView bounds];
  -[UICollectionView setContentInset:](self->_collectionView, "setContentInset:", 0.0, -(v13 * v5), 0.0, -(v13 * ([sectionIdentifiers count] + ~v9)));
}

- (void)_performIgnoringScrollCallbacks:(id)callbacks
{
  callbacksCopy = callbacks;
  flags = self->_flags;
  v8 = callbacksCopy;
  if ((flags & 0x10) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICalendarView.m" lineNumber:1336 description:@"A block is already being executed while ignoring scroll callbacks. This guard is not reentrant safe."];

    callbacksCopy = v8;
    flags = self->_flags;
  }

  *&self->_flags = flags | 0x10;
  (*(callbacksCopy + 2))();
  *&self->_flags &= ~0x10u;
}

- (void)_performIfNotIgnoringScrollCallbacks:(id)callbacks
{
  if ((*&self->_flags & 0x10) == 0)
  {
    (*(callbacks + 2))(callbacks);
  }
}

- (void)_updateVisibleMonthIfNecessary
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = self->_collectionView;
  if (![(UIScrollView *)v3 isScrollAnimating])
  {
    [(UIScrollView *)v3 contentOffset];
    v5 = v4;
    v7 = v6;
    [(UIView *)v3 bounds];
    v8 = v5 + CGRectGetWidth(v34) * 0.5;
    [(UIView *)v3 bounds];
    v9 = (v8 / CGRectGetWidth(v35));
    snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    sectionIdentifiers = [snapshot sectionIdentifiers];

    if ([sectionIdentifiers count] > v9)
    {
      v12 = [sectionIdentifiers objectAtIndexedSubscript:v9];
      visibleMonth = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
      v14 = [visibleMonth isEqual:v12];

      if ((v14 & 1) == 0)
      {
        [(UICalendarView *)self _setVisibleMonth:v12 animated:0 updateDataSource:1 updateCollectionView:0 notifyDelegate:1];
      }

      goto LABEL_11;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v16 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }

      [(UIView *)v3 bounds];
      v32.width = v21;
      v32.height = v22;
      v19 = NSStringFromCGSize(v32);
      v33.x = v5;
      v33.y = v7;
      v20 = NSStringFromCGPoint(v33);
      v23 = 138412802;
      v24 = sectionIdentifiers;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "[UIDatePicker] Calendar scroll offset is outside of available sections (%@). bounds.size: %@, contentOffset: %@", &v23, 0x20u);
    }

    else
    {
      v15 = *(__UILogGetCategoryCachedImpl("Assert", &_updateVisibleMonthIfNecessary___s_category) + 8);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        goto LABEL_12;
      }

      v16 = v15;
      [(UIView *)v3 bounds];
      v30.width = v17;
      v30.height = v18;
      v19 = NSStringFromCGSize(v30);
      v31.x = v5;
      v31.y = v7;
      v20 = NSStringFromCGPoint(v31);
      v23 = 138412802;
      v24 = sectionIdentifiers;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "[UIDatePicker] Calendar scroll offset is outside of available sections (%@). bounds.size: %@, contentOffset: %@", &v23, 0x20u);
    }

LABEL_10:
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_cleanupDataIfNecessary
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__UICalendarView__cleanupDataIfNecessary__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(UICalendarView *)self _performIgnoringScrollCallbacks:v3];
  [(UICalendarView *)self _updateCollectionViewSelection:0];
}

uint64_t __41__UICalendarView__cleanupDataIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _freezeContentOffset];
  v2 = *(a1 + 32);
  v3 = *(v2 + 432);
  v4 = [*(v2 + 520) visibleMonth];
  v5 = [v3 cleanupDataSourceWithScrollPositionIfNecessary:v4];

  v6 = *(a1 + 32);

  return [v6 _restoreContentOffsetWithPageOffset:v5];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__UICalendarView_scrollViewDidScroll___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(UICalendarView *)self _performIfNotIgnoringScrollCallbacks:v3];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__UICalendarView_scrollViewDidEndScrollingAnimation___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = animationCopy;
  selfCopy = self;
  v5 = animationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __53__UICalendarView_scrollViewDidEndScrollingAnimation___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isScrollAnimating];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isTracking];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 32) isDecelerating];
      if ((result & 1) == 0)
      {
        result = [*(a1 + 32) isDragging];
        if ((result & 1) == 0)
        {
          [*(a1 + 40) _updateVisibleMonthIfNecessary];
          v3 = *(a1 + 40);
          v4[0] = MEMORY[0x1E69E9820];
          v4[1] = 3221225472;
          v4[2] = __53__UICalendarView_scrollViewDidEndScrollingAnimation___block_invoke_2;
          v4[3] = &unk_1E70F3590;
          v4[4] = v3;
          return [v3 _performIfNotIgnoringScrollCallbacks:v4];
        }
      }
    }
  }

  return result;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__UICalendarView_scrollViewDidEndDecelerating___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(UICalendarView *)self _performIfNotIgnoringScrollCallbacks:v3];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end