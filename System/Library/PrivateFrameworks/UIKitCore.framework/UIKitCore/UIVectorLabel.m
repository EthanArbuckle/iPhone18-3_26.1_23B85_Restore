@interface UIVectorLabel
+ (id)_defaultAttributes;
+ (id)_defaultFont;
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (NSString)text;
- (UIColor)textColor;
- (UIFont)font;
- (UIVectorLabel)initWithFrame:(CGRect)a3;
- (_UILabelContent)_content;
- (double)_baselineOffsetFromBottom;
- (double)_firstBaselineOffsetFromTop;
- (double)_firstLineBaseline;
- (double)_lastLineBaseline;
- (double)_preferredMaxLayoutWidth;
- (id)_attributedTextCompatibleForSizing;
- (id)_defaultAttributes;
- (id)_layoutParametersWithinSize:(CGSize)a3 forSizing:(BOOL)a4;
- (id)_materializedAttributedText;
- (void)_ensureSizingLayout;
- (void)_ensureVisualLayout;
- (void)_generateDeferredAnimations:(id)a3;
- (void)_mergeDefaultAttributesForDowngradingContent:(id)a3;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3;
- (void)_setAttributedText:(id)a3;
- (void)_setNeedsUpdateLayerIfNeeded;
- (void)_setTextColor:(id)a3;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPreferredMaxLayoutWidth:(double)a3;
- (void)setText:(id)a3;
@end

@implementation UIVectorLabel

- (UIVectorLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIVectorLabel;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIVectorLabel *)v3 setNumberOfLines:1];
  }

  return v4;
}

+ (id)_defaultFont
{
  [off_1E70ECC18 defaultFontSize];

  return [off_1E70ECC18 systemFontOfSize:?];
}

+ (id)_defaultAttributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__UIVectorLabel__defaultAttributes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_7_13 != -1)
  {
    dispatch_once(&_MergedGlobals_7_13, block);
  }

  v2 = qword_1ED49AE78;

  return v2;
}

void __35__UIVectorLabel__defaultAttributes__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = *off_1E70EC918;
  v1 = [*(a1 + 32) _defaultFont];
  v6[0] = v1;
  v5[1] = *off_1E70EC920;
  v2 = +[UIColor blackColor];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = qword_1ED49AE78;
  qword_1ED49AE78 = v3;
}

- (void)_mergeDefaultAttributesForDowngradingContent:(id)a3
{
  defaultAttributes = self->_defaultAttributes;
  v5 = a3;
  if ([(NSMutableDictionary *)defaultAttributes count])
  {
    [(NSMutableDictionary *)self->_defaultAttributes addEntriesFromDictionary:v5];

    v6 = [(_UILabelContent *)self->_content contentWithDefaultAttributes:self->_defaultAttributes];
    content = self->_content;
    self->_content = v6;
  }

  else
  {
    v8 = [v5 mutableCopy];

    content = self->_defaultAttributes;
    self->_defaultAttributes = v8;
  }
}

- (id)_defaultAttributes
{
  defaultAttributes = self->_defaultAttributes;
  if (!defaultAttributes)
  {
    v4 = [objc_opt_class() _defaultAttributes];
    v5 = [v4 mutableCopy];
    v6 = self->_defaultAttributes;
    self->_defaultAttributes = v5;

    defaultAttributes = self->_defaultAttributes;
  }

  return defaultAttributes;
}

- (_UILabelContent)_content
{
  content = self->_content;
  if (!content)
  {
    v4 = [_UILabelContent alloc];
    v5 = [(UIVectorLabel *)self _defaultAttributes];
    v6 = [(_UILabelContent *)v4 initWithDefaultAttributes:v5];
    v7 = self->_content;
    self->_content = v6;

    content = self->_content;
  }

  return content;
}

- (void)_setTextColor:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v7 = +[UIColor blackColor];
  }

  v4 = [(UIVectorLabel *)self _content];
  v5 = *off_1E70EC920;
  if (([v4 isAttribute:*off_1E70EC920 uniformlyEqualToValue:v7] & 1) == 0)
  {
    v6 = [v4 contentByApplyingAttributeToEntireRange:v5 value:v7];
    [(UIVectorLabel *)self _setContent:v6];

    [(NSMutableDictionary *)self->_defaultAttributes setObject:v7 forKey:v5];
    [(UIVectorLabel *)self _setNeedsUpdateLayerIfNeeded];
  }
}

