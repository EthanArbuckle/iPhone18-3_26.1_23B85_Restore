@interface SKUIReviewInAppRatingViewController
- (SKUIReviewInAppRatingViewController)initWithTitle:(id)title message:(id)message icon:(id)icon;
- (id)_actions;
- (id)_actionsLayoutAxesForCurrentState;
- (id)_buttonActionWithTitle:(id)title style:(unint64_t)style;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)interfaceAction:(id)action invokeActionHandler:(id)handler completion:(id)completion;
- (void)reloadViewsConfiguration;
- (void)setState:(unint64_t)state;
- (void)viewDidLoad;
@end

@implementation SKUIReviewInAppRatingViewController

- (SKUIReviewInAppRatingViewController)initWithTitle:(id)title message:(id)message icon:(id)icon
{
  titleCopy = title;
  messageCopy = message;
  iconCopy = icon;
  v15.receiver = self;
  v15.super_class = SKUIReviewInAppRatingViewController;
  v11 = [(SKUIReviewInAppRatingViewController *)&v15 initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = [[SKUIReviewInAppRatingHeaderView alloc] initWithTitle:titleCopy message:messageCopy icon:iconCopy];
    headerView = v11->_headerView;
    v11->_headerView = v12;

    v11->_state = 0;
    [(SKUIReviewInAppRatingViewController *)v11 setTransitioningDelegate:v11];
    [(SKUIReviewInAppRatingViewController *)v11 setModalPresentationStyle:4];
  }

  return v11;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = SKUIReviewInAppRatingViewController;
  [(SKUIReviewInAppRatingViewController *)&v23 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75D68]);
  v4 = [MEMORY[0x277D75210] effectWithStyle:8];
  v5 = [v3 initWithEffect:v4];
  [(SKUIReviewInAppRatingViewController *)self setBackgroundView:v5];

  backgroundView = [(SKUIReviewInAppRatingViewController *)self backgroundView];
  [backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

  backgroundView2 = [(SKUIReviewInAppRatingViewController *)self backgroundView];
  [backgroundView2 _setContinuousCornerRadius:16.0];

  backgroundView3 = [(SKUIReviewInAppRatingViewController *)self backgroundView];
  [backgroundView3 setClipsToBounds:1];

  backgroundView4 = [(SKUIReviewInAppRatingViewController *)self backgroundView];
  [backgroundView4 setHidden:1];

  view = [(SKUIReviewInAppRatingViewController *)self view];
  backgroundView5 = [(SKUIReviewInAppRatingViewController *)self backgroundView];
  [view addSubview:backgroundView5];

  v12 = objc_alloc(MEMORY[0x277D75A68]);
  v13 = [v12 initWithArrangedSubviews:MEMORY[0x277CBEBF8]];
  [(SKUIReviewInAppRatingViewController *)self setStackView:v13];

  stackView = [(SKUIReviewInAppRatingViewController *)self stackView];
  [stackView setAxis:1];

  stackView2 = [(SKUIReviewInAppRatingViewController *)self stackView];
  [stackView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(SKUIReviewInAppRatingViewController *)self view];
  stackView3 = [(SKUIReviewInAppRatingViewController *)self stackView];
  [view2 addSubview:stackView3];

  v18 = objc_alloc_init(SKUIReviewInAppRatingControlViewController);
  ratingControl = [(SKUIReviewInAppRatingControlViewController *)v18 ratingControl];
  [(SKUIReviewInAppRatingViewController *)self setRatingControl:ratingControl];

  ratingControl2 = [(SKUIReviewInAppRatingViewController *)self ratingControl];
  [ratingControl2 addTarget:self action:sel__ratingControlChanged_ forControlEvents:4096];

  v21 = [MEMORY[0x277D75618] actionWithCustomContentViewController:v18];
  [(SKUIReviewInAppRatingViewController *)self setRatingControlAction:v21];

  ratingControlAction = [(SKUIReviewInAppRatingViewController *)self ratingControlAction];
  [ratingControlAction setEnabled:0];
}

