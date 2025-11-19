@interface DBSExternalDisplayMultitaskingOptionView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (DBSExternalDisplayMultitaskingOptionView)initWithFrame:(CGRect)a3 multitaskingOption:(unint64_t)a4;
- (DBSExternalDisplayMultitaskingOptionViewDelegate)delegate;
- (double)_imageHeight:(double)a3;
- (void)_configureView;
- (void)_userDidTapOnView:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation DBSExternalDisplayMultitaskingOptionView

- (DBSExternalDisplayMultitaskingOptionView)initWithFrame:(CGRect)a3 multitaskingOption:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = DBSExternalDisplayMultitaskingOptionView;
  v5 = [(DBSExternalDisplayMultitaskingOptionView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_multitaskingOption = a4;
    [(DBSExternalDisplayMultitaskingOptionView *)v5 _configureView];
  }

  return v6;
}

- (void)_configureView
{
  v85[2] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:0];
  [(DBSExternalDisplayMultitaskingOptionView *)self set_feedbackGenerator:v3];

  v4 = 0x277D75000uLL;
  v5 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAxis:0];
  [v5 setAlignment:4];
  [v5 setSpacing:1.17549435e-38];
  v82 = v5;
  [v5 setDistribution:2];
  v6 = [(DBSExternalDisplayMultitaskingOptionView *)self multitaskingOption];
  v7 = [DBSExternalDisplayMultitaskingImageView alloc];
  [(DBSExternalDisplayMultitaskingOptionView *)self _imageHeight:140.0];
  if (v6)
  {
    v8 = [(DBSExternalDisplayMultitaskingImageView *)v7 initWithImageName:@"ExtendedDisplay01" height:?];
    v9 = [DBSExternalDisplayMultitaskingImageView alloc];
    [(DBSExternalDisplayMultitaskingOptionView *)self _imageHeight:104.0];
    v10 = [(DBSExternalDisplayMultitaskingImageView *)v9 initWithImageName:@"ExtendedDisplay02" height:?];
    [v5 addArrangedSubview:v8];
    [v5 addArrangedSubview:v10];
    v11 = [(DBSExternalDisplayMultitaskingImageView *)v8 widthAnchor];
    v12 = [v5 widthAnchor];
    v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12 multiplier:0.5];
    [v13 setActive:1];
  }

  else
  {
    v8 = [(DBSExternalDisplayMultitaskingImageView *)v7 initWithImageName:@"ScreenMirroring" height:?];
    [v5 addArrangedSubview:v8];
  }

  v14 = [DBSCheckmarkView alloc];
  v15 = *MEMORY[0x277CBF3A0];
  v16 = *(MEMORY[0x277CBF3A0] + 8);
  v17 = *(MEMORY[0x277CBF3A0] + 16);
  v18 = *(MEMORY[0x277CBF3A0] + 24);
  v19 = [(DBSCheckmarkView *)v14 initWithFrame:*MEMORY[0x277CBF3A0], v16, v17, v18];
  [(DBSExternalDisplayMultitaskingOptionView *)self set_checkmarkView:v19];

  v20 = [(DBSExternalDisplayMultitaskingOptionView *)self _checkmarkView];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v15, v16, v17, v18}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setAdjustsFontForContentSizeCategory:1];
  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v21 setFont:v22];

  [v21 setNumberOfLines:0];
  if ([(DBSExternalDisplayMultitaskingOptionView *)self multitaskingOption])
  {
    v23 = @"EXTENDED_DISPLAY";
  }

  else
  {
    v23 = @"SCREEN_MIRRORING";
  }

  v24 = DBS_LocalizedStringForConnectedDisplays(v23);
  [v21 setText:v24];

  v25 = objc_alloc(MEMORY[0x277D75A68]);
  v26 = [(DBSExternalDisplayMultitaskingOptionView *)self _checkmarkView];
  v85[0] = v26;
  v85[1] = v21;
  v81 = v21;
  v27 = 0x277CBE000uLL;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
  v29 = [v25 initWithArrangedSubviews:v28];

  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 setAxis:0];
  [v29 setAlignment:3];
  v30 = v29;
  [v29 setSpacing:1.17549435e-38];
  v80 = self;
  if ([(DBSExternalDisplayMultitaskingOptionView *)self multitaskingOption])
  {
    v31 = DBS_LocalizedStringForConnectedDisplays(@"EXTENDED_DISPLAY_MESSAGE");
    v32 = DBS_LocalizedStringForConnectedDisplays(@"LEARN_MORE");
    v33 = [v31 stringByAppendingString:@" "];
    v34 = [v33 stringByAppendingString:v32];

    v35 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v34];
    v36 = [v34 rangeOfString:v31];
    v38 = v37;
    v39 = *MEMORY[0x277D740C0];
    v40 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v35 addAttribute:v39 value:v40 range:{v36, v38}];

    v41 = [v34 rangeOfString:v32];
    v43 = v42;
    v44 = [MEMORY[0x277D75348] linkColor];
    v45 = v35;
    v46 = v43;
    v4 = 0x277D75000;
    [v35 addAttribute:v39 value:v44 range:{v41, v46}];

    v27 = 0x277CBE000;
  }

  else
  {
    v31 = DBS_LocalizedStringForConnectedDisplays(@"SCREEN_MIRRORING_MESSAGE");
    v47 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v31];
    v48 = *MEMORY[0x277D740C0];
    v32 = [MEMORY[0x277D75348] secondaryLabelColor];
    v45 = v47;
    [v47 addAttribute:v48 value:v32 range:{0, objc_msgSend(v31, "length")}];
  }

  v49 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v15, v16, v17, v18}];
  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v49 setAdjustsFontForContentSizeCategory:1];
  v50 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v49 setFont:v50];

  [v49 setNumberOfLines:0];
  [v49 setTextAlignment:0];
  [v49 setAttributedText:v45];
  v51 = objc_alloc(*(v4 + 2664));
  v84[0] = v82;
  v84[1] = v30;
  v84[2] = v49;
  v52 = [*(v27 + 2656) arrayWithObjects:v84 count:3];
  v53 = [v51 initWithArrangedSubviews:v52];

  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v53 setAxis:1];
  [v53 setAlignment:1];
  [v53 setSpacing:1.17549435e-38];
  v54 = objc_alloc(*(v4 + 2664));
  v83 = v53;
  v55 = [*(v27 + 2656) arrayWithObjects:&v83 count:1];
  v56 = [v54 initWithArrangedSubviews:v55];

  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v56 setAxis:0];
  [v56 setAlignment:1];
  [v56 setSpacing:1.17549435e-38];
  [(DBSExternalDisplayMultitaskingOptionView *)v80 addSubview:v56];
  v57 = [MEMORY[0x277CBEB18] array];
  v58 = [v56 leadingAnchor];
  v59 = [(DBSExternalDisplayMultitaskingOptionView *)v80 leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  [v57 addObject:v60];

  v61 = [v56 trailingAnchor];
  v62 = [(DBSExternalDisplayMultitaskingOptionView *)v80 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];
  [v57 addObject:v63];

  v64 = [v56 topAnchor];
  v65 = [(DBSExternalDisplayMultitaskingOptionView *)v80 topAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];
  [v57 addObject:v66];

  v67 = [v56 bottomAnchor];
  v68 = [(DBSExternalDisplayMultitaskingOptionView *)v80 bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];
  [v57 addObject:v69];

  v70 = [v56 centerXAnchor];
  v71 = [(DBSExternalDisplayMultitaskingOptionView *)v80 centerXAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];
  [v57 addObject:v72];

  v73 = [v56 centerYAnchor];
  v74 = [(DBSExternalDisplayMultitaskingOptionView *)v80 centerYAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];
  [v57 addObject:v75];

  v76 = [v56 widthAnchor];
  v77 = [v82 widthAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];
  [v57 addObject:v78];

  [MEMORY[0x277CCAAD0] activateConstraints:v57];
  v79 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v80 action:sel__userDidTapOnView_];
  [v79 setMinimumPressDuration:0.0];
  [v79 setCancelPastAllowableMovement:1];
  [v79 setDelegate:v80];
  [(DBSExternalDisplayMultitaskingOptionView *)v80 addGestureRecognizer:v79];
}

