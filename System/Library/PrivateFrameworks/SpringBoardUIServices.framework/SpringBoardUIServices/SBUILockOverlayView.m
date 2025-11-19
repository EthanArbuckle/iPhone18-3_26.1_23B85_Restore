@interface SBUILockOverlayView
- (SBUILockOverlayView)initWithFrame:(CGRect)a3 style:(unint64_t)a4;
- (SBUILockOverlayViewDelegate)delegate;
- (id)_actionFont;
- (id)_legibilitySettingsForStyle:(unint64_t)a3;
- (id)_titleFont;
- (unint64_t)_numberOfLinesForText:(id)a3 font:(id)a4 size:(CGSize)a5;
- (void)_buttonPressed;
- (void)_sizeView:(id)a3 forFixedWith:(BOOL)a4;
- (void)layoutSubviews;
@end

@implementation SBUILockOverlayView

- (SBUILockOverlayView)initWithFrame:(CGRect)a3 style:(unint64_t)a4
{
  v55.receiver = self;
  v55.super_class = SBUILockOverlayView;
  v5 = [(SBUILockOverlayView *)&v55 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = a4;
    [(SBUILockOverlayView *)v5 _maxLabelWidth];
    v8 = v7;
    v9 = [(SBUILockOverlayView *)v6 _actionFont];
    [v9 pointSize];
    v11 = v10;
    v12 = [(SBUILockOverlayView *)v6 _titleFont];
    [v12 pointSize];
    v14 = v11 / v13;

    v15 = [SBLockOverlayStylePropertiesFactory overlayPropertiesFactoryWithStyle:a4];
    underlayPropertiesFactory = v6->_underlayPropertiesFactory;
    v6->_underlayPropertiesFactory = v15;

    v17 = [(SBUILockOverlayView *)v6 _legibilitySettingsForStyle:a4];
    legibilitySettings = v6->_legibilitySettings;
    v6->_legibilitySettings = v17;

    v19 = [UIResizableView alloc];
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v22 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
    v24 = [(UIResizableView *)v19 initWithFrame:*MEMORY[0x1E695F058], v21, v22, v23];
    textContainerView = v6->_textContainerView;
    v6->_textContainerView = v24;

    v26 = v6->_textContainerView;
    v27 = [MEMORY[0x1E69DC888] clearColor];
    [(UIResizableView *)v26 setBackgroundColor:v27];

    [(SBUILockOverlayView *)v6 addSubview:v6->_textContainerView];
    v28 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v20, v21, v22, v23}];
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v28;

    [(UILabel *)v6->_titleLabel setTextAlignment:1];
    v30 = v6->_titleLabel;
    v31 = [(SBUILockOverlayView *)v6 _titleFont];
    [(UILabel *)v30 setFont:v31];

    v32 = v6->_titleLabel;
    v33 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v32 setTextColor:v33];

    v34 = v6->_titleLabel;
    v35 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v34 setBackgroundColor:v35];

    [(UILabel *)v6->_titleLabel setPreferredMaxLayoutWidth:v8];
    [(UILabel *)v6->_titleLabel setNumberOfLines:1];
    [(UILabel *)v6->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v6->_titleLabel setMinimumScaleFactor:v14];
    [(UIResizableView *)v6->_textContainerView addSubview:v6->_titleLabel];
    v36 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v20, v21, v22, v23}];
    subtitleLabel = v6->_subtitleLabel;
    v6->_subtitleLabel = v36;

    [(UILabel *)v6->_subtitleLabel setTextAlignment:1];
    v38 = v6->_subtitleLabel;
    v39 = [(SBUILockOverlayView *)v6 _subtitleFont];
    [(UILabel *)v38 setFont:v39];

    v40 = v6->_subtitleLabel;
    v41 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v40 setTextColor:v41];

    v42 = v6->_subtitleLabel;
    v43 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v42 setBackgroundColor:v43];

    [(UILabel *)v6->_subtitleLabel setNumberOfLines:10];
    [(UIResizableView *)v6->_textContainerView addSubview:v6->_subtitleLabel];
    v44 = [MEMORY[0x1E69DC738] buttonWithType:1];
    actionButton = v6->_actionButton;
    v6->_actionButton = v44;

    v46 = v6->_actionButton;
    v47 = [MEMORY[0x1E69DC888] clearColor];
    [(UIButton *)v46 setBackgroundColor:v47];

    [(UIButton *)v6->_actionButton addTarget:v6 action:sel__buttonPressed forControlEvents:64];
    v48 = [(UIButton *)v6->_actionButton titleLabel];
    [v48 setPreferredMaxLayoutWidth:v8];

    v49 = [(UIButton *)v6->_actionButton titleLabel];
    [v49 setNumberOfLines:2];

    v50 = [(UIButton *)v6->_actionButton titleLabel];
    v51 = [(SBUILockOverlayView *)v6 _actionFont];
    [v50 setFont:v51];

    v52 = v6->_actionButton;
    v53 = [MEMORY[0x1E69DC888] colorWithRed:0.203921569 green:0.666666667 blue:0.862745098 alpha:1.0];
    [(UIButton *)v52 setTitleColor:v53 forState:0];

    [(UIResizableView *)v6->_textContainerView addSubview:v6->_actionButton];
  }

  return v6;
}

