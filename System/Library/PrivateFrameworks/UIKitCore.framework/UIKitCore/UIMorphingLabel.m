@interface UIMorphingLabel
+ (id)preferredFontWithSize:(double)a3;
- (BOOL)canFitText:(id)a3;
- (CGRect)visibleRect;
- (UIMorphingLabel)initWithCoder:(id)a3;
- (UIMorphingLabel)initWithFrame:(CGRect)a3;
- (_NSRange)dstRangeOfAlignmentHunkAtIndex:(unint64_t)a3;
- (_NSRange)srcRangeOfAlignmentHunkAtIndex:(unint64_t)a3;
- (double)_rippleDurationForEndInsertion:(BOOL)a3;
- (double)alphaForFrame:(CGRect)a3;
- (double)changeInWidthDueToAlignmentHunkAtIndex:(unint64_t)a3;
- (double)currentMediaTime;
- (double)flushAmount;
- (double)requiredWidthForText:(id)a3;
- (double)totalLeftOffsetForAlignmentHunkAtIndex:(unint64_t)a3;
- (double)totalRightOffsetForAlignmentHunkAtIndex:(unint64_t)a3;
- (id)attributedStringForText:(id)a3;
- (id)glyphViewWithImage:(id)a3 isColorGlyph:(BOOL)a4;
- (id)uniqueString;
- (unint64_t)calculateHardAlignmentAtIndex:(unint64_t)a3 fromGlyphsInRange:(_NSRange)a4 toGlyphsInRange:(_NSRange)a5;
- (void)animateAlignmentHunkAtIndex:(unint64_t)a3;
- (void)animateChangeInWidthOutsideAlignmentHunkAtIndex:(unint64_t)a3;
- (void)animateDeletionAlignmentHunkAtIndex:(unint64_t)a3;
- (void)animateGlyph:(id)a3 toAlpha:(double)a4 duration:(double)a5 delay:(double)a6;
- (void)animateGlyph:(id)a3 toPosition:(CGPoint)a4 delay:(double)a5;
- (void)animateGlyph:(id)a3 toScale:(double)a4 delay:(double)a5;
- (void)animateGlyphs;
- (void)animateGlyphsInRange:(_NSRange)a3 ofGlyphSet:(id)a4 byOffset:(double)a5 delay:(double)a6;
- (void)animateHideGlyph:(id)a3 alphaDuration:(double)a4 delay:(double)a5;
- (void)animateInsertionAlignmentHunkAtIndex:(unint64_t)a3;
- (void)animateMovementAlignmentHunkAtIndex:(unint64_t)a3;
- (void)animateShowGlyph:(id)a3 alpha:(double)a4 alphaDuration:(double)a5 delay:(double)a6;
- (void)animateSubstitutionAlignmentHunkAtIndex:(unint64_t)a3;
- (void)baseInit;
- (void)calculateGlyphAlignment;
- (void)contentSizeDidChange:(id)a3;
- (void)copyStateFromGlyph:(id)a3 toGlyph:(id)a4;
- (void)hideGlyph:(id)a3;
- (void)initAlignmentHunkAtIndex:(unint64_t)a3;
- (void)initInsertionAlignmentHunkAtIndex:(unint64_t)a3;
- (void)initMovementAlignmentHunkAtIndex:(unint64_t)a3;
- (void)initSubstitutionAlignmentHunkAtIndex:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setVisibleRect:(CGRect)a3;
@end

@implementation UIMorphingLabel

- (void)layoutSubviews
{
  if (![(UIMorphingLabel *)self suppressLayoutSubviews])
  {
    [(UIView *)self->_colorView frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIView *)self bounds];
    v25.origin.x = v11;
    v25.origin.y = v12;
    v25.size.width = v13;
    v25.size.height = v14;
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    v15 = CGRectEqualToRect(v24, v25);
    if (!v15)
    {
      [(UIView *)self bounds];
      [(UIView *)self->_colorView setFrame:?];
    }

    if (self->_enableAnimation && self->_dstGlyphSet && !_AXSReduceMotionEnabled())
    {
      v21 = +[UIDevice currentDevice];
      v16 = [v21 _predictionGraphicsQuality] != 10;
    }

    else
    {
      v16 = 0;
    }

    if (!v15 || self->_textDidChange)
    {
      objc_storeStrong(&self->_srcGlyphSet, self->_dstGlyphSet);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __33__UIMorphingLabel_layoutSubviews__block_invoke;
      v23[3] = &unk_1E70F3590;
      v23[4] = self;
      [UIView performWithoutAnimation:v23];
      if (v16 && self->_textAnimationAttributes)
      {
        [(UIMorphingLabel *)self animateGlyphs];
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __33__UIMorphingLabel_layoutSubviews__block_invoke_2;
        v22[3] = &unk_1E70F3590;
        v22[4] = self;
        [UIView performWithoutAnimation:v22];
      }

      self->_textDidChange = 0;
      textAnimationAttributes = self->_textAnimationAttributes;
      self->_textAnimationAttributes = 0;
    }

    if (self->_textColorDidChange)
    {
      v18 = [(UIView *)self->_colorView layer];
      [v18 setValue:-[UIColor CGColor](self->_textColor forKeyPath:{"CGColor"), @"filters.color.inputColor"}];

      v19 = [(UIView *)self->_colorView layer];
      [v19 removeAnimationForKey:@"textColor"];

      self->_textColorDidChange = 0;
    }

    [(UIMorphingLabel *)self currentMediaTime];
    self->_lastUpdateTime = v20;
  }
}

void __33__UIMorphingLabel_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [UIMorphingLabelGlyphSet alloc];
  v3 = *(a1 + 32);
  v7 = [v3 attributedString];
  v4 = [(UIMorphingLabelGlyphSet *)v2 initWithLabel:v3 attributedString:v7];
  v5 = *(a1 + 32);
  v6 = *(v5 + 416);
  *(v5 + 416) = v4;
}

