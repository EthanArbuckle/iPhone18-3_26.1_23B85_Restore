@interface PXStoryTVWatchNextCellView
- (PXStoryTVWatchNextCellView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PXStoryTVWatchNextCellView

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = PXStoryTVWatchNextCellView;
  [(PXGFocusEffectView *)&v49 layoutSubviews];
  v3 = [(PXGFocusEffectView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PXGFocusableView *)self userData];
  [(PXGradientView *)self->_gradientView setFrame:v5, v7, v9, v11];
  v13 = [v12 title];
  if (v13)
  {
    v14 = [v12 spec];
    v15 = [v12 title];
    v16 = [v14 attributedStringForTitle:v15];
    [(UILabel *)self->_titleLabel setAttributedText:v16];
  }

  else
  {
    [(UILabel *)self->_titleLabel setAttributedText:0];
  }

  v17 = [v12 subtitle];
  if (v17)
  {
    v18 = [v12 spec];
    v19 = [v12 subtitle];
    v20 = [v18 attributedStringForSubtitle:v19];
    [(UILabel *)self->_subtitleLabel setAttributedText:v20];
  }

  else
  {
    [(UILabel *)self->_subtitleLabel setAttributedText:0];
  }

  if (v12 && [v12 countdownValue] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!self->_countdownImage)
    {
      v30 = objc_alloc_init(_PXStoryShapeView);
      countdownRing = self->_countdownRing;
      self->_countdownRing = v30;

      [(_PXStoryShapeView *)self->_countdownRing setCenter:51.0, 51.0];
      [(_PXStoryShapeView *)self->_countdownRing setBounds:0.0, 0.0, 62.0, 62.0];
      v32 = [(PXGFocusEffectView *)self contentView];
      [v32 addSubview:self->_countdownRing];

      v28 = [MEMORY[0x1E69DC728] bezierPath];
      [(UIImageView *)v28 moveToPoint:31.0, 0.0];
      [(UIImageView *)v28 addArcWithCenter:1 radius:31.0 startAngle:31.0 endAngle:31.0 clockwise:4.72238898, 4.70238898];
      [(UIImageView *)v28 closePath];
      v27 = [(_PXStoryShapeView *)self->_countdownRing layer];
      [(_PXStoryShapeView *)v27 setPath:[(UIImageView *)v28 CGPath]];
      v33 = [MEMORY[0x1E69DC888] blackColor];
      v34 = [v33 colorWithAlphaComponent:0.5];
      -[_PXStoryShapeView setFillColor:](v27, "setFillColor:", [v34 CGColor]);

      v35 = [MEMORY[0x1E69DC888] whiteColor];
      -[_PXStoryShapeView setStrokeColor:](v27, "setStrokeColor:", [v35 CGColor]);

      [(_PXStoryShapeView *)v27 setLineWidth:4.0];
      [(_PXStoryShapeView *)v27 setLineCap:*MEMORY[0x1E6979E78]];
      v29 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
      v36 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
      [v29 setTimingFunction:v36];

      [v29 setDuration:{objc_msgSend(v12, "countdownValue") + 1.0}];
      [v29 setToValue:&unk_1F190C7F0];
      [v29 setFromValue:&unk_1F190C808];
      [v29 setRemovedOnCompletion:0];
      [v29 setFillMode:*MEMORY[0x1E69797E8]];
      [(_PXStoryShapeView *)v27 addAnimation:v29 forKey:@"strokeEnd"];
      v37 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      countdownImage = self->_countdownImage;
      self->_countdownImage = v37;

      [(UIImageView *)self->_countdownImage setCenter:51.0, 51.0];
      [(UIImageView *)self->_countdownImage setBounds:0.0, 0.0, 25.0, 25.0];
      v39 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIImageView *)self->_countdownImage setTintColor:v39];

      v40 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.fill"];
      [(UIImageView *)self->_countdownImage setImage:v40];

      v41 = [(PXGFocusEffectView *)self contentView];
      [v41 addSubview:self->_countdownImage];

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
      v27 = v47;
      v28 = v46;
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

- (PXStoryTVWatchNextCellView)initWithFrame:(CGRect)a3
{
  v49[2] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = PXStoryTVWatchNextCellView;
  v3 = [(PXGFocusEffectView *)&v47 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PXGFocusEffectView *)v3 contentView];
    [v5 bounds];
    v10 = [[PXGradientView alloc] initWithFrame:v6, v7, v8, v9];
    gradientView = v4->_gradientView;
    v4->_gradientView = v10;

    [v5 addSubview:v4->_gradientView];
    v12 = [MEMORY[0x1E69DC888] blackColor];
    v46 = [v12 colorWithAlphaComponent:0.0];

    v13 = [MEMORY[0x1E69DC888] blackColor];
    v45 = [v13 colorWithAlphaComponent:0.5];

    v49[0] = v46;
    v49[1] = v45;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    [(PXGradientView *)v4->_gradientView setColors:v14];

    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v15;

    v17 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_titleLabel setTextColor:v17];

    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v4->_titleLabel];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v18;

    v20 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:v20];

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v4->_subtitleLabel];
    v38 = MEMORY[0x1E696ACD8];
    v44 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v43 = [v5 leadingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:20.0];
    v48[0] = v42;
    v41 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v21 = v5;
    v40 = [v5 trailingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:-20.0];
    v48[1] = v39;
    v37 = [(UILabel *)v4->_titleLabel lastBaselineAnchor];
    v36 = [(UILabel *)v4->_subtitleLabel firstBaselineAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:-23.0];
    v48[2] = v35;
    v33 = [(UILabel *)v4->_subtitleLabel leadingAnchor];
    v22 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v23 = [v33 constraintEqualToAnchor:v22];
    v48[3] = v23;
    v24 = [(UILabel *)v4->_subtitleLabel trailingAnchor];
    v25 = v21;
    v34 = v21;
    v26 = [v21 trailingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26 constant:-20.0];
    v48[4] = v27;
    v28 = [(UILabel *)v4->_subtitleLabel lastBaselineAnchor];
    v29 = [v25 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-20.0];
    v48[5] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:6];
    [v38 activateConstraints:v31];
  }

  return v4;
}

@end