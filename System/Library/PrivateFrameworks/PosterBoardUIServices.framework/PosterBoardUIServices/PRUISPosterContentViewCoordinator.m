@interface PRUISPosterContentViewCoordinator
- (BSUIVibrancyEffectView)obscurableContentVibrancyView;
- (CGRect)primaryContentTightFrame;
- (PRUISPosterContentViewCoordinator)initWithBounds:(CGRect)a3;
- (UIView)obscurableContentView;
- (UIView)obscurableOverlayView;
- (UIView)overlayContentView;
- (UIView)vibrantObscurableContentView;
- (id)updateContentViewsWithContentStyle:(id)a3 initialAppearance:(id)a4;
- (void)setPrimaryContentTightFrame:(CGRect)a3;
- (void)updateLayoutForChangedVibrantObscuredSubviewBounds;
@end

@implementation PRUISPosterContentViewCoordinator

- (PRUISPosterContentViewCoordinator)initWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v6 = [(UIView *)self->_obscurableContentContainerView layer];
    [v6 setName:@"obscurableContentContainerView"];

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
    v6 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView contentView];
    [v6 setAutoresizingMask:18];

    v7 = [(PRUISPosterContentViewCoordinator *)self obscurableContentView];
    [v7 addSubview:self->_obscurableContentVibrancyView];

    v8 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView layer];
    [v8 setName:@"obscurableContentVibrancyView"];

    obscurableContentVibrancyView = self->_obscurableContentVibrancyView;
  }

  return obscurableContentVibrancyView;
}

- (UIView)vibrantObscurableContentView
{
  v2 = [(PRUISPosterContentViewCoordinator *)self obscurableContentVibrancyView];
  v3 = [v2 contentView];

  return v3;
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
    v6 = [(UIView *)self->_overlayContentView layer];
    [v6 setName:@"overlayContentView"];

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
    v6 = [(PRUISPosterContentViewCoordinator *)self obscurableContentView];
    [v6 addSubview:self->_obscurableOverlayView];

    v7 = [(UIView *)self->_obscurableOverlayView layer];
    [v7 setName:@"obscurableOverlayView"];

    obscurableOverlayView = self->_obscurableOverlayView;
  }

  return obscurableOverlayView;
}

- (id)updateContentViewsWithContentStyle:(id)a3 initialAppearance:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  obscurableContentVibrancyView = self->_obscurableContentVibrancyView;
  v10 = v8;
  if (obscurableContentVibrancyView)
  {
    v11 = [(BSUIVibrancyEffectView *)obscurableContentVibrancyView contentView];
    [v11 setNeedsLayout];

    v12 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView contentView];
    [v12 layoutIfNeeded];

    [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantContentStyleRenderer clearAllStyles];
    v13 = [(BSUIVibrancyEffectView *)self->_obscurableContentVibrancyView contentView];
    v14 = [v13 subviews];

    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = v14;
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
      v31 = [(BSUIVibrancyEffectView *)v30 contentView];
      v32 = [v29 initWithVibrancyView:v30 contentView:v31 contentBoundingRect:v8 styleBoundingRect:x initialAppearance:{y, width, height, self->_primaryContentTightFrame.origin.x, self->_primaryContentTightFrame.origin.y, self->_primaryContentTightFrame.size.width, self->_primaryContentTightFrame.size.height}];
      v33 = self->_vibrantContentStyleRenderer;
      self->_vibrantContentStyleRenderer = v32;
    }

    [v7 applyStyleWithRenderer:{self->_vibrantContentStyleRenderer, v35}];
    objc_storeStrong(&self->_currentStyle, a3);
    v10 = [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantContentStyleRenderer currentAppearance];
  }

  return v10;
}

- (void)updateLayoutForChangedVibrantObscuredSubviewBounds
{
  if (self->_vibrantContentStyleRenderer)
  {
    v2 = [(PRUISPosterContentViewCoordinator *)self updateContentViewsWithContentStyle:self->_currentStyle initialAppearance:0];
  }
}

- (void)setPrimaryContentTightFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_primaryContentTightFrame, a3))
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