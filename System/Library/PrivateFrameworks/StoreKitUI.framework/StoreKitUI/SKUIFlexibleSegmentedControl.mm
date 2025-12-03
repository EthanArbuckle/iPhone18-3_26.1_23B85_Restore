@interface SKUIFlexibleSegmentedControl
- (CGRect)frameForSegmentWithIndex:(int64_t)index;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIFlexibleSegmentedControl)initWithFrame:(CGRect)frame;
- (SKUIFlexibleSegmentedControlDelegate)delegate;
- (int64_t)moreListIndex;
- (int64_t)selectedSegmentIndex;
- (void)_configureSegmentedControl:(id)control withTitles:(id)titles boundingSize:(CGSize)size;
- (void)_setTitles:(id)titles forSegmentedControl:(id)control;
- (void)_valueChangeAction:(id)action;
- (void)cancelMoreList;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDesiredSegmentWidth:(double)width;
- (void)setItemTitles:(id)titles;
- (void)setMaximumNumberOfVisibleItems:(int64_t)items;
- (void)setMoreListTitle:(id)title;
- (void)setSelectedSegmentIndex:(int64_t)index;
- (void)setSizesSegmentsToFitWidth:(BOOL)width;
@end

@implementation SKUIFlexibleSegmentedControl

- (SKUIFlexibleSegmentedControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIFlexibleSegmentedControl initWithFrame:];
  }

  v13.receiver = self;
  v13.super_class = SKUIFlexibleSegmentedControl;
  height = [(SKUIFlexibleSegmentedControl *)&v13 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    height->_maximumNumberOfVisibleItems = 0x7FFFFFFFFFFFFFFFLL;
    height->_previousSelectedSegmentIndex = -1;
    v10 = objc_alloc_init(MEMORY[0x277D75A08]);
    segmentedControl = v9->_segmentedControl;
    v9->_segmentedControl = v10;

    [(UISegmentedControl *)v9->_segmentedControl addTarget:v9 action:sel__valueChangeAction_ forControlEvents:4096];
    [(UISegmentedControl *)v9->_segmentedControl setSemanticContentAttribute:storeSemanticContentAttribute()];
    [(SKUIFlexibleSegmentedControl *)v9 addSubview:v9->_segmentedControl];
  }

  return v9;
}

- (void)dealloc
{
  [(UISegmentedControl *)self->_segmentedControl removeTarget:self action:0 forControlEvents:64];
  v3.receiver = self;
  v3.super_class = SKUIFlexibleSegmentedControl;
  [(SKUIFlexibleSegmentedControl *)&v3 dealloc];
}

- (void)cancelMoreList
{
  if (self->_isMoreListSelected)
  {
    self->_isMoreListSelected = 0;
    self->_selectedSegmentIndex = self->_previousSelectedSegmentIndex;
    [(SKUIFlexibleSegmentedControl *)self setNeedsLayout];
  }
}

