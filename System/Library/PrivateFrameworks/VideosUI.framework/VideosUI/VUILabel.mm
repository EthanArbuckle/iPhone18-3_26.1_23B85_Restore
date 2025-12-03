@interface VUILabel
+ (VUILabel)labelWithAttributedString:(id)string textLayout:(id)layout existingLabel:(id)label;
+ (VUILabel)labelWithString:(id)string textLayout:(id)layout existingLabel:(id)label;
+ (unint64_t)_numberOfLinesForLayout:(id)layout;
- (BOOL)_isTruncatedForTruncationMask;
- (BOOL)_updateTextColorExcludingAttachments:(id)attachments;
- (CGRect)cachedTextRectForBounds;
- (CGRect)previousBounds;
- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(int64_t)lines;
- (CGSize)cachedSizeThatFits;
- (CGSize)previousTargetSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (UIEdgeInsets)padding;
- (VUILabel)initWithFrame:(CGRect)frame;
- (double)bottomMarginWithBaselineMargin:(double)margin;
- (double)bottomMarginWithBaselineMargin:(double)margin maximumContentSizeCategory:(unint64_t)category;
- (double)topMarginToLabel:(id)label withBaselineMargin:(double)margin;
- (double)topMarginWithBaselineMargin:(double)margin;
- (double)topMarginWithBaselineMargin:(double)margin maximumContentSizeCategory:(unint64_t)category;
- (double)vuiBaselineHeight;
- (id)_rangeOfStringExcludingAttachments:(id)attachments;
- (id)attributedText;
- (id)defaultParagraphStyle;
- (unint64_t)numberOfLinesRequiredForTextWidth:(double)width;
- (void)_clearCachedValues;
- (void)_configureAlignmentIfNeeded;
- (void)_setupTruncationMask;
- (void)_updateCompositingFilter;
- (void)_updateTextColor:(BOOL)color;
- (void)_updateTextColorWithForceUpdate:(BOOL)update;
- (void)_updateTruncationMask;
- (void)dealloc;
- (void)drawTextInRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setAttributedText:(id)text;
- (void)setBaselineAdjustment:(int64_t)adjustment;
- (void)setEnabled:(BOOL)enabled;
- (void)setFont:(id)font;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setNumberOfLines:(int64_t)lines;
- (void)setPadding:(UIEdgeInsets)padding;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)setVuiAttributedText:(id)text;
- (void)setVuiText:(id)text;
- (void)tintColorDidChange;
- (void)updateTextLayout:(id)layout;
- (void)useExtremeSizingOnTallScripts;
- (void)vui_setHighlighted:(BOOL)highlighted;
- (void)vui_setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator;
@end

@implementation VUILabel

