@interface _TVLabel
- (CGRect)cachedTextRectForBounds;
- (CGRect)previousBounds;
- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4;
- (CGSize)cachedSizeThatFits;
- (CGSize)previousTargetSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)padding;
- (_TVLabel)initWithFrame:(CGRect)a3;
- (void)_clearCachedValues;
- (void)drawTextInRect:(CGRect)a3;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3;
- (void)setAttributedText:(id)a3;
- (void)setBaselineAdjustment:(int64_t)a3;
- (void)setFont:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLineBreakMode:(int64_t)a3;
- (void)setNumberOfLines:(int64_t)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation _TVLabel

- (_TVLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = _TVLabel;
  result = [(_TVLabel *)&v9 initWithFrame:?];
  if (result)
  {
    result->_cachedTextRectForBounds.origin.x = x;
    result->_cachedTextRectForBounds.origin.y = y;
    result->_cachedTextRectForBounds.size.width = width;
    result->_cachedTextRectForBounds.size.height = height;
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    result->_previousBounds.origin = *MEMORY[0x277CBF3A0];
    result->_previousBounds.size = v8;
    result->_previousNumberOfLines = 0;
    result->_cachedSizeThatFits.width = width;
    result->_cachedSizeThatFits.height = height;
    result->_previousTargetSize = *MEMORY[0x277CBF3A8];
  }

  return result;
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 length];
  v6 = *MEMORY[0x277D74060];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __30___TVLabel_setAttributedText___block_invoke;
  v18[3] = &unk_279D6F188;
  v18[4] = self;
  objc_copyWeak(&v19, &location);
  [v4 enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v18}];
  v7 = [v4 mutableCopy];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v8 = [v4 length];
    v9 = *MEMORY[0x277D740C0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __30___TVLabel_setAttributedText___block_invoke_3;
    v15[3] = &unk_279D6E9F0;
    objc_copyWeak(&v17, &location);
    v16 = v7;
    [v4 enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0, v15}];

    objc_destroyWeak(&v17);
  }

  if ([v7 length])
  {
    v10 = [v7 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0];
    if (!v10)
    {
      if ([(_TVLabel *)self textAlignment]== 1)
      {
        v11 = [MEMORY[0x277D74248] defaultParagraphStyle];
        v12 = [v11 mutableCopy];

        [v12 setAlignment:{-[_TVLabel textAlignment](self, "textAlignment")}];
        [v12 setLineBreakMode:{-[_TVLabel lineBreakMode](self, "lineBreakMode")}];
        v10 = [v12 copy];
      }

      else
      {
        v10 = 0;
      }
    }

    [v7 tv_addLanguageAwareness:v10];
  }

  v13 = [v7 copy];

  v14.receiver = self;
  v14.super_class = _TVLabel;
  [(_TVLabel *)&v14 setAttributedText:v13];
  [(_TVLabel *)self _clearCachedValues];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)setTextColor:(id)a3
{
  v4 = [(_TVLabel *)self _accessibilityHigherContrastTintColorForColor:a3];
  v5.receiver = self;
  v5.super_class = _TVLabel;
  [(_TVLabel *)&v5 setTextColor:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(_TVLabel *)self attributedText];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(_TVLabel *)self attributedText];
    v7 = [(_TVLabel *)self attributedText];
    v8 = [v7 length];
    v9 = *MEMORY[0x277D74060];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __27___TVLabel_setHighlighted___block_invoke;
    v11[3] = &unk_279D70748;
    v11[4] = self;
    v13 = v3;
    objc_copyWeak(&v12, &location);
    [v6 enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0, v11}];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v10.receiver = self;
  v10.super_class = _TVLabel;
  [(UIView *)&v10 setHighlighted:v3];
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
    [(_TVLabel *)self _clearCachedValues];
  }
}

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = _TVLabel;
  [(_TVLabel *)&v4 setText:a3];
  [(_TVLabel *)self _clearCachedValues];
}

