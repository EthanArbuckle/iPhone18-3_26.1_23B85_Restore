@interface UIMorphingLabel
+ (id)preferredFontWithSize:(double)size;
- (BOOL)canFitText:(id)text;
- (CGRect)visibleRect;
- (UIMorphingLabel)initWithCoder:(id)coder;
- (UIMorphingLabel)initWithFrame:(CGRect)frame;
- (_NSRange)dstRangeOfAlignmentHunkAtIndex:(unint64_t)index;
- (_NSRange)srcRangeOfAlignmentHunkAtIndex:(unint64_t)index;
- (double)_rippleDurationForEndInsertion:(BOOL)insertion;
- (double)alphaForFrame:(CGRect)frame;
- (double)changeInWidthDueToAlignmentHunkAtIndex:(unint64_t)index;
- (double)currentMediaTime;
- (double)flushAmount;
- (double)requiredWidthForText:(id)text;
- (double)totalLeftOffsetForAlignmentHunkAtIndex:(unint64_t)index;
- (double)totalRightOffsetForAlignmentHunkAtIndex:(unint64_t)index;
- (id)attributedStringForText:(id)text;
- (id)glyphViewWithImage:(id)image isColorGlyph:(BOOL)glyph;
- (id)uniqueString;
- (unint64_t)calculateHardAlignmentAtIndex:(unint64_t)index fromGlyphsInRange:(_NSRange)range toGlyphsInRange:(_NSRange)inRange;
- (void)animateAlignmentHunkAtIndex:(unint64_t)index;
- (void)animateChangeInWidthOutsideAlignmentHunkAtIndex:(unint64_t)index;
- (void)animateDeletionAlignmentHunkAtIndex:(unint64_t)index;
- (void)animateGlyph:(id)glyph toAlpha:(double)alpha duration:(double)duration delay:(double)delay;
- (void)animateGlyph:(id)glyph toPosition:(CGPoint)position delay:(double)delay;
- (void)animateGlyph:(id)glyph toScale:(double)scale delay:(double)delay;
- (void)animateGlyphs;
- (void)animateGlyphsInRange:(_NSRange)range ofGlyphSet:(id)set byOffset:(double)offset delay:(double)delay;
- (void)animateHideGlyph:(id)glyph alphaDuration:(double)duration delay:(double)delay;
- (void)animateInsertionAlignmentHunkAtIndex:(unint64_t)index;
- (void)animateMovementAlignmentHunkAtIndex:(unint64_t)index;
- (void)animateShowGlyph:(id)glyph alpha:(double)alpha alphaDuration:(double)duration delay:(double)delay;
- (void)animateSubstitutionAlignmentHunkAtIndex:(unint64_t)index;
- (void)baseInit;
- (void)calculateGlyphAlignment;
- (void)contentSizeDidChange:(id)change;
- (void)copyStateFromGlyph:(id)glyph toGlyph:(id)toGlyph;
- (void)hideGlyph:(id)glyph;
- (void)initAlignmentHunkAtIndex:(unint64_t)index;
- (void)initInsertionAlignmentHunkAtIndex:(unint64_t)index;
- (void)initMovementAlignmentHunkAtIndex:(unint64_t)index;
- (void)initSubstitutionAlignmentHunkAtIndex:(unint64_t)index;
- (void)layoutSubviews;
- (void)setFont:(id)font;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)setVisibleRect:(CGRect)rect;
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
      layer = [(UIView *)self->_colorView layer];
      [layer setValue:-[UIColor CGColor](self->_textColor forKeyPath:{"CGColor"), @"filters.color.inputColor"}];

      layer2 = [(UIView *)self->_colorView layer];
      [layer2 removeAnimationForKey:@"textColor"];

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
      glyphViews = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v15 = [glyphViews objectAtIndexedSubscript:v13];

      [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      ++v13;
    }

    while (v13 < [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount]);
  }
}