+ (VUILabel)labelWithString:(id)string textLayout:(id)layout existingLabel:(id)label
{
  stringCopy = string;
  layoutCopy = layout;
  labelCopy = label;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = labelCopy;
  }

  else
  {
    v10 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  v11 = v10;
  fadesOutTextTruncation = [layoutCopy fadesOutTextTruncation];
  computationLabel = [v11 computationLabel];
  v14 = computationLabel;
  if (fadesOutTextTruncation)
  {
    if (computationLabel)
    {
      computationLabel2 = [v11 computationLabel];
    }

    else
    {
      computationLabel2 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }

    v17 = computationLabel2;

    [v17 setVuiNumberOfLines:0];
    [v17 setVuiAlpha:0.0];
    [v11 setComputationLabel:v17];
    [v11 addSubview:v17];
  }

  else
  {
    [computationLabel removeFromSuperview];

    [v11 setComputationLabel:0];
    [v11 setTruncationMask:0];
    layer = [v11 layer];
    [layer setMask:0];

    v17 = 0;
  }

  [v17 setTextLayout:layoutCopy];
  [v11 setTextLayout:layoutCopy];
  [v11 setPreferredVibrancy:{objc_msgSend(layoutCopy, "preferredVibrancy")}];
  [v11 setVuiNumberOfLines:{+[VUILabel _numberOfLinesForLayout:](VUILabel, "_numberOfLinesForLayout:", layoutCopy)}];
  [layoutCopy padding];
  [v11 setPadding:?];
  [v11 setHighlightedTextColor:0];
  [layoutCopy fontSize];
  [v11 setAdjustsFontForContentSizeCategory:v18 == 0.0];
  [layoutCopy fontSize];
  [v17 setAdjustsFontForContentSizeCategory:v19 == 0.0];
  [layoutCopy minimumScaleFactor];
  if (v20 > 0.0)
  {
    [layoutCopy minimumScaleFactor];
    [v11 setMinimumScaleFactor:?];
    [v11 setAdjustsFontSizeToFitWidth:1];
    [layoutCopy minimumScaleFactor];
    [v17 setMinimumScaleFactor:?];
    [v17 setAdjustsFontSizeToFitWidth:1];
  }

  v21 = [layoutCopy attributedStringWithString:stringCopy view:v11];
  if ([v11 vuiIsRTL] && objc_msgSend(v21, "length"))
  {
    v35 = xmmword_1E4296B90;
    v22 = *MEMORY[0x1E69DB688];
    v23 = [v21 attribute:*MEMORY[0x1E69DB688] atIndex:0 longestEffectiveRange:&v35 inRange:{0, objc_msgSend(v21, "length")}];
    v24 = [v23 mutableCopy];

    if (v35 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = [v21 mutableCopy];
      [v24 setBaseWritingDirection:1];
      [v25 addAttribute:v22 value:v24 range:v35];

      v21 = v25;
    }
  }

  [v11 setVuiAttributedText:v21];
  shadow = [layoutCopy shadow];
  if (shadow)
  {
    v27 = shadow;
    appliesShadowToContainer = [layoutCopy appliesShadowToContainer];

    if (appliesShadowToContainer)
    {
      shadow2 = [layoutCopy shadow];
      layer2 = [v11 layer];
      shadowColor = [shadow2 shadowColor];
      [layer2 setShadowColor:{objc_msgSend(shadowColor, "CGColor")}];

      [shadow2 shadowBlurRadius];
      [layer2 setShadowRadius:?];
      [shadow2 shadowOffset];
      [layer2 setShadowOffset:?];
      [layer2 setMasksToBounds:0];
    }
  }

  if (v21 && [v21 length])
  {
    v32 = [v21 attributesAtIndex:0 effectiveRange:0];
  }

  else
  {
    v32 = [layoutCopy defaultAttributesForLabel:v11];
  }

  v33 = v32;
  [v11 _setDefaultAttributes:v32];
  [v17 _setDefaultAttributes:v33];
  [v11 _updateCompositingFilter];
  [v11 _configureAlignmentIfNeeded];
  if ([layoutCopy enableAXUnderlineButtonShape])
  {
    [v11 _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
  }

  [v11 _updateTextColorWithForceUpdate:0];

  return v11;
}

+ (VUILabel)labelWithAttributedString:(id)string textLayout:(id)layout existingLabel:(id)label
{
  layoutCopy = layout;
  labelCopy = label;
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = labelCopy;
  }

  else
  {
    v10 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  v11 = v10;
  fadesOutTextTruncation = [layoutCopy fadesOutTextTruncation];
  computationLabel = [v11 computationLabel];
  v14 = computationLabel;
  if (fadesOutTextTruncation)
  {
    if (computationLabel)
    {
      computationLabel2 = [v11 computationLabel];
    }

    else
    {
      computationLabel2 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }

    v17 = computationLabel2;

    [v17 setVuiNumberOfLines:0];
    [v17 setVuiAlpha:0.0];
    [v11 setComputationLabel:v17];
    [v11 addSubview:v17];
  }

  else
  {
    [computationLabel removeFromSuperview];

    [v11 setComputationLabel:0];
    [v11 setTruncationMask:0];
    layer = [v11 layer];
    [layer setMask:0];

    v17 = 0;
  }

  [v17 setTextLayout:layoutCopy];
  [v11 setTextLayout:layoutCopy];
  [v11 setVuiNumberOfLines:{+[VUILabel _numberOfLinesForLayout:](VUILabel, "_numberOfLinesForLayout:", layoutCopy)}];
  [v11 setPreferredVibrancy:{objc_msgSend(layoutCopy, "preferredVibrancy")}];
  [v11 setHighlightedTextColor:0];
  [layoutCopy fontSize];
  [v11 setAdjustsFontForContentSizeCategory:v18 == 0.0];
  [layoutCopy fontSize];
  [v17 setAdjustsFontForContentSizeCategory:v19 == 0.0];
  [layoutCopy minimumScaleFactor];
  if (v20 > 0.0)
  {
    [layoutCopy minimumScaleFactor];
    [v11 setMinimumScaleFactor:?];
    [v11 setAdjustsFontSizeToFitWidth:1];
    [layoutCopy minimumScaleFactor];
    [v17 setMinimumScaleFactor:?];
    [v17 setAdjustsFontSizeToFitWidth:1];
  }

  v21 = [layoutCopy attributedStringWithAttributedString:stringCopy view:v11 updateTextColor:{objc_msgSend(layoutCopy, "shouldUpdateTextColor")}];

  [v11 setVuiAttributedText:v21];
  [v11 _updateCompositingFilter];
  [v11 _configureAlignmentIfNeeded];
  if ([layoutCopy enableAXUnderlineButtonShape])
  {
    [v11 _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
  }

  return v11;
}

+ (unint64_t)_numberOfLinesForLayout:(id)layout
{
  v3 = MEMORY[0x1E69DCEB0];
  layoutCopy = layout;
  mainScreen = [v3 mainScreen];
  traitCollection = [mainScreen traitCollection];

  v7 = [layoutCopy numberOfLinesForTraitCollection:traitCollection];
  return v7;
}

- (VUILabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v25[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = VUILabel;
  v7 = [(VUILabel *)&v23 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    *(v7 + 119) = x;
    *(v7 + 120) = y;
    *(v7 + 121) = width;
    *(v7 + 122) = height;
    v9 = *(MEMORY[0x1E695F058] + 16);
    *(v7 + 984) = *MEMORY[0x1E695F058];
    *(v7 + 1000) = v9;
    *(v7 + 108) = 0;
    *(v7 + 111) = width;
    *(v7 + 112) = height;
    *(v7 + 904) = *MEMORY[0x1E695F060];
    [v7 setPreferredVibrancy:0];
    objc_initWeak(&location, v8);
    v10 = objc_opt_self();
    v25[0] = v10;
    v11 = objc_opt_self();
    v25[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __26__VUILabel_initWithFrame___block_invoke;
    v20[3] = &unk_1E872E760;
    objc_copyWeak(&v21, &location);
    [(VUILabel *)v8 vui_registerForTraitChanges:v12 withHandler:v20];

    v13 = objc_opt_self();
    v24 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __26__VUILabel_initWithFrame___block_invoke_2;
    v18[3] = &unk_1E872E760;
    objc_copyWeak(&v19, &location);
    [(VUILabel *)v8 vui_registerForTraitChanges:v14 withHandler:v18];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_contrastSettingsDidChange name:*MEMORY[0x1E69DD8B8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v8 selector:sel_transparencySettingsDidChange name:*MEMORY[0x1E69DD920] object:0];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __26__VUILabel_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained traitCollection];
  v2 = [WeakRetained textLayout];
  v3 = [v2 numberOfLinesForTraitCollection:v1];

  [WeakRetained setVuiNumberOfLines:v3];
  v4 = [WeakRetained textLayout];

  if (v4)
  {
    v5 = [WeakRetained attributedTextProvider];

    if (!v5 || ([WeakRetained attributedTextProvider], v6 = objc_claimAutoreleasedReturnValue(), v6[2](), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
    {
      v8 = [WeakRetained textLayout];
      v9 = [WeakRetained attributedText];
      v10 = [v9 string];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = &stru_1F5DB25C0;
      }

      v7 = [v8 attributedStringWithString:v12 view:WeakRetained];
    }

    [WeakRetained setAttributedText:v7];
    if (([WeakRetained isEnabled] & 1) != 0 || (objc_msgSend(WeakRetained, "textLayout"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "disabledColor"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
    {
      if (WeakRetained[809] != 1)
      {
        goto LABEL_15;
      }

      v17 = [WeakRetained textLayout];
      v18 = [v17 highlightOrSelectedColor];

      if (!v18)
      {
        goto LABEL_15;
      }

      v15 = [WeakRetained textLayout];
      v16 = [v15 highlightOrSelectedColor];
    }

    else
    {
      v15 = [WeakRetained textLayout];
      v16 = [v15 disabledColor];
    }

    v19 = v16;
    [WeakRetained setTextColor:v16];

LABEL_15:
  }
}

void __26__VUILabel_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained textLayout];
  v2 = [v1 shouldUpdateTextColor];

  if (v2)
  {
    [WeakRetained _updateTextColorWithForceUpdate:0];
  }

  [WeakRetained _updateCompositingFilter];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD8B8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  v5.receiver = self;
  v5.super_class = VUILabel;
  [(VUILabel *)&v5 dealloc];
}

- (double)topMarginToLabel:(id)label withBaselineMargin:(double)margin
{
  labelCopy = label;
  if (labelCopy)
  {
    HasExuberatedLineHeight = CTFontHasExuberatedLineHeight();
    [(VUILabel *)self languageAwareSystemSpacingMultiplier];
    v9 = v8;
    if ([(VUILabel *)self useLanguageAwareMarginScaling]&& HasExuberatedLineHeight)
    {
      font = [(VUILabel *)self font];
      [font _scaledValueForValue:1 useLanguageAwareScaling:margin];
      v12 = v11;

LABEL_13:
      [(VUILabel *)self baselineHeight];
      v20 = v12 - v19;
      [labelCopy vui_baselineOffsetFromBottom];
      v15 = v20 - v21;
      goto LABEL_14;
    }

    if (v9 > 0.0)
    {
      v14 = HasExuberatedLineHeight;
    }

    else
    {
      v14 = 0;
    }

    if (v14 != 1)
    {
      v16 = MEMORY[0x1E69DF6D0];
      traitCollection = [(VUILabel *)self traitCollection];
      [v16 scaleContentSizeValue:traitCollection forTraitCollection:-[VUITextLayout maximumContentSizeCategory](self->_textLayout maximumContentSizeCategory:{"maximumContentSizeCategory"), margin}];
      v12 = v18;

      goto LABEL_13;
    }

    [(VUILabel *)self _systemSpacingBelowView:labelCopy multiplier:v9];
  }

  else
  {
    [(VUILabel *)self topMarginWithBaselineMargin:margin];
  }

  v15 = v13;
LABEL_14:

  return v15;
}

- (unint64_t)numberOfLinesRequiredForTextWidth:(double)width
{
  result = [(VUILabel *)self attributedText];
  if (result)
  {
    v6 = result;
    attributedText = [(VUILabel *)self attributedText];
    v8 = [attributedText length];

    if (v8)
    {
      [(UIView *)self vui_sizeThatFits:0 layout:width, 0.0];
      v10 = v9;
      font = [(VUILabel *)self font];
      [font lineHeight];
      v13 = v12;

      if (v13 == 0.0)
      {
        v14 = VUIDefaultLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(VUILabel *)self numberOfLinesRequiredForTextWidth:v14];
        }

        return 1;
      }

      else
      {
        v15 = floor(v10 / v13);
        v16 = ceil(v10 / v13);
        if (v10 / v13 - v15 <= 0.9)
        {
          return v15;
        }

        return v16;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)updateTextLayout:(id)layout
{
  layoutCopy = layout;
  [(VUILabel *)self setTextLayout:layoutCopy];
  computationLabel = [(VUILabel *)self computationLabel];
  [computationLabel setTextLayout:layoutCopy];
}

- (id)attributedText
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  attributedText = [(VUILabel *)&v4 attributedText];

  return attributedText;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  onlyCopy = only;
  height = subviews.height;
  width = subviews.width;
  v16.receiver = self;
  v16.super_class = VUILabel;
  [VUILabel vui_layoutSubviews:sel_vui_layoutSubviews_computationOnly_ computationOnly:?];
  if (onlyCopy)
  {
    [(VUILabel *)self sizeThatFits:width, height];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = v8;
    v13 = v9;
    [(VUILabel *)self layoutSubviews];
  }

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)topMarginWithBaselineMargin:(double)margin
{
  maximumContentSizeCategory = [(VUITextLayout *)self->_textLayout maximumContentSizeCategory];

  [(VUILabel *)self topMarginWithBaselineMargin:maximumContentSizeCategory maximumContentSizeCategory:margin];
  return result;
}

- (double)bottomMarginWithBaselineMargin:(double)margin
{
  maximumContentSizeCategory = [(VUITextLayout *)self->_textLayout maximumContentSizeCategory];

  [(VUILabel *)self bottomMarginWithBaselineMargin:maximumContentSizeCategory maximumContentSizeCategory:margin];
  return result;
}

- (void)setVuiText:(id)text
{
  textCopy = text;
  [(VUILabel *)self setText:textCopy];
  [(VUILabel *)self->_computationLabel setText:textCopy];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUILabel;
  [(VUILabel *)&v3 layoutSubviews];
  [(VUILabel *)self _updateTruncationMask];
}

- (double)vuiBaselineHeight
{
  [(VUILabel *)self _firstBaselineOffsetFromTop];
  v4 = v3;
  if (v3 <= 0.0)
  {
    font = [(VUILabel *)self font];

    if (font)
    {
      font2 = [(VUILabel *)self font];
      [font2 baselineHeight];
      v4 = v7;
    }
  }

  return v4;
}

- (void)setVuiAttributedText:(id)text
{
  textCopy = text;
  [(VUILabel *)self setAttributedText:textCopy];
  [(VUILabel *)self->_computationLabel setAttributedText:textCopy];
}

- (double)topMarginWithBaselineMargin:(double)margin maximumContentSizeCategory:(unint64_t)category
{
  v7 = MEMORY[0x1E69DF6D0];
  vuiTraitCollection = [(VUILabel *)self vuiTraitCollection];
  [v7 scaleContentSizeValue:vuiTraitCollection forTraitCollection:category maximumContentSizeCategory:margin];
  v10 = v9;

  [(VUILabel *)self baselineHeight];
  return v10 - v11;
}

- (double)bottomMarginWithBaselineMargin:(double)margin maximumContentSizeCategory:(unint64_t)category
{
  v7 = MEMORY[0x1E69DF6D0];
  vuiTraitCollection = [(VUILabel *)self vuiTraitCollection];
  [v7 scaleContentSizeValue:vuiTraitCollection forTraitCollection:category maximumContentSizeCategory:margin];
  v10 = v9;

  [(VUILabel *)self _baselineOffsetFromBottom];
  return v10 - v11;
}

- (void)setAttributedText:(id)text
{
  v43 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v5 = [textCopy mutableCopy];
  if (UIAccessibilityDarkerSystemColorsEnabled() || UIAccessibilityIsReduceTransparencyEnabled())
  {
    v6 = *MEMORY[0x1E69DB650];
    v7 = [textCopy length];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __30__VUILabel_setAttributedText___block_invoke;
    v40[3] = &unk_1E8731988;
    v40[4] = self;
    v41 = v5;
    [textCopy enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v40}];
  }

  v8 = [(VUILabel *)self _rangeOfStringExcludingAttachments:textCopy];
  textLayout = self->_textLayout;
  if (textLayout && -[VUITextLayout appliesDirectionalIsolates](textLayout, "appliesDirectionalIsolates") && [v8 count])
  {
    v31 = textCopy;
    selfCopy = self;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = v8;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v37;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(obj);
          }

          rangeValue = [*(*(&v36 + 1) + 8 * i) rangeValue];
          v16 = v15;
          v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⁨"];
          [v5 insertAttributedString:v17 atIndex:rangeValue];

          v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⁩"];
          [v5 insertAttributedString:v18 atIndex:rangeValue + v16];
        }

        v11 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v11);
    }

    self = selfCopy;
    effectiveUserInterfaceLayoutDirection = [(VUILabel *)selfCopy effectiveUserInterfaceLayoutDirection];
    v20 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v21 = @"⁧";
    }

    else
    {
      v21 = @"⁦";
    }

    v22 = [v20 initWithString:{v21, v29, v31}];
    [v5 insertAttributedString:v22 atIndex:0];

    v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⁩"];
    [v5 appendAttributedString:v23];

    v8 = v30;
    textCopy = v32;
  }

  v24 = +[VUIInterfaceFactory sharedInstance];
  languageStringHandler = [v24 languageStringHandler];

  v26 = [v5 copy];
  defaultParagraphStyle = [(VUILabel *)self defaultParagraphStyle];
  v28 = [languageStringHandler makeLanguageAwareAttributedString:v26 defaultParagraphStyle:defaultParagraphStyle];

  v35.receiver = self;
  v35.super_class = VUILabel;
  [(VUILabel *)&v35 setAttributedText:v28];
  [(VUILabel *)self _clearCachedValues];
}

