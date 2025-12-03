@interface PKIconTextLabel
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKIconTextLabel)initWithAttributedText:(id)text icon:(id)icon;
- (PKIconTextLabel)initWithText:(id)text icon:(id)icon;
- (void)_updateView;
- (void)layoutSubviews;
- (void)setIcon:(id)icon;
- (void)setIconAlignment:(unint64_t)alignment;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)setTextFont:(id)font;
@end

@implementation PKIconTextLabel

- (PKIconTextLabel)initWithText:(id)text icon:(id)icon
{
  textCopy = text;
  if (textCopy)
  {
    v7 = MEMORY[0x1E696AAB0];
    iconCopy = icon;
    v9 = [[v7 alloc] initWithString:textCopy];
    v10 = [(PKIconTextLabel *)self initWithAttributedText:v9 icon:iconCopy];

    v11 = v10;
  }

  else
  {
    iconCopy2 = icon;
    v13 = [(PKIconTextLabel *)self initWithAttributedText:0 icon:iconCopy2];

    v11 = v13;
  }

  return v11;
}

- (PKIconTextLabel)initWithAttributedText:(id)text icon:(id)icon
{
  textCopy = text;
  iconCopy = icon;
  v11.receiver = self;
  v11.super_class = PKIconTextLabel;
  v8 = [(PKIconTextLabel *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(PKIconTextLabel *)v8 setText:textCopy];
    [(PKIconTextLabel *)v9 setIcon:iconCopy];
  }

  return v9;
}

- (void)setText:(id)text
{
  textCopy = text;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_text, text);
    [(PKIconTextLabel *)self _updateView];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    [(PKIconTextLabel *)self _updateView];
    colorCopy = v6;
  }
}

- (void)setTextFont:(id)font
{
  fontCopy = font;
  if (self->_textFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_textFont, font);
    [(PKIconTextLabel *)self _updateView];
    fontCopy = v6;
  }
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  if (self->_icon != iconCopy)
  {
    v6 = iconCopy;
    objc_storeStrong(&self->_icon, icon);
    [(PKIconTextLabel *)self _updateView];
    iconCopy = v6;
  }
}

- (void)setIconAlignment:(unint64_t)alignment
{
  if (self->_iconAlignment != alignment)
  {
    self->_iconAlignment = alignment;
    [(PKIconTextLabel *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKIconTextLabel;
  [(PKIconTextLabel *)&v3 layoutSubviews];
  [(PKIconTextLabel *)self bounds];
  [(PKIconTextLabel *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKIconTextLabel *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(PKIconTextLabel *)self _shouldReverseLayoutDirection])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x4010000000;
  v54[3] = &unk_1BE347799;
  v55 = 0u;
  v56 = 0u;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x4010000000;
  v53[3] = &unk_1BE347799;
  *&v53[4] = x;
  *&v53[5] = y;
  *&v53[6] = width;
  *&v53[7] = height;
  [(UILabel *)self->_textLabel sizeThatFits:width, height];
  v12 = v11;
  v14 = v13;
  [(UIImageView *)self->_iconView sizeThatFits:width, height];
  v16 = v15;
  v18 = v17;
  v19 = fmax(v14, v17);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = v12 + v15;
  v43 = 0;
  v44 = &v43;
  v45 = 0x4010000000;
  v46 = &unk_1BE347799;
  v20 = *(MEMORY[0x1E695F058] + 16);
  v47 = *MEMORY[0x1E695F058];
  v48 = v20;
  v37 = 0;
  v38 = &v37;
  v39 = 0x4010000000;
  v40 = &unk_1BE347799;
  v41 = v47;
  v42 = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKIconTextLabel__layoutWithBounds_isTemplateLayout___block_invoke;
  aBlock[3] = &unk_1E801C210;
  *&aBlock[6] = v12;
  *&aBlock[7] = v14;
  aBlock[4] = v53;
  aBlock[5] = &v43;
  *&aBlock[8] = v19;
  v35 = v10;
  v36 = v10;
  v21 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __54__PKIconTextLabel__layoutWithBounds_isTemplateLayout___block_invoke_2;
  v31[3] = &unk_1E801C238;
  *&v31[6] = v16;
  *&v31[7] = v18;
  v31[4] = v53;
  v31[5] = &v37;
  v32 = v10;
  v33 = v10;
  v22 = _Block_copy(v31);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __54__PKIconTextLabel__layoutWithBounds_isTemplateLayout___block_invoke_3;
  v29[3] = &unk_1E801C260;
  *&v29[7] = v16;
  *&v29[8] = v18;
  *&v29[9] = v12;
  *&v29[10] = v14;
  v29[4] = v53;
  v29[5] = v54;
  v30 = v10;
  v29[6] = &v49;
  v23 = _Block_copy(v29);
  iconAlignment = self->_iconAlignment;
  if (iconAlignment)
  {
    if (iconAlignment != 1)
    {
      goto LABEL_9;
    }

    v21[2](v21);
    v23[2](v23);
    v25 = v22;
  }

  else
  {
    v22[2](v22);
    v23[2](v23);
    v25 = v21;
  }

  (v25[2])();
LABEL_9:
  if (!layout)
  {
    [(UILabel *)self->_textLabel setFrame:v44[4], v44[5], v44[6], v44[7]];
    [(UIImageView *)self->_iconView setFrame:v38[4], v38[5], v38[6], v38[7]];
  }

  v26 = v50[3];

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v54, 8);
  v27 = v26;
  v28 = v19;
  result.height = v28;
  result.width = v27;
  return result;
}

uint64_t __54__PKIconTextLabel__layoutWithBounds_isTemplateLayout___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 > 0.0)
  {
    v2 = result;
    v3 = *(*(result + 32) + 8);
    v9.origin.x = v3[1].origin.x;
    v9.origin.y = v3[1].origin.y;
    ++v3;
    v9.size.width = v3->size.width;
    v9.size.height = v3->size.height;
    CGRectDivide(v9, (*(*(result + 40) + 8) + 32), v3, v1, *(result + 72));
    PKContentAlignmentMake();
    result = PKSizeAlignedInRect();
    v4 = *(*(v2 + 40) + 8);
    v4[4] = v5;
    v4[5] = v6;
    v4[6] = v7;
    v4[7] = v8;
  }

  return result;
}