- (void)reloadViewsConfiguration
{
  v148 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  constraints = [(SKUIReviewInAppRatingViewController *)self constraints];
  [v3 deactivateConstraints:constraints];

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  stackView = [(SKUIReviewInAppRatingViewController *)self stackView];
  arrangedSubviews = [stackView arrangedSubviews];

  v7 = [arrangedSubviews countByEnumeratingWithState:&v138 objects:v147 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v139;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v139 != v9)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v11 = *(*(&v138 + 1) + 8 * i);
        stackView2 = [(SKUIReviewInAppRatingViewController *)self stackView];
        [stackView2 setSpacing:0.0];

        stackView3 = [(SKUIReviewInAppRatingViewController *)self stackView];
        [stackView3 removeArrangedSubview:v11];

        [v11 removeFromSuperview];
      }

      v8 = [arrangedSubviews countByEnumeratingWithState:&v138 objects:v147 count:16];
    }

    while (v8);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  constraints = self->_constraints;
  self->_constraints = v14;

  if ([(SKUIReviewInAppRatingViewController *)self state]== 2)
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  else
  {
    ratingControlAction = [(SKUIReviewInAppRatingViewController *)self ratingControlAction];
    v146 = ratingControlAction;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
  }

  v130 = v16;
  v129 = [MEMORY[0x277D75620] actionGroupWithActions:v16];
  v18 = [objc_alloc(MEMORY[0x277D75628]) initWithActionGroup:v129 actionHandlerInvocationDelegate:self];
  headerView = [(SKUIReviewInAppRatingViewController *)self headerView];
  [v18 insertArrangedHeaderView:headerView atIndex:0 scrollable:0];

  _actions = [(SKUIReviewInAppRatingViewController *)self _actions];
  v127 = [MEMORY[0x277D75620] actionGroupWithActions:_actions];
  v20 = [objc_alloc(MEMORY[0x277D75628]) initWithActionGroup:v127 actionHandlerInvocationDelegate:self];
  _actionsLayoutAxesForCurrentState = [(SKUIReviewInAppRatingViewController *)self _actionsLayoutAxesForCurrentState];
  [v20 setAllowedActionLayoutAxisByPriority:_actionsLayoutAxesForCurrentState];

  v22 = objc_alloc(MEMORY[0x277D75D18]);
  v23 = *MEMORY[0x277CBF3A0];
  v24 = *(MEMORY[0x277CBF3A0] + 8);
  v25 = *(MEMORY[0x277CBF3A0] + 16);
  v26 = *(MEMORY[0x277CBF3A0] + 24);
  v27 = [v22 initWithFrame:{*MEMORY[0x277CBF3A0], v24, v25, v26}];
  constraints2 = [(SKUIReviewInAppRatingViewController *)self constraints];
  v126 = v27;
  heightAnchor = [v27 heightAnchor];
  v30 = [heightAnchor constraintEqualToConstant:10.0];
  [constraints2 addObject:v30];

  [v20 insertArrangedHeaderView:v27 atIndex:0 scrollable:0];
  v31 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v23, v24, v25, v26}];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView4 = [(SKUIReviewInAppRatingViewController *)self stackView];
  [stackView4 addArrangedSubview:v31];

  [v18 _setContinuousCornerRadius:16.0];
  [v18 setClipsToBounds:1];
  layer = [v18 layer];
  [layer setMaskedCorners:3];

  [v18 _setDrawsBackground:0];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v145 = v20;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
  [v18 setSimultaneouslyPresentedGroupViews:v34];

  [v31 addSubview:v18];
  [v20 _setContinuousCornerRadius:16.0];
  [v20 setClipsToBounds:1];
  layer2 = [v20 layer];
  [layer2 setMaskedCorners:12];

  [v20 _setDrawsBackground:0];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v144 = v18;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
  [v20 setSimultaneouslyPresentedGroupViews:v36];

  [v31 addSubview:v20];
  constraints3 = [(SKUIReviewInAppRatingViewController *)self constraints];
  topAnchor = [v18 topAnchor];
  topAnchor2 = [v31 topAnchor];
  v122 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v143[0] = v122;
  leftAnchor = [v18 leftAnchor];
  leftAnchor2 = [v31 leftAnchor];
  v116 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v143[1] = v116;
  v125 = v18;
  rightAnchor = [v18 rightAnchor];
  rightAnchor2 = [v31 rightAnchor];
  v110 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v143[2] = v110;
  topAnchor3 = [v20 topAnchor];
  bottomAnchor = [v18 bottomAnchor];
  v104 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:-10.0];
  v143[3] = v104;
  rightAnchor3 = [v20 rightAnchor];
  rightAnchor4 = [v31 rightAnchor];
  v38 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v143[4] = v38;
  v124 = v20;
  leftAnchor3 = [v20 leftAnchor];
  v137 = v31;
  leftAnchor4 = [v31 leftAnchor];
  v41 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v143[5] = v41;
  bottomAnchor2 = [v20 bottomAnchor];
  bottomAnchor3 = [v31 bottomAnchor];
  v44 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v143[6] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:7];
  [constraints3 addObjectsFromArray:v45];

  stackView5 = [(SKUIReviewInAppRatingViewController *)self stackView];
  centerYAnchor = [stackView5 centerYAnchor];
  view = [(SKUIReviewInAppRatingViewController *)self view];
  centerYAnchor2 = [view centerYAnchor];
  v136 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-10.0];

  LODWORD(v50) = 1140457472;
  [v136 setPriority:v50];
  stackView6 = [(SKUIReviewInAppRatingViewController *)self stackView];
  centerYAnchor3 = [stackView6 centerYAnchor];
  view2 = [(SKUIReviewInAppRatingViewController *)self view];
  centerYAnchor4 = [view2 centerYAnchor];
  v134 = [centerYAnchor3 constraintGreaterThanOrEqualToAnchor:centerYAnchor4 constant:-10.0];

  stackView7 = [(SKUIReviewInAppRatingViewController *)self stackView];
  centerYAnchor5 = [stackView7 centerYAnchor];
  view3 = [(SKUIReviewInAppRatingViewController *)self view];
  centerYAnchor6 = [view3 centerYAnchor];
  v121 = [centerYAnchor5 constraintLessThanOrEqualToAnchor:centerYAnchor6 constant:0.0];

  stackView8 = [(SKUIReviewInAppRatingViewController *)self stackView];
  centerXAnchor = [stackView8 centerXAnchor];
  view4 = [(SKUIReviewInAppRatingViewController *)self view];
  centerXAnchor2 = [view4 centerXAnchor];
  v119 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  view5 = [(SKUIReviewInAppRatingViewController *)self view];
  layoutMarginsGuide = [view5 layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide leadingAnchor];

  view6 = [(SKUIReviewInAppRatingViewController *)self view];
  layoutMarginsGuide2 = [view6 layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide2 trailingAnchor];

  stackView9 = [(SKUIReviewInAppRatingViewController *)self stackView];
  topAnchor4 = [stackView9 topAnchor];
  view7 = [(SKUIReviewInAppRatingViewController *)self view];
  topAnchor5 = [view7 topAnchor];
  v71 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5 constant:10.0];

  LODWORD(v72) = 1148829696;
  v123 = v71;
  [v71 setPriority:v72];
  constraints4 = [(SKUIReviewInAppRatingViewController *)self constraints];
  [constraints4 addObject:v71];

  backgroundView = [(SKUIReviewInAppRatingViewController *)self backgroundView];
  [backgroundView setHidden:0];

  constraints5 = [(SKUIReviewInAppRatingViewController *)self constraints];
  v142[0] = v136;
  v142[1] = v134;
  v142[2] = v121;
  v142[3] = v119;
  stackView10 = [(SKUIReviewInAppRatingViewController *)self stackView];
  widthAnchor = [stackView10 widthAnchor];
  v109 = [widthAnchor constraintEqualToConstant:270.0];
  v142[4] = v109;
  stackView11 = [(SKUIReviewInAppRatingViewController *)self stackView];
  leadingAnchor2 = [stackView11 leadingAnchor];
  v103 = [leadingAnchor2 constraintGreaterThanOrEqualToAnchor:leadingAnchor];
  v142[5] = v103;
  stackView12 = [(SKUIReviewInAppRatingViewController *)self stackView];
  trailingAnchor2 = [stackView12 trailingAnchor];
  v99 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor];
  v142[6] = v99;
  stackView13 = [(SKUIReviewInAppRatingViewController *)self stackView];
  bottomAnchor4 = [stackView13 bottomAnchor];
  view8 = [(SKUIReviewInAppRatingViewController *)self view];
  bottomAnchor5 = [view8 bottomAnchor];
  v94 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5];
  v142[7] = v94;
  backgroundView2 = [(SKUIReviewInAppRatingViewController *)self backgroundView];
  centerYAnchor7 = [backgroundView2 centerYAnchor];
  centerYAnchor8 = [v137 centerYAnchor];
  v90 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v142[8] = v90;
  backgroundView3 = [(SKUIReviewInAppRatingViewController *)self backgroundView];
  centerXAnchor3 = [backgroundView3 centerXAnchor];
  centerXAnchor4 = [v137 centerXAnchor];
  v86 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v142[9] = v86;
  backgroundView4 = [(SKUIReviewInAppRatingViewController *)self backgroundView];
  widthAnchor2 = [backgroundView4 widthAnchor];
  widthAnchor3 = [v137 widthAnchor];
  v78 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  v142[10] = v78;
  backgroundView5 = [(SKUIReviewInAppRatingViewController *)self backgroundView];
  heightAnchor2 = [backgroundView5 heightAnchor];
  heightAnchor3 = [v137 heightAnchor];
  v82 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v142[11] = v82;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:12];
  [constraints5 addObjectsFromArray:v83];

  v84 = MEMORY[0x277CCAAD0];
  constraints6 = [(SKUIReviewInAppRatingViewController *)self constraints];
  [v84 activateConstraints:constraints6];
}

