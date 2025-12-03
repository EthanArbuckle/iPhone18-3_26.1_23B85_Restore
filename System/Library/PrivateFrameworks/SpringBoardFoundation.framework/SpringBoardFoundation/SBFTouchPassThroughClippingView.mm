@interface SBFTouchPassThroughClippingView
- (CGRect)contentClippingFrame;
- (SBFTouchPassThroughClippingView)initWithFrame:(CGRect)frame;
- (void)_layoutContentClippingView;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)addSubview:(id)subview;
- (void)bringSubviewToFront:(id)front;
- (void)insertSubview:(id)subview aboveSubview:(id)aboveSubview;
- (void)insertSubview:(id)subview atIndex:(int64_t)index;
- (void)insertSubview:(id)subview belowSubview:(id)belowSubview;
- (void)layoutSubviews;
- (void)sendSubviewToBack:(id)back;
- (void)setBackgroundColor:(id)color;
- (void)setContentClippingEnabled:(BOOL)enabled;
- (void)setContentClippingFrame:(CGRect)frame cornerRadii:(UIRectCornerRadii)radii;
- (void)setOpaque:(BOOL)opaque;
@end

@implementation SBFTouchPassThroughClippingView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBFTouchPassThroughClippingView;
  [(SBFTouchPassThroughClippingView *)&v3 layoutSubviews];
  [(SBFTouchPassThroughClippingView *)self _layoutContentClippingView];
}

- (void)_layoutContentClippingView
{
  if (self->_contentClippingEnabled && (p_contentClippingFrame = &self->_contentClippingFrame, !CGRectIsNull(self->_contentClippingFrame)))
  {
    x = p_contentClippingFrame->origin.x;
    y = self->_contentClippingFrame.origin.y;
    v12 = 1;
    width = self->_contentClippingFrame.size.width;
    height = self->_contentClippingFrame.size.height;
  }

  else
  {
    [(SBFTouchPassThroughClippingView *)self bounds];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
    v12 = 0;
  }

  BSRectGetCenter();
  v14 = v13;
  v16 = v15;
  [(_SBFActualClippingView *)self->_contentClippingView setBounds:x, y, width, height];
  [(_SBFActualClippingView *)self->_contentClippingView setCenter:v14, v16];
  [(_SBFActualClippingView *)self->_contentClippingView _setContinuousCornerRadius:self->_contentCornerRadius];
  contentClippingView = self->_contentClippingView;

  [(_SBFActualClippingView *)contentClippingView setClipsToBounds:v12];
}

- (CGRect)contentClippingFrame
{
  x = self->_contentClippingFrame.origin.x;
  y = self->_contentClippingFrame.origin.y;
  width = self->_contentClippingFrame.size.width;
  height = self->_contentClippingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SBFTouchPassThroughClippingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = SBFTouchPassThroughClippingView;
  v7 = [(SBFTouchPassThroughClippingView *)&v13 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v9 = *(MEMORY[0x1E695F050] + 16);
    v7->_contentClippingFrame.origin = *MEMORY[0x1E695F050];
    v7->_contentClippingFrame.size = v9;
    height = [[_SBFActualClippingView alloc] initWithFrame:x, y, width, height];
    contentClippingView = v8->_contentClippingView;
    v8->_contentClippingView = height;

    [(SBFTouchPassThroughClippingView *)v8 addSubview:v8->_contentClippingView];
    [(SBFTouchPassThroughClippingView *)v8 setContentClippingEnabled:1];
  }

  return v8;
}

- (void)setContentClippingFrame:(CGRect)frame cornerRadii:(UIRectCornerRadii)radii
{
  var0 = radii.var0;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v16 = *MEMORY[0x1E69E9840];
  var3 = radii.var3;
  var1 = radii.var1;
  var2 = radii.var2;
  for (i = 8; i != 32; i += 8)
  {
    if (var0 < *&v12[i])
    {
      var0 = *&v12[i];
    }
  }

  p_contentClippingFrame = &self->_contentClippingFrame;
  if (!CGRectEqualToRect(self->_contentClippingFrame, frame) || (BSFloatEqualToFloat() & 1) == 0)
  {
    self->_contentCornerRadius = var0;
    p_contentClippingFrame->origin.x = x;
    self->_contentClippingFrame.origin.y = y;
    self->_contentClippingFrame.size.width = width;
    self->_contentClippingFrame.size.height = height;

    [(SBFTouchPassThroughClippingView *)self setNeedsLayout];
  }
}

