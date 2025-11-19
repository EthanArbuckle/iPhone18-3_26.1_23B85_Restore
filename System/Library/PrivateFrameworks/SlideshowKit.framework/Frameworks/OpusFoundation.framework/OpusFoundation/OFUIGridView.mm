@interface OFUIGridView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isCellVisible:(id)a3;
- (BOOL)isFrameEntirelyVisible:(CGRect)a3;
- (BOOL)isFrameVisible:(CGRect)a3;
- (BOOL)performDragOperation:(id)a3;
- (CGPoint)_cellPositionAtIndex:(int64_t)a3;
- (CGPoint)draggingSource:(id)a3 badgeCenterForItem:(id)a4;
- (CGRect)draggingDestination:(id)a3 originalFrameForItem:(id)a4;
- (CGRect)draggingSource:(id)a3 originalFrameForItem:(id)a4;
- (CGSize)_bestContentSize;
- (CGSize)_cellSizeAtIndex:(int64_t)a3;
- (CGSize)cellSize;
- (CGSize)maxCellSize;
- (CGSize)minCellSize;
- (OFUIGridView)initWithCoder:(id)a3;
- (OFUIGridView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)borderInset;
- (_NSRange)_displayedCellsRange;
- (float)autoscrollDistance:(CGRect)a3;
- (id)cellAtIndex:(unint64_t)a3;
- (id)dequeueReusableCellWithIdentifier:(id)a3;
- (id)displayedCellWithItem:(id)a3;
- (id)indexesForDisplayedCells;
- (id)indexesForVisibleCells;
- (id)visibleCells;
- (int64_t)_indexAtPosition:(CGPoint)a3;
- (unint64_t)draggingDestinationEntered:(id)a3;
- (unint64_t)draggingDestinationUpdated:(id)a3;
- (void)_layoutSubviews;
- (void)_updateCells;
- (void)_updateContentSize;
- (void)autoscroll:(float)a3;
- (void)cleanupDisplayedCells;
- (void)commonInit;
- (void)concludeDragOperation:(id)a3;
- (void)dealloc;
- (void)deleteCellsAtIndexes:(id)a3 animated:(BOOL)a4;
- (void)draggingDestinationEnded:(id)a3 cancelled:(BOOL)a4;
- (void)draggingDestinationExited:(id)a3;
- (void)draggingSource:(id)a3 cleanupItem:(id)a4;
- (void)draggingSource:(id)a3 prepareItem:(id)a4;
- (void)handleLiveResizingPinchGesture:(id)a3;
- (void)handlePan:(id)a3;
- (void)insertCellsAtIndexes:(id)a3 animated:(BOOL)a4;
- (void)moveCellsAtIndexes:(id)a3 toIndexes:(id)a4 animated:(BOOL)a5;
- (void)prepareForUnloading;
- (void)reloadData;
- (void)setAllowContinuousSelection:(BOOL)a3;
- (void)setAllowFastPanning:(BOOL)a3;
- (void)setAllowLiveResizing:(BOOL)a3;
- (void)setBorderInset:(UIEdgeInsets)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCellSize:(CGSize)a3;
- (void)setDraggingSource:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFrame:(CGRect)a3;
- (void)setMaxCellSize:(CGSize)a3;
- (void)setMinCellSize:(CGSize)a3;
- (void)setMinimumCellSpacePadding:(double)a3;
- (void)setNumberOfCachedPages:(unint64_t)a3;
- (void)setOrientation:(unint64_t)a3;
- (void)updateLayout:(BOOL)a3;
@end

@implementation OFUIGridView

- (void)commonInit
{
  v12.receiver = self;
  v12.super_class = OFUIGridView;
  [(OFUIScrollView *)&v12 commonInit];
  [(OFUIGridView *)self setClipsToBounds:1];
  [(OFUIGridView *)self setPagingEnabled:0];
  [(OFUIGridView *)self setBounces:1];
  [(OFUIGridView *)self setScrollsToTop:1];
  [(OFUIGridView *)self setDelaysContentTouches:0];
  [(OFUIGridView *)self setCanCancelContentTouches:1];
  [(OFUIGridView *)self setUserInteractionEnabled:1];
  [(OFUIGridView *)self setScrollEnabled:1];
  -[OFUIGridView setBackgroundColor:](self, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  self->_gridViewController = 0;
  self->_orientation = 0;
  [(OFUIGridView *)self setAlwaysBounceHorizontal:1];
  [(OFUIGridView *)self setAlwaysBounceVertical:0];
  [(OFUIGridView *)self setShowsHorizontalScrollIndicator:1];
  [(OFUIGridView *)self setShowsVerticalScrollIndicator:0];
  [(OFUIGridView *)self setIndicatorStyle:2];
  v3 = vdupq_n_s64(0x4060000000000000uLL);
  self->_cellSize = v3;
  self->_minCellSize = v3;
  self->_maxCellSize = v3;
  __asm { FMOV            V0.2D, #10.0 }

  *&self->_borderInset.top = _Q0;
  *&self->_borderInset.bottom = _Q0;
  self->_minimumCellSpacePadding = 0.0;
  self->_dataSource = 0;
  self->_gridViewDelegate = 0;
  self->_numberOfCells = 0;
  self->_displayedCells = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->_recycledCells = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [objc_msgSend(MEMORY[0x277D75418] "platform")];
  v10 = 4;
  if (!v9)
  {
    v10 = 2;
  }

  self->_numberOfCachedPages = v10;
  self->_visibleIndexBegin = 0;
  self->_visibleIndexEnd = 0;
  self->_dirtyLayout = 0;
  self->_editing = 0;
  self->_draggingSource = 0;
  self->_draggingDestinationIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_draggingDestinationCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_isDraggingIn = 0;
  self->_allowLiveResizing = 0;
  self->_isLiveResizing = 0;
  self->_cellSizeBeforeLiveResizing = *MEMORY[0x277CBF3A8];
  *&self->_allowAutoscroll = 1;
  self->_fastPanningLastTranslation = *MEMORY[0x277CBF348];
  self->_isFastPanning = 0;
  v11 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel_handleLiveResizingPinchGesture_];
  self->_liveResizingPinchGestureRecognizer = v11;
  [(UIPinchGestureRecognizer *)v11 setDelegate:self];
  [(OFUIGridView *)self addGestureRecognizer:self->_liveResizingPinchGestureRecognizer];
  [-[OFUIGridView panGestureRecognizer](self "panGestureRecognizer")];
  [-[OFUIGridView panGestureRecognizer](self "panGestureRecognizer")];
  self->_allowSelectAll = 0;
  self->_allowContinuousSelection = 0;
  self->_percentageScrolledToRestore = 0.0;
  self->_canUpdateCells = 1;
  self->_lastCellUpdatedForMerge = 0;
}

- (OFUIGridView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = OFUIGridView;
  v3 = [(OFUIScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(OFUIGridView *)v3 commonInit];
  }

  return v4;
}

- (OFUIGridView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = OFUIGridView;
  v3 = [(OFUIScrollView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(OFUIGridView *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  if (self->_gridViewController)
  {
    self->_gridViewController = 0;
  }

  if (self->_dataSource)
  {
    self->_dataSource = 0;
  }

  if (self->_gridViewDelegate)
  {
    self->_gridViewDelegate = 0;
  }

  displayedCells = self->_displayedCells;
  if (displayedCells)
  {

    self->_displayedCells = 0;
  }

  recycledCells = self->_recycledCells;
  if (recycledCells)
  {

    self->_recycledCells = 0;
  }

  if (self->_draggingSource)
  {
    self->_draggingSource = 0;
  }

  liveResizingPinchGestureRecognizer = self->_liveResizingPinchGestureRecognizer;
  if (liveResizingPinchGestureRecognizer)
  {

    self->_liveResizingPinchGestureRecognizer = 0;
  }

  v6.receiver = self;
  v6.super_class = OFUIGridView;
  [(OFUIScrollView *)&v6 dealloc];
}

- (void)prepareForUnloading
{
  [(OFUIGridView *)self cleanupDisplayedCells];
  [(NSMutableArray *)self->_displayedCells removeAllObjects];
  recycledCells = self->_recycledCells;

  [(NSMutableArray *)recycledCells removeAllObjects];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(OFUIGridView *)self frame];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (CGRectEqualToRect(v10, v11))
  {
    v8.receiver = self;
    v8.super_class = OFUIGridView;
    [(OFUIGridView *)&v8 setFrame:x, y, width, height];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = OFUIGridView;
    [(OFUIGridView *)&v9 setFrame:x, y, width, height];
    [(OFUIGridView *)self updateLayout:0];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(OFUIGridView *)self bounds];
  if (v9 != width || v8 != height)
  {
    v25.receiver = self;
    v25.super_class = OFUIGridView;
    [(OFUIGridView *)&v25 setBounds:x, y, width, height];
    [(OFUIGridView *)self updateLayout:0];
    return;
  }

  v24.receiver = self;
  v24.super_class = OFUIGridView;
  [(OFUIGridView *)&v24 setBounds:x, y, width, height];
  orientation = self->_orientation;
  [(OFUIGridView *)self bounds];
  if (orientation)
  {
    if (v13 < 0.0)
    {
      return;
    }

    [(OFUIGridView *)self bounds];
    v15 = v14;
    [(OFUIGridView *)self bounds];
    v17 = v15 + v16;
    [(OFUIGridView *)self contentSize];
    if (v17 > v18)
    {
      return;
    }

LABEL_12:
    [(OFUIGridView *)self _updateCells];
    [(OFUIGridView *)self _layoutSubviews];
    return;
  }

  if (v12 >= 0.0)
  {
    [(OFUIGridView *)self bounds];
    v20 = v19;
    [(OFUIGridView *)self bounds];
    v22 = v20 + v21;
    [(OFUIGridView *)self contentSize];
    if (v22 <= v23)
    {
      goto LABEL_12;
    }
  }
}

- (void)_layoutSubviews
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_dirtyLayout)
  {
    [(NSMutableArray *)self->_displayedCells sortUsingComparator:&__block_literal_global_7];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_displayedCells;
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v25;
      do
      {
        v7 = 0;
        v8 = v5;
        do
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v24 + 1) + 8 * v7);
          v9 = [v5 index];
          v10 = v9;
          draggingDestinationIndex = self->_draggingDestinationIndex;
          if (draggingDestinationIndex != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v9 < draggingDestinationIndex || self->_draggingDestinationCount == 0x7FFFFFFFFFFFFFFFLL)
            {
              draggingDestinationCount = 0;
            }

            else
            {
              draggingDestinationCount = self->_draggingDestinationCount;
            }

            v10 = draggingDestinationCount + v9;
          }

          [(OFUIGridView *)self _cellPositionAtIndex:v10];
          v15 = v14;
          v17 = v16;
          [(OFUIGridView *)self _cellSizeAtIndex:v10];
          v19 = v18;
          v21 = v20;
          if ([v5 superview])
          {
            [v5 setBounds:{0.0, 0.0, v19, v21}];
            [v5 setCenter:{v15 + v19 * 0.5, v17 + v21 * 0.5}];
          }

          else
          {
            v22 = [MEMORY[0x277D75D18] areAnimationsEnabled];
            [MEMORY[0x277D75D18] setAnimationsEnabled:0];
            [v5 setBounds:{0.0, 0.0, v19, v21}];
            [v5 setCenter:{v15 + v19 * 0.5, v17 + v21 * 0.5}];
            if (self->_dataSource && (objc_opt_respondsToSelector() & 1) != 0)
            {
              -[OFUIGridViewDataSource gridView:willDisplayCell:atIndex:](self->_dataSource, "gridView:willDisplayCell:atIndex:", self, v5, [v5 index]);
            }

            if (v8)
            {
              [(OFUIGridView *)self insertSubview:v5 aboveSubview:v8];
            }

            else
            {
              [(OFUIGridView *)self addSubview:v5];
            }

            [MEMORY[0x277D75D18] setAnimationsEnabled:v22];
          }

          ++v7;
          v8 = v5;
        }

        while (v4 != v7);
        v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v4);
    }

    self->_dirtyLayout = 0;
  }
}

