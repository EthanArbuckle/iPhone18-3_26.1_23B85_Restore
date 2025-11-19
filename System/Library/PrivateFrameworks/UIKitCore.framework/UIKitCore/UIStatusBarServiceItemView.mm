@interface UIStatusBarServiceItemView
- (BOOL)updateForContentType:(int)a3 serviceString:(id)a4 serviceCrossfadeString:(id)a5 maxWidth:(double)a6 actions:(int)a7;
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (double)addContentOverlap:(double)a3;
- (double)extraRightPadding;
- (double)resetContentOverlap;
- (double)standardPadding;
- (double)updateContentsAndWidth;
- (id)_contentsImageFromString:(id)a3 withWidth:(double)a4 letterSpacing:(double)a5;
- (id)_serviceContentsImage;
- (id)accessibilityHUDRepresentation;
- (id)contentsImage;
- (int64_t)legibilityStyle;
- (void)_crossfadeStepAnimation;
- (void)_loopAnimationDidStopInDirection:(BOOL)a3;
- (void)performPendedActions;
- (void)setVisible:(BOOL)a3 frame:(CGRect)a4 duration:(double)a5;
@end

@implementation UIStatusBarServiceItemView

- (double)standardPadding
{
  v4.receiver = self;
  v4.super_class = UIStatusBarServiceItemView;
  [(UIStatusBarItemView *)&v4 standardPadding];
  return v2 + -1.0;
}

- (double)resetContentOverlap
{
  if (![(UIStatusBarServiceItemView *)self updateForContentType:self->_contentType serviceString:self->_serviceString serviceCrossfadeString:self->_crossfadeString maxWidth:0 actions:1.79769313e308])
  {
    return 0.0;
  }

  [(UIStatusBarServiceItemView *)self updateContentsAndWidth];
  return result;
}

- (double)addContentOverlap:(double)a3
{
  [(UIView *)self frame];
  v6 = v5 - a3;
  if (v5 - a3 < 20.0)
  {
    v6 = 20.0;
  }

  if (![(UIStatusBarServiceItemView *)self updateForContentType:self->_contentType serviceString:self->_serviceString serviceCrossfadeString:self->_crossfadeString maxWidth:0 actions:v6])
  {
    return 0.0;
  }

  [(UIStatusBarServiceItemView *)self updateContentsAndWidth];
  return result;
}

- (BOOL)updateForContentType:(int)a3 serviceString:(id)a4 serviceCrossfadeString:(id)a5 maxWidth:(double)a6 actions:(int)a7
{
  v7 = a7;
  v12 = a4;
  v13 = a5;
  contentType = self->_contentType;
  v15 = contentType != a3;
  if (contentType != a3)
  {
    self->_contentType = a3;
  }

  if (![v12 isEqualToString:self->_serviceString])
  {
    v19 = [v12 copy];
    serviceString = self->_serviceString;
    self->_serviceString = v19;

    goto LABEL_12;
  }

  if (self->_maxWidth != a6)
  {
LABEL_12:
    [(UIStatusBarItemView *)self clearCachedTextImage];
    self->_maxWidth = a6;
    self->_loopingNecessaryForString = 0;
    self->_letterSpacing = 0.0;
    v21 = self->_contentType;
    if (v21 != 1 && v21 != 6)
    {
      v23 = [(UIStatusBarServiceItemView *)self _contentsImageFromString:self->_serviceString withWidth:1.79769313e308 letterSpacing:0.0];
      v24 = [v23 image];

      if (!v24 || ([v24 size], v25 > self->_maxWidth))
      {
        v26 = [(UIStatusBarItemView *)self textFont];
        [(NSString *)self->_serviceString _legacy_sizeWithFont:v26];
        if (v27 <= self->_maxWidth)
        {
LABEL_21:
          letterSpacing = self->_letterSpacing;
        }

        else
        {
          while (1)
          {
            letterSpacing = self->_letterSpacing;
            if (letterSpacing < -1.0)
            {
              break;
            }

            self->_letterSpacing = letterSpacing + -0.25;
            [(NSString *)self->_serviceString sizeWithFont:v26 forWidth:4 lineBreakMode:1.79769313e308 letterSpacing:?];
            if (v29 <= self->_maxWidth)
            {
              goto LABEL_21;
            }
          }
        }

        if (letterSpacing < -1.0)
        {
          self->_letterSpacing = 0.0;
          self->_loopingNecessaryForString = 1;
          if (self->_loopNowIfNecessary)
          {
            [(UIView *)self setClipsToBounds:1];
          }
        }
      }
    }

    v16 = (v7 & 8) == 0;
    v15 = 1;
    goto LABEL_28;
  }

  v16 = (v7 & 8) == 0;
  if (contentType == a3 && (v7 & 8) == 0)
  {
    v18 = 0;
    goto LABEL_34;
  }

LABEL_28:
  if (self->_crossfadeStep)
  {
    v18 = 1;
  }

  else
  {
    v18 = v15;
  }

  self->_crossfadeStep = 0;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__crossfadeStepAnimation object:0];
  if (!v16)
  {
    v30 = [v13 copy];
    crossfadeString = self->_crossfadeString;
    self->_crossfadeString = v30;

    if ([(NSString *)self->_crossfadeString length])
    {
      self->_crossfadeStep = 1;
    }
  }

