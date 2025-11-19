@interface TPLCDTextView
- (CGRect)textRect;
- (CGSize)sizeToFit;
- (TPLCDTextView)initWithFrame:(CGRect)a3;
- (void)_drawTextInRect:(CGRect)a3 verticallyOffset:(BOOL)a4;
- (void)_finishedScrolling;
- (void)_scheduleStartScrolling;
- (void)_setupForAnimationIfNecessary;
- (void)_startScrolling;
- (void)_tearDownAnimation;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)resetAnimation;
- (void)setAnimatesIfTruncated:(BOOL)a3;
- (void)setCenterText:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setLCDTextFont:(id)a3;
- (void)setLeftTruncatesText:(BOOL)a3;
- (void)setMinimumFontSize:(double)a3;
- (void)setShadowColor:(id)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation TPLCDTextView

- (TPLCDTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TPLCDTextView;
  v3 = [(TPLCDTextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TPLCDTextView *)v3 setOpaque:0];
    [(TPLCDTextView *)v4 setEnabled:0];
    *(v4 + 504) |= 2u;
    v4->_minFontSize = 18.0;
  }

  return v4;
}

- (void)dealloc
{
  [(TPLCDTextView *)self stopAnimating];
  v3.receiver = self;
  v3.super_class = TPLCDTextView;
  [(TPLCDTextView *)&v3 dealloc];
}

