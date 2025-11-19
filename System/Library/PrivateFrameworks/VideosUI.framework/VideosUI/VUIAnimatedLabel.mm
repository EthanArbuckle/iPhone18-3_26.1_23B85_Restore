@interface VUIAnimatedLabel
- (BOOL)_isRTL;
- (BOOL)_shouldCycle;
- (VUIAnimatedLabel)initWithFrame:(CGRect)a3;
- (_VUIAnimatedImageView)currentMarqueeView;
- (_VUIAnimatedImageView)nextMarqueeView;
- (double)animationDuration;
- (id)_rasterizedTextWithMarquee:(BOOL)a3;
- (void)_clearAnimations;
- (void)_clearAttributedStrings;
- (void)_prepareNextMarqueeWithDelay:(double)a3;
- (void)_startMarqueeIfNeeded;
- (void)_stopMarqueeingIfNeeded;
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
- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5;
@end

@implementation VUIAnimatedLabel

- (VUIAnimatedLabel)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = VUIAnimatedLabel;
  v3 = [(VUILabel *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v5 = [_VUIAnimatedImageView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(_VUIAnimatedImageView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    [(VUIAnimatedLabel *)v4 addSubview:v10];
    objc_storeWeak(&v4->_currentMarqueeView, v10);
    [(_VUIAnimatedImageView *)v10 setHidden:1];
    v11 = [[_VUIAnimatedImageView alloc] initWithFrame:v6, v7, v8, v9];
    [(VUIAnimatedLabel *)v4 addSubview:v11];
    objc_storeWeak(&v4->_nextMarqueeView, v11);
    [(_VUIAnimatedImageView *)v11 setHidden:1];
  }

  return v4;
}

- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = VUIAnimatedLabel;
  [(VUILabel *)&v7 vui_setSelected:a3 animated:a4 withAnimationCoordinator:a5];
  [(VUIAnimatedLabel *)self setAnimating:v5];
}

- (void)dealloc
{
  [(VUIAnimatedLabel *)self _clearAnimations];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIAnimatedLabel;
  [(VUILabel *)&v4 dealloc];
}

- (void)setText:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AAB0];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  [(VUIAnimatedLabel *)self setAttributedText:v6];
}

- (void)setAttributedText:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];
  }

  else
  {
    v6 = 0;
  }

  [(VUIAnimatedLabel *)self setAttributedStrings:v6, v7, v8];
}

- (void)_clearAttributedStrings
{
  attributedStrings = self->_attributedStrings;
  self->_attributedStrings = 0;

  self->_currentAttributedStringIndex = 0;
  v4.receiver = self;
  v4.super_class = VUIAnimatedLabel;
  [(VUILabel *)&v4 setAttributedText:0];
  [(VUIAnimatedLabel *)self setNeedsDisplay];
}

- (void)setAttributedStrings:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
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
      v9 = *MEMORY[0x1E69DB5F8];
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
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __41__VUIAnimatedLabel_setAttributedStrings___block_invoke;
          v19[3] = &unk_1E8734830;
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

    [(VUIAnimatedLabel *)self _clearAnimations];
    v13 = [(VUIAnimatedLabel *)self currentMarqueeView];
    [v13 setHidden:1];

    v14 = [(VUIAnimatedLabel *)self nextMarqueeView];
    [v14 setHidden:1];

    self->_currentAttributedStringIndex = 0;
    v15 = [(NSArray *)self->_attributedStrings firstObject];
    v16 = [v15 copy];
    v18.receiver = self;
    v18.super_class = VUIAnimatedLabel;
    [(VUILabel *)&v18 setAttributedText:v16];

    [(VUILabel *)self setLineBreakMode:2];
    [(VUIAnimatedLabel *)self setNeedsDisplay];
  }
}

void __41__VUIAnimatedLabel_setAttributedStrings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [*(a1 + 32) effectiveUserInterfaceLayoutDirection] == 1;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__VUIAnimatedLabel_setAttributedStrings___block_invoke_2;
    v6[3] = &unk_1E872E4B8;
    objc_copyWeak(&v7, (a1 + 40));
    [v4 tv_resolveWithTextLayoutDirection:v5 layoutObserver:v6];
    objc_destroyWeak(&v7);
  }
}