- (double)currentMediaTime
{
  layer = [(UIView *)self layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;

  return v4;
}

- (void)calculateGlyphAlignment
{
  glyphCount = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount];
  glyphCount2 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount];
  glyphs = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphs];
  glyphs2 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphs];
  if (glyphCount >= glyphCount2)
  {
    v7 = glyphCount2;
  }

  else
  {
    v7 = glyphCount;
  }

  v8 = 0;
  if (v7)
  {
    while (glyphs[v8] == glyphs2[v8])
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
    while (glyphs[glyphCount - 1 + v10] == glyphs2[glyphCount2 - 1 + v10])
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
  if (v8 != glyphCount || v8 != glyphCount2)
  {
    if (glyphCount == v7 || glyphCount2 == v7 || (v12 = [(UIMorphingLabel *)self calculateHardAlignmentAtIndex:v11 fromGlyphsInRange:v8 toGlyphsInRange:glyphCount - v7, v8, glyphCount2 - v7], v12 == 0x7FFFFFFFFFFFFFFFLL))
    {
      self->_alignmentSrc[v11] = v8;
      self->_alignmentDst[v11] = v8;
      self->_alignmentIsEqual[v11] = 0;
      v12 = v11 + 1;
    }

    if (v9)
    {
      self->_alignmentSrc[v12] = glyphCount - v9;
      self->_alignmentDst[v12] = glyphCount2 - v9;
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
  textColor = [(UIMorphingLabel *)self textColor];
  [v11 setValue:objc_msgSend(textColor forKey:{"CGColor"), @"inputColor"}];

  v16[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  layer = [(UIView *)self->_colorView layer];
  [layer setFilters:v13];

  self->_rippleDuration = -1.0;
  self->_initialScale = 0.6;
  self->_glyphScaleAnimationSpeed = 1.4;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeDidChange_ name:@"UIContentSizeCategoryDidChangeNotification" object:0];
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

+ (id)preferredFontWithSize:(double)size
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  if (([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryL"] & 1) == 0)
  {
    if ([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXL"])
    {
      v5 = 2.0;
LABEL_9:
      size = size + v5;
      goto LABEL_10;
    }

    if ([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXXL"])
    {
      v5 = 4.0;
      goto LABEL_9;
    }

    if (([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXXXL"] & 1) != 0 || _UIContentSizeCategoryIsAccessibilityContentSizeCategory(preferredContentSizeCategory, v6))
    {
      v5 = 6.0;
      goto LABEL_9;
    }
  }

LABEL_10:
  v7 = [off_1E70ECC18 systemFontOfSize:size];

  return v7;
}

- (UIMorphingLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIMorphingLabel;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIMorphingLabel *)v3 baseInit];
  }

  return v4;
}

- (UIMorphingLabel)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UIMorphingLabel;
  v3 = [(UIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(UIMorphingLabel *)v3 baseInit];
  }

  return v4;
}

- (double)alphaForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setVisibleRect:(CGRect)rect
{
  self->_visibleRect = rect;
  if ([(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      glyphViews = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v7 = [glyphViews objectAtIndexedSubscript:v5];

      glyphFrames = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      [(UIMorphingLabel *)self alphaForFrame:glyphFrames[v4].origin.x, glyphFrames[v4].origin.y, glyphFrames[v4].size.width, glyphFrames[v4].size.height];
      v10 = v9;
      layer = [v7 layer];
      *&v12 = v10;
      [layer setOpacity:v12];

      ++v5;
      ++v4;
    }

    while (v5 < [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount]);
  }
}

- (double)_rippleDurationForEndInsertion:(BOOL)insertion
{
  result = self->_rippleDuration;
  if (result <= 0.0)
  {
    v4 = 0.1;
    if (insertion)
    {
      v4 = 0.125;
    }

    return v4 * self->_rippleFactor;
  }

  return result;
}

- (unint64_t)calculateHardAlignmentAtIndex:(unint64_t)index fromGlyphsInRange:(_NSRange)range toGlyphsInRange:(_NSRange)inRange
{
  length = inRange.length;
  location = inRange.location;
  v7 = range.length;
  v8 = range.location;
  if (!calculateHardAlignmentAtIndex_fromGlyphsInRange_toGlyphsInRange__memoTable)
  {
    calculateHardAlignmentAtIndex_fromGlyphsInRange_toGlyphsInRange__memoTable = malloc_type_malloc(0x1452uLL, 0x1000040BDFB0063uLL);
    bzero(calculateHardAlignmentAtIndex_fromGlyphsInRange_toGlyphsInRange__memoTable, 0x1452uLL);
  }

  glyphs = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphs];
  glyphs2 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphs];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 <= 0x32 && length <= 0x32)
  {
    v14 = 0;
    v15 = &glyphs[v8];
    v16 = &glyphs2[location];
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
            if (v30 >= length || index >= 0x64)
            {
LABEL_64:
              if (v30 >= length && i >= v7)
              {
                return index;
              }

              else
              {
                return 0x7FFFFFFFFFFFFFFFLL;
              }
            }
          }

          else if (index > 0x63)
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
          self->_alignmentSrc[index] = i + v8;
          self->_alignmentDst[index] = v30 + location;
          self->_alignmentIsEqual[index++] = v32;
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

- (_NSRange)srcRangeOfAlignmentHunkAtIndex:(unint64_t)index
{
  v3 = self->_alignmentSrc[index];
  if (self->_alignmentSize - 1 <= index)
  {
    glyphCount = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount];
  }

  else
  {
    glyphCount = self->_alignmentSrc[index + 1];
  }

  v5 = glyphCount - v3;
  v6 = v3;
  result.length = v5;
  result.location = v6;
  return result;
}

- (_NSRange)dstRangeOfAlignmentHunkAtIndex:(unint64_t)index
{
  v3 = self->_alignmentDst[index];
  if (self->_alignmentSize - 1 <= index)
  {
    glyphCount = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount];
  }

  else
  {
    glyphCount = self->_alignmentDst[index + 1];
  }

  v5 = glyphCount - v3;
  v6 = v3;
  result.length = v5;
  result.location = v6;
  return result;
}

- (id)glyphViewWithImage:(id)image isColorGlyph:(BOOL)glyph
{
  selfCopy = self;
  hiddenGlyphViews = self->_hiddenGlyphViews;
  imageCopy = image;
  if (![(NSMutableArray *)hiddenGlyphViews count]|| glyph)
  {
    lastObject = [[UIMorphingLabelImageView alloc] initWithImage:imageCopy];

    if (!glyph)
    {
      selfCopy = selfCopy->_colorView;
    }

    [(UIView *)selfCopy addSubview:lastObject];
  }

  else
  {
    lastObject = [(NSMutableArray *)selfCopy->_hiddenGlyphViews lastObject];
    [(NSMutableArray *)selfCopy->_hiddenGlyphViews removeLastObject];
    [(UIMorphingLabelImageView *)lastObject setImage:imageCopy];
    v9 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);
    [imageCopy size];
    v12 = v11;
    v14 = v13;

    [(UIView *)lastObject setFrame:v9, v10, v12, v14];
    [(UIView *)lastObject setAlpha:1.0];
    [(UIView *)lastObject setHidden:0];
    [(UIView *)selfCopy->_colorView bringSubviewToFront:lastObject];
  }

  return lastObject;
}

- (void)hideGlyph:(id)glyph
{
  glyphCopy = glyph;
  superview = [glyphCopy superview];
  colorView = self->_colorView;

  if (superview == colorView)
  {
    [glyphCopy setHidden:1];
    [glyphCopy setImage:0];
    layer = [glyphCopy layer];
    [layer removeAllAnimations];

    [(NSMutableArray *)self->_hiddenGlyphViews addObject:glyphCopy];
  }

  else
  {
    [glyphCopy removeFromSuperview];
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

- (void)animateGlyph:(id)glyph toPosition:(CGPoint)position delay:(double)delay
{
  y = position.y;
  x = position.x;
  glyphCopy = glyph;
  layer = [glyphCopy layer];
  [layer position];
  v10 = v9;
  v12 = v11;

  if (v10 != x || v12 != y)
  {
    [(UIMorphingLabel *)self visibleRect];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [glyphCopy bounds];
    [(UIView *)self convertRect:glyphCopy fromView:?];
    v53.origin.x = v22;
    v53.origin.y = v23;
    v53.size.width = v24;
    v53.size.height = v25;
    v51.origin.x = v15;
    v51.origin.y = v17;
    v51.size.width = v19;
    v51.size.height = v21;
    v26 = CGRectIntersectsRect(v51, v53);
    layer2 = [glyphCopy layer];
    [layer2 setPosition:{x, y}];

    if (v26 || (-[UIMorphingLabel visibleRect](self, "visibleRect"), v29 = v28, v31 = v30, v33 = v32, v35 = v34, [glyphCopy bounds], -[UIView convertRect:fromView:](self, "convertRect:fromView:", glyphCopy), v54.origin.x = v36, v54.origin.y = v37, v54.size.width = v38, v54.size.height = v39, v52.origin.x = v29, v52.origin.y = v31, v52.size.width = v33, v52.size.height = v35, CGRectIntersectsRect(v52, v54)))
    {
      v40 = [MEMORY[0x1E69794A8] animationWithKeyPath:{@"position", *&delay}];
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
      layer3 = [glyphCopy layer];
      uniqueString = [(UIMorphingLabel *)self uniqueString];
      [layer3 addAnimation:v40 forKey:uniqueString];
    }
  }
}

- (void)animateGlyph:(id)glyph toAlpha:(double)alpha duration:(double)duration delay:(double)delay
{
  glyphCopy = glyph;
  layer = [glyphCopy layer];
  [layer opacity];
  v13 = v12;

  layer2 = [glyphCopy layer];
  alphaCopy = alpha;
  *&v16 = alphaCopy;
  [layer2 setOpacity:v16];

  if (v13 == alpha || (-[UIMorphingLabel visibleRect](self, "visibleRect"), v18 = v17, v20 = v19, v22 = v21, v24 = v23, [glyphCopy bounds], -[UIView convertRect:fromView:](self, "convertRect:fromView:", glyphCopy), v47.origin.x = v25, v47.origin.y = v26, v47.size.width = v27, v47.size.height = v28, v46.origin.x = v18, v46.origin.y = v20, v46.size.width = v22, v46.size.height = v24, !CGRectIntersectsRect(v46, v47)))
  {
    if (alpha == 0.0)
    {
      [(UIMorphingLabel *)self hideGlyph:glyphCopy];
    }
  }

  else
  {
    v29 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v30 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v29 setTimingFunction:v30];

    alpha = [MEMORY[0x1E696AD98] numberWithDouble:v13 - alpha];
    [v29 setFromValue:alpha];

    [v29 setToValue:&unk_1EFE320F8];
    v32 = 1.0 / self->_slowdown;
    *&v32 = v32;
    [v29 setSpeed:v32];
    [v29 setDuration:duration];
    [(UIMorphingLabel *)self currentMediaTime];
    [v29 setBeginTime:v33 + self->_slowdown * delay];
    [(_UIViewAnimationAttributes *)self->_textAnimationAttributes _frameInterval];
    [v29 setFrameInterval:?];
    [v29 setFillMode:*MEMORY[0x1E69797D8]];
    [v29 setAdditive:1];
    if (alpha == 0.0)
    {
      [MEMORY[0x1E6979518] begin];
      v34 = MEMORY[0x1E6979518];
      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __55__UIMorphingLabel_animateGlyph_toAlpha_duration_delay___block_invoke;
      v43 = &unk_1E70F35B8;
      selfCopy = self;
      v35 = glyphCopy;
      v45 = v35;
      [v34 setCompletionBlock:&v40];

      layer3 = [v35 layer];
      uniqueString = [(UIMorphingLabel *)self uniqueString];
      [layer3 addAnimation:v29 forKey:uniqueString];

      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      layer4 = [glyphCopy layer];
      uniqueString2 = [(UIMorphingLabel *)self uniqueString];
      [layer4 addAnimation:v29 forKey:uniqueString2];
    }
  }
}

- (void)animateGlyph:(id)glyph toScale:(double)scale delay:(double)delay
{
  glyphCopy = glyph;
  layer = [glyphCopy layer];
  v9 = [layer valueForKeyPath:@"transform.scale.xy"];
  [v9 floatValue];
  v11 = v10;

  if (v11 != scale)
  {
    layer2 = [glyphCopy layer];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:scale];
    [layer2 setValue:v13 forKeyPath:@"transform.scale.xy"];

    [(UIMorphingLabel *)self visibleRect];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [glyphCopy bounds];
    [(UIView *)self convertRect:glyphCopy fromView:?];
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
      v30 = dbl_18A680840[scale < 1.0];
      if (scale >= 1.0)
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
      scale = [MEMORY[0x1E696AD98] numberWithDouble:v11 - scale];
      [v28 setFromValue:scale];

      [v28 setToValue:&unk_1EFE320F8];
      v33 = glyphScaleAnimationSpeed / self->_slowdown;
      *&v33 = v33;
      [v28 setSpeed:v33];
      [v28 setDuration:1.0];
      [(UIMorphingLabel *)self currentMediaTime];
      [v28 setBeginTime:v34 + self->_slowdown * delay];
      [(_UIViewAnimationAttributes *)self->_textAnimationAttributes _frameInterval];
      [v28 setFrameInterval:?];
      [v28 setFillMode:*MEMORY[0x1E69797D8]];
      [v28 setAdditive:1];
      layer3 = [glyphCopy layer];
      uniqueString = [(UIMorphingLabel *)self uniqueString];
      [layer3 addAnimation:v28 forKey:uniqueString];
    }
  }
}

- (void)animateShowGlyph:(id)glyph alpha:(double)alpha alphaDuration:(double)duration delay:(double)delay
{
  scaleFactor = self->_scaleFactor;
  glyphCopy = glyph;
  CATransform3DMakeScale(&v15, scaleFactor, scaleFactor, 1.0);
  layer = [glyphCopy layer];
  v14 = v15;
  [layer setTransform:&v14];

  layer2 = [glyphCopy layer];
  [layer2 setOpacity:0.0];

  [(UIMorphingLabel *)self animateGlyph:glyphCopy toScale:1.0 delay:delay];
  [(UIMorphingLabel *)self animateGlyph:glyphCopy toAlpha:alpha duration:duration delay:delay];
}

- (void)animateHideGlyph:(id)glyph alphaDuration:(double)duration delay:(double)delay
{
  scaleFactor = self->_scaleFactor;
  glyphCopy = glyph;
  [(UIMorphingLabel *)self animateGlyph:glyphCopy toScale:scaleFactor delay:delay];
  [(UIMorphingLabel *)self animateGlyph:glyphCopy toAlpha:0.0 duration:duration delay:delay];
}

- (double)totalLeftOffsetForAlignmentHunkAtIndex:(unint64_t)index
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v6 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
  if (self->_alignmentIsEqual[index])
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

- (double)totalRightOffsetForAlignmentHunkAtIndex:(unint64_t)index
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v7 = v6;
  v8 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
  v10 = v9;
  if (self->_alignmentIsEqual[index])
  {
    v11 = *([(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphPositions]+ 16 * v5 + 16 * v7 - 16);
    v12 = *([(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions]+ 16 * v8 + 16 * v10 - 16);
  }

  else
  {
    v13 = v5 + v7;
    glyphCount = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount];
    srcGlyphSet = self->_srcGlyphSet;
    if (v13 == glyphCount)
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

- (double)changeInWidthDueToAlignmentHunkAtIndex:(unint64_t)index
{
  [(UIMorphingLabel *)self totalRightOffsetForAlignmentHunkAtIndex:?];
  v6 = v5;
  [(UIMorphingLabel *)self totalLeftOffsetForAlignmentHunkAtIndex:index];
  return v6 - v7;
}

- (void)animateGlyphsInRange:(_NSRange)range ofGlyphSet:(id)set byOffset:(double)offset delay:(double)delay
{
  length = range.length;
  location = range.location;
  setCopy = set;
  if (offset != 0.0 && location < location + length)
  {
    v20 = setCopy;
    do
    {
      glyphViews = [v20 glyphViews];
      v14 = [glyphViews objectAtIndexedSubscript:location];

      layer = [v14 layer];
      [layer position];
      v17 = v16;
      v19 = v18;

      [(UIMorphingLabel *)self animateGlyph:v14 toPosition:v17 + offset delay:v19, delay];
      setCopy = v20;
      ++location;
      --length;
    }

    while (length);
  }
}

- (void)animateChangeInWidthOutsideAlignmentHunkAtIndex:(unint64_t)index
{
  if (!self->_alignmentIsEqual[index])
  {
    [(UIMorphingLabel *)self changeInWidthDueToAlignmentHunkAtIndex:?];
    if (v5 != 0.0)
    {
      v6 = v5;
      v7 = self->_alignmentDelays[index];
      [(UIMorphingLabel *)self flushAmount];
      v9 = -(v6 * v8);
      [(UIMorphingLabel *)self flushAmount];
      v11 = v6 * (1.0 - v10);
      v12 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:index];
      v14 = v13;
      v15 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
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

- (void)initInsertionAlignmentHunkAtIndex:(unint64_t)index
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v6 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
  v8 = v7;
  if ([(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount])
  {
    if (v5 | v6)
    {
      [(UIMorphingLabel *)self totalLeftOffsetForAlignmentHunkAtIndex:index];
    }

    else
    {
      [(UIMorphingLabel *)self totalRightOffsetForAlignmentHunkAtIndex:index];
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
      glyphViews = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v13 = [glyphViews objectAtIndexedSubscript:v6];

      glyphPositions = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      y = glyphPositions[v11].y;
      v16 = glyphPositions[v11].x - v10;
      layer = [v13 layer];
      [layer setPosition:{v16, y}];

      ++v6;
      ++v11;
      --v8;
    }

    while (v8);
  }
}

- (void)animateInsertionAlignmentHunkAtIndex:(unint64_t)index
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v6 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
  v8 = v7;
  glyphCount = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount];
  if (glyphCount)
  {
    v10 = (v5 | v6) == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    _isRTL = (glyphCount != 0) ^ [(UIMorphingLabel *)self _isRTL];
    goto LABEL_7;
  }

  if (v5 == [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount])
  {
    glyphCount2 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount];
    _isRTL = [(UIMorphingLabel *)self _isRTL];
    if (v6 + v8 != glyphCount2)
    {
      goto LABEL_12;
    }

LABEL_7:
    v12 = 1;
    goto LABEL_13;
  }

  _isRTL = [(UIMorphingLabel *)self _isRTL];
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
      glyphViews = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v25 = [glyphViews objectAtIndexedSubscript:v6];

      glyphFrames = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      v27 = *(glyphFrames + v22 - 24);
      v28 = *(glyphFrames + v22 - 16);
      v29 = *(glyphFrames + v22 - 8);
      v30 = *(&glyphFrames->origin.x + v22);
      if (_isRTL)
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
      glyphPositions = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      [(UIMorphingLabel *)self animateGlyph:v25 toPosition:*(glyphPositions + v23 - 8) delay:*(&glyphPositions->x + v23), 0.0];
      glyphFrames2 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      [(UIMorphingLabel *)self alphaForFrame:*(glyphFrames2 + v22 - 24), *(glyphFrames2 + v22 - 16), *(glyphFrames2 + v22 - 8), *(&glyphFrames2->origin.x + v22)];
      [UIMorphingLabel animateShowGlyph:"animateShowGlyph:alpha:alphaDuration:delay:" alpha:v25 alphaDuration:? delay:?];

      ++v6;
      v22 += 32;
      v23 += 16;
      --v8;
    }

    while (v8);
  }
}

- (void)animateDeletionAlignmentHunkAtIndex:(unint64_t)index
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v7 = v6;
  v8 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
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
    [(UIMorphingLabel *)self totalRightOffsetForAlignmentHunkAtIndex:index];
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
    [(UIMorphingLabel *)self totalLeftOffsetForAlignmentHunkAtIndex:index];
    goto LABEL_5;
  }

  [(UIMorphingLabel *)self totalLeftOffsetForAlignmentHunkAtIndex:index];
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
      glyphViews = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphViews];
      v25 = [glyphViews objectAtIndexedSubscript:v5];

      glyphPositions = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphPositions];
      v27 = *(glyphPositions + v23 - 8);
      v28 = *(&glyphPositions->x + v23);
      glyphFrames = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphFrames];
      x = glyphFrames[v22].origin.x;
      y = glyphFrames[v22].origin.y;
      width = glyphFrames[v22].size.width;
      height = glyphFrames[v22].size.height;
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

