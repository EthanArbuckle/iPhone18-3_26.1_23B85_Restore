@interface _TVAnimatedLabel
- (BOOL)_isRTL;
- (BOOL)_shouldCycle;
- (_TVAnimatedLabel)initWithFrame:(CGRect)a3;
- (__TVAnimatedImageView)currentMarqueeView;
- (__TVAnimatedImageView)nextMarqueeView;
- (id)_rasterizedTextWithMarquee:(BOOL)a3;
- (void)_clearAnimations;
- (void)_clearAttributedStrings;
- (void)_prepareNextMarqueeWithDelay:(double)a3;
- (void)_startMarqueeIfNeeded;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)drawTextInRect:(CGRect)a3;
- (void)setAnimating:(BOOL)a3;
- (void)setAttributedStrings:(id)a3;
- (void)setAttributedText:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setNeedsDisplay;
- (void)setPaused:(BOOL)a3;
- (void)setText:(id)a3;
- (void)stopAndResetScrollWithDuration:(double)a3;
- (void)stopAnimatingWithoutResetWithDuration:(double)a3;
@end

@implementation _TVAnimatedLabel

- (_TVAnimatedLabel)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = _TVAnimatedLabel;
  v3 = [(_TVLabel *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_marqueeing = 0;
    v3->_animating = 0;
    v3->_crossfading = 0;
    v3->_marqueeDelay = 2.0;
    v3->_replicationPadding = 40.0;
    v3->_maskCapWidth = 20.0;
    v3->_scrollRate = 45.0;
    v3->_crossfadeDuration = 1.5;
    v5 = [__TVAnimatedImageView alloc];
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [(__TVAnimatedImageView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
    [(_TVAnimatedLabel *)v4 addSubview:v10];
    objc_storeWeak(&v4->_currentMarqueeView, v10);
    [(__TVAnimatedImageView *)v10 setHidden:1];
    v11 = [[__TVAnimatedImageView alloc] initWithFrame:v6, v7, v8, v9];
    [(_TVAnimatedLabel *)v4 addSubview:v11];
    objc_storeWeak(&v4->_nextMarqueeView, v11);
    [(__TVAnimatedImageView *)v11 setHidden:1];
  }

  return v4;
}

- (void)dealloc
{
  [(_TVAnimatedLabel *)self _clearAnimations];
  v3.receiver = self;
  v3.super_class = _TVAnimatedLabel;
  [(_TVAnimatedLabel *)&v3 dealloc];
}

- (void)setText:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCA898];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  [(_TVAnimatedLabel *)self setAttributedText:v6];
}

- (void)setAttributedText:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];
  }

  else
  {
    v6 = 0;
  }

  [(_TVAnimatedLabel *)self setAttributedStrings:v6, v7, v8];
}

- (void)_clearAttributedStrings
{
  attributedStrings = self->_attributedStrings;
  self->_attributedStrings = 0;

  self->_currentAttributedStringIndex = 0;
  v4.receiver = self;
  v4.super_class = _TVAnimatedLabel;
  [(_TVLabel *)&v4 setAttributedText:0];
  [(_TVAnimatedLabel *)self setNeedsDisplay];
}

- (void)setAttributedStrings:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(NSArray *)self->_attributedStrings isEqual:v4]& 1) == 0)
  {
    v5 = [v4 copy];
    attributedStrings = self->_attributedStrings;
    self->_attributedStrings = v5;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = self->_attributedStrings;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = *v23;
      v9 = *MEMORY[0x277D74060];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          objc_initWeak(&location, self);
          v12 = [v11 length];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __41___TVAnimatedLabel_setAttributedStrings___block_invoke;
          v19[3] = &unk_279D6F188;
          v19[4] = self;
          objc_copyWeak(&v20, &location);
          [v11 enumerateAttribute:v9 inRange:0 options:v12 usingBlock:{0, v19}];
          objc_destroyWeak(&v20);
          objc_destroyWeak(&location);
        }

        v7 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    [(_TVAnimatedLabel *)self _clearAnimations];
    v13 = [(_TVAnimatedLabel *)self currentMarqueeView];
    [v13 setHidden:1];

    v14 = [(_TVAnimatedLabel *)self nextMarqueeView];
    [v14 setHidden:1];

    self->_currentAttributedStringIndex = 0;
    v15 = [(NSArray *)self->_attributedStrings firstObject];
    v16 = [v15 copy];
    v18.receiver = self;
    v18.super_class = _TVAnimatedLabel;
    [(_TVLabel *)&v18 setAttributedText:v16];

    [(_TVLabel *)self setLineBreakMode:2];
    [(_TVAnimatedLabel *)self setNeedsDisplay];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _TVAnimatedLabel;
  [(_TVLabel *)&v6 setHighlighted:a3];
  [(_TVAnimatedLabel *)self setNeedsDisplay];
  if (self->_animating && self->_marqueeing)
  {
    v4 = [(_TVAnimatedLabel *)self currentMarqueeView];
    v5 = [(_TVAnimatedLabel *)self _rasterizedTextWithMarquee:self->_marqueeNeeded];
    [v4 setImage:v5];
  }
}