- (void)setState:(unint64_t)state
{
  if (self->_state == state)
  {
    return;
  }

  if (state < 2)
  {
    headerView = [(SKUIReviewInAppRatingViewController *)self headerView];
    [headerView setCompleted:0];
LABEL_6:

    goto LABEL_7;
  }

  if (state == 2)
  {
    headerView = [(SKUIReviewInAppRatingViewController *)self headerView];
    ratingControl = [(SKUIReviewInAppRatingViewController *)self ratingControl];
    [headerView setCompletedWithRating:{objc_msgSend(ratingControl, "userRating")}];

    goto LABEL_6;
  }

LABEL_7:
  self->_state = state;

  [(SKUIReviewInAppRatingViewController *)self reloadViewsConfiguration];
}

- (id)_actions
{
  v45[2] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__SKUIReviewInAppRatingViewController__actions__block_invoke;
  aBlock[3] = &unk_2781FE688;
  objc_copyWeak(&v41, &location);
  v4 = _Block_copy(aBlock);
  state = self->_state;
  if (state == 2)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"IN_APP_REVIEW_ACTION_WRITE_REVIEW" value:&stru_2827FFAC8 table:0];
    v8 = [(SKUIReviewInAppRatingViewController *)self _buttonActionWithTitle:v19 style:1];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __47__SKUIReviewInAppRatingViewController__actions__block_invoke_6;
    v31[3] = &unk_2781F9990;
    v20 = v4;
    v32 = v20;
    [v8 setAfterDismissHandler:v31];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"IN_APP_REVIEW_ACTION_OK" value:&stru_2827FFAC8 table:0];
    v15 = [(SKUIReviewInAppRatingViewController *)self _buttonActionWithTitle:v22 style:0];

    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __47__SKUIReviewInAppRatingViewController__actions__block_invoke_7;
    v29 = &unk_2781F9990;
    v30 = v20;
    [v15 setAfterDismissHandler:&v26];
    v43[0] = v8;
    v43[1] = v15;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:{2, v26, v27, v28, v29}];
    [array addObjectsFromArray:v23];

    v9 = &v32;