- (void)initSubstitutionAlignmentHunkAtIndex:(unint64_t)index
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v7 = v6;
  v8 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
  v10 = v9;
  if ([(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphCount]== v7 && [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphCount]== v10 || v5 | v8)
  {
    [(UIMorphingLabel *)self totalLeftOffsetForAlignmentHunkAtIndex:index];
  }

  else
  {
    [(UIMorphingLabel *)self totalRightOffsetForAlignmentHunkAtIndex:index];
  }

  v12 = v11;
  [(UIMorphingLabel *)self changeInWidthDueToAlignmentHunkAtIndex:index];
  if (v13 > 0.0)
  {
    [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet boundingRectForGlyphsInRange:v5, v7];
    v15 = v14;
    [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet boundingRectForGlyphsInRange:v8, v10];
    if (v15 < v16)
    {
      v17 = v16;
      _isRTL = [(UIMorphingLabel *)self _isRTL];
      v19 = v15 / v17 * 0.2;
      if (_isRTL)
      {
        v19 = 0.2 - v19;
      }

      if (v19 < 0.0)
      {
        v19 = 0.0;
      }

      self->_alignmentDelays[index] = v19;
    }
  }

  if (v8 < v8 + v10)
  {
    v20 = v8;
    do
    {
      glyphViews = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v22 = [glyphViews objectAtIndexedSubscript:v8];

      glyphPositions = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      y = glyphPositions[v20].y;
      v25 = glyphPositions[v20].x - v12;
      layer = [v22 layer];
      [layer setPosition:{v25, y}];

      ++v8;
      ++v20;
      --v10;
    }

    while (v10);
  }
}