- (UIColor)textColor
{
  v2 = [(UIVectorLabel *)self _content];
  v3 = [v2 defaultValueForAttribute:*off_1E70EC920];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[UIColor blackColor];
  }

  v6 = v5;

  return v6;
}

- (void)setFont:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v7 = [objc_opt_class() _defaultFont];
  }

  v4 = [(UIVectorLabel *)self _content];
  v5 = *off_1E70EC918;
  if (([v4 isAttribute:*off_1E70EC918 uniformlyEqualToValue:v7] & 1) == 0)
  {
    v6 = [v4 contentByApplyingAttributeToEntireRange:v5 value:v7];
    [(UIVectorLabel *)self _setContent:v6];

    [(NSMutableDictionary *)self->_defaultAttributes setObject:v7 forKey:v5];
    [(UIVectorLabel *)self _setNeedsUpdateLayerIfNeeded];
  }
}

- (UIFont)font
{
  v2 = [(UIVectorLabel *)self _content];
  v3 = [v2 defaultValueForAttribute:*off_1E70EC918];

  return v3;
}

- (void)setText:(id)a3
{
  v6 = a3;
  v4 = [(UIVectorLabel *)self _content];
  if (([v4 isEqualToString:v6] & 1) == 0)
  {
    v5 = [v4 contentWithString:v6];
    [(UIVectorLabel *)self _setContent:v5];

    [(UIVectorLabel *)self _setNeedsUpdateLayerIfNeeded];
  }
}

- (NSString)text
{
  v2 = [(UIVectorLabel *)self _content];
  v3 = [v2 string];

  return v3;
}

- (void)_setAttributedText:(id)a3
{
  v6 = a3;
  v4 = [(UIVectorLabel *)self _content];
  if (([v4 isEqualToAttributedString:v6] & 1) == 0)
  {
    v5 = [v4 contentWithAttributedString:v6];
    [(UIVectorLabel *)self _setContent:v5];

    [(UIVectorLabel *)self _setNeedsUpdateLayerIfNeeded];
  }
}

- (id)_materializedAttributedText
{
  v3 = [(UIVectorLabel *)self _content];
  v4 = [v3 attributedStringContent];
  [(UIVectorLabel *)self _setContent:v4];

  v5 = [(UIVectorLabel *)self _content];
  v6 = [v5 attributedString];

  return v6;
}