void __30__VUILabel_setAttributedText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v16;
  if (isKindOfClass)
  {
    v9 = v16;
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      v10 = [*(*(a1 + 32) + 816) highContrastTintColor];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [*(a1 + 32) _accessibilityHigherContrastTintColorForColor:v9];
      }

      v13 = v12;

      v9 = v13;
    }

    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v14 = [v9 colorByRemovingTransparency];

      v9 = v14;
    }

    v15 = *MEMORY[0x1E69DB650];
    [*(a1 + 40) removeAttribute:*MEMORY[0x1E69DB650] range:{a3, a4}];
    [*(a1 + 40) addAttribute:v15 value:v9 range:{a3, a4}];

    v8 = v16;
  }
}

- (id)defaultParagraphStyle
{
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v4 = [defaultParagraphStyle mutableCopy];

  [v4 setAlignment:{-[VUILabel textAlignment](self, "textAlignment")}];
  [v4 setLineBreakMode:{-[VUILabel lineBreakMode](self, "lineBreakMode")}];
  v5 = [v4 copy];

  return v5;
}

- (void)setTextColor:(id)color
{
  v4 = [(VUILabel *)self _accessibilityHigherContrastTintColorForColor:color];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    colorByRemovingTransparency = [v4 colorByRemovingTransparency];

    v4 = colorByRemovingTransparency;
  }

  v6.receiver = self;
  v6.super_class = VUILabel;
  [(VUILabel *)&v6 setTextColor:v4];
}

