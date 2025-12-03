@interface _PXStoryScrubberClipView
- (UIView)dimOverlayView;
- (UIView)highlightOverlayView;
- (void)layoutSubviews;
@end

@implementation _PXStoryScrubberClipView

- (UIView)highlightOverlayView
{
  v17[2] = *MEMORY[0x1E69E9840];
  highlightOverlayView = self->_highlightOverlayView;
  if (!highlightOverlayView)
  {
    v4 = [PXGradientView alloc];
    contentView = [(PXGFocusEffectView *)self contentView];
    [contentView bounds];
    v6 = [(PXGradientView *)v4 initWithFrame:?];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v8 = [whiteColor colorWithAlphaComponent:0.2];
    v17[0] = v8;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    v10 = [whiteColor2 colorWithAlphaComponent:0.0];
    v17[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    [(UIView *)v6 setColors:v11];

    [(UIView *)v6 setLocations:&unk_1F1910708];
    [(UIView *)v6 setStartPoint:0.5, 0.0];
    [(UIView *)v6 setEndPoint:0.5, 1.0];
    v12 = *MEMORY[0x1E6979CF8];
    layer = [(UIView *)v6 layer];
    [layer setCompositingFilter:v12];

    contentView2 = [(PXGFocusEffectView *)self contentView];
    [contentView2 addSubview:v6];

    v15 = self->_highlightOverlayView;
    self->_highlightOverlayView = v6;

    highlightOverlayView = self->_highlightOverlayView;
  }

  return highlightOverlayView;
}

- (UIView)dimOverlayView
{
  dimOverlayView = self->_dimOverlayView;
  if (!dimOverlayView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    contentView = [(PXGFocusEffectView *)self contentView];
    [contentView bounds];
    v6 = [v4 initWithFrame:?];
    v7 = self->_dimOverlayView;
    self->_dimOverlayView = v6;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v9 = [blackColor colorWithAlphaComponent:0.4];
    [(UIView *)self->_dimOverlayView setBackgroundColor:v9];

    contentView2 = [(PXGFocusEffectView *)self contentView];
    [contentView2 addSubview:self->_dimOverlayView];

    dimOverlayView = self->_dimOverlayView;
  }

  return dimOverlayView;
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = _PXStoryScrubberClipView;
  [(PXGFocusEffectView *)&v41 layoutSubviews];
  userData = [(PXGFocusableView *)self userData];
  contentView = [(PXGFocusEffectView *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [userData cornerRadius];
  v14 = v13;
  isCurrent = [userData isCurrent];
  shouldAdjustContent = [userData shouldAdjustContent];
  highlightOverlayView = [(_PXStoryScrubberClipView *)self highlightOverlayView];
  [highlightOverlayView setFrame:{v6, v8, v10, v12}];
  layer = [highlightOverlayView layer];
  [layer setCornerRadius:v14];

  contentView2 = [(PXGFocusEffectView *)self contentView];
  [contentView2 bringSubviewToFront:highlightOverlayView];

  dimOverlayView = [(_PXStoryScrubberClipView *)self dimOverlayView];
  [dimOverlayView setFrame:{v6, v8, v10, v12}];
  layer2 = [dimOverlayView layer];
  [layer2 setCornerRadius:v14];

  contentView3 = [(PXGFocusEffectView *)self contentView];
  [contentView3 bringSubviewToFront:dimOverlayView];

  contentView4 = [(PXGFocusEffectView *)self contentView];
  layer3 = [contentView4 layer];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v26 = [blackColor colorWithAlphaComponent:0.5];
  [layer3 setShadowColor:{objc_msgSend(v26, "CGColor")}];

  [layer3 setShadowOffset:{0.0, 2.0}];
  [layer3 setShadowRadius:20.0];
  v27 = 0.0;
  if ((isCurrent & shouldAdjustContent) != 0)
  {
    *&v27 = 1.0;
  }

  [layer3 setShadowOpacity:v27];
  LODWORD(v28) = 0.25;
  LODWORD(v29) = 0.75;
  LODWORD(v30) = 1.0;
  v31 = [MEMORY[0x1E69793D0] functionWithControlPoints:v28 :0.0 :v29 :v30];
  v32 = MEMORY[0x1E69DD250];
  v33 = [_PXCustomTimingFunctionAnimationFactory factoryWithTimingFunction:v31];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __42___PXStoryScrubberClipView_layoutSubviews__block_invoke;
  v36[3] = &unk_1E773A980;
  v39 = isCurrent;
  v40 = shouldAdjustContent;
  v37 = highlightOverlayView;
  v38 = dimOverlayView;
  v34 = dimOverlayView;
  v35 = highlightOverlayView;
  [v32 _animateWithDuration:393216 delay:v33 options:v36 factory:0 animations:0.2 completion:0.0];
}

@end