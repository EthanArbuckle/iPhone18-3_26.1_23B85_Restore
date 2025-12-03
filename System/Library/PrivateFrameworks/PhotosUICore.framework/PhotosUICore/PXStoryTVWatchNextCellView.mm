@interface PXStoryTVWatchNextCellView
- (PXStoryTVWatchNextCellView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PXStoryTVWatchNextCellView

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = PXStoryTVWatchNextCellView;
  [(PXGFocusEffectView *)&v49 layoutSubviews];
  contentView = [(PXGFocusEffectView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  userData = [(PXGFocusableView *)self userData];
  [(PXGradientView *)self->_gradientView setFrame:v5, v7, v9, v11];
  title = [userData title];
  if (title)
  {
    spec = [userData spec];
    title2 = [userData title];
    v16 = [spec attributedStringForTitle:title2];
    [(UILabel *)self->_titleLabel setAttributedText:v16];
  }

  else
  {
    [(UILabel *)self->_titleLabel setAttributedText:0];
  }

  subtitle = [userData subtitle];
  if (subtitle)
  {
    spec2 = [userData spec];
    subtitle2 = [userData subtitle];
    v20 = [spec2 attributedStringForSubtitle:subtitle2];
    [(UILabel *)self->_subtitleLabel setAttributedText:v20];
  }

  else
  {
    [(UILabel *)self->_subtitleLabel setAttributedText:0];
  }

  if (userData && [userData countdownValue] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!self->_countdownImage)
    {
      v30 = objc_alloc_init(_PXStoryShapeView);
      countdownRing = self->_countdownRing;
      self->_countdownRing = v30;

      [(_PXStoryShapeView *)self->_countdownRing setCenter:51.0, 51.0];
      [(_PXStoryShapeView *)self->_countdownRing setBounds:0.0, 0.0, 62.0, 62.0];
      contentView2 = [(PXGFocusEffectView *)self contentView];
      [contentView2 addSubview:self->_countdownRing];

      bezierPath = [MEMORY[0x1E69DC728] bezierPath];
      [(UIImageView *)bezierPath moveToPoint:31.0, 0.0];
      [(UIImageView *)bezierPath addArcWithCenter:1 radius:31.0 startAngle:31.0 endAngle:31.0 clockwise:4.72238898, 4.70238898];
      [(UIImageView *)bezierPath closePath];
      layer = [(_PXStoryShapeView *)self->_countdownRing layer];
      [(_PXStoryShapeView *)layer setPath:[(UIImageView *)bezierPath CGPath]];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v34 = [blackColor colorWithAlphaComponent:0.5];
      -[_PXStoryShapeView setFillColor:](layer, "setFillColor:", [v34 CGColor]);

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      -[_PXStoryShapeView setStrokeColor:](layer, "setStrokeColor:", [whiteColor CGColor]);

      [(_PXStoryShapeView *)layer setLineWidth:4.0];
      [(_PXStoryShapeView *)layer setLineCap:*MEMORY[0x1E6979E78]];
      v29 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
      v36 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
      [v29 setTimingFunction:v36];

      [v29 setDuration:{objc_msgSend(userData, "countdownValue") + 1.0}];
      [v29 setToValue:&unk_1F190C7F0];
      [v29 setFromValue:&unk_1F190C808];
      [v29 setRemovedOnCompletion:0];
      [v29 setFillMode:*MEMORY[0x1E69797E8]];
      [(_PXStoryShapeView *)layer addAnimation:v29 forKey:@"strokeEnd"];
      v37 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      countdownImage = self->_countdownImage;
      self->_countdownImage = v37;

      [(UIImageView *)self->_countdownImage setCenter:51.0, 51.0];
      [(UIImageView *)self->_countdownImage setBounds:0.0, 0.0, 25.0, 25.0];
      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIImageView *)self->_countdownImage setTintColor:whiteColor2];

      v40 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.fill"];
      [(UIImageView *)self->_countdownImage setImage:v40];

      contentView3 = [(PXGFocusEffectView *)self contentView];
      [contentView3 addSubview:self->_countdownImage];

      [(_PXStoryShapeView *)self->_countdownRing setAlpha:0.0];
      [(UIImageView *)self->_countdownImage setAlpha:0.0];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __44__PXStoryTVWatchNextCellView_layoutSubviews__block_invoke;
      v48[3] = &unk_1E774C648;
      v48[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v48 animations:0.5];
      goto LABEL_13;
    }
  }

  else
  {
    v21 = self->_countdownImage;
    if (v21)
    {
      v22 = v21;
      v23 = self->_countdownRing;
      v24 = self->_countdownImage;
      self->_countdownImage = 0;

      v25 = self->_countdownRing;
      self->_countdownRing = 0;

      v26 = MEMORY[0x1E69DD250];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __44__PXStoryTVWatchNextCellView_layoutSubviews__block_invoke_2;
      v45[3] = &unk_1E774C620;
      v46 = v22;
      v47 = v23;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __44__PXStoryTVWatchNextCellView_layoutSubviews__block_invoke_3;
      v42[3] = &unk_1E7749628;
      v43 = v46;
      v44 = v47;
      layer = v47;
      bezierPath = v46;
      [v26 animateWithDuration:v45 animations:v42 completion:0.5];

      v29 = v46;
LABEL_13:
    }
  }
}

