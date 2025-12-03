@interface PXGTVFocusEffectView
- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer;
- (CGRect)clippingRect;
- (PXGTVFocusEffectView)initWithFrame:(CGRect)frame;
- (void)_handleSelectTap:(id)tap;
- (void)_setSelectedState:(BOOL)state;
- (void)addHostedLayer:(id)layer;
- (void)addHostedView:(id)view;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setUserData:(id)data;
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

- (void)setUserData:(id)data
{
  dataCopy = data;
  userData = self->_userData;
  if (userData != dataCopy)
  {
    v9 = dataCopy;
    v6 = [(PXGTVFocusEffectViewConfiguration *)userData isEqual:dataCopy];
    dataCopy = v9;
    if (!v6)
    {
      v7 = [(PXGTVFocusEffectViewConfiguration *)v9 copy];
      v8 = self->_userData;
      self->_userData = v7;

      [(PXGTVFocusEffectView *)self setNeedsLayout];
      dataCopy = v9;
    }
  }
}

- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer
{
  y = center.y;
  x = center.x;
  layerCopy = layer;
  layer = [(PXGTVFocusEffectView *)self layer];
  [layer convertPoint:layerCopy fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)addHostedLayer:(id)layer
{
  layerCopy = layer;
  maskedOverlayView = [(_UIStackedImageContainerView *)self->_stackedImageContainerView maskedOverlayView];
  layer = [maskedOverlayView layer];

  if (!layer)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGTVFocusEffectView.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"_stackedImageContainerView.maskedOverlayView.layer != nil"}];
  }

  maskedOverlayView2 = [(_UIStackedImageContainerView *)self->_stackedImageContainerView maskedOverlayView];
  layer2 = [maskedOverlayView2 layer];
  [layer2 addSublayer:layerCopy];

  superlayer = [layerCopy superlayer];
  maskedOverlayView3 = [(_UIStackedImageContainerView *)self->_stackedImageContainerView maskedOverlayView];
  layer3 = [maskedOverlayView3 layer];

  if (superlayer != layer3)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGTVFocusEffectView.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"[sublayer superlayer] == _stackedImageContainerView.maskedOverlayView.layer"}];
  }

  superlayer2 = [layerCopy superlayer];

  if (!superlayer2)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXGTVFocusEffectView.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"[sublayer superlayer] != nil"}];
  }
}

- (void)addHostedView:(id)view
{
  stackedImageContainerView = self->_stackedImageContainerView;
  viewCopy = view;
  maskedOverlayView = [(_UIStackedImageContainerView *)stackedImageContainerView maskedOverlayView];
  [maskedOverlayView addSubview:viewCopy];
}

- (void)_setSelectedState:(BOOL)state
{
  stateCopy = state;
  if ([(PXGTVFocusEffectView *)self isFocused])
  {
    if (stateCopy)
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v10.receiver = self;
  v10.super_class = PXGTVFocusEffectView;
  [(PXGTVFocusEffectView *)&v10 didUpdateFocusInContext:context withAnimationCoordinator:coordinatorCopy];
  if ([(PXGTVFocusEffectView *)self isFocused])
  {
    superview = [(PXGTVFocusEffectView *)self superview];
    [superview bringSubviewToFront:self];

    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  [(_UIStackedImageContainerView *)self->_stackedImageContainerView setControlState:v8 animated:1 focusAnimationCoordinator:coordinatorCopy];
  [(PXGTVFocusEffectView *)self setNeedsLayout];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__PXGTVFocusEffectView_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v9[3] = &unk_2782ABE50;
  v9[4] = self;
  [coordinatorCopy addCoordinatedAnimations:v9 completion:0];
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

- (void)_handleSelectTap:(id)tap
{
  state = [tap state];
  if ((state - 3) >= 2)
  {
    if (state != 1)
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

- (PXGTVFocusEffectView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = PXGTVFocusEffectView;
  v3 = [(PXGTVFocusEffectView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    config = [(_UIStackedImageContainerView *)v4->_stackedImageContainerView config];
    [config setCornerRadius:v17];

    v19 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v4 action:sel__handleSelectTap_];
    [v19 setMinimumPressDuration:0.0];
    [v19 setDelegate:v4];
    [(PXGTVFocusEffectView *)v4 addGestureRecognizer:v19];
  }

  return v4;
}

@end