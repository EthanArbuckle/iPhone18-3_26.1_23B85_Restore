@interface VUILabel
+ (VUILabel)labelWithAttributedString:(id)a3 textLayout:(id)a4 existingLabel:(id)a5;
+ (VUILabel)labelWithString:(id)a3 textLayout:(id)a4 existingLabel:(id)a5;
+ (unint64_t)_numberOfLinesForLayout:(id)a3;
- (BOOL)_isTruncatedForTruncationMask;
- (BOOL)_updateTextColorExcludingAttachments:(id)a3;
- (CGRect)cachedTextRectForBounds;
- (CGRect)previousBounds;
- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4;
- (CGSize)cachedSizeThatFits;
- (CGSize)previousTargetSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (UIEdgeInsets)padding;
- (VUILabel)initWithFrame:(CGRect)a3;
- (double)bottomMarginWithBaselineMargin:(double)a3;
- (double)bottomMarginWithBaselineMargin:(double)a3 maximumContentSizeCategory:(unint64_t)a4;
- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4;
- (double)topMarginWithBaselineMargin:(double)a3;
- (double)topMarginWithBaselineMargin:(double)a3 maximumContentSizeCategory:(unint64_t)a4;
- (double)vuiBaselineHeight;
- (id)_rangeOfStringExcludingAttachments:(id)a3;
- (id)attributedText;
- (id)defaultParagraphStyle;
- (unint64_t)numberOfLinesRequiredForTextWidth:(double)a3;
- (void)_clearCachedValues;
- (void)_configureAlignmentIfNeeded;
- (void)_setupTruncationMask;
- (void)_updateCompositingFilter;
- (void)_updateTextColor:(BOOL)a3;
- (void)_updateTextColorWithForceUpdate:(BOOL)a3;
- (void)_updateTruncationMask;
- (void)dealloc;
- (void)drawTextInRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3;
- (void)setAttributedText:(id)a3;
- (void)setBaselineAdjustment:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLineBreakMode:(int64_t)a3;
- (void)setNumberOfLines:(int64_t)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setVuiAttributedText:(id)a3;
- (void)setVuiText:(id)a3;
- (void)tintColorDidChange;
- (void)updateTextLayout:(id)a3;
- (void)useExtremeSizingOnTallScripts;
- (void)vui_setHighlighted:(BOOL)a3;
- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5;
@end

@implementation VUILabel

+ (VUILabel)labelWithString:(id)a3 textLayout:(id)a4 existingLabel:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  v11 = v10;
  v12 = [v8 fadesOutTextTruncation];
  v13 = [v11 computationLabel];
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      v15 = [v11 computationLabel];
    }

    else
    {
      v15 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }

    v17 = v15;

    [v17 setVuiNumberOfLines:0];
    [v17 setVuiAlpha:0.0];
    [v11 setComputationLabel:v17];
    [v11 addSubview:v17];
  }

  else
  {
    [v13 removeFromSuperview];

    [v11 setComputationLabel:0];
    [v11 setTruncationMask:0];
    v16 = [v11 layer];
    [v16 setMask:0];

    v17 = 0;
  }

  [v17 setTextLayout:v8];
  [v11 setTextLayout:v8];
  [v11 setPreferredVibrancy:{objc_msgSend(v8, "preferredVibrancy")}];
  [v11 setVuiNumberOfLines:{+[VUILabel _numberOfLinesForLayout:](VUILabel, "_numberOfLinesForLayout:", v8)}];
  [v8 padding];
  [v11 setPadding:?];
  [v11 setHighlightedTextColor:0];
  [v8 fontSize];
  [v11 setAdjustsFontForContentSizeCategory:v18 == 0.0];
  [v8 fontSize];
  [v17 setAdjustsFontForContentSizeCategory:v19 == 0.0];
  [v8 minimumScaleFactor];
  if (v20 > 0.0)
  {
    [v8 minimumScaleFactor];
    [v11 setMinimumScaleFactor:?];
    [v11 setAdjustsFontSizeToFitWidth:1];
    [v8 minimumScaleFactor];
    [v17 setMinimumScaleFactor:?];
    [v17 setAdjustsFontSizeToFitWidth:1];
  }

  v21 = [v8 attributedStringWithString:v7 view:v11];
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
  v26 = [v8 shadow];
  if (v26)
  {
    v27 = v26;
    v28 = [v8 appliesShadowToContainer];

    if (v28)
    {
      v29 = [v8 shadow];
      v30 = [v11 layer];
      v31 = [v29 shadowColor];
      [v30 setShadowColor:{objc_msgSend(v31, "CGColor")}];

      [v29 shadowBlurRadius];
      [v30 setShadowRadius:?];
      [v29 shadowOffset];
      [v30 setShadowOffset:?];
      [v30 setMasksToBounds:0];
    }
  }

  if (v21 && [v21 length])
  {
    v32 = [v21 attributesAtIndex:0 effectiveRange:0];
  }

  else
  {
    v32 = [v8 defaultAttributesForLabel:v11];
  }

  v33 = v32;
  [v11 _setDefaultAttributes:v32];
  [v17 _setDefaultAttributes:v33];
  [v11 _updateCompositingFilter];
  [v11 _configureAlignmentIfNeeded];
  if ([v8 enableAXUnderlineButtonShape])
  {
    [v11 _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
  }

  [v11 _updateTextColorWithForceUpdate:0];

  return v11;
}

