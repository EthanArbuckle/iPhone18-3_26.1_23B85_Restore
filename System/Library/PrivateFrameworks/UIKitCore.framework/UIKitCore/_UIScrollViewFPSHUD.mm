@interface _UIScrollViewFPSHUD
+ (id)createFPSHUD;
- (UILabel)createFormattedLabel;
- (_UIScrollViewFPSHUD)initWithFrame:(CGRect)frame;
- (void)displayUpdateRequest:(uint64_t)request reportedRateForPreviousFrame:;
- (void)updateDebugOverlayBounds:(CGFloat)bounds withScrollView:(CGFloat)view;
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

- (_UIScrollViewFPSHUD)initWithFrame:(CGRect)frame
{
  v42[8] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = _UIScrollViewFPSHUD;
  v3 = [(UIView *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_previousFramePreferred = 0;
    createFormattedLabel = [_UIScrollViewFPSHUD createFormattedLabel];
    preferredLabel = v4->_preferredLabel;
    v4->_preferredLabel = createFormattedLabel;

    createFormattedLabel2 = [_UIScrollViewFPSHUD createFormattedLabel];
    reportedLabel = v4->_reportedLabel;
    v4->_reportedLabel = createFormattedLabel2;

    createFormattedLabel3 = [_UIScrollViewFPSHUD createFormattedLabel];
    mismatchesLabel = v4->_mismatchesLabel;
    v4->_mismatchesLabel = createFormattedLabel3;

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
    trailingAnchor = [(UIView *)v17 trailingAnchor];
    trailingAnchor2 = [(UIView *)v4 trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v42[0] = v38;
    centerYAnchor = [(UIView *)v17 centerYAnchor];
    centerYAnchor2 = [(UIView *)v4 centerYAnchor];
    v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v42[1] = v35;
    heightAnchor = [(UIView *)v4->_preferredGraph heightAnchor];
    v33 = [heightAnchor constraintEqualToConstant:30.0];
    v42[2] = v33;
    widthAnchor = [(UIView *)v4->_preferredGraph widthAnchor];
    v30 = [widthAnchor constraintEqualToConstant:160.0];
    v42[3] = v30;
    heightAnchor2 = [(UIView *)v4->_reportedGraph heightAnchor];
    v20 = [heightAnchor2 constraintEqualToConstant:30.0];
    v42[4] = v20;
    widthAnchor2 = [(UIView *)v4->_reportedGraph widthAnchor];
    v22 = [widthAnchor2 constraintEqualToConstant:160.0];
    v42[5] = v22;
    heightAnchor3 = [(UIView *)v4->_mismatchesGraph heightAnchor];
    v24 = [heightAnchor3 constraintEqualToConstant:5.0];
    v42[6] = v24;
    widthAnchor3 = [(UIView *)v4->_mismatchesGraph widthAnchor];
    v26 = [widthAnchor3 constraintEqualToConstant:160.0];
    v42[7] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:8];
    [v32 activateConstraints:v27];
  }

  return v4;
}

- (void)displayUpdateRequest:(uint64_t)request reportedRateForPreviousFrame:
{
  if (self)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Preferred: %d", *(self + 456)];
    [*(self + 408) setText:v6];

    v7 = *(self + 432);
    if (v7)
    {
      v8 = *(self + 456);
      memmove((v7 + 412), (v7 + 408), 0x254uLL);
      *(v7 + 408) = v8;
      [v7 setNeedsDisplay];
    }

    request = [MEMORY[0x1E696AEC0] stringWithFormat:@"Actual: %d", request];
    [*(self + 416) setText:request];

    v10 = *(self + 440);
    if (v10)
    {
      memmove((v10 + 412), (v10 + 408), 0x254uLL);
      *(v10 + 408) = request;
      [v10 setNeedsDisplay];
    }

    v11 = *(self + 448);
    if (v11)
    {
      if (*(self + 456) == request)
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

    *(self + 456) = *(a2 + 8);
  }
}

- (void)updateDebugOverlayBounds:(CGFloat)bounds withScrollView:(CGFloat)view
{
  v11 = a2;
  if (self)
  {
    v13 = v11;
    if ([self isDescendantOfView:v11])
    {
      [v13 bringSubviewToFront:self];
    }

    else
    {
      [v13 addSubview:self];
    }

    [self frame];
    v16.origin.x = bounds;
    v16.origin.y = view;
    v16.size.width = a5;
    v16.size.height = a6;
    v12 = CGRectEqualToRect(v15, v16);
    v11 = v13;
    if (!v12)
    {
      [self setFrame:{bounds, view, a5, a6}];
      v11 = v13;
    }
  }
}

@end