- (void)setContentClippingEnabled:(BOOL)enabled
{
  if (self->_contentClippingEnabled != enabled)
  {
    self->_contentClippingEnabled = enabled;
    [(SBFTouchPassThroughClippingView *)self setNeedsLayout];
  }
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = SBFTouchPassThroughClippingView;
  [(SBFTouchPassThroughClippingView *)&v5 _setContinuousCornerRadius:?];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_contentCornerRadius = radius;
    [(SBFTouchPassThroughClippingView *)self setNeedsLayout];
  }
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = SBFTouchPassThroughClippingView;
  colorCopy = color;
  [(SBFTouchPassThroughClippingView *)&v5 setBackgroundColor:colorCopy];
  [(_SBFActualClippingView *)self->_contentClippingView setBackgroundColor:colorCopy, v5.receiver, v5.super_class];
}

- (void)setOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  v5.receiver = self;
  v5.super_class = SBFTouchPassThroughClippingView;
  [(SBFTouchPassThroughClippingView *)&v5 setOpaque:?];
  [(_SBFActualClippingView *)self->_contentClippingView setOpaque:opaqueCopy];
}

- (void)addSubview:(id)subview
{
  contentClippingView = self->_contentClippingView;
  if (contentClippingView == subview)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SBFTouchPassThroughClippingView;
    [(SBFTouchPassThroughClippingView *)&v7 addSubview:contentClippingView];
  }

  else
  {
    v6 = self->_contentClippingView;

    [(_SBFActualClippingView *)v6 addSubview:?];
  }
}

- (void)insertSubview:(id)subview atIndex:(int64_t)index
{
  contentClippingView = self->_contentClippingView;
  if (contentClippingView == subview)
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = SBFTouchPassThroughClippingView;
    [(SBFTouchPassThroughClippingView *)&v8 insertSubview:contentClippingView atIndex:index];
  }

  else
  {
    v7 = self->_contentClippingView;

    [_SBFActualClippingView insertSubview:v7 atIndex:"insertSubview:atIndex:"];
  }
}

- (void)insertSubview:(id)subview belowSubview:(id)belowSubview
{
  contentClippingView = self->_contentClippingView;
  if (contentClippingView == subview || contentClippingView == belowSubview)
  {
    v10 = v4;
    v11 = v5;
    v9.receiver = self;
    v9.super_class = SBFTouchPassThroughClippingView;
    [SBFTouchPassThroughClippingView insertSubview:sel_insertSubview_belowSubview_ belowSubview:?];
  }

  else
  {
    v8 = self->_contentClippingView;

    [_SBFActualClippingView insertSubview:v8 belowSubview:"insertSubview:belowSubview:"];
  }
}

- (void)insertSubview:(id)subview aboveSubview:(id)aboveSubview
{
  contentClippingView = self->_contentClippingView;
  if (contentClippingView == subview || contentClippingView == aboveSubview)
  {
    v10 = v4;
    v11 = v5;
    v9.receiver = self;
    v9.super_class = SBFTouchPassThroughClippingView;
    [SBFTouchPassThroughClippingView insertSubview:sel_insertSubview_aboveSubview_ aboveSubview:?];
  }

  else
  {
    v8 = self->_contentClippingView;

    [_SBFActualClippingView insertSubview:v8 aboveSubview:"insertSubview:aboveSubview:"];
  }
}

- (void)bringSubviewToFront:(id)front
{
  contentClippingView = self->_contentClippingView;
  if (contentClippingView == front)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SBFTouchPassThroughClippingView;
    [(SBFTouchPassThroughClippingView *)&v7 bringSubviewToFront:contentClippingView];
  }

  else
  {
    v6 = self->_contentClippingView;

    [(_SBFActualClippingView *)v6 bringSubviewToFront:?];
  }
}

- (void)sendSubviewToBack:(id)back
{
  contentClippingView = self->_contentClippingView;
  if (contentClippingView == back)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SBFTouchPassThroughClippingView;
    [(SBFTouchPassThroughClippingView *)&v7 sendSubviewToBack:contentClippingView];
  }

  else
  {
    v6 = self->_contentClippingView;

    [(_SBFActualClippingView *)v6 sendSubviewToBack:?];
  }
}

@end