- (void)animateGlyphs
{
  [(UIMorphingLabel *)self currentMediaTime];
  lastUpdateTime = self->_lastUpdateTime;
  self->_isDoingFastAnimation = 0;
  v5 = fmin(v4 - lastUpdateTime, 0.5);
  v6 = v5 + v5;
  self->_rippleFactor = v6;
  v7 = 1.0;
  if (v6 >= 0.5)
  {
    v7 = 1.0 - (v6 + -0.5 + v6 + -0.5) + (v6 + -0.5 + v6 + -0.5) * self->_initialScale;
  }

  self->_scaleFactor = v7;
  self->_slowdown = self->_rippleFactor * UIAnimationDragCoefficient();
  [(UIMorphingLabel *)self calculateGlyphAlignment];
  if (self->_alignmentSize)
  {
    v8 = 0;
    do
    {
      [(UIMorphingLabel *)self initAlignmentHunkAtIndex:v8++];
      alignmentSize = self->_alignmentSize;
    }

    while (v8 < alignmentSize);
    if (alignmentSize)
    {
      for (i = 0; i < v11; ++i)
      {
        [(UIMorphingLabel *)self animateChangeInWidthOutsideAlignmentHunkAtIndex:i];
        v11 = self->_alignmentSize;
      }

      if (v11)
      {
        v12 = 0;
        do
        {
          [(UIMorphingLabel *)self animateAlignmentHunkAtIndex:v12++];
        }

        while (v12 < self->_alignmentSize);
      }
    }
  }

  if ([(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount])
  {
    v13 = 0;
    do
    {
      v14 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v15 = [v14 objectAtIndexedSubscript:v13];

      [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      ++v13;
    }

    while (v13 < [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount]);
  }
}

- (double)currentMediaTime
{
  v2 = [(UIView *)self layer];
  [v2 convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;

  return v4;
}

- (void)calculateGlyphAlignment
{
  v3 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount];
  v4 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount];
  v5 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphs];
  v6 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphs];
  if (v3 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  v8 = 0;
  if (v7)
  {
    while (v5[v8] == v6[v8])
    {
      if (v7 == ++v8)
      {
        v9 = 0;
        v8 = v7;
        goto LABEL_15;
      }
    }
  }

  v9 = v7 - v8;
  if (v7 <= v8)
  {
    v9 = 0;
    v7 = v8;
LABEL_14:
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    while (v5[v3 - 1 + v10] == v6[v4 - 1 + v10])
    {
      if (v8 - v7 == --v10)
      {
        goto LABEL_14;
      }
    }

    v9 = -v10;
    v7 = v8 - v10;
    if (!v8)
    {
LABEL_17:
      v11 = 0;
      goto LABEL_18;
    }
  }

LABEL_15:
  self->_alignmentSrc[0] = 0;
  self->_alignmentDst[0] = 0;
  v11 = 1;
  self->_alignmentIsEqual[0] = 1;
LABEL_18:
  if (v8 != v3 || v8 != v4)
  {
    if (v3 == v7 || v4 == v7 || (v12 = [(UIMorphingLabel *)self calculateHardAlignmentAtIndex:v11 fromGlyphsInRange:v8 toGlyphsInRange:v3 - v7, v8, v4 - v7], v12 == 0x7FFFFFFFFFFFFFFFLL))
    {
      self->_alignmentSrc[v11] = v8;
      self->_alignmentDst[v11] = v8;
      self->_alignmentIsEqual[v11] = 0;
      v12 = v11 + 1;
    }

    if (v9)
    {
      self->_alignmentSrc[v12] = v3 - v9;
      self->_alignmentDst[v12] = v4 - v9;
      self->_alignmentIsEqual[v12] = 1;
      v11 = v12 + 1;
    }

    else
    {
      v11 = v12;
    }
  }

  self->_alignmentSize = v11;
}

- (void)baseInit
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(UIMorphingLabel *)self setText:0];
  [(UIMorphingLabel *)self setTextAlignment:1];
  v3 = [UIMorphingLabel preferredFontWithSize:17.0];
  [(UIMorphingLabel *)self setFont:v3];

  v4 = +[UIColor blackColor];
  [(UIMorphingLabel *)self setTextColor:v4];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  hiddenGlyphViews = self->_hiddenGlyphViews;
  self->_hiddenGlyphViews = v5;

  v7 = *(MEMORY[0x1E695F050] + 16);
  self->_visibleRect.origin = *MEMORY[0x1E695F050];
  self->_visibleRect.size = v7;
  self->_lastUpdateTime = 0.0;
  self->_isDoingFastAnimation = 0;
  self->_enableAnimation = 1;
  v8 = [UIView alloc];
  v9 = [(UIView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  colorView = self->_colorView;
  self->_colorView = v9;

  [(UIView *)self addSubview:self->_colorView];
  v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
  [v11 setName:@"color"];
  v12 = [(UIMorphingLabel *)self textColor];
  [v11 setValue:objc_msgSend(v12 forKey:{"CGColor"), @"inputColor"}];

  v16[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v14 = [(UIView *)self->_colorView layer];
  [v14 setFilters:v13];

  self->_rippleDuration = -1.0;
  self->_initialScale = 0.6;
  self->_glyphScaleAnimationSpeed = 1.4;
  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 addObserver:self selector:sel_contentSizeDidChange_ name:@"UIContentSizeCategoryDidChangeNotification" object:0];
}

uint64_t __33__UIMorphingLabel_layoutSubviews__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 408) removeGlyphs];
  v2 = *(a1 + 32);
  v3 = *(v2 + 408);
  *(v2 + 408) = 0;

  v4 = *(*(a1 + 32) + 416);

  return [v4 placeGlyphs];
}

+ (id)preferredFontWithSize:(double)a3
{
  v4 = [UIApp preferredContentSizeCategory];
  if (([v4 isEqualToString:@"UICTContentSizeCategoryL"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"UICTContentSizeCategoryXL"])
    {
      v5 = 2.0;
LABEL_9:
      a3 = a3 + v5;
      goto LABEL_10;
    }

    if ([v4 isEqualToString:@"UICTContentSizeCategoryXXL"])
    {
      v5 = 4.0;
      goto LABEL_9;
    }

    if (([v4 isEqualToString:@"UICTContentSizeCategoryXXXL"] & 1) != 0 || _UIContentSizeCategoryIsAccessibilityContentSizeCategory(v4, v6))
    {
      v5 = 6.0;
      goto LABEL_9;
    }
  }

LABEL_10:
  v7 = [off_1E70ECC18 systemFontOfSize:a3];

  return v7;
}

- (UIMorphingLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIMorphingLabel;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIMorphingLabel *)v3 baseInit];
  }

  return v4;
}

- (UIMorphingLabel)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIMorphingLabel;
  v3 = [(UIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(UIMorphingLabel *)v3 baseInit];
  }

  return v4;
}

- (double)alphaForFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = 1.0;
  if (!CGRectIsNull(self->_visibleRect))
  {
    [(UIMorphingLabel *)self visibleRect];
    v11 = CGRectInset(v10, -1.0, 0.0);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    if (!CGRectContainsRect(v11, v14))
    {
      [(UIMorphingLabel *)self visibleRect];
      v13 = CGRectInset(v12, -8.0, 0.0);
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      if (CGRectContainsRect(v13, v15))
      {
        return 0.5;
      }

      else
      {
        return 0.3;
      }
    }
  }

  return v8;
}

