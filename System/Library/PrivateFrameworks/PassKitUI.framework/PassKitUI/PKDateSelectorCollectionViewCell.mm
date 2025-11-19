@interface PKDateSelectorCollectionViewCell
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDateSelectorCollectionViewCell)initWithFrame:(CGRect)a3;
- (PKDateSelectorCollectionViewCellDelegate)delegate;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_didUpdateDate:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setDate:(id)a3;
@end

@implementation PKDateSelectorCollectionViewCell

- (PKDateSelectorCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PKDateSelectorCollectionViewCell;
  v3 = [(PKDateSelectorCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC920]);
    datePicker = v3->_datePicker;
    v3->_datePicker = v4;

    [(UIDatePicker *)v3->_datePicker setDatePickerMode:1];
    [(UIDatePicker *)v3->_datePicker setPreferredDatePickerStyle:3];
    [(UIDatePicker *)v3->_datePicker addTarget:v3 action:sel__didUpdateDate_ forControlEvents:4096];
    [(UIDatePicker *)v3->_datePicker setAccessibilityIdentifier:*MEMORY[0x1E69B9698]];
    v6 = [(PKDateSelectorCollectionViewCell *)v3 contentView];
    [v6 addSubview:v3->_datePicker];
  }

  return v3;
}

- (void)setDate:(id)a3
{
  objc_storeStrong(&self->_date, a3);
  v5 = a3;
  [(UIDatePicker *)self->_datePicker setDate:self->_date];
}

- (void)_didUpdateDate:(id)a3
{
  v4 = [a3 date];
  date = self->_date;
  self->_date = v4;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dateSelectorCollectionViewCell:self didUpdateDate:self->_date];
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKDateSelectorCollectionViewCell;
  v4 = a3;
  [(PKDateSelectorCollectionViewCell *)&v6 setBackgroundColor:v4];
  v5 = [(PKDateSelectorCollectionViewCell *)self contentView:v6.receiver];
  [v5 setBackgroundColor:v4];

  [(UIDatePicker *)self->_datePicker setBackgroundColor:v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKDateSelectorCollectionViewCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKDateSelectorCollectionViewCell;
  [(PKDateSelectorCollectionViewCell *)&v4 layoutSubviews];
  v3 = [(PKDateSelectorCollectionViewCell *)self contentView];
  [v3 bounds];
  [(PKDateSelectorCollectionViewCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  width = a3.size.width;
  [(UIDatePicker *)self->_datePicker sizeThatFits:a3.size.width, 1.79769313e308];
  v8 = v7;
  if (!a4)
  {
    PKSizeAlignedInRect();
    [(UIDatePicker *)self->_datePicker setFrame:?];
  }

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v17.receiver = self;
  v17.super_class = PKDateSelectorCollectionViewCell;
  v4 = [(PKDateSelectorCollectionViewCell *)&v17 preferredLayoutAttributesFittingAttributes:a3];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  [(PKDateSelectorCollectionViewCell *)self sizeThatFits:v9, v10];
  v12 = v11;
  v14 = v13;
  v15 = [v4 copy];
  [v15 setFrame:{v6, v8, v12, v14}];

  return v15;
}

- (PKDateSelectorCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end