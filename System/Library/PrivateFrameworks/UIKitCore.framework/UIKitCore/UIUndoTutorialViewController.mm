@interface UIUndoTutorialViewController
- (UIUndoTutorialViewController)initWithCompletionHandler:(id)handler;
- (void)doneButtonPressed;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation UIUndoTutorialViewController

- (UIUndoTutorialViewController)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = UIUndoTutorialViewController;
  v5 = [(UIViewController *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
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
  view = [(UIViewController *)self view];
  [view setBackgroundColor:v3];

  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v7 = [UIBlurEffect effectWithStyle:1200];
  v8 = [[UIVisualEffectView alloc] initWithEffect:v7];
  [(UIView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(UIViewController *)self view];
  [view2 addSubview:v8];

  v10 = [UIUndoTutorialView alloc];
  if (userInterfaceStyle == 2)
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
  contentView = [(UIVisualEffectView *)v8 contentView];
  [contentView addSubview:self->_tutorialView];

  centerXAnchor = [(UIView *)v8 centerXAnchor];
  view3 = [(UIViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v18 setActive:1];

  centerYAnchor = [(UIView *)v8 centerYAnchor];
  view4 = [(UIViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v22 setActive:1];

  [(UIVisualEffectView *)v8 _setContinuousCornerRadius:14.0];
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v23 = objc_alloc_init(UILayoutGuide);
    view5 = [(UIViewController *)self view];
    [view5 addLayoutGuide:v23];

    v25 = objc_alloc_init(UILayoutGuide);
    view6 = [(UIViewController *)self view];
    [view6 addLayoutGuide:v25];

    widthAnchor = [(UIView *)v8 widthAnchor];
    v133 = [widthAnchor constraintEqualToConstant:625.0];

    LODWORD(v28) = 1148829696;
    [v133 setPriority:v28];
    v112 = MEMORY[0x1E69977A0];
    leadingAnchor = [(UILayoutGuide *)v23 leadingAnchor];
    view7 = [(UIViewController *)self view];
    leadingAnchor2 = [view7 leadingAnchor];
    v122 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v137[0] = v122;
    view8 = [(UIViewController *)self view];
    trailingAnchor = [view8 trailingAnchor];
    v29 = v25;
    trailingAnchor2 = [(UILayoutGuide *)v25 trailingAnchor];
    v114 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v137[1] = v114;
    v131 = v23;
    widthAnchor2 = [(UILayoutGuide *)v23 widthAnchor];
    widthAnchor3 = [(UILayoutGuide *)v25 widthAnchor];
    v106 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 multiplier:1.0];
    v137[2] = v106;
    v130 = v25;
    widthAnchor4 = [(UILayoutGuide *)v25 widthAnchor];
    v102 = [widthAnchor4 constraintGreaterThanOrEqualToConstant:10.0];
    v137[3] = v102;
    leadingAnchor3 = [(UIView *)v8 leadingAnchor];
    trailingAnchor3 = [(UILayoutGuide *)v23 trailingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3];
    v137[4] = v32;
    leadingAnchor4 = [(UILayoutGuide *)v29 leadingAnchor];
    trailingAnchor4 = [(UIView *)v8 trailingAnchor];
    [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4];
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
    view9 = [(UIViewController *)self view];
    [view9 addLayoutGuide:v39];

    v41 = objc_alloc_init(UILayoutGuide);
    view10 = [(UIViewController *)self view];
    [view10 addLayoutGuide:v41];

    widthAnchor5 = [(UILayoutGuide *)v39 widthAnchor];
    v129 = [widthAnchor5 constraintEqualToConstant:88.0];

    LODWORD(v44) = 1148829696;
    [v129 setPriority:v44];
    v101 = MEMORY[0x1E69977A0];
    v136[0] = v129;
    widthAnchor6 = [(UILayoutGuide *)v39 widthAnchor];
    v125 = [widthAnchor6 constraintGreaterThanOrEqualToConstant:10.0];
    v136[1] = v125;
    widthAnchor7 = [(UILayoutGuide *)v41 widthAnchor];
    widthAnchor8 = [(UILayoutGuide *)v39 widthAnchor];
    v119 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:1.0];
    v136[2] = v119;
    v115 = v39;
    leadingAnchor5 = [(UILayoutGuide *)v39 leadingAnchor];
    leadingAnchor6 = [(UIView *)v134 leadingAnchor];
    v111 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v136[3] = v111;
    trailingAnchor5 = [(UIView *)v134 trailingAnchor];
    v109 = v41;
    trailingAnchor6 = [(UILayoutGuide *)v41 trailingAnchor];
    v103 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v136[4] = v103;
    tutorialView = [(UIUndoTutorialViewController *)self tutorialView];
    leadingAnchor7 = [tutorialView leadingAnchor];
    trailingAnchor7 = [(UILayoutGuide *)v39 trailingAnchor];
    v97 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor7];
    v136[5] = v97;
    leadingAnchor8 = [(UILayoutGuide *)v41 leadingAnchor];
    tutorialView2 = [(UIUndoTutorialViewController *)self tutorialView];
    trailingAnchor8 = [tutorialView2 trailingAnchor];
    v93 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor8];
    v136[6] = v93;
    tutorialView3 = [(UIUndoTutorialViewController *)self tutorialView];
    topAnchor = [tutorialView3 topAnchor];
    topAnchor2 = [(UIView *)v134 topAnchor];
    v48 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:56.0];
    v136[7] = v48;
    bottomAnchor = [(UIView *)v134 bottomAnchor];
    tutorialView4 = [(UIUndoTutorialViewController *)self tutorialView];
    bottomAnchor2 = [tutorialView4 bottomAnchor];
    v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:5.0];
    v136[8] = v52;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:9];
    [v101 activateConstraints:v53];

    heightAnchor = v130;
    v55 = v131;

    v8 = v134;
    v56 = v133;

    v7 = v132;
  }

  else
  {
    widthAnchor9 = [(UIView *)v8 widthAnchor];
    v58 = [widthAnchor9 constraintEqualToConstant:270.0];
    [v58 setActive:1];

    tutorialView5 = [(UIUndoTutorialViewController *)self tutorialView];
    topAnchor3 = [tutorialView5 topAnchor];
    topAnchor4 = [(UIView *)v8 topAnchor];
    v62 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:0.0];
    [v62 setActive:1];

    tutorialView6 = [(UIUndoTutorialViewController *)self tutorialView];
    leadingAnchor9 = [tutorialView6 leadingAnchor];
    leadingAnchor10 = [(UIView *)v8 leadingAnchor];
    v66 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:0.0];
    [v66 setActive:1];

    trailingAnchor9 = [(UIView *)v8 trailingAnchor];
    tutorialView7 = [(UIUndoTutorialViewController *)self tutorialView];
    trailingAnchor10 = [tutorialView7 trailingAnchor];
    v70 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:0.0];
    [v70 setActive:1];

    bottomAnchor3 = [(UIView *)v8 bottomAnchor];
    tutorialView8 = [(UIUndoTutorialViewController *)self tutorialView];
    bottomAnchor4 = [tutorialView8 bottomAnchor];
    v74 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
    [v74 setActive:1];

    v75 = [UIVisualEffectView alloc];
    v76 = [UIVibrancyEffect effectForBlurEffect:v7 style:7];
    v55 = [(UIVisualEffectView *)v75 initWithEffect:v76];

    [(UIView *)v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v77 = +[UIColor whiteColor];
    contentView2 = [(UIVisualEffectView *)v55 contentView];
    [contentView2 setBackgroundColor:v77];

    contentView3 = [(UIVisualEffectView *)v8 contentView];
    [contentView3 addSubview:v55];

    leadingAnchor11 = [(UIView *)v55 leadingAnchor];
    leadingAnchor12 = [(UIView *)v8 leadingAnchor];
    v82 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    [v82 setActive:1];

    trailingAnchor11 = [(UIView *)v55 trailingAnchor];
    trailingAnchor12 = [(UIView *)v8 trailingAnchor];
    v85 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    [v85 setActive:1];

    bottomAnchor5 = [(UIView *)v55 bottomAnchor];
    tutorialView9 = [(UIUndoTutorialViewController *)self tutorialView];
    button = [tutorialView9 button];
    topAnchor5 = [button topAnchor];
    v90 = [bottomAnchor5 constraintEqualToAnchor:topAnchor5];
    [v90 setActive:1];

    heightAnchor = [(UIView *)v55 heightAnchor];
    v56 = [heightAnchor constraintEqualToConstant:1.0];
    [v56 setActive:1];
  }

  tutorialView10 = [(UIUndoTutorialViewController *)self tutorialView];
  button2 = [tutorialView10 button];
  [button2 addTarget:self action:sel_doneButtonPressed forControlEvents:64];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = UIUndoTutorialViewController;
  coordinatorCopy = coordinator;
  [(UIViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__UIUndoTutorialViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_1E70F3B98;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_184 completion:v8];
}

void __83__UIUndoTutorialViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) tutorialView];
  [v1 restartPagingAnimation];
}

- (void)doneButtonPressed
{
  presentingViewController = [(UIViewController *)self presentingViewController];
  v3 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
  completionHandler = [(UIUndoTutorialViewController *)self completionHandler];
  [presentingViewController dismissViewControllerAnimated:v3 completion:completionHandler];
}

@end