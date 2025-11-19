@interface UIKeyboardItemContainerView
- (UIKeyboardItemContainerView)initWithFrame:(CGRect)a3;
- (void)constrainGuidesIfNeeded;
@end

@implementation UIKeyboardItemContainerView

- (void)constrainGuidesIfNeeded
{
  v91[8] = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardItemContainerView *)self guideConstraints];
  v4 = [v3 firstObject];
  v5 = [v4 isActive];

  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E69977A0];
    v7 = [(UIKeyboardItemContainerView *)self guideConstraints];
    [v6 deactivateConstraints:v7];

    v8 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    v9 = [v8 owningView];

    if (!v9)
    {
      v10 = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
      [(UIView *)self addLayoutGuide:v10];

      v11 = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
      [(UIView *)self addLayoutGuide:v11];

      v12 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
      [(UIView *)self addLayoutGuide:v12];

      v13 = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
      [(UIView *)self addLayoutGuide:v13];
    }

    v88 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v86 = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
    v84 = [v86 leftAnchor];
    v82 = [(UIView *)self leftAnchor];
    v80 = [v84 constraintEqualToAnchor:v82];
    v91[0] = v80;
    v76 = [(UIView *)self rightAnchor];
    v78 = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
    v74 = [v78 rightAnchor];
    v72 = [v76 constraintEqualToAnchor:v74];
    v91[1] = v72;
    v70 = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
    v68 = [v70 leftAnchor];
    v66 = [(UIView *)self leftAnchor];
    v64 = [v68 constraintEqualToAnchor:v66];
    v91[2] = v64;
    v60 = [(UIView *)self rightAnchor];
    v62 = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
    v58 = [v62 rightAnchor];
    v57 = [v60 constraintEqualToAnchor:v58];
    v91[3] = v57;
    v56 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    v55 = [v56 leftAnchor];
    v54 = [(UIView *)self leftAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v91[4] = v53;
    v51 = [(UIView *)self rightAnchor];
    v52 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    v50 = [v52 rightAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v91[5] = v49;
    v14 = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
    v15 = [v14 leftAnchor];
    v16 = [(UIView *)self leftAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v91[6] = v17;
    v18 = [(UIView *)self rightAnchor];
    v19 = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
    v20 = [v19 rightAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v91[7] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:8];
    [v88 addObjectsFromArray:v22];

    v87 = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
    v85 = [v87 topAnchor];
    v83 = [(UIView *)self topAnchor];
    v81 = [v85 constraintEqualToAnchor:v83];
    v90[0] = v81;
    v79 = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
    v75 = [v79 topAnchor];
    v77 = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
    v73 = [v77 bottomAnchor];
    v71 = [v75 constraintEqualToAnchor:v73];
    v90[1] = v71;
    v69 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    v65 = [v69 topAnchor];
    v67 = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
    v63 = [v67 bottomAnchor];
    v61 = [v65 constraintEqualToAnchor:v63];
    v90[2] = v61;
    v59 = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
    v23 = [v59 topAnchor];
    v24 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    v25 = [v24 bottomAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    v90[3] = v26;
    v27 = [(UIView *)self bottomAnchor];
    v28 = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
    v29 = [v28 bottomAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    v90[4] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:5];
    [v88 addObjectsFromArray:v31];

    v32 = [(UIKeyboardItemContainerView *)self aboveAssistantLayoutGuide];
    v33 = [v32 heightAnchor];
    v34 = [v33 constraintEqualToConstant:0.0];

    LODWORD(v35) = 1132003328;
    [v34 setPriority:v35];
    v36 = [(UIKeyboardItemContainerView *)self assistantLayoutGuide];
    v37 = [v36 heightAnchor];
    v38 = [v37 constraintEqualToConstant:0.0];

    LODWORD(v39) = 1132003328;
    [v38 setPriority:v39];
    v40 = [(UIKeyboardItemContainerView *)self inputViewLayoutGuide];
    v41 = [v40 heightAnchor];
    v42 = [v41 constraintEqualToConstant:0.0];

    LODWORD(v43) = 1132003328;
    [v42 setPriority:v43];
    v44 = [(UIKeyboardItemContainerView *)self belowInputLayoutGuide];
    v45 = [v44 heightAnchor];
    v46 = [v45 constraintEqualToConstant:0.0];

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

- (UIKeyboardItemContainerView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = UIKeyboardItemContainerView;
  v3 = [(UIView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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