+ (VUILabel)labelWithAttributedString:(id)a3 textLayout:(id)a4 existingLabel:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v10 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  v11 = v10;
  v12 = [v7 fadesOutTextTruncation];
  v13 = [v11 computationLabel];
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      v15 = [v11 computationLabel];
    }

    else
    {
      v15 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }

    v17 = v15;

    [v17 setVuiNumberOfLines:0];
    [v17 setVuiAlpha:0.0];
    [v11 setComputationLabel:v17];
    [v11 addSubview:v17];
  }

  else
  {
    [v13 removeFromSuperview];

    [v11 setComputationLabel:0];
    [v11 setTruncationMask:0];
    v16 = [v11 layer];
    [v16 setMask:0];

    v17 = 0;
  }

  [v17 setTextLayout:v7];
  [v11 setTextLayout:v7];
  [v11 setVuiNumberOfLines:{+[VUILabel _numberOfLinesForLayout:](VUILabel, "_numberOfLinesForLayout:", v7)}];
  [v11 setPreferredVibrancy:{objc_msgSend(v7, "preferredVibrancy")}];
  [v11 setHighlightedTextColor:0];
  [v7 fontSize];
  [v11 setAdjustsFontForContentSizeCategory:v18 == 0.0];
  [v7 fontSize];
  [v17 setAdjustsFontForContentSizeCategory:v19 == 0.0];
  [v7 minimumScaleFactor];
  if (v20 > 0.0)
  {
    [v7 minimumScaleFactor];
    [v11 setMinimumScaleFactor:?];
    [v11 setAdjustsFontSizeToFitWidth:1];
    [v7 minimumScaleFactor];
    [v17 setMinimumScaleFactor:?];
    [v17 setAdjustsFontSizeToFitWidth:1];
  }

  v21 = [v7 attributedStringWithAttributedString:v9 view:v11 updateTextColor:{objc_msgSend(v7, "shouldUpdateTextColor")}];

  [v11 setVuiAttributedText:v21];
  [v11 _updateCompositingFilter];
  [v11 _configureAlignmentIfNeeded];
  if ([v7 enableAXUnderlineButtonShape])
  {
    [v11 _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
  }

  return v11;
}

+ (unint64_t)_numberOfLinesForLayout:(id)a3
{
  v3 = MEMORY[0x1E69DCEB0];
  v4 = a3;
  v5 = [v3 mainScreen];
  v6 = [v5 traitCollection];

  v7 = [v4 numberOfLinesForTraitCollection:v6];
  return v7;
}

- (VUILabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v8 selector:sel_contrastSettingsDidChange name:*MEMORY[0x1E69DD8B8] object:0];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v8 selector:sel_transparencySettingsDidChange name:*MEMORY[0x1E69DD920] object:0];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DD8B8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  v5.receiver = self;
  v5.super_class = VUILabel;
  [(VUILabel *)&v5 dealloc];
}

- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4
{
  v6 = a3;
  if (v6)
  {
    HasExuberatedLineHeight = CTFontHasExuberatedLineHeight();
    [(VUILabel *)self languageAwareSystemSpacingMultiplier];
    v9 = v8;
    if ([(VUILabel *)self useLanguageAwareMarginScaling]&& HasExuberatedLineHeight)
    {
      v10 = [(VUILabel *)self font];
      [v10 _scaledValueForValue:1 useLanguageAwareScaling:a4];
      v12 = v11;

LABEL_13:
      [(VUILabel *)self baselineHeight];
      v20 = v12 - v19;
      [v6 vui_baselineOffsetFromBottom];
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
      v17 = [(VUILabel *)self traitCollection];
      [v16 scaleContentSizeValue:v17 forTraitCollection:-[VUITextLayout maximumContentSizeCategory](self->_textLayout maximumContentSizeCategory:{"maximumContentSizeCategory"), a4}];
      v12 = v18;

      goto LABEL_13;
    }

    [(VUILabel *)self _systemSpacingBelowView:v6 multiplier:v9];
  }

  else
  {
    [(VUILabel *)self topMarginWithBaselineMargin:a4];
  }

  v15 = v13;
LABEL_14:

  return v15;
}

- (unint64_t)numberOfLinesRequiredForTextWidth:(double)a3
{
  result = [(VUILabel *)self attributedText];
  if (result)
  {
    v6 = result;
    v7 = [(VUILabel *)self attributedText];
    v8 = [v7 length];

    if (v8)
    {
      [(UIView *)self vui_sizeThatFits:0 layout:a3, 0.0];
      v10 = v9;
      v11 = [(VUILabel *)self font];
      [v11 lineHeight];
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

- (void)updateTextLayout:(id)a3
{
  v4 = a3;
  [(VUILabel *)self setTextLayout:v4];
  v5 = [(VUILabel *)self computationLabel];
  [v5 setTextLayout:v4];
}

- (id)attributedText
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  v2 = [(VUILabel *)&v4 attributedText];

  return v2;
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v16.receiver = self;
  v16.super_class = VUILabel;
  [VUILabel vui_layoutSubviews:sel_vui_layoutSubviews_computationOnly_ computationOnly:?];
  if (v4)
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

- (double)topMarginWithBaselineMargin:(double)a3
{
  v5 = [(VUITextLayout *)self->_textLayout maximumContentSizeCategory];

  [(VUILabel *)self topMarginWithBaselineMargin:v5 maximumContentSizeCategory:a3];
  return result;
}

- (double)bottomMarginWithBaselineMargin:(double)a3
{
  v5 = [(VUITextLayout *)self->_textLayout maximumContentSizeCategory];

  [(VUILabel *)self bottomMarginWithBaselineMargin:v5 maximumContentSizeCategory:a3];
  return result;
}

- (void)setVuiText:(id)a3
{
  v4 = a3;
  [(VUILabel *)self setText:v4];
  [(VUILabel *)self->_computationLabel setText:v4];
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
    v5 = [(VUILabel *)self font];

    if (v5)
    {
      v6 = [(VUILabel *)self font];
      [v6 baselineHeight];
      v4 = v7;
    }
  }

  return v4;
}

- (void)setVuiAttributedText:(id)a3
{
  v4 = a3;
  [(VUILabel *)self setAttributedText:v4];
  [(VUILabel *)self->_computationLabel setAttributedText:v4];
}

- (double)topMarginWithBaselineMargin:(double)a3 maximumContentSizeCategory:(unint64_t)a4
{
  v7 = MEMORY[0x1E69DF6D0];
  v8 = [(VUILabel *)self vuiTraitCollection];
  [v7 scaleContentSizeValue:v8 forTraitCollection:a4 maximumContentSizeCategory:a3];
  v10 = v9;

  [(VUILabel *)self baselineHeight];
  return v10 - v11;
}

- (double)bottomMarginWithBaselineMargin:(double)a3 maximumContentSizeCategory:(unint64_t)a4
{
  v7 = MEMORY[0x1E69DF6D0];
  v8 = [(VUILabel *)self vuiTraitCollection];
  [v7 scaleContentSizeValue:v8 forTraitCollection:a4 maximumContentSizeCategory:a3];
  v10 = v9;

  [(VUILabel *)self _baselineOffsetFromBottom];
  return v10 - v11;
}

- (void)setAttributedText:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mutableCopy];
  if (UIAccessibilityDarkerSystemColorsEnabled() || UIAccessibilityIsReduceTransparencyEnabled())
  {
    v6 = *MEMORY[0x1E69DB650];
    v7 = [v4 length];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __30__VUILabel_setAttributedText___block_invoke;
    v40[3] = &unk_1E8731988;
    v40[4] = self;
    v41 = v5;
    [v4 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v40}];
  }

  v8 = [(VUILabel *)self _rangeOfStringExcludingAttachments:v4];
  textLayout = self->_textLayout;
  if (textLayout && -[VUITextLayout appliesDirectionalIsolates](textLayout, "appliesDirectionalIsolates") && [v8 count])
  {
    v31 = v4;
    v33 = self;
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

          v14 = [*(*(&v36 + 1) + 8 * i) rangeValue];
          v16 = v15;
          v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⁨"];
          [v5 insertAttributedString:v17 atIndex:v14];

          v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⁩"];
          [v5 insertAttributedString:v18 atIndex:v14 + v16];
        }

        v11 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v11);
    }

    self = v33;
    v19 = [(VUILabel *)v33 effectiveUserInterfaceLayoutDirection];
    v20 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v19 == 1)
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
    v4 = v32;
  }

  v24 = +[VUIInterfaceFactory sharedInstance];
  v25 = [v24 languageStringHandler];

  v26 = [v5 copy];
  v27 = [(VUILabel *)self defaultParagraphStyle];
  v28 = [v25 makeLanguageAwareAttributedString:v26 defaultParagraphStyle:v27];

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
  v3 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v4 = [v3 mutableCopy];

  [v4 setAlignment:{-[VUILabel textAlignment](self, "textAlignment")}];
  [v4 setLineBreakMode:{-[VUILabel lineBreakMode](self, "lineBreakMode")}];
  v5 = [v4 copy];

  return v5;
}

