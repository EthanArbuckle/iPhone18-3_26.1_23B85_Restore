@interface TUIVariantCell
- (CGSize)intrinsicContentSize;
- (TUIVariantCell)initWithFrame:(CGRect)frame string:(id)string annotation:(id)annotation traits:(id)traits;
- (UIEdgeInsets)annotationLabelInsets;
- (UIEdgeInsets)backgroundInsets;
- (UIEdgeInsets)labelInsets;
- (double)backgroundCornerRadius;
- (id)attributedKeycapStringForString:(id)string;
- (id)constraintsToEmbedView:(id)view withinView:(id)withinView withInsets:(UIEdgeInsets)insets;
- (id)fontForSymbolStyle:(id)style;
- (id)unhighlightedTextColor;
- (id)variantTraits;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)transitionToHighlighted:(BOOL)highlighted;
- (void)updateConstraints;
@end

@implementation TUIVariantCell

- (id)variantTraits
{
  traits = [(TUIVariantCell *)self traits];
  variantTraits = [traits variantTraits];
  v5 = variantTraits;
  if (variantTraits)
  {
    traits2 = variantTraits;
  }

  else
  {
    traits2 = [(TUIVariantCell *)self traits];
  }

  v7 = traits2;

  return v7;
}

- (double)backgroundCornerRadius
{
  traits = [(TUIVariantCell *)self traits];
  v4 = 10.0;
  if ([traits blendForm] != 10)
  {
    traits2 = [(TUIVariantCell *)self traits];
    if ([traits2 blendForm] == 11)
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
  traits = [(TUIVariantCell *)self traits];
  symbolStyle = [traits symbolStyle];
  textColor = [symbolStyle textColor];
  v6 = MEMORY[0x1E69DC888];
  if (textColor)
  {
    variantTraits = [(TUIVariantCell *)self variantTraits];
    symbolStyle2 = [variantTraits symbolStyle];
    textColor2 = [symbolStyle2 textColor];
    labelColor = [v6 colorWithCGColor:UIKBGetNamedColor(textColor2)];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  return labelColor;
}

- (UIEdgeInsets)annotationLabelInsets
{
  secondarySymbolStyles = [(UIKBRenderTraits *)self->_traits secondarySymbolStyles];
  firstObject = [secondarySymbolStyles firstObject];

  if (firstObject)
  {
    [firstObject textOffset];
    v5 = v4 + v4;
    [firstObject textOffset];
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
  variantTraits = [(TUIVariantCell *)self variantTraits];
  symbolStyle = [variantTraits symbolStyle];
  [symbolStyle textOffset];
  v6 = v5;
  variantTraits2 = [(TUIVariantCell *)self variantTraits];
  symbolStyle2 = [variantTraits2 symbolStyle];
  [symbolStyle2 textOffset];
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

- (id)constraintsToEmbedView:(id)view withinView:(id)withinView withInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v26[4] = *MEMORY[0x1E69E9840];
  withinViewCopy = withinView;
  viewCopy = view;
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [withinViewCopy topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:top];
  v26[0] = v23;
  leftAnchor = [viewCopy leftAnchor];
  leftAnchor2 = [withinViewCopy leftAnchor];
  v14 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:left];
  v26[1] = v14;
  bottomAnchor = [withinViewCopy bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:bottom];
  v26[2] = v17;
  rightAnchor = [withinViewCopy rightAnchor];

  rightAnchor2 = [viewCopy rightAnchor];

  v20 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:right];
  v26[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  return v21;
}

- (CGSize)intrinsicContentSize
{
  labelView = [(TUIVariantCell *)self labelView];
  [labelView intrinsicContentSize];
  v6 = v5;

  if (![(TUIVariantCell *)self isCharacterPreviewPaddle])
  {
    labelView2 = [(TUIVariantCell *)self labelView];
    font = [labelView2 font];
    [font ascender];
    v10 = v6 + v9;

    labelView3 = [(TUIVariantCell *)self labelView];
    font2 = [labelView3 font];
    [font2 descender];
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
  traits = [(TUIVariantCell *)self traits];
  blendForm = [traits blendForm];
  if (blendForm != 10)
  {
    font2 = [(TUIVariantCell *)self traits];
    if ([font2 blendForm] != 11)
    {
      v26 = v20 + 10.0;
      goto LABEL_8;
    }
  }

  traits2 = [(TUIVariantCell *)self traits];
  symbolStyle = [traits2 symbolStyle];
  [symbolStyle textOffset];
  v26 = v20 + v25;

  if (blendForm != 10)
  {
LABEL_8:
  }

  backgroundView = [(TUIVariantCell *)self backgroundView];
  [backgroundView bounds];
  v29 = v28;

  annotationLabelView = [(TUIVariantCell *)self annotationLabelView];

  if (annotationLabelView)
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

- (id)fontForSymbolStyle:(id)style
{
  styleCopy = style;
  fontName = [styleCopy fontName];
  [styleCopy fontWeight];
  v6 = v5;
  [styleCopy fontSize];
  v8 = v7;
  v9 = [fontName isEqualToString:*MEMORY[0x1E69DDE80]];
  if ([fontName isEqualToString:*MEMORY[0x1E69DDE78]])
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

  fontName2 = [styleCopy fontName];
  v12 = [fontName2 isEqualToString:*MEMORY[0x1E69DDE70]];

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
    v13 = UIKBCreateCTFontWithSymbolStyle(styleCopy);
    goto LABEL_13;
  }

  v13 = [MEMORY[0x1E69DB878] fontWithName:fontName size:4096 traits:v10];
LABEL_13:
  v14 = v13;

  return v14;
}

- (void)transitionToHighlighted:(BOOL)highlighted
{
  v5 = 0.0;
  if (highlighted)
  {
    v5 = 1.0;
  }

  [(UIView *)self->_backgroundView setAlpha:v5];
  if (highlighted)
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

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    [(TUIVariantCell *)self transitionToHighlighted:?];
    self->_highlighted = highlighted;
  }
}

- (void)updateConstraints
{
  v41[2] = *MEMORY[0x1E69E9840];
  cellConstraints = [(TUIVariantCell *)self cellConstraints];

  if (!cellConstraints)
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
    backgroundView = [(TUIVariantCell *)self backgroundView];
    v23 = [(TUIVariantCell *)self constraintsToEmbedView:backgroundView withinView:self withInsets:v13, v15, v17, v19];
    labelView = [(TUIVariantCell *)self labelView];
    v25 = [(TUIVariantCell *)self constraintsToEmbedView:labelView withinView:backgroundView withInsets:v5, v7, v9, v11];

    v26 = [v23 arrayByAddingObjectsFromArray:v25];
    annotationLabelView = [(TUIVariantCell *)self annotationLabelView];
    v28 = annotationLabelView;
    if (annotationLabelView)
    {
      topAnchor = [annotationLabelView topAnchor];
      topAnchor2 = [backgroundView topAnchor];
      v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v37];
      v41[0] = v29;
      rightAnchor = [v28 rightAnchor];
      [backgroundView rightAnchor];
      v31 = v38 = v23;
      v32 = [rightAnchor constraintEqualToAnchor:v31 constant:v39];
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
  layer = [(UIView *)self->_backgroundView layer];
  [layer setCornerRadius:v4];

  backgroundMaskedCorners = [(TUIVariantCell *)self backgroundMaskedCorners];
  layer2 = [(UIView *)self->_backgroundView layer];
  [layer2 setMaskedCorners:backgroundMaskedCorners];
}

- (id)attributedKeycapStringForString:(id)string
{
  v24[2] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  traits = [(TUIVariantCell *)self traits];
  symbolStyle = [traits symbolStyle];
  v7 = [(TUIVariantCell *)self fontForSymbolStyle:symbolStyle];

  traits2 = [(TUIVariantCell *)self traits];
  symbolStyle2 = [traits2 symbolStyle];
  fontName = [symbolStyle2 fontName];
  traits3 = [(TUIVariantCell *)self traits];
  symbolStyle3 = [traits3 symbolStyle];
  [symbolStyle3 fontSize];
  UIKBGetXHeight(fontName, v13);

  traits4 = [(TUIVariantCell *)self traits];
  symbolStyle4 = [traits4 symbolStyle];
  v16 = UIKBGetFontAttributesWithSymbolStyle(symbolStyle4, symbolStyle4, &v22);

  v17 = *MEMORY[0x1E6965A20];
  Value = CFDictionaryGetValue(v16, *MEMORY[0x1E6965A20]);
  if (Value && v7)
  {
    v23[0] = *MEMORY[0x1E6965658];
    v23[1] = v17;
    v24[0] = v7;
    v24[1] = Value;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:v19];
  }

  else
  {
    v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy];
  }

  return v20;
}