- (CGRect)textRect
{
  v86[2] = *MEMORY[0x1E69E9840];
  v3 = 504;
  if (*(self + 504))
  {
    goto LABEL_45;
  }

  [(TPLCDTextView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (!self->_scrollingView)
  {
    if ([(NSString *)self->_text length])
    {
      text = self->_text;
      font = self->_font;
      v23 = *MEMORY[0x1E69DB778];
      v82[0] = *MEMORY[0x1E69DB648];
      v82[1] = v23;
      v83[0] = font;
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v81 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
      v83[1] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
      [(NSString *)text boundingRectWithSize:0 options:v26 attributes:0 context:v7, v9];
      v28 = v27;
    }

    else
    {
      v28 = *MEMORY[0x1E695F060];
    }

    [(UIFont *)self->_font pointSize];
    minFontSize = v29;
    v11 = self->_font;
    v30 = v28 > v7;
    if (minFontSize > self->_minFontSize && v28 > v7)
    {
      v71 = 504;
      v32 = *MEMORY[0x1E69DB648];
      v33 = *MEMORY[0x1E69DB778];
      v34 = *MEMORY[0x1E695F060];
      do
      {
        v35 = v11;
        minFontSize = minFontSize + -1.0;
        v11 = [MEMORY[0x1E69DB878] _thinSystemFontOfSize:{minFontSize, v71}];

        v36 = v34;
        if ([(NSString *)self->_text length])
        {
          v37 = self->_text;
          v79[1] = v33;
          v80[0] = v11;
          v79[0] = v32;
          v38 = [MEMORY[0x1E696AD98] numberWithInteger:0];
          v78 = v38;
          v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
          v80[1] = v39;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
          [(NSString *)v37 boundingRectWithSize:0 options:v40 attributes:0 context:v7, v9];
          v36 = v41;
        }

        v30 = v36 > v7;
      }

      while (minFontSize > self->_minFontSize && v36 > v7);
      v3 = v71;
    }

    v43 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v14 = [v43 mutableCopy];

    v44 = minFontSize < self->_minFontSize || !v30;
    if (!v44 && (*(self + 504) & 0x10) != 0)
    {
      [v14 setLineBreakMode:3];
      v51 = *MEMORY[0x1E69DB688];
      v76[0] = *MEMORY[0x1E69DB648];
      v76[1] = v51;
      v77[0] = v11;
      v77[1] = v14;
      v76[2] = *MEMORY[0x1E69DB778];
      v46 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v75 = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
      v77[2] = v47;
      v48 = MEMORY[0x1E695DF20];
      v49 = v77;
      v50 = v76;
    }

    else
    {
      [v14 setLineBreakMode:4];
      v45 = *MEMORY[0x1E69DB688];
      v73[0] = *MEMORY[0x1E69DB648];
      v73[1] = v45;
      v74[0] = v11;
      v74[1] = v14;
      v73[2] = *MEMORY[0x1E69DB778];
      v46 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v72 = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
      v74[2] = v47;
      v48 = MEMORY[0x1E695DF20];
      v49 = v74;
      v50 = v73;
    }

    v52 = [v48 dictionaryWithObjects:v49 forKeys:v50 count:3];

    if ([(NSString *)self->_text length])
    {
      [(NSString *)self->_text boundingRectWithSize:0 options:v52 attributes:0 context:v7, v9];
      v18 = v53;
      v20 = v54;
    }

    else
    {
      v18 = *MEMORY[0x1E695F060];
      v20 = *(MEMORY[0x1E695F060] + 8);
    }

    goto LABEL_34;
  }

  minFontSize = self->_minFontSize;
  v11 = [MEMORY[0x1E69DB878] _thinSystemFontOfSize:minFontSize];
  if ([(NSString *)self->_text length])
  {
    v12 = self->_text;
    v13 = *MEMORY[0x1E69DB778];
    v85[0] = *MEMORY[0x1E69DB648];
    v85[1] = v13;
    v86[0] = v11;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v84 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
    v86[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
    [(NSString *)v12 boundingRectWithSize:0 options:v16 attributes:0 context:v7, v9];
    v18 = v17;
    v20 = v19;

LABEL_34:
    goto LABEL_35;
  }

  v18 = *MEMORY[0x1E695F060];
  v20 = *(MEMORY[0x1E695F060] + 8);
LABEL_35:
  v55 = self->_font;
  v56 = 0.0;
  v57 = v11;
  v58 = 0.0;
  if (v11 != v55)
  {
    [(UIFont *)v55 xHeight];
    v58 = v59;
    v57 = self->_font;
  }

  if (v11 != v57)
  {
    [(UIFont *)v11 xHeight];
    v56 = v60;
  }

  self->_fontSize = minFontSize;
  if ((*(self + 504) & 2) != 0)
  {
    v5 = v5 + fmax(round((v7 - v18) * 0.5), 0.0);
  }

  v61 = self->_font;
  if (v61 == v11)
  {
    v65 = 0.0;
  }

  else
  {
    [(UIFont *)v61 ascender];
    v63 = (v58 - v56) * 0.5 + v62 - v58;
    [(UIFont *)v11 ascender];
    v65 = round(v63 - (v64 - v56));
  }

  self->_textRect.origin.x = v5;
  self->_textRect.origin.y = v65;
  self->_textRect.size.width = ceil(v18);
  self->_textRect.size.height = v20;
  *(&self->super.super.super.isa + v3) |= 1u;

LABEL_45:
  x = self->_textRect.origin.x;
  y = self->_textRect.origin.y;
  width = self->_textRect.size.width;
  height = self->_textRect.size.height;
  v70 = *MEMORY[0x1E69E9840];
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TPLCDTextView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = TPLCDTextView;
  [(TPLCDTextView *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    *(self + 504) &= ~1u;
    if ((*(self + 504) & 4) != 0)
    {
      [(TPLCDTextView *)self _setupForAnimationIfNecessary];
    }

    if (!self->_scrollingView)
    {
      [(TPLCDTextView *)self setNeedsDisplay];
    }
  }
}

- (void)setCenterText:(BOOL)a3
{
  v3 = *(self + 504);
  if (((((v3 & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(self + 504) = v3 & 0xFD | v4;
    *(self + 504) &= ~1u;
    [(TPLCDTextView *)self setNeedsDisplay];
  }
}

- (void)setLeftTruncatesText:(BOOL)a3
{
  v3 = *(self + 504);
  if (((((v3 & 0x10) == 0) ^ a3) & 1) == 0)
  {
    v5 = a3 ? 16 : 0;
    *(self + 504) = v3 & 0xEF | v5;
    width = self->_textRect.size.width;
    [(TPLCDTextView *)self bounds];
    if (width > v7)
    {
      *(self + 504) &= ~1u;

      [(TPLCDTextView *)self setNeedsDisplay];
    }
  }
}

- (void)setLCDTextFont:(id)a3
{
  v5 = a3;
  if (self->_font != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_font, a3);
    *(self + 504) &= ~1u;
    v6 = self->_scrollingView ? self->_scrollingView : self;
    [(TPLCDTextViewScrollingView *)v6 setNeedsDisplay];
    v5 = v7;
    if ((*(self + 504) & 4) != 0)
    {
      [(TPLCDTextView *)self _setupForAnimationIfNecessary];
      v5 = v7;
    }
  }
}

- (void)setMinimumFontSize:(double)a3
{
  if (self->_minFontSize != a3)
  {
    self->_minFontSize = a3;
    *(self + 504) &= ~1u;
  }
}

- (void)setText:(id)a3
{
  v5 = a3;
  if (self->_text != v5 && ![(NSString *)v5 isEqualToString:?])
  {
    objc_storeStrong(&self->_text, a3);
    *(self + 504) &= ~1u;
    [(TPLCDTextView *)self setNeedsDisplay];
    if ((*(self + 504) & 4) != 0)
    {
      [(TPLCDTextView *)self _setupForAnimationIfNecessary];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (CGSize)sizeToFit
{
  v13[1] = *MEMORY[0x1E69E9840];
  text = self->_text;
  font = self->_font;
  v12 = *MEMORY[0x1E69DB648];
  v13[0] = font;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [(NSString *)text sizeWithAttributes:v4];
  v6 = v5;
  v8 = v7;

  v9 = *MEMORY[0x1E69E9840];
  v10 = v6;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_drawTextInRect:(CGRect)a3 verticallyOffset:(BOOL)a4
{
  v4 = a4;
  width = a3.size.width;
  x = a3.origin.x;
  v31[4] = *MEMORY[0x1E69E9840];
  [(TPLCDTextView *)self textRect:a3.origin.x];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x1E69DB878] _thinSystemFontOfSize:self->_fontSize];
  v15 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v16 = [v15 mutableCopy];

  if ((*(self + 504) & 0x10) != 0)
  {
    v17 = 3;
  }

  else
  {
    v17 = 4;
  }

  [v16 setLineBreakMode:v17];
  [v16 setBaseWritingDirection:0];
  textColor = self->_textColor;
  if (textColor)
  {
    v19 = textColor;
  }

  else
  {
    v19 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v20 = v19;
  if (!v4)
  {
    v11 = 0.0;
  }

  v21 = [(NSString *)self->_text isNaturallyRTL];
  v22 = *MEMORY[0x1E69DB688];
  v30[0] = *MEMORY[0x1E69DB648];
  v30[1] = v22;
  v31[0] = v14;
  v31[1] = v16;
  v23 = *MEMORY[0x1E69DB650];
  v31[2] = v20;
  v24 = *MEMORY[0x1E69DB778];
  v30[2] = v23;
  v30[3] = v24;
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
  v29 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v31[3] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];

  [(NSString *)self->_text drawInRect:v27 withAttributes:x + v9, v11, ceil(width), v13];
  v28 = *MEMORY[0x1E69E9840];
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->_textColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_textColor, a3);
    [(TPLCDTextView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)setShadowColor:(id)a3
{
  v5 = a3;
  if (self->_shadowColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_shadowColor, a3);
    [(TPLCDTextView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)drawRect:(CGRect)a3
{
  if (self->_font && self->_text && !self->_scrollingView)
  {
    [(TPLCDTextView *)self bounds:a3.origin.x];

    [(TPLCDTextView *)self _drawTextInRect:1 verticallyOffset:?];
  }
}

- (void)_tearDownAnimation
{
  [(TPLCDTextView *)self stopAnimating];
  [(TPLCDTextViewScrollingView *)self->_scrollingView removeFromSuperview];
  scrollingView = self->_scrollingView;
  self->_scrollingView = 0;

  [(TPLCDTextView *)self setClipsSubviews:0];

  [(TPLCDTextView *)self setNeedsDisplay];
}

- (void)_scheduleStartScrolling
{
  *(self + 504) |= 8u;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__startScrolling object:0];

  [(TPLCDTextView *)self performSelector:sel__startScrolling withObject:0 afterDelay:2.5];
}

- (void)_setupForAnimationIfNecessary
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB878] _thinSystemFontOfSize:self->_minFontSize];
  [(TPLCDTextView *)self bounds];
  v5 = v4;
  v7 = v6;
  if ([(NSString *)self->_text length])
  {
    text = self->_text;
    v9 = *MEMORY[0x1E69DB778];
    v42[0] = *MEMORY[0x1E69DB648];
    v42[1] = v9;
    v43[0] = v3;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v41 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    v43[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
    [(NSString *)text boundingRectWithSize:0 options:v12 attributes:0 context:v5, v7];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v14 = *MEMORY[0x1E695F060];
    v16 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v14 > v5)
  {
    [(UIFont *)self->_font xHeight];
    v18 = v17;
    [v3 xHeight];
    v20 = v19;
    v21 = ceil(v14);
    v22 = (v18 - v19) * 0.5;
    [(UIFont *)self->_font ascender];
    v24 = v22 + v23 - v18;
    [v3 ascender];
    v26 = round(v24 - (v25 - v20));
    v27 = ceil(v16 + 1.0);
    v28 = v5 + v21 + 30.0;
    scrollingView = self->_scrollingView;
    if (!scrollingView)
    {
      v38 = [[TPLCDTextViewScrollingView alloc] initWithFrame:self owner:-(v21 + 30.0), v26, v28, v27];
      v39 = self->_scrollingView;
      self->_scrollingView = v38;

      [(TPLCDTextView *)self addSubview:self->_scrollingView];
      [(TPLCDTextView *)self setNeedsDisplay];
      if ((*(self + 504) & 8) != 0)
      {
        [(TPLCDTextView *)self _scheduleStartScrolling];
      }

      goto LABEL_21;
    }

    if (self->_animation)
    {
      v30 = [(UIFrameAnimation *)self->_animation target];
      v31 = self->_scrollingView;

      if (v30 == v31)
      {
LABEL_21:
        [(TPLCDTextView *)self setClipsSubviews:1];
        goto LABEL_22;
      }

      scrollingView = self->_scrollingView;
    }

    [(TPLCDTextViewScrollingView *)scrollingView frame];
    if (v34 != v26 || v28 != v32 || v27 != v33)
    {
      [(TPLCDTextViewScrollingView *)self->_scrollingView setFrame:-(v21 + 30.0), v26, v28, v27];
      [(TPLCDTextViewScrollingView *)self->_scrollingView setNeedsDisplay];
    }

    goto LABEL_21;
  }

  v37 = *(self + 504);
  [(TPLCDTextView *)self _tearDownAnimation];
  if ((v37 & 8) != 0)
  {
    [(TPLCDTextView *)self _scheduleStartScrolling];
  }

LABEL_22:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)setAnimatesIfTruncated:(BOOL)a3
{
  if (((((*(self + 504) & 4) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      [(TPLCDTextView *)self _setupForAnimationIfNecessary];
      v4 = 4;
    }

    else
    {
      [(TPLCDTextView *)self _tearDownAnimation];
      v4 = 0;
    }

    [(TPLCDTextView *)self setNeedsDisplay];
    *(self + 504) = *(self + 504) & 0xFB | v4;
    *(self + 504) &= ~8u;
  }
}

- (void)_startScrolling
{
  v3 = [(TPLCDTextView *)self superview];

  if (v3)
  {
    scrollingView = self->_scrollingView;
    if (scrollingView)
    {
      [(TPLCDTextViewScrollingView *)scrollingView frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      [(TPLCDTextView *)self bounds];
      v12 = v8 - v11;
      v13 = -(v8 - v11);
      [(TPLCDTextViewScrollingView *)self->_scrollingView setFrame:0.0, v6, v8, v10];
      v14 = [objc_alloc(MEMORY[0x1E69DCA58]) initWithTarget:self->_scrollingView];
      animation = self->_animation;
      self->_animation = v14;

      [(UIFrameAnimation *)self->_animation setSignificantRectFields:1];
      [(UIFrameAnimation *)self->_animation setStartFrame:0.0, v6, v8, v10];
      [(UIFrameAnimation *)self->_animation setEndFrame:v13, v6, v8, v10];
      [(UIFrameAnimation *)self->_animation setAnimationCurve:3];
      [(UIFrameAnimation *)self->_animation setDelegate:self];
      [(UIFrameAnimation *)self->_animation setAction:sel__finishedScrolling];
      v16 = [MEMORY[0x1E69DC660] sharedAnimator];
      [v16 addAnimation:self->_animation withDuration:1 start:(v12 + 0.0) * 0.025];

      *(self + 504) |= 8u;
    }

    else
    {

      [(TPLCDTextView *)self _finishedScrolling];
    }
  }
}

- (void)startAnimating
{
  if ((*(self + 504) & 4) != 0 && (*(self + 504) & 8) == 0)
  {
    [(TPLCDTextView *)self _scheduleStartScrolling];
    *(self + 504) |= 8u;
  }
}

- (void)_finishedScrolling
{
  animation = self->_animation;
  self->_animation = 0;

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [self->_delegate lcdTextViewCompletedScroll:self];
  }

  if ((*(self + 504) & 8) != 0 && (*(self + 504) & 4) != 0)
  {
    if (self->_scrollingView)
    {
      v5 = [(TPLCDTextView *)self superview];

      if (v5)
      {

        [(TPLCDTextView *)self _scheduleStartScrolling];
      }
    }
  }
}

- (void)stopAnimating
{
  if ((*(self + 504) & 4) != 0 && (*(self + 504) & 8) != 0)
  {
    if (self->_scrollingView)
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__startScrolling object:0];
      [(UIFrameAnimation *)self->_animation setDelegate:0];
      v3 = [MEMORY[0x1E69DC660] sharedAnimator];
      [v3 removeAnimationsForTarget:self->_scrollingView];

      animation = self->_animation;
      self->_animation = 0;

      *(self + 504) &= ~8u;
    }
  }
}

- (void)resetAnimation
{
  if (self->_scrollingView)
  {
    v3 = *(self + 504);
    [(TPLCDTextView *)self stopAnimating];
    [(TPLCDTextViewScrollingView *)self->_scrollingView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [(TPLCDTextView *)self bounds];
    [(TPLCDTextViewScrollingView *)self->_scrollingView setFrame:-(v7 - v10), v5, v7, v9];
    if ((v3 & 8) != 0)
    {

      [(TPLCDTextView *)self _scheduleStartScrolling];
    }
  }
}

@end