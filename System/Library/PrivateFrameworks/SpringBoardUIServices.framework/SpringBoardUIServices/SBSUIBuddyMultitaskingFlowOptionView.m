@interface SBSUIBuddyMultitaskingFlowOptionView
- (SBSUIBuddyMultitaskingFlowOptionView)initWithMultitaskingOption:(int64_t)a3;
- (SBSUIBuddyMultitaskingFlowOptionViewDelegate)delegate;
- (id)_optionDescriptionText;
- (id)_optionTitleText;
- (void)_configureView;
- (void)_userDidTapOnOption:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation SBSUIBuddyMultitaskingFlowOptionView

- (SBSUIBuddyMultitaskingFlowOptionView)initWithMultitaskingOption:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SBSUIBuddyMultitaskingFlowOptionView;
  v4 = [(SBSUIBuddyMultitaskingFlowOptionView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_multitaskingOption = a3;
    [(SBSUIBuddyMultitaskingFlowOptionView *)v4 _configureView];
  }

  return v5;
}

- (void)_configureView
{
  v44[3] = *MEMORY[0x1E69E9840];
  v3 = [SBSUIBuddyMultitaskingFlowOptionCheckmarkView alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  checkmarkView = self->_checkmarkView;
  self->_checkmarkView = v8;

  [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)self->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  v11 = [(SBSUIBuddyMultitaskingFlowOptionView *)self _optionTitleText];
  [v10 setText:v11];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAdjustsFontForContentSizeCategory:1];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v10 setFont:v12];

  [v10 setNumberOfLines:0];
  [v10 setTextAlignment:1];
  v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  v14 = [(SBSUIBuddyMultitaskingFlowOptionView *)self _optionDescriptionText];
  [v13 setText:v14];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setAdjustsFontForContentSizeCategory:1];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v13 setFont:v15];

  [v13 setNumberOfLines:0];
  [v13 setTextAlignment:1];
  v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v13 setTextColor:v16];

  v17 = objc_alloc(MEMORY[0x1E69DCF90]);
  v44[0] = self->_checkmarkView;
  v44[1] = v10;
  v44[2] = v13;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  v19 = [v17 initWithArrangedSubviews:v18];

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setAxis:1];
  [v19 setAlignment:3];
  [v19 setSpacing:10.0];
  v20 = objc_alloc(MEMORY[0x1E69DCF90]);
  v43 = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v22 = [v20 initWithArrangedSubviews:v21];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 setAxis:0];
  [v22 setAlignment:1];
  [v22 setSpacing:1.17549435e-38];
  [(SBSUIBuddyMultitaskingFlowOptionView *)self addSubview:v22];
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [v22 leadingAnchor];
  v25 = [(SBSUIBuddyMultitaskingFlowOptionView *)self leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v23 addObject:v26];

  v27 = [v22 trailingAnchor];
  v28 = [(SBSUIBuddyMultitaskingFlowOptionView *)self trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v23 addObject:v29];

  v30 = [v22 topAnchor];
  v31 = [(SBSUIBuddyMultitaskingFlowOptionView *)self topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [v23 addObject:v32];

  v33 = [v22 bottomAnchor];
  v34 = [(SBSUIBuddyMultitaskingFlowOptionView *)self bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v23 addObject:v35];

  v36 = [v22 centerXAnchor];
  v37 = [(SBSUIBuddyMultitaskingFlowOptionView *)self centerXAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [v23 addObject:v38];

  v39 = [v22 centerYAnchor];
  v40 = [(SBSUIBuddyMultitaskingFlowOptionView *)self centerYAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  [v23 addObject:v41];

  [MEMORY[0x1E696ACD8] activateConstraints:v23];
  v42 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__userDidTapOnOption_];
  [(SBSUIBuddyMultitaskingFlowOptionView *)self addGestureRecognizer:v42];
}

- (id)_optionTitleText
{
  multitaskingOption = self->_multitaskingOption;
  if (!multitaskingOption)
  {
    v3 = @"BUDDY_MULTITASKING_FLOW_FULL_SCREEN_OPTION_TITLE";
    goto LABEL_5;
  }

  if (multitaskingOption == 1)
  {
    v3 = @"BUDDY_MULTITASKING_FLOW_WINDOWED_OPTION_TITLE";
LABEL_5:
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

    goto LABEL_7;
  }

  v5 = &stru_1F1D7ED48;
LABEL_7:

  return v5;
}

- (id)_optionDescriptionText
{
  multitaskingOption = self->_multitaskingOption;
  if (!multitaskingOption)
  {
    v3 = @"BUDDY_MULTITASKING_FLOW_FULL_SCREEN_OPTION_DESCRIPTION";
    goto LABEL_5;
  }

  if (multitaskingOption == 1)
  {
    v3 = @"BUDDY_MULTITASKING_FLOW_WINDOWED_OPTION_DESCRIPTION";
LABEL_5:
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

    goto LABEL_7;
  }

  v5 = &stru_1F1D7ED48;
LABEL_7:

  return v5;
}

- (void)_userDidTapOnOption:(id)a3
{
  if (![(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)self->_checkmarkView isSelected])
  {
    v4 = [(SBSUIBuddyMultitaskingFlowOptionView *)self delegate];
    [v4 userDidTapOnMultitaskingOption:self->_multitaskingOption];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)self->_checkmarkView setSelected:?];
  }
}

- (SBSUIBuddyMultitaskingFlowOptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end