- (void)setNeedsDisplay
{
  if (!self->_marqueeing)
  {
    v2.receiver = self;
    v2.super_class = _TVAnimatedLabel;
    [(_TVAnimatedLabel *)&v2 setNeedsDisplay];
  }
}

- (void)_clearAnimations
{
  v3 = [(_TVAnimatedLabel *)self currentMarqueeView];
  v4 = [v3 layer];
  [v4 removeAllAnimations];

  v5 = [(_TVAnimatedLabel *)self nextMarqueeView];
  v6 = [v5 layer];
  [v6 removeAllAnimations];

  [(CALayer *)self->_maskLayer removeAllAnimations];
  v7 = [(_TVAnimatedLabel *)self layer];
  [v7 setMask:0];

  self->_marqueeing = 0;
  self->_crossfading = 0;
}

- (void)setAnimating:(BOOL)a3
{
  if (self->_animating == a3)
  {
    return;
  }

  self->_animating = a3;
  if (!self->_marqueeNeeded)
  {
    return;
  }

  v4 = [(_TVAnimatedLabel *)self currentMarqueeView];
  [v4 setHidden:1];

  v5 = [(_TVAnimatedLabel *)self nextMarqueeView];
  [v5 setHidden:1];

  if (self->_stopping && self->_animating)
  {
    self->_stopping = 0;
    return;
  }

  if (self->_starting)
  {
    if (!self->_animating)
    {
      self->_starting = 0;
      return;
    }

    goto LABEL_10;
  }

  if (self->_animating)
  {
LABEL_10:
    v6 = [(_TVAnimatedLabel *)self layer];
    [v6 setOpaque:0];

    v7 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [_TVAnimatedLabel setAnimating:v7];
    }

    self->_starting = 1;
    objc_initWeak(&location, self);
    v8 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33___TVAnimatedLabel_setAnimating___block_invoke;
    block[3] = &unk_279D6E770;
    objc_copyWeak(&v12, &location);
    block[4] = self;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    return;
  }

  [(_TVAnimatedLabel *)self _clearAnimations];
  self->_stopping = 0;
  self->_starting = 0;
  self->_currentAttributedStringIndex = 0;
  v9 = [(NSArray *)self->_attributedStrings firstObject];
  v10 = [v9 copy];
  [(_TVAnimatedLabel *)self setAttributedText:v10];

  [(_TVAnimatedLabel *)self setNeedsDisplay];
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    if (!a3)
    {
      [(_TVAnimatedLabel *)self _startMarqueeIfNeeded];
    }
  }
}