- (void)setTextColor:(id)a3
{
  v4 = [(VUILabel *)self _accessibilityHigherContrastTintColorForColor:a3];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v5 = [v4 colorByRemovingTransparency];

    v4 = v5;
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

- (void)setPadding:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_padding.top, v3), vceqq_f64(*&self->_padding.bottom, v4)))) & 1) == 0)
  {
    self->_padding = a3;
    [(VUILabel *)self _clearCachedValues];
  }
}

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setText:a3];
  [(VUILabel *)self _clearCachedValues];
}

- (void)setFont:(id)a3
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setFont:a3];
  [(VUILabel *)self _clearCachedValues];
}

- (void)setLineBreakMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setLineBreakMode:a3];
  [(VUILabel *)self _clearCachedValues];
}

- (void)setNumberOfLines:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setNumberOfLines:a3];
  [(VUILabel *)self _clearCachedValues];
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setAdjustsFontSizeToFitWidth:a3];
  [(VUILabel *)self _clearCachedValues];
}

- (void)setBaselineAdjustment:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = VUILabel;
  [(VUILabel *)&v4 setBaselineAdjustment:a3];
  [(VUILabel *)self _clearCachedValues];
}

- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(VUILabel *)self previousBounds];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (!CGRectEqualToRect(v15, v18) || [(VUILabel *)self previousNumberOfLines]!= a4 || ([(VUILabel *)self cachedTextRectForBounds], CGRectEqualToRect(v16, *MEMORY[0x1E695F058])))
  {
    v14.receiver = self;
    v14.super_class = VUILabel;
    [(VUILabel *)&v14 textRectForBounds:a4 limitedToNumberOfLines:x, y, width, height];
    [(VUILabel *)self setCachedTextRectForBounds:?];
    [(VUILabel *)self setPreviousBounds:x, y, width, height];
    [(VUILabel *)self setPreviousNumberOfLines:a4];
  }

  [(VUILabel *)self cachedTextRectForBounds];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v22 = [(VUILabel *)self previousTraitCollection];
  v23 = [(UIView *)self vui_shouldRecomputeCachedSizeThatFits:v22 previousTargetSize:v15 previousTraitCollection:v17 newTargetSize:v19, v21, v12, v13];

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

    v29 = [(VUILabel *)self vuiTraitCollection];
    [(VUILabel *)self setPreviousTraitCollection:v29];

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

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
        v8 = [(CALayer *)self->_truncationMask sublayers];
        v10 = [v8 firstObject];

        [(VUILabel *)self numberOfLinesRequiredForTextWidth:v7];
        [(VUILabel *)self bounds];
        [(VUILabel *)self vuiIsRTL];
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v10 setFrame:?];
        v9 = [(VUILabel *)self layer];
        [v9 setMask:self->_truncationMask];
      }

      else
      {
        v10 = [(VUILabel *)self layer];
        [v10 setMask:0];
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
  v6 = [MEMORY[0x1E69DC888] whiteColor];
  -[CALayer setBackgroundColor:](v5, "setBackgroundColor:", [v6 CGColor]);

  v7 = [MEMORY[0x1E6979380] layer];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  v13[0] = [v8 CGColor];
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v13[1] = [v9 CGColor];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v7 setColors:v10];

  if ([(VUILabel *)self vuiIsRTL])
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  [v7 setStartPoint:{v11, 0.5}];
  if ([(VUILabel *)self vuiIsRTL])
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  [v7 setEndPoint:{v12, 0.5}];
  [v7 setCompositingFilter:*MEMORY[0x1E69798E8]];
  [(CALayer *)self->_truncationMask addSublayer:v7];
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
    v3 = [MEMORY[0x1E69DC888] vui_keyColor];
    v4 = [(VUILabel *)self textColor];

    if (v4 == v3)
    {
      [(VUILabel *)self setAdjustmentModeNormalTintColor:v3];
      v5 = [MEMORY[0x1E69DC888] systemMidGrayColor];
      [(VUILabel *)self setTextColor:v5];
    }
  }

  else if (self->_adjustmentModeNormalTintColor)
  {
    [(VUILabel *)self setTextColor:?];
    [(VUILabel *)self setAdjustmentModeNormalTintColor:0];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = VUILabel;
  [(VUILabel *)&v5 setHighlighted:?];
  [(VUILabel *)self vui_setHighlighted:v3];
}

