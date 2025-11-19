@interface PXGTVFocusEffectView
- (CGPoint)convertHostedChildCenter:(CGPoint)a3 fromGlobalLayer:(id)a4;
- (CGRect)clippingRect;
- (PXGTVFocusEffectView)initWithFrame:(CGRect)a3;
- (void)_handleSelectTap:(id)a3;
- (void)_setSelectedState:(BOOL)a3;
- (void)addHostedLayer:(id)a3;
- (void)addHostedView:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setUserData:(id)a3;
@end

@implementation PXGTVFocusEffectView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)a3
{
  v4 = a3;
  userData = self->_userData;
  if (userData != v4)
  {
    v9 = v4;
    v6 = [(PXGTVFocusEffectViewConfiguration *)userData isEqual:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(PXGTVFocusEffectViewConfiguration *)v9 copy];
      v8 = self->_userData;
      self->_userData = v7;

      [(PXGTVFocusEffectView *)self setNeedsLayout];
      v4 = v9;
    }
  }
}

- (CGPoint)convertHostedChildCenter:(CGPoint)a3 fromGlobalLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXGTVFocusEffectView *)self layer];
  [v8 convertPoint:v7 fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)addHostedLayer:(id)a3
{
  v16 = a3;
  v5 = [(_UIStackedImageContainerView *)self->_stackedImageContainerView maskedOverlayView];
  v6 = [v5 layer];

  if (!v6)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXGTVFocusEffectView.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"_stackedImageContainerView.maskedOverlayView.layer != nil"}];
  }

  v7 = [(_UIStackedImageContainerView *)self->_stackedImageContainerView maskedOverlayView];
  v8 = [v7 layer];
  [v8 addSublayer:v16];

  v9 = [v16 superlayer];
  v10 = [(_UIStackedImageContainerView *)self->_stackedImageContainerView maskedOverlayView];
  v11 = [v10 layer];

  if (v9 != v11)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXGTVFocusEffectView.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"[sublayer superlayer] == _stackedImageContainerView.maskedOverlayView.layer"}];
  }

  v12 = [v16 superlayer];

  if (!v12)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXGTVFocusEffectView.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"[sublayer superlayer] != nil"}];
  }
}

- (void)addHostedView:(id)a3
{
  stackedImageContainerView = self->_stackedImageContainerView;
  v4 = a3;
  v5 = [(_UIStackedImageContainerView *)stackedImageContainerView maskedOverlayView];
  [v5 addSubview:v4];
}

- (void)_setSelectedState:(BOOL)a3
{
  v3 = a3;
  if ([(PXGTVFocusEffectView *)self isFocused])
  {
    if (v3)
    {
      v5 = 9;
    }

    else
    {
      v5 = 8;
    }

    stackedImageContainerView = self->_stackedImageContainerView;

    [(_UIStackedImageContainerView *)stackedImageContainerView setControlState:v5 animated:1];
  }
}

- (void)prepareForReuse
{
  [(_UIStackedImageContainerView *)self->_stackedImageContainerView setStackImage:0];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  maskedOverlayView = self->_maskedOverlayView;
  self->_maskedOverlayView = v3;

  v5 = self->_maskedOverlayView;
  stackedImageContainerView = self->_stackedImageContainerView;

  [(_UIStackedImageContainerView *)stackedImageContainerView setMaskedOverlayView:v5];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = PXGTVFocusEffectView;
  [(PXGTVFocusEffectView *)&v10 didUpdateFocusInContext:a3 withAnimationCoordinator:v6];
  if ([(PXGTVFocusEffectView *)self isFocused])
  {
    v7 = [(PXGTVFocusEffectView *)self superview];
    [v7 bringSubviewToFront:self];

    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  [(_UIStackedImageContainerView *)self->_stackedImageContainerView setControlState:v8 animated:1 focusAnimationCoordinator:v6];
  [(PXGTVFocusEffectView *)self setNeedsLayout];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__PXGTVFocusEffectView_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v9[3] = &unk_2782ABE50;
  v9[4] = self;
  [v6 addCoordinatedAnimations:v9 completion:0];
}

- (void)layoutSubviews
{
  [(PXGTVFocusEffectView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXGTVFocusEffectView *)self setClipsToBounds:0];
  [(_UIStackedImageContainerView *)self->_stackedImageContainerView setFrame:v4, v6, v8, v10];
  stackedImageContainerView = self->_stackedImageContainerView;

  [(_UIStackedImageContainerView *)stackedImageContainerView layoutIfNeeded];
}

- (void)_handleSelectTap:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  [(PXGTVFocusEffectView *)self _setSelectedState:v5];
}

- (PXGTVFocusEffectView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = PXGTVFocusEffectView;
  v3 = [(PXGTVFocusEffectView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXGTVFocusEffectView *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    maskedOverlayView = v4->_maskedOverlayView;
    v4->_maskedOverlayView = v13;

    v15 = [objc_alloc(MEMORY[0x277D76280]) initWithFrame:{v6, v8, v10, v12}];
    stackedImageContainerView = v4->_stackedImageContainerView;
    v4->_stackedImageContainerView = v15;

    [(PXGTVFocusEffectView *)v4 addSubview:v4->_stackedImageContainerView];
    if (MEMORY[0x21CEE3960]([(_UIStackedImageContainerView *)v4->_stackedImageContainerView setMaskedOverlayView:v4->_maskedOverlayView]))
    {
      v17 = 20.0;
    }

    else
    {
      v17 = 0.0;
    }

    v18 = [(_UIStackedImageContainerView *)v4->_stackedImageContainerView config];
    [v18 setCornerRadius:v17];

    v19 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v4 action:sel__handleSelectTap_];
    [v19 setMinimumPressDuration:0.0];
    [v19 setDelegate:v4];
    [(PXGTVFocusEffectView *)v4 addGestureRecognizer:v19];
  }

  return v4;
}

@end