uint64_t __31__OFUIGridView__layoutSubviews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 index];
  if (v5 > [a3 index])
  {
    return 1;
  }

  v7 = [a2 index];
  if (v7 >= [a3 index])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)updateLayout:(BOOL)a3
{
  if (a3)
  {
    self->_dirtyLayout = 1;
  }

  orientation = self->_orientation;
  [(OFUIGridView *)self bounds];
  if (orientation)
  {
    v7 = vcvtmd_u64_f64((v5 - self->_borderInset.left - self->_borderInset.right) / self->_cellSize.width);
    [(OFUIGridView *)self bounds];
    v9 = v8 - self->_borderInset.left - self->_borderInset.right;
    if (v7 >= 2)
    {
      v10 = v7;
      v11 = (v9 - v7 * self->_cellSize.width) / (v7 + 1);
      minimumCellSpacePadding = self->_minimumCellSpacePadding;
      if (minimumCellSpacePadding > 0.0 && v11 < minimumCellSpacePadding)
      {
        --v7;
        [(OFUIGridView *)self bounds];
        v14 = v13 - self->_borderInset.left - self->_borderInset.right;
        v15 = v7;
        width = self->_cellSize.width;
LABEL_12:
        v11 = (v14 - v15 * width) / v10;
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    height = self->_cellSize.width;
LABEL_15:
    v11 = (v9 - height) * 0.5;
    goto LABEL_16;
  }

  v7 = vcvtmd_u64_f64((v6 - self->_borderInset.top - self->_borderInset.bottom) / self->_cellSize.height);
  [(OFUIGridView *)self bounds];
  v9 = v17 - self->_borderInset.top - self->_borderInset.bottom;
  if (v7 < 2)
  {
    height = self->_cellSize.height;
    goto LABEL_15;
  }

  v10 = v7;
  v11 = (v9 - v7 * self->_cellSize.height) / (v7 + 1);
  v18 = self->_minimumCellSpacePadding;
  if (v18 > 0.0 && v11 < v18)
  {
    --v7;
    [(OFUIGridView *)self bounds];
    v14 = v19 - self->_borderInset.top - self->_borderInset.bottom;
    v15 = v7;
    width = self->_cellSize.height;
    goto LABEL_12;
  }

LABEL_16:
  if (v7 != self->_numberOfCellsPerRow)
  {
    self->_numberOfCellsPerRow = v7;
    self->_dirtyLayout = 1;
  }

  if (v11 != self->_cellSpacePadding)
  {
    self->_cellSpacePadding = v11;
    self->_dirtyLayout = 1;
  }

  dataSource = self->_dataSource;
  if (dataSource)
  {
    if (objc_opt_respondsToSelector())
    {
      dataSource = [(OFUIGridViewDataSource *)self->_dataSource numberOfCellsInGridView:self];
    }

    else
    {
      dataSource = 0;
    }
  }

  if (dataSource != self->_numberOfCells)
  {
    self->_numberOfCells = dataSource;
    self->_dirtyLayout = 1;
  }

  [(OFUIGridView *)self _updateContentSize];
  [(OFUIGridView *)self _updateCells];

  [(OFUIGridView *)self _layoutSubviews];
}

- (CGPoint)_cellPositionAtIndex:(int64_t)a3
{
  orientation = self->_orientation;
  p_borderInset = &self->_borderInset;
  left = self->_borderInset.left;
  if (self->_numberOfCellsPerRow <= 1)
  {
    numberOfCellsPerRow = 1;
  }

  else
  {
    numberOfCellsPerRow = self->_numberOfCellsPerRow;
  }

  v8 = ldiv(a3, numberOfCellsPerRow);
  cellSpacePadding = self->_cellSpacePadding;
  v10 = self->_cellSize.width + cellSpacePadding;
  if (orientation)
  {
    v11 = left + cellSpacePadding + v8.rem * v10;
    v12 = p_borderInset->top + v8.quot * (cellSpacePadding + self->_cellSize.height);
  }

  else
  {
    v11 = left + v8.quot * v10;
    v12 = p_borderInset->top + cellSpacePadding + v8.rem * (cellSpacePadding + self->_cellSize.height);
  }

  v13 = round(v11);
  v14 = round(v12);
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGSize)_cellSizeAtIndex:(int64_t)a3
{
  width = self->_cellSize.width;
  height = self->_cellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (int64_t)_indexAtPosition:(CGPoint)a3
{
  p_borderInset = &self->_borderInset;
  cellSpacePadding = self->_cellSpacePadding;
  if (self->_orientation)
  {
    v5 = a3.y - p_borderInset->top;
    p_cellSize = &self->_cellSize;
    v7 = floor(v5 / (self->_cellSize.height + cellSpacePadding));
    v8 = a3.x - self->_borderInset.left;
  }

  else
  {
    top = p_borderInset->top;
    p_cellSize = &self->_cellSize.height;
    v7 = floor((a3.x - self->_borderInset.left) / (self->_cellSize.width + cellSpacePadding));
    v8 = a3.y - top;
  }

  return (floor(v8 / (cellSpacePadding + p_cellSize->width)) + v7 * self->_numberOfCellsPerRow);
}

- (CGSize)_bestContentSize
{
  numberOfCells = self->_numberOfCells;
  if (!numberOfCells)
  {
    [(OFUIGridView *)self bounds];
    v9 = v12;
LABEL_10:
    [(OFUIGridView *)self bounds];
    v11 = v15;
    goto LABEL_11;
  }

  orientation = self->_orientation;
  [(OFUIGridView *)self _cellPositionAtIndex:numberOfCells + self->_isDraggingIn - 1];
  if (!orientation)
  {
    v13 = v5 + self->_cellSize.width + self->_borderInset.right;
    [(OFUIGridView *)self bounds];
    if (v14 <= v13)
    {
      v9 = v13;
    }

    else
    {
      v9 = v14;
    }

    goto LABEL_10;
  }

  v7 = v6 + self->_cellSize.height + self->_borderInset.bottom;
  [(OFUIGridView *)self bounds];
  v9 = v8;
  [(OFUIGridView *)self bounds];
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

LABEL_11:
  v16 = v9;
  result.height = v11;
  result.width = v16;
  return result;
}

- (void)_updateContentSize
{
  [(OFUIGridView *)self _bestContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(OFUIGridView *)self orientation];
  [(OFUIGridView *)self contentOffset];
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (self->_percentageScrolledToRestore != 0.0)
  {
    v11 = [(OFUIGridView *)self orientation];
    [(OFUIGridView *)self percentageScrolledToRestore];
    v13 = v12;
    [(OFUIGridView *)self bounds];
    if (v11)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    if (v11)
    {
      v17 = v6;
    }

    else
    {
      v17 = v4;
    }

    v10 = v17 * v13 + v16 * -0.5;
    self->_percentageScrolledToRestore = 0.0;
  }

  v18 = [(OFUIGridView *)self orientation];
  [(OFUIGridView *)self bounds];
  if (v18)
  {
    if (v10 > v6 - v20)
    {
      [(OFUIGridView *)self bounds];
      v10 = v6 - v21;
    }

    v22 = 0.0;
    if (v10 >= 0.0)
    {
      v23 = v10;
    }

    else
    {
      v23 = 0.0;
    }
  }

  else
  {
    if (v10 > v4 - v19)
    {
      [(OFUIGridView *)self bounds];
      v10 = v4 - v24;
    }

    v23 = 0.0;
    if (v10 >= 0.0)
    {
      v22 = v10;
    }

    else
    {
      v22 = 0.0;
    }
  }

  [(OFUIGridView *)self setContentOffset:v22, v23];
  [(OFUIGridView *)self contentSize];
  if (v4 != v26 || v6 != v25)
  {
    [(OFUIGridView *)self setContentSize:v4, v6];
    self->_dirtyLayout = 1;
  }
}

- (void)cleanupDisplayedCells
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_displayedCells;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v11 = *MEMORY[0x277CBF2C0];
    v9 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        [(NSMutableArray *)self->_recycledCells addObject:v7];
        [v7 cancelAllOperations];
        if ([v7 superview])
        {
          [v7 removeFromSuperview];
        }

        if (self->_dataSource && (objc_opt_respondsToSelector() & 1) != 0)
        {
          -[OFUIGridViewDataSource gridView:didRecycleCell:atIndex:](self->_dataSource, "gridView:didRecycleCell:atIndex:", self, v7, [v7 index]);
        }

        [v7 setItem:0];
        [v7 setHidden:0];
        [v7 setAlpha:1.0];
        v12[0] = v11;
        v12[1] = v10;
        v12[2] = v9;
        [v7 setTransform:v12];
        self->_dirtyLayout = 1;
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)self->_displayedCells removeAllObjects];
}