uint64_t __44__PXStoryTVWatchNextCellView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 544) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 536);

  return [v2 setAlpha:1.0];
}

uint64_t __44__PXStoryTVWatchNextCellView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __44__PXStoryTVWatchNextCellView_layoutSubviews__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (PXStoryTVWatchNextCellView)initWithFrame:(CGRect)frame
{
  v49[2] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = PXStoryTVWatchNextCellView;
  v3 = [(PXGFocusEffectView *)&v47 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PXGFocusEffectView *)v3 contentView];
    [contentView bounds];
    v10 = [[PXGradientView alloc] initWithFrame:v6, v7, v8, v9];
    gradientView = v4->_gradientView;
    v4->_gradientView = v10;

    [contentView addSubview:v4->_gradientView];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v46 = [blackColor colorWithAlphaComponent:0.0];

    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    v45 = [blackColor2 colorWithAlphaComponent:0.5];

    v49[0] = v46;
    v49[1] = v45;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    [(PXGradientView *)v4->_gradientView setColors:v14];

    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v15;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_titleLabel setTextColor:whiteColor];

    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_titleLabel];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v18;

    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:whiteColor2];

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_subtitleLabel];
    v38 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v4->_titleLabel leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v48[0] = v42;
    trailingAnchor = [(UILabel *)v4->_titleLabel trailingAnchor];
    v21 = contentView;
    trailingAnchor2 = [contentView trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v48[1] = v39;
    lastBaselineAnchor = [(UILabel *)v4->_titleLabel lastBaselineAnchor];
    firstBaselineAnchor = [(UILabel *)v4->_subtitleLabel firstBaselineAnchor];
    v35 = [lastBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-23.0];
    v48[2] = v35;
    leadingAnchor3 = [(UILabel *)v4->_subtitleLabel leadingAnchor];
    leadingAnchor4 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v48[3] = v23;
    trailingAnchor3 = [(UILabel *)v4->_subtitleLabel trailingAnchor];
    v25 = v21;
    v34 = v21;
    trailingAnchor4 = [v21 trailingAnchor];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
    v48[4] = v27;
    lastBaselineAnchor2 = [(UILabel *)v4->_subtitleLabel lastBaselineAnchor];
    bottomAnchor = [v25 bottomAnchor];
    v30 = [lastBaselineAnchor2 constraintEqualToAnchor:bottomAnchor constant:-20.0];
    v48[5] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:6];
    [v38 activateConstraints:v31];
  }

  return v4;
}

@end