- (double)_imageHeight:(double)a3
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v6 = v5;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = v8;

  if (v6 >= v9)
  {
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 bounds];
    v12 = v11;
    v13 = [MEMORY[0x277D759A0] mainScreen];
    [v13 bounds];
    v15 = v12 / v14;

    return v15 * a3;
  }

  return a3;
}

- (void)_userDidTapOnView:(id)a3
{
  v4 = [a3 state];
  v5 = [(DBSExternalDisplayMultitaskingOptionView *)self _checkmarkView];
  v6 = [v5 isSelected];

  if ((v6 & 1) == 0)
  {
    if (v4 == 3)
    {
      v7 = [(DBSExternalDisplayMultitaskingOptionView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
        return;
      }

      v9 = [(DBSExternalDisplayMultitaskingOptionView *)self delegate];
      [v9 userDidTapOnMultitaskingOptionView:self];

      v10 = [(DBSExternalDisplayMultitaskingOptionView *)self _feedbackGenerator];
      [v10 impactOccurred];
    }

    else
    {
      if (v4 != 1)
      {
        return;
      }

      v10 = [(DBSExternalDisplayMultitaskingOptionView *)self _feedbackGenerator];
      [v10 prepare];
    }
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    v4 = a3;
    self->_selected = a3;
    v5 = [(DBSExternalDisplayMultitaskingOptionView *)self _checkmarkView];
    [v5 setSelected:v4];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DBSExternalDisplayMultitaskingOptionView *)self gestureRecognizers];
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

- (DBSExternalDisplayMultitaskingOptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end