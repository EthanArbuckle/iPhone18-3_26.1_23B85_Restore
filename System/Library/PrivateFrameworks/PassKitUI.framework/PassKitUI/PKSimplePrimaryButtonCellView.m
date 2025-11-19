@interface PKSimplePrimaryButtonCellView
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSimplePrimaryButtonCellView:(id)a3;
- (CGSize)_layoutWithBounds:(CGRect)a3 applyLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKSimplePrimaryButtonCellView)initWithFrame:(CGRect)a3;
- (void)_updateContentAnimated:(BOOL)a3;
- (void)_updateWithTraitCollection:(id)a3 previousCollection:(id)a4;
- (void)layoutIfNeededAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)a3 animated:(BOOL)a4;
- (void)prepareForReuse;
- (void)setTitle:(id)a3 animated:(BOOL)a4;
- (void)setTitleColor:(id)a3 animated:(BOOL)a4;
@end

@implementation PKSimplePrimaryButtonCellView

- (PKSimplePrimaryButtonCellView)initWithFrame:(CGRect)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PKSimplePrimaryButtonCellView;
  v3 = [(PKSimplePrimaryButtonCellView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 pkui_setMaskType:3];
    v5 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(PKSimplePrimaryButtonCellView *)v4 setBackgroundColor:v5];

    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleView = v4->_titleView;
    v4->_titleView = v7;

    [(UILabel *)v4->_titleView setTextAlignment:1];
    [(PKSimplePrimaryButtonCellView *)v4 addSubview:v4->_titleView];
    v9 = [(PKSimplePrimaryButtonCellView *)v4 traitCollection];
    [(PKSimplePrimaryButtonCellView *)v4 _updateWithTraitCollection:v9 previousCollection:0];

    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v11 = [(PKSimplePrimaryButtonCellView *)v4 registerForTraitChanges:v10 withHandler:&__block_literal_global_89];
  }

  return v4;
}

void __47__PKSimplePrimaryButtonCellView_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 traitCollection];
  [v5 _updateWithTraitCollection:v6 previousCollection:v4];
}

- (void)prepareForReuse
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__PKSimplePrimaryButtonCellView_prepareForReuse__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  [(PKSimplePrimaryButtonCellView *)self performBatchUpdates:v4 animated:0];
  v3 = [(UILabel *)self->_titleView layer];
  [v3 removeAllAnimations];
}

uint64_t __48__PKSimplePrimaryButtonCellView_prepareForReuse__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTitle:0];
  v2 = *(a1 + 32);

  return [v2 setTitleColor:0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKSimplePrimaryButtonCellView *)self _layoutWithBounds:0 applyLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKSimplePrimaryButtonCellView;
  [(PKSimplePrimaryButtonCellView *)&v3 layoutSubviews];
  [(PKSimplePrimaryButtonCellView *)self bounds];
  [(PKSimplePrimaryButtonCellView *)self _layoutWithBounds:1 applyLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)a3 applyLayout:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  x = a3.origin.x;
  y = a3.origin.y;
  v8 = _UISolariumFeatureFlagEnabled();
  v9 = _UISolariumFeatureFlagEnabled();
  v10 = 32.0;
  if (!v8)
  {
    v10 = 20.0;
  }

  if (v9)
  {
    v11 = 12.0;
  }

  else
  {
    v11 = 10.0;
  }

  v12 = width - v10;
  v13 = 24.0;
  if (!v9)
  {
    v13 = 20.0;
  }

  remainder.origin = *MEMORY[0x1E695EFF8];
  memset(&slice, 0, sizeof(slice));
  remainder.size.width = v12;
  remainder.size.height = height - v13;
  v29.origin = remainder.origin;
  v29.size.width = v12;
  v29.size.height = remainder.size.height;
  CGRectDivide(v29, &slice, &remainder, self->_verticalPadding, CGRectMinYEdge);
  CGRectDivide(remainder, &slice, &remainder, self->_verticalPadding, CGRectMaxYEdge);
  [(UILabel *)self->_titleView sizeThatFits:remainder.size.width, 1.79769313e308, *&x, *&y];
  v15 = v14;
  CGRectDivide(remainder, &slice, &remainder, v14, CGRectMinYEdge);
  verticalPadding = self->_verticalPadding;
  if (v4)
  {
    PKSizeAlignedInRect();
    PKRectRoundToPixel(v17, v18, v19, v20, v21);
    [(UILabel *)self->_titleView pkui_setFrame:self->_animated animated:?];
  }

  v22 = v15 + verticalPadding * 2.0 + v11 * 2.0;
  v23 = width;
  result.height = v22;
  result.width = v23;
  return result;
}