- (void)useExtremeSizingOnTallScripts
{
  if (CTFontHasExuberatedLineHeight())
  {

    [(VUILabel *)self _setExtremeSizingEnabled:1];
  }
}

- (void)setPadding:(UIEdgeInsets)padding
{
  v3.f64[0] = padding.top;
  v3.f64[1] = padding.left;
  v4.f64[0] = padding.bottom;
  v4.f64[1] = padding.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_padding.top, v3), vceqq_f64(*&self->_padding.bottom, v4)))) & 1) == 0)
  {
    self->_padding = padding;
    [(VUILabel *)self _clearCachedValues];
  }
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setText:text];
  [(VUILabel *)self _clearCachedValues];
}

- (void)setFont:(id)font
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setFont:font];
  [(VUILabel *)self _clearCachedValues];
}

- (void)setLineBreakMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setLineBreakMode:mode];
  [(VUILabel *)self _clearCachedValues];
}

- (void)setNumberOfLines:(int64_t)lines
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setNumberOfLines:lines];
  [(VUILabel *)self _clearCachedValues];
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)width
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setAdjustsFontSizeToFitWidth:width];
  [(VUILabel *)self _clearCachedValues];
}

- (void)setBaselineAdjustment:(int64_t)adjustment
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setBaselineAdjustment:adjustment];
  [(VUILabel *)self _clearCachedValues];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(int64_t)lines
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(VUILabel *)self previousBounds];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (!CGRectEqualToRect(v15, v18) || [(VUILabel *)self previousNumberOfLines]!= lines || ([(VUILabel *)self cachedTextRectForBounds], CGRectEqualToRect(v16, *MEMORY[0x1E695F058])))
  {
    v14.receiver = self;
    v14.super_class = VUILabel;
    [(VUILabel *)&v14 textRectForBounds:lines limitedToNumberOfLines:x, y, width, height];
    [(VUILabel *)self setCachedTextRectForBounds:?];
    [(VUILabel *)self setPreviousBounds:x, y, width, height];
    [(VUILabel *)self setPreviousNumberOfLines:lines];
  }

  [(VUILabel *)self cachedTextRectForBounds];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(VUILabel *)self padding];
  v7 = v6;
  v9 = v8;
  v35 = v11;
  v36 = v10;
  v12 = fmax(width - (v6 + v8), 0.0);
  v13 = fmax(height - (v10 + v11), 0.0);
  [(VUILabel *)self cachedSizeThatFits];
  v15 = v14;
  v17 = v16;
  [(VUILabel *)self previousTargetSize];
  v19 = v18;
  v21 = v20;
  previousTraitCollection = [(VUILabel *)self previousTraitCollection];
  v23 = [(UIView *)self vui_shouldRecomputeCachedSizeThatFits:previousTraitCollection previousTargetSize:v15 previousTraitCollection:v17 newTargetSize:v19, v21, v12, v13];

  if (v23)
  {
    v37.receiver = self;
    v37.super_class = VUILabel;
    [(VUILabel *)&v37 sizeThatFits:v12, v13];
    v25 = v24;
    VUICeilValue();
    v27 = v26;
    VUICeilValue();
    [(VUILabel *)self setCachedSizeThatFits:v27, v28];
    if (v12 <= 0.0)
    {
      v25 = v12;
    }

    vuiTraitCollection = [(VUILabel *)self vuiTraitCollection];
    [(VUILabel *)self setPreviousTraitCollection:vuiTraitCollection];

    [(VUILabel *)self setPreviousTargetSize:v25, v13];
  }

  [(VUILabel *)self cachedSizeThatFits];
  v31 = v9 + v7 + v30;
  [(VUILabel *)self cachedSizeThatFits];
  v33 = v35 + v36 + v32;
  v34 = v31;
  result.height = v33;
  result.width = v34;
  return result;
}

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(VUILabel *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(VUILabel *)self padding];
  v23.origin.x = v9 + v16;
  v23.origin.y = v11 + v17;
  v23.size.width = v13 - (v16 + v18);
  v23.size.height = v15 - (v17 + v19);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectIntersection(v21, v23);
  v20.receiver = self;
  v20.super_class = VUILabel;
  [(VUILabel *)&v20 drawTextInRect:v22.origin.x, v22.origin.y, v22.size.width, v22.size.height];
}

