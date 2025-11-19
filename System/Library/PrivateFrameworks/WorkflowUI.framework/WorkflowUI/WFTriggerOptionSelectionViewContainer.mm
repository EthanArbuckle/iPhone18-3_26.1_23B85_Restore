@interface WFTriggerOptionSelectionViewContainer
- (BOOL)leftViewSelected;
- (BOOL)rightViewSelected;
- (WFTriggerOptionSelectionViewContainer)init;
- (WFTriggerOptionSelectionViewContainerDelegate)delegate;
- (void)handleMultiSelectViewPressWithRecognizer:(id)a3;
- (void)setLeftOptionImage:(id)a3 selectedImage:(id)a4 label:(id)a5 selected:(BOOL)a6 tintColor:(id)a7;
- (void)setLeftViewSelected:(BOOL)a3;
- (void)setRightOptionImage:(id)a3 selectedImage:(id)a4 label:(id)a5 selected:(BOOL)a6 tintColor:(id)a7;
- (void)setRightViewSelected:(BOOL)a3;
- (void)setSelectedImageTintColor:(id)a3;
@end

@implementation WFTriggerOptionSelectionViewContainer

- (WFTriggerOptionSelectionViewContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setRightOptionImage:(id)a3 selectedImage:(id)a4 label:(id)a5 selected:(BOOL)a6 tintColor:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [v16 setDefaultImage:v15];

  v17 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [v17 setSelectedImage:v14];

  v18 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [v18 setDefaultImageTintColor:v12];

  v19 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  v20 = [v19 label];
  [v20 setText:v13];

  v21 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [v21 setSelected:v7];

  [(WFTriggerOptionSelectionViewContainer *)self setNeedsUpdateConstraints];
}

- (void)setLeftOptionImage:(id)a3 selectedImage:(id)a4 label:(id)a5 selected:(BOOL)a6 tintColor:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [v16 setDefaultImage:v15];

  v17 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [v17 setSelectedImage:v14];

  v18 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [v18 setDefaultImageTintColor:v12];

  v19 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  v20 = [v19 label];
  [v20 setText:v13];

  v21 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [v21 setSelected:v7];

  [(WFTriggerOptionSelectionViewContainer *)self setNeedsUpdateConstraints];
}

- (void)setSelectedImageTintColor:(id)a3
{
  v4 = a3;
  v5 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [v5 setSelectedStateImageTintColor:v4];

  v6 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [v6 setSelectedStateImageTintColor:v4];
}

- (void)setRightViewSelected:(BOOL)a3
{
  v3 = a3;
  v4 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [v4 setSelected:v3];
}

- (BOOL)rightViewSelected
{
  v2 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  v3 = [v2 selected];

  return v3;
}

- (void)setLeftViewSelected:(BOOL)a3
{
  v3 = a3;
  v4 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [v4 setSelected:v3];
}

- (BOOL)leftViewSelected
{
  v2 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  v3 = [v2 selected];

  return v3;
}

- (void)handleMultiSelectViewPressWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 == 1)
  {
    v6 = [(WFTriggerOptionSelectionViewContainer *)self feedbackGenerator];
    [v6 prepare];
  }

  v15 = [v4 view];
  [v4 locationInView:v15];
  v8 = v7;
  v10 = v9;

  v11 = [v15 pointInside:0 withEvent:{v8, v10}];
  [v15 setHighlighted:((v5 - 1) < 2) & v11];
  if (v5 == 3 && (v11 & 1) != 0)
  {
    [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred];
    v12 = [(WFTriggerOptionSelectionViewContainer *)self leftView];

    v13 = [(WFTriggerOptionSelectionViewContainer *)self delegate];
    if (v15 == v12)
    {
      [v13 view:self didSelectOptionWithLeftViewCurrentlySelected:{-[WFTriggerOptionSelectionViewContainer leftViewSelected](self, "leftViewSelected")}];
    }

    else
    {
      v14 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
      [v13 view:self didSelectOptionWithRightViewCurrentlySelected:{objc_msgSend(v14, "selected")}];
    }
  }
}

- (WFTriggerOptionSelectionViewContainer)init
{
  v40[4] = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = WFTriggerOptionSelectionViewContainer;
  v2 = [(WFTriggerOptionSelectionViewContainer *)&v38 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = v2->_stackView;
    v2->_stackView = v3;

    [(UIStackView *)v2->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v2->_stackView setDistribution:1];
    [(UIStackView *)v2->_stackView setAxis:0];
    v5 = objc_alloc_init(WFTriggerOptionSelectionView);
    leftView = v2->_leftView;
    v2->_leftView = v5;

    v7 = objc_alloc_init(WFTriggerOptionSelectionView);
    rightView = v2->_rightView;
    v2->_rightView = v7;

    [(WFTriggerOptionSelectionViewContainer *)v2 addSubview:v2->_stackView];
    v28 = MEMORY[0x277CCAAD0];
    v33 = [(UIStackView *)v2->_stackView topAnchor];
    v32 = [(WFTriggerOptionSelectionViewContainer *)v2 topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v40[0] = v31;
    v30 = [(UIStackView *)v2->_stackView bottomAnchor];
    v29 = [(WFTriggerOptionSelectionViewContainer *)v2 bottomAnchor];
    v9 = [v30 constraintEqualToAnchor:v29];
    v40[1] = v9;
    v10 = [(UIStackView *)v2->_stackView leadingAnchor];
    v11 = [(WFTriggerOptionSelectionViewContainer *)v2 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v40[2] = v12;
    v13 = [(UIStackView *)v2->_stackView trailingAnchor];
    v14 = [(WFTriggerOptionSelectionViewContainer *)v2 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v40[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    [v28 activateConstraints:v16];

    v17 = [(WFTriggerOptionSelectionViewContainer *)v2 stackView];
    [v17 addArrangedSubview:v2->_leftView];

    v18 = [(WFTriggerOptionSelectionViewContainer *)v2 stackView];
    [v18 addArrangedSubview:v2->_rightView];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [(UIStackView *)v2->_stackView arrangedSubviews];
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v34 + 1) + 8 * i);
          v25 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v2 action:sel_handleMultiSelectViewPressWithRecognizer_];
          [v25 setMinimumPressDuration:0.0];
          [v25 setCancelPastAllowableMovement:1];
          [v25 setDelegate:v2];
          [v24 addGestureRecognizer:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v21);
    }

    v26 = v2;
  }

  return v2;
}

@end