- (void)layoutIfNeededAnimated:(BOOL)a3
{
  self->_animated = a3;
  [(PKSimplePrimaryButtonCellView *)self layoutIfNeeded];
  self->_animated = 0;
}

- (void)performBatchUpdates:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v8 = v6;
    if (v4)
    {
      [(PKSimplePrimaryButtonCellView *)self layoutIfNeeded];
      v6 = v8;
    }

    self->_deferringUpdate = 1;
    v6[2]();
    self->_deferringUpdate = 0;
    deferredSubviewUpdate = self->_deferredSubviewUpdate;
    self->_deferredSubviewUpdate = 0;
    if (deferredSubviewUpdate)
    {
      [(PKSimplePrimaryButtonCellView *)self _updateContentAnimated:v4];
    }

    else
    {
      [(PKSimplePrimaryButtonCellView *)self layoutIfNeededAnimated:v4];
    }

    v6 = v8;
  }
}

- (void)_updateContentAnimated:(BOOL)a3
{
  if (self->_deferringUpdate)
  {
    self->_deferredSubviewUpdate = 1;
  }

  else
  {
    if (a3)
    {
      [(PKSimplePrimaryButtonCellView *)self layoutIfNeededAnimated:1];
    }

    titleView = self->_titleView;
    title = self->_title;
    titleColor = self->_titleColor;
    if (titleColor)
    {
      __56__PKSimplePrimaryButtonCellView__updateContentAnimated___block_invoke(self->_titleView, self->_title, titleColor);
    }

    else
    {
      v8 = [MEMORY[0x1E69DC888] labelColor];
      __56__PKSimplePrimaryButtonCellView__updateContentAnimated___block_invoke(titleView, title, v8);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__PKSimplePrimaryButtonCellView__updateContentAnimated___block_invoke_2;
    aBlock[3] = &__block_descriptor_33_e19_v20__0__UIView_8B16l;
    v11 = a3;
    v9 = _Block_copy(aBlock);
    v9[2](v9, self->_titleView, self->_title != 0);
    [(PKSimplePrimaryButtonCellView *)self setNeedsLayout];
    [(PKSimplePrimaryButtonCellView *)self layoutIfNeededAnimated:0];
  }
}

void __56__PKSimplePrimaryButtonCellView__updateContentAnimated___block_invoke(void *a1, uint64_t a2, void *a3)
{
  if (a1 && a3)
  {
    v5 = a3;
    v6 = a1;
    [v6 setText:a2];
    [v6 setTextColor:v5];
  }
}

void __56__PKSimplePrimaryButtonCellView__updateContentAnimated___block_invoke_2(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a3;
  if (*(a1 + 32) == 1)
  {
    v6[1] = v3;
    v6[2] = v4;
    _PKViewSetAlphaAnimated(a2, 0, v6, v5, 0.0);
  }

  else
  {

    [a2 pkui_setAlpha:0 animated:v5];
  }
}

- (void)setTitle:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = self->_title;
  v9 = v7;
  v11 = v9;
  if (v8 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v8)
  {

    goto LABEL_8;
  }

  v10 = [(NSString *)v8 isEqualToString:v9];

  if (!v10)
  {
LABEL_8:
    objc_storeStrong(&self->_title, a3);
    [(PKSimplePrimaryButtonCellView *)self _updateContentAnimated:v4];
  }

LABEL_9:
}

- (void)setTitleColor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, a3);
    [(PKSimplePrimaryButtonCellView *)self _updateContentAnimated:v4];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSimplePrimaryButtonCellView *)self isEqualToSimplePrimaryButtonCellView:v5];
  }

  return v6;
}

- (BOOL)isEqualToSimplePrimaryButtonCellView:(id)a3
{
  v3 = a3;
  if (PKEqualObjects())
  {
    v4 = PKEqualObjects();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateWithTraitCollection:(id)a3 previousCollection:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6 || ([v6 preferredContentSizeCategory], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "preferredContentSizeCategory"), v9 = objc_claimAutoreleasedReturnValue(), v10 = UIContentSizeCategoryCompareToCategory(v8, v9), v9, v8, v10))
  {
    v11 = [v16 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v11);

    v13 = 4;
    if (IsAccessibilityCategory)
    {
      v13 = 0;
    }

    self->_titleLineBreakMode = v13;
    [(UILabel *)self->_titleView setNumberOfLines:!IsAccessibilityCategory];
  }

  v14 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC38]);
  [v14 lineHeight];
  PKFloatRoundToPixel();
  self->_verticalPadding = v15;
  [(UILabel *)self->_titleView setFont:v14];
  [(PKSimplePrimaryButtonCellView *)self _updateContentAnimated:0];
  [(PKSimplePrimaryButtonCellView *)self setNeedsLayout];
}

@end