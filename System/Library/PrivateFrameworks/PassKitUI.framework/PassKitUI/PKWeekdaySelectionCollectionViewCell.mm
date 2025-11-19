@interface PKWeekdaySelectionCollectionViewCell
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKWeekdaySelectionCollectionViewCell)initWithFrame:(CGRect)a3;
- (PKWeekdaySelectorDelegate)delegate;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation PKWeekdaySelectionCollectionViewCell

- (PKWeekdaySelectionCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PKWeekdaySelectionCollectionViewCell;
  v3 = [(PKWeekdaySelectionCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PKWeekdaySelector);
    weekdaySelector = v3->_weekdaySelector;
    v3->_weekdaySelector = v4;

    v6 = [(PKWeekdaySelectionCollectionViewCell *)v3 contentView];
    [v6 addSubview:v3->_weekdaySelector];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKWeekdaySelectionCollectionViewCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKWeekdaySelectionCollectionViewCell;
  [(PKWeekdaySelectionCollectionViewCell *)&v4 layoutSubviews];
  v3 = [(PKWeekdaySelectionCollectionViewCell *)self contentView];
  [v3 bounds];
  [(PKWeekdaySelectionCollectionViewCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  width = a3.size.width;
  [(PKWeekdaySelector *)self->_weekdaySelector sizeThatFits:a3.size.width, 1.79769313e308];
  v9 = v8;
  if (!a4)
  {
    [(PKWeekdaySelector *)self->_weekdaySelector setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8) + 15.0, v7, v8];
  }

  v10 = v9 + 30.0;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKWeekdaySelectionCollectionViewCell;
  v4 = a3;
  [(PKWeekdaySelectionCollectionViewCell *)&v6 setBackgroundColor:v4];
  v5 = [(PKWeekdaySelectionCollectionViewCell *)self contentView:v6.receiver];
  [v5 setBackgroundColor:v4];

  [(PKWeekdaySelector *)self->_weekdaySelector setBackgroundColor:v4];
}

- (PKWeekdaySelectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end