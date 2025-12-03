@interface SBSUIBuddyMultitaskingFlowOptionView
- (SBSUIBuddyMultitaskingFlowOptionView)initWithMultitaskingOption:(int64_t)option;
- (SBSUIBuddyMultitaskingFlowOptionViewDelegate)delegate;
- (id)_optionDescriptionText;
- (id)_optionTitleText;
- (void)_configureView;
- (void)_userDidTapOnOption:(id)option;
- (void)setSelected:(BOOL)selected;
@end

@implementation SBSUIBuddyMultitaskingFlowOptionView

- (SBSUIBuddyMultitaskingFlowOptionView)initWithMultitaskingOption:(int64_t)option
{
  v7.receiver = self;
  v7.super_class = SBSUIBuddyMultitaskingFlowOptionView;
  v4 = [(SBSUIBuddyMultitaskingFlowOptionView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_multitaskingOption = option;
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
  _optionTitleText = [(SBSUIBuddyMultitaskingFlowOptionView *)self _optionTitleText];
  [v10 setText:_optionTitleText];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAdjustsFontForContentSizeCategory:1];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v10 setFont:v12];

  [v10 setNumberOfLines:0];
  [v10 setTextAlignment:1];
  v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  _optionDescriptionText = [(SBSUIBuddyMultitaskingFlowOptionView *)self _optionDescriptionText];
  [v13 setText:_optionDescriptionText];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setAdjustsFontForContentSizeCategory:1];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v13 setFont:v15];

  [v13 setNumberOfLines:0];
  [v13 setTextAlignment:1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v13 setTextColor:secondaryLabelColor];

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
  array = [MEMORY[0x1E695DF70] array];
  leadingAnchor = [v22 leadingAnchor];
  leadingAnchor2 = [(SBSUIBuddyMultitaskingFlowOptionView *)self leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v26];

  trailingAnchor = [v22 trailingAnchor];
  trailingAnchor2 = [(SBSUIBuddyMultitaskingFlowOptionView *)self trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v29];

  topAnchor = [v22 topAnchor];
  topAnchor2 = [(SBSUIBuddyMultitaskingFlowOptionView *)self topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v32];

  bottomAnchor = [v22 bottomAnchor];
  bottomAnchor2 = [(SBSUIBuddyMultitaskingFlowOptionView *)self bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v35];

  centerXAnchor = [v22 centerXAnchor];
  centerXAnchor2 = [(SBSUIBuddyMultitaskingFlowOptionView *)self centerXAnchor];
  v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v38];

  centerYAnchor = [v22 centerYAnchor];
  centerYAnchor2 = [(SBSUIBuddyMultitaskingFlowOptionView *)self centerYAnchor];
  v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v41];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
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

- (void)_userDidTapOnOption:(id)option
{
  if (![(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)self->_checkmarkView isSelected])
  {
    delegate = [(SBSUIBuddyMultitaskingFlowOptionView *)self delegate];
    [delegate userDidTapOnMultitaskingOption:self->_multitaskingOption];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)self->_checkmarkView setSelected:?];
  }
}

- (SBSUIBuddyMultitaskingFlowOptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end