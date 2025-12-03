@interface PKDashboardSegmentedControlHeaderView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplate:(BOOL)template;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardSegmentedControlHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setActions:(id)actions;
- (void)setSelectedSegmentIndex:(int64_t)index;
@end

@implementation PKDashboardSegmentedControlHeaderView

- (PKDashboardSegmentedControlHeaderView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PKDashboardSegmentedControlHeaderView;
  v3 = [(PKDashboardCollectionViewCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v3->_isCompactUI = PKUIGetMinScreenWidthType() == 0;
    v4 = objc_alloc(MEMORY[0x1E69DCF38]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    segmentedControl = v3->_segmentedControl;
    v3->_segmentedControl = v5;

    contentView = [(PKDashboardSegmentedControlHeaderView *)v3 contentView];
    [contentView addSubview:v3->_segmentedControl];

    [(PKDashboardCollectionViewCell *)v3 setWantsCustomAppearance:1];
    [(PKDashboardSegmentedControlHeaderView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKDashboardSegmentedControlHeaderView;
  [(PKDashboardCollectionViewCell *)&v3 prepareForReuse];
  [(UISegmentedControl *)self->_segmentedControl removeAllSegments];
}

- (void)setSelectedSegmentIndex:(int64_t)index
{
  if ([(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex]!= index)
  {
    segmentedControl = self->_segmentedControl;

    [(UISegmentedControl *)segmentedControl setSelectedSegmentIndex:index];
  }
}

- (void)setActions:(id)actions
{
  actionsCopy = actions;
  [(UISegmentedControl *)self->_segmentedControl removeAllSegments];
  if ([actionsCopy count])
  {
    v4 = 0;
    do
    {
      segmentedControl = self->_segmentedControl;
      v6 = [actionsCopy objectAtIndexedSubscript:v4];
      [(UISegmentedControl *)segmentedControl insertSegmentWithAction:v6 atIndex:v4 animated:1];

      ++v4;
    }

    while ([actionsCopy count] > v4);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardSegmentedControlHeaderView;
  [(PKDashboardCollectionViewCell *)&v3 layoutSubviews];
  [(PKDashboardSegmentedControlHeaderView *)self bounds];
  [(PKDashboardSegmentedControlHeaderView *)self _layoutWithBounds:0 isTemplate:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKDashboardSegmentedControlHeaderView *)self _layoutWithBounds:1 isTemplate:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplate:(BOOL)template
{
  width = bounds.size.width;
  x = bounds.origin.x;
  [objc_opt_class() defaultHorizontalInset];
  v9 = v8;
  v10 = width + v8 * -2.0;
  if (self->_isCompactUI)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 4.0;
  }

  [(UISegmentedControl *)self->_segmentedControl sizeThatFits:v10, 1.79769313e308];
  v13 = v12;
  if (!template)
  {
    [(UISegmentedControl *)self->_segmentedControl setFrame:x + v9, v11, v10, v12];
  }

  v14 = v11 + v13 + 10.0;
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

@end