- (void)setPreferredMaxLayoutWidth:(double)a3
{
  v5 = [(UIVectorLabel *)self _needsDoubleUpdateConstraintsPass];
  v6 = *&self->_labelFlags & 0xFE;
  if (a3 != 0.0)
  {
    ++v6;
  }

  *&self->_labelFlags = v6;
  if (self->_preferredMaxLayoutWidth != a3)
  {
    self->_preferredMaxLayoutWidth = a3;
    [(UIView *)self invalidateIntrinsicContentSize];
  }

  [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:v5];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = UIVectorLabel;
  [(UIView *)&v15 setBounds:x, y, width, height];
  [(UIView *)self bounds];
  if (v9 != v13 || v11 != v12)
  {
    [(UIVectorLabel *)self _setNeedsUpdateLayerIfNeeded];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = UIVectorLabel;
  [(UIView *)&v15 setFrame:x, y, width, height];
  [(UIView *)self bounds];
  if (v9 != v13 || v11 != v12)
  {
    [(UIVectorLabel *)self _setNeedsUpdateLayerIfNeeded];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UIVectorLabel *)self _ensureSizingLayout];
  sizingLayout = self->_sizingLayout;

  [(_UIVectorTextLayout *)sizingLayout size];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_ensureSizingLayout
{
  [(UIVectorLabel *)self _preferredMaxLayoutWidth];
  if (v3 <= 0.0)
  {
    v6 = 1.79769313e308;
  }

  else
  {
    v4 = v3;
    v5 = [(UIVectorLabel *)self numberOfLines];
    v6 = 1.79769313e308;
    if (v5 != 1)
    {
      v6 = v4;
    }
  }

  [(UIVectorLabel *)self _intrinsicSizeWithinSize:v6, 1.79769313e308];
}

- (void)_ensureVisualLayout
{
  if (!self->_visualLayout)
  {
    p_sizingLayout = &self->_sizingLayout;
    if (!self->_sizingLayout)
    {
      goto LABEL_11;
    }

LABEL_7:
    [(UIView *)self bounds];
    v9 = [(UIVectorLabel *)self _layoutParametersWithinSize:0 forSizing:v10, v11];
    sizingLayout = *p_sizingLayout;
    goto LABEL_8;
  }

  [(UIView *)self bounds];
  v19 = [(UIVectorLabel *)self _layoutParametersWithinSize:0 forSizing:v3, v4];
  v5 = [(_UIVectorTextLayout *)self->_visualLayout parameters];
  v6 = [v5 isEqualToParameters:v19];

  if (v6)
  {
    goto LABEL_14;
  }

  p_sizingLayout = &self->_sizingLayout;
  sizingLayout = self->_sizingLayout;
  if (!sizingLayout)
  {
LABEL_10:
    v15 = v19;
    if (v19)
    {
LABEL_12:
      v19 = v15;
      v14 = [[_UIVectorTextLayout alloc] initWithTextParameters:v15];
      goto LABEL_13;
    }

LABEL_11:
    [(UIView *)self bounds];
    v15 = [(UIVectorLabel *)self _layoutParametersWithinSize:0 forSizing:v16, v17];
    goto LABEL_12;
  }

  v9 = v19;
  if (!v19)
  {
    goto LABEL_7;
  }

LABEL_8:
  v19 = v9;
  v12 = [(_UIVectorTextLayout *)sizingLayout parameters];
  v13 = [v12 isEqualToParameters:v19];

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = *p_sizingLayout;
LABEL_13:
  visualLayout = self->_visualLayout;
  self->_visualLayout = v14;

LABEL_14:
}

- (id)_layoutParametersWithinSize:(CGSize)a3 forSizing:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v8 = objc_opt_new();
  [v8 setWithinSize:{width, height}];
  [v8 setNumberOfLines:{-[UIVectorLabel numberOfLines](self, "numberOfLines")}];
  if (a4)
  {
    [(UIVectorLabel *)self _attributedTextCompatibleForSizing];
  }

  else
  {
    [(UIVectorLabel *)self _attributedText];
  }
  v9 = ;
  [v8 setAttributedText:v9];

  v10 = [(UIView *)self traitCollection];
  [v8 setTraitCollection:v10];

  return v8;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  width = a3.width;
  v5 = [(UIVectorLabel *)self numberOfLines:a3.width];
  if (width <= 0.0 || v5 == 1)
  {
    v7 = 1.79769313e308;
  }

  else
  {
    v7 = width;
  }

  sizingLayout = self->_sizingLayout;
  v9 = [(UIVectorLabel *)self _layoutParametersWithinSize:1 forSizing:v7];
  if (!sizingLayout || (-[_UIVectorTextLayout parameters](self->_sizingLayout, "parameters"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToParameters:v9], v10, (v11 & 1) == 0))
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v12 = [[_UIVectorTextLayout alloc] initWithTextParameters:v9];
    v13 = v12;
    if (self->_sizingLayout && ([(_UIVectorTextLayout *)v12 firstLineBaseline], v15 = v14, [(_UIVectorTextLayout *)self->_sizingLayout firstLineBaseline], v15 == v16))
    {
      [(_UIVectorTextLayout *)v13 lastLineBaseline];
      v19 = v18;
      [(_UIVectorTextLayout *)self->_sizingLayout lastLineBaseline];
      v17 = v19 == v20;
    }

    else
    {
      v17 = 0;
    }

    v21 = self->_sizingLayout;
    self->_sizingLayout = v13;

    if ((*(&self->super._viewFlags + 7) & 2) != 0 && !v17)
    {
      v22 = [(UIView *)self _layoutEngine];
      if (v22)
      {
        _UIViewEnumerateLayoutConstraintsAndAdjustForConstantChangeForSelectedAttributes(self, _UILayoutAttributeIsBaselineAttribute);
      }
    }
  }

