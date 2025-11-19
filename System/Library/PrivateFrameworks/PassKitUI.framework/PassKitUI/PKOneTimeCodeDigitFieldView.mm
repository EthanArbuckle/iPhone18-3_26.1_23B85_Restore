@interface PKOneTimeCodeDigitFieldView
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKOneTimeCodeDigitFieldView)initWithIndex:(int64_t)a3;
- (void)_updateLayer;
- (void)layoutSubviews;
- (void)setHighligtType:(unint64_t)a3;
- (void)setText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKOneTimeCodeDigitFieldView

- (PKOneTimeCodeDigitFieldView)initWithIndex:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = PKOneTimeCodeDigitFieldView;
  v4 = [(PKOneTimeCodeDigitFieldView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(PKOneTimeCodeDigitFieldView *)v4 setLayoutMargins:8.0, 8.0, 8.0, 8.0];
    v6 = [(PKOneTimeCodeDigitFieldView *)v5 layer];
    [v6 setCornerRadius:8.0];
    [v6 setMasksToBounds:0];
    [v6 setShadowOffset:{0.0, 1.0}];
    LODWORD(v7) = 1.0;
    [v6 setShadowOpacity:v7];
    [v6 setBorderWidth:PKUIScreenScale()];
    [(PKOneTimeCodeDigitFieldView *)v5 _updateLayer];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v5->_label;
    v5->_label = v8;

    v10 = v5->_label;
    v11 = [objc_opt_class() codeEntryFont];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)v5->_label setTextAlignment:1];
    [(UILabel *)v5->_label setClipsToBounds:0];
    [(PKOneTimeCodeDigitFieldView *)v5 addSubview:v5->_label];
    [(PKOneTimeCodeDigitFieldView *)v5 setAccessibilityTraits:*MEMORY[0x1E69DD9E8]];
    [(PKOneTimeCodeDigitFieldView *)v5 setIsAccessibilityElement:1];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PKOneTimeCodeDigitFieldView.%ld", a3];
    [(PKOneTimeCodeDigitFieldView *)v5 setAccessibilityLabel:v12];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKOneTimeCodeDigitFieldView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKOneTimeCodeDigitFieldView;
  [(PKOneTimeCodeDigitFieldView *)&v3 layoutSubviews];
  [(PKOneTimeCodeDigitFieldView *)self bounds];
  [(PKOneTimeCodeDigitFieldView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  [(UILabel *)self->_label frame];
  [(UILabel *)self->_label sizeThatFits:width, height];
  PKRectCenteredIntegralRect();
  v9 = v8;
  v11 = v10;
  if (!a4)
  {
    [(UILabel *)self->_label setFrame:?];
  }

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setHighligtType:(unint64_t)a3
{
  if (self->_highligtType != a3)
  {
    v9 = v3;
    self->_highligtType = a3;
    v8 = MEMORY[0x1E69DDA08];
    if (a3 != 1)
    {
      v8 = MEMORY[0x1E69DD9E8];
    }

    [(PKOneTimeCodeDigitFieldView *)self setAccessibilityTraits:*v8, v4, v9, v5];
    [(PKOneTimeCodeDigitFieldView *)self _updateLayer];

    [(PKOneTimeCodeDigitFieldView *)self setNeedsLayout];
  }
}

- (void)setText:(id)a3
{
  v5 = a3;
  text = self->_text;
  v9 = v5;
  v7 = text;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_text, a3);
    [(UILabel *)self->_label setText:self->_text];
    [(PKOneTimeCodeDigitFieldView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKOneTimeCodeDigitFieldView;
  [(PKOneTimeCodeDigitFieldView *)&v10 traitCollectionDidChange:v4];
  v5 = [(PKOneTimeCodeDigitFieldView *)self traitCollection];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = [v4 preferredContentSizeCategory];
      v8 = [v6 preferredContentSizeCategory];
      v9 = UIContentSizeCategoryCompareToCategory(v7, v8);

      if (v9)
      {
        [(PKOneTimeCodeDigitFieldView *)self _updateLayer];
        [(PKOneTimeCodeDigitFieldView *)self setNeedsLayout];
      }
    }
  }
}

- (void)_updateLayer
{
  v3 = [(PKOneTimeCodeDigitFieldView *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PKOneTimeCodeDigitFieldView__updateLayer__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  PKUIPerformWithEffectiveTraitCollection(v3, v4);
}

void __43__PKOneTimeCodeDigitFieldView__updateLayer__block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) layer];
  v2 = *(a1 + 32);
  v3 = *(v2 + 432);
  switch(v3)
  {
    case 2:
      v4 = [MEMORY[0x1E69DC888] redColor];
      goto LABEL_7;
    case 1:
      v5 = [MEMORY[0x1E69DC888] linkColor];
      v6 = [MEMORY[0x1E69DC888] colorWithRed:0.781 green:0.873 blue:0.985 alpha:1.0];
LABEL_8:
      v7 = v6;
      v2 = *(a1 + 32);
      goto LABEL_10;
    case 0:
      v4 = [MEMORY[0x1E69DC888] separatorColor];
LABEL_7:
      v5 = v4;
      v6 = [MEMORY[0x1E69DC888] clearColor];
      goto LABEL_8;
  }

  v7 = 0;
  v5 = 0;
LABEL_10:
  if (*(v2 + 416))
  {
    v8 = 6.0;
  }

  else
  {
    v8 = 0.0;
  }

  [v9 setBorderColor:{objc_msgSend(v5, "CGColor")}];
  [v9 setShadowColor:{objc_msgSend(v7, "CGColor")}];
  [v9 setShadowRadius:v8];
}

@end