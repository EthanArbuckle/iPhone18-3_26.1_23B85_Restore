@interface PKDateSelectorCollectionViewCell
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDateSelectorCollectionViewCell)initWithFrame:(CGRect)frame;
- (PKDateSelectorCollectionViewCellDelegate)delegate;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_didUpdateDate:(id)date;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setDate:(id)date;
@end

@implementation PKDateSelectorCollectionViewCell

- (PKDateSelectorCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PKDateSelectorCollectionViewCell;
  v3 = [(PKDateSelectorCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC920]);
    datePicker = v3->_datePicker;
    v3->_datePicker = v4;

    [(UIDatePicker *)v3->_datePicker setDatePickerMode:1];
    [(UIDatePicker *)v3->_datePicker setPreferredDatePickerStyle:3];
    [(UIDatePicker *)v3->_datePicker addTarget:v3 action:sel__didUpdateDate_ forControlEvents:4096];
    [(UIDatePicker *)v3->_datePicker setAccessibilityIdentifier:*MEMORY[0x1E69B9698]];
    contentView = [(PKDateSelectorCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_datePicker];
  }

  return v3;
}

- (void)setDate:(id)date
{
  objc_storeStrong(&self->_date, date);
  dateCopy = date;
  [(UIDatePicker *)self->_datePicker setDate:self->_date];
}

- (void)_didUpdateDate:(id)date
{
  date = [date date];
  date = self->_date;
  self->_date = date;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dateSelectorCollectionViewCell:self didUpdateDate:self->_date];
}

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = PKDateSelectorCollectionViewCell;
  colorCopy = color;
  [(PKDateSelectorCollectionViewCell *)&v6 setBackgroundColor:colorCopy];
  v5 = [(PKDateSelectorCollectionViewCell *)self contentView:v6.receiver];
  [v5 setBackgroundColor:colorCopy];

  [(UIDatePicker *)self->_datePicker setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKDateSelectorCollectionViewCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKDateSelectorCollectionViewCell;
  [(PKDateSelectorCollectionViewCell *)&v4 layoutSubviews];
  contentView = [(PKDateSelectorCollectionViewCell *)self contentView];
  [contentView bounds];
  [(PKDateSelectorCollectionViewCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  width = bounds.size.width;
  [(UIDatePicker *)self->_datePicker sizeThatFits:bounds.size.width, 1.79769313e308];
  v8 = v7;
  if (!layout)
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

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v17.receiver = self;
  v17.super_class = PKDateSelectorCollectionViewCell;
  v4 = [(PKDateSelectorCollectionViewCell *)&v17 preferredLayoutAttributesFittingAttributes:attributes];
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