void __41__VUIAnimatedLabel_setAttributedStrings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsDisplay];
}

- (void)setHighlighted:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = VUIAnimatedLabel;
  [(VUILabel *)&v6 setHighlighted:a3];
  [(VUIAnimatedLabel *)self setNeedsDisplay];
  if (self->_animating && self->_marqueeing)
  {
    v4 = [(VUIAnimatedLabel *)self currentMarqueeView];
    v5 = [(VUIAnimatedLabel *)self _rasterizedTextWithMarquee:self->_marqueeNeeded];
    [v4 setImage:v5];
  }
}

- (void)setNeedsDisplay
{
  if (!self->_marqueeing)
  {
    v2.receiver = self;
    v2.super_class = VUIAnimatedLabel;
    [(VUIAnimatedLabel *)&v2 setNeedsDisplay];
  }
}

- (void)_clearAnimations
{
  v3 = [(VUIAnimatedLabel *)self currentMarqueeView];
  v4 = [v3 layer];
  [v4 removeAllAnimations];

  v5 = [(VUIAnimatedLabel *)self nextMarqueeView];
  v6 = [v5 layer];
  [v6 removeAllAnimations];

  [(CALayer *)self->_maskLayer removeAllAnimations];
  v7 = [(VUIAnimatedLabel *)self layer];
  [v7 setMask:0];

  self->_marqueeing = 0;
  self->_crossfading = 0;
}

- (void)setAnimating:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_animating == a3)
  {
    if (a3 && self->_stopping)
    {
      self->_stopping = 0;
    }

    return;
  }

  self->_animating = a3;
  if (!self->_marqueeNeeded)
  {
    return;
  }

  v4 = [(VUIAnimatedLabel *)self currentMarqueeView];
  [v4 setHidden:1];

  v5 = [(VUIAnimatedLabel *)self nextMarqueeView];
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

    goto LABEL_13;
  }

  if (self->_animating)
  {
LABEL_13:
    v6 = [(VUIAnimatedLabel *)self layer];
    [v6 setOpaque:0];

    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(VUIAnimatedLabel *)self text];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "AL(%@): starting timeout begin", buf, 0xCu);
    }

    self->_starting = 1;
    objc_initWeak(buf, self);
    v9 = dispatch_time(0, 100000000);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__VUIAnimatedLabel_setAnimating___block_invoke;
    v12[3] = &unk_1E872F038;
    objc_copyWeak(&v13, buf);
    v12[4] = self;
    dispatch_after(v9, MEMORY[0x1E69E96A0], v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
    return;
  }

  [(VUIAnimatedLabel *)self _clearAnimations];
  self->_stopping = 0;
  self->_starting = 0;
  self->_currentAttributedStringIndex = 0;
  v10 = [(NSArray *)self->_attributedStrings firstObject];
  v11 = [v10 copy];
  [(VUIAnimatedLabel *)self setAttributedText:v11];

  [(VUIAnimatedLabel *)self setNeedsDisplay];
}

void __33__VUIAnimatedLabel_setAnimating___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 1019) == 1)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) text];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "AL(%@): starting timeout end", &v6, 0xCu);
    }

    [v3 setNeedsDisplay];
  }
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    if (!a3)
    {
      [(VUIAnimatedLabel *)self _startMarqueeIfNeeded];
    }
  }
}

- (void)stopAnimatingWithoutResetWithDuration:(double)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(VUIAnimatedLabel *)self isAnimating])
  {
    if (self->_marqueeNeeded)
    {
      v5 = VUIDefaultLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(VUIAnimatedLabel *)self text];
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "AL(%@): stopping timeout begin", buf, 0xCu);
      }

      self->_stopping = 1;
      objc_initWeak(buf, self);
      v7 = dispatch_time(0, (a3 * 1000000000.0));
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58__VUIAnimatedLabel_stopAnimatingWithoutResetWithDuration___block_invoke;
      v8[3] = &unk_1E872F038;
      objc_copyWeak(&v9, buf);
      v8[4] = self;
      dispatch_after(v7, MEMORY[0x1E69E96A0], v8);
      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
    }

    else
    {

      [(VUIAnimatedLabel *)self stopAnimating];
    }
  }
}

