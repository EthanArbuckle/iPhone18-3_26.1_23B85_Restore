@interface PXStoryTVInfoPanelButton
+ (double)widthForText:(id)a3;
- (PXStoryTVInfoPanelButton)initWithFrame:(CGRect)a3;
- (id)elementTintColor;
- (unint64_t)elementControlState;
- (void)_updateAppearance;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setControlState:(unint64_t)a3;
- (void)setText:(id)a3;
- (void)updateFocusState:(id)a3;
@end

@implementation PXStoryTVInfoPanelButton

- (void)_updateAppearance
{
  if ([(PXStoryTVInfoPanelButton *)self isFocused])
  {
    v3 = _PXInfoMenuElementFocusViewColor();
    [(UIView *)self->_focusView setBackgroundColor:v3];
  }

  v4 = [(PXStoryTVInfoPanelButton *)self elementTintColor];
  [(UILabel *)self->_label setTextColor:v4];
}

- (void)setControlState:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 4)
    {
      if (a3 != 8)
      {
        return;
      }

      v5 = _PXInfoMenuElementFocusColor();
      p_label = &self->_label;
      [(UILabel *)self->_label setTextColor:v5];

      [(UIView *)self->_focusView setAlpha:0.0];
      v7 = _PXInfoMenuElementFocusViewColor();
      [(UIView *)self->_focusView setBackgroundColor:v7];

      v8 = 1.0;
      if ((MEMORY[0x1A590D320]() & 1) == 0)
      {
        v9 = 0.0;
LABEL_12:
        v14 = [(UILabel *)*p_label layer];
        *&v15 = v9;
        [v14 setShadowOpacity:v15];

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (_PXInfoMenuElementSelectedTextColor_onceToken != -1)
    {
      dispatch_once(&_PXInfoMenuElementSelectedTextColor_onceToken, &__block_literal_global_59_249337);
    }

    p_label = &self->_label;
    [(UILabel *)self->_label setTextColor:_PXInfoMenuElementSelectedTextColor_color];
    focusView = self->_focusView;
    v8 = 1.0;
    v11 = 1.0;
  }

  else
  {
    v12 = _PXInfoMenuElementNormalColor();
    p_label = &self->_label;
    [(UILabel *)self->_label setTextColor:v12];

    focusView = self->_focusView;
    v8 = 0.0;
    v11 = 0.0;
  }

  [(UIView *)focusView setAlpha:v11];
  v13 = _PXInfoMenuElementSelectedBackgroundColor();
  [(UIView *)self->_focusView setBackgroundColor:v13];

  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v9 = 1.0;
    goto LABEL_12;
  }

LABEL_13:
  [(UIView *)self->_backgroundView setAlpha:v8];
  floatingContentView = self->_floatingContentView;

  [(_UIFloatingContentView *)floatingContentView setControlState:a3];
}

- (void)updateFocusState:(id)a3
{
  v4 = a3;
  [(_UIFloatingContentView *)self->_floatingContentView setControlState:[(PXStoryTVInfoPanelButton *)self elementControlState]];
  v5 = [(PXStoryTVInfoPanelButton *)self elementTintColor];
  [(UILabel *)self->_label setTextColor:v5];

  if ([(PXStoryTVInfoPanelButton *)self isFocused])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__PXStoryTVInfoPanelButton_updateFocusState___block_invoke;
    v7[3] = &unk_1E774AF60;
    v7[4] = self;
    [v4 addCoordinatedFocusingAnimations:v7 completion:0];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__PXStoryTVInfoPanelButton_updateFocusState___block_invoke_2;
    v6[3] = &unk_1E774AF60;
    v6[4] = self;
    [v4 addCoordinatedUnfocusingAnimations:v6 completion:0];
  }
}

uint64_t __45__PXStoryTVInfoPanelButton_updateFocusState___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  v2 = _PXInfoMenuElementFocusViewColor();
  [*(*(a1 + 32) + 424) setBackgroundColor:v2];

  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 416) layer];
    [v3 setShadowOpacity:0.0];
  }

  [*(a1 + 32) setControlState:8];
  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

uint64_t __45__PXStoryTVInfoPanelButton_updateFocusState___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  v2 = _PXInfoMenuElementSelectedBackgroundColor();
  [*(*(a1 + 32) + 424) setBackgroundColor:v2];

  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 416) layer];
    LODWORD(v4) = 1.0;
    [v3 setShadowOpacity:v4];
  }

  [*(a1 + 32) setControlState:0];
  v5 = *(a1 + 32);

  return [v5 layoutIfNeeded];
}

- (void)setText:(id)a3
{
  v8 = a3;
  v4 = [(UILabel *)self->_label text];
  v5 = v4;
  if (v4 == v8)
  {
  }

  else
  {
    v6 = [v4 isEqualToString:v8];

    if ((v6 & 1) == 0)
    {
      [(UILabel *)self->_label setText:v8];
      [(UILabel *)self->_label sizeToFit];
      v7 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
      [v7 bounds];

      PXRectGetCenter();
    }
  }
}

- (id)elementTintColor
{
  if ([(PXStoryTVInfoPanelButton *)self isFocused])
  {
    _PXInfoMenuElementFocusColor();
  }

  else
  {
    _PXInfoMenuElementNormalColor();
  }
  v2 = ;

  return v2;
}