- (_NSRange)_displayedCellsRange
{
  orientation = self->_orientation;
  [(OFUIGridView *)self contentOffset];
  v5 = v4;
  if (orientation)
  {
    [(OFUIGridView *)self contentOffset];
    v7 = v6;
    v8 = vcvts_n_f32_u64(self->_numberOfCachedPages, 1uLL);
    [(OFUIGridView *)self bounds];
    v10 = [(OFUIGridView *)self _indexAtPosition:v5, v7 - v8 * v9];
    [(OFUIGridView *)self contentOffset];
    v12 = v11;
    [(OFUIGridView *)self contentOffset];
    v14 = v13;
    v15 = ((self->_numberOfCachedPages * 0.5) + 1.0);
    [(OFUIGridView *)self bounds];
    v17 = v14 + v15 * v16;
  }

  else
  {
    v18 = vcvts_n_f32_u64(self->_numberOfCachedPages, 1uLL);
    [(OFUIGridView *)self bounds];
    v20 = v5 - v18 * v19;
    [(OFUIGridView *)self contentOffset];
    v10 = [(OFUIGridView *)self _indexAtPosition:v20];
    [(OFUIGridView *)self contentOffset];
    v22 = v21;
    v23 = ((self->_numberOfCachedPages * 0.5) + 1.0);
    [(OFUIGridView *)self bounds];
    v12 = v22 + v23 * v24;
    [(OFUIGridView *)self contentOffset];
  }

  v25 = [(OFUIGridView *)self _indexAtPosition:v12, v17]- v10;
  v26 = v10;
  result.length = v25;
  result.location = v26;
  return result;
}

- (void)_updateCells
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_canUpdateCells)
  {
    if (self->_numberOfCells)
    {
      v3 = [(OFUIGridView *)self _displayedCellsRange];
      if (v3 + v4 >= self->_numberOfCells - 1)
      {
        v5 = self->_numberOfCells - 1;
      }

      else
      {
        v5 = v3 + v4;
      }

      if (v3 == self->_visibleIndexBegin && v5 == self->_visibleIndexEnd)
      {
        if (!self->_dirtyLayout)
        {
          return;
        }
      }

      else
      {
        self->_visibleIndexBegin = v3;
        self->_visibleIndexEnd = v5;
        self->_dirtyLayout = 1;
      }

      v22 = v5;
      v23 = v3;
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = self->_displayedCells;
      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v27;
        v10 = MEMORY[0x277CBF2C0];
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v27 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            if ([v12 index] < self->_visibleIndexBegin || objc_msgSend(v12, "index") > self->_visibleIndexEnd)
            {
              [v6 addObject:v12];
              [v12 cancelAllOperations];
              if ([v12 superview])
              {
                [v12 removeFromSuperview];
              }

              if (self->_dataSource && (objc_opt_respondsToSelector() & 1) != 0)
              {
                -[OFUIGridViewDataSource gridView:didRecycleCell:atIndex:](self->_dataSource, "gridView:didRecycleCell:atIndex:", self, v12, [v12 index]);
              }

              [v12 setItem:0];
              [v12 setHidden:0];
              [v12 setAlpha:1.0];
              v13 = v10[1];
              v25[0] = *v10;
              v25[1] = v13;
              v25[2] = v10[2];
              [v12 setTransform:v25];
              self->_dirtyLayout = 1;
            }
          }

          v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v8);
      }

      [(NSMutableArray *)self->_recycledCells addObjectsFromArray:v6];
      [(NSMutableArray *)self->_displayedCells removeObjectsInArray:v6];

      v14 = v22 - v23;
      if (v22 != v23 && [(NSMutableArray *)self->_recycledCells count]> v14)
      {
        [(NSMutableArray *)self->_recycledCells removeObjectsInRange:v14 - 1, [(NSMutableArray *)self->_recycledCells count]- v14];
      }

      v15 = [(OFUIGridView *)self indexesForDisplayedCells];
      visibleIndexBegin = self->_visibleIndexBegin;
      visibleIndexEnd = self->_visibleIndexEnd;
      if (visibleIndexEnd >= self->_numberOfCells - 1)
      {
        visibleIndexEnd = self->_numberOfCells - 1;
      }

      if (visibleIndexBegin <= visibleIndexEnd)
      {
        v18 = v15;
        do
        {
          if (([v18 containsIndex:visibleIndexBegin] & 1) == 0)
          {
            if (self->_dataSource)
            {
              if (objc_opt_respondsToSelector())
              {
                v19 = [(OFUIGridViewDataSource *)self->_dataSource gridView:self cellAtIndex:visibleIndexBegin];
                if (v19)
                {
                  v20 = v19;
                  [v19 setIndex:visibleIndexBegin];
                  [(NSMutableArray *)self->_displayedCells addObject:v20];
                }
              }
            }

            self->_dirtyLayout = 1;
          }

          ++visibleIndexBegin;
          v21 = self->_visibleIndexEnd;
          if (v21 >= self->_numberOfCells - 1)
          {
            v21 = self->_numberOfCells - 1;
          }
        }

        while (visibleIndexBegin <= v21);
      }
    }

    else
    {

      [(OFUIGridView *)self cleanupDisplayedCells];
    }
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(OFUIGridView *)self window];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [-[OFUIGridView window](self "window")] && objc_msgSend(objc_msgSend(-[OFUIGridView window](self, "window"), "draggingSession"), "source") == self->_draggingSource)
    {
      v5 = [(OFUIGridView *)self window];

      [v5 cancelDragging];
    }
  }
}

- (void)setOrientation:(unint64_t)a3
{
  if (self->_orientation != a3)
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    self->_orientation = a3;
    v10 = a3 != 0;
    v11 = a3 == 0;
    [(OFUIGridView *)self setAlwaysBounceHorizontal:v11, v6, v12, v13, v14, v7];
    [(OFUIGridView *)self setAlwaysBounceVertical:v10];
    [(OFUIGridView *)self setShowsHorizontalScrollIndicator:v11];
    [(OFUIGridView *)self setShowsVerticalScrollIndicator:v10];

    [(OFUIGridView *)self updateLayout:1];
  }
}

- (void)setCellSize:(CGSize)a3
{
  p_cellSize = &self->_cellSize;
  if (self->_cellSize.width != a3.width || self->_cellSize.height != a3.height)
  {
    p_cellSize->width = a3.width;
    self->_cellSize.height = a3.height;
    p_minCellSize = &self->_minCellSize;
    if (self->_allowLiveResizing)
    {
      if (a3.width < p_minCellSize->width || a3.height < self->_minCellSize.height)
      {
        *p_cellSize = *p_minCellSize;
        a3.width = p_cellSize->width;
      }

      if (a3.width > self->_maxCellSize.width || self->_cellSize.height > self->_maxCellSize.height)
      {
        *p_cellSize = self->_maxCellSize;
      }
    }

    else
    {
      *p_minCellSize = *p_cellSize;
      self->_maxCellSize = *p_cellSize;
    }

    [(OFUIGridView *)self updateLayout:1];
  }
}

- (void)setMinCellSize:(CGSize)a3
{
  p_minCellSize = &self->_minCellSize;
  if (self->_minCellSize.width != a3.width || self->_minCellSize.height != a3.height)
  {
    p_minCellSize->width = a3.width;
    self->_minCellSize.height = a3.height;
    if (self->_allowLiveResizing)
    {
      if (self->_cellSize.width < a3.width || self->_cellSize.height < a3.height)
      {
        self->_cellSize = *p_minCellSize;
      }

      [(OFUIGridView *)self updateLayout:1];
    }
  }
}

- (void)setMaxCellSize:(CGSize)a3
{
  p_maxCellSize = &self->_maxCellSize;
  if (self->_maxCellSize.width != a3.width || self->_maxCellSize.height != a3.height)
  {
    p_maxCellSize->width = a3.width;
    self->_maxCellSize.height = a3.height;
    if (self->_allowLiveResizing)
    {
      if (self->_cellSize.width > a3.width || self->_cellSize.height > a3.height)
      {
        self->_cellSize = *p_maxCellSize;
      }

      [(OFUIGridView *)self updateLayout:1];
    }
  }
}

- (void)setBorderInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_borderInset.top, v3), vceqq_f64(*&self->_borderInset.bottom, v4)))) & 1) == 0)
  {
    self->_borderInset = a3;
    [(OFUIGridView *)self updateLayout:1];
  }
}

- (void)setMinimumCellSpacePadding:(double)a3
{
  if (self->_minimumCellSpacePadding != a3)
  {
    self->_minimumCellSpacePadding = a3;
    [(OFUIGridView *)self updateLayout:1];
  }
}

- (void)setNumberOfCachedPages:(unint64_t)a3
{
  if (self->_numberOfCachedPages != a3)
  {
    v3 = 2;
    if (a3 > 2)
    {
      v3 = a3;
    }

    self->_numberOfCachedPages = v3;
    [(OFUIGridView *)self updateLayout:1];
  }
}

