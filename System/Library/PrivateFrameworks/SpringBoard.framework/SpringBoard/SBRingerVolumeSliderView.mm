@interface SBRingerVolumeSliderView
- (SBRingerVolumeSliderView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLayoutAxis:(int64_t)axis;
- (void)setStyle:(unint64_t)style;
- (void)setValue:(double)value animated:(BOOL)animated;
@end

@implementation SBRingerVolumeSliderView

- (SBRingerVolumeSliderView)initWithFrame:(CGRect)frame
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SBRingerVolumeSliderView;
  v3 = [(SBRingerVolumeSliderView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBRingerVolumeSliderView *)v3 setClipsToBounds:0];
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v5;

    [(UIView *)v4->_backgroundView setClipsToBounds:1];
    [(SBRingerVolumeSliderView *)v4 addSubview:v4->_backgroundView];
    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    fillView = v4->_fillView;
    v4->_fillView = v7;

    [(UIView *)v4->_backgroundView addSubview:v4->_fillView];
    v4->_style = -1;
    [(SBRingerVolumeSliderView *)v4 setStyle:0];
    v4->_layoutAxis = 0;
    v4->_roundedStyle = 0;
    v9 = objc_alloc_init(MEMORY[0x277D75D38]);
    valueSpring = v4->_valueSpring;
    v4->_valueSpring = v9;

    objc_initWeak(&location, v4);
    v11 = MEMORY[0x277D75D18];
    v18[0] = v4->_valueSpring;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__SBRingerVolumeSliderView_initWithFrame___block_invoke;
    v14[3] = &unk_2783A8C68;
    objc_copyWeak(&v15, &location);
    [v11 _createTransformerWithInputAnimatableProperties:v12 presentationValueChangedCallback:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __42__SBRingerVolumeSliderView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setNeedsLayout];
    [v2 layoutIfNeeded];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  [(UIViewFloatAnimatableProperty *)self->_valueSpring invalidate];
  v3.receiver = self;
  v3.super_class = SBRingerVolumeSliderView;
  [(SBRingerVolumeSliderView *)&v3 dealloc];
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    backgroundView = self->_backgroundView;
    if (style)
    {
      tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
      [(UIView *)backgroundView setBackgroundColor:tertiaryLabelColor];

      fillView = self->_fillView;
      [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      quaternaryLabelColor = [MEMORY[0x277D75348] quaternaryLabelColor];
      [(UIView *)backgroundView setBackgroundColor:quaternaryLabelColor];

      fillView = self->_fillView;
      [MEMORY[0x277D75348] secondaryLabelColor];
    }
    v9 = ;
    [(UIView *)fillView setBackgroundColor:?];
  }
}

- (void)setLayoutAxis:(int64_t)axis
{
  if (self->_layoutAxis != axis)
  {
    self->_layoutAxis = axis;
    [(SBRingerVolumeSliderView *)self setNeedsLayout];

    [(SBRingerVolumeSliderView *)self layoutIfNeeded];
  }
}

- (void)setValue:(double)value animated:(BOOL)animated
{
  if (self->_value != value)
  {
    v7[6] = v4;
    v7[7] = v5;
    self->_value = value;
    if (animated)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __46__SBRingerVolumeSliderView_setValue_animated___block_invoke;
      v7[3] = &unk_2783A8BC8;
      v7[4] = self;
      *&v7[5] = value;
      [MEMORY[0x277D75D18] _animateUsingSpringWithTension:0 friction:v7 interactive:0 animations:281.84 completion:33.58];
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __46__SBRingerVolumeSliderView_setValue_animated___block_invoke_2;
      v6[3] = &unk_2783A8BC8;
      v6[4] = self;
      *&v6[5] = value;
      [MEMORY[0x277D75D18] performWithoutAnimation:v6];
    }
  }
}

- (void)layoutSubviews
{
  [(SBRingerVolumeSliderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIViewFloatAnimatableProperty *)self->_valueSpring presentationValue];
  v12 = v11;
  v41 = 0u;
  BYTE8(v41) = 1;
  BSUIConstrainValueToIntervalWithRubberBand();
  v14 = v13;
  if (v13 >= 0.0)
  {
    v14 = 0.0;
    if (v13 > 1.0)
    {
      v14 = v13 + -1.0;
    }
  }

  v15 = [(SBRingerVolumeSliderView *)self layoutAxis:v41];
  v16 = v15;
  v17 = v8 * v14 * 0.5 / 3.0;
  v18 = v8 + fabs(v17);
  v19 = fabs(v10 * v14 * 4.0 / 3.0);
  v20 = v10 - v19;
  v21 = v4 + v17;
  if (v14 >= 0.0)
  {
    v22 = v4;
  }

  else
  {
    v22 = v21;
  }

  v23 = v6 + v19 * 0.5;
  v24 = fabs(v8 * v14 * 4.0 / 3.0);
  v25 = v8 - v24;
  v26 = v4 + v24 * 0.5;
  v27 = fabs(v10 * v14 * 0.5 / 3.0);
  v28 = v6 - v27;
  if (v14 < 0.0)
  {
    v29 = v6;
  }

  else
  {
    v27 = v27 * 0.5;
    v29 = v28;
  }

  v30 = v10 + v27;
  if (v15 == 1)
  {
    v31 = v25;
  }

  else
  {
    v31 = v20;
  }

  if (v15 == 1)
  {
    v32 = v30;
  }

  else
  {
    v32 = v20;
  }

  if (v15 == 1)
  {
    v33 = v25;
  }

  else
  {
    v33 = v18;
  }

  if (v15 == 1)
  {
    v23 = v29;
  }

  else
  {
    v26 = v22;
  }

  [(UIView *)self->_backgroundView setFrame:v26, v23, v33, v32, v25, v28];
  v34 = v31 * 0.5;
  [(UIView *)self->_backgroundView _setContinuousCornerRadius:v34];
  if ([(SBRingerVolumeSliderView *)self isRoundedStyle])
  {
    [(UIView *)self->_fillView _setContinuousCornerRadius:v34];
  }

  v35 = fmin(fmax(v12, 0.0625), 1.0);
  v36 = v33 * v35;
  v37 = 0.0;
  v38 = v32 - v35 * v32;
  v39 = v32 * v35;
  if (v16 == 1)
  {
    v37 = v38;
    v36 = v33;
    v40 = v39;
  }

  else
  {
    v40 = v32;
  }

  [(UIView *)self->_fillView setFrame:0.0, v37, v36, v40];
}

@end