- (void)setVisibleRect:(CGRect)a3
{
  self->_visibleRect = a3;
  if ([(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v7 = [v6 objectAtIndexedSubscript:v5];

      v8 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      [(UIMorphingLabel *)self alphaForFrame:v8[v4].origin.x, v8[v4].origin.y, v8[v4].size.width, v8[v4].size.height];
      v10 = v9;
      v11 = [v7 layer];
      *&v12 = v10;
      [v11 setOpacity:v12];

      ++v5;
      ++v4;
    }

    while (v5 < [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount]);
  }
}

- (double)_rippleDurationForEndInsertion:(BOOL)a3
{
  result = self->_rippleDuration;
  if (result <= 0.0)
  {
    v4 = 0.1;
    if (a3)
    {
      v4 = 0.125;
    }

    return v4 * self->_rippleFactor;
  }

  return result;
}

- (unint64_t)calculateHardAlignmentAtIndex:(unint64_t)a3 fromGlyphsInRange:(_NSRange)a4 toGlyphsInRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4.length;
  v8 = a4.location;
  if (!calculateHardAlignmentAtIndex_fromGlyphsInRange_toGlyphsInRange__memoTable)
  {
    calculateHardAlignmentAtIndex_fromGlyphsInRange_toGlyphsInRange__memoTable = malloc_type_malloc(0x1452uLL, 0x1000040BDFB0063uLL);
    bzero(calculateHardAlignmentAtIndex_fromGlyphsInRange_toGlyphsInRange__memoTable, 0x1452uLL);
  }

  v11 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphs];
  v12 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphs];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 <= 0x32 && length <= 0x32)
  {
    v14 = 0;
    v15 = &v11[v8];
    v16 = &v12[location];
    v17 = calculateHardAlignmentAtIndex_fromGlyphsInRange_toGlyphsInRange__memoTable;
    v18 = calculateHardAlignmentAtIndex_fromGlyphsInRange_toGlyphsInRange__memoTable + 1;
    while (1)
    {
      v19 = 0;
      v20 = v18;
      do
      {
        if (!v14 || !v19)
        {
          *(v20 - 1) = 0;
          *v20 = 2 * (v14 == 0);
          goto LABEL_19;
        }

        v21 = *(v20 - 103);
        v22 = *(v20 - 3);
        if (v15[v14 - 1] == v16[v19 - 1])
        {
          v23 = *(v20 - 105) + 1;
        }

        else
        {
          v23 = *(v20 - 105);
        }

        if (v23 < v21)
        {
          if (v21 >= v22)
          {
            *(v20 - 1) = v21;
            goto LABEL_19;
          }

LABEL_17:
          *(v20 - 1) = v22;
          *v20 = 2;
          goto LABEL_19;
        }

        if (v23 < v22)
        {
          goto LABEL_17;
        }

        *(v20 - 1) = v23;
        *v20 = 1;
LABEL_19:
        ++v19;
        v20 += 2;
      }

      while (length + 1 != v19);
      v18 += 102;
      if (v14++ == v7)
      {
        if (v7 | length)
        {
          v25 = *(v17 + 102 * v7 + 2 * length + 1);
          v26 = v7;
          v27 = length;
          while (1)
          {
            if (v25 == 2)
            {
              --v27;
              v28 = 5;
              goto LABEL_30;
            }

            if (v25 == 1)
            {
              break;
            }

            if (!v25)
            {
              --v26;
              v28 = 3;
LABEL_30:
              v29 = v17 + 102 * v26 + 2 * v27;
              v25 = *(v29 + 1);
              *(v29 + 1) = v28;
            }

            if (!(v26 | v27))
            {
              goto LABEL_32;
            }
          }

          --v26;
          --v27;
          v28 = 4;
          goto LABEL_30;
        }

LABEL_32:
        v30 = 0;
        for (i = 0; ; i = v33)
        {
          if (i >= v7)
          {
            if (v30 >= length || a3 >= 0x64)
            {
LABEL_64:
              if (v30 >= length && i >= v7)
              {
                return a3;
              }

              else
              {
                return 0x7FFFFFFFFFFFFFFFLL;
              }
            }
          }

          else if (a3 > 0x63)
          {
            goto LABEL_64;
          }

          if (*(v17 + 102 * i + 2 * v30 + 1) != 4 || v15[i] != v16[v30])
          {
            break;
          }

          if (i >= v7 && v30 >= length)
          {
            v32 = 1;
LABEL_46:
            j = v30;
            v33 = i;
            goto LABEL_63;
          }

          v36 = (v17 + 1 + 102 * i + 2 * v30);
          v33 = i;
          for (j = v30; v33 < v7 || j < length; ++j)
          {
            v37 = *v36;
            v36 += 104;
            if (v37 != 4)
            {
              break;
            }

            if (v15[v33] != v16[j])
            {
              break;
            }

            ++v33;
          }

          v32 = 1;
LABEL_63:
          self->_alignmentSrc[a3] = i + v8;
          self->_alignmentDst[a3] = v30 + location;
          self->_alignmentIsEqual[a3++] = v32;
          v30 = j;
        }

        v33 = i;
        j = v30;
        if (i >= v7)
        {
          v33 = i;
          j = v30;
          if (v30 >= length)
          {
            v32 = 0;
            goto LABEL_46;
          }
        }

        while (2)
        {
          v35 = *(v17 + 102 * v33 + 2 * j + 1);
          switch(v35)
          {
            case 3:
              ++v33;
              break;
            case 5:
              goto LABEL_52;
            case 4:
              if (v15[v33] == v16[j])
              {
                goto LABEL_56;
              }

              ++v33;
LABEL_52:
              ++j;
              break;
          }

          if (v33 >= v7 && j >= length)
          {
LABEL_56:
            v32 = 0;
            goto LABEL_63;
          }

          continue;
        }
      }
    }
  }

  return result;
}

- (_NSRange)srcRangeOfAlignmentHunkAtIndex:(unint64_t)a3
{
  v3 = self->_alignmentSrc[a3];
  if (self->_alignmentSize - 1 <= a3)
  {
    v4 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount];
  }

  else
  {
    v4 = self->_alignmentSrc[a3 + 1];
  }

  v5 = v4 - v3;
  v6 = v3;
  result.length = v5;
  result.location = v6;
  return result;
}

- (_NSRange)dstRangeOfAlignmentHunkAtIndex:(unint64_t)a3
{
  v3 = self->_alignmentDst[a3];
  if (self->_alignmentSize - 1 <= a3)
  {
    v4 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount];
  }

  else
  {
    v4 = self->_alignmentDst[a3 + 1];
  }

  v5 = v4 - v3;
  v6 = v3;
  result.length = v5;
  result.location = v6;
  return result;
}