- (void)animateSubstitutionAlignmentHunkAtIndex:(unint64_t)index
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v7 = v6;
  v8 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
  v10 = v9;
  v11 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions][16 * v8];
  glyphViews = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
  v13 = [glyphViews objectAtIndexedSubscript:v8];
  layer = [v13 layer];
  [layer position];
  v16 = v15;

  [(UIMorphingLabel *)self changeInWidthDueToAlignmentHunkAtIndex:index];
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
  v73 = (&self->super.super.super.isa + index);
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

      layer2 = [v34 layer];
      [layer2 position];
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
      glyphViews2 = [*(&self->super.super.super.isa + v29) glyphViews];
      v45 = [glyphViews2 objectAtIndexedSubscript:v5];

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
      glyphFrames = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      v58 = *(glyphFrames + v55 - 24);
      v59 = *(glyphFrames + v55 - 16);
      v60 = *(glyphFrames + v55 - 8);
      v61 = *(&glyphFrames->origin.x + v55);
      if (v19)
      {
        v62 = CGRectGetMaxX(*&v58);
      }

      else
      {
        v62 = CGRectGetMinX(*&v58);
      }

      v63 = v62;
      glyphViews3 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v65 = [glyphViews3 objectAtIndexedSubscript:v8];

      glyphPositions = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      [(UIMorphingLabel *)self animateGlyph:v65 toPosition:*(glyphPositions + v56 - 8) delay:*(&glyphPositions->x + v56), v73[269]];
      glyphFrames2 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      [(UIMorphingLabel *)self alphaForFrame:*(glyphFrames2 + v55 - 24), *(glyphFrames2 + v55 - 16), *(glyphFrames2 + v55 - 8), *(&glyphFrames2->origin.x + v55)];
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