- (void)setDraggingSource:(id)a3
{
  if (self->_draggingSource != a3)
  {
    v5 = a3 == 0;
    [(OFUIGridView *)self setDelaysContentTouches:a3 != 0];
    [(OFUIGridView *)self setCanCancelContentTouches:v5];
    if (self->_allowContinuousSelection)
    {
      if (OFLoggerLevel >= 4)
      {
        [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Kit/OFUIGridView.m" line:976 andFormat:@"Setting a draggingSource when allowContinuousSelection was set to YES. Setting allowContinuousSelection to NO"];
      }

      self->_allowContinuousSelection = 0;
    }

    self->_draggingSource = a3;
  }
}

- (void)setAllowLiveResizing:(BOOL)a3
{
  if (self->_allowLiveResizing != a3)
  {
    if (a3)
    {
      p_cellSize = &self->_cellSize;
      width = self->_cellSize.width;
      if (width < self->_minCellSize.width || self->_cellSize.height < self->_minCellSize.height)
      {
        *p_cellSize = self->_minCellSize;
        width = p_cellSize->width;
      }

      if (width > self->_maxCellSize.width || self->_cellSize.height > self->_maxCellSize.height)
      {
        *p_cellSize = self->_maxCellSize;
      }
    }

    self->_allowLiveResizing = a3;
  }
}

- (void)setAllowContinuousSelection:(BOOL)a3
{
  if (a3 && [(OFUIGridView *)self draggingSource])
  {
    if (OFLoggerLevel >= 4)
    {
      [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Kit/OFUIGridView.m" line:1009 andFormat:@"Setting allowContinuousSelection to YES with a non-nil draggingSource. Setting draggingSource to nil"];
    }

    [(OFUIGridView *)self setDraggingSource:0];
  }

  self->_allowContinuousSelection = a3;
}

- (void)setAllowFastPanning:(BOOL)a3
{
  v3 = a3;
  self->_allowFastPanning = a3;
  [-[OFUIGridView panGestureRecognizer](self "panGestureRecognizer")];
  v5 = [(OFUIGridView *)self panGestureRecognizer];
  if (v3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  [v5 setMaximumNumberOfTouches:v6];
}

- (void)reloadData
{
  [(OFUIGridView *)self cleanupDisplayedCells];

  [(OFUIGridView *)self updateLayout:1];
}

- (id)dequeueReusableCellWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  recycledCells = self->_recycledCells;
  result = [(NSMutableArray *)recycledCells countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(recycledCells);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if ([objc_msgSend(v10 "reuseIdentifier")])
        {
          if (!v10)
          {
            return 0;
          }

          v11 = v10;
          [(NSMutableArray *)self->_recycledCells removeObject:v10];
          return v10;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [(NSMutableArray *)recycledCells countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)cellAtIndex:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  displayedCells = self->_displayedCells;
  v5 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(displayedCells);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 index] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)isFrameVisible:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  orientation = self->_orientation;
  [(OFUIGridView *)self contentOffset];
  if (orientation)
  {
    if (y >= v10)
    {
      [(OFUIGridView *)self contentOffset];
      v12 = v11;
      [(OFUIGridView *)self frame];
      if (y <= v12 + v13)
      {
        return 1;
      }
    }

    v14 = y + height;
    [(OFUIGridView *)self contentOffset];
    if (y + height >= v15)
    {
      [(OFUIGridView *)self contentOffset];
      v17 = v16;
      [(OFUIGridView *)self frame];
      v19 = v17 + v18;
      return v14 <= v19;
    }

    return 0;
  }

  if (x >= v9)
  {
    [(OFUIGridView *)self contentOffset];
    v21 = v20;
    [(OFUIGridView *)self frame];
    if (x <= v21 + v22)
    {
      return 1;
    }
  }

  v14 = x + width;
  [(OFUIGridView *)self contentOffset];
  if (v14 < v23)
  {
    return 0;
  }

  [(OFUIGridView *)self contentOffset];
  v25 = v24;
  [(OFUIGridView *)self frame];
  v19 = v25 + v26;
  return v14 <= v19;
}

- (BOOL)isFrameEntirelyVisible:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(OFUIGridView *)self convertRect:[(OFUIGridView *)self window] toView:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v16 = CGRectContainsRect(v19, v20);
  if (v16)
  {

    LOBYTE(v16) = [(OFUIGridView *)self isFrameVisible:x, y, width, height];
  }

  return v16;
}

- (BOOL)isCellVisible:(id)a3
{
  [a3 frame];

  return [(OFUIGridView *)self isFrameVisible:?];
}

- (id)displayedCellWithItem:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  displayedCells = self->_displayedCells;
  v5 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(displayedCells);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "item")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)indexesForDisplayedCells
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB58] indexSet];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  displayedCells = self->_displayedCells;
  v5 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(displayedCells);
        }

        [v3 addIndex:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "index")}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)visibleCells
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  displayedCells = self->_displayedCells;
  v5 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(displayedCells);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(OFUIGridView *)self isCellVisible:v9])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)indexesForVisibleCells
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB58] indexSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  displayedCells = self->_displayedCells;
  v5 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(displayedCells);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(OFUIGridView *)self isCellVisible:v9])
        {
          [v3 addIndex:{objc_msgSend(v9, "index")}];
        }
      }

      v6 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)insertCellsAtIndexes:(id)a3 animated:(BOOL)a4
{
  v16 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v6 = [a3 firstIndex];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    visibleIndexEnd = self->_visibleIndexEnd;
    if (v6 <= [a3 count] + visibleIndexEnd)
    {
      if (self->_dataSource)
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [(OFUIGridViewDataSource *)self->_dataSource gridView:self cellAtIndex:v6];
          v9 = v8;
          if (v8)
          {
            [v8 setIndex:v6];
            [v25[5] addObject:v9];
          }
        }
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      displayedCells = self->_displayedCells;
      v11 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v11)
      {
        v12 = *v21;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(displayedCells);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            if ([v14 index] >= v6)
            {
              [v14 setIndex:{objc_msgSend(v14, "index") + 1}];
            }
          }

          v11 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v20 objects:v30 count:16];
        }

        while (v11);
      }
    }

    ++self->_numberOfCells;
    self->_dirtyLayout = 1;
    v6 = [a3 indexGreaterThanIndex:v6];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__OFUIGridView_insertCellsAtIndexes_animated___block_invoke;
  v19[3] = &unk_279C8A3A0;
  v19[4] = self;
  v19[5] = &v24;
  [self performBlockWithoutAnimations:v19];
  v15 = 0.200000003;
  if (!v16)
  {
    v15 = 0.0;
  }

  v17[4] = &v24;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__OFUIGridView_insertCellsAtIndexes_animated___block_invoke_2;
  v18[3] = &unk_279C8A3A0;
  v18[4] = self;
  v18[5] = &v24;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__OFUIGridView_insertCellsAtIndexes_animated___block_invoke_3;
  v17[3] = &unk_279C8A3C8;
  [MEMORY[0x277D75D18] animateWithDuration:196615 delay:v18 options:v17 animations:v15 completion:?];
  _Block_object_dispose(&v24, 8);
}

uint64_t __46__OFUIGridView_insertCellsAtIndexes_animated___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(*(*(a1 + 40) + 8) + 40) reverseObjectEnumerator];
  result = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        [*(*(a1 + 32) + 2336) addObject:v7];
        [*(a1 + 32) _cellPositionAtIndex:{objc_msgSend(v7, "index")}];
        v9 = v8;
        v11 = v10;
        [*(a1 + 32) _cellSizeAtIndex:{objc_msgSend(v7, "index")}];
        v13 = v12;
        v15 = v14;
        [v7 setCenter:{v9 + v12 * 0.5, v11 + v14 * 0.5}];
        CGAffineTransformMakeScale(&v19, 0.00999999978, 0.00999999978);
        v18 = v19;
        [v7 setTransform:&v18];
        [v7 setAlpha:0.0];
        if (![v7 superview])
        {
          [v7 setBounds:{0.0, 0.0, v13, v15}];
          v16 = *(a1 + 32);
          if (v16[286])
          {
            v17 = objc_opt_respondsToSelector();
            v16 = *(a1 + 32);
            if (v17)
            {
              [v16[286] gridView:v16 willDisplayCell:v7 atIndex:{objc_msgSend(v7, "index")}];
              v16 = *(a1 + 32);
            }
          }

          [v16 addSubview:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __46__OFUIGridView_insertCellsAtIndexes_animated___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v11 = *MEMORY[0x277CBF2C0];
    v9 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        [v7 setAlpha:{1.0, v9, v10, v11}];
        v12[0] = v11;
        v12[1] = v10;
        v12[2] = v9;
        [v7 setTransform:v12];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) updateLayout:0];
}

void __46__OFUIGridView_insertCellsAtIndexes_animated___block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {

    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

- (void)deleteCellsAtIndexes:(id)a3 animated:(BOOL)a4
{
  v18 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v6 = [a3 lastIndex];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6 <= self->_visibleIndexEnd)
    {
      if (v6 >= self->_visibleIndexBegin)
      {
        v7 = [(OFUIGridView *)self cellAtIndex:v6];
        if (v7)
        {
          [v26[5] addObject:v7];
          [(NSMutableArray *)self->_displayedCells removeObject:v7];
        }
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      displayedCells = self->_displayedCells;
      v9 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v9)
      {
        v10 = *v22;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(displayedCells);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            if ([v12 index] >= v6)
            {
              [v12 setIndex:{objc_msgSend(v12, "index") - 1}];
            }
          }

          v9 = [(NSMutableArray *)displayedCells countByEnumeratingWithState:&v21 objects:v31 count:16];
        }

        while (v9);
      }
    }

    --self->_numberOfCells;
    self->_dirtyLayout = 1;
    v6 = [a3 indexLessThanIndex:v6];
  }

  if ([(OFUIGridView *)self isEditing])
  {
    [(OFUIGridView *)self window];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [-[OFUIGridView window](self "window")] && objc_msgSend(objc_msgSend(-[OFUIGridView window](self, "window"), "draggingSession"), "source") == self->_draggingSource && objc_msgSend(objc_msgSend(objc_msgSend(-[OFUIGridView window](self, "window"), "draggingSession"), "pasteboard"), "containsPasteboardTypes:", -[OFUIScrollView draggingPasteboardTypes](self, "draggingPasteboardTypes")) && objc_msgSend(objc_msgSend(-[OFUIGridView window](self, "window"), "draggingSession"), "sourceOperation") == 4)
    {
      [objc_msgSend(-[OFUIGridView window](self "window")];
      -[OFUIGridView convertPoint:fromView:](self, "convertPoint:fromView:", [objc_msgSend(-[OFUIGridView window](self "window")], v13, v14);
      if (self->_numberOfCells)
      {
        v15 = [(OFUIGridView *)self _indexAtPosition:?];
        if ((v15 & ~(v15 >> 63)) >= self->_numberOfCells)
        {
          numberOfCells = self->_numberOfCells;
        }

        else
        {
          numberOfCells = v15 & ~(v15 >> 63);
        }

        if (numberOfCells == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_31;
        }
      }

      else
      {
        numberOfCells = 0;
      }

      [(OFUIGridView *)self setDraggingDestinationIndex:numberOfCells];
    }
  }

LABEL_31:
  v17 = 0.200000003;
  if (!v18)
  {
    v17 = 0.0;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__OFUIGridView_deleteCellsAtIndexes_animated___block_invoke;
  v20[3] = &unk_279C8A3A0;
  v20[4] = self;
  v20[5] = &v25;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__OFUIGridView_deleteCellsAtIndexes_animated___block_invoke_2;
  v19[3] = &unk_279C8A3F0;
  v19[4] = self;
  v19[5] = &v25;
  [MEMORY[0x277D75D18] animateWithDuration:196615 delay:v20 options:v19 animations:v17 completion:0.0];
  _Block_object_dispose(&v25, 8);
}

uint64_t __46__OFUIGridView_deleteCellsAtIndexes_animated___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [v7 setAlpha:0.0];
        CGAffineTransformMakeScale(&v10, 0.00999999978, 0.00999999978);
        v9 = v10;
        [v7 setTransform:&v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) updateLayout:0];
}

void __46__OFUIGridView_deleteCellsAtIndexes_animated___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(*(*(a1 + 40) + 8) + 40);
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v11 = *MEMORY[0x277CBF2C0];
    v9 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        [v6 cancelAllOperations];
        if ([v6 superview])
        {
          [v6 removeFromSuperview];
        }

        if (*(*(a1 + 32) + 2288) && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [*(*(a1 + 32) + 2288) gridView:*(a1 + 32) didRecycleCell:v6 atIndex:{objc_msgSend(v6, "index")}];
        }

        [v6 setItem:0];
        [v6 setHidden:0];
        [v6 setAlpha:1.0];
        v12[0] = v11;
        v12[1] = v10;
        v12[2] = v9;
        [v6 setTransform:v12];
        [*(*(a1 + 32) + 2344) addObject:v6];
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  [*(*(*(a1 + 40) + 8) + 40) removeAllObjects];
  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (v7)
  {

    *(*(*(a1 + 40) + 8) + 40) = 0;
  }
}

