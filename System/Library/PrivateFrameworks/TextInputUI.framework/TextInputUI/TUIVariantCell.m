@interface TUIVariantCell
- (CGSize)intrinsicContentSize;
- (TUIVariantCell)initWithFrame:(CGRect)a3 string:(id)a4 annotation:(id)a5 traits:(id)a6;
- (UIEdgeInsets)annotationLabelInsets;
- (UIEdgeInsets)backgroundInsets;
- (UIEdgeInsets)labelInsets;
- (double)backgroundCornerRadius;
- (id)attributedKeycapStringForString:(id)a3;
- (id)constraintsToEmbedView:(id)a3 withinView:(id)a4 withInsets:(UIEdgeInsets)a5;
- (id)fontForSymbolStyle:(id)a3;
- (id)unhighlightedTextColor;
- (id)variantTraits;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)transitionToHighlighted:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation TUIVariantCell

- (id)variantTraits
{
  v3 = [(TUIVariantCell *)self traits];
  v4 = [v3 variantTraits];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(TUIVariantCell *)self traits];
  }

  v7 = v6;

  return v7;
}

- (double)backgroundCornerRadius
{
  v3 = [(TUIVariantCell *)self traits];
  v4 = 10.0;
  if ([v3 blendForm] != 10)
  {
    v5 = [(TUIVariantCell *)self traits];
    if ([v5 blendForm] == 11)
    {
      v4 = 10.0;
    }

    else
    {
      v4 = 5.0;
    }
  }

  return v4;
}

- (id)unhighlightedTextColor
{
  v3 = [(TUIVariantCell *)self traits];
  v4 = [v3 symbolStyle];
  v5 = [v4 textColor];
  v6 = MEMORY[0x1E69DC888];
  if (v5)
  {
    v7 = [(TUIVariantCell *)self variantTraits];
    v8 = [v7 symbolStyle];
    v9 = [v8 textColor];
    v10 = [v6 colorWithCGColor:UIKBGetNamedColor(v9)];
  }

  else
  {
    v10 = [MEMORY[0x1E69DC888] labelColor];
  }

  return v10;
}

- (UIEdgeInsets)annotationLabelInsets
{
  v2 = [(UIKBRenderTraits *)self->_traits secondarySymbolStyles];
  v3 = [v2 firstObject];

  if (v3)
  {
    [v3 textOffset];
    v5 = v4 + v4;
    [v3 textOffset];
    v7 = v6 * 0.5;
  }

  else
  {
    v5 = -2.0;
    v7 = 2.0;
  }

  v8 = v7;
  v9 = 0.0;
  v10 = 0.0;
  v11 = v5;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (UIEdgeInsets)labelInsets
{
  v3 = [(TUIVariantCell *)self variantTraits];
  v4 = [v3 symbolStyle];
  [v4 textOffset];
  v6 = v5;
  v7 = [(TUIVariantCell *)self variantTraits];
  v8 = [v7 symbolStyle];
  [v8 textOffset];
  v10 = v9;

  v11 = 0.0;
  v12 = 0.0;
  v13 = v6;
  v14 = v10;
  result.right = v12;
  result.bottom = v14;
  result.left = v13;
  result.top = v11;
  return result;
}

- (UIEdgeInsets)backgroundInsets
{
  v2 = 10.0;
  v3 = 0.0;
  v4 = 10.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)constraintsToEmbedView:(id)a3 withinView:(id)a4 withInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v26[4] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a3;
  v25 = [v11 topAnchor];
  v24 = [v10 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:top];
  v26[0] = v23;
  v12 = [v11 leftAnchor];
  v13 = [v10 leftAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:left];
  v26[1] = v14;
  v15 = [v10 bottomAnchor];
  v16 = [v11 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:bottom];
  v26[2] = v17;
  v18 = [v10 rightAnchor];

  v19 = [v11 rightAnchor];

  v20 = [v18 constraintEqualToAnchor:v19 constant:right];
  v26[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  return v21;
}

- (CGSize)intrinsicContentSize
{
  v4 = [(TUIVariantCell *)self labelView];
  [v4 intrinsicContentSize];
  v6 = v5;

  if (![(TUIVariantCell *)self isCharacterPreviewPaddle])
  {
    v7 = [(TUIVariantCell *)self labelView];
    v8 = [v7 font];
    [v8 ascender];
    v10 = v6 + v9;

    v11 = [(TUIVariantCell *)self labelView];
    v2 = [v11 font];
    [v2 descender];
    v6 = v10 - v12;
  }

  [(TUIVariantCell *)self labelInsets];
  v14 = v13;
  [(TUIVariantCell *)self labelInsets];
  v16 = v6 + v14 + v15;
  [(TUIVariantCell *)self backgroundInsets];
  v18 = v17;
  [(TUIVariantCell *)self backgroundInsets];
  v20 = v16 + v18 + v19;
  v21 = [(TUIVariantCell *)self traits];
  v22 = [v21 blendForm];
  if (v22 != 10)
  {
    v2 = [(TUIVariantCell *)self traits];
    if ([v2 blendForm] != 11)
    {
      v26 = v20 + 10.0;
      goto LABEL_8;
    }
  }

  v23 = [(TUIVariantCell *)self traits];
  v24 = [v23 symbolStyle];
  [v24 textOffset];
  v26 = v20 + v25;

  if (v22 != 10)
  {
LABEL_8:
  }

  v27 = [(TUIVariantCell *)self backgroundView];
  [v27 bounds];
  v29 = v28;

  v30 = [(TUIVariantCell *)self annotationLabelView];

  if (v30)
  {
    [(TUIVariantCell *)self annotationLabelInsets];
    v26 = v26 + v31;
    [(TUIVariantCell *)self annotationLabelInsets];
    v33 = v32;
    [(TUIVariantCell *)self annotationLabelInsets];
    v29 = v29 + v33 + v34;
  }

  v35 = v29;
  v36 = v26;
  result.height = v36;
  result.width = v35;
  return result;
}

- (id)fontForSymbolStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 fontName];
  [v3 fontWeight];
  v6 = v5;
  [v3 fontSize];
  v8 = v7;
  v9 = [v4 isEqualToString:*MEMORY[0x1E69DDE80]];
  if ([v4 isEqualToString:*MEMORY[0x1E69DDE78]])
  {
    v10 = 22.0;
    if (v8 > 0.0)
    {
      v10 = v8;
    }

    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_9:
    v13 = [MEMORY[0x1E69DB878] systemFontOfSize:v10 weight:v6];
    goto LABEL_13;
  }

  v11 = [v3 fontName];
  v12 = [v11 isEqualToString:*MEMORY[0x1E69DDE70]];

  v10 = 22.0;
  if (v8 > 0.0)
  {
    v10 = v8;
  }

  if (v9)
  {
    goto LABEL_9;
  }

  if (v12)
  {
LABEL_11:
    v13 = UIKBCreateCTFontWithSymbolStyle(v3);
    goto LABEL_13;
  }

  v13 = [MEMORY[0x1E69DB878] fontWithName:v4 size:4096 traits:v10];