LABEL_10:

    goto LABEL_11;
  }

  if (state == 1)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"IN_APP_REVIEW_ACTION_CANCEL" value:&stru_2827FFAC8 table:0];
    v8 = [(SKUIReviewInAppRatingViewController *)self _buttonActionWithTitle:v11 style:0];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __47__SKUIReviewInAppRatingViewController__actions__block_invoke_3;
    v36[3] = &unk_2781F9990;
    v12 = v4;
    v37 = v12;
    [v8 setAfterDismissHandler:v36];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"IN_APP_REVIEW_ACTION_SUBMIT" value:&stru_2827FFAC8 table:0];
    v15 = [(SKUIReviewInAppRatingViewController *)self _buttonActionWithTitle:v14 style:1];

    [v15 setEnabled:{-[SKUIReviewInAppRatingViewController disableSubmit](self, "disableSubmit") ^ 1}];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __47__SKUIReviewInAppRatingViewController__actions__block_invoke_4;
    v33[3] = &unk_2781FE970;
    objc_copyWeak(&v35, &location);
    v34 = v12;
    [v15 setBeforeDismissHandler:v33];
    view = [(SKUIReviewInAppRatingViewController *)self view];
    LODWORD(v12) = [view effectiveUserInterfaceLayoutDirection] == 1;

    if (v12)
    {
      v45[0] = v15;
      v45[1] = v8;
      [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    }

    else
    {
      v44[0] = v8;
      v44[1] = v15;
      [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    }
    v17 = ;
    [array addObjectsFromArray:v17];

    objc_destroyWeak(&v35);
    v9 = &v37;
    goto LABEL_10;
  }

  if (state)
  {
    goto LABEL_12;
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"IN_APP_REVIEW_ACTION_NOT_NOW" value:&stru_2827FFAC8 table:0];
  v8 = [(SKUIReviewInAppRatingViewController *)self _buttonActionWithTitle:v7 style:0];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __47__SKUIReviewInAppRatingViewController__actions__block_invoke_2;
  v38[3] = &unk_2781F9990;
  v39 = v4;
  [v8 setAfterDismissHandler:v38];
  [array addObject:v8];
  v9 = &v39;
LABEL_11:

LABEL_12:
  v24 = [array copy];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);

  return v24;
}