- (void)moveCellsAtIndexes:(id)a3 toIndexes:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v49 = *MEMORY[0x277D85DE8];
  v9 = [a3 count];
  if (v9 == [a4 count])
  {
    v32 = v5;
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([a3 count])
    {
      v11 = 0;
      while (1)
      {
        v12 = [objc_msgSend(a3 objectAtIndex:{v11), "integerValue"}];
        v13 = [objc_msgSend(a4 objectAtIndex:{v11), "integerValue"}];
        v14 = v13;
        visibleIndexBegin = self->_visibleIndexBegin;
        if (visibleIndexBegin > v12 || v12 > self->_visibleIndexEnd)
        {
          if (visibleIndexBegin > v13 || v13 > self->_visibleIndexEnd)
          {
            goto LABEL_15;
          }

          v16 = [(OFUIGridViewDataSource *)[(OFUIGridView *)self dataSource] gridView:self cellAtIndex:v13];
          [v16 setIndex:v14];
          v17 = v35;
          goto LABEL_9;
        }

        v19 = [(OFUIGridView *)self cellAtIndex:v12];
        v16 = [(OFUIGridViewDataSource *)[(OFUIGridView *)self dataSource] gridView:self cellAtIndex:v14];
        [v16 setIndex:v14];
        if (self->_visibleIndexBegin <= v14 && v14 <= self->_visibleIndexEnd)
        {
          break;
        }

        if (v19)
        {
          v17 = v10;
          v18 = v19;
          goto LABEL_14;
        }

LABEL_15:
        if (++v11 >= [a3 count])
        {
          goto LABEL_19;
        }
      }

      if (!v19)
      {
        goto LABEL_15;
      }

      [v34 addObject:v19];
      v17 = v33;
LABEL_9:
      v18 = v16;
LABEL_14:
      [v17 addObject:v18];
      goto LABEL_15;
    }

LABEL_19:
    if ([v34 count])
    {
      v20 = 0;
      do
      {
        [objc_msgSend(v34 objectAtIndex:{v20), "setIndex:", objc_msgSend(objc_msgSend(v33, "objectAtIndex:", v20), "index")}];
        ++v20;
      }

      while (v20 < [v34 count]);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v21 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v44;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(v10);
          }

          [(NSMutableArray *)self->_displayedCells removeObject:*(*(&v43 + 1) + 8 * i)];
        }

        v22 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v22);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = [v35 reverseObjectEnumerator];
    v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v40;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v39 + 1) + 8 * j);
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __54__OFUIGridView_moveCellsAtIndexes_toIndexes_animated___block_invoke;
          v38[3] = &unk_279C89FB8;
          v38[4] = self;
          v38[5] = v30;
          [self performBlockWithoutAnimations:v38];
        }

        v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v27);
    }

    v31 = 0.0;
    if (v32)
    {
      v31 = 0.25;
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __54__OFUIGridView_moveCellsAtIndexes_toIndexes_animated___block_invoke_2;
    v37[3] = &unk_279C8A418;
    v37[4] = v34;
    v37[5] = self;
    v37[6] = v10;
    v37[7] = v35;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __54__OFUIGridView_moveCellsAtIndexes_toIndexes_animated___block_invoke_3;
    v36[3] = &unk_279C8A440;
    v36[4] = v34;
    v36[5] = self;
    v36[6] = v10;
    v36[7] = v35;
    [MEMORY[0x277D75D18] animateWithDuration:196615 delay:v37 options:v36 animations:v31 completion:0.0];
  }
}

uint64_t __54__OFUIGridView_moveCellsAtIndexes_toIndexes_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 2336) addObject:*(a1 + 40)];
  [*(a1 + 32) _cellPositionAtIndex:{objc_msgSend(*(a1 + 40), "index")}];
  v3 = v2;
  v5 = v4;
  [*(a1 + 32) _cellSizeAtIndex:{objc_msgSend(*(a1 + 40), "index")}];
  v7 = v6;
  v9 = v8;
  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = v3;
  v18.origin.y = v5;
  v18.size.width = v7;
  v18.size.height = v9;
  [*(a1 + 40) setCenter:{MidX, CGRectGetMidY(v18)}];
  CGAffineTransformMakeScale(&v16, 0.00999999978, 0.00999999978);
  v11 = *(a1 + 40);
  v15 = v16;
  [v11 setTransform:&v15];
  [*(a1 + 40) setAlpha:0.0];
  result = [*(a1 + 40) superview];
  if (!result)
  {
    [*(a1 + 40) setBounds:{0.0, 0.0, v7, v9}];
    v13 = *(a1 + 32);
    if (v13[286])
    {
      v14 = objc_opt_respondsToSelector();
      v13 = *(a1 + 32);
      if (v14)
      {
        [v13[286] gridView:v13 willDisplayCell:*(a1 + 40) atIndex:{objc_msgSend(*(a1 + 40), "index")}];
        v13 = *(a1 + 32);
      }
    }

    return [v13 addSubview:*(a1 + 40)];
  }

  return result;
}

uint64_t __54__OFUIGridView_moveCellsAtIndexes_toIndexes_animated___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    do
    {
      v3 = [*(a1 + 32) objectAtIndex:v2];
      [*(a1 + 40) _cellPositionAtIndex:{objc_msgSend(v3, "index")}];
      v5 = v4;
      v7 = v6;
      [*(a1 + 40) _cellSizeAtIndex:{objc_msgSend(v3, "index")}];
      v9 = v8;
      v11 = v10;
      v46.origin.x = v5;
      v46.origin.y = v7;
      v46.size.width = v9;
      v46.size.height = v11;
      MidX = CGRectGetMidX(v46);
      v47.origin.x = v5;
      v47.origin.y = v7;
      v47.size.width = v9;
      v47.size.height = v11;
      [v3 setCenter:{MidX, CGRectGetMidY(v47)}];
      if (v3)
      {
        [v3 transform];
      }

      else
      {
        memset(&v41, 0, sizeof(v41));
      }

      [v3 bounds];
      v14 = v13 / v9;
      [v3 bounds];
      CGAffineTransformScale(&v42, &v41, v14, v15 / v11);
      v41 = v42;
      [v3 setTransform:&v41];
      ++v2;
    }

    while (v2 < [*(a1 + 32) count]);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = *(a1 + 48);
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v37 + 1) + 8 * i);
        [v21 setAlpha:0.0];
        CGAffineTransformMakeScale(&v36, 0.00999999978, 0.00999999978);
        v41 = v36;
        [v21 setTransform:&v41];
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v18);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = *(a1 + 56);
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    v30 = *(MEMORY[0x277CBF2C0] + 16);
    v31 = *MEMORY[0x277CBF2C0];
    v29 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v32 + 1) + 8 * j);
        [v27 setAlpha:{1.0, v29, v30, v31}];
        *&v41.a = v31;
        *&v41.c = v30;
        *&v41.tx = v29;
        [v27 setTransform:&v41];
      }

      v24 = [v22 countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v24);
  }

  return [*(a1 + 40) updateLayout:0];
}

void __54__OFUIGridView_moveCellsAtIndexes_toIndexes_animated___block_invoke_3(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v39 count:16];
  v4 = MEMORY[0x277CBF2C0];
  if (v3)
  {
    v5 = v3;
    v6 = *v35;
    v23 = *(MEMORY[0x277CBF2C0] + 16);
    v25 = *MEMORY[0x277CBF2C0];
    v21 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        [a1[5] _cellPositionAtIndex:{objc_msgSend(v8, "index")}];
        v10 = v9;
        v12 = v11;
        [a1[5] _cellSizeAtIndex:{objc_msgSend(v8, "index")}];
        [v8 setFrame:{v10, v12, v13, v14}];
        v31 = v25;
        v32 = v23;
        v33 = v21;
        [v8 setTransform:&v31];
      }

      v5 = [v2 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v5);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a1[6];
  v15 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    v24 = v4[1];
    v26 = *v4;
    v22 = v4[2];
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v27 + 1) + 8 * j);
        [v19 cancelAllOperations];
        if ([v19 superview])
        {
          [v19 removeFromSuperview];
        }

        if (*(a1[5] + 286) && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [*(a1[5] + 286) gridView:a1[5] didRecycleCell:v19 atIndex:{objc_msgSend(v19, "index")}];
        }

        [v19 setItem:0];
        [v19 setHidden:0];
        [v19 setAlpha:1.0];
        v31 = v26;
        v32 = v24;
        v33 = v22;
        [v19 setTransform:&v31];
        [*(a1[5] + 293) addObject:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v16);
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_liveResizingPinchGestureRecognizer != a3)
  {
    return 1;
  }

  if (!self->_allowLiveResizing)
  {
    return 0;
  }

  [(OFUIGridView *)self window];
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) == 0 || ([-[OFUIGridView window](self "window")] & 1) == 0;
}

- (void)handleLiveResizingPinchGesture:(id)a3
{
  if ([a3 state] != 5)
  {
    if ([a3 state] == 1)
    {
      [(OFUIGridView *)self setIsLiveResizing:1];
      self->_cellSizeBeforeLiveResizing = self->_cellSize;
      if (self->_gridViewDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        gridViewDelegate = self->_gridViewDelegate;

        [(OFUIGridViewDelegate *)gridViewDelegate gridViewLiveResizingDidBegin:self];
      }
    }

    else if ([a3 state] == 2)
    {
      width = self->_cellSizeBeforeLiveResizing.width;
      [a3 scale];
      v8 = round(width * v7);
      if (v8 < self->_minCellSize.width)
      {
        v8 = self->_minCellSize.width;
      }

      if (v8 >= self->_maxCellSize.width)
      {
        v8 = self->_maxCellSize.width;
      }

      [(OFUIGridView *)self setCellSize:v8, self->_cellSize.height * v8 / self->_cellSize.width];
      if (self->_gridViewDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v9 = self->_gridViewDelegate;

        [(OFUIGridViewDelegate *)v9 gridViewLiveResizingDidChange:self];
      }
    }

    else if ([a3 state] == 4 || objc_msgSend(a3, "state") == 3)
    {
      [(OFUIGridView *)self setIsLiveResizing:0];
      self->_cellSizeBeforeLiveResizing = *MEMORY[0x277CBF3A8];
      if (self->_gridViewDelegate)
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = self->_gridViewDelegate;

          [(OFUIGridViewDelegate *)v10 gridViewLiveResizingDidEnd:self];
        }
      }
    }
  }
}

