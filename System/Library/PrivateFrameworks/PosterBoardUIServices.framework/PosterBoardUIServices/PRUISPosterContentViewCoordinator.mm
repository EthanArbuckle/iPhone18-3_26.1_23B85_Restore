@interface PRUISPosterContentViewCoordinator
- (BSUIVibrancyEffectView)obscurableContentVibrancyView;
- (CGRect)primaryContentTightFrame;
- (PRUISPosterContentViewCoordinator)initWithBounds:(CGRect)bounds;
- (UIView)obscurableContentView;
- (UIView)obscurableOverlayView;
- (UIView)overlayContentView;
- (UIView)vibrantObscurableContentView;
- (id)updateContentViewsWithContentStyle:(id)style initialAppearance:(id)appearance;
- (void)setPrimaryContentTightFrame:(CGRect)frame;
- (void)updateLayoutForChangedVibrantObscuredSubviewBounds;
@end

@implementation PRUISPosterContentViewCoordinator

- (PRUISPosterContentViewCoordinator)initWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8.receiver = self;
  v8.super_class = PRUISPosterContentViewCoordinator;
  result = [(PRUISPosterContentViewCoordinator *)&v8 init];
  if (result)
  {
    result->_bounds.origin.x = x;
    result->_bounds.origin.y = y;
    result->_bounds.size.width = width;
    result->_bounds.size.height = height;
  }

  return result;
}

- (UIView)obscurableContentView
{
  obscurableContentContainerView = self->_obscurableContentContainerView;
  if (!obscurableContentContainerView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
    v5 = self->_obscurableContentContainerView;
    self->_obscurableContentContainerView = v4;

    [(UIView *)self->_obscurableContentContainerView setAutoresizingMask:18];
    layer = [(UIView *)self->_obscurableContentContainerView layer];
    [layer setName:@"obscurableContentContainerView"];

    obscurableContentContainerView = self->_obscurableContentContainerView;
  }

  return obscurableContentContainerView;
}

- (BSUIVibrancyEffectView)obscurableContentVibrancyView
{
  obscurableContentVibrancyView = self->_obscurableContentVibrancyView;
  if (!obscurableContentVibrancyView)
  {
    v4 = [objc_alloc(MEMORY[0x1E698E818]) initWithFrame:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
    v5 = self->_obscurableContentVibrancyView;
    self->_obscurableContentVibrancyView = v4;

    [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView setAutoresizingMask:18];
    contentView = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView contentView];
    [contentView setAutoresizingMask:18];

    obscurableContentView = [(PRUISPosterContentViewCoordinator *)self obscurableContentView];
    [obscurableContentView addSubview:self->_obscurableContentVibrancyView];

    layer = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView layer];
    [layer setName:@"obscurableContentVibrancyView"];

    obscurableContentVibrancyView = self->_obscurableContentVibrancyView;
  }

  return obscurableContentVibrancyView;
}

- (UIView)vibrantObscurableContentView
{
  obscurableContentVibrancyView = [(PRUISPosterContentViewCoordinator *)self obscurableContentVibrancyView];
  contentView = [obscurableContentVibrancyView contentView];

  return contentView;
}

- (UIView)overlayContentView
{
  overlayContentView = self->_overlayContentView;
  if (!overlayContentView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
    v5 = self->_overlayContentView;
    self->_overlayContentView = v4;

    [(UIView *)self->_overlayContentView setAutoresizingMask:18];
    layer = [(UIView *)self->_overlayContentView layer];
    [layer setName:@"overlayContentView"];

    overlayContentView = self->_overlayContentView;
  }

  return overlayContentView;
}

- (UIView)obscurableOverlayView
{
  obscurableOverlayView = self->_obscurableOverlayView;
  if (!obscurableOverlayView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
    v5 = self->_obscurableOverlayView;
    self->_obscurableOverlayView = v4;

    [(UIView *)self->_obscurableOverlayView setAutoresizingMask:18];
    obscurableContentView = [(PRUISPosterContentViewCoordinator *)self obscurableContentView];
    [obscurableContentView addSubview:self->_obscurableOverlayView];

    layer = [(UIView *)self->_obscurableOverlayView layer];
    [layer setName:@"obscurableOverlayView"];

    obscurableOverlayView = self->_obscurableOverlayView;
  }

  return obscurableOverlayView;
}

