@interface SKUIContextActionsViewController
- (CGPoint)gestureRecognizerInitialLocation;
- (SKUIContextActionsViewController)initWithCoder:(id)a3;
- (SKUIContextActionsViewController)initWithConfiguration:(id)a3;
- (id)_transitionPresentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (void)_applySystemRecognizer;
- (void)_reloadViewsConfiguration;
- (void)animateTransition:(id)a3;
- (void)interfaceAction:(id)a3 invokeActionHandler:(id)a4 completion:(id)a5;
- (void)systemProvidedGestureRecognzierTriggered:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SKUIContextActionsViewController

- (SKUIContextActionsViewController)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 raise:@"SKUnsupportedPresentationException" format:{@"%@ must be used with configuration", v6}];

  return 0;
}

- (SKUIContextActionsViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIContextActionsViewController initWithConfiguration:];
  }

  v9.receiver = self;
  v9.super_class = SKUIContextActionsViewController;
  v6 = [(SKUIContextActionsViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v7->_orbPresentation = 0;
    v7->_appliedSystemRecognizer = 0;
    [(SKUIContextActionsViewController *)v7 setTransitioningDelegate:v7];
    [(SKUIContextActionsViewController *)v7 setModalPresentationStyle:4];
  }

  return v7;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = SKUIContextActionsViewController;
  [(SKUIContextActionsViewController *)&v16 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_viewTapped_];
  v4 = [(SKUIContextActionsViewController *)self view];
  [v4 addGestureRecognizer:v3];

  v5 = objc_alloc(MEMORY[0x277D75D68]);
  v6 = [MEMORY[0x277D75210] effectWithStyle:0];
  v7 = [v5 initWithEffect:v6];

  [(UIVisualEffectView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVisualEffectView *)v7 _setContinuousCornerRadius:16.0];
  [(UIVisualEffectView *)v7 setClipsToBounds:1];
  [(UIVisualEffectView *)v7 setHidden:1];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v7;
  v9 = v7;

  v10 = [(SKUIContextActionsViewController *)self view];
  [v10 addSubview:v9];

  v11 = objc_alloc(MEMORY[0x277D75A68]);
  v12 = [v11 initWithArrangedSubviews:MEMORY[0x277CBEBF8]];
  [(UIStackView *)v12 setAxis:1];
  [(UIStackView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = self->_stackView;
  self->_stackView = v12;
  v14 = v12;

  v15 = [(SKUIContextActionsViewController *)self view];
  [v15 addSubview:v14];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIContextActionsViewController;
  [(SKUIContextActionsViewController *)&v4 viewWillAppear:a3];
  [(SKUIContextActionsViewController *)self _reloadViewsConfiguration];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SKUIContextActionsViewController;
  [(SKUIContextActionsViewController *)&v7 viewDidAppear:a3];
  v4 = [(SKUIContextActionsViewController *)self systemProvidedGestureRecognzier];
  if (v4)
  {
    v5 = [(SKUIContextActionsViewController *)self view];
    v6 = [v5 window];
    [v4 locationInView:v6];
    [(SKUIContextActionsViewController *)self setGestureRecognizerInitialLocation:?];

    [v4 addTarget:self action:sel_systemProvidedGestureRecognzierTriggered_];
  }
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SKUIContextActionsViewController;
  [(SKUIContextActionsViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(SKUIContextActionsViewController *)self scrollableActionGroupView];
  v4 = [(SKUIContextActionsViewController *)self view];
  [v4 bounds];
  [v3 systemLayoutSizeFittingSize:{v5, v6}];
  v8 = v7;
  v9 = [(SKUIContextActionsViewController *)self scrollableActionGroupView];
  [v9 bounds];
  Height = CGRectGetHeight(v14);

  if (v8 > Height)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0399999991];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v11 = ;
  v12 = [(SKUIContextActionsViewController *)self scrollableActionGroupView];
  [v12 setBackgroundColor:v11];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKUIContextActionsViewController;
  [(SKUIContextActionsViewController *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [v4 horizontalSizeClass];
    v6 = [(SKUIContextActionsViewController *)self traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v5 != v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __61__SKUIContextActionsViewController_traitCollectionDidChange___block_invoke;
      v8[3] = &unk_2781F80F0;
      v8[4] = self;
      [(SKUIContextActionsViewController *)self dismissViewControllerAnimated:0 completion:v8];
    }
  }
}

void __61__SKUIContextActionsViewController_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v29 = [MEMORY[0x277D75418] currentDevice];
  if ([v29 userInterfaceIdiom] == 1)
  {
    v2 = [*(a1 + 32) traitCollection];
    v3 = [v2 horizontalSizeClass];

    if (v3 != 2)
    {
      return;
    }

    [*(a1 + 32) setModalPresentationStyle:7];
    v4 = [*(a1 + 32) configuration];
    v29 = [v4 presentationSource];

    v5 = [v29 viewController];
    [v5 presentViewController:*(a1 + 32) animated:0 completion:0];

    v6 = *(a1 + 32);
    v7 = [v6 presentationController];
    [v7 setDelegate:v6];

    v8 = [*(a1 + 32) configuration];
    v9 = [v8 presentationSource];
    v10 = [v9 barButtonItem];

    v11 = [*(a1 + 32) configuration];
    v12 = [v11 presentationSource];
    v13 = v12;
    if (v10)
    {
      v14 = [v12 barButtonItem];
      v15 = [*(a1 + 32) popoverPresentationController];
      [v15 setBarButtonItem:v14];

LABEL_8:
      goto LABEL_9;
    }

    v16 = [v12 sourceView];

    if (v16)
    {
      v17 = [*(a1 + 32) configuration];
      v18 = [v17 presentationSource];
      v19 = [v18 sourceView];
      v20 = [*(a1 + 32) popoverPresentationController];
      [v20 setSourceView:v19];

      v11 = [*(a1 + 32) configuration];
      v13 = [v11 presentationSource];
      [v13 sourceRect];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v14 = [*(a1 + 32) popoverPresentationController];
      [v14 setSourceRect:{v22, v24, v26, v28}];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)systemProvidedGestureRecognzierTriggered:(id)a3
{
  v17 = a3;
  [(SKUIContextActionsViewController *)self gestureRecognizerInitialLocation];
  v6 = v5;
  v7 = v4;
  v8 = v5 == *MEMORY[0x277CBF348] && v4 == *(MEMORY[0x277CBF348] + 8);
  if (!v8 && [v17 state] == 2)
  {
    v9 = [(SKUIContextActionsViewController *)self view];
    v10 = [v9 window];
    [v17 locationInView:v10];
    v12 = v11;
    v14 = v13;

    v15 = v12 - v6;
    if (v12 - v6 < 0.0)
    {
      v15 = -(v12 - v6);
    }

    if (v15 > 40.0)
    {
      goto LABEL_12;
    }

    v16 = v14 - v7;
    if (v14 - v7 < 0.0)
    {
      v16 = -(v14 - v7);
    }

    if (v16 > 25.0)
    {
LABEL_12:
      [(SKUIContextActionsViewController *)self _applySystemRecognizer];
    }
  }
}

- (void)_applySystemRecognizer
{
  v3 = [(SKUIContextActionsViewController *)self contextActionView];
  v4 = [(SKUIContextActionsViewController *)self systemProvidedGestureRecognzier];
  [v3 beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:v4];

  v5 = [(SKUIContextActionsViewController *)self systemProvidedGestureRecognzier];

  if (v5)
  {
    v6 = [(SKUIContextActionsViewController *)self systemProvidedGestureRecognzier];
    [v6 removeTarget:self action:sel_systemProvidedGestureRecognzierTriggered_];
  }

  [(SKUIContextActionsViewController *)self setAppliedSystemRecognizer:1];
}

- (void)_reloadViewsConfiguration
{
  v165 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(SKUIContextActionsViewController *)self constraints];
  [v3 deactivateConstraints:v4];

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v5 = [(SKUIContextActionsViewController *)self stackView];
  v6 = [v5 arrangedSubviews];

  v7 = [v6 countByEnumeratingWithState:&v154 objects:v164 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v155;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v155 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v154 + 1) + 8 * i);
        v12 = [(SKUIContextActionsViewController *)self stackView];
        [v12 setSpacing:0.0];

        v13 = [(SKUIContextActionsViewController *)self stackView];
        [v13 removeArrangedSubview:v11];

        [v11 removeFromSuperview];
      }

      v8 = [v6 countByEnumeratingWithState:&v154 objects:v164 count:16];
    }

    while (v8);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(SKUIContextActionsViewController *)self setConstraints:v14];

  v15 = *MEMORY[0x277D76A28];
  v17 = __61__SKUIContextActionsViewController__reloadViewsConfiguration__block_invoke(v16, *MEMORY[0x277D76A28], 0, 0x8000);
  v162 = *MEMORY[0x277D74378];
  v163 = *MEMORY[0x277CC4880];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
  v19 = __61__SKUIContextActionsViewController__reloadViewsConfiguration__block_invoke(v18, v15, v18, 0);

  v20 = [(SKUIContextActionsViewController *)self configuration];
  v21 = [v20 contextActions];

  v22 = objc_alloc(MEMORY[0x277D75628]);
  v145 = v21;
  v23 = [MEMORY[0x277D75620] actionGroupWithActions:v21];
  v24 = [v22 initWithActionGroup:v23 actionHandlerInvocationDelegate:self];

  v147 = v17;
  [v24 _setVisualStyleOverrideTitleLabelFont:v17];
  LODWORD(v25) = 1132068864;
  [v24 setContentCompressionResistancePriority:1 forAxis:v25];
  [(SKUIContextActionsViewController *)self setContextActionView:v24];
  v144 = v24;
  if ([(SKUIContextActionsViewController *)self isOrbPresentation]|| ([(SKUIContextActionsViewController *)self _isInPopoverPresentation]& 1) != 0)
  {
    v26 = 0;
  }

  else
  {
    v27 = MEMORY[0x277D75618];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"CANCEL" value:&stru_2827FFAC8 table:0];
    v30 = [v27 actionWithTitle:v29 type:1 handler:&__block_literal_global_47];

    v31 = MEMORY[0x277D755B8];
    v32 = [MEMORY[0x277D75348] clearColor];
    v33 = [v31 singlePointImageWithColor:v32];
    v34 = [v33 imageWithAlignmentRectInsets:{-55.0, 0.0, 0.0, 0.0}];
    [v30 setTrailingImage:v34];

    v35 = objc_alloc(MEMORY[0x277D75628]);
    v36 = MEMORY[0x277D75620];
    v161 = v30;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:1];
    v38 = [v36 actionGroupWithActions:v37];
    v26 = [v35 initWithActionGroup:v38 actionHandlerInvocationDelegate:self];

    v39 = MEMORY[0x277CCAAD0];
    v40 = [v26 heightAnchor];
    v41 = [v40 constraintEqualToConstant:56.0];
    v160 = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
    [v39 activateConstraints:v42];

    [v26 _setVisualStyleOverrideTitleLabelFont:v19];
  }

  v43 = objc_alloc(MEMORY[0x277D75A68]);
  v44 = [v43 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v44 setAxis:1];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  v45 = [(SKUIContextActionsViewController *)self stackView];
  [v45 addArrangedSubview:v44];

  v46 = [(SKUIContextActionsViewController *)self _isInPopoverPresentation];
  if ((v46 & 1) == 0)
  {
    v47 = [(SKUIContextActionsViewController *)self contextActionView];
    [v47 _setContinuousCornerRadius:16.0];

    v48 = [(SKUIContextActionsViewController *)self contextActionView];
    [v48 setClipsToBounds:1];

    v49 = [(SKUIContextActionsViewController *)self contextActionView];
    v50 = [v49 layer];
    [v50 setMaskedCorners:15];
  }

  v51 = [(SKUIContextActionsViewController *)self contextActionView];
  [v51 _setDrawsBackground:0];

  v52 = [(SKUIContextActionsViewController *)self contextActionView];
  [v44 addArrangedSubview:v52];

  if ([(SKUIContextActionsViewController *)self hasAppliedSystemRecognizer])
  {
    v53 = [(SKUIContextActionsViewController *)self contextActionView];
    v54 = [(SKUIContextActionsViewController *)self systemProvidedGestureRecognzier];
    [v53 beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:v54];
  }

  if (v26)
  {
    v55 = [(SKUIContextActionsViewController *)self stackView];
    [v55 setSpacing:8.0];

    v56 = [(SKUIContextActionsViewController *)self stackView];
    [v56 addArrangedSubview:v26];
  }

  if ((v46 | [(SKUIContextActionsViewController *)self isOrbPresentation]) == 1)
  {
    v57 = [(SKUIContextActionsViewController *)self stackView];
    v58 = [v57 centerYAnchor];
    v59 = [(SKUIContextActionsViewController *)self view];
    v60 = [v59 centerYAnchor];
    v153 = [v58 constraintEqualToAnchor:v60];
  }

  else
  {
    v61 = [(SKUIContextActionsViewController *)self view];
    v62 = [v61 layoutMarginsGuide];
    v57 = [v62 bottomAnchor];

    v58 = [(SKUIContextActionsViewController *)self stackView];
    v59 = [v58 bottomAnchor];
    v153 = [v59 constraintEqualToAnchor:v57 constant:-10.0];
  }

  v63 = [(SKUIContextActionsViewController *)self view];
  v64 = v63;
  if (v46)
  {
    v65 = [v63 leadingAnchor];

    v66 = [(SKUIContextActionsViewController *)self view];
    v67 = [v66 trailingAnchor];
  }

  else
  {
    v68 = [v63 layoutMarginsGuide];
    v65 = [v68 leadingAnchor];

    v66 = [(SKUIContextActionsViewController *)self view];
    v69 = [v66 layoutMarginsGuide];
    v67 = [v69 trailingAnchor];
  }

  v143 = v26;
  v146 = v19;

  v70 = [(SKUIContextActionsViewController *)self stackView];
  v71 = [v70 leadingAnchor];
  v141 = v65;
  v72 = [v71 constraintEqualToAnchor:v65];

  v73 = [(SKUIContextActionsViewController *)self stackView];
  v74 = [v73 trailingAnchor];
  v140 = v67;
  v75 = [v74 constraintEqualToAnchor:v67];

  v142 = v46;
  v148 = v75;
  v149 = v72;
  v150 = v44;
  if ((v46 & 1) == 0)
  {
    v76 = [(SKUIContextActionsViewController *)self view];
    [v76 layoutMargins];
    v78 = v77;
    v79 = [(SKUIContextActionsViewController *)self view];
    [v79 layoutMargins];
    v81 = -(v78 + v80);

    v82 = [(SKUIContextActionsViewController *)self stackView];
    v83 = [v82 widthAnchor];
    v84 = [(SKUIContextActionsViewController *)self view];
    v85 = [v84 heightAnchor];
    v86 = [v83 constraintEqualToAnchor:v85 constant:v81];

    LODWORD(v87) = 1132068864;
    v88 = v86;
    v151 = v86;
    [v86 setPriority:v87];
    v89 = [(SKUIContextActionsViewController *)self stackView];
    v90 = [v89 topAnchor];
    v91 = [(SKUIContextActionsViewController *)self view];
    v92 = [v91 topAnchor];
    v93 = [v90 constraintGreaterThanOrEqualToAnchor:v92 constant:70.0];

    LODWORD(v94) = 1148829696;
    [v93 setPriority:v94];
    v131 = [(SKUIContextActionsViewController *)self constraints];
    v159[0] = v93;
    v159[1] = v88;
    v137 = [(SKUIContextActionsViewController *)self stackView];
    v133 = [v137 widthAnchor];
    v135 = [(SKUIContextActionsViewController *)self view];
    v95 = [v135 heightAnchor];
    v96 = [v133 constraintLessThanOrEqualToAnchor:v95 constant:v81];
    v159[2] = v96;
    v97 = [(SKUIContextActionsViewController *)self stackView];
    v98 = [v97 centerXAnchor];
    v99 = [(SKUIContextActionsViewController *)self view];
    v100 = [v99 centerXAnchor];
    v101 = [v98 constraintEqualToAnchor:v100];
    v159[3] = v101;
    v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:4];
    [v131 addObjectsFromArray:v102];

    v75 = v148;
    v72 = v149;

    v44 = v150;
    LODWORD(v103) = 1144750080;
    [v149 setPriority:v103];
    LODWORD(v104) = 1144750080;
    [v148 setPriority:v104];
    v105 = [(SKUIContextActionsViewController *)self backgroundView];
    [v105 setHidden:0];
  }

  v152 = [(SKUIContextActionsViewController *)self constraints];
  v158[0] = v153;
  v158[1] = v72;
  v158[2] = v75;
  v139 = [(SKUIContextActionsViewController *)self stackView];
  v136 = [v139 bottomAnchor];
  v138 = [(SKUIContextActionsViewController *)self view];
  v134 = [v138 bottomAnchor];
  v132 = [v136 constraintLessThanOrEqualToAnchor:v134];
  v158[3] = v132;
  v130 = [(SKUIContextActionsViewController *)self backgroundView];
  v129 = [v130 centerYAnchor];
  v128 = [v44 centerYAnchor];
  v127 = [v129 constraintEqualToAnchor:v128];
  v158[4] = v127;
  v126 = [(SKUIContextActionsViewController *)self backgroundView];
  v125 = [v126 centerXAnchor];
  v124 = [v44 centerXAnchor];
  v123 = [v125 constraintEqualToAnchor:v124];
  v158[5] = v123;
  v106 = [(SKUIContextActionsViewController *)self backgroundView];
  v107 = [v106 widthAnchor];
  v108 = [v44 widthAnchor];
  v109 = [v107 constraintEqualToAnchor:v108];
  v158[6] = v109;
  v110 = [(SKUIContextActionsViewController *)self backgroundView];
  v111 = [v110 heightAnchor];
  v112 = [v44 heightAnchor];
  v113 = [v111 constraintEqualToAnchor:v112];
  v158[7] = v113;
  v114 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:8];
  [v152 addObjectsFromArray:v114];

  v115 = MEMORY[0x277CCAAD0];
  v116 = [(SKUIContextActionsViewController *)self constraints];
  [v115 activateConstraints:v116];

  if (v142)
  {
    v117 = [(SKUIContextActionsViewController *)self stackView];
    v118 = [(SKUIContextActionsViewController *)self view];
    [v118 bounds];
    [v117 systemLayoutSizeFittingSize:{v119, v120}];
    v122 = v121;

    [(SKUIContextActionsViewController *)self setPreferredContentSize:347.0, v122];
  }
}