LABEL_13:
  v14 = v13;

  return v14;
}

- (void)transitionToHighlighted:(BOOL)a3
{
  v5 = 0.0;
  if (a3)
  {
    v5 = 1.0;
  }

  [(UIView *)self->_backgroundView setAlpha:v5];
  if (a3)
  {
    [(TUIVariantCell *)self highlightedTextColor];
  }

  else
  {
    [(TUIVariantCell *)self unhighlightedTextColor];
  }
  v6 = ;
  [(UILabel *)self->_labelView setTextColor:v6];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    [(TUIVariantCell *)self transitionToHighlighted:?];
    self->_highlighted = a3;
  }
}

- (void)updateConstraints
{
  v41[2] = *MEMORY[0x1E69E9840];
  v3 = [(TUIVariantCell *)self cellConstraints];

  if (!v3)
  {
    [(TUIVariantCell *)self labelInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(TUIVariantCell *)self backgroundInsets];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(TUIVariantCell *)self annotationLabelInsets];
    v37 = v20;
    v39 = v21;
    v22 = [(TUIVariantCell *)self backgroundView];
    v23 = [(TUIVariantCell *)self constraintsToEmbedView:v22 withinView:self withInsets:v13, v15, v17, v19];
    v24 = [(TUIVariantCell *)self labelView];
    v25 = [(TUIVariantCell *)self constraintsToEmbedView:v24 withinView:v22 withInsets:v5, v7, v9, v11];

    v26 = [v23 arrayByAddingObjectsFromArray:v25];
    v27 = [(TUIVariantCell *)self annotationLabelView];
    v28 = v27;
    if (v27)
    {
      v36 = [v27 topAnchor];
      v35 = [v22 topAnchor];
      v29 = [v36 constraintEqualToAnchor:v35 constant:v37];
      v41[0] = v29;
      v30 = [v28 rightAnchor];
      [v22 rightAnchor];
      v31 = v38 = v23;
      v32 = [v30 constraintEqualToAnchor:v31 constant:v39];
      v41[1] = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];

      v34 = [v26 arrayByAddingObjectsFromArray:v33];

      v26 = v34;
      v23 = v38;
    }

    [(TUIVariantCell *)self setCellConstraints:v26];
    [MEMORY[0x1E696ACD8] activateConstraints:v26];
  }

  v40.receiver = self;
  v40.super_class = TUIVariantCell;
  [(TUIVariantCell *)&v40 updateConstraints];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = TUIVariantCell;
  [(TUIVariantCell *)&v8 layoutSubviews];
  [(TUIVariantCell *)self backgroundCornerRadius];
  v4 = v3;
  v5 = [(UIView *)self->_backgroundView layer];
  [v5 setCornerRadius:v4];

  v6 = [(TUIVariantCell *)self backgroundMaskedCorners];
  v7 = [(UIView *)self->_backgroundView layer];
  [v7 setMaskedCorners:v6];
}

