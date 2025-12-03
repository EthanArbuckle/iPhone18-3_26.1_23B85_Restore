@interface UIVectorLabel
+ (id)_defaultAttributes;
+ (id)_defaultFont;
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(int64_t)lines;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)intrinsicContentSize;
- (NSString)text;
- (UIColor)textColor;
- (UIFont)font;
- (UIVectorLabel)initWithFrame:(CGRect)frame;
- (_UILabelContent)_content;
- (double)_baselineOffsetFromBottom;
- (double)_firstBaselineOffsetFromTop;
- (double)_firstLineBaseline;
- (double)_lastLineBaseline;
- (double)_preferredMaxLayoutWidth;
- (id)_attributedTextCompatibleForSizing;
- (id)_defaultAttributes;
- (id)_layoutParametersWithinSize:(CGSize)size forSizing:(BOOL)sizing;
- (id)_materializedAttributedText;
- (void)_ensureSizingLayout;
- (void)_ensureVisualLayout;
- (void)_generateDeferredAnimations:(id)animations;
- (void)_mergeDefaultAttributesForDowngradingContent:(id)content;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds;
- (void)_setAttributedText:(id)text;
- (void)_setNeedsUpdateLayerIfNeeded;
- (void)_setTextColor:(id)color;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setPreferredMaxLayoutWidth:(double)width;
- (void)setText:(id)text;
@end

@implementation UIVectorLabel

- (UIVectorLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIVectorLabel;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  block[4] = self;
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

- (void)_mergeDefaultAttributesForDowngradingContent:(id)content
{
  defaultAttributes = self->_defaultAttributes;
  contentCopy = content;
  if ([(NSMutableDictionary *)defaultAttributes count])
  {
    [(NSMutableDictionary *)self->_defaultAttributes addEntriesFromDictionary:contentCopy];

    v6 = [(_UILabelContent *)self->_content contentWithDefaultAttributes:self->_defaultAttributes];
    content = self->_content;
    self->_content = v6;
  }

  else
  {
    v8 = [contentCopy mutableCopy];

    content = self->_defaultAttributes;
    self->_defaultAttributes = v8;
  }
}

- (id)_defaultAttributes
{
  defaultAttributes = self->_defaultAttributes;
  if (!defaultAttributes)
  {
    _defaultAttributes = [objc_opt_class() _defaultAttributes];
    v5 = [_defaultAttributes mutableCopy];
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
    _defaultAttributes = [(UIVectorLabel *)self _defaultAttributes];
    v6 = [(_UILabelContent *)v4 initWithDefaultAttributes:_defaultAttributes];
    v7 = self->_content;
    self->_content = v6;

    content = self->_content;
  }

  return content;
}

- (void)_setTextColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = +[UIColor blackColor];
  }

  _content = [(UIVectorLabel *)self _content];
  v5 = *off_1E70EC920;
  if (([_content isAttribute:*off_1E70EC920 uniformlyEqualToValue:colorCopy] & 1) == 0)
  {
    v6 = [_content contentByApplyingAttributeToEntireRange:v5 value:colorCopy];
    [(UIVectorLabel *)self _setContent:v6];

    [(NSMutableDictionary *)self->_defaultAttributes setObject:colorCopy forKey:v5];
    [(UIVectorLabel *)self _setNeedsUpdateLayerIfNeeded];
  }
}