- (void)copyStateFromGlyph:(id)glyph toGlyph:(id)toGlyph
{
  v45 = *MEMORY[0x1E69E9840];
  glyphCopy = glyph;
  toGlyphCopy = toGlyph;
  layer = [glyphCopy layer];
  [layer position];
  v9 = v8;
  v11 = v10;
  layer2 = [toGlyphCopy layer];
  [layer2 setPosition:{v9, v11}];

  layer3 = [glyphCopy layer];
  [layer3 opacity];
  LODWORD(v9) = v14;
  layer4 = [toGlyphCopy layer];
  LODWORD(v16) = LODWORD(v9);
  [layer4 setOpacity:v16];

  layer5 = [glyphCopy layer];
  v18 = layer5;
  if (layer5)
  {
    [layer5 transform];
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

  layer6 = [toGlyphCopy layer];
  v35[4] = v40;
  v35[5] = v41;
  v35[6] = v42;
  v35[7] = v43;
  v35[0] = v36;
  v35[1] = v37;
  v35[2] = v38;
  v35[3] = v39;
  [layer6 setTransform:v35];

  layer7 = [toGlyphCopy layer];
  [layer7 removeAllAnimations];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  layer8 = [glyphCopy layer];
  animationKeys = [layer8 animationKeys];

  v23 = [animationKeys countByEnumeratingWithState:&v31 objects:v44 count:16];
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
          objc_enumerationMutation(animationKeys);
        }

        v27 = *(*(&v31 + 1) + 8 * i);
        layer9 = [toGlyphCopy layer];
        layer10 = [glyphCopy layer];
        v30 = [layer10 animationForKey:v27];
        [layer9 addAnimation:v30 forKey:v27];
      }

      v24 = [animationKeys countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v24);
  }
}