id __61__SKUIContextActionsViewController__reloadViewsConfiguration__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:a2];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 fontDescriptorByAddingAttributes:v6];

    v8 = v9;
  }

  if (a4)
  {
    v10 = [v8 fontDescriptorWithSymbolicTraits:a4];

    v8 = v10;
  }

  v11 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

  return v11;
}

- (void)interfaceAction:(id)a3 invokeActionHandler:(id)a4 completion:(id)a5
{
  v8 = a5;
  if (a4)
  {
    v11 = 0;
    (*(a4 + 2))(a4, a3, &v11);
    if (v11 == 1)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __83__SKUIContextActionsViewController_interfaceAction_invokeActionHandler_completion___block_invoke;
      v9[3] = &unk_2781F9990;
      v10 = v8;
      [(SKUIContextActionsViewController *)self dismissViewControllerAnimated:1 completion:v9];
    }

    else if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    [(SKUIContextActionsViewController *)self dismissViewControllerAnimated:1 completion:v8];
  }
}

uint64_t __83__SKUIContextActionsViewController_interfaceAction_invokeActionHandler_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_transitionPresentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SKUIContextActionsViewController *)self transitionPresentationController];

  if (!v8)
  {
    v9 = [[SKUIContextActionsPresentationController alloc] initWithPresentedViewController:v6 presentingViewController:v7];
    [(SKUIContextActionsViewController *)self setTransitionPresentationController:v9];
  }

  v10 = [(SKUIContextActionsViewController *)self transitionPresentationController];

  return v10;
}

- (id)animationControllerForDismissedController:(id)a3
{
  if ([(SKUIContextActionsViewController *)self isOrbPresentation])
  {
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75D18];
  [(SKUIContextActionsViewController *)self transitionDuration:v4];
  v7 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SKUIContextActionsViewController_animateTransition___block_invoke;
  v11[3] = &unk_2781F80F0;
  v11[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__SKUIContextActionsViewController_animateTransition___block_invoke_2;
  v9[3] = &unk_2781F84A0;
  v10 = v4;
  v8 = v4;
  [v5 animateWithDuration:0 delay:v11 usingSpringWithDamping:v9 initialSpringVelocity:v7 options:0.0 animations:1.0 completion:0.0];
}

void __54__SKUIContextActionsViewController_animateTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionPresentationController];
  v1 = [v2 dismissalAnimations];
}

uint64_t __54__SKUIContextActionsViewController_animateTransition___block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = [*(a1 + 32) transitionWasCancelled] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return [v2 completeTransition:v3];
}

- (CGPoint)gestureRecognizerInitialLocation
{
  x = self->_gestureRecognizerInitialLocation.x;
  y = self->_gestureRecognizerInitialLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithConfiguration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIContextActionsViewController initWithConfiguration:]";
}

@end