- (void)stopAnimatingWithoutResetWithDuration:(double)a3
{
  if ([(_TVAnimatedLabel *)self isAnimating])
  {
    if (self->_marqueeNeeded)
    {
      v5 = TVMLKitLogObject;
      if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
      {
        [_TVAnimatedLabel stopAnimatingWithoutResetWithDuration:v5];
      }

      self->_stopping = 1;
      objc_initWeak(&location, self);
      v6 = dispatch_time(0, (a3 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58___TVAnimatedLabel_stopAnimatingWithoutResetWithDuration___block_invoke;
      block[3] = &unk_279D6E770;
      objc_copyWeak(&v8, &location);
      block[4] = self;
      dispatch_after(v6, MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }

    else
    {

      [(_TVAnimatedLabel *)self stopAnimating];
    }
  }
}

- (void)stopAndResetScrollWithDuration:(double)a3
{
  if (a3 > 0.0 && self->_marqueeNeeded)
  {
    [(_TVAnimatedLabel *)self bounds];
    v51 = v6;
    v52 = v5;
    v8 = v7;
    v49 = v9;
    [(_TVAnimatedLabel *)self textSizeForWidth:3.40282347e38];
    v47 = v10;
    v48 = v11;
    v50 = v8;
    v12 = v10 + v8;
    [(_TVAnimatedLabel *)self replicationPadding];
    v46 = v13 + v12;
    v14 = [(_TVAnimatedLabel *)self currentMarqueeView];
    v15 = [v14 layer];
    v16 = [v15 presentationLayer];
    [v16 contentsRect];
    v18 = v17;
    v44 = v20;
    v45 = v19;
    v43 = v21;

    v22 = [(CALayer *)self->_maskLayer presentationLayer];
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = [(CALayer *)self->_maskLayer presentationLayer];
    [v31 position];
    v33 = v32;
    v35 = v34;

    v36 = [(_TVAnimatedLabel *)self currentMarqueeView];
    v37 = [v36 layer];
    [v37 removeAllAnimations];

    [(CALayer *)self->_maskLayer removeAllAnimations];
    v38 = [(_TVAnimatedLabel *)self currentMarqueeView];
    v39 = [v38 layer];
    [v39 setContentsRect:{v18, v45, v44, v43}];

    [(CALayer *)self->_maskLayer setBounds:v24, v26, v28, v30];
    [(CALayer *)self->_maskLayer setPosition:v33, v35];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __51___TVAnimatedLabel_stopAndResetScrollWithDuration___block_invoke;
    v55[3] = &unk_279D6F1B0;
    v55[4] = self;
    *&v55[5] = v47;
    v55[6] = v48;
    *&v55[7] = v46;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __51___TVAnimatedLabel_stopAndResetScrollWithDuration___block_invoke_2;
    v54[3] = &unk_279D6EBD0;
    v54[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:327686 delay:v55 options:v54 animations:a3 completion:0.0];
    v40 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [_TVAnimatedLabel stopAndResetScrollWithDuration:v40];
    }

    v41 = a3 + -0.2;
    if (a3 + -0.2 < 0.1)
    {
      v41 = 0.1;
    }

    v42 = dispatch_time(0, (v41 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51___TVAnimatedLabel_stopAndResetScrollWithDuration___block_invoke_34;
    block[3] = &unk_279D6EAB8;
    block[4] = self;
    block[5] = v52;
    block[6] = v51;
    *&block[7] = v50;
    block[8] = v49;
    dispatch_after(v42, MEMORY[0x277D85CD0], block);
  }

  else
  {

    [(_TVAnimatedLabel *)self setAnimating:0];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _TVAnimatedLabel;
  [(_TVAnimatedLabel *)&v4 didMoveToWindow];
  v3 = [(_TVAnimatedLabel *)self window];

  if (!v3)
  {
    [(_TVAnimatedLabel *)self stopAnimating];
  }
}

- (BOOL)_isRTL
{
  v2 = [(_TVAnimatedLabel *)self text];
  v3 = [v2 isNaturallyRTL];

  return v3;
}

- (void)drawTextInRect:(CGRect)a3
{
  if (!self->_crossfading)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    [(_TVAnimatedLabel *)self textSizeForWidth:3.40282347e38];
    self->_marqueeNeeded = v8 > width + self->_underPosterOutset * -2.0;
    v9 = [(_TVAnimatedLabel *)self _isRTL];
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGContextClipToRect(CurrentContext, v17);
    if (self->_marqueeNeeded && [(_TVAnimatedLabel *)self isAnimating])
    {
      CGContextClear();
      if (self->_starting || self->_marqueeNeeded && [(_TVAnimatedLabel *)self isAnimating])
      {
        self->_starting = 0;
        [(_TVAnimatedLabel *)self _startMarqueeIfNeeded];
      }
    }

    else
    {
      [(_TVAnimatedLabel *)self _drawFullMarqueeTextInRect:?];
    }

    CGContextRestoreGState(CurrentContext);
    if (self->_marqueeNeeded)
    {
      if (drawTextInRect____once != -1)
      {
        [_TVAnimatedLabel drawTextInRect:];
      }

      if (v9)
      {
        v11 = [drawTextInRect____maskImage imageWithHorizontallyFlippedOrientation];
      }

      else
      {
        v11 = drawTextInRect____maskImage;
      }

      v15 = v11;
      [v11 size];
      v13 = v12;
      v14 = x + width - v12;
      if (v9)
      {
        v14 = 0.0;
      }

      [v15 drawInRect:22 blendMode:v14 alpha:{y, v13, height, 1.0}];
    }
  }
}

- (id)_rasterizedTextWithMarquee:(BOOL)a3
{
  v3 = a3;
  [(_TVAnimatedLabel *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(_TVAnimatedLabel *)self textSizeForWidth:3.40282347e38];
  v14 = v13;
  v15 = 0.0;
  if (v3)
  {
    [(_TVAnimatedLabel *)self replicationPadding];
    v15 = v14 + v16;
  }

  v17 = [(_TVAnimatedLabel *)self backgroundColor];
  v18 = [(_TVAnimatedLabel *)self _isRTL];
  v19 = 0;
  if (v12 != 0.0)
  {
    v20 = v10 + v15;
    if (v20 != 0.0)
    {
      v21 = v18;
      v35.width = v20;
      v35.height = v12;
      UIGraphicsBeginImageContextWithOptions(v35, 0, 0.0);
      if (v17)
      {
        [v17 set];
        v36.origin.x = 0.0;
        v36.origin.y = 0.0;
        v36.size.width = v20;
        v36.size.height = v12;
        UIRectFill(v36);
      }

      if (v3)
      {
        if (v21)
        {
          underPosterOutset = v20 - self->_underPosterOutset - v14;
        }

        else
        {
          underPosterOutset = self->_underPosterOutset;
        }

        [(_TVAnimatedLabel *)self _drawFullMarqueeTextInRect:underPosterOutset, 0.0, v14, v12];
        v23 = 0;
        v24 = underPosterOutset;
        v25 = v14;
        v26 = v12;
        if (v21)
        {
          MinX = CGRectGetMinX(*&v24);
          [(_TVAnimatedLabel *)self replicationPadding];
          v29 = MinX - v28 - v14;
        }

        else
        {
          MaxX = CGRectGetMaxX(*&v24);
          [(_TVAnimatedLabel *)self replicationPadding];
          v29 = MaxX + v32;
        }

        [(_TVAnimatedLabel *)self _drawFullMarqueeTextInRect:v29, 0.0, v14, v12];
      }

      else
      {
        animating = self->_animating;
        self->_animating = 0;
        [(_TVAnimatedLabel *)self drawTextInRect:v6, v8, v10, v12];
        self->_animating = animating;
      }

      v19 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  return v19;
}

- (void)_prepareNextMarqueeWithDelay:(double)a3
{
  v5 = [(_TVAnimatedLabel *)self currentMarqueeView];
  v6 = [(_TVAnimatedLabel *)self nextMarqueeView];
  v7 = [(_TVAnimatedLabel *)self currentAttributedStringIndex]+ 1;
  v8 = [(_TVAnimatedLabel *)self attributedStrings];
  v9 = v7 % [v8 count];

  self->_currentAttributedStringIndex = v9;
  v10 = [(_TVAnimatedLabel *)self attributedStrings];
  v11 = [v10 objectAtIndex:self->_currentAttributedStringIndex];
  v12 = [v11 copy];

  self->_animating = 0;
  v31.receiver = self;
  v31.super_class = _TVAnimatedLabel;
  [(_TVLabel *)&v31 setAttributedText:v12];
  [(_TVLabel *)self setLineBreakMode:2];
  self->_animating = 1;
  v13 = [(_TVAnimatedLabel *)self _rasterizedTextWithMarquee:0];
  [v6 setImage:v13];

  v14 = [v6 layer];
  [v14 setContentsRect:{0.0, 0.0, 1.0, 1.0}];

  [v6 sizeToFit];
  [(_TVAnimatedLabel *)self bounds];
  [v6 setFrame:?];
  [v6 setHidden:0];
  [v6 setAlpha:0.0];
  self->_crossfading = 1;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D75D18];
  [(_TVAnimatedLabel *)self crossfadeDuration];
  v17 = v16;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __49___TVAnimatedLabel__prepareNextMarqueeWithDelay___block_invoke;
  v27[3] = &unk_279D6E2F8;
  v18 = v5;
  v28 = v18;
  v19 = v6;
  v29 = v19;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __49___TVAnimatedLabel__prepareNextMarqueeWithDelay___block_invoke_2;
  v22[3] = &unk_279D6F1D8;
  objc_copyWeak(&v26, &location);
  v20 = v19;
  v23 = v20;
  v21 = v18;
  v24 = v21;
  v25 = self;
  [v15 animateWithDuration:0 delay:v27 options:v22 animations:v17 completion:a3];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (BOOL)_shouldCycle
{
  v2 = [(_TVAnimatedLabel *)self attributedStrings];
  v3 = [v2 count] > 1;

  return v3;
}

- (void)_startMarqueeIfNeeded
{
  v100[5] = *MEMORY[0x277D85DE8];
  if (!self->_marqueeing && (self->_marqueeNeeded || [(_TVAnimatedLabel *)self _shouldCycle]))
  {
    v3 = [(_TVAnimatedLabel *)self _isRTL];
    self->_marqueeing = 1;
    [(_TVAnimatedLabel *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(_TVAnimatedLabel *)self textSizeForWidth:3.40282347e38];
    v13 = v12;
    v14 = v9;
    if (self->_marqueeNeeded)
    {
      [(_TVAnimatedLabel *)self replicationPadding];
      v14 = v13 + v9 + v15;
    }

    v95 = v14;
    [(_TVAnimatedLabel *)self replicationPadding];
    v92 = v13;
    v17 = v13 + v16;
    [(_TVAnimatedLabel *)self scrollRate];
    v19 = v17 / v18;
    [(_TVAnimatedLabel *)self marqueeDelay];
    v21 = v20;
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __41___TVAnimatedLabel__startMarqueeIfNeeded__block_invoke;
    v97[3] = &unk_279D6F200;
    v97[4] = self;
    *&v97[5] = v20;
    *&v97[6] = v19;
    v22 = MEMORY[0x26D6AFBB0](v97);
    v23 = [(_TVAnimatedLabel *)self currentMarqueeView];
    v24 = [(_TVAnimatedLabel *)self _rasterizedTextWithMarquee:self->_marqueeNeeded];
    [v23 setImage:v24];

    [v23 setFrame:{v5, v7, v9, v11}];
    v25 = [v23 layer];
    v26 = v9 / v95;
    [v25 setContentsRect:{0.0, 0.0, v9 / v95, 1.0}];

    [v23 setHidden:0];
    v27 = [v23 layer];
    [v27 removeAllAnimations];

    [(CALayer *)self->_maskLayer removeAllAnimations];
    if (self->_marqueeNeeded)
    {
      v91 = v21 + v19;
      v94 = v9;
      if (_startMarqueeIfNeeded___once != -1)
      {
        [_TVAnimatedLabel _startMarqueeIfNeeded];
      }

      [_startMarqueeIfNeeded___maskImage size];
      v29 = 1.0 / v28;
      v30 = [MEMORY[0x277CD9ED0] layer];
      maskLayer = self->_maskLayer;
      self->_maskLayer = v30;

      -[CALayer setContents:](self->_maskLayer, "setContents:", [_startMarqueeIfNeeded___maskImage CGImage]);
      v32 = 0.0;
      [(CALayer *)self->_maskLayer setContentsCenter:0.5 - v29 * 0.5, 0.0, v29, 1.0];
      [_startMarqueeIfNeeded___maskImage scale];
      [(CALayer *)self->_maskLayer setContentsScale:?];
      [(CALayer *)self->_maskLayer setFrame:v5, v7, v94, v11];
      v33 = self->_maskLayer;
      v34 = [(_TVAnimatedLabel *)self layer];
      [v34 setMask:v33];

      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setCompletionBlock:v22];
      v35 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"contentsRect.origin.x"];
      [v35 setDuration:v91];
      v36 = *MEMORY[0x277CDA230];
      [v35 setFillMode:*MEMORY[0x277CDA230]];
      [v35 setBeginTime:v21 + CACurrentMediaTime()];
      [v35 setDuration:v19];
      v37 = 1.0 - v26;
      if (!v3)
      {
        v37 = 0.0;
      }

      v38 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
      [v35 setFromValue:v38];

      v39 = MEMORY[0x277CCABB0];
      if (!v3)
      {
        [(_TVAnimatedLabel *)self replicationPadding];
        v32 = (v92 + v40) / v95;
      }

      v41 = [v39 numberWithDouble:v32];
      [v35 setToValue:v41];

      v42 = [v23 layer];
      [v42 addAnimation:v35 forKey:@"TVAnimatedLabelMarqueeLayerContentOriginXAnimationKey"];

      if (self->_underPosterOutset == 0.0)
      {
        v43 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
        v100[0] = v43;
        v44 = v21 / v91;
        *&v44 = v21 / v91;
        [MEMORY[0x277CCABB0] numberWithFloat:v44];
        v45 = v88 = v3;
        v100[1] = v45;
        v46 = MEMORY[0x277CCABB0];
        [(_TVAnimatedLabel *)self scrollRate];
        v48 = (v21 + 20.0 / v47) / v91;
        *&v48 = v48;
        [v46 numberWithFloat:v48];
        v49 = v90 = v36;
        v100[2] = v49;
        v50 = MEMORY[0x277CCABB0];
        [(_TVAnimatedLabel *)self scrollRate];
        v52 = -20.0 / v51 / v91 + 1.0;
        *&v52 = v52;
        [v50 numberWithFloat:v52];
        v53 = v93 = v22;
        v100[3] = v53;
        LODWORD(v54) = 1.0;
        v55 = [MEMORY[0x277CCABB0] numberWithFloat:v54];
        v100[4] = v55;
        v96 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:5];

        v56 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"bounds.size.width"];
        [v56 setDuration:v91];
        [v56 setFillMode:v90];
        v57 = v56;
        [v56 setRemovedOnCompletion:0];
        v58 = v94 + 20.0;
        v59 = v94 + 20.0;
        *&v58 = v59;
        v60 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
        v99[0] = v60;
        *&v61 = v59;
        v62 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
        v99[1] = v62;
        v63 = v94;
        *&v64 = v63;
        v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
        v99[2] = v65;
        *&v66 = v63;
        v67 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
        v99[3] = v67;
        *&v68 = v59;
        [MEMORY[0x277CCABB0] numberWithFloat:v68];
        v69 = v89 = v35;
        v99[4] = v69;
        v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:5];
        [v57 setValues:v70];

        v87 = v57;
        [v57 setKeyTimes:v96];
        [(CALayer *)self->_maskLayer addAnimation:v57 forKey:@"TVAnimatedLabelMarqueeMaskLayerWidthAnimationKey"];
        v71 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position.x"];
        [v71 setDuration:v91];
        [v71 setFillMode:v90];
        [v71 setRemovedOnCompletion:0];
        if (v88)
        {
          v72 = 20.0;
        }

        else
        {
          v72 = -20.0;
        }

        v73 = (v72 + v94) * 0.5;
        v74 = v73;
        *&v73 = v74;
        v75 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
        v98[0] = v75;
        *&v76 = v74;
        v77 = [MEMORY[0x277CCABB0] numberWithFloat:v76];
        v98[1] = v77;
        v78 = v94 * 0.5;
        v79 = v94 * 0.5;
        *&v78 = v79;
        v80 = [MEMORY[0x277CCABB0] numberWithFloat:v78];
        v98[2] = v80;
        *&v81 = v79;
        v82 = [MEMORY[0x277CCABB0] numberWithFloat:v81];
        v98[3] = v82;
        *&v83 = v74;
        v84 = [MEMORY[0x277CCABB0] numberWithFloat:v83];
        v98[4] = v84;
        v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:5];
        [v71 setValues:v85];

        v35 = v89;
        v22 = v93;
        [v71 setKeyTimes:v96];
        [(CALayer *)self->_maskLayer addAnimation:v71 forKey:@"TVAnimatedLabelMarqueeMaskLayerPositionXAnimationKey"];
      }

      [MEMORY[0x277CD9FF0] commit];
    }

    else
    {
      v86 = [(_TVAnimatedLabel *)self layer];
      [v86 setMask:0];

      v22[2](v22);
    }
  }
}

- (__TVAnimatedImageView)currentMarqueeView
{
  WeakRetained = objc_loadWeakRetained(&self->_currentMarqueeView);

  return WeakRetained;
}

- (__TVAnimatedImageView)nextMarqueeView
{
  WeakRetained = objc_loadWeakRetained(&self->_nextMarqueeView);

  return WeakRetained;
}

- (void)setAnimating:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() text];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26CD9A000, v4, v5, "AL(%@): starting timeout begin", v6, v7, v8, v9, v10);
}

- (void)stopAnimatingWithoutResetWithDuration:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() text];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26CD9A000, v4, v5, "AL(%@): stopping timeout begin", v6, v7, v8, v9, v10);
}

- (void)stopAndResetScrollWithDuration:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() text];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26CD9A000, v4, v5, "AL(%@): stop-and-reset timeout begin", v6, v7, v8, v9, v10);
}

@end