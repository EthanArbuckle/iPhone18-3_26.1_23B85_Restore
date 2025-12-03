@interface PNPPlatterContainerView
- (CGAffineTransform)_dismissedTransformForEdge:(SEL)edge;
- (CGAffineTransform)animationTranslation;
- (CGRect)dismissedFrameForViewWithSize:(CGSize)size edge:(unint64_t)edge inRect:(CGRect)rect;
- (CGRect)presentedFrameForViewWithSize:(CGSize)size edge:(unint64_t)edge inRect:(CGRect)rect;
- (PNPPlatterContainerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateShadowForCenteredPlatter:(BOOL)platter;
- (void)initDimmingView;
- (void)initEffectView;
- (void)initShadowView;
- (void)layoutSubviews;
- (void)setAnimationTranslation:(CGAffineTransform *)translation;
- (void)setContentView:(id)view;
@end

@implementation PNPPlatterContainerView

- (CGRect)presentedFrameForViewWithSize:(CGSize)size edge:(unint64_t)edge inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  UIRectCenteredIntegralRect();
  v13 = v11;
  v14 = v12;
  if (edge > 3)
  {
    v18 = height - (v12 + 44.0);
    if (edge != 4)
    {
      v18 = v10;
    }

    if (edge == 8)
    {
      v16 = v10;
    }

    else
    {
      v16 = v18;
    }

    if (edge == 8)
    {
      v17 = width - (v11 + 24.0);
    }

    else
    {
      v17 = v9;
    }
  }

  else
  {
    if (edge == 2)
    {
      v15 = 24.0;
    }

    else
    {
      v15 = v9;
    }

    if (edge == 1)
    {
      v16 = 24.0;
    }

    else
    {
      v16 = v10;
    }

    if (edge == 1)
    {
      v17 = v9;
    }

    else
    {
      v17 = v15;
    }
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v20 = [mEMORY[0x277D75128] statusBarOrientation] - 3;

  if (v20 <= 1 && (edge == 4 || edge == 1))
  {
    [(PNPPlatterContainerView *)self pencilOffset];
    v17 = v17 + v21;
  }

  else
  {
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    v23 = [mEMORY[0x277D75128]2 statusBarOrientation] - 1;

    if (v23 <= 1 && (edge == 8 || edge == 2))
    {
      [(PNPPlatterContainerView *)self pencilOffset];
      v16 = v16 + v24;
    }
  }

  v25 = v17;
  v26 = v16;
  v27 = v13;
  v28 = v14;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGAffineTransform)_dismissedTransformForEdge:(SEL)edge
{
  if (!a4)
  {
    return CGAffineTransformMakeScale(retstr, 0.9, 0.9);
  }

  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 32);
  return self;
}

- (CGRect)dismissedFrameForViewWithSize:(CGSize)size edge:(unint64_t)edge inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  [(PNPPlatterContainerView *)self presentedFrameForViewWithSize:size.width edge:size.height inRect:rect.origin.x, rect.origin.y];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (![(PNPPlatterContainerView *)self dismissUsingAlpha])
  {
    if (edge > 3)
    {
      if (edge == 4)
      {
        v12 = height + 24.0;
      }

      else if (edge == 8)
      {
        v10 = width + 24.0;
      }
    }

    else if (edge == 1)
    {
      v12 = v12 - (v16 + 48.0);
    }

    else if (edge == 2)
    {
      v10 = v10 - (v14 + 48.0);
    }
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)_updateShadowForCenteredPlatter:(BOOL)platter
{
  shadowView = self->_shadowView;
  if (platter)
  {
    v5 = 0.0;
    [(PNPPlatterShadowView *)self->_shadowView setShadowRadius:0.0];
  }

  else
  {
    platterShadowColor = [MEMORY[0x277D75348] platterShadowColor];
    [(PNPPlatterShadowView *)shadowView setShadowColor:platterShadowColor];

    [(PNPPlatterShadowView *)self->_shadowView setShadowOffset:0.0, 0.0];
    [(PNPPlatterShadowView *)self->_shadowView setShadowRadius:30.0];
    v5 = 0.1;
  }

  v7 = self->_shadowView;

  [(PNPPlatterShadowView *)v7 setShadowOpacity:v5];
}

