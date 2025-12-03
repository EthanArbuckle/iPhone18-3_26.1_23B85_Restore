@interface SBIconListPageControl
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isEffectivelyVisible;
- (SBIconListPageControl)initWithFrame:(CGRect)frame;
- (SBIconListPageControlDelegate)delegate;
- (double)defaultHeight;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)cancelTapGesture;
- (void)legibilitySettingsDidChange;
- (void)pageControlCurrentPageDidChange:(id)change;
- (void)setActsAsButton:(BOOL)button;
- (void)setButtonHighlighted:(BOOL)highlighted;
- (void)setLegibilitySettings:(id)settings;
- (void)tapGestureDidUpdate:(id)update;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation SBIconListPageControl

- (SBIconListPageControl)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SBIconListPageControl;
  v3 = [(UIPageControl *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setActsAsButton:(BOOL)button
{
  if (self->_actsAsButton != button)
  {
    self->_actsAsButton = button;
    [(UIPageControl *)self setBackgroundStyle:button];
  }
}

- (void)setButtonHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v18[2] = *MEMORY[0x1E69E9840];
  if ([(SBIconListPageControl *)self actsAsButton])
  {
    delegate = [(SBIconListPageControl *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate highlightingViewForPageControl:self], (selfCopy = objc_claimAutoreleasedReturnValue()) == 0))
    {
      selfCopy = self;
    }

    layer = [(SBIconListPageControl *)selfCopy layer];
    v8 = layer;
    if (highlightedCopy)
    {
      filters = [layer filters];

      if (!filters)
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
      traitCollection = [(SBIconListPageControl *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle == 2)
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
      v17 = layer;
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
  tapGestureRecognizer = [(SBIconListPageControl *)self tapGestureRecognizer];
  [tapGestureRecognizer setEnabled:0];
  [tapGestureRecognizer setEnabled:1];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.highlightBrightness.inputAmount"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"filters.highlightSaturation.inputAmount"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBIconListPageControl;
    v5 = [(SBIconListPageControl *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)tapGestureDidUpdate:(id)update
{
  if ([update state] == 3)
  {
    delegate = [(SBIconListPageControl *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate pageControlDidReceiveButtonTap:self];
    }
  }
}

- (void)pageControlCurrentPageDidChange:(id)change
{
  changeCopy = change;
  delegate = [(SBIconListPageControl *)self delegate];
  interactionState = [(UIPageControl *)self interactionState];
  if (interactionState == 2 && ![(SBIconListPageControl *)self isScrubbing])
  {
    [(SBIconListPageControl *)self setScrubbing:1];
    if (objc_opt_respondsToSelector())
    {
      [delegate pageControlDidBeginScrubbing:self];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate pageControl:changeCopy didMoveCurrentPageToPage:objc_msgSend(changeCopy withScrubbing:{"currentPage"), interactionState == 2}];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v25 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  touchIgnoreRects = [(SBIconListPageControl *)self touchIgnoreRects];
  v9 = [touchIgnoreRects countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(touchIgnoreRects);
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

      v9 = [touchIgnoreRects countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  type = [eventCopy type];
  v17 = 0;
  if ((v9 & 1) == 0 && type != 9)
  {
    v19.receiver = self;
    v19.super_class = SBIconListPageControl;
    v17 = [(SBIconListPageControl *)&v19 hitTest:eventCopy withEvent:x, y];
  }

  return v17;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = SBIconListPageControl;
  [(SBIconListPageControl *)&v5 touchesBegan:began withEvent:event];
  [(SBIconListPageControl *)self setButtonHighlighted:1];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = SBIconListPageControl;
  [(SBIconListPageControl *)&v5 touchesCancelled:cancelled withEvent:event];
  [(SBIconListPageControl *)self setButtonHighlighted:0];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = SBIconListPageControl;
  [(SBIconListPageControl *)&v6 touchesEnded:ended withEvent:event];
  if ([(SBIconListPageControl *)self isScrubbing])
  {
    [(SBIconListPageControl *)self setScrubbing:0];
    delegate = [(SBIconListPageControl *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate pageControlDidEndScrubbing:self];
    }
  }

  [(SBIconListPageControl *)self setButtonHighlighted:0];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBIconListPageControl *)self legibilitySettingsDidChange];
  }
}

- (void)legibilitySettingsDidChange
{
  legibilitySettings = [(SBIconListPageControl *)self legibilitySettings];
  primaryColor = [legibilitySettings primaryColor];
  [(UIPageControl *)self setCurrentPageIndicatorTintColor:primaryColor];

  secondaryColor = [legibilitySettings secondaryColor];
  [(UIPageControl *)self setPageIndicatorTintColor:secondaryColor];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  tapGestureRecognizer = [(SBIconListPageControl *)self tapGestureRecognizer];

  if (tapGestureRecognizer == beginCopy)
  {
    actsAsButton = [(SBIconListPageControl *)self actsAsButton];
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
    actsAsButton = [(UIPageControl *)&v10 gestureRecognizerShouldBegin:beginCopy];
  }

  v8 = actsAsButton;
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