LABEL_34:
  if (self->_crossfadeStep)
  {
    self->_loopNowIfNecessary = 0;
  }

  else if (v7)
  {
    self->_loopNowIfNecessary = 1;
    if (self->_loopingNecessaryForString)
    {
      v18 = 1;
      [(UIView *)self setClipsToBounds:1];
    }
  }

  return v18;
}

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v4 = *&a4;
  v6 = [a3 rawData];
  v7 = *(v6 + 2072);
  v8 = _UIKitPreferencesOnce();
  v9 = [v8 objectForKey:@"UIStatusBarShowBuildVersion"];
  if (([v9 BOOLValue] & 1) == 0)
  {

    goto LABEL_5;
  }

  v10 = [(UIStatusBarItemView *)self foregroundStyle];
  v11 = [v10 supportsShowingBuildVersion];

  if (!v11)
  {
LABEL_5:
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v6 + 448 encoding:4];
    goto LABEL_6;
  }

  v12 = +[UIDevice currentDevice];
  v13 = [v12 buildVersion];

LABEL_6:
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v6 + 648 encoding:4];
  v15 = [(UIStatusBarServiceItemView *)self updateForContentType:v7 serviceString:v13 serviceCrossfadeString:v14 maxWidth:v4 actions:1.79769313e308];

  return v15;
}

- (int64_t)legibilityStyle
{
  if ([(UIView *)self clipsToBounds])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UIStatusBarServiceItemView;
  return [(UIStatusBarItemView *)&v4 legibilityStyle];
}

- (double)updateContentsAndWidth
{
  v3 = [(UIStatusBarServiceItemView *)self _crossfaded];
  if ([(UIStatusBarServiceItemView *)self _loopingNecessary])
  {
    v4 = self->_loopNowIfNecessary || self->_loopingNow;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(UIStatusBarServiceItemView *)self contentsImage];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  maxWidth = 0.0;
  if (v5)
  {
    v10 = [v5 image];

    if (v10)
    {
      v11 = [v6 image];
      [v11 size];
      v8 = v12;

      if (v3 | ![(UIStatusBarServiceItemView *)self _loopingNecessary])
      {
        maxWidth = v8;
      }

      else
      {
        maxWidth = self->_maxWidth;
      }
    }
  }

  [(UIView *)self frame];
  if (v13 != maxWidth)
  {
    v7 = maxWidth - v13;
    [(UIView *)self setFrame:?];
  }

  v14 = 9;
  if (v3)
  {
    v14 = 10;
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR___UIStatusBarServiceItemView__contentType[v14]) = maxWidth;
  [(UIStatusBarItemView *)self setLayerContentsImage:v6];
  v15 = [(UIView *)self layer];
  [v15 setContentsGravity:*MEMORY[0x1E6979DD8]];

  if (!self->_loopingNow)
  {
    if (!v3 && v4 && v8 > 0.0)
    {
      v16 = [(UIView *)self layer];
      v17 = v16;
      v18 = 1.0;
      v19 = maxWidth / v8;
    }

    else
    {
      v16 = [(UIView *)self layer];
      v17 = v16;
      v19 = 1.0;
      v18 = 1.0;
    }

    [v16 setContentsRect:{0.0, 0.0, v19, v18}];
  }

  v20 = [(UIView *)self layer];
  LODWORD(v21) = 1.0;
  [v20 setOpacity:v21];

  return v7;
}