- (void)layoutSubviews
{
  [(UIView *)self->_contentView intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v63 = *(MEMORY[0x277CBF2C0] + 16);
  v64 = *MEMORY[0x277CBF2C0];
  *&v68.a = *MEMORY[0x277CBF2C0];
  *&v68.c = v63;
  v62 = *(MEMORY[0x277CBF2C0] + 32);
  *&v68.tx = v62;
  presented = [(PNPPlatterContainerView *)self presented];
  edge = [(PNPPlatterContainerView *)self edge];
  [(PNPPlatterContainerView *)self bounds];
  if (presented)
  {
    [(PNPPlatterContainerView *)self presentedFrameForViewWithSize:edge edge:v4 inRect:v6, v9, v10, v11, v12];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = 1.0;
  }

  else
  {
    [(PNPPlatterContainerView *)self dismissedFrameForViewWithSize:edge edge:v4 inRect:v6, v9, v10, v11, v12];
    v14 = v22;
    v16 = v23;
    v18 = v24;
    v20 = v25;
    [(PNPPlatterContainerView *)self _dismissedTransformForEdge:[(PNPPlatterContainerView *)self edge]];
    [(PNPPlatterContainerView *)self _dismissedAlphaForEdge:[(PNPPlatterContainerView *)self edge]];
    v21 = v26;
  }

  t1 = v68;
  v27 = *&self->_animationTranslation.c;
  *&t2.a = *&self->_animationTranslation.a;
  *&t2.c = v27;
  *&t2.tx = *&self->_animationTranslation.tx;
  CGAffineTransformConcat(&v67, &t1, &t2);
  v68 = v67;
  [(PNPPlatterContainerView *)self bounds];
  v30 = 1.0;
  if (v28 == *MEMORY[0x277CBF3A8] && v29 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v30 = 0.0;
    v21 = 0.0;
  }

  [(PNPPlatterShadowView *)self->_shadowView setAlpha:v30];
  contentViewContainerView = self->_contentViewContainerView;
  *&v67.a = v64;
  *&v67.c = v63;
  *&v67.tx = v62;
  [(UIView *)contentViewContainerView setTransform:&v67];
  [(UIView *)self->_contentViewContainerView setFrame:v14, v16, v18, v20];
  v32 = self->_contentViewContainerView;
  v67 = v68;
  [(UIView *)v32 setTransform:&v67];
  [(UIView *)self->_contentViewContainerView setAlpha:v21];
  contentView = [(PNPPlatterContainerView *)self contentView];
  [(UIView *)self->_contentViewContainerView bounds];
  [contentView setFrame:?];

  [(PNPPlatterContainerView *)self preferredCornerRadius];
  if (v34 == -1.0)
  {
    if (v4 >= v6)
    {
      v37 = v6;
    }

    else
    {
      v37 = v4;
    }

    v36 = v37 * 0.5;
  }

  else
  {
    [(PNPPlatterContainerView *)self preferredCornerRadius];
    v36 = v35;
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(PNPPlatterShadowView *)self->_shadowView setFrame:v14, v16, v18, v20];
    [(PNPPlatterShadowView *)self->_shadowView _setCornerRadius:v36];
    v38 = MEMORY[0x277D75208];
    [(PNPPlatterShadowView *)self->_shadowView bounds];
    v39 = [v38 bezierPathWithRoundedRect:? cornerRadius:?];
    [(PNPPlatterShadowView *)self->_shadowView setShadowPath:v39];
  }

  if (_UISolariumEnabled())
  {
    v40 = self->_dimmingState != 0;
  }

  else
  {
    v40 = 1;
  }

  [(UIView *)self->_contentViewContainerView setClipsToBounds:v40];
  if (!_UISolariumEnabled() || self->_dimmingState)
  {
    [(UIView *)self->_contentViewContainerView _setContinuousCornerRadius:v36];
    edge2 = [(PNPPlatterContainerView *)self edge];
    platterStrokeColor = [MEMORY[0x277D75348] platterStrokeColor];
    cGColor = [platterStrokeColor CGColor];
    layer = [(UIView *)self->_contentViewContainerView layer];
    [layer setBorderColor:cGColor];

    v45 = edge2 == 0;
    v46 = edge2 == 0;
    if (v45)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = 0.5;
    }

    layer2 = [(UIView *)self->_contentViewContainerView layer];
    [layer2 setBorderWidth:v47];

    [(PNPPlatterContainerView *)self _updateShadowForCenteredPlatter:v46];
  }

  dimmingView = self->_dimmingView;
  [(PNPPlatterContainerView *)self bounds];
  [(UIView *)dimmingView setFrame:?];
  presented2 = [(PNPPlatterContainerView *)self presented];
  v51 = 0.0;
  if (presented2)
  {
    dimmingState = self->_dimmingState;
    if (dimmingState == 1)
    {
      v51 = 0.1;
    }

    else
    {
      if (dimmingState != 2)
      {
        return;
      }

      v51 = 0.4;
    }
  }

  v53 = self->_dimmingView;
  v54 = [MEMORY[0x277D75348] dimmingViewColorWithAlpha:v51];
  [(UIView *)v53 setBackgroundColor:v54];

  if (self->_dimmingState)
  {
    goto LABEL_29;
  }

  if (_UISolariumEnabled())
  {
    if (self->_dimmingState)
    {
LABEL_29:
      [(UIVisualEffectView *)self->_effectView setHidden:1];
      platterContainerColor = [MEMORY[0x277D75348] platterContainerColor];
      [(UIView *)self->_contentViewContainerView setBackgroundColor:platterContainerColor];
    }
  }

  else
  {
    [(UIVisualEffectView *)self->_effectView setHidden:0];
    traitCollection = [(PNPPlatterContainerView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UIVisualEffectView *)self->_effectView setBackgroundColor:clearColor];
      v59 = 1203;
    }

    else
    {
      clearColor = [MEMORY[0x277D75348] systemWhiteColor];
      v60 = [clearColor colorWithAlphaComponent:0.9];
      [(UIVisualEffectView *)self->_effectView setBackgroundColor:v60];

      v59 = 1200;
    }

    v61 = [MEMORY[0x277D75210] effectWithStyle:v59];
    [(UIVisualEffectView *)self->_effectView setEffect:v61];

    [(UIView *)self->_contentViewContainerView bounds];
    [(UIVisualEffectView *)self->_effectView setFrame:?];
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_contentView removeFromSuperview];
  objc_storeStrong(&self->_contentView, view);
  if (self->_contentView)
  {
    [(UIView *)self->_contentViewContainerView addSubview:?];
  }

  [(PNPPlatterContainerView *)self setNeedsLayout];
}