- (void)setFont:(id)a3
{
  v4.receiver = self;
  v4.super_class = _TVLabel;
  [(_TVLabel *)&v4 setFont:a3];
  [(_TVLabel *)self _clearCachedValues];
}

- (void)setLineBreakMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = _TVLabel;
  [(_TVLabel *)&v4 setLineBreakMode:a3];
  [(_TVLabel *)self _clearCachedValues];
}

- (void)setNumberOfLines:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = _TVLabel;
  [(_TVLabel *)&v4 setNumberOfLines:a3];
  [(_TVLabel *)self _clearCachedValues];
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _TVLabel;
  [(_TVLabel *)&v4 setAdjustsFontSizeToFitWidth:a3];
  [(_TVLabel *)self _clearCachedValues];
}

- (void)setBaselineAdjustment:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = _TVLabel;
  [(_TVLabel *)&v4 setBaselineAdjustment:a3];
  [(_TVLabel *)self _clearCachedValues];
}

- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_TVLabel *)self previousBounds];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (!CGRectEqualToRect(v15, v18) || [(_TVLabel *)self previousNumberOfLines]!= a4 || ([(_TVLabel *)self cachedTextRectForBounds], CGRectEqualToRect(v16, *MEMORY[0x277CBF3A0])))
  {
    v14.receiver = self;
    v14.super_class = _TVLabel;
    [(_TVLabel *)&v14 textRectForBounds:a4 limitedToNumberOfLines:x, y, width, height];
    [(_TVLabel *)self setCachedTextRectForBounds:?];
    [(_TVLabel *)self setPreviousBounds:x, y, width, height];
    [(_TVLabel *)self setPreviousNumberOfLines:a4];
  }

  [(_TVLabel *)self cachedTextRectForBounds];
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
  [(_TVLabel *)self padding];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = fmax(width - (v8 + v12), 0.0);
  v15 = fmax(height - (v6 + v10), 0.0);
  [(_TVLabel *)self cachedSizeThatFits];
  v17 = v16;
  v19 = v18;
  [(_TVLabel *)self previousTargetSize];
  if ([(UIView *)self tv_shouldReuseCachedSizeThatFits:v17 previousTargetSize:v19 newTargetSize:v20, v21, v14, v15])
  {
    v31.receiver = self;
    v31.super_class = _TVLabel;
    [(_TVLabel *)&v31 sizeThatFits:v14, v15];
    v23 = v22;
    *&v22 = v22;
    *&v24 = v24;
    [(_TVLabel *)self setCachedSizeThatFits:ceilf(*&v22), ceilf(*&v24)];
    if (v14 <= 0.0)
    {
      v25 = v14;
    }

    else
    {
      v25 = v23;
    }

    [(_TVLabel *)self setPreviousTargetSize:v25, v15];
  }

  [(_TVLabel *)self cachedSizeThatFits];
  v27 = v13 + v9 + v26;
  [(_TVLabel *)self cachedSizeThatFits];
  v29 = v11 + v7 + v28;
  v30 = v27;
  result.height = v29;
  result.width = v30;
  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_TVLabel *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(_TVLabel *)self padding];
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
  v20.super_class = _TVLabel;
  [(_TVLabel *)&v20 drawTextInRect:v22.origin.x, v22.origin.y, v22.size.width, v22.size.height];
}

- (void)_clearCachedValues
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  self->_cachedTextRectForBounds.origin = *MEMORY[0x277CBF3A0];
  self->_cachedTextRectForBounds.size = v3;
  self->_previousBounds.origin = v2;
  self->_previousBounds.size = v3;
  self->_previousNumberOfLines = 0;
  v4 = *MEMORY[0x277CBF3A8];
  self->_cachedSizeThatFits = *MEMORY[0x277CBF3A8];
  self->_previousTargetSize = v4;
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

@end