- (void)handlePan:(id)a3
{
  v5 = MEMORY[0x277CBF348];
  if ((!self->_allowFastPanning || [a3 numberOfTouches] <= 1) && ((v6 = self->_fastPanningLastTranslation.y, self->_fastPanningLastTranslation.x == v5->x) ? (v7 = v6 == v5->y) : (v7 = 0), v7))
  {
    [(OFUIGridView *)self setIsFastPanning:0, self->_fastPanningLastTranslation.x, v6];
  }

  else
  {
    if ([a3 state] == 1)
    {
      v8 = self;
      v9 = 1;
LABEL_24:
      [(OFUIGridView *)v8 setIsFastPanning:v9];
      self->_fastPanningLastTranslation = *v5;
      goto LABEL_25;
    }

    if ([a3 state] != 2)
    {
      v8 = self;
      v9 = 0;
      goto LABEL_24;
    }

    [a3 translationInView:self];
    v11 = v10;
    v13 = v12;
    v14 = [a3 numberOfTouches];
    v15 = 4.0;
    if (v14 != 2)
    {
      v16 = [a3 numberOfTouches];
      v15 = 1.0;
      if (v16 > 2)
      {
        v15 = 8.0;
      }
    }

    p_fastPanningLastTranslation = &self->_fastPanningLastTranslation;
    y = self->_fastPanningLastTranslation.y;
    v19 = self->_fastPanningLastTranslation.x == v5->x && y == v5->y;
    v20 = v11 + (v11 - p_fastPanningLastTranslation->x) * v15;
    v21 = v13 + (v13 - y) * v15;
    v22 = v11 * v15;
    v23 = v13 * v15;
    if (v19)
    {
      v20 = v22;
    }

    if (!v19)
    {
      v23 = v21;
    }

    v24 = v23;
    v25 = v20;
    p_fastPanningLastTranslation->x = v25;
    self->_fastPanningLastTranslation.y = v24;
    [a3 setTranslation:self inView:?];
  }

LABEL_25:
  v26.receiver = self;
  v26.super_class = OFUIGridView;
  [(OFUIGridView *)&v26 handlePan:a3];
}

- (void)draggingSource:(id)a3 prepareItem:(id)a4
{
  v6 = -[OFUIGridView displayedCellWithItem:](self, "displayedCellWithItem:", [a4 object]);
  if (v6)
  {
    v7 = v6;
    if ([a3 sourceOperation] == 2)
    {

      [v7 setHighlighted:1];
    }

    else if ([a3 sourceOperation] == 4)
    {
      [v7 setHidden:1];
      if (self->_draggingSource)
      {
        if ((objc_opt_respondsToSelector() & 1) != 0 && -[OFUIWindowDraggingSource gridView:removeItemsAtIndexes:session:](self->_draggingSource, "gridView:removeItemsAtIndexes:session:", self, [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v7, "index")}], a3))
        {
          v8 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v7, "index")}];

          [(OFUIGridView *)self deleteCellsAtIndexes:v8 animated:1];
        }
      }
    }
  }
}

- (void)draggingSource:(id)a3 cleanupItem:(id)a4
{
  v6 = [a4 object];
  v7 = [(OFUIGridView *)self displayedCellWithItem:v6];
  if (!v7)
  {
    v9 = v6;
    goto LABEL_5;
  }

  v8 = v7;
  if ([a3 sourceOperation] == 2)
  {
    v9 = v8;
LABEL_5:

    [v9 setHighlighted:0];
    return;
  }

  [a3 sourceOperation];
}

- (CGRect)draggingSource:(id)a3 originalFrameForItem:(id)a4
{
  v6 = -[OFUIGridView displayedCellWithItem:](self, "displayedCellWithItem:", [a4 object]);
  if (v6 && (v7 = v6, [(OFUIGridView *)self isCellVisible:v6]))
  {
    v8 = [a3 window];
    [v7 frame];
    [v8 convertRect:objc_msgSend(v7 fromView:{"superview"), v9, v10, v11, v12}];
  }

  else
  {
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGPoint)draggingSource:(id)a3 badgeCenterForItem:(id)a4
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  result.y = v5;
  result.x = v4;
  return result;
}

- (unint64_t)draggingDestinationEntered:(id)a3
{
  if (!-[OFUIGridView isEditing](self, "isEditing") || ![objc_msgSend(a3 "pasteboard")])
  {
    return 1;
  }

  v5 = [a3 source];
  draggingSource = self->_draggingSource;
  v7 = [a3 sourceOperation];
  if (v5 == draggingSource)
  {
    if (v7 == 2)
    {
      return 1;
    }

    goto LABEL_7;
  }

  if (v7 != 2)
  {
LABEL_7:
    if ([a3 sourceOperation] == 4)
    {
      v8 = 4;
      goto LABEL_9;
    }

    return 1;
  }

  v8 = 2;
LABEL_9:
  self->_isDraggingIn = 1;
  [(OFUIGridView *)self updateLayout:1];
  return v8;
}