- (void)setAnimationTranslation:(CGAffineTransform *)translation
{
  v4 = *&translation->c;
  v3 = *&translation->tx;
  *&self->_animationTranslation.a = *&translation->a;
  *&self->_animationTranslation.c = v4;
  *&self->_animationTranslation.tx = v3;
  [(PNPPlatterContainerView *)self setNeedsLayout];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  contentView = [(PNPPlatterContainerView *)self contentView];
  [contentView convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  contentView2 = [(PNPPlatterContainerView *)self contentView];
  v14 = [contentView2 pointInside:eventCopy withEvent:{v10, v12}];

  if (v14)
  {
    v17.receiver = self;
    v17.super_class = PNPPlatterContainerView;
    v15 = [(PNPPlatterContainerView *)&v17 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (PNPPlatterContainerView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PNPPlatterContainerView;
  v3 = [(PNPPlatterContainerView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  *(v3 + 60) = 0xBFF0000000000000;
  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *(v3 + 504) = *MEMORY[0x277CBF2C0];
  *(v3 + 520) = v5;
  *(v3 + 536) = *(v4 + 32);
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  v7 = *(v3 + 51);
  *(v3 + 51) = v6;

  [*(v3 + 51) setClipsToBounds:_UISolariumEnabled() ^ 1];
  [v3 initDimmingView];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v3 initShadowView];
  }

  [v3 addSubview:*(v3 + 51)];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v3 initEffectView];
  }

  return v3;
}

- (void)initDimmingView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  dimmingView = self->_dimmingView;
  self->_dimmingView = v3;

  v5 = self->_dimmingView;
  v6 = [MEMORY[0x277D75348] dimmingViewColorWithAlpha:0.5];
  [(UIView *)v5 setBackgroundColor:v6];

  v7 = self->_dimmingView;

  [(PNPPlatterContainerView *)self addSubview:v7];
}

- (void)initShadowView
{
  v3 = objc_alloc_init(PNPPlatterShadowView);
  shadowView = self->_shadowView;
  self->_shadowView = v3;

  v5 = self->_shadowView;

  [(PNPPlatterContainerView *)self addSubview:v5];
}

- (void)initEffectView
{
  v7 = [MEMORY[0x277D75210] effectWithStyle:1200];
  v3 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v7];
  effectView = self->_effectView;
  self->_effectView = v3;

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  v6 = [systemWhiteColor colorWithAlphaComponent:0.8];
  [(UIVisualEffectView *)self->_effectView setBackgroundColor:v6];

  [(UIView *)self->_contentViewContainerView addSubview:self->_effectView];
}

- (CGAffineTransform)animationTranslation
{
  v3 = *&self[10].ty;
  *&retstr->a = *&self[10].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].b;
  return self;
}

@end