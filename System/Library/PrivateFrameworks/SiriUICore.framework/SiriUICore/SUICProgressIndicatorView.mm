@interface SUICProgressIndicatorView
- (BOOL)isDarkened;
- (SUICProgressIndicatorView)initWithFrame:(CGRect)frame;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
- (void)setArrowVisible:(BOOL)visible delay:(double)delay animated:(BOOL)animated completion:(id)completion;
- (void)setCheckmarkVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)setDarkened:(BOOL)darkened animated:(BOOL)animated completion:(id)completion;
- (void)setSpinning:(BOOL)spinning;
@end

@implementation SUICProgressIndicatorView

- (SUICProgressIndicatorView)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = SUICProgressIndicatorView;
  v3 = [(SUICProgressIndicatorView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_SUICRingLayer);
    shadowRingLayer = v3->_shadowRingLayer;
    v3->_shadowRingLayer = v4;

    v6 = v3->_shadowRingLayer;
    traitCollection = [(SUICProgressIndicatorView *)v3 traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      [MEMORY[0x1E69DC888] darkGrayColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] lightGrayColor];
    }
    v8 = ;
    [(_SUICRingLayer *)v6 setRingColor:v8];

    v9 = objc_alloc_init(_SUICProgressRingLayer);
    progressRingLayer = v3->_progressRingLayer;
    v3->_progressRingLayer = v9;

    v11 = v3->_progressRingLayer;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(_SUICRingLayer *)v11 setRingColor:blackColor];

    v13 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.right" withConfiguration:v13];
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    v16 = [v14 imageWithTintColor:blackColor2 renderingMode:1];

    v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v16];
    actionArrowImageView = v3->_actionArrowImageView;
    v3->_actionArrowImageView = v17;

    [(UIImageView *)v3->_actionArrowImageView setContentMode:1];
    v19 = objc_alloc_init(MEMORY[0x1E69AD2E8]);
    checkmarkLayer = v3->_checkmarkLayer;
    v3->_checkmarkLayer = v19;

    v21 = v3->_checkmarkLayer;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(LAUICheckmarkLayer *)v21 setPrimaryColor:whiteColor animated:0];

    layer = [(SUICProgressIndicatorView *)v3 layer];
    [layer addSublayer:v3->_shadowRingLayer];

    layer2 = [(SUICProgressIndicatorView *)v3 layer];
    [layer2 addSublayer:v3->_progressRingLayer];

    layer3 = [(SUICProgressIndicatorView *)v3 layer];
    [layer3 addSublayer:v3->_checkmarkLayer];

    [(SUICProgressIndicatorView *)v3 addSubview:v3->_actionArrowImageView];
    [(SUICProgressIndicatorView *)v3 setArrowVisible:1];
    [(SUICProgressIndicatorView *)v3 setProgressValue:1.0];
    [(SUICProgressIndicatorView *)v3 setCheckmarkVisible:0];
    [(SUICProgressIndicatorView *)v3 setSpinning:0];
    [(SUICProgressIndicatorView *)v3 setDarkened:0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SUICProgressIndicatorView;
  [(SUICProgressIndicatorView *)&v4 layoutSubviews];
  [(SUICProgressIndicatorView *)self bounds];
  CGRectGetWidth(v5);
  actionArrowImageView = self->_actionArrowImageView;
  [(SUICProgressIndicatorView *)self bounds];
  UIRectCenteredIntegralRect();
  [(UIImageView *)actionArrowImageView setFrame:?];
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v18.receiver = self;
  v18.super_class = SUICProgressIndicatorView;
  layerCopy = layer;
  [(SUICProgressIndicatorView *)&v18 layoutSublayersOfLayer:layerCopy];
  [layerCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  checkmarkLayer = self->_checkmarkLayer;
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v14 = CGRectGetWidth(v19) * 0.25;
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  v15 = CGRectGetHeight(v20) * 0.25;
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  v22 = CGRectInset(v21, v14, v15);
  [(LAUICheckmarkLayer *)checkmarkLayer setFrame:v22.origin.x, v22.origin.y, v22.size.width, v22.size.height];
  progressRingLayer = self->_progressRingLayer;
  [(SUICProgressIndicatorView *)self bounds];
  [(_SUICRingLayer *)progressRingLayer setFrame:?];
  shadowRingLayer = self->_shadowRingLayer;
  [(SUICProgressIndicatorView *)self bounds];
  [(_SUICRingLayer *)shadowRingLayer setFrame:?];
}

- (void)setArrowVisible:(BOOL)visible delay:(double)delay animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  if ([(SUICProgressIndicatorView *)self isArrowVisible]!= visibleCopy)
  {
    objc_initWeak(&location, self->_actionArrowImageView);
    if (animatedCopy)
    {
      v11 = MEMORY[0x1E69DD250];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __71__SUICProgressIndicatorView_setArrowVisible_delay_animated_completion___block_invoke;
      v18[3] = &unk_1E81E8080;
      v12 = &v19;
      objc_copyWeak(&v19, &location);
      v20 = visibleCopy;
      [v11 animateWithDuration:0 delay:v18 usingSpringWithDamping:completionCopy initialSpringVelocity:0.35 options:delay animations:400.0 completion:1.0];
    }

    else
    {
      if (delay == 0.0)
      {
        [(UIImageView *)self->_actionArrowImageView setAlpha:visibleCopy];
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 1);
        }

        goto LABEL_11;
      }

      v13 = dispatch_time(0, (delay * 1000000000.0));
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __71__SUICProgressIndicatorView_setArrowVisible_delay_animated_completion___block_invoke_2;
      v14[3] = &unk_1E81E80A8;
      v12 = &v16;
      objc_copyWeak(&v16, &location);
      v17 = visibleCopy;
      v15 = completionCopy;
      dispatch_after(v13, MEMORY[0x1E69E96A0], v14);
    }

    objc_destroyWeak(v12);
