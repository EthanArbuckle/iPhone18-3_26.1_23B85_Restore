@interface SBIconListPageControl
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isEffectivelyVisible;
- (SBIconListPageControl)initWithFrame:(CGRect)a3;
- (SBIconListPageControlDelegate)delegate;
- (double)defaultHeight;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)cancelTapGesture;
- (void)legibilitySettingsDidChange;
- (void)pageControlCurrentPageDidChange:(id)a3;
- (void)setActsAsButton:(BOOL)a3;
- (void)setButtonHighlighted:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)tapGestureDidUpdate:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation SBIconListPageControl

- (SBIconListPageControl)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SBIconListPageControl;
  v3 = [(UIPageControl *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel_tapGestureDidUpdate_];
    tapGestureRecognizer = v3->_tapGestureRecognizer;
    v3->_tapGestureRecognizer = v4;

    [(UITapGestureRecognizer *)v3->_tapGestureRecognizer setDelegate:v3];
    [(SBIconListPageControl *)v3 addGestureRecognizer:v3->_tapGestureRecognizer];
    [(UIPageControl *)v3 _setAllowsDiscreteInteraction:0];
    [(SBIconListPageControl *)v3 addTarget:v3 action:sel_pageControlCurrentPageDidChange_ forControlEvents:4096];
  }

  return v3;
}

- (double)defaultHeight
{
  result = self->_cachedDefaultHeight;
  if (result <= 0.0)
  {
    [(UIPageControl *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    result = v4;
    self->_cachedDefaultHeight = v4;
  }

  return result;
}

- (void)setActsAsButton:(BOOL)a3
{
  if (self->_actsAsButton != a3)
  {
    self->_actsAsButton = a3;
    [(UIPageControl *)self setBackgroundStyle:a3];
  }
}

- (void)setButtonHighlighted:(BOOL)a3
{
  v3 = a3;
  v18[2] = *MEMORY[0x1E69E9840];
  if ([(SBIconListPageControl *)self actsAsButton])
  {
    v5 = [(SBIconListPageControl *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 highlightingViewForPageControl:self], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = self;
    }

    v7 = [(SBIconListPageControl *)v6 layer];
    v8 = v7;
    if (v3)
    {
      v9 = [v7 filters];

      if (!v9)
      {
        v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979848]];
        [v10 setName:@"highlightBrightness"];
        [v10 setValue:&unk_1F3DB2A68 forKey:@"inputAmount"];
        v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
        [v11 setName:@"highlightSaturation"];
        [v11 setValue:&unk_1F3DB2A78 forKey:@"inputAmount"];
        v18[0] = v10;
        v18[1] = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
        [v8 setFilters:v12];
      }

      [v8 setValue:&unk_1F3DB2A88 forKeyPath:@"filters.highlightBrightness.inputAmount"];
      v13 = [(SBIconListPageControl *)self traitCollection];
      v14 = [v13 userInterfaceStyle];

      if (v14 == 2)
      {
        [v8 setValue:&unk_1F3DB2A98 forKeyPath:@"filters.highlightSaturation.inputAmount"];
      }
    }

    else
    {
      v15 = MEMORY[0x1E69DD250];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __46__SBIconListPageControl_setButtonHighlighted___block_invoke;
      v16[3] = &unk_1E8088C90;
      v17 = v7;
      [v15 animateWithDuration:2 delay:v16 options:0 animations:0.3 completion:0.0];
    }
  }
}

uint64_t __46__SBIconListPageControl_setButtonHighlighted___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setValue:&unk_1F3DB2A68 forKeyPath:@"filters.highlightBrightness.inputAmount"];
  v2 = *(a1 + 32);

  return [v2 setValue:&unk_1F3DB2A78 forKeyPath:@"filters.highlightSaturation.inputAmount"];
}