void __58__VUIAnimatedLabel_stopAnimatingWithoutResetWithDuration___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[1020] == 1)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) text];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "AL(%@): stopping timeout end", &v6, 0xCu);
    }

    v3[1020] = 0;
    [v3 stopAnimating];
  }
}

- (void)stopAndResetScrollWithDuration:(double)a3
{
  v64 = *MEMORY[0x1E69E9840];
  if (a3 > 0.0 && self->_marqueeNeeded)
  {
    [(VUIAnimatedLabel *)self bounds];
    v52 = v6;
    v53 = v5;
    v8 = v7;
    v50 = v9;
    [(VUIAnimatedLabel *)self textSizeForWidth:3.40282347e38];
    v48 = v10;
    v49 = v11;
    v51 = v8;
    v12 = v10 + v8;
    [(VUIAnimatedLabel *)self replicationPadding];
    v47 = v13 + v12;
    v14 = [(VUIAnimatedLabel *)self currentMarqueeView];
    v15 = [v14 layer];
    v16 = [v15 presentationLayer];
    [v16 contentsRect];
    v18 = v17;
    v45 = v20;
    v46 = v19;
    v44 = v21;

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

    v36 = [v14 layer];
    [v36 removeAllAnimations];

    [(CALayer *)self->_maskLayer removeAllAnimations];
    v37 = [v14 layer];
    [v37 setContentsRect:{v18, v46, v45, v44}];

    [(CALayer *)self->_maskLayer setBounds:v24, v26, v28, v30];
    [(CALayer *)self->_maskLayer setPosition:v33, v35];
    v38 = MEMORY[0x1E69DD250];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __51__VUIAnimatedLabel_stopAndResetScrollWithDuration___block_invoke;
    v56[3] = &unk_1E8734858;
    v59 = v48;
    v60 = v49;
    v61 = v47;
    v57 = v14;
    v58 = self;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __51__VUIAnimatedLabel_stopAndResetScrollWithDuration___block_invoke_2;
    v55[3] = &unk_1E872F758;
    v55[4] = self;
    v39 = v14;
    [v38 animateWithDuration:327686 delay:v56 options:v55 animations:a3 completion:0.0];
    v40 = VUIDefaultLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = [(VUIAnimatedLabel *)self text];
      *buf = 138412290;
      v63 = v41;
      _os_log_impl(&dword_1E323F000, v40, OS_LOG_TYPE_INFO, "AL(%@): stop-and-reset timeout begin", buf, 0xCu);
    }

    v42 = a3 + -0.2;
    if (a3 + -0.2 < 0.1)
    {
      v42 = 0.1;
    }

    v43 = dispatch_time(0, (v42 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__VUIAnimatedLabel_stopAndResetScrollWithDuration___block_invoke_37;
    block[3] = &unk_1E87311F8;
    block[4] = self;
    block[5] = v53;
    block[6] = v52;
    *&block[7] = v51;
    block[8] = v50;
    dispatch_after(v43, MEMORY[0x1E69E96A0], block);
  }

  else
  {

    [(VUIAnimatedLabel *)self setAnimating:0];
  }
}

void __51__VUIAnimatedLabel_stopAndResetScrollWithDuration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *(a1 + 48);
  v12 = 0.0;
  if (v4 > v11 / *(a1 + 64) - v4)
  {
    [*(a1 + 40) replicationPadding];
    v12 = (v11 + v13) / *(a1 + 64);
  }

  v14 = [*(a1 + 32) layer];
  [v14 setContentsRect:{v12, v6, v8, v10}];
}

uint64_t __51__VUIAnimatedLabel_stopAndResetScrollWithDuration___block_invoke_37(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) text];
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_INFO, "AL(%@): stop-and-reset timeout end", &v9, 0xCu);
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.2];
  v4 = *(*(a1 + 32) + 1024);
  v5 = *(a1 + 56) + 20.0;
  [v4 bounds];
  [v4 setBounds:{0.0, 0.0, v5}];
  v6 = *(*(a1 + 32) + 1024);
  v7 = (*(a1 + 56) + -20.0) * 0.5;
  [v6 position];
  [v6 setPosition:v7];
  return [MEMORY[0x1E6979518] commit];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = VUIAnimatedLabel;
  [(VUIAnimatedLabel *)&v4 didMoveToWindow];
  v3 = [(VUIAnimatedLabel *)self window];

  if (!v3)
  {
    [(VUIAnimatedLabel *)self stopAnimating];
  }
}