- (unint64_t)draggingDestinationUpdated:(id)a3
{
  if (!-[OFUIGridView isEditing](self, "isEditing") || ![objc_msgSend(a3 "pasteboard")])
  {
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_33;
    v74[3] = &unk_279C89FB8;
    v74[4] = self;
    v74[5] = a3;
    [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v74 options:&__block_literal_global_87 animations:0.200000003 completion:0.0];
    v21 = MEMORY[0x277D75D18];
    v69 = MEMORY[0x277D85DD0];
    v70 = 3221225472;
    v71 = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_35;
    v72 = &unk_279C89F90;
    v73 = self;
    v22 = &__block_literal_global_89;
    v23 = &v69;
    goto LABEL_10;
  }

  v5 = [a3 source];
  draggingSource = self->_draggingSource;
  v7 = [a3 sourceOperation];
  if (v5 != draggingSource)
  {
    if (v7 == 2 || [a3 sourceOperation] == 4)
    {
      [a3 position];
      -[OFUIGridView convertPoint:fromView:](self, "convertPoint:fromView:", [a3 window], v8, v9);
      v11 = v10;
      v13 = v12;
      v14 = *MEMORY[0x277CBF3A0];
      v15 = *(MEMORY[0x277CBF3A0] + 8);
      v16 = *(MEMORY[0x277CBF3A0] + 16);
      v17 = *(MEMORY[0x277CBF3A0] + 24);
      if ([(OFUIGridView *)self numberOfCells])
      {
        v18 = [(OFUIGridView *)self _indexAtPosition:v11, v13];
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = 0;
          numberOfCells = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          if ((v18 & ~(v18 >> 63)) >= self->_numberOfCells)
          {
            numberOfCells = self->_numberOfCells;
          }

          else
          {
            numberOfCells = v18 & ~(v18 >> 63);
          }

          v36 = [(OFUIGridView *)self draggingDestinationCount];
          v37 = numberOfCells;
          if (v36 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v38 = [(OFUIGridView *)self draggingDestinationIndex];
            v39 = [(OFUIGridView *)self draggingDestinationCount]+ v38;
            v37 = numberOfCells;
            if (numberOfCells >= v39)
            {
              v37 = numberOfCells - [(OFUIGridView *)self draggingDestinationCount];
            }
          }

          v19 = [(OFUIGridView *)self cellAtIndex:v37];
          v40 = [(OFUIGridView *)self orientation];
          [(OFUIGridViewCell *)v19 frame];
          v14 = v41;
          [(OFUIGridViewCell *)v19 frame];
          if (v40 == 1)
          {
            v14 = v14 + v43 * 0.25;
            [(OFUIGridViewCell *)v19 frame];
            v15 = v44;
            [(OFUIGridViewCell *)v19 frame];
            v16 = v45 * 3.0 * 0.25;
            [(OFUIGridViewCell *)v19 frame];
            v17 = v46;
          }

          else
          {
            v47 = v42;
            [(OFUIGridViewCell *)v19 frame];
            v15 = v47 + v48 * 0.25;
            [(OFUIGridViewCell *)v19 frame];
            v16 = v49;
            [(OFUIGridViewCell *)v19 frame];
            v17 = v50 * 3.0 * 0.25;
          }
        }
      }

      else
      {
        numberOfCells = 0;
        v19 = 0;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && -[OFUIWindowDraggingSource gridView:canMergeWithItemsFromPasteboard:atIndex:session:](self->_draggingSource, "gridView:canMergeWithItemsFromPasteboard:atIndex:session:", self, [a3 pasteboard], numberOfCells, a3))
      {
        v95.origin.x = v14;
        v95.origin.y = v15;
        v95.size.width = v16;
        v95.size.height = v17;
        v91.x = v11;
        v91.y = v13;
        if (CGRectContainsPoint(v95, v91))
        {
          [(OFUIGridViewCell *)self->_lastCellUpdatedForMerge setSelected:0];
          if ([(OFUIGridView *)self draggingDestinationIndex]!= 0x7FFFFFFFFFFFFFFFLL && [(OFUIGridView *)self draggingDestinationIndex]> numberOfCells)
          {
            v81[0] = MEMORY[0x277D85DD0];
            v81[1] = 3221225472;
            v81[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_19;
            v81[3] = &unk_279C89F90;
            v81[4] = self;
            [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v81 options:&__block_literal_global_73 animations:0.200000003 completion:0.0];
          }

          if (!v19)
          {
            return 32;
          }

          v51 = MEMORY[0x277D75D18];
          v80[0] = MEMORY[0x277D85DD0];
          v80[1] = 3221225472;
          v80[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_21;
          v80[3] = &unk_279C89FB8;
          v80[4] = v19;
          v80[5] = a3;
          v52 = &__block_literal_global_75;
          v53 = v80;
          goto LABEL_37;
        }

        if ([a3 destinationOperation] == 32)
        {
          [(OFUIGridViewCell *)self->_lastCellUpdatedForMerge frame];
          v92.x = v11;
          v92.y = v13;
          if (CGRectContainsPoint(v96, v92))
          {
            return 32;
          }
        }
      }

      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_23;
      v79[3] = &unk_279C89FB8;
      v79[4] = self;
      v79[5] = a3;
      [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v79 options:&__block_literal_global_77 animations:0.200000003 completion:0.0];
      if (numberOfCells != 0x7FFFFFFFFFFFFFFFLL && ((objc_opt_respondsToSelector() & 1) == 0 || -[OFUIWindowDraggingSource gridView:canInsertItemsFromPasteboard:atIndex:session:](self->_draggingSource, "gridView:canInsertItemsFromPasteboard:atIndex:session:", self, [a3 pasteboard], numberOfCells, a3)))
      {
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_25;
        v78[3] = &unk_279C89EF0;
        v78[4] = self;
        v78[5] = numberOfCells;
        [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v78 options:&__block_literal_global_79 animations:0.200000003 completion:0.0];
        return [a3 sourceOperation];
      }

      v21 = MEMORY[0x277D75D18];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_27;
      v77[3] = &unk_279C89F90;
      v77[4] = self;
      v22 = &__block_literal_global_81;
      v23 = v77;
    }

    else
    {
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_29;
      v76[3] = &unk_279C89FB8;
      v76[4] = self;
      v76[5] = a3;
      [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v76 options:&__block_literal_global_83 animations:0.200000003 completion:0.0];
      v21 = MEMORY[0x277D75D18];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_31;
      v75[3] = &unk_279C89F90;
      v75[4] = self;
      v22 = &__block_literal_global_85;
      v23 = v75;
    }

LABEL_10:
    [v21 animateWithDuration:196611 delay:v23 options:v22 animations:0.200000003 completion:{0.0, v69, v70, v71, v72, v73}];
    return 1;
  }

  if (v7 == 2)
  {
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke;
    v90[3] = &unk_279C89FB8;
    v90[4] = self;
    v90[5] = a3;
    [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v90 options:&__block_literal_global_51 animations:0.200000003 completion:0.0];
    v21 = MEMORY[0x277D75D18];
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_3;
    v89[3] = &unk_279C89F90;
    v89[4] = self;
    v22 = &__block_literal_global_53;
    v23 = v89;
    goto LABEL_10;
  }

  if ([a3 sourceOperation] != 4)
  {
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_15;
    v83[3] = &unk_279C89FB8;
    v83[4] = self;
    v83[5] = a3;
    [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v83 options:&__block_literal_global_69 animations:0.200000003 completion:0.0];
    v21 = MEMORY[0x277D75D18];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_17;
    v82[3] = &unk_279C89F90;
    v82[4] = self;
    v22 = &__block_literal_global_71;
    v23 = v82;
    goto LABEL_10;
  }

  [a3 position];
  -[OFUIGridView convertPoint:fromView:](self, "convertPoint:fromView:", [a3 window], v25, v26);
  v28 = v27;
  v30 = v29;
  v31 = *MEMORY[0x277CBF3A0];
  v32 = *(MEMORY[0x277CBF3A0] + 8);
  v33 = *(MEMORY[0x277CBF3A0] + 16);
  v34 = *(MEMORY[0x277CBF3A0] + 24);
  if ([(OFUIGridView *)self numberOfCells])
  {
    v35 = [(OFUIGridView *)self _indexAtPosition:v28, v30];
    if (v35 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
      numberOfCells = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if ((v35 & ~(v35 >> 63)) >= self->_numberOfCells)
      {
        numberOfCells = self->_numberOfCells;
      }

      else
      {
        numberOfCells = v35 & ~(v35 >> 63);
      }

      v54 = [(OFUIGridView *)self draggingDestinationCount];
      v55 = numberOfCells;
      if (v54 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v56 = [(OFUIGridView *)self draggingDestinationIndex];
        v57 = [(OFUIGridView *)self draggingDestinationCount]+ v56;
        v55 = numberOfCells;
        if (numberOfCells >= v57)
        {
          v55 = numberOfCells - [(OFUIGridView *)self draggingDestinationCount];
        }
      }

      v19 = [(OFUIGridView *)self cellAtIndex:v55];
      v58 = [(OFUIGridView *)self orientation];
      [(OFUIGridViewCell *)v19 frame];
      v31 = v59;
      [(OFUIGridViewCell *)v19 frame];
      if (v58 == 1)
      {
        v31 = v31 + v61 * 0.25;
        [(OFUIGridViewCell *)v19 frame];
        v32 = v62;
        [(OFUIGridViewCell *)v19 frame];
        v33 = v63 * 3.0 * 0.25;
        [(OFUIGridViewCell *)v19 frame];
        v34 = v64;
      }

      else
      {
        v65 = v60;
        [(OFUIGridViewCell *)v19 frame];
        v32 = v65 + v66 * 0.25;
        [(OFUIGridViewCell *)v19 frame];
        v33 = v67;
        [(OFUIGridViewCell *)v19 frame];
        v34 = v68 * 3.0 * 0.25;
      }
    }
  }

  else
  {
    numberOfCells = 0;
    v19 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && -[OFUIWindowDraggingSource gridView:canMergeWithItemsFromPasteboard:atIndex:session:](self->_draggingSource, "gridView:canMergeWithItemsFromPasteboard:atIndex:session:", self, [a3 pasteboard], numberOfCells, a3))
  {
    v97.origin.x = v31;
    v97.origin.y = v32;
    v97.size.width = v33;
    v97.size.height = v34;
    v93.x = v28;
    v93.y = v30;
    if (CGRectContainsPoint(v97, v93))
    {
      [(OFUIGridViewCell *)self->_lastCellUpdatedForMerge setSelected:0];
      if ([(OFUIGridView *)self draggingDestinationIndex]!= 0x7FFFFFFFFFFFFFFFLL && [(OFUIGridView *)self draggingDestinationIndex]> numberOfCells)
      {
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_5;
        v88[3] = &unk_279C89F90;
        v88[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v88 options:&__block_literal_global_57 animations:0.200000003 completion:0.0];
      }

      if (!v19)
      {
        return 32;
      }

      v51 = MEMORY[0x277D75D18];
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_7;
      v87[3] = &unk_279C89FB8;
      v87[4] = v19;
      v87[5] = a3;
      v52 = &__block_literal_global_59;
      v53 = v87;
LABEL_37:
      [v51 animateWithDuration:196611 delay:v53 options:v52 animations:0.200000003 completion:0.0];
      [(OFUIGridView *)self setDraggingDestinationIndex:numberOfCells];
      self->_lastCellUpdatedForMerge = v19;
      return 32;
    }

    if ([a3 destinationOperation] == 32)
    {
      [(OFUIGridViewCell *)self->_lastCellUpdatedForMerge frame];
      v94.x = v28;
      v94.y = v30;
      if (CGRectContainsPoint(v98, v94))
      {
        return 32;
      }
    }
  }

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_9;
  v86[3] = &unk_279C89FB8;
  v86[4] = self;
  v86[5] = a3;
  [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v86 options:&__block_literal_global_61 animations:0.200000003 completion:0.0];
  if (numberOfCells == 0x7FFFFFFFFFFFFFFFLL || (objc_opt_respondsToSelector() & 1) != 0 && !-[OFUIWindowDraggingSource gridView:canInsertItemsFromPasteboard:atIndex:session:](self->_draggingSource, "gridView:canInsertItemsFromPasteboard:atIndex:session:", self, [a3 pasteboard], numberOfCells, a3))
  {
    v21 = MEMORY[0x277D75D18];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_13;
    v84[3] = &unk_279C89F90;
    v84[4] = self;
    v22 = &__block_literal_global_67;
    v23 = v84;
    goto LABEL_10;
  }

  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __43__OFUIGridView_draggingDestinationUpdated___block_invoke_11;
  v85[3] = &unk_279C89EF0;
  v85[4] = self;
  v85[5] = numberOfCells;
  [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v85 options:&__block_literal_global_65 animations:0.200000003 completion:0.0];
  return 4;
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 2472) setSelected:0];
  v2 = [*(a1 + 40) presentationView];

  return [v2 setAlpha:1.0];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setDraggingDestinationCount:0x7FFFFFFFFFFFFFFFLL];
  [*(a1 + 32) setDraggingDestinationIndex:0x7FFFFFFFFFFFFFFFLL];
  v2 = *(a1 + 32);

  return [v2 forceLayout];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setDraggingDestinationCount:0x7FFFFFFFFFFFFFFFLL];
  [*(a1 + 32) setDraggingDestinationIndex:0x7FFFFFFFFFFFFFFFLL];
  v2 = *(a1 + 32);

  return [v2 forceLayout];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setSelected:1];
  v2 = [*(a1 + 40) presentationView];

  return [v2 setAlpha:0.800000012];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_9(uint64_t a1)
{
  [*(*(a1 + 32) + 2472) setSelected:0];
  v2 = [*(a1 + 40) presentationView];

  return [v2 setAlpha:1.0];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) setDraggingDestinationCount:1];
  [*(a1 + 32) setDraggingDestinationIndex:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 forceLayout];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_13(uint64_t a1)
{
  [*(a1 + 32) setDraggingDestinationCount:0x7FFFFFFFFFFFFFFFLL];
  [*(a1 + 32) setDraggingDestinationIndex:0x7FFFFFFFFFFFFFFFLL];
  v2 = *(a1 + 32);

  return [v2 forceLayout];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_15(uint64_t a1)
{
  [*(*(a1 + 32) + 2472) setSelected:0];
  v2 = [*(a1 + 40) presentationView];

  return [v2 setAlpha:1.0];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_17(uint64_t a1)
{
  [*(a1 + 32) setDraggingDestinationCount:0x7FFFFFFFFFFFFFFFLL];
  [*(a1 + 32) setDraggingDestinationIndex:0x7FFFFFFFFFFFFFFFLL];
  v2 = *(a1 + 32);

  return [v2 forceLayout];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_19(uint64_t a1)
{
  [*(a1 + 32) setDraggingDestinationCount:0x7FFFFFFFFFFFFFFFLL];
  [*(a1 + 32) setDraggingDestinationIndex:0x7FFFFFFFFFFFFFFFLL];
  v2 = *(a1 + 32);

  return [v2 forceLayout];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_21(uint64_t a1)
{
  [*(a1 + 32) setSelected:1];
  v2 = [*(a1 + 40) presentationView];

  return [v2 setAlpha:0.800000012];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_23(uint64_t a1)
{
  [*(*(a1 + 32) + 2472) setSelected:0];
  v2 = [*(a1 + 40) presentationView];

  return [v2 setAlpha:1.0];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_25(uint64_t a1)
{
  [*(a1 + 32) setDraggingDestinationCount:1];
  [*(a1 + 32) setDraggingDestinationIndex:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 forceLayout];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_27(uint64_t a1)
{
  [*(a1 + 32) setDraggingDestinationCount:0x7FFFFFFFFFFFFFFFLL];
  [*(a1 + 32) setDraggingDestinationIndex:0x7FFFFFFFFFFFFFFFLL];
  v2 = *(a1 + 32);

  return [v2 forceLayout];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_29(uint64_t a1)
{
  [*(*(a1 + 32) + 2472) setSelected:0];
  v2 = [*(a1 + 40) presentationView];

  return [v2 setAlpha:1.0];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_31(uint64_t a1)
{
  [*(a1 + 32) setDraggingDestinationCount:0x7FFFFFFFFFFFFFFFLL];
  [*(a1 + 32) setDraggingDestinationIndex:0x7FFFFFFFFFFFFFFFLL];
  v2 = *(a1 + 32);

  return [v2 forceLayout];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_33(uint64_t a1)
{
  [*(*(a1 + 32) + 2472) setSelected:0];
  v2 = [*(a1 + 40) presentationView];

  return [v2 setAlpha:1.0];
}

uint64_t __43__OFUIGridView_draggingDestinationUpdated___block_invoke_35(uint64_t a1)
{
  [*(a1 + 32) setDraggingDestinationCount:0x7FFFFFFFFFFFFFFFLL];
  [*(a1 + 32) setDraggingDestinationIndex:0x7FFFFFFFFFFFFFFFLL];
  v2 = *(a1 + 32);

  return [v2 forceLayout];
}

- (void)draggingDestinationExited:(id)a3
{
  self->_isDraggingIn = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__OFUIGridView_draggingDestinationExited___block_invoke;
  v5[3] = &unk_279C89FB8;
  v5[4] = self;
  v5[5] = a3;
  [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v5 options:&__block_literal_global_91 animations:0.200000003 completion:0.0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__OFUIGridView_draggingDestinationExited___block_invoke_3;
  v4[3] = &unk_279C89F90;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v4 options:&__block_literal_global_93 animations:0.200000003 completion:0.0];
}

uint64_t __42__OFUIGridView_draggingDestinationExited___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 2472) setSelected:0];
  v2 = [*(a1 + 40) presentationView];

  return [v2 setAlpha:1.0];
}

uint64_t __42__OFUIGridView_draggingDestinationExited___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setDraggingDestinationIndex:0x7FFFFFFFFFFFFFFFLL];
  [*(a1 + 32) setDraggingDestinationCount:0x7FFFFFFFFFFFFFFFLL];
  v2 = *(a1 + 32);

  return [v2 updateLayout:1];
}

- (CGRect)draggingDestination:(id)a3 originalFrameForItem:(id)a4
{
  v7 = [(OFUIGridView *)self draggingDestinationIndex];
  v8 = [a3 indexOfItem:a4];
  [(OFUIGridView *)self _cellPositionAtIndex:v8 + v7];
  v10 = v9;
  v12 = v11;
  [(OFUIGridView *)self _cellSizeAtIndex:v8 + v7];
  v14 = v13;
  v16 = v15;
  if ([(OFUIGridView *)self isFrameEntirelyVisible:v10, v12, v13, v15])
  {
    [objc_msgSend(a3 "window")];
  }

  else
  {
    v17 = *MEMORY[0x277CBF3A0];
    v18 = *(MEMORY[0x277CBF3A0] + 8);
    v19 = *(MEMORY[0x277CBF3A0] + 16);
    v20 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)performDragOperation:(id)a3
{
  if (!self->_draggingSource)
  {
    return 0;
  }

  v5 = [a3 destinationOperation];
  v6 = [(OFUIGridView *)self draggingDestinationIndex];
  if (v5 == 32)
  {
    if (v6 != 0x7FFFFFFFFFFFFFFFLL && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if (-[OFUIWindowDraggingSource gridView:mergeWithItemsFromPasteboard:atIndex:session:](self->_draggingSource, "gridView:mergeWithItemsFromPasteboard:atIndex:session:", self, [a3 pasteboard], -[OFUIGridView draggingDestinationIndex](self, "draggingDestinationIndex"), a3))
      {
        if ([(OFUIGridView *)self draggingDestinationCount]>= 1)
        {
          [(OFUIGridView *)self setDraggingDestinationIndex:[(OFUIGridView *)self draggingDestinationIndex]+ 1];
        }

        if ([a3 animation] == 1)
        {
          [a3 setAnimation:8];
        }

        if ([a3 destinationOperation] == 32)
        {
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __37__OFUIGridView_performDragOperation___block_invoke;
          v10[3] = &unk_279C89F90;
          v10[4] = self;
          [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v10 options:&__block_literal_global_97 animations:0.200000003 completion:0.0];
          v7 = 1;
LABEL_23:
          [(OFUIGridViewCell *)self->_lastCellUpdatedForMerge setSelected:0];
          return v7;
        }
      }

      [a3 setAnimation:2];
    }

    v7 = 0;
    goto LABEL_23;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  -[OFUIGridView setDraggingDestinationCount:](self, "setDraggingDestinationCount:", [a3 numberOfItems]);
  if (!-[OFUIWindowDraggingSource gridView:insertItemsFromPasteboard:atIndex:session:](self->_draggingSource, "gridView:insertItemsFromPasteboard:atIndex:session:", self, [a3 pasteboard], -[OFUIGridView draggingDestinationIndex](self, "draggingDestinationIndex"), a3))
  {
    [a3 setAnimation:2];
    return 0;
  }

  if ([a3 animation] == 1)
  {
    [a3 setAnimation:4];
  }

  if ([a3 destinationOperation] == 2 || objc_msgSend(a3, "destinationOperation") == 4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__OFUIGridView_performDragOperation___block_invoke_3;
    v9[3] = &unk_279C89F90;
    v9[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:196611 delay:v9 options:&__block_literal_global_101 animations:0.200000003 completion:0.0];
  }

  return 1;
}

- (void)concludeDragOperation:(id)a3
{
  if ([a3 destinationOperation] == 2 || objc_msgSend(a3, "destinationOperation") == 4 || objc_msgSend(a3, "destinationOperation") == 32)
  {
    if ([(OFUIGridView *)self draggingDestinationIndex]!= 0x7FFFFFFFFFFFFFFFLL && [(OFUIGridView *)self draggingDestinationCount]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      -[OFUIGridView insertCellsAtIndexes:animated:](self, "insertCellsAtIndexes:animated:", [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{-[OFUIGridView draggingDestinationIndex](self, "draggingDestinationIndex"), -[OFUIGridView draggingDestinationCount](self, "draggingDestinationCount")}], 0);
    }

    [(OFUIGridView *)self setDraggingDestinationIndex:0x7FFFFFFFFFFFFFFFLL];
    [(OFUIGridView *)self setDraggingDestinationCount:0x7FFFFFFFFFFFFFFFLL];

    [(OFUIGridView *)self forceLayout];
  }
}

- (void)draggingDestinationEnded:(id)a3 cancelled:(BOOL)a4
{
  self->_isDraggingIn = 0;
  [(OFUIGridView *)self setDraggingDestinationIndex:0x7FFFFFFFFFFFFFFFLL, a4];
  [(OFUIGridView *)self setDraggingDestinationCount:0x7FFFFFFFFFFFFFFFLL];

  [(OFUIGridView *)self updateLayout:1];
}

- (float)autoscrollDistance:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(OFUIGridView *)self bounds];
  v49.origin.x = v8;
  v49.origin.y = v9;
  v49.size.width = v10;
  v49.size.height = v11;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  if (!CGRectIntersectsRect(v44, v49))
  {
    v22 = 0.0;
    goto LABEL_13;
  }

  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  MidX = CGRectGetMidX(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  MidY = CGRectGetMidY(v46);
  orientation = self->_orientation;
  [(OFUIGridView *)self bounds];
  if (orientation)
  {
    v19 = MidY - CGRectGetMinY(*&v15);
    [(OFUIGridView *)self bounds];
    MaxY = CGRectGetMaxY(v47);
    if (v19 < 50.0)
    {
      v21 = self;
      *&MaxY = v19;
LABEL_8:
      [(OFUIGridView *)v21 _autoscrollDistanceForProximityToEdge:MaxY];
      v22 = -v24;
      goto LABEL_13;
    }

    v25 = MaxY - MidY;
  }

  else
  {
    v23 = MidX - CGRectGetMinX(*&v15);
    [(OFUIGridView *)self bounds];
    MaxY = CGRectGetMaxX(v48);
    if (v23 < 50.0)
    {
      v21 = self;
      *&MaxY = v23;
      goto LABEL_8;
    }

    v25 = MaxY - MidX;
  }

  v26 = v25;
  v22 = 0.0;
  if (v26 < 50.0)
  {
    [(OFUIGridView *)self _autoscrollDistanceForProximityToEdge:?];
    v22 = v27;
  }

LABEL_13:
  v28 = self->_orientation;
  [(OFUIGridView *)self contentOffset];
  v31 = v22;
  if (v28)
  {
    v32 = 0.0;
    if (v30 + v31 < 0.0)
    {
      return v32;
    }

    [(OFUIGridView *)self contentSize];
    v34 = v33;
    [(OFUIGridView *)self contentOffset];
    v36 = v35;
    [(OFUIGridView *)self frame];
    v38 = v36 + v37;
  }

  else
  {
    v32 = 0.0;
    if (v29 + v31 < 0.0)
    {
      return v32;
    }

    [(OFUIGridView *)self contentSize];
    v34 = v39;
    [(OFUIGridView *)self contentOffset];
    v41 = v40;
    [(OFUIGridView *)self frame];
    v38 = v41 + v42;
  }

  if (v34 >= v38 + v31)
  {
    return v22;
  }

  return v32;
}

- (void)autoscroll:(float)a3
{
  orientation = self->_orientation;
  [(OFUIGridView *)self contentOffset];
  v7 = v6;
  v9 = v8;
  [(OFUIGridView *)self contentSize];
  v11 = v10;
  v13 = v12;
  [(OFUIGridView *)self frame];
  v15 = v14;
  v17 = v16;
  [(OFUIGridView *)self contentOffset];
  v18 = v9;
  v19 = -v18;
  v21 = v13 - (v17 + v20);
  v22 = v7;
  v23 = -v22;
  v25 = v11 - (v15 + v24);
  if (orientation)
  {
    v25 = v21;
    v26 = v19;
  }

  else
  {
    v26 = v23;
  }

  v27 = v25;
  if (v26 <= a3)
  {
    v26 = a3;
  }

  if (v26 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  [(OFUIGridView *)self contentOffset];
  v31 = v29 + v28;
  v32 = v30 + v28;
  if (self->_orientation)
  {
    v30 = v30 + v28;
  }

  else
  {
    v29 = v29 + v28;
  }

  [(OFUIGridView *)self setContentOffset:v29, v30, v32, v31];
}

- (CGSize)cellSize
{
  width = self->_cellSize.width;
  height = self->_cellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minCellSize
{
  width = self->_minCellSize.width;
  height = self->_minCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxCellSize
{
  width = self->_maxCellSize.width;
  height = self->_maxCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)borderInset
{
  top = self->_borderInset.top;
  left = self->_borderInset.left;
  bottom = self->_borderInset.bottom;
  right = self->_borderInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end