- (void)vui_setHighlighted:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VUILabel;
  [(VUILabel *)&v5 setHighlighted:a3];
  v4 = ([(VUILabel *)self isHighlighted]& 1) != 0 || self->_selected;
  [(VUILabel *)self _updateTextColor:v4];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    self->_selected = v5;
  }

  [(VUILabel *)self vui_setSelected:v5 animated:v4 withAnimationCoordinator:0];
}

- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  if (_os_feature_enabled_impl())
  {
    self->_selected = a3;
    if (!a3)
    {
LABEL_3:
      v7 = [(VUILabel *)self isHighlighted];
      goto LABEL_6;
    }
  }

  else if (!self->_selected)
  {
    goto LABEL_3;
  }

  v7 = 1;
LABEL_6:

  [(VUILabel *)self _updateTextColor:v7];
}

- (void)setEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VUILabel;
  [(VUILabel *)&v5 setEnabled:a3];
  v4 = ([(VUILabel *)self isHighlighted]& 1) != 0 || self->_selected;
  [(VUILabel *)self _updateTextColor:v4];
}

- (void)_updateTextColorWithForceUpdate:(BOOL)a3
{
  v3 = a3;
  v19 = [(VUITextLayout *)self->_textLayout color];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v5 = [(VUITextLayout *)self->_textLayout highContrastTintColor];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      v8 = v19;
    }

    else
    {
      v9 = [(VUILabel *)self _accessibilityHigherContrastTintColorForColor:v19];
      v8 = v19;
      v7 = v9;
    }

    v19 = v7;
  }

  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v10 = [v19 colorByRemovingTransparency];

    v19 = v10;
  }

  if (([(VUILabel *)self isEnabled]& 1) != 0 || ([(VUITextLayout *)self->_textLayout disabledColor], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    if (self->_lastSelectedOrHighlighted && ([(VUITextLayout *)self->_textLayout highlightOrSelectedColor], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      v12 = [(VUITextLayout *)self->_textLayout highlightOrSelectedColor];
    }

    else
    {
      if ([(VUILabel *)self vuiUserInterfaceStyle]!= 2)
      {
        goto LABEL_18;
      }

      v14 = [(VUITextLayout *)self->_textLayout darkColor];

      if (!v14)
      {
        goto LABEL_18;
      }

      v12 = [(VUITextLayout *)self->_textLayout darkColor];
    }
  }

  else
  {
    v12 = [(VUITextLayout *)self->_textLayout disabledColor];
  }

  v15 = v12;

  v19 = v15;
LABEL_18:
  if ([(VUITextLayout *)self->_textLayout appliesColorToStringAttachments]|| ((v16 = [(VUILabel *)self _updateTextColorExcludingAttachments:v19], v17 = v19, v16) ? (v18 = !v3) : (v18 = 0), !v18))
  {
    [(VUILabel *)self setTextColor:v19];
    v17 = v19;
  }
}

- (void)_updateTextColor:(BOOL)a3
{
  v3 = a3;
  if (self->_lastSelectedOrHighlighted != a3 || ([(VUILabel *)self isEnabled]& 1) == 0)
  {
    v5 = [(VUITextLayout *)self->_textLayout color];
    if (v5)
    {
      v6 = v5;
      v7 = [(VUITextLayout *)self->_textLayout shouldUpdateTextColor];

      if (v7)
      {
        self->_lastSelectedOrHighlighted = v3;
        v16 = [(VUITextLayout *)self->_textLayout color];
        if ([(VUILabel *)self vuiUserInterfaceStyle]== 2)
        {
          v8 = [(VUITextLayout *)self->_textLayout darkColor];

          if (v8)
          {
            v9 = [(VUITextLayout *)self->_textLayout darkColor];

            v16 = v9;
          }
        }

        if (v3)
        {
          v10 = [(VUITextLayout *)self->_textLayout highlightOrSelectedColor];

          if (v10)
          {
            v11 = [(VUITextLayout *)self->_textLayout highlightOrSelectedColor];

            v16 = v11;
          }
        }

        if (([(VUILabel *)self isEnabled]& 1) == 0)
        {
          v12 = [(VUITextLayout *)self->_textLayout disabledColor];

          if (v12)
          {
            v13 = [(VUITextLayout *)self->_textLayout disabledColor];

            v16 = v13;
          }
        }

        if ([(VUITextLayout *)self->_textLayout appliesColorToStringAttachments]|| (v14 = [(VUILabel *)self _updateTextColorExcludingAttachments:v16], v15 = v16, !v14))
        {
          [(VUILabel *)self setTextColor:v16];
          v15 = v16;
        }
      }
    }
  }
}

- (BOOL)_updateTextColorExcludingAttachments:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUILabel *)self attributedText];
  v6 = [(VUILabel *)self _rangeOfStringExcludingAttachments:v5];

  if (v4 && [v6 count])
  {
    v7 = [(VUILabel *)self vuiAttributedText];
    v8 = [v7 mutableCopy];

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

          v15 = [*(*(&v23 + 1) + 8 * i) rangeValue];
          v17 = v16;
          v18 = [v8 length];
          if (v15 < v18 && v15 + v17 < v18)
          {
            [v8 addAttribute:v13 value:v4 range:{v15, v17}];
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

- (id)_rangeOfStringExcludingAttachments:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v3 && (v5 = v4, [v3 containsAttachmentsInRange:{0, v4}]))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__VUILabel__rangeOfStringExcludingAttachments___block_invoke;
    v9[3] = &unk_1E872FE58;
    v7 = v6;
    v10 = v7;
    [v3 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v9}];
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
  v3 = [(VUITextLayout *)self->_textLayout darkCompositingFilter];
  if (v3 && (v4 = v3, [(VUITextLayout *)self->_textLayout compositingFilter], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(VUILabel *)self traitCollection];
    v7 = [v6 userInterfaceStyle];

    textLayout = self->_textLayout;
    if (v7 == 2)
    {
      [(VUITextLayout *)textLayout darkCompositingFilter];
    }

    else
    {
      [(VUITextLayout *)textLayout compositingFilter];
    }
    v10 = ;
    v9 = [(VUILabel *)self layer];
    [v9 setCompositingFilter:v10];
  }

  else
  {
    v10 = [(VUILabel *)self layer];
    [v10 setCompositingFilter:0];
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