- (id)glyphViewWithImage:(id)a3 isColorGlyph:(BOOL)a4
{
  v5 = self;
  hiddenGlyphViews = self->_hiddenGlyphViews;
  v7 = a3;
  if (![(NSMutableArray *)hiddenGlyphViews count]|| a4)
  {
    v8 = [[UIMorphingLabelImageView alloc] initWithImage:v7];

    if (!a4)
    {
      v5 = v5->_colorView;
    }

    [(UIView *)v5 addSubview:v8];
  }

  else
  {
    v8 = [(NSMutableArray *)v5->_hiddenGlyphViews lastObject];
    [(NSMutableArray *)v5->_hiddenGlyphViews removeLastObject];
    [(UIMorphingLabelImageView *)v8 setImage:v7];
    v9 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);
    [v7 size];
    v12 = v11;
    v14 = v13;

    [(UIView *)v8 setFrame:v9, v10, v12, v14];
    [(UIView *)v8 setAlpha:1.0];
    [(UIView *)v8 setHidden:0];
    [(UIView *)v5->_colorView bringSubviewToFront:v8];
  }

  return v8;
}

- (void)hideGlyph:(id)a3
{
  v7 = a3;
  v4 = [v7 superview];
  colorView = self->_colorView;

  if (v4 == colorView)
  {
    [v7 setHidden:1];
    [v7 setImage:0];
    v6 = [v7 layer];
    [v6 removeAllAnimations];

    [(NSMutableArray *)self->_hiddenGlyphViews addObject:v7];
  }

  else
  {
    [v7 removeFromSuperview];
  }
}

- (id)uniqueString
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = uniqueString_nextId++;
  v3 = snprintf(__str, 0x100uLL, "%u", v2);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__str length:v3 & ~(v3 >> 31) encoding:4];

  return v4;
}

- (void)animateGlyph:(id)a3 toPosition:(CGPoint)a4 delay:(double)a5
{
  y = a4.y;
  x = a4.x;
  v49 = a3;
  v8 = [v49 layer];
  [v8 position];
  v10 = v9;
  v12 = v11;

  if (v10 != x || v12 != y)
  {
    [(UIMorphingLabel *)self visibleRect];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v49 bounds];
    [(UIView *)self convertRect:v49 fromView:?];
    v53.origin.x = v22;
    v53.origin.y = v23;
    v53.size.width = v24;
    v53.size.height = v25;
    v51.origin.x = v15;
    v51.origin.y = v17;
    v51.size.width = v19;
    v51.size.height = v21;
    v26 = CGRectIntersectsRect(v51, v53);
    v27 = [v49 layer];
    [v27 setPosition:{x, y}];

    if (v26 || (-[UIMorphingLabel visibleRect](self, "visibleRect"), v29 = v28, v31 = v30, v33 = v32, v35 = v34, [v49 bounds], -[UIView convertRect:fromView:](self, "convertRect:fromView:", v49), v54.origin.x = v36, v54.origin.y = v37, v54.size.width = v38, v54.size.height = v39, v52.origin.x = v29, v52.origin.y = v31, v52.size.width = v33, v52.size.height = v35, CGRectIntersectsRect(v52, v54)))
    {
      v40 = [MEMORY[0x1E69794A8] animationWithKeyPath:{@"position", *&a5}];
      [v40 setMass:2.0];
      [v40 setStiffness:300.0];
      [v40 setDamping:400.0];
      v41 = [MEMORY[0x1E696B098] valueWithCGPoint:{v10 - x, v12 - y}];
      [v40 setFromValue:v41];

      v42 = [MEMORY[0x1E696B098] valueWithCGPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      [v40 setToValue:v42];

      v43 = 1.4 / self->_slowdown;
      *&v43 = v43;
      [v40 setSpeed:v43];
      [v40 setDuration:1.0];
      [(UIMorphingLabel *)self currentMediaTime];
      [v40 setBeginTime:v44 + self->_slowdown * v48];
      [(_UIViewAnimationAttributes *)self->_textAnimationAttributes _frameInterval];
      [v40 setFrameInterval:?];
      [v40 setFillMode:*MEMORY[0x1E69797D8]];
      [v40 setAdditive:1];
      v45 = [v49 layer];
      v46 = [(UIMorphingLabel *)self uniqueString];
      [v45 addAnimation:v40 forKey:v46];
    }
  }
}

- (void)animateGlyph:(id)a3 toAlpha:(double)a4 duration:(double)a5 delay:(double)a6
{
  v10 = a3;
  v11 = [v10 layer];
  [v11 opacity];
  v13 = v12;

  v15 = [v10 layer];
  v14 = a4;
  *&v16 = v14;
  [v15 setOpacity:v16];

  if (v13 == a4 || (-[UIMorphingLabel visibleRect](self, "visibleRect"), v18 = v17, v20 = v19, v22 = v21, v24 = v23, [v10 bounds], -[UIView convertRect:fromView:](self, "convertRect:fromView:", v10), v47.origin.x = v25, v47.origin.y = v26, v47.size.width = v27, v47.size.height = v28, v46.origin.x = v18, v46.origin.y = v20, v46.size.width = v22, v46.size.height = v24, !CGRectIntersectsRect(v46, v47)))
  {
    if (a4 == 0.0)
    {
      [(UIMorphingLabel *)self hideGlyph:v10];
    }
  }

  else
  {
    v29 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v30 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v29 setTimingFunction:v30];

    v31 = [MEMORY[0x1E696AD98] numberWithDouble:v13 - a4];
    [v29 setFromValue:v31];

    [v29 setToValue:&unk_1EFE320F8];
    v32 = 1.0 / self->_slowdown;
    *&v32 = v32;
    [v29 setSpeed:v32];
    [v29 setDuration:a5];
    [(UIMorphingLabel *)self currentMediaTime];
    [v29 setBeginTime:v33 + self->_slowdown * a6];
    [(_UIViewAnimationAttributes *)self->_textAnimationAttributes _frameInterval];
    [v29 setFrameInterval:?];
    [v29 setFillMode:*MEMORY[0x1E69797D8]];
    [v29 setAdditive:1];
    if (a4 == 0.0)
    {
      [MEMORY[0x1E6979518] begin];
      v34 = MEMORY[0x1E6979518];
      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __55__UIMorphingLabel_animateGlyph_toAlpha_duration_delay___block_invoke;
      v43 = &unk_1E70F35B8;
      v44 = self;
      v35 = v10;
      v45 = v35;
      [v34 setCompletionBlock:&v40];

      v36 = [v35 layer];
      v37 = [(UIMorphingLabel *)self uniqueString];
      [v36 addAnimation:v29 forKey:v37];

      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      v38 = [v10 layer];
      v39 = [(UIMorphingLabel *)self uniqueString];
      [v38 addAnimation:v29 forKey:v39];
    }
  }
}