- (void)cancelTapGesture
{
  v2 = [(SBIconListPageControl *)self tapGestureRecognizer];
  [v2 setEnabled:0];
  [v2 setEnabled:1];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.highlightBrightness.inputAmount"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"filters.highlightSaturation.inputAmount"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBIconListPageControl;
    v5 = [(SBIconListPageControl *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)tapGestureDidUpdate:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(SBIconListPageControl *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 pageControlDidReceiveButtonTap:self];
    }
  }
}

- (void)pageControlCurrentPageDidChange:(id)a3
{
  v6 = a3;
  v4 = [(SBIconListPageControl *)self delegate];
  v5 = [(UIPageControl *)self interactionState];
  if (v5 == 2 && ![(SBIconListPageControl *)self isScrubbing])
  {
    [(SBIconListPageControl *)self setScrubbing:1];
    if (objc_opt_respondsToSelector())
    {
      [v4 pageControlDidBeginScrubbing:self];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 pageControl:v6 didMoveCurrentPageToPage:objc_msgSend(v6 withScrubbing:{"currentPage"), v5 == 2}];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(SBIconListPageControl *)self touchIgnoreRects];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v20 + 1) + 8 * i) CGRectValue];
        v12 = v28.origin.x;
        v13 = v28.origin.y;
        width = v28.size.width;
        height = v28.size.height;
        if (!CGRectIsInfinite(v28))
        {
          v29.origin.x = v12;
          v29.origin.y = v13;
          v29.size.width = width;
          v29.size.height = height;
          if (!CGRectIsEmpty(v29))
          {
            v30.origin.x = v12;
            v30.origin.y = v13;
            v30.size.width = width;
            v30.size.height = height;
            v27.x = x;
            v27.y = y;
            if (CGRectContainsPoint(v30, v27))
            {
              LOBYTE(v9) = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v16 = [v7 type];
  v17 = 0;
  if ((v9 & 1) == 0 && v16 != 9)
  {
    v19.receiver = self;
    v19.super_class = SBIconListPageControl;
    v17 = [(SBIconListPageControl *)&v19 hitTest:v7 withEvent:x, y];
  }

  return v17;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBIconListPageControl;
  [(SBIconListPageControl *)&v5 touchesBegan:a3 withEvent:a4];
  [(SBIconListPageControl *)self setButtonHighlighted:1];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBIconListPageControl;
  [(SBIconListPageControl *)&v5 touchesCancelled:a3 withEvent:a4];
  [(SBIconListPageControl *)self setButtonHighlighted:0];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = SBIconListPageControl;
  [(SBIconListPageControl *)&v6 touchesEnded:a3 withEvent:a4];
  if ([(SBIconListPageControl *)self isScrubbing])
  {
    [(SBIconListPageControl *)self setScrubbing:0];
    v5 = [(SBIconListPageControl *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 pageControlDidEndScrubbing:self];
    }
  }

  [(SBIconListPageControl *)self setButtonHighlighted:0];
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBIconListPageControl *)self legibilitySettingsDidChange];
  }
}

- (void)legibilitySettingsDidChange
{
  v5 = [(SBIconListPageControl *)self legibilitySettings];
  v3 = [v5 primaryColor];
  [(UIPageControl *)self setCurrentPageIndicatorTintColor:v3];

  v4 = [v5 secondaryColor];
  [(UIPageControl *)self setPageIndicatorTintColor:v4];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v5 = a3;
  v6 = [(SBIconListPageControl *)self tapGestureRecognizer];

  if (v6 == v5)
  {
    v7 = [(SBIconListPageControl *)self actsAsButton];
  }

  else
  {
    if (![+[SBIconListPageControl superclass](SBIconListPageControl "superclass")])
    {
      v8 = 1;
      goto LABEL_7;
    }

    v10.receiver = self;
    v10.super_class = SBIconListPageControl;
    v7 = [(UIPageControl *)&v10 gestureRecognizerShouldBegin:v5];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

- (BOOL)isEffectivelyVisible
{
  if (([(SBIconListPageControl *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  [(SBIconListPageControl *)self alpha];
  return BSFloatIsZero() ^ 1;
}

- (SBIconListPageControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end