- (BOOL)_isRTL
{
  v2 = [(VUIAnimatedLabel *)self text];
  v3 = [v2 _isNaturallyRTL];

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
    [(VUIAnimatedLabel *)self textSizeForWidth:3.40282347e38];
    self->_marqueeNeeded = v8 > width + self->_underPosterOutset * -2.0;
    v9 = [(VUIAnimatedLabel *)self _isRTL];
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGContextClipToRect(CurrentContext, v17);
    if (self->_marqueeNeeded && [(VUIAnimatedLabel *)self isAnimating])
    {
      CGContextClear();
      if (self->_starting || self->_marqueeNeeded && [(VUIAnimatedLabel *)self isAnimating])
      {
        self->_starting = 0;
        [(VUIAnimatedLabel *)self setMarqueeContentImage:0];
        [(VUIAnimatedLabel *)self _startMarqueeIfNeeded];
      }
    }

    else
    {
      if (self->_marqueeing)
      {
        [(VUIAnimatedLabel *)self _stopMarqueeingIfNeeded];
      }

      [(VUIAnimatedLabel *)self _drawFullMarqueeTextInRect:?];
    }

    CGContextRestoreGState(CurrentContext);
    if (self->_marqueeNeeded)
    {
      if (drawTextInRect____once != -1)
      {
        [VUIAnimatedLabel drawTextInRect:];
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

void __35__VUIAnimatedLabel_drawTextInRect___block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v3 = +[VUIUtilities VideosUIBundle];
  v1 = [v0 imageNamed:@"UILabelMarqueeRightFade.png" inBundle:v3];
  v2 = drawTextInRect____maskImage;
  drawTextInRect____maskImage = v1;
}

- (id)_rasterizedTextWithMarquee:(BOOL)a3
{
  v3 = a3;
  [(VUIAnimatedLabel *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(VUIAnimatedLabel *)self textSizeForWidth:3.40282347e38];
  v14 = v13;
  v15 = 0.0;
  if (v3)
  {
    [(VUIAnimatedLabel *)self replicationPadding];
    v15 = v14 + v16;
  }

  v17 = [(VUIAnimatedLabel *)self backgroundColor];
  v18 = [(VUIAnimatedLabel *)self _isRTL];
  v19 = 0;
  if (v12 > 0.0)
  {
    v20 = v10 + v15;
    if (v20 > 0.0)
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

        [(VUIAnimatedLabel *)self _drawFullMarqueeTextInRect:underPosterOutset, 0.0, v14, v12];
        v23 = 0;
        v24 = underPosterOutset;
        v25 = v14;
        v26 = v12;
        if (v21)
        {
          MinX = CGRectGetMinX(*&v24);
          [(VUIAnimatedLabel *)self replicationPadding];
          v29 = MinX - v28 - v14;
        }

        else
        {
          MaxX = CGRectGetMaxX(*&v24);
          [(VUIAnimatedLabel *)self replicationPadding];
          v29 = MaxX + v32;
        }

        [(VUIAnimatedLabel *)self _drawFullMarqueeTextInRect:v29, 0.0, v14, v12];
      }

      else
      {
        animating = self->_animating;
        self->_animating = 0;
        [(VUIAnimatedLabel *)self drawTextInRect:v6, v8, v10, v12];
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
  v5 = [(VUIAnimatedLabel *)self currentMarqueeView];
  v6 = [(VUIAnimatedLabel *)self nextMarqueeView];
  v7 = [(VUIAnimatedLabel *)self currentAttributedStringIndex]+ 1;
  v8 = [(VUIAnimatedLabel *)self attributedStrings];
  v9 = v7 % [v8 count];

  self->_currentAttributedStringIndex = v9;
  v10 = [(VUIAnimatedLabel *)self attributedStrings];
  v11 = [v10 objectAtIndex:self->_currentAttributedStringIndex];
  v12 = [v11 copy];

  self->_animating = 0;
  v31.receiver = self;
  v31.super_class = VUIAnimatedLabel;
  [(VUILabel *)&v31 setAttributedText:v12];
  [(VUILabel *)self setLineBreakMode:2];
  self->_animating = 1;
  v13 = [(VUIAnimatedLabel *)self _rasterizedTextWithMarquee:0];
  [v6 setImage:v13];

  v14 = [v6 layer];
  [v14 setContentsRect:{0.0, 0.0, 1.0, 1.0}];

  [v6 sizeToFit];
  [(VUIAnimatedLabel *)self bounds];
  [v6 setFrame:?];
  [v6 setHidden:0];
  [v6 setAlpha:0.0];
  self->_crossfading = 1;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69DD250];
  [(VUIAnimatedLabel *)self crossfadeDuration];
  v17 = v16;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __49__VUIAnimatedLabel__prepareNextMarqueeWithDelay___block_invoke;
  v27[3] = &unk_1E872D990;
  v18 = v5;
  v28 = v18;
  v19 = v6;
  v29 = v19;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __49__VUIAnimatedLabel__prepareNextMarqueeWithDelay___block_invoke_2;
  v22[3] = &unk_1E8734880;
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

uint64_t __49__VUIAnimatedLabel__prepareNextMarqueeWithDelay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

void __49__VUIAnimatedLabel__prepareNextMarqueeWithDelay___block_invoke_2(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    WeakRetained[1016] = 0;
    v8 = WeakRetained;
    v5 = WeakRetained;
    objc_sync_enter(v5);
    objc_storeWeak(v5 + 137, a1[4]);
    objc_storeWeak(v5 + 138, a1[5]);
    objc_sync_exit(v5);

    v6 = [v5 nextMarqueeView];
    [v6 setAlpha:0.0];
    [v6 setHidden:1];
    v7 = [a1[6] currentMarqueeView];
    [v5 bringSubviewToFront:v7];

    if (a2)
    {
      [a1[6] _startMarqueeIfNeeded];
    }

    WeakRetained = v8;
  }
}

- (BOOL)_shouldCycle
{
  v2 = [(VUIAnimatedLabel *)self attributedStrings];
  v3 = [v2 count] > 1;

  return v3;
}

- (double)animationDuration
{
  result = 0.0;
  if (self->_marqueeNeeded)
  {
    [(VUIAnimatedLabel *)self textSizeForWidth:3.40282347e38];
    v5 = v4;
    [(VUIAnimatedLabel *)self replicationPadding];
    v7 = v5 + v6;
    [(VUIAnimatedLabel *)self scrollRate];
    v9 = v7 / v8;
    [(VUIAnimatedLabel *)self marqueeDelay];
    return v10 + v9;
  }

  return result;
}

- (void)_startMarqueeIfNeeded
{
  v100[5] = *MEMORY[0x1E69E9840];
  if (!self->_marqueeing && (self->_marqueeNeeded || [(VUIAnimatedLabel *)self _shouldCycle]))
  {
    v94 = [(VUIAnimatedLabel *)self _isRTL];
    self->_marqueeing = 1;
    [(VUIAnimatedLabel *)self bounds];
    v95 = v3;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [(VUIAnimatedLabel *)self textSizeForWidth:3.40282347e38];
    v11 = v10;
    v12 = v7;
    if (self->_marqueeNeeded)
    {
      [(VUIAnimatedLabel *)self replicationPadding];
      v12 = v11 + v7 + v13;
    }

    [(VUIAnimatedLabel *)self replicationPadding];
    v15 = v11 + v14;
    [(VUIAnimatedLabel *)self scrollRate];
    v17 = v15 / v16;
    [(VUIAnimatedLabel *)self marqueeDelay];
    v19 = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__VUIAnimatedLabel__startMarqueeIfNeeded__block_invoke;
    aBlock[3] = &unk_1E87348A8;
    aBlock[4] = self;
    *&aBlock[5] = v18;
    *&aBlock[6] = v17;
    v20 = _Block_copy(aBlock);
    v21 = [(VUIAnimatedLabel *)self currentMarqueeView];
    v22 = [(VUIAnimatedLabel *)self marqueeContentImage];

    if (!v22)
    {
      v23 = [(VUIAnimatedLabel *)self _rasterizedTextWithMarquee:self->_marqueeNeeded];
      [(VUIAnimatedLabel *)self setMarqueeContentImage:v23];
    }

    v24 = [(VUIAnimatedLabel *)self marqueeContentImage];
    [v21 setImage:v24];

    [v21 setFrame:{v95, v5, v7, v9}];
    v25 = [v21 layer];
    v26 = v7 / v12;
    [v25 setContentsRect:{0.0, 0.0, v7 / v12, 1.0}];

    [v21 setHidden:0];
    v27 = [v21 layer];
    [v27 removeAllAnimations];

    [(CALayer *)self->_maskLayer removeAllAnimations];
    if (self->_marqueeNeeded)
    {
      v93 = v19 + v17;
      v88 = v12;
      v90 = v11;
      if (_startMarqueeIfNeeded___once != -1)
      {
        [VUIAnimatedLabel _startMarqueeIfNeeded];
      }

      [_startMarqueeIfNeeded___maskImage size];
      v29 = 1.0 / v28;
      v30 = [MEMORY[0x1E6979398] layer];
      maskLayer = self->_maskLayer;
      self->_maskLayer = v30;

      -[CALayer setContents:](self->_maskLayer, "setContents:", [_startMarqueeIfNeeded___maskImage CGImage]);
      v32 = 0.0;
      [(CALayer *)self->_maskLayer setContentsCenter:0.5 - v29 * 0.5, 0.0, v29, 1.0];
      [_startMarqueeIfNeeded___maskImage scale];
      [(CALayer *)self->_maskLayer setContentsScale:?];
      [(CALayer *)self->_maskLayer setFrame:v95, v5, v7, v9];
      v33 = self->_maskLayer;
      v34 = [(VUIAnimatedLabel *)self layer];
      [v34 setMask:v33];

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setCompletionBlock:v20];
      v35 = [MEMORY[0x1E6979318] animationWithKeyPath:@"contentsRect.origin.x"];
      [v35 setDuration:v93];
      v36 = *MEMORY[0x1E69797E0];
      [v35 setFillMode:*MEMORY[0x1E69797E0]];
      [v35 setBeginTime:v19 + CACurrentMediaTime()];
      [v35 setDuration:v17];
      v37 = 1.0 - v26;
      if (!v94)
      {
        v37 = 0.0;
      }

      v38 = [MEMORY[0x1E696AD98] numberWithDouble:v37];
      [v35 setFromValue:v38];

      v39 = MEMORY[0x1E696AD98];
      if (!v94)
      {
        [(VUIAnimatedLabel *)self replicationPadding];
        v32 = (v90 + v40) / v88;
      }

      v41 = [v39 numberWithDouble:v32];
      [v35 setToValue:v41];

      v42 = [v21 layer];
      [v42 addAnimation:v35 forKey:@"VUIAnimatedLabelMarqueeLayerContentOriginXAnimationKey"];

      if (self->_underPosterOutset == 0.0)
      {
        v43 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
        v100[0] = v43;
        v44 = v19 / v93;
        *&v44 = v19 / v93;
        v45 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
        v100[1] = v45;
        v46 = MEMORY[0x1E696AD98];
        [(VUIAnimatedLabel *)self scrollRate];
        v48 = (v19 + 20.0 / v47) / v93;
        *&v48 = v48;
        [v46 numberWithFloat:v48];
        v49 = v92 = v36;
        v100[2] = v49;
        v50 = MEMORY[0x1E696AD98];
        [(VUIAnimatedLabel *)self scrollRate];
        v52 = -20.0 / v51 / v93 + 1.0;
        *&v52 = v52;
        [v50 numberWithFloat:v52];
        v53 = v91 = v20;
        v100[3] = v53;
        LODWORD(v54) = 1.0;
        v55 = [MEMORY[0x1E696AD98] numberWithFloat:v54];
        v100[4] = v55;
        v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:5];

        v56 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size.width"];
        [v56 setDuration:v93];
        [v56 setFillMode:v92];
        v57 = v56;
        [v56 setRemovedOnCompletion:0];
        v58 = v7 + 20.0;
        v59 = v7 + 20.0;
        *&v58 = v59;
        v60 = [MEMORY[0x1E696AD98] numberWithFloat:v58];
        v99[0] = v60;
        *&v61 = v59;
        v62 = [MEMORY[0x1E696AD98] numberWithFloat:v61];
        v99[1] = v62;
        v63 = v7;
        *&v64 = v63;
        v65 = [MEMORY[0x1E696AD98] numberWithFloat:v64];
        v99[2] = v65;
        *&v66 = v7;
        v67 = [MEMORY[0x1E696AD98] numberWithFloat:v66];
        v99[3] = v67;
        *&v68 = v59;
        [MEMORY[0x1E696AD98] numberWithFloat:v68];
        v69 = v89 = v35;
        v99[4] = v69;
        v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:5];
        [v57 setValues:v70];

        v87 = v57;
        [v57 setKeyTimes:v96];
        [(CALayer *)self->_maskLayer addAnimation:v57 forKey:@"VUIAnimatedLabelMarqueeMaskLayerWidthAnimationKey"];
        v71 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.x"];
        [v71 setDuration:v93];
        [v71 setFillMode:v92];
        [v71 setRemovedOnCompletion:0];
        if (v94)
        {
          v72 = 20.0;
        }

        else
        {
          v72 = -20.0;
        }

        v73 = (v72 + v7) * 0.5;
        v74 = v73;
        *&v73 = v74;
        v75 = [MEMORY[0x1E696AD98] numberWithFloat:v73];
        v98[0] = v75;
        *&v76 = v74;
        v77 = [MEMORY[0x1E696AD98] numberWithFloat:v76];
        v98[1] = v77;
        v78 = v7 * 0.5;
        v79 = v7 * 0.5;
        *&v78 = v79;
        v80 = [MEMORY[0x1E696AD98] numberWithFloat:v78];
        v98[2] = v80;
        *&v81 = v79;
        v82 = [MEMORY[0x1E696AD98] numberWithFloat:v81];
        v98[3] = v82;
        *&v83 = v74;
        v84 = [MEMORY[0x1E696AD98] numberWithFloat:v83];
        v98[4] = v84;
        v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:5];
        [v71 setValues:v85];

        v35 = v89;
        v20 = v91;
        [v71 setKeyTimes:v96];
        [(CALayer *)self->_maskLayer addAnimation:v71 forKey:@"VUIAnimatedLabelMarqueeMaskLayerPositionXAnimationKey"];
      }

      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      v86 = [(VUIAnimatedLabel *)self layer];
      [v86 setMask:0];

      v20[2](v20);
    }
  }
}