- (void)_clearCachedValues
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 16);
  self->_cachedTextRectForBounds.origin = *MEMORY[0x1E695F058];
  self->_cachedTextRectForBounds.size = v3;
  self->_previousBounds.origin = v2;
  self->_previousBounds.size = v3;
  self->_previousNumberOfLines = 0;
  v4 = *MEMORY[0x1E695F060];
  self->_cachedSizeThatFits = *MEMORY[0x1E695F060];
  self->_previousTargetSize = v4;
}

- (void)_updateTruncationMask
{
  if ([(VUITextLayout *)self->_textLayout fadesOutTextTruncation])
  {
    [(VUILabel *)self bounds];
    if (v4 != *MEMORY[0x1E695F060] || v3 != *(MEMORY[0x1E695F060] + 8))
    {
      if ([(VUILabel *)self _isTruncatedForTruncationMask])
      {
        if (!self->_truncationMask)
        {
          [(VUILabel *)self _setupTruncationMask];
        }

        [(VUILabel *)self bounds];
        v7 = v6;
        [(VUILabel *)self bounds];
        [(CALayer *)self->_truncationMask setFrame:?];
        sublayers = [(CALayer *)self->_truncationMask sublayers];
        firstObject = [sublayers firstObject];

        [(VUILabel *)self numberOfLinesRequiredForTextWidth:v7];
        [(VUILabel *)self bounds];
        [(VUILabel *)self vuiIsRTL];
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [firstObject setFrame:?];
        layer = [(VUILabel *)self layer];
        [layer setMask:self->_truncationMask];
      }

      else
      {
        firstObject = [(VUILabel *)self layer];
        [firstObject setMask:0];
      }
    }
  }
}