- (void)animateGlyph:(id)a3 toScale:(double)a4 delay:(double)a5
{
  v37 = a3;
  v8 = [v37 layer];
  v9 = [v8 valueForKeyPath:@"transform.scale.xy"];
  [v9 floatValue];
  v11 = v10;

  if (v11 != a4)
  {
    v12 = [v37 layer];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    [v12 setValue:v13 forKeyPath:@"transform.scale.xy"];

    [(UIMorphingLabel *)self visibleRect];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v37 bounds];
    [(UIView *)self convertRect:v37 fromView:?];
    v40.origin.x = v22;
    v40.origin.y = v23;
    v40.size.width = v24;
    v40.size.height = v25;
    v39.origin.x = v15;
    v39.origin.y = v17;
    v39.size.width = v19;
    v39.size.height = v21;
    if (CGRectIntersectsRect(v39, v40))
    {
      glyphScaleAnimationSpeed = self->_glyphScaleAnimationSpeed;
      v27 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
      v28 = v27;
      v29 = 1.0;
      v30 = dbl_18A680840[a4 < 1.0];
      if (a4 >= 1.0)
      {
        v31 = 45.0;
      }

      else
      {
        v29 = 2.0;
        v31 = 34.0;
      }

      [v27 setMass:v29];
      [v28 setStiffness:v30];
      [v28 setDamping:v31];
      v32 = [MEMORY[0x1E696AD98] numberWithDouble:v11 - a4];
      [v28 setFromValue:v32];

      [v28 setToValue:&unk_1EFE320F8];
      v33 = glyphScaleAnimationSpeed / self->_slowdown;
      *&v33 = v33;
      [v28 setSpeed:v33];
      [v28 setDuration:1.0];
      [(UIMorphingLabel *)self currentMediaTime];
      [v28 setBeginTime:v34 + self->_slowdown * a5];
      [(_UIViewAnimationAttributes *)self->_textAnimationAttributes _frameInterval];
      [v28 setFrameInterval:?];
      [v28 setFillMode:*MEMORY[0x1E69797D8]];
      [v28 setAdditive:1];
      v35 = [v37 layer];
      v36 = [(UIMorphingLabel *)self uniqueString];
      [v35 addAnimation:v28 forKey:v36];
    }
  }
}

- (void)animateShowGlyph:(id)a3 alpha:(double)a4 alphaDuration:(double)a5 delay:(double)a6
{
  scaleFactor = self->_scaleFactor;
  v11 = a3;
  CATransform3DMakeScale(&v15, scaleFactor, scaleFactor, 1.0);
  v12 = [v11 layer];
  v14 = v15;
  [v12 setTransform:&v14];

  v13 = [v11 layer];
  [v13 setOpacity:0.0];

  [(UIMorphingLabel *)self animateGlyph:v11 toScale:1.0 delay:a6];
  [(UIMorphingLabel *)self animateGlyph:v11 toAlpha:a4 duration:a5 delay:a6];
}

- (void)animateHideGlyph:(id)a3 alphaDuration:(double)a4 delay:(double)a5
{
  scaleFactor = self->_scaleFactor;
  v9 = a3;
  [(UIMorphingLabel *)self animateGlyph:v9 toScale:scaleFactor delay:a5];
  [(UIMorphingLabel *)self animateGlyph:v9 toAlpha:0.0 duration:a4 delay:a5];
}

- (double)totalLeftOffsetForAlignmentHunkAtIndex:(unint64_t)a3
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v6 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
  if (self->_alignmentIsEqual[a3])
  {
    v7 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphPositions][16 * v5];
    v8 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions][16 * v6];
  }

  else
  {
    srcGlyphSet = self->_srcGlyphSet;
    if (v5)
    {
      v7 = *([(UIMorphingLabelGlyphSet *)srcGlyphSet glyphPositions]+ 16 * v5 - 16);
      v8 = *([(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions]+ 16 * v6 - 16);
    }

    else
    {
      [(UIMorphingLabelGlyphSet *)srcGlyphSet lineOrigin];
      v7 = v10;
      [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet lineOrigin];
    }
  }

  return v8 - v7;
}

- (double)totalRightOffsetForAlignmentHunkAtIndex:(unint64_t)a3
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v7 = v6;
  v8 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
  v10 = v9;
  if (self->_alignmentIsEqual[a3])
  {
    v11 = *([(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphPositions]+ 16 * v5 + 16 * v7 - 16);
    v12 = *([(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions]+ 16 * v8 + 16 * v10 - 16);
  }

  else
  {
    v13 = v5 + v7;
    v14 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount];
    srcGlyphSet = self->_srcGlyphSet;
    if (v13 == v14)
    {
      [(UIMorphingLabelGlyphSet *)srcGlyphSet lineOrigin];
      v17 = v16;
      [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet lineWidth];
      v11 = v17 + v18;
      [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet lineOrigin];
      v20 = v19;
      [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet lineWidth];
      v12 = v20 + v21;
    }

    else
    {
      v11 = [(UIMorphingLabelGlyphSet *)srcGlyphSet glyphPositions][16 * v13];
      v12 = ([(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions]+ 16 * v8)[16 * v10];
    }
  }

  return v12 - v11;
}

- (double)changeInWidthDueToAlignmentHunkAtIndex:(unint64_t)a3
{
  [(UIMorphingLabel *)self totalRightOffsetForAlignmentHunkAtIndex:?];
  v6 = v5;
  [(UIMorphingLabel *)self totalLeftOffsetForAlignmentHunkAtIndex:a3];
  return v6 - v7;
}

- (void)animateGlyphsInRange:(_NSRange)a3 ofGlyphSet:(id)a4 byOffset:(double)a5 delay:(double)a6
{
  length = a3.length;
  location = a3.location;
  v11 = a4;
  if (a5 != 0.0 && location < location + length)
  {
    v20 = v11;
    do
    {
      v13 = [v20 glyphViews];
      v14 = [v13 objectAtIndexedSubscript:location];

      v15 = [v14 layer];
      [v15 position];
      v17 = v16;
      v19 = v18;

      [(UIMorphingLabel *)self animateGlyph:v14 toPosition:v17 + a5 delay:v19, a6];
      v11 = v20;
      ++location;
      --length;
    }

    while (length);
  }
}

- (void)animateChangeInWidthOutsideAlignmentHunkAtIndex:(unint64_t)a3
{
  if (!self->_alignmentIsEqual[a3])
  {
    [(UIMorphingLabel *)self changeInWidthDueToAlignmentHunkAtIndex:?];
    if (v5 != 0.0)
    {
      v6 = v5;
      v7 = self->_alignmentDelays[a3];
      [(UIMorphingLabel *)self flushAmount];
      v9 = -(v6 * v8);
      [(UIMorphingLabel *)self flushAmount];
      v11 = v6 * (1.0 - v10);
      v12 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:a3];
      v14 = v13;
      v15 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
      v17 = v16;
      v18 = v12 + v14;
      v19 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount]- v18;
      v20 = v15 + v17;
      v21 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount]- v20;
      [(UIMorphingLabel *)self animateGlyphsInRange:0 ofGlyphSet:v12 byOffset:self->_srcGlyphSet delay:v9, v7];
      [(UIMorphingLabel *)self animateGlyphsInRange:v18 ofGlyphSet:v19 byOffset:self->_srcGlyphSet delay:v11, v7];
      [(UIMorphingLabel *)self animateGlyphsInRange:0 ofGlyphSet:v15 byOffset:self->_dstGlyphSet delay:v9, v7];
      dstGlyphSet = self->_dstGlyphSet;

      [(UIMorphingLabel *)self animateGlyphsInRange:v20 ofGlyphSet:v21 byOffset:dstGlyphSet delay:v11, v7];
    }
  }
}

