@interface PKWeekdaySelectionCollectionViewCell
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKWeekdaySelectionCollectionViewCell)initWithFrame:(CGRect)frame;
- (PKWeekdaySelectorDelegate)delegate;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation PKWeekdaySelectionCollectionViewCell

- (PKWeekdaySelectionCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PKWeekdaySelectionCollectionViewCell;
  v3 = [(PKWeekdaySelectionCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PKWeekdaySelector);
    weekdaySelector = v3->_weekdaySelector;
    v3->_weekdaySelector = v4;

    contentView = [(PKWeekdaySelectionCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_weekdaySelector];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKWeekdaySelectionCollectionViewCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKWeekdaySelectionCollectionViewCell;
  [(PKWeekdaySelectionCollectionViewCell *)&v4 layoutSubviews];
  contentView = [(PKWeekdaySelectionCollectionViewCell *)self contentView];
  [contentView bounds];
  [(PKWeekdaySelectionCollectionViewCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  width = bounds.size.width;
  [(PKWeekdaySelector *)self->_weekdaySelector sizeThatFits:bounds.size.width, 1.79769313e308];
  v9 = v8;
  if (!layout)
  {
    [(PKWeekdaySelector *)self->_weekdaySelector setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8) + 15.0, v7, v8];
  }

  v10 = v9 + 30.0;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = PKWeekdaySelectionCollectionViewCell;
  colorCopy = color;
  [(PKWeekdaySelectionCollectionViewCell *)&v6 setBackgroundColor:colorCopy];
  v5 = [(PKWeekdaySelectionCollectionViewCell *)self contentView:v6.receiver];
  [v5 setBackgroundColor:colorCopy];

  [(PKWeekdaySelector *)self->_weekdaySelector setBackgroundColor:colorCopy];
}

- (PKWeekdaySelectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end