- (UIColor)textColor
{
  _content = [(UIVectorLabel *)self _content];
  v3 = [_content defaultValueForAttribute:*off_1E70EC920];
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

- (void)setFont:(id)font
{
  fontCopy = font;
  if (!fontCopy)
  {
    fontCopy = [objc_opt_class() _defaultFont];
  }

  _content = [(UIVectorLabel *)self _content];
  v5 = *off_1E70EC918;
  if (([_content isAttribute:*off_1E70EC918 uniformlyEqualToValue:fontCopy] & 1) == 0)
  {
    v6 = [_content contentByApplyingAttributeToEntireRange:v5 value:fontCopy];
    [(UIVectorLabel *)self _setContent:v6];

    [(NSMutableDictionary *)self->_defaultAttributes setObject:fontCopy forKey:v5];
    [(UIVectorLabel *)self _setNeedsUpdateLayerIfNeeded];
  }
}

- (UIFont)font
{
  _content = [(UIVectorLabel *)self _content];
  v3 = [_content defaultValueForAttribute:*off_1E70EC918];

  return v3;
}

- (void)setText:(id)text
{
  textCopy = text;
  _content = [(UIVectorLabel *)self _content];
  if (([_content isEqualToString:textCopy] & 1) == 0)
  {
    v5 = [_content contentWithString:textCopy];
    [(UIVectorLabel *)self _setContent:v5];

    [(UIVectorLabel *)self _setNeedsUpdateLayerIfNeeded];
  }
}

- (NSString)text
{
  _content = [(UIVectorLabel *)self _content];
  string = [_content string];

  return string;
}

- (void)_setAttributedText:(id)text
{
  textCopy = text;
  _content = [(UIVectorLabel *)self _content];
  if (([_content isEqualToAttributedString:textCopy] & 1) == 0)
  {
    v5 = [_content contentWithAttributedString:textCopy];
    [(UIVectorLabel *)self _setContent:v5];

    [(UIVectorLabel *)self _setNeedsUpdateLayerIfNeeded];
  }
}

- (id)_materializedAttributedText
{
  _content = [(UIVectorLabel *)self _content];
  attributedStringContent = [_content attributedStringContent];
  [(UIVectorLabel *)self _setContent:attributedStringContent];

  _content2 = [(UIVectorLabel *)self _content];
  attributedString = [_content2 attributedString];

  return attributedString;
}

- (void)setPreferredMaxLayoutWidth:(double)width
{
  _needsDoubleUpdateConstraintsPass = [(UIVectorLabel *)self _needsDoubleUpdateConstraintsPass];
  v6 = *&self->_labelFlags & 0xFE;
  if (width != 0.0)
  {
    ++v6;
  }

  *&self->_labelFlags = v6;
  if (self->_preferredMaxLayoutWidth != width)
  {
    self->_preferredMaxLayoutWidth = width;
    [(UIView *)self invalidateIntrinsicContentSize];
  }

  [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:_needsDoubleUpdateConstraintsPass];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    numberOfLines = [(UIVectorLabel *)self numberOfLines];
    v6 = 1.79769313e308;
    if (numberOfLines != 1)
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
  parameters = [(_UIVectorTextLayout *)self->_visualLayout parameters];
  v6 = [parameters isEqualToParameters:v19];

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
  parameters2 = [(_UIVectorTextLayout *)sizingLayout parameters];
  v13 = [parameters2 isEqualToParameters:v19];

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

- (id)_layoutParametersWithinSize:(CGSize)size forSizing:(BOOL)sizing
{
  height = size.height;
  width = size.width;
  v8 = objc_opt_new();
  [v8 setWithinSize:{width, height}];
  [v8 setNumberOfLines:{-[UIVectorLabel numberOfLines](self, "numberOfLines")}];
  if (sizing)
  {
    [(UIVectorLabel *)self _attributedTextCompatibleForSizing];
  }

  else
  {
    [(UIVectorLabel *)self _attributedText];
  }
  v9 = ;
  [v8 setAttributedText:v9];

  traitCollection = [(UIView *)self traitCollection];
  [v8 setTraitCollection:traitCollection];

  return v8;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  width = size.width;
  v5 = [(UIVectorLabel *)self numberOfLines:size.width];
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
      _layoutEngine = [(UIView *)self _layoutEngine];
      if (_layoutEngine)
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

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(int64_t)lines
{
  v5 = [(UIVectorLabel *)self _layoutParametersWithinSize:1 forSizing:bounds.size.width, bounds.size.height];
  [v5 setNumberOfLines:lines];
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

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self alignmentRectForFrame:?];
  self->_preferredMaxLayoutWidth = v8;
  v9.receiver = self;
  v9.super_class = UIVectorLabel;
  [(UIView *)&v9 _prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:x, y, width, height];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = UIVectorLabel;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"textLayout"];
  }

  return v5;
}

- (void)_setNeedsUpdateLayerIfNeeded
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    v4 = superview;
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
  _labelLayer = [(UIVectorLabel *)self _labelLayer];
  [_labelLayer setTextLayout:visualLayout];
}

- (void)_generateDeferredAnimations:(id)animations
{
  v4 = [animations objectForKeyedSubscript:@"textLayout"];
  if (v4)
  {
    v6 = v4;
    [(UIVectorLabel *)self _ensureVisualLayout];
    [(UIView *)self setNeedsLayout];
    superview = [(UIView *)self superview];
    [superview layoutIfNeeded];

    v4 = v6;
  }
}

- (id)_attributedTextCompatibleForSizing
{
  _content = [(UIVectorLabel *)self _content];
  v4 = [_content length];

  if (v4)
  {
    _content2 = [(UIVectorLabel *)self _content];
    attributedString = [_content2 attributedString];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    _content2 = [(UIVectorLabel *)self _defaultAttributes];
    attributedString = [v7 initWithString:@"x" attributes:_content2];
  }

  v8 = attributedString;

  return v8;
}

@end