- (id)attributedKeycapStringForString:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUIVariantCell *)self traits];
  v6 = [v5 symbolStyle];
  v7 = [(TUIVariantCell *)self fontForSymbolStyle:v6];

  v8 = [(TUIVariantCell *)self traits];
  v9 = [v8 symbolStyle];
  v10 = [v9 fontName];
  v11 = [(TUIVariantCell *)self traits];
  v12 = [v11 symbolStyle];
  [v12 fontSize];
  UIKBGetXHeight(v10, v13);

  v14 = [(TUIVariantCell *)self traits];
  v15 = [v14 symbolStyle];
  v16 = UIKBGetFontAttributesWithSymbolStyle(v15, v15, &v22);

  v17 = *MEMORY[0x1E6965A20];
  Value = CFDictionaryGetValue(v16, *MEMORY[0x1E6965A20]);
  if (Value && v7)
  {
    v23[0] = *MEMORY[0x1E6965658];
    v23[1] = v17;
    v24[0] = v7;
    v24[1] = Value;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v19];
  }

  else
  {
    v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
  }

  return v20;
}

- (TUIVariantCell)initWithFrame:(CGRect)a3 string:(id)a4 annotation:(id)a5 traits:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v47.receiver = self;
  v47.super_class = TUIVariantCell;
  v17 = [(TUIVariantCell *)&v47 initWithFrame:x, y, width, height];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayString, a4);
    objc_storeStrong(&v18->_traits, a6);
    v19 = [v16 variantGeometries];
    variantGeometries = v18->_variantGeometries;
    v18->_variantGeometries = v19;

    v21 = objc_alloc(MEMORY[0x1E69DD250]);
    v22 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 8);
    v24 = *(MEMORY[0x1E695F058] + 16);
    v25 = *(MEMORY[0x1E695F058] + 24);
    v26 = [v21 initWithFrame:{*MEMORY[0x1E695F058], v23, v24, v25}];
    backgroundView = v18->_backgroundView;
    v18->_backgroundView = v26;

    [(UIView *)v18->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [(UIView *)v18->_backgroundView layer];
    [v28 setMasksToBounds:1];

    v29 = [(TUIVariantCell *)v18 highlightColor];
    [(UIView *)v18->_backgroundView setBackgroundColor:v29];

    [(UIView *)v18->_backgroundView setAlpha:0.0];
    [(TUIVariantCell *)v18 addSubview:v18->_backgroundView];
    v30 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v22, v23, v24, v25}];
    labelView = v18->_labelView;
    v18->_labelView = v30;

    [(UILabel *)v18->_labelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v18->_labelView setTextAlignment:1];
    v32 = [(TUIVariantCell *)v18 attributedKeycapStringForString:v14];
    [(UILabel *)v18->_labelView setAttributedText:v32];

    v33 = [(TUIVariantCell *)v18 variantTraits];
    v34 = [v33 symbolStyle];
    v35 = [(TUIVariantCell *)v18 fontForSymbolStyle:v34];
    [(UILabel *)v18->_labelView setFont:v35];

    [(UILabel *)v18->_labelView setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v18->_labelView setMinimumScaleFactor:0.6];
    v36 = [(TUIVariantCell *)v18 unhighlightedTextColor];
    [(UILabel *)v18->_labelView setTextColor:v36];

    LODWORD(v37) = 1144782848;
    [(UILabel *)v18->_labelView setContentCompressionResistancePriority:0 forAxis:v37];
    [(TUIVariantCell *)v18 addSubview:v18->_labelView];
    if ([v15 length])
    {
      v38 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v22, v23, v24, v25}];
      annotationLabelView = v18->_annotationLabelView;
      v18->_annotationLabelView = v38;

      [(UILabel *)v18->_annotationLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v18->_annotationLabelView setTextAlignment:1];
      v40 = [(TUIVariantCell *)v18 attributedKeycapStringForString:v15];
      [(UILabel *)v18->_annotationLabelView setAttributedText:v40];

      v41 = [v16 variantTraits];
      v42 = [v41 secondarySymbolStyles];
      v43 = [v42 firstObject];
      v44 = [(TUIVariantCell *)v18 fontForSymbolStyle:v43];
      [(UILabel *)v18->_annotationLabelView setFont:v44];

      v45 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)v18->_annotationLabelView setTextColor:v45];

      [(TUIVariantCell *)v18 addSubview:v18->_annotationLabelView];
    }

    [(TUIVariantCell *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v18;
}

@end