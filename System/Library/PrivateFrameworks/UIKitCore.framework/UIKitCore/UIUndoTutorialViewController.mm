@interface UIUndoTutorialViewController
- (UIUndoTutorialViewController)initWithCompletionHandler:(id)a3;
- (void)doneButtonPressed;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UIUndoTutorialViewController

- (UIUndoTutorialViewController)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIUndoTutorialViewController;
  v5 = [(UIViewController *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v6;

    v8 = v5;
  }

  return v5;
}

- (void)viewDidLoad
{
  v137[8] = *MEMORY[0x1E69E9840];
  v135.receiver = self;
  v135.super_class = UIUndoTutorialViewController;
  [(UIViewController *)&v135 viewDidLoad];
  v3 = +[UIColor _alertControllerDimmingViewColor];
  v4 = [(UIViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(UIViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = [UIBlurEffect effectWithStyle:1200];
  v8 = [[UIVisualEffectView alloc] initWithEffect:v7];
  [(UIView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(UIViewController *)self view];
  [v9 addSubview:v8];

  v10 = [UIUndoTutorialView alloc];
  if (v6 == 2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = [(UIUndoTutorialView *)v10 initWithKeyboardAppearance:v11];
  tutorialView = self->_tutorialView;
  self->_tutorialView = v12;

  [(UIView *)self->_tutorialView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [(UIVisualEffectView *)v8 contentView];
  [v14 addSubview:self->_tutorialView];

  v15 = [(UIView *)v8 centerXAnchor];
  v16 = [(UIViewController *)self view];
  v17 = [v16 centerXAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(UIView *)v8 centerYAnchor];
  v20 = [(UIViewController *)self view];
  v21 = [v20 centerYAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  [(UIVisualEffectView *)v8 _setContinuousCornerRadius:14.0];
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v23 = objc_alloc_init(UILayoutGuide);
    v24 = [(UIViewController *)self view];
    [v24 addLayoutGuide:v23];

    v25 = objc_alloc_init(UILayoutGuide);
    v26 = [(UIViewController *)self view];
    [v26 addLayoutGuide:v25];

    v27 = [(UIView *)v8 widthAnchor];
    v133 = [v27 constraintEqualToConstant:625.0];

    LODWORD(v28) = 1148829696;
    [v133 setPriority:v28];
    v112 = MEMORY[0x1E69977A0];
    v126 = [(UILayoutGuide *)v23 leadingAnchor];
    v128 = [(UIViewController *)self view];
    v124 = [v128 leadingAnchor];
    v122 = [v126 constraintEqualToAnchor:v124];
    v137[0] = v122;
    v120 = [(UIViewController *)self view];
    v118 = [v120 trailingAnchor];
    v29 = v25;
    v116 = [(UILayoutGuide *)v25 trailingAnchor];
    v114 = [v118 constraintEqualToAnchor:v116];
    v137[1] = v114;
    v131 = v23;
    v110 = [(UILayoutGuide *)v23 widthAnchor];
    v108 = [(UILayoutGuide *)v25 widthAnchor];
    v106 = [v110 constraintEqualToAnchor:v108 multiplier:1.0];
    v137[2] = v106;
    v130 = v25;
    v104 = [(UILayoutGuide *)v25 widthAnchor];
    v102 = [v104 constraintGreaterThanOrEqualToConstant:10.0];
    v137[3] = v102;
    v30 = [(UIView *)v8 leadingAnchor];
    v31 = [(UILayoutGuide *)v23 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v137[4] = v32;
    v33 = [(UILayoutGuide *)v29 leadingAnchor];
    v34 = [(UIView *)v8 trailingAnchor];
    [v33 constraintEqualToAnchor:v34];
    v35 = v132 = v7;
    v137[5] = v35;
    [(UIView *)v8 heightAnchor];
    v36 = v134 = v8;
    v37 = [v36 constraintEqualToConstant:747.0];
    v137[6] = v37;
    v137[7] = v133;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:8];
    [v112 activateConstraints:v38];

    v39 = objc_alloc_init(UILayoutGuide);
    v40 = [(UIViewController *)self view];
    [v40 addLayoutGuide:v39];

    v41 = objc_alloc_init(UILayoutGuide);
    v42 = [(UIViewController *)self view];
    [v42 addLayoutGuide:v41];

    v43 = [(UILayoutGuide *)v39 widthAnchor];
    v129 = [v43 constraintEqualToConstant:88.0];

    LODWORD(v44) = 1148829696;
    [v129 setPriority:v44];
    v101 = MEMORY[0x1E69977A0];
    v136[0] = v129;
    v127 = [(UILayoutGuide *)v39 widthAnchor];
    v125 = [v127 constraintGreaterThanOrEqualToConstant:10.0];
    v136[1] = v125;
    v123 = [(UILayoutGuide *)v41 widthAnchor];
    v121 = [(UILayoutGuide *)v39 widthAnchor];
    v119 = [v123 constraintEqualToAnchor:v121 multiplier:1.0];
    v136[2] = v119;
    v115 = v39;
    v117 = [(UILayoutGuide *)v39 leadingAnchor];
    v113 = [(UIView *)v134 leadingAnchor];
    v111 = [v117 constraintEqualToAnchor:v113];
    v136[3] = v111;
    v107 = [(UIView *)v134 trailingAnchor];
    v109 = v41;
    v105 = [(UILayoutGuide *)v41 trailingAnchor];
    v103 = [v107 constraintEqualToAnchor:v105];
    v136[4] = v103;
    v100 = [(UIUndoTutorialViewController *)self tutorialView];
    v99 = [v100 leadingAnchor];
    v98 = [(UILayoutGuide *)v39 trailingAnchor];
    v97 = [v99 constraintEqualToAnchor:v98];
    v136[5] = v97;
    v95 = [(UILayoutGuide *)v41 leadingAnchor];
    v96 = [(UIUndoTutorialViewController *)self tutorialView];
    v94 = [v96 trailingAnchor];
    v93 = [v95 constraintEqualToAnchor:v94];
    v136[6] = v93;
    v45 = [(UIUndoTutorialViewController *)self tutorialView];
    v46 = [v45 topAnchor];
    v47 = [(UIView *)v134 topAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:56.0];
    v136[7] = v48;
    v49 = [(UIView *)v134 bottomAnchor];
    v50 = [(UIUndoTutorialViewController *)self tutorialView];
    v51 = [v50 bottomAnchor];
    v52 = [v49 constraintEqualToAnchor:v51 constant:5.0];
    v136[8] = v52;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:9];
    [v101 activateConstraints:v53];

    v54 = v130;
    v55 = v131;

    v8 = v134;
    v56 = v133;

    v7 = v132;
  }

  else
  {
    v57 = [(UIView *)v8 widthAnchor];
    v58 = [v57 constraintEqualToConstant:270.0];
    [v58 setActive:1];

    v59 = [(UIUndoTutorialViewController *)self tutorialView];
    v60 = [v59 topAnchor];
    v61 = [(UIView *)v8 topAnchor];
    v62 = [v60 constraintEqualToAnchor:v61 constant:0.0];
    [v62 setActive:1];

    v63 = [(UIUndoTutorialViewController *)self tutorialView];
    v64 = [v63 leadingAnchor];
    v65 = [(UIView *)v8 leadingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65 constant:0.0];
    [v66 setActive:1];

    v67 = [(UIView *)v8 trailingAnchor];
    v68 = [(UIUndoTutorialViewController *)self tutorialView];
    v69 = [v68 trailingAnchor];
    v70 = [v67 constraintEqualToAnchor:v69 constant:0.0];
    [v70 setActive:1];

    v71 = [(UIView *)v8 bottomAnchor];
    v72 = [(UIUndoTutorialViewController *)self tutorialView];
    v73 = [v72 bottomAnchor];
    v74 = [v71 constraintEqualToAnchor:v73 constant:0.0];
    [v74 setActive:1];

    v75 = [UIVisualEffectView alloc];
    v76 = [UIVibrancyEffect effectForBlurEffect:v7 style:7];
    v55 = [(UIVisualEffectView *)v75 initWithEffect:v76];

    [(UIView *)v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v77 = +[UIColor whiteColor];
    v78 = [(UIVisualEffectView *)v55 contentView];
    [v78 setBackgroundColor:v77];

    v79 = [(UIVisualEffectView *)v8 contentView];
    [v79 addSubview:v55];

    v80 = [(UIView *)v55 leadingAnchor];
    v81 = [(UIView *)v8 leadingAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];
    [v82 setActive:1];

    v83 = [(UIView *)v55 trailingAnchor];
    v84 = [(UIView *)v8 trailingAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];
    [v85 setActive:1];

    v86 = [(UIView *)v55 bottomAnchor];
    v87 = [(UIUndoTutorialViewController *)self tutorialView];
    v88 = [v87 button];
    v89 = [v88 topAnchor];
    v90 = [v86 constraintEqualToAnchor:v89];
    [v90 setActive:1];

    v54 = [(UIView *)v55 heightAnchor];
    v56 = [v54 constraintEqualToConstant:1.0];
    [v56 setActive:1];
  }

  v91 = [(UIUndoTutorialViewController *)self tutorialView];
  v92 = [v91 button];
  [v92 addTarget:self action:sel_doneButtonPressed forControlEvents:64];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = UIUndoTutorialViewController;
  v7 = a4;
  [(UIViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__UIUndoTutorialViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_1E70F3B98;
  v8[4] = self;
  [v7 animateAlongsideTransition:&__block_literal_global_184 completion:v8];
}

void __83__UIUndoTutorialViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) tutorialView];
  [v1 restartPagingAnimation];
}

- (void)doneButtonPressed
{
  v5 = [(UIViewController *)self presentingViewController];
  v3 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v4 = [(UIUndoTutorialViewController *)self completionHandler];
  [v5 dismissViewControllerAnimated:v3 completion:v4];
}

@end