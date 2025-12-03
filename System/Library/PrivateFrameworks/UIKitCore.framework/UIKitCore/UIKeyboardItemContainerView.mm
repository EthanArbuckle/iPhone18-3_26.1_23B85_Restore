@interface UIKeyboardItemContainerView
- (UIKeyboardItemContainerView)initWithFrame:(CGRect)frame;
- (void)constrainGuidesIfNeeded;
@end

@implementation UIKeyboardItemContainerView

- (void)constrainGuidesIfNeeded
{
  v91[8] = *MEMORY[0x1E69E9840];
  guideConstraints = [(UIKeyboardItemContainerView *)self guideConstraints];
  firstObject = [guideConstraints firstObject];
  isActive = [firstObject isActive];

  if ((isActive & 1) == 0)
  {
    v6 = MEMORY[0x1E69977A0];
    guideConstraints2 = [(UIKeyboardItemContainerView *)self guideConstraints];
    [v6 deactivateConstraints:guideConstraints2];

    inputViewLayoutGuide = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    owningView = [inputViewLayoutGuide owningView];

    if (!owningView)
    {
      aboveAssistantLayoutGuide = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
      [(UIView *)self addLayoutGuide:aboveAssistantLayoutGuide];

      assistantLayoutGuide = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
      [(UIView *)self addLayoutGuide:assistantLayoutGuide];

      inputViewLayoutGuide2 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
      [(UIView *)self addLayoutGuide:inputViewLayoutGuide2];

      belowInputLayoutGuide = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
      [(UIView *)self addLayoutGuide:belowInputLayoutGuide];
    }

    v88 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aboveAssistantLayoutGuide2 = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
    leftAnchor = [aboveAssistantLayoutGuide2 leftAnchor];
    leftAnchor2 = [(UIView *)self leftAnchor];
    v80 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v91[0] = v80;
    rightAnchor = [(UIView *)self rightAnchor];
    aboveAssistantLayoutGuide3 = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
    rightAnchor2 = [aboveAssistantLayoutGuide3 rightAnchor];
    v72 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v91[1] = v72;
    assistantLayoutGuide2 = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
    leftAnchor3 = [assistantLayoutGuide2 leftAnchor];
    leftAnchor4 = [(UIView *)self leftAnchor];
    v64 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v91[2] = v64;
    rightAnchor3 = [(UIView *)self rightAnchor];
    assistantLayoutGuide3 = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
    rightAnchor4 = [assistantLayoutGuide3 rightAnchor];
    v57 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v91[3] = v57;
    inputViewLayoutGuide3 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    leftAnchor5 = [inputViewLayoutGuide3 leftAnchor];
    leftAnchor6 = [(UIView *)self leftAnchor];
    v53 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
    v91[4] = v53;
    rightAnchor5 = [(UIView *)self rightAnchor];
    inputViewLayoutGuide4 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    rightAnchor6 = [inputViewLayoutGuide4 rightAnchor];
    v49 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
    v91[5] = v49;
    belowInputLayoutGuide2 = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
    leftAnchor7 = [belowInputLayoutGuide2 leftAnchor];
    leftAnchor8 = [(UIView *)self leftAnchor];
    v17 = [leftAnchor7 constraintEqualToAnchor:leftAnchor8];
    v91[6] = v17;
    rightAnchor7 = [(UIView *)self rightAnchor];
    belowInputLayoutGuide3 = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
    rightAnchor8 = [belowInputLayoutGuide3 rightAnchor];
    v21 = [rightAnchor7 constraintEqualToAnchor:rightAnchor8];
    v91[7] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:8];
    [v88 addObjectsFromArray:v22];

    aboveAssistantLayoutGuide4 = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
    topAnchor = [aboveAssistantLayoutGuide4 topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v81 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v90[0] = v81;
    assistantLayoutGuide4 = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
    topAnchor3 = [assistantLayoutGuide4 topAnchor];
    aboveAssistantLayoutGuide5 = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
    bottomAnchor = [aboveAssistantLayoutGuide5 bottomAnchor];
    v71 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v90[1] = v71;
    inputViewLayoutGuide5 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    topAnchor4 = [inputViewLayoutGuide5 topAnchor];
    assistantLayoutGuide5 = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
    bottomAnchor2 = [assistantLayoutGuide5 bottomAnchor];
    v61 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
    v90[2] = v61;
    belowInputLayoutGuide4 = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
    topAnchor5 = [belowInputLayoutGuide4 topAnchor];
    inputViewLayoutGuide6 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    bottomAnchor3 = [inputViewLayoutGuide6 bottomAnchor];
    v26 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
    v90[3] = v26;
    bottomAnchor4 = [(UIView *)self bottomAnchor];
    belowInputLayoutGuide5 = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
    bottomAnchor5 = [belowInputLayoutGuide5 bottomAnchor];
    v30 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v90[4] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:5];
    [v88 addObjectsFromArray:v31];

    aboveAssistantLayoutGuide6 = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
    heightAnchor = [aboveAssistantLayoutGuide6 heightAnchor];
    v34 = [heightAnchor constraintEqualToConstant:0.0];

    LODWORD(v35) = 1132003328;
    [v34 setPriority:v35];
    assistantLayoutGuide6 = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
    heightAnchor2 = [assistantLayoutGuide6 heightAnchor];
    v38 = [heightAnchor2 constraintEqualToConstant:0.0];

    LODWORD(v39) = 1132003328;
    [v38 setPriority:v39];
    inputViewLayoutGuide7 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    heightAnchor3 = [inputViewLayoutGuide7 heightAnchor];
    v42 = [heightAnchor3 constraintEqualToConstant:0.0];

    LODWORD(v43) = 1132003328;
    [v42 setPriority:v43];
    belowInputLayoutGuide6 = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
    heightAnchor4 = [belowInputLayoutGuide6 heightAnchor];
    v46 = [heightAnchor4 constraintEqualToConstant:0.0];

    LODWORD(v47) = 1132003328;
    [v46 setPriority:v47];
    v89[0] = v34;
    v89[1] = v38;
    v89[2] = v42;
    v89[3] = v46;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
    [v88 addObjectsFromArray:v48];

    [MEMORY[0x1E69977A0] activateConstraints:v88];
    [(UIKeyboardItemContainerView *)self setGuideConstraints:v88];
  }
}