LABEL_11:
    objc_destroyWeak(&location);
    goto LABEL_12;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }

LABEL_12:
}

void __71__SUICProgressIndicatorView_setArrowVisible_delay_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LOBYTE(v2) = *(a1 + 40);
  [WeakRetained setAlpha:v2];
}

void __71__SUICProgressIndicatorView_setArrowVisible_delay_animated_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  LOBYTE(v3) = *(a1 + 48);
  v5 = WeakRetained;
  [WeakRetained setAlpha:v3];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
  }
}

- (void)setSpinning:(BOOL)spinning
{
  spinningCopy = spinning;
  if ([(_SUICProgressRingLayer *)self->_progressRingLayer spinning]!= spinning)
  {
    progressRingLayer = self->_progressRingLayer;

    [(_SUICProgressRingLayer *)progressRingLayer setSpinning:spinningCopy];
  }
}

- (void)setCheckmarkVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  if ([(SUICProgressIndicatorView *)self isCheckmarkVisible]== visibleCopy)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    [(LAUICheckmarkLayer *)self->_checkmarkLayer setRevealed:visibleCopy animated:animatedCopy withCompletion:completionCopy];
  }
}

- (BOOL)isDarkened
{
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  cGColor = [blackColor CGColor];

  fillColor = [(_SUICProgressRingLayer *)self->_progressRingLayer fillColor];

  return CGColorEqualToColor(fillColor, cGColor);
}

- (void)setDarkened:(BOOL)darkened animated:(BOOL)animated completion:(id)completion
{
  darkenedCopy = darkened;
  completionCopy = completion;
  if ([(SUICProgressIndicatorView *)self isDarkened]== darkenedCopy)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    if (darkenedCopy)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v8 = ;
    cGColor = [v8 CGColor];

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__SUICProgressIndicatorView_setDarkened_animated_completion___block_invoke;
    v11[3] = &unk_1E81E8038;
    objc_copyWeak(v12, &location);
    v12[1] = cGColor;
    [v10 animateWithDuration:0 delay:v11 usingSpringWithDamping:completionCopy initialSpringVelocity:0.35 options:0.0 animations:400.0 completion:1.0];
    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __61__SUICProgressIndicatorView_setDarkened_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[52] setFillColor:*(a1 + 40)];
    WeakRetained = v3;
  }
}

@end