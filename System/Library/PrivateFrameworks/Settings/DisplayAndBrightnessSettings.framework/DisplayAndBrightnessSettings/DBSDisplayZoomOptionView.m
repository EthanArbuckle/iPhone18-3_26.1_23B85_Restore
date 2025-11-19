@interface DBSDisplayZoomOptionView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (DBSDisplayZoomOptionView)initWithFrame:(CGRect)a3 displayZoomOption:(unint64_t)a4;
- (DBSDisplayZoomOptionViewDelegate)delegate;
- (void)_configureView;
- (void)_userDidTapOnView:(id)a3;
- (void)setHighlight:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation DBSDisplayZoomOptionView

- (DBSDisplayZoomOptionView)initWithFrame:(CGRect)a3 displayZoomOption:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = DBSDisplayZoomOptionView;
  v5 = [(DBSDisplayZoomOptionView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_displayZoomOption = a4;
    [(DBSDisplayZoomOptionView *)v5 _configureView];
  }

  return v6;
}

- (void)_configureView
{
  v4 = [[DBSDeviceDisplayZoomAnimationView alloc] initWithDisplayZoomOption:[(DBSDisplayZoomOptionView *)self displayZoomOption]];
  packageView = self->__packageView;
  self->__packageView = v4;

  v6 = [(DBSDisplayZoomOptionView *)self _packageView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(DBSDisplayZoomOptionView *)self _packageView];
  [v7 setContentMode:1];

  v8 = [(DBSDisplayZoomOptionView *)self _packageView];
  [(DBSDisplayZoomOptionView *)self addSubview:v8];

  v9 = objc_alloc(MEMORY[0x277D756B8]);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
  optionNameLabel = self->_optionNameLabel;
  self->_optionNameLabel = v14;

  v16 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v18 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [v18 setFont:v17];

  v19 = [MEMORY[0x277D75348] labelColor];
  v20 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [v20 setTextColor:v19];

  v21 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [v21 setAdjustsFontForContentSizeCategory:1];

  v22 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [v22 setAdjustsFontSizeToFitWidth:1];

  v23 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [(DBSDisplayZoomOptionView *)self addSubview:v23];

  v24 = [(DBSDisplayZoomOptionView *)self displayZoomOption];
  if (v24 <= 3)
  {
    v25 = DBS_LocalizedStringForMagnify(off_278459950[v24]);
    v26 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
    [v26 setText:v25];
  }

  v27 = [[DBSCheckmarkView alloc] initWithFrame:v10, v11, v12, v13];
  checkmarkView = self->__checkmarkView;
  self->__checkmarkView = v27;

  v29 = [(DBSDisplayZoomOptionView *)self _checkmarkView];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(DBSDisplayZoomOptionView *)self _checkmarkView];
  [(DBSDisplayZoomOptionView *)self addSubview:v30];

  v31 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:0];
  feedbackGenerator = self->__feedbackGenerator;
  self->__feedbackGenerator = v31;

  v82 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__userDidTapOnView_];
  [v82 setMinimumPressDuration:0.0];
  [v82 setCancelPastAllowableMovement:1];
  [v82 setDelegate:self];
  [(DBSDisplayZoomOptionView *)self addGestureRecognizer:v82];
  v33 = [MEMORY[0x277CBEB18] array];
  v34 = [(DBSDisplayZoomOptionView *)self _packageView];
  v35 = [v34 topAnchor];
  v36 = [(DBSDisplayZoomOptionView *)self topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v33 addObject:v37];

  v38 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  v39 = [v38 topAnchor];
  v40 = [(DBSDisplayZoomOptionView *)self _packageView];
  v41 = [v40 bottomAnchor];
  v42 = DBSReverseZoomEnabled();
  if (v42)
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    v43 = [v2 sf_isiPad];
    v44 = 20.0;
    if (v43)
    {
      v44 = 12.0;
    }
  }

  else
  {
    v44 = 20.0;
  }

  v45 = [v39 constraintEqualToAnchor:v41 constant:v44];
  [v33 addObject:v45];

  if (v42)
  {
  }

  v46 = [(DBSDisplayZoomOptionView *)self _checkmarkView];
  v47 = [v46 topAnchor];
  v48 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  v49 = [v48 bottomAnchor];
  v50 = DBSReverseZoomEnabled();
  if (v50)
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    v51 = [v2 sf_isiPad];
    v52 = 8.0;
    if (v51)
    {
      v52 = 6.0;
    }
  }

  else
  {
    v52 = 8.0;
  }

  v53 = [v47 constraintEqualToAnchor:v49 constant:v52];
  [v33 addObject:v53];

  if (v50)
  {
  }

  v54 = [(DBSDisplayZoomOptionView *)self _checkmarkView];
  v55 = [v54 bottomAnchor];
  v56 = [(DBSDisplayZoomOptionView *)self bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  [v33 addObject:v57];

  v58 = [(DBSDisplayZoomOptionView *)self _packageView];
  v59 = [v58 leadingAnchor];
  v60 = [(DBSDisplayZoomOptionView *)self leadingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];
  [v33 addObject:v61];

  v62 = [(DBSDisplayZoomOptionView *)self _packageView];
  v63 = [v62 trailingAnchor];
  v64 = [(DBSDisplayZoomOptionView *)self trailingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  [v33 addObject:v65];

  v66 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  v67 = [v66 centerXAnchor];
  v68 = [(DBSDisplayZoomOptionView *)self centerXAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];
  [v33 addObject:v69];

  v70 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  v71 = [v70 leadingAnchor];
  v72 = [(DBSDisplayZoomOptionView *)self leadingAnchor];
  v73 = [v71 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v72 multiplier:1.0];
  [v33 addObject:v73];

  v74 = [(DBSDisplayZoomOptionView *)self trailingAnchor];
  v75 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  v76 = [v75 trailingAnchor];
  v77 = [v74 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v76 multiplier:1.0];
  [v33 addObject:v77];

  v78 = [(DBSDisplayZoomOptionView *)self _checkmarkView];
  v79 = [v78 centerXAnchor];
  v80 = [(DBSDisplayZoomOptionView *)self centerXAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];
  [v33 addObject:v81];

  [MEMORY[0x277CCAAD0] activateConstraints:v33];
}

- (void)_userDidTapOnView:(id)a3
{
  v4 = [a3 state];
  [(DBSDisplayZoomOptionView *)self setHighlight:(v4 - 1) < 2];
  if (![(DBSDisplayZoomOptionView *)self isSelected])
  {
    if (v4 == 3)
    {
      v5 = [(DBSDisplayZoomOptionView *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = [(DBSDisplayZoomOptionView *)self delegate];
      [v7 userDidTapOnDisplayZoomOptionView:self];

      v8 = [(DBSDisplayZoomOptionView *)self _feedbackGenerator];
      [v8 impactOccurred];
    }

    else
    {
      if (v4 != 1)
      {
        return;
      }

      v8 = [(DBSDisplayZoomOptionView *)self _feedbackGenerator];
      [v8 prepare];
    }
  }
}

- (void)setHighlight:(BOOL)a3
{
  if (self->_highlight != a3)
  {
    self->_highlight = a3;
    v3 = 1.0;
    if (a3)
    {
      v3 = 0.5;
    }

    [(DBSDisplayZoomOptionView *)self setAlpha:v3];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    v4 = a3;
    self->_selected = a3;
    v5 = [(DBSDisplayZoomOptionView *)self _checkmarkView];
    [v5 setSelected:v4];
  }
}

- (void)startAnimation
{
  v2 = [(DBSDisplayZoomOptionView *)self _packageView];
  [v2 startAnimation];
}

- (void)stopAnimation
{
  v2 = [(DBSDisplayZoomOptionView *)self _packageView];
  [v2 stopAnimation];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DBSDisplayZoomOptionView *)self gestureRecognizers];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (DBSDisplayZoomOptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end