- (UIKeyboardItemContainerView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = UIKeyboardItemContainerView;
  v3 = [(UIView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILayoutGuide);
    belowInputLayoutGuide = v3->_belowInputLayoutGuide;
    v3->_belowInputLayoutGuide = v4;

    [(UILayoutGuide *)v3->_belowInputLayoutGuide setIdentifier:@"belowInputLayoutGuide"];
    v6 = objc_alloc_init(UILayoutGuide);
    inputViewLayoutGuide = v3->_inputViewLayoutGuide;
    v3->_inputViewLayoutGuide = v6;

    [(UILayoutGuide *)v3->_inputViewLayoutGuide setIdentifier:@"inputViewLayoutGuide"];
    v8 = objc_alloc_init(UILayoutGuide);
    assistantLayoutGuide = v3->_assistantLayoutGuide;
    v3->_assistantLayoutGuide = v8;

    [(UILayoutGuide *)v3->_assistantLayoutGuide setIdentifier:@"assistantLayoutGuide"];
    v10 = objc_alloc_init(UILayoutGuide);
    aboveAssistantLayoutGuide = v3->_aboveAssistantLayoutGuide;
    v3->_aboveAssistantLayoutGuide = v10;

    [(UILayoutGuide *)v3->_aboveAssistantLayoutGuide setIdentifier:@"aboveAssistantLayoutGuide"];
  }

  return v3;
}

@end