- (void)initInsertionAlignmentHunkAtIndex:(unint64_t)a3
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v6 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
  v8 = v7;
  if ([(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount])
  {
    if (v5 | v6)
    {
      [(UIMorphingLabel *)self totalLeftOffsetForAlignmentHunkAtIndex:a3];
    }

    else
    {
      [(UIMorphingLabel *)self totalRightOffsetForAlignmentHunkAtIndex:a3];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  if (v6 < v6 + v8)
  {
    v11 = v6;
    do
    {
      v12 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v13 = [v12 objectAtIndexedSubscript:v6];

      v14 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      y = v14[v11].y;
      v16 = v14[v11].x - v10;
      v17 = [v13 layer];
      [v17 setPosition:{v16, y}];

      ++v6;
      ++v11;
      --v8;
    }

    while (v8);
  }
}

- (void)animateInsertionAlignmentHunkAtIndex:(unint64_t)a3
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v6 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
  v8 = v7;
  v9 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount];
  if (v9)
  {
    v10 = (v5 | v6) == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = (v9 != 0) ^ [(UIMorphingLabel *)self _isRTL];
    goto LABEL_7;
  }

  if (v5 == [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount])
  {
    v13 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount];
    v11 = [(UIMorphingLabel *)self _isRTL];
    if (v6 + v8 != v13)
    {
      goto LABEL_12;
    }

LABEL_7:
    v12 = 1;
    goto LABEL_13;
  }

  v11 = [(UIMorphingLabel *)self _isRTL];
LABEL_12:
  v12 = 0;
LABEL_13:
  [(UIMorphingLabel *)self _rippleDurationForEndInsertion:v12];
  [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet boundingRectForGlyphsInRange:v6, v8];
  if (v6 < v6 + v8)
  {
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    v22 = (32 * v6) | 0x18;
    v23 = (16 * v6) | 8;
    do
    {
      v24 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v25 = [v24 objectAtIndexedSubscript:v6];

      v26 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      v27 = *(v26 + v22 - 24);
      v28 = *(v26 + v22 - 16);
      v29 = *(v26 + v22 - 8);
      v30 = *(&v26->origin.x + v22);
      if (v11)
      {
        CGRectGetMaxX(*&v27);
      }

      else
      {
        CGRectGetMinX(*&v27);
      }

      v33.origin.x = v18;
      v33.origin.y = v19;
      v33.size.width = v20;
      v33.size.height = v21;
      CGRectGetMinX(v33);
      v34.origin.x = v18;
      v34.origin.y = v19;
      v34.size.width = v20;
      v34.size.height = v21;
      CGRectGetMaxX(v34);
      v31 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      [(UIMorphingLabel *)self animateGlyph:v25 toPosition:*(v31 + v23 - 8) delay:*(&v31->x + v23), 0.0];
      v32 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      [(UIMorphingLabel *)self alphaForFrame:*(v32 + v22 - 24), *(v32 + v22 - 16), *(v32 + v22 - 8), *(&v32->origin.x + v22)];
      [UIMorphingLabel animateShowGlyph:"animateShowGlyph:alpha:alphaDuration:delay:" alpha:v25 alphaDuration:? delay:?];

      ++v6;
      v22 += 32;
      v23 += 16;
      --v8;
    }

    while (v8);
  }
}

- (void)animateDeletionAlignmentHunkAtIndex:(unint64_t)a3
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v7 = v6;
  v8 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
  if (![(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount])
  {
    v11 = 0.0;
LABEL_5:
    v46 = v11;
    v10 = 1;
    goto LABEL_6;
  }

  if (!(v5 | v8))
  {
    [(UIMorphingLabel *)self totalRightOffsetForAlignmentHunkAtIndex:a3];
    v46 = v9;
    v10 = 0;
LABEL_6:
    v12 = v10 ^ [(UIMorphingLabel *)self _isRTL];
    v13 = v5 + v7;
    v14 = 0.1;
    *&v15 = 0.14;
    goto LABEL_11;
  }

  v13 = v5 + v7;
  if (v5 + v7 == [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount]&& v8 == [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount])
  {
    [(UIMorphingLabel *)self totalLeftOffsetForAlignmentHunkAtIndex:a3];
    goto LABEL_5;
  }

  [(UIMorphingLabel *)self totalLeftOffsetForAlignmentHunkAtIndex:a3];
  v46 = v16;
  v12 = ![(UIMorphingLabel *)self _isRTL];
  v14 = 0.12;
  *&v15 = 0.1;
LABEL_11:
  v45 = *&v15;
  rippleFactor = self->_rippleFactor;
  [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet boundingRectForGlyphsInRange:v5, v7];
  v43 = v19;
  v44 = v18;
  v41 = v21;
  v42 = v20;
  if (v5 < v13)
  {
    v40 = v14 * rippleFactor;
    v22 = v5;
    v23 = (16 * v5) | 8;
    do
    {
      v24 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphViews];
      v25 = [v24 objectAtIndexedSubscript:v5];

      v26 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphPositions];
      v27 = *(v26 + v23 - 8);
      v28 = *(&v26->x + v23);
      v29 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphFrames];
      x = v29[v22].origin.x;
      y = v29[v22].origin.y;
      width = v29[v22].size.width;
      height = v29[v22].size.height;
      if (v12)
      {
        MaxX = CGRectGetMaxX(*&x);
      }

      else
      {
        MaxX = CGRectGetMinX(*&x);
      }

      v35 = MaxX;
      v36 = v46 + v27;
      v47.origin.x = v44;
      v47.origin.y = v43;
      v47.size.width = v42;
      v47.size.height = v41;
      MinX = CGRectGetMinX(v47);
      v48.origin.x = v44;
      v48.origin.y = v43;
      v48.size.width = v42;
      v48.size.height = v41;
      v38 = v40 * ((v35 - MinX) / (CGRectGetMaxX(v48) - MinX));
      if (v12)
      {
        v38 = v40 - v38;
      }

      if (v38 >= 0.0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0.0;
      }

      [(UIMorphingLabel *)self animateGlyph:v25 toPosition:v36 delay:v28, 0.0];
      [(UIMorphingLabel *)self animateHideGlyph:v25 alphaDuration:v45 delay:v39];

      ++v5;
      ++v22;
      v23 += 16;
    }

    while (v13 != v5);
  }
}