- (TUIVariantCell)initWithFrame:(CGRect)frame string:(id)string annotation:(id)annotation traits:(id)traits
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stringCopy = string;
  annotationCopy = annotation;
  traitsCopy = traits;
  v47.receiver = self;
  v47.super_class = TUIVariantCell;
  height = [(TUIVariantCell *)&v47 initWithFrame:x, y, width, height];
  v18 = height;
  if (height)
  {
    objc_storeStrong(&height->_displayString, string);
    objc_storeStrong(&v18->_traits, traits);
    variantGeometries = [traitsCopy variantGeometries];
    variantGeometries = v18->_variantGeometries;
    v18->_variantGeometries = variantGeometries;

    v21 = objc_alloc(MEMORY[0x1E69DD250]);
    v22 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 8);
    v24 = *(MEMORY[0x1E695F058] + 16);
    v25 = *(MEMORY[0x1E695F058] + 24);
    v26 = [v21 initWithFrame:{*MEMORY[0x1E695F058], v23, v24, v25}];
    backgroundView = v18->_backgroundView;
    v18->_backgroundView = v26;

    [(UIView *)v18->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)v18->_backgroundView layer];
    [layer setMasksToBounds:1];

    highlightColor = [(TUIVariantCell *)v18 highlightColor];
    [(UIView *)v18->_backgroundView setBackgroundColor:highlightColor];

    [(UIView *)v18->_backgroundView setAlpha:0.0];
    [(TUIVariantCell *)v18 addSubview:v18->_backgroundView];
    v30 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v22, v23, v24, v25}];
    labelView = v18->_labelView;
    v18->_labelView = v30;

    [(UILabel *)v18->_labelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v18->_labelView setTextAlignment:1];
    v32 = [(TUIVariantCell *)v18 attributedKeycapStringForString:stringCopy];
    [(UILabel *)v18->_labelView setAttributedText:v32];

    variantTraits = [(TUIVariantCell *)v18 variantTraits];
    symbolStyle = [variantTraits symbolStyle];
    v35 = [(TUIVariantCell *)v18 fontForSymbolStyle:symbolStyle];
    [(UILabel *)v18->_labelView setFont:v35];

    [(UILabel *)v18->_labelView setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v18->_labelView setMinimumScaleFactor:0.6];
    unhighlightedTextColor = [(TUIVariantCell *)v18 unhighlightedTextColor];
    [(UILabel *)v18->_labelView setTextColor:unhighlightedTextColor];

    LODWORD(v37) = 1144782848;
    [(UILabel *)v18->_labelView setContentCompressionResistancePriority:0 forAxis:v37];
    [(TUIVariantCell *)v18 addSubview:v18->_labelView];
    if ([annotationCopy length])
    {
      v38 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v22, v23, v24, v25}];
      annotationLabelView = v18->_annotationLabelView;
      v18->_annotationLabelView = v38;

      [(UILabel *)v18->_annotationLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v18->_annotationLabelView setTextAlignment:1];
      v40 = [(TUIVariantCell *)v18 attributedKeycapStringForString:annotationCopy];
      [(UILabel *)v18->_annotationLabelView setAttributedText:v40];

      variantTraits2 = [traitsCopy variantTraits];
      secondarySymbolStyles = [variantTraits2 secondarySymbolStyles];
      firstObject = [secondarySymbolStyles firstObject];
      v44 = [(TUIVariantCell *)v18 fontForSymbolStyle:firstObject];
      [(UILabel *)v18->_annotationLabelView setFont:v44];

      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)v18->_annotationLabelView setTextColor:secondaryLabelColor];

      [(TUIVariantCell *)v18 addSubview:v18->_annotationLabelView];
    }

    [(TUIVariantCell *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v18;
}

@end