- (CGRect)frameForSegmentWithIndex:(int64_t)index
{
  v5 = MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  numberOfSegments = [(UISegmentedControl *)self->_segmentedControl numberOfSegments];
  if (numberOfSegments <= index)
  {
    v18 = *v5;
    v17 = v5[2];
    v16 = v5[3];
  }

  else
  {
    v8 = numberOfSegments;
    [(UISegmentedControl *)self->_segmentedControl frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    *&v9 = v13 / v8;
    v17 = floorf(*&v9);
    v18 = v10 + index * v17;
    if (storeShouldReverseLayoutDirection())
    {
      v25.origin.x = v10;
      v25.origin.y = v12;
      v25.size.width = v14;
      v25.size.height = v16;
      MaxX = CGRectGetMaxX(v25);
      v26.origin.x = v18;
      v26.origin.y = v6;
      v26.size.width = v17;
      v26.size.height = v16;
      v20 = MaxX - CGRectGetWidth(v26);
      v27.origin.x = v18;
      v27.origin.y = v6;
      v27.size.width = v17;
      v27.size.height = v16;
      v18 = v20 - CGRectGetMinX(v27);
    }

    v6 = v12;
  }

  v21 = v18;
  v22 = v6;
  v23 = v17;
  v24 = v16;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (int64_t)moreListIndex
{
  numberOfSegments = [(UISegmentedControl *)self->_segmentedControl numberOfSegments];
  if (numberOfSegments >= [(NSArray *)self->_itemTitles count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return numberOfSegments - 1;
  }
}

- (int64_t)selectedSegmentIndex
{
  previousSelectedSegmentIndex = self->_previousSelectedSegmentIndex;
  if (previousSelectedSegmentIndex == -1)
  {
    return self->_selectedSegmentIndex;
  }

  return previousSelectedSegmentIndex;
}

- (void)setDesiredSegmentWidth:(double)width
{
  if (self->_desiredSegmentWidth != width)
  {
    self->_desiredSegmentWidth = width;
    [(SKUIFlexibleSegmentedControl *)self setNeedsLayout];
  }
}

- (void)setSizesSegmentsToFitWidth:(BOOL)width
{
  if (self->_sizesSegmentsToFitWidth != width)
  {
    self->_sizesSegmentsToFitWidth = width;
    [(SKUIFlexibleSegmentedControl *)self setNeedsLayout];
  }
}

- (void)setItemTitles:(id)titles
{
  if (self->_itemTitles != titles)
  {
    v4 = [titles copy];
    itemTitles = self->_itemTitles;
    self->_itemTitles = v4;

    [(SKUIFlexibleSegmentedControl *)self setNeedsLayout];
  }
}

- (void)setMaximumNumberOfVisibleItems:(int64_t)items
{
  if (self->_maximumNumberOfVisibleItems != items)
  {
    self->_maximumNumberOfVisibleItems = items;
    [(SKUIFlexibleSegmentedControl *)self setNeedsLayout];
  }
}

- (void)setMoreListTitle:(id)title
{
  if (self->_moreListTitle != title)
  {
    v4 = [title copy];
    moreListTitle = self->_moreListTitle;
    self->_moreListTitle = v4;

    [(SKUIFlexibleSegmentedControl *)self setNeedsLayout];
  }
}

- (void)setSelectedSegmentIndex:(int64_t)index
{
  selectedSegmentIndex = self->_selectedSegmentIndex;
  if (selectedSegmentIndex != index)
  {
    self->_isMoreListSelected = 0;
    self->_previousSelectedSegmentIndex = selectedSegmentIndex;
    self->_selectedSegmentIndex = index;
    [(SKUIFlexibleSegmentedControl *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SKUIFlexibleSegmentedControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__SKUIFlexibleSegmentedControl_layoutSubviews__block_invoke;
  v18[3] = &unk_2781FB108;
  v18[4] = self;
  v18[5] = v7;
  v18[6] = v8;
  *&v18[7] = v3;
  *&v18[8] = v5;
  [MEMORY[0x277D75D18] performWithoutAnimation:v18];
  [(UISegmentedControl *)self->_segmentedControl frame];
  v10 = (v4 - v9) * 0.5;
  v12 = (v6 - v11) * 0.5;
  [(UISegmentedControl *)self->_segmentedControl setFrame:floorf(v10), floorf(v12)];
  moreListIndex = [(SKUIFlexibleSegmentedControl *)self moreListIndex];
  segmentedControl = self->_segmentedControl;
  if (self->_isMoreListSelected)
  {
    selectedSegmentIndex = moreListIndex;
  }

  else
  {
    numberOfSegments = [(UISegmentedControl *)segmentedControl numberOfSegments];
    if (moreListIndex >= numberOfSegments)
    {
      v17 = numberOfSegments;
    }

    else
    {
      v17 = moreListIndex;
    }

    selectedSegmentIndex = self->_selectedSegmentIndex;
    segmentedControl = self->_segmentedControl;
    if (selectedSegmentIndex >= v17)
    {
      selectedSegmentIndex = -1;
    }
  }

  [(UISegmentedControl *)segmentedControl setSelectedSegmentIndex:selectedSegmentIndex];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = objc_alloc_init(MEMORY[0x277D75A08]);
  [(SKUIFlexibleSegmentedControl *)self _configureSegmentedControl:v6 withTitles:self->_itemTitles boundingSize:width, height];
  [v6 frame];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_valueChangeAction:(id)action
{
  self->_previousSelectedSegmentIndex = self->_selectedSegmentIndex;
  self->_selectedSegmentIndex = [action selectedSegmentIndex];
  moreListIndex = [(SKUIFlexibleSegmentedControl *)self moreListIndex];
  selectedSegmentIndex = self->_selectedSegmentIndex;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (selectedSegmentIndex == moreListIndex)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(NSArray *)self->_itemTitles subarrayWithRange:moreListIndex, [(NSArray *)self->_itemTitles count]- moreListIndex];
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 segmentedControl:self showMoreListWithTitles:v8];
    }

    self->_isMoreListSelected = 1;
  }

  else
  {
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 segmentedControl:self didSelectSegmentIndex:self->_selectedSegmentIndex];
    }
  }
}

- (void)_configureSegmentedControl:(id)control withTitles:(id)titles boundingSize:(CGSize)size
{
  width = size.width;
  controlCopy = control;
  titlesCopy = titles;
  v9 = [titlesCopy mutableCopy];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [v9 count];
  if (self->_moreListTitle && (maximumNumberOfVisibleItems = self->_maximumNumberOfVisibleItems, v13 = v11 - maximumNumberOfVisibleItems, v11 > maximumNumberOfVisibleItems))
  {
    v14 = maximumNumberOfVisibleItems - 1;
    v15 = [v9 subarrayWithRange:{maximumNumberOfVisibleItems - 1, v13 + 1}];
    [v10 addObjectsFromArray:v15];

    [v9 removeObjectsInRange:{v14, v13 + 1}];
    [v9 addObject:self->_moreListTitle];
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(MEMORY[0x277CBF390] + 16);
  v18 = *(MEMORY[0x277CBF390] + 24);
  while (1)
  {
    [(SKUIFlexibleSegmentedControl *)self _setTitles:v9 forSegmentedControl:controlCopy];
    [controlCopy sizeThatFits:{v17, v18}];
    v20 = v19;
    v22 = v21;
    v23 = [v9 count];
    if (v23 == 1 || v20 + (v23 * -10.0) <= width || !self->_moreListTitle)
    {
      break;
    }

    if (v16)
    {
      v24 = v23 - 2;
      v25 = [v9 objectAtIndex:v23 - 2];
      [v10 addObject:v25];

      [v9 removeObjectAtIndex:v24];
      v16 = 1;
    }

    else
    {
      lastObject = [v9 lastObject];
      [v10 addObject:lastObject];

      [v9 removeLastObject];
      v16 = 1;
      if (self->_moreListTitle)
      {
        [v9 addObject:?];
      }
    }
  }

  desiredSegmentWidth = self->_desiredSegmentWidth;
  if (desiredSegmentWidth > 0.00000011920929)
  {
    v28 = desiredSegmentWidth * v23;
    if (self->_sizesSegmentsToFitWidth)
    {
      v28 = width;
    }

    if (v20 < v28)
    {
      v20 = v28;
    }
  }

  if (v20 >= width)
  {
    v29 = width;
  }

  else
  {
    v29 = v20;
  }

  [controlCopy setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), v29, v22}];
  lastObject2 = [v9 lastObject];
  v31 = lastObject2;
  if (lastObject2 == self->_moreListTitle)
  {
    v32 = [v10 count];

    if (v32 == 1)
    {
      [v9 removeLastObject];
      firstObject = [v10 firstObject];
      [v9 addObject:firstObject];

      [(SKUIFlexibleSegmentedControl *)self _setTitles:v9 forSegmentedControl:controlCopy];
    }
  }

  else
  {
  }
}

- (void)_setTitles:(id)titles forSegmentedControl:(id)control
{
  controlCopy = control;
  titlesCopy = titles;
  [controlCopy removeAllSegments];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SKUIFlexibleSegmentedControl__setTitles_forSegmentedControl___block_invoke;
  v8[3] = &unk_2781FDB98;
  v9 = controlCopy;
  v7 = controlCopy;
  [titlesCopy enumerateObjectsUsingBlock:v8];
}

- (SKUIFlexibleSegmentedControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFlexibleSegmentedControl initWithFrame:]";
}

@end