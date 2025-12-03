@interface _TVMLShelfView
- (UIEdgeInsets)_selectionMarginsForCell:(id)cell;
- (_TVMLShelfView)initWithCoder:(id)coder;
- (_TVMLShelfView)initWithFrame:(CGRect)frame;
- (_TVMLShelfView)initWithFrame:(CGRect)frame _shelfViewLayout:(id)layout;
- (_TVMLShelfView)initWithFrame:(CGRect)frame shelfViewLayout:(id)layout;
- (id)_rowMetricsForExpectedWidth:(double)width withContentInset:(UIEdgeInsets)inset firstItemRowIndex:(int64_t *)index forShowcase:(BOOL)showcase;
- (id)rowMetricsForExpectedWidth:(double)width firstItemRowIndex:(int64_t *)index;
- (id)showcaseRowMetricsForExpectedWidth:(double)width;
- (void)layoutSubviews;
- (void)tv_setShowcaseFactor:(double)factor;
@end

@implementation _TVMLShelfView

- (_TVMLShelfView)initWithFrame:(CGRect)frame shelfViewLayout:(id)layout
{
  [(_TVMLShelfView *)self doesNotRecognizeSelector:a2, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return 0;
}

- (_TVMLShelfView)initWithFrame:(CGRect)frame _shelfViewLayout:(id)layout
{
  v5.receiver = self;
  v5.super_class = _TVMLShelfView;
  return [(_TVShelfView *)&v5 initWithFrame:layout shelfViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (_TVMLShelfView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _TVMLShelfView;
  return [(_TVShelfView *)&v4 initWithCoder:coder];
}

- (_TVMLShelfView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_alloc_init(_TVMLShelfViewLayout);
  height = [(_TVMLShelfView *)self initWithFrame:v8 _shelfViewLayout:x, y, width, height];

  return height;
}

- (void)tv_setShowcaseFactor:(double)factor
{
  self->_showcaseFactor = factor;
  collectionViewLayout = [(_TVMLShelfView *)self collectionViewLayout];
  [collectionViewLayout setShowcaseFactor:factor];

  [(_TVMLShelfView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(_TVMLShelfView *)self contentInset];
  v4 = v3;
  [(_TVMLShelfView *)self contentOffset];
  if (v5 != -v4)
  {
    [(_TVMLShelfView *)self setContentOffset:?];
  }

  v12.receiver = self;
  v12.super_class = _TVMLShelfView;
  [(_TVMLShelfView *)&v12 layoutSubviews];
  collectionViewLayout = [(_TVMLShelfView *)self collectionViewLayout];
  [collectionViewLayout headerAllowance];
  v8 = v7;

  v9 = -(v8 * self->_showcaseFactor);
  layer = [(_TVMLShelfView *)self layer];
  CATransform3DMakeTranslation(&v11, 0.0, v9, 0.0);
  [layer setSublayerTransform:&v11];
}

- (id)rowMetricsForExpectedWidth:(double)width firstItemRowIndex:(int64_t *)index
{
  [(_TVMLShelfView *)self contentInset];

  return [(_TVMLShelfView *)self rowMetricsForExpectedWidth:index withContentInset:width firstItemRowIndex:v7, v8, v9, v10];
}

- (id)showcaseRowMetricsForExpectedWidth:(double)width
{
  [(_TVMLShelfView *)self contentInset];

  return [(_TVMLShelfView *)self showcaseRowMetricsForExpectedWidth:width withContentInset:v5, v6, v7, v8];
}

- (id)_rowMetricsForExpectedWidth:(double)width withContentInset:(UIEdgeInsets)inset firstItemRowIndex:(int64_t *)index forShowcase:(BOOL)showcase
{
  showcaseCopy = showcase;
  bottom = inset.bottom;
  top = inset.top;
  v10 = [(_TVShelfView *)self shelfFlowLayout:width];
  v11 = [v10 contentRowMetricsForShowcase:showcaseCopy];
  [v10 minimumLineSpacing];
  v13 = v12;
  computedRowCount = [v10 computedRowCount];
  if (computedRowCount < 1)
  {
    v16 = 0;
  }

  else
  {
    v27 = v10;
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:2 * computedRowCount - 1];
    v17 = 0;
    v28 = vdupq_lane_s64(*&top, 0);
    v15 = 0uLL;
    v18 = computedRowCount;
    do
    {
      if (v17)
      {
        *&v31[0] = 1;
        *(&v31[0] + 1) = v13;
        v31[1] = v15;
        v32 = v15;
        v33 = v15;
        *v34 = v15;
        v19 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:v31];
        [v16 addObject:v19];

        v15 = 0uLL;
      }

      v33 = v15;
      *v34 = v15;
      v31[1] = v15;
      v32 = v15;
      v31[0] = v15;
      v20 = [v11 objectAtIndex:v17];
      v21 = v20;
      if (v20)
      {
        [v20 tv_rowMetricsValue];
      }

      else
      {
        v33 = 0u;
        *v34 = 0u;
        v32 = 0u;
        memset(v31, 0, sizeof(v31));
      }

      if (!v17)
      {
        *(v31 + 8) = vaddq_f64(v28, *(v31 + 8));
        v34[0] = fmax(v34[0] - top, 0.0);
      }

      if (v18 == 1)
      {
        *(v31 + 1) = bottom + *(v31 + 1);
        *(&v31[1] + 1) = bottom + *(&v31[1] + 1);
        v34[1] = fmax(v34[1] - bottom, 0.0);
      }

      v30[2] = v32;
      v30[3] = v33;
      v30[4] = *v34;
      v30[0] = v31[0];
      v30[1] = v31[1];
      v22 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:v30];
      [v16 addObject:v22];

      ++v17;
      --v18;
      v15 = 0uLL;
    }

    while (v18);
    v10 = v27;
  }

  delegate = [(_TVMLShelfView *)self delegate];
  v24 = [delegate indexPathForPreferredFocusedViewInCollectionView:self];

  if (index)
  {
    *index = 2 * ([v24 item] % computedRowCount);
  }

  v25 = [v16 copy];

  return v25;
}

- (UIEdgeInsets)_selectionMarginsForCell:(id)cell
{
  cellCopy = cell;
  v19.receiver = self;
  v19.super_class = _TVMLShelfView;
  [(_TVShelfView *)&v19 _selectionMarginsForCell:cellCopy];
  v9.f64[0] = v5;
  v9.f64[1] = v6;
  v10.f64[0] = v7;
  v10.f64[1] = v8;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *MEMORY[0x277D768C8]), vceqq_f64(v10, *(MEMORY[0x277D768C8] + 16))))))
  {
    [cellCopy tv_focusMargin];
  }

  v17 = v6;
  v18 = v5;
  v16 = v7;
  v15 = v8;

  v12 = v17;
  v11 = v18;
  v14 = v15;
  v13 = v16;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

@end