- (void)initSubstitutionAlignmentHunkAtIndex:(unint64_t)a3
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v7 = v6;
  v8 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
  v10 = v9;
  if ([(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount]== v7 && [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount]== v10 || v5 | v8)
  {
    [(UIMorphingLabel *)self totalLeftOffsetForAlignmentHunkAtIndex:a3];
  }

  else
  {
    [(UIMorphingLabel *)self totalRightOffsetForAlignmentHunkAtIndex:a3];
  }

  v12 = v11;
  [(UIMorphingLabel *)self changeInWidthDueToAlignmentHunkAtIndex:a3];
  if (v13 > 0.0)
  {
    [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet boundingRectForGlyphsInRange:v5, v7];
    v15 = v14;
    [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet boundingRectForGlyphsInRange:v8, v10];
    if (v15 < v16)
    {
      v17 = v16;
      v18 = [(UIMorphingLabel *)self _isRTL];
      v19 = v15 / v17 * 0.2;
      if (v18)
      {
        v19 = 0.2 - v19;
      }

      if (v19 < 0.0)
      {
        v19 = 0.0;
      }

      self->_alignmentDelays[a3] = v19;
    }
  }

  if (v8 < v8 + v10)
  {
    v20 = v8;
    do
    {
      v21 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v22 = [v21 objectAtIndexedSubscript:v8];

      v23 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      y = v23[v20].y;
      v25 = v23[v20].x - v12;
      v26 = [v22 layer];
      [v26 setPosition:{v25, y}];

      ++v8;
      ++v20;
      --v10;
    }

    while (v10);
  }
}

- (void)animateSubstitutionAlignmentHunkAtIndex:(unint64_t)a3
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v7 = v6;
  v8 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
  v10 = v9;
  v11 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions][16 * v8];
  v12 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
  v13 = [v12 objectAtIndexedSubscript:v8];
  v14 = [v13 layer];
  [v14 position];
  v16 = v15;

  [(UIMorphingLabel *)self changeInWidthDueToAlignmentHunkAtIndex:a3];
  v18 = v17 < 0.0;
  if (!(v5 | v8))
  {
    v18 = (v17 < 0.0) ^ (v7 < [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount]);
  }

  v19 = v18 ^ [(UIMorphingLabel *)self _isRTL];
  [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet boundingRectForGlyphsInRange:v8, v10];
  x = v20;
  y = v22;
  width = v24;
  height = v26;
  v73 = (&self->super.super.super.isa + a3);
  if (v5 < v5 + v7)
  {
    v72 = v19;
    v28 = v11 - v16;
    v29 = 408;
    v30 = v7;
    v31 = v5;
    do
    {
      [*(&self->super.super.super.isa + v29) glyphViews];
      v33 = v32 = v29;
      v34 = [v33 objectAtIndexedSubscript:v31];

      v35 = [v34 layer];
      [v35 position];
      v37 = v36;
      v39 = v38;

      v29 = v32;
      [(UIMorphingLabel *)self animateGlyph:v34 toPosition:v28 + v37 delay:v39, v73[269]];
      [v34 frame];
      v80.origin.x = v40;
      v80.origin.y = v41;
      v80.size.width = v42;
      v80.size.height = v43;
      v74.origin.x = x;
      v74.origin.y = y;
      v74.size.width = width;
      v74.size.height = height;
      v75 = CGRectUnion(v74, v80);
      x = v75.origin.x;
      y = v75.origin.y;
      width = v75.size.width;
      height = v75.size.height;

      ++v31;
      --v30;
    }

    while (v30);
    v19 = v72;
    do
    {
      v44 = [*(&self->super.super.super.isa + v29) glyphViews];
      v45 = [v44 objectAtIndexedSubscript:v5];

      [v45 frame];
      if (v72)
      {
        MaxX = CGRectGetMaxX(*&v46);
      }

      else
      {
        MaxX = CGRectGetMinX(*&v46);
      }

      v51 = MaxX;
      v76.origin.x = x;
      v76.origin.y = y;
      v76.size.width = width;
      v76.size.height = height;
      MinX = CGRectGetMinX(v76);
      v77.origin.x = x;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = height;
      v53 = (v51 - MinX) / (CGRectGetMaxX(v77) - MinX) * 0.2;
      if (v72)
      {
        v53 = 0.2 - v53;
      }

      v54 = 0.0;
      if (v53 >= 0.0)
      {
        v54 = v53;
      }

      [(UIMorphingLabel *)self animateHideGlyph:v45 alphaDuration:0.1 delay:v54];

      ++v5;
      --v7;
    }

    while (v7);
  }

  if (v8 < v8 + v10)
  {
    v55 = (32 * v8) | 0x18;
    v56 = (16 * v8) | 8;
    do
    {
      v57 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      v58 = *(v57 + v55 - 24);
      v59 = *(v57 + v55 - 16);
      v60 = *(v57 + v55 - 8);
      v61 = *(&v57->origin.x + v55);
      if (v19)
      {
        v62 = CGRectGetMaxX(*&v58);
      }

      else
      {
        v62 = CGRectGetMinX(*&v58);
      }

      v63 = v62;
      v64 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v65 = [v64 objectAtIndexedSubscript:v8];

      v66 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      [(UIMorphingLabel *)self animateGlyph:v65 toPosition:*(v66 + v56 - 8) delay:*(&v66->x + v56), v73[269]];
      v67 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      [(UIMorphingLabel *)self alphaForFrame:*(v67 + v55 - 24), *(v67 + v55 - 16), *(v67 + v55 - 8), *(&v67->origin.x + v55)];
      v69 = v68;
      v78.origin.x = x;
      v78.origin.y = y;
      v78.size.width = width;
      v78.size.height = height;
      v70 = CGRectGetMinX(v78);
      v79.origin.x = x;
      v79.origin.y = y;
      v79.size.width = width;
      v79.size.height = height;
      v71 = (v63 - v70) / (CGRectGetMaxX(v79) - v70) * 0.2;
      if (v19)
      {
        v71 = 0.2 - v71;
      }

      if (v71 < 0.0)
      {
        v71 = 0.0;
      }

      [(UIMorphingLabel *)self animateShowGlyph:v65 alpha:v69 alphaDuration:0.14 delay:v71 + 0.02];

      ++v8;
      v55 += 32;
      v56 += 16;
      --v10;
    }

    while (v10);
  }
}