uint64_t __41__VUIAnimatedLabel__startMarqueeIfNeeded__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1018) = 0;
  result = [*(a1 + 32) isAnimating];
  if (result)
  {
    v3 = [*(a1 + 32) _shouldCycle];
    v4 = *(a1 + 32);
    if (v3)
    {
      v5 = 48;
      if (v4[1017])
      {
        v5 = 40;
      }

      v6 = *(a1 + v5);

      return [v4 _prepareNextMarqueeWithDelay:v6];
    }

    else
    {
      result = [v4 isPaused];
      if ((result & 1) == 0)
      {
        v7 = *(a1 + 32);

        return [v7 _startMarqueeIfNeeded];
      }
    }
  }

  return result;
}

void __41__VUIAnimatedLabel__startMarqueeIfNeeded__block_invoke_2()
{
  v0 = MEMORY[0x1E69DCAB8];
  v3 = +[VUIUtilities VideosUIBundle];
  v1 = [v0 imageNamed:@"UILabelMarqueeMask.png" inBundle:v3];
  v2 = _startMarqueeIfNeeded___maskImage;
  _startMarqueeIfNeeded___maskImage = v1;
}

- (void)_stopMarqueeingIfNeeded
{
  if (self->_marqueeing)
  {
    v4 = [(VUIAnimatedLabel *)self currentMarqueeView];
    [v4 setHidden:1];

    v5 = [(VUIAnimatedLabel *)self nextMarqueeView];
    [v5 setHidden:1];

    [(VUIAnimatedLabel *)self _clearAnimations];

    [(VUIAnimatedLabel *)self setNeedsDisplay];
  }
}

- (_VUIAnimatedImageView)currentMarqueeView
{
  WeakRetained = objc_loadWeakRetained(&self->_currentMarqueeView);

  return WeakRetained;
}

- (_VUIAnimatedImageView)nextMarqueeView
{
  WeakRetained = objc_loadWeakRetained(&self->_nextMarqueeView);

  return WeakRetained;
}

@end