- (void)_setupTruncationMask
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  truncationMask = self->_truncationMask;
  self->_truncationMask = v3;

  v5 = self->_truncationMask;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  -[CALayer setBackgroundColor:](v5, "setBackgroundColor:", [whiteColor CGColor]);

  layer = [MEMORY[0x1E6979380] layer];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v13[0] = [clearColor CGColor];
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  v13[1] = [whiteColor2 CGColor];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [layer setColors:v10];

  if ([(VUILabel *)self vuiIsRTL])
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  [layer setStartPoint:{v11, 0.5}];
  if ([(VUILabel *)self vuiIsRTL])
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  [layer setEndPoint:{v12, 0.5}];
  [layer setCompositingFilter:*MEMORY[0x1E69798E8]];
  [(CALayer *)self->_truncationMask addSublayer:layer];
}

- (BOOL)_isTruncatedForTruncationMask
{
  computationLabel = self->_computationLabel;
  if (!computationLabel)
  {
    return 0;
  }

  [(VUILabel *)self bounds];
  [(UIView *)computationLabel vui_sizeThatFits:v4, 0.0];
  v6 = v5;
  [(VUILabel *)self bounds];
  return v6 > v7;
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = VUILabel;
  [(VUILabel *)&v6 tintColorDidChange];
  if ([(VUILabel *)self tintAdjustmentMode]== 2)
  {
    vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
    textColor = [(VUILabel *)self textColor];

    if (textColor == vui_keyColor)
    {
      [(VUILabel *)self setAdjustmentModeNormalTintColor:vui_keyColor];
      systemMidGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
      [(VUILabel *)self setTextColor:systemMidGrayColor];
    }
  }

  else if (self->_adjustmentModeNormalTintColor)
  {
    [(VUILabel *)self setTextColor:?];
    [(VUILabel *)self setAdjustmentModeNormalTintColor:0];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = VUILabel;
  [(VUILabel *)&v5 setHighlighted:?];
  [(VUILabel *)self vui_setHighlighted:highlightedCopy];
}

- (void)vui_setHighlighted:(BOOL)highlighted
{
  v5.receiver = self;
  v5.super_class = VUILabel;
  [(VUILabel *)&v5 setHighlighted:highlighted];
  v4 = ([(VUILabel *)self isHighlighted]& 1) != 0 || self->_selected;
  [(VUILabel *)self _updateTextColor:v4];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    self->_selected = selectedCopy;
  }

  [(VUILabel *)self vui_setSelected:selectedCopy animated:animatedCopy withAnimationCoordinator:0];
}

