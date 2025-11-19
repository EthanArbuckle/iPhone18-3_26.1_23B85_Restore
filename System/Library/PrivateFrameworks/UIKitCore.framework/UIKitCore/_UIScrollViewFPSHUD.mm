@interface _UIScrollViewFPSHUD
+ (id)createFPSHUD;
- (UILabel)createFormattedLabel;
- (_UIScrollViewFPSHUD)initWithFrame:(CGRect)a3;
- (void)displayUpdateRequest:(uint64_t)a3 reportedRateForPreviousFrame:;
- (void)updateDebugOverlayBounds:(CGFloat)a3 withScrollView:(CGFloat)a4;
@end

@implementation _UIScrollViewFPSHUD

+ (id)createFPSHUD
{
  v0 = objc_opt_self();
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v1 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    goto LABEL_4;
  }

  v4 = _UIInternalPreference_UIScrollViewFPSHUD;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_UIScrollViewFPSHUD)
  {
    goto LABEL_4;
  }

  while (v1 >= v4)
  {
    _UIInternalPreferenceSync(v1, &_UIInternalPreference_UIScrollViewFPSHUD, @"UIScrollViewFPSHUD", _UIInternalPreferenceUpdateBool);
    v2 = 0;
    v4 = _UIInternalPreference_UIScrollViewFPSHUD;
    if (v1 == _UIInternalPreference_UIScrollViewFPSHUD)
    {
      goto LABEL_5;
    }
  }

  if (!byte_1ED48B484)
  {
LABEL_4:
    v2 = 0;
  }

  else
  {
    v5 = [v0 alloc];
    v2 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

LABEL_5:

  return v2;
}

- (UILabel)createFormattedLabel
{
  v0 = objc_alloc_init(UILabel);
  [(UILabel *)v0 setTextAlignment:0];
  v1 = +[UIColor systemWhiteColor];
  [(UILabel *)v0 setTextColor:v1];

  return v0;
}

- (_UIScrollViewFPSHUD)initWithFrame:(CGRect)a3
{
  v42[8] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = _UIScrollViewFPSHUD;
  v3 = [(UIView *)&v41 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_previousFramePreferred = 0;
    v5 = [_UIScrollViewFPSHUD createFormattedLabel];
    preferredLabel = v4->_preferredLabel;
    v4->_preferredLabel = v5;

    v7 = [_UIScrollViewFPSHUD createFormattedLabel];
    reportedLabel = v4->_reportedLabel;
    v4->_reportedLabel = v7;

    v9 = [_UIScrollViewFPSHUD createFormattedLabel];
    mismatchesLabel = v4->_mismatchesLabel;
    v4->_mismatchesLabel = v9;

    [(UILabel *)v4->_mismatchesLabel setText:@"Mismatches"];
    v11 = objc_alloc_init(_UIScrollViewFPSHUDGraphView);
    preferredGraph = v4->_preferredGraph;
    v4->_preferredGraph = v11;

    v13 = objc_alloc_init(_UIScrollViewFPSHUDGraphView);
    reportedGraph = v4->_reportedGraph;
    v4->_reportedGraph = v13;

    v15 = objc_alloc_init(_UIScrollViewFPSHUDGraphView);
    mismatchesGraph = v4->_mismatchesGraph;
    v4->_mismatchesGraph = v15;

    v17 = objc_alloc_init(UIStackView);
    [(UIStackView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v17 setAxis:1];
    [(UIStackView *)v17 setDistribution:3];
    v18 = +[UIColor systemBlackColor];
    v19 = [v18 colorWithAlphaComponent:0.800000012];
    [(UIStackView *)v17 setBackgroundColor:v19];

    [(UIStackView *)v17 addArrangedSubview:v4->_preferredLabel];
    [(UIStackView *)v17 addArrangedSubview:v4->_preferredGraph];
    [(UIStackView *)v17 addArrangedSubview:v4->_reportedLabel];
    [(UIStackView *)v17 addArrangedSubview:v4->_reportedGraph];
    [(UIStackView *)v17 addArrangedSubview:v4->_mismatchesLabel];
    [(UIStackView *)v17 addArrangedSubview:v4->_mismatchesGraph];
    [(UIStackView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v17];
    v32 = MEMORY[0x1E69977A0];
    v40 = [(UIView *)v17 trailingAnchor];
    v39 = [(UIView *)v4 trailingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v42[0] = v38;
    v37 = [(UIView *)v17 centerYAnchor];
    v36 = [(UIView *)v4 centerYAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v42[1] = v35;
    v34 = [(UIView *)v4->_preferredGraph heightAnchor];
    v33 = [v34 constraintEqualToConstant:30.0];
    v42[2] = v33;
    v31 = [(UIView *)v4->_preferredGraph widthAnchor];
    v30 = [v31 constraintEqualToConstant:160.0];
    v42[3] = v30;
    v29 = [(UIView *)v4->_reportedGraph heightAnchor];
    v20 = [v29 constraintEqualToConstant:30.0];
    v42[4] = v20;
    v21 = [(UIView *)v4->_reportedGraph widthAnchor];
    v22 = [v21 constraintEqualToConstant:160.0];
    v42[5] = v22;
    v23 = [(UIView *)v4->_mismatchesGraph heightAnchor];
    v24 = [v23 constraintEqualToConstant:5.0];
    v42[6] = v24;
    v25 = [(UIView *)v4->_mismatchesGraph widthAnchor];
    v26 = [v25 constraintEqualToConstant:160.0];
    v42[7] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:8];
    [v32 activateConstraints:v27];
  }

  return v4;
}

- (void)displayUpdateRequest:(uint64_t)a3 reportedRateForPreviousFrame:
{
  if (a1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Preferred: %d", *(a1 + 456)];
    [*(a1 + 408) setText:v6];

    v7 = *(a1 + 432);
    if (v7)
    {
      v8 = *(a1 + 456);
      memmove((v7 + 412), (v7 + 408), 0x254uLL);
      *(v7 + 408) = v8;
      [v7 setNeedsDisplay];
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Actual: %d", a3];
    [*(a1 + 416) setText:v9];

    v10 = *(a1 + 440);
    if (v10)
    {
      memmove((v10 + 412), (v10 + 408), 0x254uLL);
      *(v10 + 408) = a3;
      [v10 setNeedsDisplay];
    }

    v11 = *(a1 + 448);
    if (v11)
    {
      if (*(a1 + 456) == a3)
      {
        v12 = 301;
      }

      else
      {
        v12 = 300;
      }

      memmove((v11 + 412), (v11 + 408), 0x254uLL);
      *(v11 + 408) = v12;
      [v11 setNeedsDisplay];
    }

    *(a1 + 456) = *(a2 + 8);
  }
}

- (void)updateDebugOverlayBounds:(CGFloat)a3 withScrollView:(CGFloat)a4
{
  v11 = a2;
  if (a1)
  {
    v13 = v11;
    if ([a1 isDescendantOfView:v11])
    {
      [v13 bringSubviewToFront:a1];
    }

    else
    {
      [v13 addSubview:a1];
    }

    [a1 frame];
    v16.origin.x = a3;
    v16.origin.y = a4;
    v16.size.width = a5;
    v16.size.height = a6;
    v12 = CGRectEqualToRect(v15, v16);
    v11 = v13;
    if (!v12)
    {
      [a1 setFrame:{a3, a4, a5, a6}];
      v11 = v13;
    }
  }
}

@end