LABEL_20:
  v23 = self->_sizingLayout;

  [(_UIVectorTextLayout *)v23 size];
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4
{
  v5 = [(UIVectorLabel *)self _layoutParametersWithinSize:1 forSizing:a3.size.width, a3.size.height];
  [v5 setNumberOfLines:a4];
  v6 = [[_UIVectorTextLayout alloc] initWithTextParameters:v5];
  [(_UIVectorTextLayout *)v6 boundingRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (double)_baselineOffsetFromBottom
{
  [(UIVectorLabel *)self _ensureSizingLayout];
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(_UIVectorTextLayout *)self->_sizingLayout size];
  [(UIView *)self alignmentRectForFrame:v3, v4, v5, v6];
  MaxY = CGRectGetMaxY(v10);
  [(_UIVectorTextLayout *)self->_sizingLayout lastLineBaseline];
  return MaxY - v8;
}

- (double)_firstBaselineOffsetFromTop
{
  [(UIVectorLabel *)self _ensureSizingLayout];
  sizingLayout = self->_sizingLayout;

  [(_UIVectorTextLayout *)sizingLayout firstLineBaseline];
  return result;
}

- (double)_firstLineBaseline
{
  [(UIVectorLabel *)self _ensureSizingLayout];
  sizingLayout = self->_sizingLayout;

  [(_UIVectorTextLayout *)sizingLayout firstLineBaseline];
  return result;
}

- (double)_lastLineBaseline
{
  [(UIVectorLabel *)self _ensureSizingLayout];
  sizingLayout = self->_sizingLayout;

  [(_UIVectorTextLayout *)sizingLayout lastLineBaseline];
  return result;
}

- (double)_preferredMaxLayoutWidth
{
  if (*&self->_labelFlags)
  {
    return self->_preferredMaxLayoutWidth;
  }

  result = 0.0;
  if ((*(&self->super._viewFlags + 6) & 2) == 0)
  {
    return self->_preferredMaxLayoutWidth;
  }

  return result;
}

- (BOOL)_needsDoubleUpdateConstraintsPass
{
  if ((*(&self->super._viewFlags + 6) & 0x10) == 0)
  {
    return 0;
  }

  if ([(UIVectorLabel *)self numberOfLines]== 1)
  {
    return 0;
  }

  return (*&self->_labelFlags & 1) == 0;
}

- (void)_prepareForFirstIntrinsicContentSizeCalculation
{
  self->_preferredMaxLayoutWidth = 0.0;
  v2.receiver = self;
  v2.super_class = UIVectorLabel;
  [(UIView *)&v2 _prepareForFirstIntrinsicContentSizeCalculation];
}

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self alignmentRectForFrame:?];
  self->_preferredMaxLayoutWidth = v8;
  v9.receiver = self;
  v9.super_class = UIVectorLabel;
  [(UIView *)&v9 _prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:x, y, width, height];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIVectorLabel;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"textLayout"];
  }

  return v5;
}

- (void)_setNeedsUpdateLayerIfNeeded
{
  v3 = [(UIView *)self superview];
  if (v3)
  {
    v4 = v3;
    v5 = +[UIView _isInAnimationBlockWithAnimationsEnabled];

    if (v5)
    {
      v6 = [(UIView *)self _deferredAnimationForKey:@"textLayout"];
      [v6 addAnimationFrameForValue:MEMORY[0x1E695E118]];
    }
  }

  [(UIView *)self _invalidateIntrinsicContentSizeNeedingLayout:1];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = UIVectorLabel;
  [(UIView *)&v5 layoutSubviews];
  [(UIVectorLabel *)self _ensureVisualLayout];
  visualLayout = self->_visualLayout;
  v4 = [(UIVectorLabel *)self _labelLayer];
  [v4 setTextLayout:visualLayout];
}

- (void)_generateDeferredAnimations:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"textLayout"];
  if (v4)
  {
    v6 = v4;
    [(UIVectorLabel *)self _ensureVisualLayout];
    [(UIView *)self setNeedsLayout];
    v5 = [(UIView *)self superview];
    [v5 layoutIfNeeded];

    v4 = v6;
  }
}

- (id)_attributedTextCompatibleForSizing
{
  v3 = [(UIVectorLabel *)self _content];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(UIVectorLabel *)self _content];
    v6 = [v5 attributedString];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v5 = [(UIVectorLabel *)self _defaultAttributes];
    v6 = [v7 initWithString:@"x" attributes:v5];
  }

  v8 = v6;

  return v8;
}

@end