- (void)initMovementAlignmentHunkAtIndex:(unint64_t)index
{
  v5 = [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v7 = v6;
  v8 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
  if (v5 < v5 + v7)
  {
    v9 = v8;
    do
    {
      glyphViews = [(UIMorphingLabelGlyphSet *)self->_srcGlyphSet glyphViews];
      v11 = [glyphViews objectAtIndexedSubscript:v5];

      glyphViews2 = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v13 = [glyphViews2 objectAtIndexedSubscript:v9];

      [(UIMorphingLabel *)self copyStateFromGlyph:v11 toGlyph:v13];
      [(UIMorphingLabel *)self hideGlyph:v11];

      ++v5;
      ++v9;
      --v7;
    }

    while (v7);
  }
}

- (void)animateMovementAlignmentHunkAtIndex:(unint64_t)index
{
  v4 = [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
  if (v4 < v4 + v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v4;
    v9 = v4;
    do
    {
      glyphViews = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphViews];
      v11 = [glyphViews objectAtIndexedSubscript:v6];

      glyphPositions = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphPositions];
      x = glyphPositions[v9].x;
      y = glyphPositions[v9].y;
      layer = [v11 layer];
      [layer setPosition:{x, y}];

      glyphFrames = [(UIMorphingLabelGlyphSet *)self->_dstGlyphSet glyphFrames];
      [(UIMorphingLabel *)self alphaForFrame:glyphFrames[v8].origin.x, glyphFrames[v8].origin.y, glyphFrames[v8].size.width, glyphFrames[v8].size.height];
      [UIMorphingLabel animateGlyph:"animateGlyph:toAlpha:duration:delay:" toAlpha:v11 duration:? delay:?];

      ++v6;
      ++v8;
      ++v9;
      --v7;
    }

    while (v7);
  }
}

