@interface WFTriggerOptionSelectionViewContainer
- (BOOL)leftViewSelected;
- (BOOL)rightViewSelected;
- (WFTriggerOptionSelectionViewContainer)init;
- (WFTriggerOptionSelectionViewContainerDelegate)delegate;
- (void)handleMultiSelectViewPressWithRecognizer:(id)recognizer;
- (void)setLeftOptionImage:(id)image selectedImage:(id)selectedImage label:(id)label selected:(BOOL)selected tintColor:(id)color;
- (void)setLeftViewSelected:(BOOL)selected;
- (void)setRightOptionImage:(id)image selectedImage:(id)selectedImage label:(id)label selected:(BOOL)selected tintColor:(id)color;
- (void)setRightViewSelected:(BOOL)selected;
- (void)setSelectedImageTintColor:(id)color;
@end

@implementation WFTriggerOptionSelectionViewContainer

- (WFTriggerOptionSelectionViewContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setRightOptionImage:(id)image selectedImage:(id)selectedImage label:(id)label selected:(BOOL)selected tintColor:(id)color
{
  selectedCopy = selected;
  colorCopy = color;
  labelCopy = label;
  selectedImageCopy = selectedImage;
  imageCopy = image;
  rightView = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [rightView setDefaultImage:imageCopy];

  rightView2 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [rightView2 setSelectedImage:selectedImageCopy];

  rightView3 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [rightView3 setDefaultImageTintColor:colorCopy];

  rightView4 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  label = [rightView4 label];
  [label setText:labelCopy];

  rightView5 = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [rightView5 setSelected:selectedCopy];

  [(WFTriggerOptionSelectionViewContainer *)self setNeedsUpdateConstraints];
}

- (void)setLeftOptionImage:(id)image selectedImage:(id)selectedImage label:(id)label selected:(BOOL)selected tintColor:(id)color
{
  selectedCopy = selected;
  colorCopy = color;
  labelCopy = label;
  selectedImageCopy = selectedImage;
  imageCopy = image;
  leftView = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [leftView setDefaultImage:imageCopy];

  leftView2 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [leftView2 setSelectedImage:selectedImageCopy];

  leftView3 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [leftView3 setDefaultImageTintColor:colorCopy];

  leftView4 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  label = [leftView4 label];
  [label setText:labelCopy];

  leftView5 = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [leftView5 setSelected:selectedCopy];

  [(WFTriggerOptionSelectionViewContainer *)self setNeedsUpdateConstraints];
}

- (void)setSelectedImageTintColor:(id)color
{
  colorCopy = color;
  leftView = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [leftView setSelectedStateImageTintColor:colorCopy];

  rightView = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [rightView setSelectedStateImageTintColor:colorCopy];
}

- (void)setRightViewSelected:(BOOL)selected
{
  selectedCopy = selected;
  rightView = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  [rightView setSelected:selectedCopy];
}

- (BOOL)rightViewSelected
{
  rightView = [(WFTriggerOptionSelectionViewContainer *)self rightView];
  selected = [rightView selected];

  return selected;
}

- (void)setLeftViewSelected:(BOOL)selected
{
  selectedCopy = selected;
  leftView = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  [leftView setSelected:selectedCopy];
}

- (BOOL)leftViewSelected
{
  leftView = [(WFTriggerOptionSelectionViewContainer *)self leftView];
  selected = [leftView selected];

  return selected;
}

- (void)handleMultiSelectViewPressWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  if (state == 1)
  {
    feedbackGenerator = [(WFTriggerOptionSelectionViewContainer *)self feedbackGenerator];
    [feedbackGenerator prepare];
  }

  view = [recognizerCopy view];
  [recognizerCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  v11 = [view pointInside:0 withEvent:{v8, v10}];
  [view setHighlighted:((state - 1) < 2) & v11];
  if (state == 3 && (v11 & 1) != 0)
  {
    [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred];
    leftView = [(WFTriggerOptionSelectionViewContainer *)self leftView];

    delegate = [(WFTriggerOptionSelectionViewContainer *)self delegate];
    if (view == leftView)
    {
      [delegate view:self didSelectOptionWithLeftViewCurrentlySelected:{-[WFTriggerOptionSelectionViewContainer leftViewSelected](self, "leftViewSelected")}];
    }

    else
    {
      rightView = [(WFTriggerOptionSelectionViewContainer *)self rightView];
      [delegate view:self didSelectOptionWithRightViewCurrentlySelected:{objc_msgSend(rightView, "selected")}];
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
    topAnchor = [(UIStackView *)v2->_stackView topAnchor];
    topAnchor2 = [(WFTriggerOptionSelectionViewContainer *)v2 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v40[0] = v31;
    bottomAnchor = [(UIStackView *)v2->_stackView bottomAnchor];
    bottomAnchor2 = [(WFTriggerOptionSelectionViewContainer *)v2 bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v40[1] = v9;
    leadingAnchor = [(UIStackView *)v2->_stackView leadingAnchor];
    leadingAnchor2 = [(WFTriggerOptionSelectionViewContainer *)v2 leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[2] = v12;
    trailingAnchor = [(UIStackView *)v2->_stackView trailingAnchor];
    trailingAnchor2 = [(WFTriggerOptionSelectionViewContainer *)v2 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    [v28 activateConstraints:v16];

    stackView = [(WFTriggerOptionSelectionViewContainer *)v2 stackView];
    [stackView addArrangedSubview:v2->_leftView];

    stackView2 = [(WFTriggerOptionSelectionViewContainer *)v2 stackView];
    [stackView2 addArrangedSubview:v2->_rightView];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    arrangedSubviews = [(UIStackView *)v2->_stackView arrangedSubviews];
    v20 = [arrangedSubviews countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(arrangedSubviews);
          }

          v24 = *(*(&v34 + 1) + 8 * i);
          v25 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v2 action:sel_handleMultiSelectViewPressWithRecognizer_];
          [v25 setMinimumPressDuration:0.0];
          [v25 setCancelPastAllowableMovement:1];
          [v25 setDelegate:v2];
          [v24 addGestureRecognizer:v25];
        }

        v21 = [arrangedSubviews countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v21);
    }

    v26 = v2;
  }

  return v2;
}

@end