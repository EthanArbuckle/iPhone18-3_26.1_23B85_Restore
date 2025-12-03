@interface PKApplicationMessageClearView
- (CGSize)sizeThatFits:(CGSize)result;
- (id)initWithTitle:(id *)title;
- (void)_updateForTraitCollection:(id)collection;
- (void)layoutSubviews;
@end

@implementation PKApplicationMessageClearView

- (id)initWithTitle:(id *)title
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (title)
  {
    v14.receiver = title;
    v14.super_class = PKApplicationMessageClearView;
    v4 = objc_msgSendSuper2(&v14, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    title = v4;
    if (v4)
    {
      [v4 pkui_setMaskType:3];
      secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [title setBackgroundColor:secondarySystemGroupedBackgroundColor];

      v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v7 = title[51];
      title[51] = v6;

      v8 = title[51];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v8 setTextColor:secondaryLabelColor];

      [title[51] setTextAlignment:1];
      [title[51] setText:v3];
      [title addSubview:title[51]];
      traitCollection = [title traitCollection];
      [title _updateForTraitCollection:traitCollection];

      v15[0] = objc_opt_class();
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v12 = [title registerForTraitChanges:v11 withHandler:&__block_literal_global_164];
    }
  }

  return title;
}

void __47__PKApplicationMessageClearView_initWithTitle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v4 = a3;
  v5 = [v9 traitCollection];
  if (!v4 || ([v4 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v8))
  {
    [v9 _updateForTraitCollection:v5];
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKApplicationMessageClearView;
  [(PKApplicationMessageClearView *)&v9 layoutSubviews];
  [(PKApplicationMessageClearView *)self bounds];
  PKFloatRoundToPixel();
  v4 = v3;
  if ([(PKApplicationMessageClearView *)self _shouldReverseLayoutDirection])
  {
    v5 = fmax(v4, 8.0);
    titleFittingWidth = self->_titleFittingWidth;
  }

  else
  {
    [(PKApplicationMessageClearView *)self bounds];
    titleFittingWidth = self->_titleFittingWidth;
    v5 = fmin(v4, v7 + -8.0 - titleFittingWidth);
  }

  title = self->_title;
  [(PKApplicationMessageClearView *)self bounds];
  [(UILabel *)title setFrame:v5, 0.0, titleFittingWidth];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = fmax(self->_titleFittingWidth + 16.0, 90.0);
  result.width = v3;
  return result;
}

- (void)_updateForTraitCollection:(id)collection
{
  v8 = _PKFontForDesign(collection, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDCF8], 0x8000, 0, 0);
  [(UILabel *)self->_title setFont:v8];
  [(UILabel *)self->_title sizeToFit];
  [(UILabel *)self->_title bounds];
  v5.n128_u64[0] = v4;
  PKFloatCeilToPixel(v5, v6);
  self->_titleFittingWidth = v7;
}

@end