- (void)copyStateFromGlyph:(id)a3 toGlyph:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 layer];
  [v7 position];
  v9 = v8;
  v11 = v10;
  v12 = [v6 layer];
  [v12 setPosition:{v9, v11}];

  v13 = [v5 layer];
  [v13 opacity];
  LODWORD(v9) = v14;
  v15 = [v6 layer];
  LODWORD(v16) = LODWORD(v9);
  [v15 setOpacity:v16];

  v17 = [v5 layer];
  v18 = v17;
  if (v17)
  {
    [v17 transform];
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
  }

  v19 = [v6 layer];
  v35[4] = v40;
  v35[5] = v41;
  v35[6] = v42;
  v35[7] = v43;
  v35[0] = v36;
  v35[1] = v37;
  v35[2] = v38;
  v35[3] = v39;
  [v19 setTransform:v35];

  v20 = [v6 layer];
  [v20 removeAllAnimations];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = [v5 layer];
  v22 = [v21 animationKeys];

  v23 = [v22 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v31 + 1) + 8 * i);
        v28 = [v6 layer];
        v29 = [v5 layer];
        v30 = [v29 animationForKey:v27];
        [v28 addAnimation:v30 forKey:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v24);
  }
}

- (void)initMovementAlignmentHunkAtIndex:(unint64_t)a3
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v7 = v6;
  v8 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
  if (v5 < v5 + v7)
  {
    v9 = v8;
    do
    {
      v10 = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphViews];
      v11 = [v10 objectAtIndexedSubscript:v5];

      v12 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v13 = [v12 objectAtIndexedSubscript:v9];

      [(UIMorphingLabel *)self copyStateFromGlyph:v11 toGlyph:v13];
      [(UIMorphingLabel *)self hideGlyph:v11];

      ++v5;
      ++v9;
      --v7;
    }

    while (v7);
  }
}

- (void)animateMovementAlignmentHunkAtIndex:(unint64_t)a3
{
  v4 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
  if (v4 < v4 + v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v4;
    v9 = v4;
    do
    {
      v10 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v11 = [v10 objectAtIndexedSubscript:v6];

      v12 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      x = v12[v9].x;
      y = v12[v9].y;
      v15 = [v11 layer];
      [v15 setPosition:{x, y}];

      v16 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      [(UIMorphingLabel *)self alphaForFrame:v16[v8].origin.x, v16[v8].origin.y, v16[v8].size.width, v16[v8].size.height];
      [UIMorphingLabel animateGlyph:"animateGlyph:toAlpha:duration:delay:" toAlpha:v11 duration:? delay:?];

      ++v6;
      ++v8;
      ++v9;
      --v7;
    }

    while (v7);
  }
}

- (void)initAlignmentHunkAtIndex:(unint64_t)a3
{
  [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v6 = v5;
  [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
  v8 = self->_alignmentIsEqual[a3];
  self->_alignmentDelays[a3] = 0.0;
  if (v6)
  {
    if (v7)
    {
      if (v8)
      {

        [(UIMorphingLabel *)self initMovementAlignmentHunkAtIndex:a3];
      }

      else
      {

        [(UIMorphingLabel *)self initSubstitutionAlignmentHunkAtIndex:a3];
      }
    }

    else
    {

      [(UIMorphingLabel *)self initDeletionAlignmentHunkAtIndex:a3];
    }
  }

  else
  {

    [(UIMorphingLabel *)self initInsertionAlignmentHunkAtIndex:a3];
  }
}

- (void)animateAlignmentHunkAtIndex:(unint64_t)a3
{
  [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v6 = v5;
  [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:a3];
  if (v6)
  {
    if (v7)
    {
      if (self->_alignmentIsEqual[a3])
      {

        [(UIMorphingLabel *)self animateMovementAlignmentHunkAtIndex:a3];
      }

      else
      {

        [(UIMorphingLabel *)self animateSubstitutionAlignmentHunkAtIndex:a3];
      }
    }

    else
    {

      [(UIMorphingLabel *)self animateDeletionAlignmentHunkAtIndex:a3];
    }
  }

  else
  {

    [(UIMorphingLabel *)self animateInsertionAlignmentHunkAtIndex:a3];
  }
}

- (id)attributedStringForText:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1EFB14550;
  }

  v6 = *off_1E70EC920;
  v11[0] = *off_1E70EC918;
  v11[1] = v6;
  textColor = self->_textColor;
  v12[0] = self->_font;
  v12[1] = textColor;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v8];

  return v9;
}

- (void)setText:(id)a3
{
  v4 = a3;
  if (self->_text != v4)
  {
    v8 = v4;
    if ([(NSString *)v4 isEqualToString:?])
    {
      v4 = v8;
    }

    else
    {
      v5 = [(NSString *)v8 copy];

      objc_storeStrong(&self->_text, v5);
      self->_textDidChange = 1;
      if (!self->_textAnimationAttributes)
      {
        v6 = +[UIView _currentAnimationAttributes];
        textAnimationAttributes = self->_textAnimationAttributes;
        self->_textAnimationAttributes = v6;
      }

      [(UIView *)self setNeedsLayout];
      v4 = v5;
    }
  }
}

- (void)setTextColor:(id)a3
{
  v6 = a3;
  if ([v6 isEqual:self->_textColor])
  {
    v4 = v6;
  }

  else
  {
    v5 = [v6 copy];

    objc_storeStrong(&self->_textColor, v5);
    self->_textColorDidChange = 1;
    [(UIView *)self setNeedsLayout];
    v4 = v5;
  }
}

- (void)setFont:(id)a3
{
  v9 = a3;
  if ([v9 isEqual:self->_font])
  {
    v4 = v9;
  }

  else
  {
    v5 = v9;
    if (!v9)
    {
      v5 = [UIMorphingLabel preferredFontWithSize:17.0];
    }

    v10 = v5;
    v6 = [v5 copy];

    objc_storeStrong(&self->_font, v6);
    self->_textDidChange = 1;
    if (!self->_textAnimationAttributes)
    {
      v7 = +[UIView _currentAnimationAttributes];
      textAnimationAttributes = self->_textAnimationAttributes;
      self->_textAnimationAttributes = v7;
    }

    [(UIView *)self setNeedsLayout];
    v4 = v6;
  }
}

- (BOOL)canFitText:(id)a3
{
  [(UIMorphingLabel *)self requiredWidthForText:a3];
  v5 = v4;
  [(UIView *)self bounds];
  return v5 <= v6;
}

- (double)flushAmount
{
  textAlignment = self->_textAlignment;
  result = 0.0;
  if (textAlignment == 1)
  {
    result = 0.5;
  }

  if (textAlignment == 2)
  {
    return 1.0;
  }

  return result;
}

- (double)requiredWidthForText:(id)a3
{
  v3 = [(UIMorphingLabel *)self attributedStringForText:a3];
  [v3 size];
  v5 = v4;

  return v5;
}

- (void)contentSizeDidChange:(id)a3
{
  v4 = [UIMorphingLabel preferredFontWithSize:a3, 17.0];
  [(UIMorphingLabel *)self setFont:v4];
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end