void __47__SKUIReviewInAppRatingViewController__actions__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained completion];

  if (v3)
  {
    v4 = [WeakRetained completion];
    v4[2](v4, a2);
  }
}

void __47__SKUIReviewInAppRatingViewController__actions__block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained ratingControl];
  v8 = [v7 userRating];

  v9 = [WeakRetained ratingHandler];

  if (v9 && v8 >= 1)
  {
    [v5 setEnabled:0];
    v10 = [WeakRetained ratingControl];
    [v10 setEnabled:0];

    v11 = [WeakRetained ratingHandler];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__SKUIReviewInAppRatingViewController__actions__block_invoke_5;
    v12[3] = &unk_2781FE880;
    v13 = v5;
    v14 = WeakRetained;
    v15 = *(a1 + 32);
    (v11)[2](v11, v8, v12);
  }

  *a3 = 0;
}

uint64_t __47__SKUIReviewInAppRatingViewController__actions__block_invoke_5(uint64_t a1, int a2)
{
  [*(a1 + 32) setEnabled:{objc_msgSend(*(a1 + 40), "disableSubmit") ^ 1}];
  v4 = [*(a1 + 40) ratingControl];
  [v4 setEnabled:1];

  if (a2)
  {
    v5 = *(a1 + 40);

    return [v5 setState:2];
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    return v7();
  }
}

- (id)_buttonActionWithTitle:(id)title style:(unint64_t)style
{
  titleCopy = title;
  v6 = [[SKUIReviewInAppRatingButtonViewController alloc] initWithTitle:titleCopy style:style];

  v7 = [SKUIReviewInAppRatingAction actionWithCustomContentViewController:v6];

  return v7;
}

- (id)_actionsLayoutAxesForCurrentState
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = array;
  state = self->_state;
  if (state <= 2)
  {
    [array addObject:qword_2781FE990[state]];
  }

  v6 = [v4 copy];

  return v6;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[SKUIReviewInAppRatingPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v6 = objc_alloc_init(SKUIReviewInAppRatingAnimatedTransitioning);
  [(SKUIReviewInAppRatingAnimatedTransitioning *)v6 setViewController:self];
  [(SKUIReviewInAppRatingAnimatedTransitioning *)v6 setPresentation:1];

  return v6;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v4 = objc_alloc_init(SKUIReviewInAppRatingAnimatedTransitioning);
  [(SKUIReviewInAppRatingAnimatedTransitioning *)v4 setViewController:self];
  [(SKUIReviewInAppRatingAnimatedTransitioning *)v4 setPresentation:0];

  return v4;
}

- (void)interfaceAction:(id)action invokeActionHandler:(id)handler completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = actionCopy;
    v14 = 1;
    beforeDismissHandler = [v9 beforeDismissHandler];

    if (!beforeDismissHandler || ([v9 beforeDismissHandler], v11 = objc_claimAutoreleasedReturnValue(), (v11)[2](v11, v9, &v14), v11, (v14 & 1) != 0))
    {
      afterDismissHandler = [v9 afterDismissHandler];
      if (afterDismissHandler)
      {
        afterDismissHandler2 = [v9 afterDismissHandler];
        [(SKUIReviewInAppRatingViewController *)self dismissViewControllerAnimated:1 completion:afterDismissHandler2];
      }

      else
      {
        [(SKUIReviewInAppRatingViewController *)self dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

@end