- (id)_contentsImageFromString:(id)a3 withWidth:(double)a4 letterSpacing:(double)a5
{
  v8 = a3;
  if ([v8 length])
  {
    if ([(NSString *)self->_serviceString isEqual:v8])
    {
      v9 = [(UIStatusBarItemView *)self cachedImageWithText:v8 truncatedWithEllipsesAtMaxWidth:a4 letterSpacing:a5];
    }

    else
    {
      v10 = [(UIStatusBarItemView *)self foregroundStyle];
      v11 = [(UIStatusBarItemView *)self textAlignment];
      v12 = [(UIStatusBarItemView *)self textStyle];
      v13 = [(UIStatusBarServiceItemView *)self legibilityStyle];
      [(UIStatusBarItemView *)self legibilityStrength];
      v9 = [v10 imageWithText:v8 ofItemType:6 forWidth:4 lineBreakMode:v11 letterSpacing:v12 textAlignment:v13 style:a4 withLegibilityStyle:a5 legibilityStrength:v14];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_serviceContentsImage
{
  if (!self->_loopingNecessaryForString || self->_loopNowIfNecessary || self->_loopingNow)
  {
    maxWidth = 1.79769313e308;
  }

  else
  {
    maxWidth = self->_maxWidth;
  }

  return [(UIStatusBarServiceItemView *)self _contentsImageFromString:self->_serviceString withWidth:maxWidth letterSpacing:self->_letterSpacing];
}

- (id)contentsImage
{
  if ([(UIStatusBarServiceItemView *)self _crossfaded])
  {
    [(UIStatusBarServiceItemView *)self _crossfadeContentsImage];
  }

  else
  {
    [(UIStatusBarServiceItemView *)self _serviceContentsImage];
  }
  v3 = ;

  return v3;
}

- (void)setVisible:(BOOL)a3 frame:(CGRect)a4 duration:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  if (a5 > 0.0 && a3)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__UIStatusBarServiceItemView_setVisible_frame_duration___block_invoke;
    v14[3] = &unk_1E70F3590;
    v14[4] = self;
    [UIView performWithoutAnimation:v14];
  }

  v13.receiver = self;
  v13.super_class = UIStatusBarServiceItemView;
  [(UIStatusBarItemView *)&v13 setVisible:v10 frame:x duration:y, width, height, a5];
}

uint64_t __56__UIStatusBarServiceItemView_setVisible_frame_duration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  v2 = *(a1 + 32);

  return [v2 setFrame:?];
}

- (double)extraRightPadding
{
  v8.receiver = self;
  v8.super_class = UIStatusBarServiceItemView;
  [(UIStatusBarItemView *)&v8 extraRightPadding];
  v4 = v3;
  if (self->_crossfadeStep - 2 <= 4)
  {
    if (self->_serviceWidth >= self->_crossfadeWidth)
    {
      serviceWidth = self->_serviceWidth;
    }

    else
    {
      serviceWidth = self->_crossfadeWidth;
    }

    [(UIView *)self frame];
    return v4 + serviceWidth - v6;
  }

  return v4;
}

- (void)performPendedActions
{
  if ([(UIStatusBarServiceItemView *)self _loopingNecessary])
  {
    loopNowIfNecessary = self->_loopNowIfNecessary;
    self->_loopNowIfNecessary = 0;
    if (loopNowIfNecessary)
    {
      self->_loopingNow = 1;
      [(UIStatusBarItemView *)self beginDisablingRasterization];
      v4[4] = self;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __50__UIStatusBarServiceItemView_performPendedActions__block_invoke;
      v5[3] = &unk_1E70F3590;
      v5[4] = self;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __50__UIStatusBarServiceItemView_performPendedActions__block_invoke_2;
      v4[3] = &unk_1E70F5AC0;
      [UIView animateWithDuration:0 delay:v5 options:v4 animations:1.2 completion:0.3];
    }
  }

  else
  {
    self->_loopNowIfNecessary = 0;
  }

  if (self->_crossfadeStep == 1)
  {
    [(UIStatusBarServiceItemView *)self performSelector:sel__crossfadeStepAnimation withObject:0 afterDelay:2.0];
  }
}