uint64_t __54__PKIconTextLabel__layoutWithBounds_isTemplateLayout___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 > 0.0)
  {
    v2 = result;
    v3 = *(*(result + 32) + 8);
    v9.origin.x = v3[1].origin.x;
    v9.origin.y = v3[1].origin.y;
    ++v3;
    v9.size.width = v3->size.width;
    v9.size.height = v3->size.height;
    CGRectDivide(v9, (*(*(result + 40) + 8) + 32), v3, v1, *(result + 64));
    PKContentAlignmentMake();
    result = PKSizeAlignedInRect();
    v4 = *(*(v2 + 40) + 8);
    v4[4] = v5;
    v4[5] = v6;
    v4[6] = v7;
    v4[7] = v8;
  }

  return result;
}

void __54__PKIconTextLabel__layoutWithBounds_isTemplateLayout___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) > 0.0 && *(a1 + 72) > 0.0)
  {
    v2 = *(*(a1 + 32) + 8);
    v3.origin.x = v2[1].origin.x;
    v3.origin.y = v2[1].origin.y;
    ++v2;
    v3.size.width = v2->size.width;
    v3.size.height = v2->size.height;
    CGRectDivide(v3, (*(*(a1 + 40) + 8) + 32), v2, 5.0, *(a1 + 88));
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + 5.0;
  }
}

- (void)_updateView
{
  text = self->_text;
  textLabel = self->_textLabel;
  if (text)
  {
    if (!textLabel)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v6 = self->_textLabel;
      self->_textLabel = v5;

      [(UILabel *)self->_textLabel setNumberOfLines:0];
      [(PKIconTextLabel *)self addSubview:self->_textLabel];
      textLabel = self->_textLabel;
    }

    [(UILabel *)textLabel setFont:self->_textFont];
    [(UILabel *)self->_textLabel setTextColor:self->_textColor];
    [(UILabel *)self->_textLabel setAttributedText:self->_text];
  }

  else
  {
    [(UILabel *)textLabel removeFromSuperview];
    v7 = self->_textLabel;
    self->_textLabel = 0;
  }

  icon = self->_icon;
  iconView = self->_iconView;
  if (icon)
  {
    if (!iconView)
    {
      v10 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      v11 = self->_iconView;
      self->_iconView = v10;

      [(PKIconTextLabel *)self addSubview:self->_iconView];
      iconView = self->_iconView;
      icon = self->_icon;
    }

    [(UIImageView *)iconView setImage:icon];
  }

  else
  {
    [(UIImageView *)iconView removeFromSuperview];
    v12 = self->_iconView;
    self->_iconView = 0;
  }

  [(PKIconTextLabel *)self setNeedsLayout];
}

@end