- (void)vui_setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator
{
  if (_os_feature_enabled_impl())
  {
    self->_selected = selected;
    if (!selected)
    {
LABEL_3:
      isHighlighted = [(VUILabel *)self isHighlighted];
      goto LABEL_6;
    }
  }

  else if (!self->_selected)
  {
    goto LABEL_3;
  }

  isHighlighted = 1;
LABEL_6:

  [(VUILabel *)self _updateTextColor:isHighlighted];
}

- (void)setEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = VUILabel;
  [(VUILabel *)&v5 setEnabled:enabled];
  v4 = ([(VUILabel *)self isHighlighted]& 1) != 0 || self->_selected;
  [(VUILabel *)self _updateTextColor:v4];
}

- (void)_updateTextColorWithForceUpdate:(BOOL)update
{
  updateCopy = update;
  color = [(VUITextLayout *)self->_textLayout color];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    highContrastTintColor = [(VUITextLayout *)self->_textLayout highContrastTintColor];
    v6 = highContrastTintColor;
    if (highContrastTintColor)
    {
      v7 = highContrastTintColor;
      v8 = color;
    }

    else
    {
      v9 = [(VUILabel *)self _accessibilityHigherContrastTintColorForColor:color];
      v8 = color;
      v7 = v9;
    }

    color = v7;
  }

  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    colorByRemovingTransparency = [color colorByRemovingTransparency];

    color = colorByRemovingTransparency;
  }

  if (([(VUILabel *)self isEnabled]& 1) != 0 || ([(VUITextLayout *)self->_textLayout disabledColor], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    if (self->_lastSelectedOrHighlighted && ([(VUITextLayout *)self->_textLayout highlightOrSelectedColor], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      highlightOrSelectedColor = [(VUITextLayout *)self->_textLayout highlightOrSelectedColor];
    }

    else
    {
      if ([(VUILabel *)self vuiUserInterfaceStyle]!= 2)
      {
        goto LABEL_18;
      }

      darkColor = [(VUITextLayout *)self->_textLayout darkColor];

      if (!darkColor)
      {
        goto LABEL_18;
      }

      highlightOrSelectedColor = [(VUITextLayout *)self->_textLayout darkColor];
    }
  }

  else
  {
    highlightOrSelectedColor = [(VUITextLayout *)self->_textLayout disabledColor];
  }

  v15 = highlightOrSelectedColor;

  color = v15;
LABEL_18:
  if ([(VUITextLayout *)self->_textLayout appliesColorToStringAttachments]|| ((v16 = [(VUILabel *)self _updateTextColorExcludingAttachments:color], v17 = color, v16) ? (v18 = !updateCopy) : (v18 = 0), !v18))
  {
    [(VUILabel *)self setTextColor:color];
    v17 = color;
  }
}

- (void)_updateTextColor:(BOOL)color
{
  colorCopy = color;
  if (self->_lastSelectedOrHighlighted != color || ([(VUILabel *)self isEnabled]& 1) == 0)
  {
    color = [(VUITextLayout *)self->_textLayout color];
    if (color)
    {
      v6 = color;
      shouldUpdateTextColor = [(VUITextLayout *)self->_textLayout shouldUpdateTextColor];

      if (shouldUpdateTextColor)
      {
        self->_lastSelectedOrHighlighted = colorCopy;
        color2 = [(VUITextLayout *)self->_textLayout color];
        if ([(VUILabel *)self vuiUserInterfaceStyle]== 2)
        {
          darkColor = [(VUITextLayout *)self->_textLayout darkColor];

          if (darkColor)
          {
            darkColor2 = [(VUITextLayout *)self->_textLayout darkColor];

            color2 = darkColor2;
          }
        }

        if (colorCopy)
        {
          highlightOrSelectedColor = [(VUITextLayout *)self->_textLayout highlightOrSelectedColor];

          if (highlightOrSelectedColor)
          {
            highlightOrSelectedColor2 = [(VUITextLayout *)self->_textLayout highlightOrSelectedColor];

            color2 = highlightOrSelectedColor2;
          }
        }

        if (([(VUILabel *)self isEnabled]& 1) == 0)
        {
          disabledColor = [(VUITextLayout *)self->_textLayout disabledColor];

          if (disabledColor)
          {
            disabledColor2 = [(VUITextLayout *)self->_textLayout disabledColor];

            color2 = disabledColor2;
          }
        }

        if ([(VUITextLayout *)self->_textLayout appliesColorToStringAttachments]|| (v14 = [(VUILabel *)self _updateTextColorExcludingAttachments:color2], v15 = color2, !v14))
        {
          [(VUILabel *)self setTextColor:color2];
          v15 = color2;
        }
      }
    }
  }
}

- (BOOL)_updateTextColorExcludingAttachments:(id)attachments
{
  v28 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  attributedText = [(VUILabel *)self attributedText];
  v6 = [(VUILabel *)self _rangeOfStringExcludingAttachments:attributedText];

  if (attachmentsCopy && [v6 count])
  {
    vuiAttributedText = [(VUILabel *)self vuiAttributedText];
    v8 = [vuiAttributedText mutableCopy];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    v22 = v10 != 0;
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      v13 = *MEMORY[0x1E69DB650];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          rangeValue = [*(*(&v23 + 1) + 8 * i) rangeValue];
          v17 = v16;
          v18 = [v8 length];
          if (rangeValue < v18 && rangeValue + v17 < v18)
          {
            [v8 addAttribute:v13 value:attachmentsCopy range:{rangeValue, v17}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v20 = v22;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_rangeOfStringExcludingAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v4 = [attachmentsCopy length];
  if (attachmentsCopy && (v5 = v4, [attachmentsCopy containsAttachmentsInRange:{0, v4}]))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__VUILabel__rangeOfStringExcludingAttachments___block_invoke;
    v9[3] = &unk_1E872FE58;
    v7 = v6;
    v10 = v7;
    [attachmentsCopy enumerateAttributesInRange:0 options:v5 usingBlock:{0, v9}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __47__VUILabel__rangeOfStringExcludingAttachments___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 allKeys];
  v8 = [v7 containsObject:*MEMORY[0x1E69DB5F8]];

  if ((v8 & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [v9 addObject:v10];
  }
}

- (void)_updateCompositingFilter
{
  darkCompositingFilter = [(VUITextLayout *)self->_textLayout darkCompositingFilter];
  if (darkCompositingFilter && (v4 = darkCompositingFilter, [(VUITextLayout *)self->_textLayout compositingFilter], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    traitCollection = [(VUILabel *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    textLayout = self->_textLayout;
    if (userInterfaceStyle == 2)
    {
      [(VUITextLayout *)textLayout darkCompositingFilter];
    }

    else
    {
      [(VUITextLayout *)textLayout compositingFilter];
    }
    layer2 = ;
    layer = [(VUILabel *)self layer];
    [layer setCompositingFilter:layer2];
  }

  else
  {
    layer2 = [(VUILabel *)self layer];
    [layer2 setCompositingFilter:0];
  }
}

- (void)_configureAlignmentIfNeeded
{
  textLayout = self->_textLayout;
  if (textLayout && [(VUITextLayout *)textLayout allowsTextAlignmentOverride]&& [(VUILabel *)self effectiveUserInterfaceLayoutDirection]== 1 && [(VUITextLayout *)self->_textLayout alignment]== 4)
  {

    [(VUILabel *)self setVuiTextAlignment:2];
  }
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)cachedTextRectForBounds
{
  x = self->_cachedTextRectForBounds.origin.x;
  y = self->_cachedTextRectForBounds.origin.y;
  width = self->_cachedTextRectForBounds.size.width;
  height = self->_cachedTextRectForBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)previousBounds
{
  x = self->_previousBounds.origin.x;
  y = self->_previousBounds.origin.y;
  width = self->_previousBounds.size.width;
  height = self->_previousBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)cachedSizeThatFits
{
  width = self->_cachedSizeThatFits.width;
  height = self->_cachedSizeThatFits.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)previousTargetSize
{
  width = self->_previousTargetSize.width;
  height = self->_previousTargetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)numberOfLinesRequiredForTextWidth:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "%@ line height is 0.0", &v4, 0xCu);
}

@end