void __50__UIStatusBarServiceItemView_performPendedActions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = [*(a1 + 32) layer];
  [v9 setContentsRect:{1.0 - v6, v4, v6, v8}];
}

- (void)_loopAnimationDidStopInDirection:(BOOL)a3
{
  if (a3)
  {
    v11[4] = self;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__UIStatusBarServiceItemView__loopAnimationDidStopInDirection___block_invoke;
    v12[3] = &unk_1E70F3590;
    v12[4] = self;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__UIStatusBarServiceItemView__loopAnimationDidStopInDirection___block_invoke_2;
    v11[3] = &unk_1E70F5AC0;
    [UIView animateWithDuration:0 delay:v12 options:v11 animations:1.2 completion:0.3];
  }

  else
  {
    self->_loopingNow = 0;
    [(UIView *)self setClipsToBounds:?];
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v5[4] = self;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__UIStatusBarServiceItemView__loopAnimationDidStopInDirection___block_invoke_3;
    v6[3] = &unk_1E70FCDA0;
    v6[4] = self;
    v6[5] = &v7;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__UIStatusBarServiceItemView__loopAnimationDidStopInDirection___block_invoke_4;
    v5[3] = &unk_1E70F5AC0;
    [UIView animateWithDuration:0 delay:v6 options:v5 animations:0.25 completion:0.3];
    if (v8[3] != 0.0)
    {
      v4 = [(UIStatusBarItemView *)self layoutManager];
      [v4 itemView:self sizeChangedBy:v8[3]];
    }

    _Block_object_dispose(&v7, 8);
  }
}

void __63__UIStatusBarServiceItemView__loopAnimationDidStopInDirection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = [*(a1 + 32) layer];
  [v9 setContentsRect:{0.0, v4, v6, v8}];
}

uint64_t __63__UIStatusBarServiceItemView__loopAnimationDidStopInDirection___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) updateContentsAndWidth];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)_crossfadeStepAnimation
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  crossfadeStep = self->_crossfadeStep;
  if (crossfadeStep - 1 > 5)
  {
    if (crossfadeStep)
    {
      self->_crossfadeStep = 0;
    }
  }

  else
  {
    self->_crossfadeStep = crossfadeStep + 1;
    v5[4] = self;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__UIStatusBarServiceItemView__crossfadeStepAnimation__block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__UIStatusBarServiceItemView__crossfadeStepAnimation__block_invoke_2;
    v5[3] = &unk_1E70F5AC0;
    [UIView animateWithDuration:v6 animations:v5 completion:0.25];
    [(UIStatusBarServiceItemView *)self performSelector:a2 withObject:0 afterDelay:2.0];
  }
}

void __53__UIStatusBarServiceItemView__crossfadeStepAnimation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setOpacity:0.0];
}

uint64_t __53__UIStatusBarServiceItemView__crossfadeStepAnimation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutManager];
  v3 = *(a1 + 32);
  [v3 updateContentsAndWidth];
  [v2 itemView:v3 sizeChangedBy:?];

  v4 = [*(a1 + 32) layer];
  [v4 setOpacity:0.0];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__UIStatusBarServiceItemView__crossfadeStepAnimation__block_invoke_3;
  v6[3] = &unk_1E70F3590;
  v6[4] = *(a1 + 32);
  return [UIView animateWithDuration:v6 animations:0.25];
}

void __53__UIStatusBarServiceItemView__crossfadeStepAnimation__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  LODWORD(v1) = 1.0;
  [v2 setOpacity:v1];
}

- (id)accessibilityHUDRepresentation
{
  v2 = [[UIAccessibilityHUDItem alloc] initWithTitle:self->_serviceString image:0 imageInsets:0.0, 0.0, 0.0, 0.0];

  return v2;
}

@end