- (id)_legibilitySettingsForStyle:(unint64_t)a3
{
  if (a3 == 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [MEMORY[0x1E69DD5B8] sharedInstanceForStyle:v3];

  return v4;
}

- (void)layoutSubviews
{
  v87.receiver = self;
  v87.super_class = SBUILockOverlayView;
  [(SBUILockOverlayView *)&v87 layoutSubviews];
  [(SBUILockOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  p_titleLabel = &self->_titleLabel;
  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  titleLabel = self->_titleLabel;
  v9 = [(SBUILockOverlayView *)self _titleFont];
  [(UILabel *)titleLabel setFont:v9];

  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  v10 = [(UILabel *)self->_titleLabel text];
  v11 = [v10 length];

  if (v11)
  {
    [(SBUILockOverlayView *)self _sizeView:self->_titleLabel forFixedWith:1];
    v12 = [(UILabel *)*p_titleLabel attributedText];
    [v12 size];
    v14 = v13;
    [(UILabel *)*p_titleLabel bounds];
    v16 = v15;

    if (v14 > v16)
    {
      [(UILabel *)*p_titleLabel setNumberOfLines:2];
      v17 = *p_titleLabel;
      v18 = [(SBUILockOverlayView *)self _actionFont];
      [(UILabel *)v17 setFont:v18];

      [(UILabel *)*p_titleLabel setAdjustsFontSizeToFitWidth:0];
      [(SBUILockOverlayView *)self _sizeView:*p_titleLabel forFixedWith:1];
    }
  }

  else
  {
    [(UILabel *)*p_titleLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  p_subtitleLabel = &self->_subtitleLabel;
  v20 = [(UILabel *)self->_subtitleLabel text];
  v21 = [v20 length];

  if (v21)
  {
    [(SBUILockOverlayView *)self _sizeView:self->_subtitleLabel forFixedWith:1];
  }

  else
  {
    [(UILabel *)*p_subtitleLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v22 = [(UIButton *)self->_actionButton titleForState:0];
  if ([v22 length])
  {
  }

  else
  {
    v23 = [(UIButton *)self->_actionButton attributedTitleForState:0];
    v24 = [v23 length];

    if (!v24)
    {
      [(UIButton *)self->_actionButton setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v25 = 0;
      goto LABEL_12;
    }
  }

  [(SBUILockOverlayView *)self _sizeView:self->_actionButton forFixedWith:0];
  v25 = 1;
LABEL_12:
  [(UILabel *)*p_subtitleLabel frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *p_titleLabel;
  if (v21 && v11)
  {
    [(UILabel *)v32 _baselineOffsetFromBottom];
    v34 = v33;
    [(UILabel *)*p_subtitleLabel _firstLineBaselineOffsetFromBoundsTop];
    v36 = v34 + v35;
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        v37 = 49.0;
      }

      else
      {
        v37 = 29.0;
      }
    }

    else
    {
      v42 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v42 userInterfaceIdiom] == 1)
      {
        v37 = 49.0;
      }

      else
      {
        v37 = 29.0;
      }
    }

    v43 = v37 - v36;
    [(UILabel *)*p_titleLabel origin];
    v45 = v44;
    [(UILabel *)*p_titleLabel size];
    v41 = SBFloatFloorForScale(v43 + v45 + v46, 0.0);
  }

  else
  {
    [(UILabel *)v32 origin];
    v39 = v38;
    [(UILabel *)*p_titleLabel size];
    v41 = v39 + v40;
  }

  v47 = (v21 | v11);
  [(UILabel *)*p_subtitleLabel setFrame:v27, v41, v29, v31];
  [(UIButton *)self->_actionButton frame];
  if (v21 | v11 && (v21 ? (v48 = &self->_subtitleLabel) : (v48 = &self->_titleLabel), (v47 = *v48) != 0 ? (v49 = v25) : (v49 = 0), v49 == 1))
  {
    v50 = [(UIButton *)self->_actionButton titleLabel];
    [(UILabel *)v47 _baselineOffsetFromBottom];
    v52 = v51;
    [v50 _firstLineBaselineOffsetFromBoundsTop];
    v54 = v53;
    [v50 origin];
    v56 = v52 + v54 + v55;
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        v57 = 48.0;
      }

      else
      {
        v57 = 43.5;
      }
    }

    else
    {
      v58 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v58 userInterfaceIdiom] == 1)
      {
        v57 = 48.0;
      }

      else
      {
        v57 = 43.5;
      }
    }

    v59 = v57 - v56;
    [(UILabel *)v47 origin];
    v61 = v60;
    [(UILabel *)v47 size];
    SBFloatFloorForScale(v59 + v61 + v62, 0.0);
  }

  else
  {
    [(UILabel *)*p_subtitleLabel origin];
    [(UILabel *)*p_subtitleLabel size];
  }

  UIRectCenteredXInRect();
  [(UIButton *)self->_actionButton setFrame:?];
  [(SBUILockOverlayView *)self _sizeView:self->_textContainerView forFixedWith:1];
  [(UIResizableView *)self->_textContainerView frame];
  v64 = v63;
  v66 = v65;
  v67 = SBFloatFloorForScale(v4 * 0.5 - v63 * 0.5, 0.0);
  if (v11)
  {
    v68 = [(UILabel *)*p_titleLabel font];
    [v68 descender];
    v70 = v69;

    if ((v25 & 1) == 0)
    {
      if (!v21)
      {
        v71 = *p_titleLabel;
LABEL_50:
        v74 = [(UILabel *)v71 font];
LABEL_54:
        v78 = v74;
        [v74 descender];
        v75 = v79;

        goto LABEL_55;
      }

LABEL_49:
      v71 = *p_subtitleLabel;
      goto LABEL_50;
    }

LABEL_53:
    v74 = [(SBUILockOverlayView *)self _actionFont];
    goto LABEL_54;
  }

  if (v21)
  {
    v72 = [(UILabel *)*p_subtitleLabel font];
    [v72 descender];
    v70 = v73;

    if ((v25 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  v75 = 0.0;
  v70 = 0.0;
  if (v25)
  {
    v76 = [(SBUILockOverlayView *)self _actionFont];
    [v76 descender];
    v70 = v77;

    goto LABEL_53;
  }

LABEL_55:
  [(UIResizableView *)self->_textContainerView setFrame:v67, SBFloatFloorForScale(v6 * 0.5 - (v66 + fabs(v70) - fabs(v75)) * 0.5, 0.0), v64, v66];
  [(UIButton *)self->_actionButton frame];
  v81 = v80;
  v83 = v82;
  v85 = v84;
  [(UIResizableView *)self->_textContainerView frame];
  [(UIButton *)self->_actionButton setFrame:SBFloatFloorForScale((v86 - v83) * 0.5, 0.0), v81, v83, v85];
}

- (id)_titleFont
{
  v3 = MEMORY[0x1E69DB878];
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    v6 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v2 userInterfaceIdiom] == 1;
  }

  v7 = 36.0;
  if (v6)
  {
    v7 = 48.0;
  }

  v8 = [v3 _thinSystemFontOfSize:v7];
  if ((v5 & 1) == 0)
  {
  }

  return v8;
}

- (id)_actionFont
{
  v3 = __sb__runningInSpringBoard();
  v4 = v3;
  if (v3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:
      v5 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:24.0];
      goto LABEL_6;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
    {
      goto LABEL_3;
    }
  }

  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:24.0];
LABEL_6:
  v6 = v5;
  if ((v4 & 1) == 0)
  {
  }

  return v6;
}

- (void)_buttonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained handleTapGestureFromView:self];
}

- (unint64_t)_numberOfLinesForText:(id)a3 font:(id)a4 size:(CGSize)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  height = a5.height;
  width = a5.width;
  v8 = MEMORY[0x1E69DB7E0];
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  [v11 setWantsNumberOfLineFragments:1];
  v15 = *MEMORY[0x1E69DB648];
  v16[0] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  [v10 boundingRectWithSize:33 options:v12 attributes:v11 context:{width, height}];
  v13 = [v11 numberOfLineFragments];

  return v13;
}

- (void)_sizeView:(id)a3 forFixedWith:(BOOL)a4
{
  v5 = a3;
  [(SBUILockOverlayView *)self _maxLabelWidth];
  [v5 sizeThatFits:?];
  [v5 frame];
  [v5 setFrame:?];
}

- (SBUILockOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end