- (void)initAlignmentHunkAtIndex:(unint64_t)index
{
  [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v6 = v5;
  [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
  v8 = self->_alignmentIsEqual[index];
  self->_alignmentDelays[index] = 0.0;
  if (v6)
  {
    if (v7)
    {
      if (v8)
      {

        [(UIMorphingLabel *)self initMovementAlignmentHunkAtIndex:index];
      }

      else
      {

        [(UIMorphingLabel *)self initSubstitutionAlignmentHunkAtIndex:index];
      }
    }

    else
    {

      [(UIMorphingLabel *)self initDeletionAlignmentHunkAtIndex:index];
    }
  }

  else
  {

    [(UIMorphingLabel *)self initInsertionAlignmentHunkAtIndex:index];
  }
}

- (void)animateAlignmentHunkAtIndex:(unint64_t)index
{
  [(UIMorphingLabel *)self srcRangeOfAlignmentHunkAtIndex:?];
  v6 = v5;
  [(UIMorphingLabel *)self dstRangeOfAlignmentHunkAtIndex:index];
  if (v6)
  {
    if (v7)
    {
      if (self->_alignmentIsEqual[index])
      {

        [(UIMorphingLabel *)self animateMovementAlignmentHunkAtIndex:index];
      }

      else
      {

        [(UIMorphingLabel *)self animateSubstitutionAlignmentHunkAtIndex:index];
      }
    }

    else
    {

      [(UIMorphingLabel *)self animateDeletionAlignmentHunkAtIndex:index];
    }
  }

  else
  {

    [(UIMorphingLabel *)self animateInsertionAlignmentHunkAtIndex:index];
  }
}

- (id)attributedStringForText:(id)text
{
  v12[2] = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (textCopy)
  {
    v5 = textCopy;
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

- (void)setText:(id)text
{
  textCopy = text;
  if (self->_text != textCopy)
  {
    v8 = textCopy;
    if ([(NSString *)textCopy isEqualToString:?])
    {
      textCopy = v8;
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
      textCopy = v5;
    }
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if ([colorCopy isEqual:self->_textColor])
  {
    v4 = colorCopy;
  }

  else
  {
    v5 = [colorCopy copy];

    objc_storeStrong(&self->_textColor, v5);
    self->_textColorDidChange = 1;
    [(UIView *)self setNeedsLayout];
    v4 = v5;
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if ([fontCopy isEqual:self->_font])
  {
    v4 = fontCopy;
  }

  else
  {
    v5 = fontCopy;
    if (!fontCopy)
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

- (BOOL)canFitText:(id)text
{
  [(UIMorphingLabel *)self requiredWidthForText:text];
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

- (double)requiredWidthForText:(id)text
{
  v3 = [(UIMorphingLabel *)self attributedStringForText:text];
  [v3 size];
  v5 = v4;

  return v5;
}

- (void)contentSizeDidChange:(id)change
{
  v4 = [UIMorphingLabel preferredFontWithSize:change, 17.0];
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