- (unint64_t)elementControlState
{
  if ([(PXStoryTVInfoPanelButton *)self isFocused])
  {
    return 8;
  }

  else
  {
    return 0;
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a4;
  v8.receiver = self;
  v8.super_class = PXStoryTVInfoPanelButton;
  [(PXStoryTVInfoPanelButton *)&v8 didUpdateFocusInContext:a3 withAnimationCoordinator:v6];
  if ([(PXStoryTVInfoPanelButton *)self isFocused])
  {
    v7 = [(PXStoryTVInfoPanelButton *)self superview];
    [v7 bringSubviewToFront:self];
  }

  [(PXStoryTVInfoPanelButton *)self updateFocusState:v6];
}

- (PXStoryTVInfoPanelButton)initWithFrame:(CGRect)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = PXStoryTVInfoPanelButton;
  v3 = [(PXStoryTVInfoPanelButton *)&v43 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  p_isa = &v3->super.super.super.isa;
  if (v3)
  {
    [(PXStoryTVInfoPanelButton *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [p_isa setClipsToBounds:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DD4D0]);
    v6 = p_isa[51];
    p_isa[51] = v5;

    [p_isa[51] setTranslatesAutoresizingMaskIntoConstraints:0];
    [p_isa[51] setClipsContentToBounds:1];
    [p_isa[51] setClipsToBounds:0];
    [p_isa[51] setShadowRadius:18.0];
    [p_isa[51] setShadowVerticalOffset:10.0];
    [p_isa[51] setShadowOpacity:0.3];
    [p_isa[51] setFocusedSizeIncrease:20.0];
    v7 = 32.0;
    if (MEMORY[0x1A590D320]([p_isa[51] setContinuousCornerEnabled:1]))
    {
      v8 = 32.0;
    }

    else
    {
      v8 = 12.0;
    }

    [p_isa[51] setCornerRadius:v8];
    [p_isa[51] setContentMotionRotation:*MEMORY[0x1E695EFF8] translation:{*(MEMORY[0x1E695EFF8] + 8), 4.0, 4.0}];
    v9 = p_isa[51];
    v10 = _PXInfoMenuElementFocusViewColor();
    [v9 setBackgroundColor:v10 forState:8];

    v11 = p_isa[51];
    v12 = [MEMORY[0x1E69DC888] whiteColor];
    [v11 setBackgroundColor:v12 forState:1];

    v13 = p_isa[51];
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [v13 setBackgroundColor:v14 forState:4];

    v15 = [p_isa[51] visualEffectContainerView];
    [v15 setClipsToBounds:1];

    if (!MEMORY[0x1A590D320]())
    {
      v7 = 12.0;
    }

    v16 = [p_isa[51] visualEffectContainerView];
    v17 = [v16 layer];
    [v17 setCornerRadius:v7];

    v18 = *MEMORY[0x1E69796E8];
    v19 = [p_isa[51] visualEffectContainerView];
    v20 = [v19 layer];
    [v20 setCornerCurve:v18];

    if (MEMORY[0x1A590D320]([p_isa addSubview:p_isa[51]]))
    {
      v21 = p_isa[51];
      v22 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:8 size:2];
      [v21 setBackgroundMaterial:v22 forState:0];

      v23 = p_isa[51];
      v24 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:8 size:2];
      [v23 setBackgroundMaterial:v24 forState:4];
    }

    else
    {
      v25 = objc_alloc(MEMORY[0x1E69DD298]);
      v26 = [MEMORY[0x1E69DC730] effectWithStyle:4017];
      v27 = [v25 initWithEffect:v26];
      v28 = p_isa[54];
      p_isa[54] = v27;

      v29 = p_isa[51];
      v30 = [MEMORY[0x1E69DC888] clearColor];
      [v29 setBackgroundColor:v30 forState:0];

      [p_isa[54] setTranslatesAutoresizingMaskIntoConstraints:0];
      [p_isa[54] setAlpha:0.0];
      v24 = [p_isa[51] visualEffectContainerView];
      [v24 addSubview:p_isa[54]];
    }

    v31 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v32 = p_isa[53];
    p_isa[53] = v31;

    v33 = MEMORY[0x1A590D320]();
    v34 = 32.0;
    if (!v33)
    {
      v34 = 12.0;
    }

    [p_isa[53] _setContinuousCornerRadius:v34];
    v35 = _PXInfoMenuElementFocusViewColor();
    [p_isa[53] setBackgroundColor:v35];

    [p_isa[53] setAlpha:0.0];
    v36 = [p_isa[51] contentView];
    [v36 bounds];
    [p_isa[53] setFrame:?];

    [p_isa[53] setAutoresizingMask:18];
    [p_isa[53] setClipsToBounds:1];
    v37 = [p_isa[51] contentView];
    [v37 addSubview:p_isa[53]];

    v38 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v39 = p_isa[52];
    p_isa[52] = v38;

    v40 = [MEMORY[0x1E69DB878] systemFontOfSize:30.0 weight:*MEMORY[0x1E69DB958]];
    [p_isa[52] setFont:v40];

    v41 = _PXInfoMenuElementNormalColor();
    [p_isa[52] setTextColor:v41];

    [p_isa[51] contentView];
    [objc_claimAutoreleasedReturnValue() bounds];
    PXRectGetCenter();
  }

  return 0;
}

+ (double)widthForText:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (MEMORY[0x1A590D320]())
  {
    v4 = 60.0;
  }

  else
  {
    v4 = 40.0;
  }

  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:30.0 weight:*MEMORY[0x1E69DB958]];
  v10 = *MEMORY[0x1E69DB648];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v3 sizeWithAttributes:v6];
  v8 = v7;

  return v4 + ceil(v8);
}

@end