- (id)updateContentViewsWithContentStyle:(id)style initialAppearance:(id)appearance
{
  v40 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  appearanceCopy = appearance;
  obscurableContentVibrancyView = self->_obscurableContentVibrancyView;
  currentAppearance = appearanceCopy;
  if (obscurableContentVibrancyView)
  {
    contentView = [(BSUIVibrancyEffectView *)obscurableContentVibrancyView contentView];
    [contentView setNeedsLayout];

    contentView2 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView contentView];
    [contentView2 layoutIfNeeded];

    [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantContentStyleRenderer clearAllStyles];
    contentView3 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView contentView];
    subviews = [contentView3 subviews];

    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = subviews;
    v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v35 + 1) + 8 * i) frame];
          v44.origin.x = v24;
          v44.origin.y = v25;
          v44.size.width = v26;
          v44.size.height = v27;
          v42.origin.x = x;
          v42.origin.y = y;
          v42.size.width = width;
          v42.size.height = height;
          v43 = CGRectUnion(v42, v44);
          x = v43.origin.x;
          y = v43.origin.y;
          width = v43.size.width;
          height = v43.size.height;
        }

        v21 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v21);
    }

    if (CGRectIsEmpty(self->_primaryContentTightFrame))
    {
      self->_primaryContentTightFrame.origin.x = x;
      self->_primaryContentTightFrame.origin.y = y;
      self->_primaryContentTightFrame.size.width = width;
      self->_primaryContentTightFrame.size.height = height;
    }

    vibrantContentStyleRenderer = self->_vibrantContentStyleRenderer;
    if (vibrantContentStyleRenderer)
    {
      [(PRPosterContentStyleVibrantContentRenderer *)vibrantContentStyleRenderer setContentBoundingRect:x, y, width, height];
      [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantContentStyleRenderer setStyleBoundingRect:self->_primaryContentTightFrame.origin.x, self->_primaryContentTightFrame.origin.y, self->_primaryContentTightFrame.size.width, self->_primaryContentTightFrame.size.height];
    }

    else
    {
      v29 = objc_alloc(MEMORY[0x1E69C5300]);
      v30 = self->_obscurableContentVibrancyView;
      contentView4 = [(BSUIVibrancyEffectView *)v30 contentView];
      v32 = [v29 initWithVibrancyView:v30 contentView:contentView4 contentBoundingRect:appearanceCopy styleBoundingRect:x initialAppearance:{y, width, height, self->_primaryContentTightFrame.origin.x, self->_primaryContentTightFrame.origin.y, self->_primaryContentTightFrame.size.width, self->_primaryContentTightFrame.size.height}];
      v33 = self->_vibrantContentStyleRenderer;
      self->_vibrantContentStyleRenderer = v32;
    }

    [styleCopy applyStyleWithRenderer:{self->_vibrantContentStyleRenderer, v35}];
    objc_storeStrong(&self->_currentStyle, style);
    currentAppearance = [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantContentStyleRenderer currentAppearance];
  }

  return currentAppearance;
}

- (void)updateLayoutForChangedVibrantObscuredSubviewBounds
{
  if (self->_vibrantContentStyleRenderer)
  {
    v2 = [(PRUISPosterContentViewCoordinator *)self updateContentViewsWithContentStyle:self->_currentStyle initialAppearance:0];
  }
}

- (void)setPrimaryContentTightFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!CGRectEqualToRect(self->_primaryContentTightFrame, frame))
  {
    self->_primaryContentTightFrame.origin.x = x;
    self->_primaryContentTightFrame.origin.y = y;
    self->_primaryContentTightFrame.size.width = width;
    self->_primaryContentTightFrame.size.height = height;

    [(PRUISPosterContentViewCoordinator *)self updateLayoutForChangedVibrantObscuredSubviewBounds];
  }
}

- (CGRect)primaryContentTightFrame
{
  x = self->_primaryContentTightFrame.origin.x;
  y = self->_primaryContentTightFrame.origin.y;
  width = self->_primaryContentTightFrame.size.width;
  height = self->_primaryContentTightFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end