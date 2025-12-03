@interface _PKIdentityButton
+ (id)buttonWithLabel:(int64_t)label style:(int64_t)style;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_singleLineFitsSize:(CGSize)size;
- (CGSize)_baseIntrinsicMultiLineSize;
- (CGSize)_baseIntrinsicSingleLineSize;
- (CGSize)_intrinsicContentSizeForSingleLine:(BOOL)line;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_PKIdentityButton)initWithCoder:(id)coder;
- (_PKIdentityButton)initWithLabel:(int64_t)label style:(int64_t)style;
- (double)_adjustedCornerRadiusForScale:(double)scale;
- (id)_singleLineTitle;
- (id)_splitAttributedTitle;
- (void)_adjustVisibleLabelWithBounds:(CGRect)bounds;
- (void)_applyStyle;
- (void)_createHighlightFilterIfNecessary;
- (void)_sharedInit;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation _PKIdentityButton

+ (id)buttonWithLabel:(int64_t)label style:(int64_t)style
{
  v4 = [objc_alloc(objc_opt_class()) initWithLabel:label style:style];

  return v4;
}

- (_PKIdentityButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _PKIdentityButton;
  v5 = [(_PKIdentityButton *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_label = [coderCopy decodeIntegerForKey:@"PKIdentityButtonLabel"];
    v5->_style = [coderCopy decodeIntegerForKey:@"PKIdentityButtonStyle"];
    [coderCopy decodeFloatForKey:@"PKIdentityButtonCornerRadius"];
    v5->_cornerRadius = v6;
    [(_PKIdentityButton *)v5 _sharedInit];
  }

  return v5;
}

- (_PKIdentityButton)initWithLabel:(int64_t)label style:(int64_t)style
{
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v11.receiver = self;
  v11.super_class = _PKIdentityButton;
  v8 = [(_PKIdentityButton *)&v11 initWithFrame:v6, v7, 190.0, 57.0];
  v9 = v8;
  if (v8)
  {
    v8->_style = style;
    v8->_label = label;
    v8->_cornerRadius = 4.0;
    [(_PKIdentityButton *)v8 _sharedInit];
  }

  return v9;
}

- (void)_sharedInit
{
  [(_PKIdentityButton *)self setOpaque:0];
  layer = [(_PKIdentityButton *)self layer];
  layer = self->_layer;
  self->_layer = layer;

  v5 = self->_layer;
  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.11373 green:0.11765 blue:0.11765 alpha:1.0];
  -[CAShapeLayer setFillColor:](v5, "setFillColor:", [v6 CGColor]);

  v7 = self->_layer;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  [(CAShapeLayer *)v7 setLineWidth:1.0 / v9];

  v10 = objc_alloc_init(PKShapeView);
  maskView = self->_maskView;
  self->_maskView = v10;

  v12 = self->_layer;
  layer2 = [(PKShapeView *)self->_maskView layer];
  [(CAShapeLayer *)v12 setMask:layer2];

  v14 = MEMORY[0x1E69B8948];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v40 = [v14 imageNamed:@"AddPass_Icon" inBundle:v15];

  v39 = [MEMORY[0x1E69B8950] constraintsWithAspectFitToSize:{28.0, 20.0}];
  v16 = [v40 resizedImageWithConstraints:v39];
  v17 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v16];
  [v17 size];
  self->_iconSize.width = v18;
  self->_iconSize.height = v19;
  v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v17];
  iconView = self->_iconView;
  self->_iconView = v20;

  [(_PKIdentityButton *)self addSubview:self->_iconView];
  _singleLineTitle = [(_PKIdentityButton *)self _singleLineTitle];
  v23 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  singleLineLabel = self->_singleLineLabel;
  self->_singleLineLabel = v23;

  v25 = self->_singleLineLabel;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v25 setBackgroundColor:clearColor];

  v27 = self->_singleLineLabel;
  v28 = TitleFormattedString(0, _singleLineTitle, 1, &self->_singleLineAlignmentInset.top);
  [(UILabel *)v27 setAttributedText:v28];

  [(UILabel *)self->_singleLineLabel setNumberOfLines:1];
  [(UILabel *)self->_singleLineLabel sizeToFit];
  [(_PKIdentityButton *)self addSubview:self->_singleLineLabel];
  v29 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  multiLineLabel = self->_multiLineLabel;
  self->_multiLineLabel = v29;

  v31 = self->_multiLineLabel;
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v31 setBackgroundColor:clearColor2];

  v33 = self->_multiLineLabel;
  _splitAttributedTitle = [(_PKIdentityButton *)self _splitAttributedTitle];
  [(UILabel *)v33 setAttributedText:_splitAttributedTitle];

  [(UILabel *)self->_multiLineLabel setNumberOfLines:2];
  [(UILabel *)self->_multiLineLabel sizeToFit];
  [(_PKIdentityButton *)self addSubview:self->_multiLineLabel];
  [(UILabel *)self->_singleLineLabel frame];
  self->_singleLineSize.width = v35;
  self->_singleLineSize.height = v36;
  [(UILabel *)self->_multiLineLabel frame];
  self->_multiLineSize.width = v37;
  self->_multiLineSize.height = v38;
  [(_PKIdentityButton *)self _applyStyle];
  [(_PKIdentityButton *)self bounds];
  [(_PKIdentityButton *)self _adjustVisibleLabelWithBounds:?];
  [(_PKIdentityButton *)self setAccessibilityLabel:_singleLineTitle];
  [(_PKIdentityButton *)self setAccessibilityTraits:*MEMORY[0x1E69DD9B8]];
  [(_PKIdentityButton *)self sizeToFit];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _PKIdentityButton;
  coderCopy = coder;
  [(_PKIdentityButton *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_style forKey:{@"PKIdentityButtonStyle", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_label forKey:@"PKIdentityButtonLabel"];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PKIdentityButton;
    v5 = [(_PKIdentityButton *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  [(_PKIdentityButton *)self _intrinsicContentSizeForSingleLine:0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  [(_PKIdentityButton *)self _intrinsicContentSizeForSingleLine:[(_PKIdentityButton *)self _singleLineFitsSize:fits.width]];
  v5 = fmin(height / v4, 1.0);
  v7 = v6 * v5;
  v8 = v4 * v5;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_intrinsicContentSizeForSingleLine:(BOOL)line
{
  if (line)
  {
    [(_PKIdentityButton *)self _baseIntrinsicSingleLineSize];
  }

  else
  {
    [(_PKIdentityButton *)self _baseIntrinsicMultiLineSize];
  }

  v5 = v3;
  v6 = v4;
  PKFloatRoundToPixel();
  v8 = v6 + v7 * 2.0;
  v9 = v5 + v7 * 2.0;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)_baseIntrinsicSingleLineSize
{
  v2 = self->_iconSize.width + 8.0 + self->_singleLineSize.width - self->_singleLineAlignmentInset.left - self->_singleLineAlignmentInset.right;
  v3 = fmax(self->_iconSize.height, self->_singleLineSize.height - self->_singleLineAlignmentInset.top - self->_singleLineAlignmentInset.bottom);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_baseIntrinsicMultiLineSize
{
  v2 = self->_iconSize.width + 8.0 + self->_multiLineSize.width - self->_multiLineAlignmentInset.left - self->_multiLineAlignmentInset.right;
  v3 = fmax(self->_iconSize.height, self->_multiLineSize.height - self->_multiLineAlignmentInset.top - self->_multiLineAlignmentInset.bottom);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v126.receiver = self;
  v126.super_class = _PKIdentityButton;
  [(_PKIdentityButton *)&v126 layoutSubviews];
  [(_PKIdentityButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _shouldReverseLayoutDirection = [(_PKIdentityButton *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v12 = CGRectMaxXEdge;
  }

  else
  {
    v12 = CGRectMinXEdge;
  }

  [(PKShapeView *)self->_maskView setFrame:v4, v6, v8, v10];
  v112 = v6;
  [(_PKIdentityButton *)self _adjustVisibleLabelWithBounds:v4, v6, v8, v10];
  [(UILabel *)self->_singleLineLabel alpha];
  v14 = v13;
  [(_PKIdentityButton *)self _intrinsicContentSizeForSingleLine:v13 > 0.0];
  v16 = v15;
  PKFloatRoundToPixel();
  v18 = v17;
  v19 = fmin(v10 / v16, 1.0);
  memset(&v125, 0, sizeof(v125));
  if (v19 == 1.0)
  {
    v20 = *(MEMORY[0x1E69792E8] + 80);
    *&v125.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v125.m33 = v20;
    v21 = *(MEMORY[0x1E69792E8] + 112);
    *&v125.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v125.m43 = v21;
    v22 = *(MEMORY[0x1E69792E8] + 16);
    *&v125.m11 = *MEMORY[0x1E69792E8];
    *&v125.m13 = v22;
    v23 = *(MEMORY[0x1E69792E8] + 48);
    *&v125.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v125.m23 = v23;
  }

  else
  {
    CATransform3DMakeScale(&v125, v19, v19, 1.0);
  }

  v119 = v14;
  width = self->_singleLineSize.width;
  left = self->_singleLineAlignmentInset.left;
  top = self->_singleLineAlignmentInset.top;
  bottom = self->_singleLineAlignmentInset.bottom;
  v103 = v19 * self->_iconSize.width;
  amount = self->_singleLineAlignmentInset.right;
  v25 = v19 * 8.0;
  rect = v19 * self->_multiLineSize.width;
  v26 = self->_multiLineAlignmentInset.top;
  v27 = self->_multiLineAlignmentInset.left;
  v28 = self->_multiLineAlignmentInset.bottom;
  right = self->_multiLineAlignmentInset.right;
  if (v8 != self->_boundsSize.width || v10 != self->_boundsSize.height)
  {
    self->_boundsSize.width = v8;
    self->_boundsSize.height = v10;
    v30 = MEMORY[0x1E69B9168];
    v31 = v4;
    v33 = *MEMORY[0x1E695EFF8];
    v32 = *(MEMORY[0x1E695EFF8] + 8);
    v115 = width;
    v108 = v27;
    v110 = v26;
    v106 = v28;
    v102 = right;
    [(_PKIdentityButton *)self _adjustedCornerRadiusForScale:v19];
    v35 = v34;
    v36 = v33;
    v4 = v31;
    v37 = v32;
    v25 = v19 * 8.0;
    v38 = [v30 pathWithRoundedRect:v36 cornerRadius:{v37, v8, v10, v35}];
    -[CAShapeLayer setPath:](self->_layer, "setPath:", [v38 CGPath]);
    shapeLayer = [(PKShapeView *)self->_maskView shapeLayer];
    [shapeLayer setPath:{objc_msgSend(v38, "CGPath")}];

    right = v102;
    v28 = v106;
    v27 = v108;
    v26 = v110;
    width = v115;
  }

  v116 = v19 * v26;
  v118 = v19 * width;
  v114 = v19 * v27;
  v92 = v19 * v28;
  v91 = v19 * right;
  memset(&slice, 0, sizeof(slice));
  v40 = v4 + v18 * v19;
  v41 = v112 + v18 * v19;
  v42 = v18 * v19 + v18 * v19;
  v43 = v8 - v42;
  v44 = v10 - v42;
  PKSizeAlignedInRect();
  remainder = v127;
  CGRectDivide(v127, &slice, &remainder, v103, v12);
  v45 = 0.0;
  v46 = 0.0;
  v47 = 0.0;
  v48 = 0.0;
  if (v119 <= 0.0)
  {
    PKSizeAlignedInRect();
  }

  v107 = v46;
  v109 = v48;
  v111 = v47;
  v113 = v45;
  v100 = v19 * left;
  v101 = v19 * top;
  v98 = v19 * bottom;
  v96 = v19 * amount;
  amounta = v25;
  CGRectDivide(remainder, &slice, &remainder, v25, v12);
  CGRectDivide(remainder, &slice, &remainder, rect, v12);
  v49 = v116 + v92;
  PKSizeAlignedInRect();
  v93 = v51;
  v94 = v50;
  v53 = v52;
  recta = v114 + v91 + v54;
  remainder.origin.x = v40;
  remainder.origin.y = v41;
  remainder.size.width = v43;
  remainder.size.height = v44;
  PKSizeAlignedInRect();
  remainder = v128;
  CGRectDivide(v128, &slice, &remainder, v103, v12);
  if (v119 > 0.0)
  {
    PKSizeAlignedInRect();
    v109 = v55;
    v111 = v56;
    v107 = v57;
    v113 = v58;
  }

  v117 = v93 - v116;
  v59 = v49 + v53;
  CGRectDivide(remainder, &slice, &remainder, amounta, v12);
  CGRectDivide(remainder, &slice, &remainder, v118, v12);
  PKSizeAlignedInRect();
  v64 = v60 - v100;
  v65 = v61 - v101;
  v66 = v100 + v96 + v62;
  v67 = v101 + v98 + v63;
  if (v119 <= 0.0)
  {
    v68 = v100 + v96 + v62;
  }

  else
  {
    v68 = recta;
  }

  v69 = v60 - v100;
  v70 = v61 - v101;
  v71 = v100 + v96 + v62;
  v72 = v101 + v98 + v63;
  if (v119 <= 0.0)
  {
    v69 = v94 - v114;
    v70 = v117;
    v71 = recta;
    v72 = v59;
  }

  if (_shouldReverseLayoutDirection)
  {
    MinX = CGRectGetMaxX(*&v69) - v68;
  }

  else
  {
    MinX = CGRectGetMinX(*&v69);
  }

  if (v119 <= 0.0)
  {
    v74 = v94 - v114;
  }

  else
  {
    v74 = MinX;
  }

  if (v119 <= 0.0)
  {
    v75 = MinX;
  }

  else
  {
    v75 = v64;
  }

  layer = [(UIImageView *)self->_iconView layer];
  [layer anchorPoint];
  v78 = v77;
  v80 = v79;
  v122 = v125;
  [layer setTransform:&v122];
  [layer setPosition:{v109 + v78 * v107, v111 + v80 * v113}];
  layer2 = [(UILabel *)self->_multiLineLabel layer];

  [layer2 anchorPoint];
  v83 = v82;
  v85 = v84;
  v122 = v125;
  [layer2 setTransform:&v122];
  [layer2 setPosition:{v74 + v83 * recta, v117 + v85 * v59}];
  layer3 = [(UILabel *)self->_singleLineLabel layer];

  [layer3 anchorPoint];
  v88 = v87;
  v90 = v89;
  v122 = v125;
  [layer3 setTransform:&v122];
  [layer3 setPosition:{v75 + v88 * v66, v65 + v90 * v67}];
}

- (void)_adjustVisibleLabelWithBounds:(CGRect)bounds
{
  v4 = [(_PKIdentityButton *)self _singleLineFitsSize:bounds.size.width, bounds.size.height];
  [(UILabel *)self->_multiLineLabel setAlpha:(v4 ^ 1)];
  singleLineLabel = self->_singleLineLabel;

  [(UILabel *)singleLineLabel setAlpha:v4];
}

- (BOOL)_singleLineFitsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(_PKIdentityButton *)self _intrinsicContentSizeForSingleLine:1];
  return v6 * fmin(height / v5, 1.0) <= width;
}

- (id)_singleLineTitle
{
  v3 = self->_label - 1;
  if (v3 > 2)
  {
    v4 = @"IDENTITY_VERIFY_IDENTITY_BUTTON_TITLE";
  }

  else
  {
    v4 = off_1E8020DE0[v3];
  }

  v5 = PKLocalizedString(&v4->isa);

  return v5;
}

- (id)_splitAttributedTitle
{
  v3 = self->_label - 1;
  if (v3 > 2)
  {
    v4 = @"IDENTITY_VERIFY_IDENTITY_BUTTON_SPLIT_SURTITLE";
  }

  else
  {
    v4 = off_1E8020DF8[v3];
  }

  v5 = PKLocalizedString(&v4->isa);
  v6 = PKLocalizedString(&cfstr_IdentityButton.isa);
  v7 = PKLocalizedString(&cfstr_Pkidentityveri.isa);
  v8 = [v7 isEqualToString:@"1"];

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v5 = v6;
  }

  if ([(_PKIdentityButton *)self _shouldReverseLayoutDirection])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = TitleFormattedString(v5, v9, v10, &self->_multiLineAlignmentInset.top);

  return v11;
}

- (void)_createHighlightFilterIfNecessary
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!self->_highlightFilter)
  {
    layer = [(_PKIdentityButton *)self layer];
    v4 = objc_alloc(MEMORY[0x1E6979378]);
    v5 = [v4 initWithType:*MEMORY[0x1E6979CB0]];
    highlightFilter = self->_highlightFilter;
    self->_highlightFilter = v5;

    [(CAFilter *)self->_highlightFilter setName:@"highlightFilter"];
    v7 = self->_highlightFilter;
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    -[CAFilter setValue:forKey:](v7, "setValue:forKey:", [v8 CGColor], @"inputColor");

    v10[0] = self->_highlightFilter;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [layer setFilters:v9];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v12.receiver = self;
  v12.super_class = _PKIdentityButton;
  [(_PKIdentityButton *)&v12 setHighlighted:?];
  if (self->_highlighted != highlightedCopy)
  {
    self->_highlighted = highlightedCopy;
    [(_PKIdentityButton *)self _createHighlightFilterIfNecessary];
    v5 = 0.6;
    if (!highlightedCopy)
    {
      v5 = 1.0;
    }

    v6 = [MEMORY[0x1E69DC888] colorWithWhite:v5 alpha:?];
    v7 = MEMORY[0x1E69DC888];
    presentationLayer = [(CAShapeLayer *)self->_layer presentationLayer];
    v9 = [presentationLayer valueForKeyPath:@"filters.highlightFilter.inputColor"];
    if (!v9)
    {
      v9 = [(CAShapeLayer *)self->_layer valueForKeyPath:@"filters.highlightFilter.inputColor"];
    }

    v10 = [v7 colorWithCGColor:v9];

    -[CAShapeLayer setValue:forKeyPath:](self->_layer, "setValue:forKeyPath:", [v6 CGColor], @"filters.highlightFilter.inputColor");
    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.highlightFilter.inputColor"];
    [v11 setDuration:0.15];
    [v11 setFillMode:*MEMORY[0x1E69797E8]];
    [v11 setFromValue:{objc_msgSend(v10, "CGColor")}];
    [v11 setToValue:{objc_msgSend(v6, "CGColor")}];
    [(CAShapeLayer *)self->_layer removeAnimationForKey:@"highlight"];
    [(CAShapeLayer *)self->_layer addAnimation:v11 forKey:@"highlight"];
  }
}

- (void)_applyStyle
{
  layer = self->_layer;
  if (self->_style == 1)
  {
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
    v3 = v5;
    -[CAShapeLayer setStrokeColor:](layer, "setStrokeColor:", [v5 CGColor]);
  }

  else
  {
    fillColor = [(CAShapeLayer *)self->_layer fillColor];

    [(CAShapeLayer *)layer setStrokeColor:fillColor];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (radius < 0.0)
  {
    radius = 0.0;
  }

  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(_PKIdentityButton *)self setNeedsDisplay];
  }
}

- (double)_adjustedCornerRadiusForScale:(double)scale
{
  [(_PKIdentityButton *)self cornerRadius];

  PKFloatRoundToPixelWithScale();
  return result;
}

@end