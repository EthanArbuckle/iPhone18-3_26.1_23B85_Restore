@interface TVRUIStackViewController
- (BOOL)_hostingViewIndexIsValid:(unint64_t)valid;
- (BOOL)_isIndex:(unint64_t)index directlyAboveIndex:(unint64_t)aboveIndex;
- (BOOL)_isIndex:(unint64_t)index directlyBelowIndex:(unint64_t)belowIndex;
- (CGAffineTransform)_transformWithMultiplier:(SEL)multiplier;
- (TVRUIStackViewController)initWithViewControllers:(id)controllers;
- (double)_multiplierForTranslation:(CGPoint)translation;
- (id)_hostingViewAboveIndex:(unint64_t)index;
- (id)_hostingViewBelowIndex:(unint64_t)index;
- (id)_hostingViewForIndex:(unint64_t)index;
- (id)_titleForHostingViewIndex:(unint64_t)index;
- (unint64_t)_finalIndexForIndex:(unint64_t)index translation:(CGPoint)translation velocity:(CGPoint)velocity;
- (unint64_t)_indexAboveIndex:(unint64_t)index;
- (unint64_t)_indexBelowIndex:(unint64_t)index;
- (unint64_t)_indexForViewController:(id)controller;
- (void)_animateToFinalIndex:(unint64_t)index fromIndex:(unint64_t)fromIndex duration:(double)duration;
- (void)_commitSelectedViewControllerIndex:(unint64_t)index;
- (void)_commitToFinalPositionForIndex:(unint64_t)index translation:(CGPoint)translation velocity:(CGPoint)velocity;
- (void)_configureHierarchy;
- (void)_configurePanGesture;
- (void)_panRecognizerDidFire:(id)fire;
- (void)_prepareHostingViewTransformsForIndex:(unint64_t)index;
- (void)_transitionToFinalIndex:(unint64_t)index duration:(double)duration;
- (void)_updateHostingViewTransformsForIndex:(unint64_t)index translation:(CGPoint)translation;
- (void)_updateViewControllerAppearanceForSelectedViewControllerIndex:(unint64_t)index;
- (void)selectViewControllerIndex:(unint64_t)index animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation TVRUIStackViewController

- (TVRUIStackViewController)initWithViewControllers:(id)controllers
{
  controllersCopy = controllers;
  v11.receiver = self;
  v11.super_class = TVRUIStackViewController;
  v5 = [(TVRUIStackViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    if (controllersCopy)
    {
      v7 = controllersCopy;
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_viewControllers, v7);
    v8 = [controllersCopy count];
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = 0;
    }

    v6->_selectedViewControllerIndex = v9;
    v6->_titleStyle = 0;
  }

  return v6;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TVRUIStackViewController;
  [(TVRUIStackViewController *)&v3 viewDidLoad];
  [(TVRUIStackViewController *)self _configureHierarchy];
  [(TVRUIStackViewController *)self _configurePanGesture];
}

- (void)selectViewControllerIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    v7 = 0.0;
    if (animatedCopy)
    {
      v7 = 0.25;
    }

    [(TVRUIStackViewController *)self _transitionToFinalIndex:index duration:v7];
  }
}

- (void)_configureHierarchy
{
  selfCopy = self;
  v149 = *MEMORY[0x277D85DE8];
  viewControllers = [(TVRUIStackViewController *)self viewControllers];
  v4 = [viewControllers count];

  if (v4)
  {
    hasNoTitle = [(TVRUIStackViewController *)selfCopy hasNoTitle];
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setClipsToBounds:1];
    view = [(TVRUIStackViewController *)selfCopy view];
    [view addSubview:v6];

    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.175 alpha:1.0];
    [v8 setBackgroundColor:v9];

    [v8 _setContinuousCornerRadius:22.0];
    [v8 setClipsToBounds:1];
    [v6 addSubview:v8];
    v10 = objc_alloc_init(MEMORY[0x277D757E0]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setDirection:3];
    [v6 addSubview:v10];
    viewControllers2 = [(TVRUIStackViewController *)selfCopy viewControllers];
    v76 = v10;
    [v10 setNumberOfPages:{objc_msgSend(viewControllers2, "count")}];

    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    [v12 setFont:v13];

    lightTextColor = [MEMORY[0x277D75348] lightTextColor];
    [v12 setTextColor:lightTextColor];

    LODWORD(v15) = 1148846080;
    [v12 setContentHuggingPriority:1 forAxis:v15];
    if ([(TVRUIStackViewController *)selfCopy titleOnTop])
    {
      v16 = 4;
    }

    else
    {
      v16 = 1;
    }

    [v12 setTextAlignment:v16];
    v73 = hasNoTitle;
    if (!hasNoTitle)
    {
      [v6 addSubview:v12];
    }

    v74 = v12;
    v77 = v6;
    v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v80 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    obj = [(TVRUIStackViewController *)selfCopy viewControllers];
    v83 = [obj countByEnumeratingWithState:&v139 objects:v148 count:16];
    v81 = selfCopy;
    if (v83)
    {
      v79 = *v140;
      do
      {
        v17 = 0;
        do
        {
          if (*v140 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v137 = v17;
          v18 = *(*(&v139 + 1) + 8 * v17);
          [v18 willMoveToParentViewController:selfCopy];
          v19 = objc_alloc_init(MEMORY[0x277D75D18]);
          [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v19 setClipsToBounds:1];
          [v19 _setContinuousCornerRadius:22.0];
          layer = [v19 layer];
          [layer setBorderWidth:1.0];

          v21 = [MEMORY[0x277D75348] colorWithWhite:0.175 alpha:1.0];
          cGColor = [v21 CGColor];
          layer2 = [v19 layer];
          [layer2 setBorderColor:cGColor];

          stackBackgroundColor = [(TVRUIStackViewController *)selfCopy stackBackgroundColor];
          [v19 setBackgroundColor:stackBackgroundColor];

          view2 = [v18 view];
          [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v19 addSubview:view2];
          [v8 addSubview:v19];
          [(TVRUIStackViewController *)selfCopy addChildViewController:v18];
          [v18 didMoveToParentViewController:selfCopy];
          leadingAnchor = [view2 leadingAnchor];
          leadingAnchor2 = [v19 leadingAnchor];
          v128 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
          v147[0] = v128;
          trailingAnchor = [view2 trailingAnchor];
          trailingAnchor2 = [v19 trailingAnchor];
          v116 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
          v147[1] = v116;
          v125 = view2;
          topAnchor = [view2 topAnchor];
          topAnchor2 = [v19 topAnchor];
          v104 = [topAnchor constraintEqualToAnchor:topAnchor2];
          v147[2] = v104;
          bottomAnchor = [view2 bottomAnchor];
          bottomAnchor2 = [v19 bottomAnchor];
          v94 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
          v147[3] = v94;
          leadingAnchor3 = [v19 leadingAnchor];
          leadingAnchor4 = [v8 leadingAnchor];
          v88 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
          v147[4] = v88;
          trailingAnchor3 = [v19 trailingAnchor];
          trailingAnchor4 = [v8 trailingAnchor];
          v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
          v147[5] = v26;
          topAnchor3 = [v19 topAnchor];
          [v8 topAnchor];
          v29 = v28 = v8;
          v30 = [topAnchor3 constraintEqualToAnchor:v29];
          v147[6] = v30;
          bottomAnchor3 = [v19 bottomAnchor];
          bottomAnchor4 = [v28 bottomAnchor];
          v33 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
          v147[7] = v33;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:8];
          [v82 addObjectsFromArray:v34];

          v8 = v28;
          selfCopy = v81;

          [v80 addObject:v19];
          [v8 sendSubviewToBack:v19];

          v17 = v137 + 1;
        }

        while (v83 != v137 + 1);
        v83 = [obj countByEnumeratingWithState:&v139 objects:v148 count:16];
      }

      while (v83);
    }

    v75 = v8;

    view3 = [(TVRUIStackViewController *)selfCopy view];
    leadingAnchor5 = [v77 leadingAnchor];
    leadingAnchor6 = [view3 leadingAnchor];
    v129 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v146[0] = v129;
    trailingAnchor5 = [v77 trailingAnchor];
    trailingAnchor6 = [view3 trailingAnchor];
    v120 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v146[1] = v120;
    topAnchor4 = [v77 topAnchor];
    topAnchor5 = [view3 topAnchor];
    v109 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v146[2] = v109;
    bottomAnchor5 = [v77 bottomAnchor];
    v138 = view3;
    bottomAnchor6 = [view3 bottomAnchor];
    v97 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v146[3] = v97;
    leadingAnchor7 = [v76 leadingAnchor];
    trailingAnchor7 = [v8 trailingAnchor];
    v38 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor7];
    v146[4] = v38;
    centerYAnchor = [v76 centerYAnchor];
    centerYAnchor2 = [v8 centerYAnchor];
    v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v146[5] = v41;
    trailingAnchor8 = [v76 trailingAnchor];
    trailingAnchor9 = [v77 trailingAnchor];
    v44 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v146[6] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:7];
    [v82 addObjectsFromArray:v45];

    if (v73)
    {
      leadingAnchor8 = [v75 leadingAnchor];
      v47 = v77;
      leadingAnchor9 = [v77 leadingAnchor];
      v49 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:20.0];
      v143[0] = v49;
      topAnchor6 = [v75 topAnchor];
      topAnchor7 = [v77 topAnchor];
      v136 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
      v143[1] = v136;
      bottomAnchor7 = [v75 bottomAnchor];
      bottomAnchor8 = [v77 bottomAnchor];
      v133 = bottomAnchor7;
      v127 = [bottomAnchor7 constraintEqualToAnchor:?];
      v143[2] = v127;
      trailingAnchor10 = [v75 trailingAnchor];
      trailingAnchor11 = [v77 trailingAnchor];
      heightAnchor = trailingAnchor10;
      v118 = [trailingAnchor10 constraintEqualToAnchor:-20.0 constant:?];
      v143[3] = v118;
      topAnchor10 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:4];
      v55 = v82;
      [v82 addObjectsFromArray:topAnchor10];
      v56 = v75;
      v57 = v74;
    }

    else
    {
      if ([(TVRUIStackViewController *)v81 titleOnTop])
      {
        v57 = v74;
        topAnchor8 = [v74 topAnchor];
        topAnchor9 = [v77 topAnchor];
        v110 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
        v145[0] = v110;
        leadingAnchor10 = [v74 leadingAnchor];
        leadingAnchor11 = [v75 leadingAnchor];
        v136 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11 constant:10.0];
        v145[1] = v136;
        trailingAnchor12 = [v74 trailingAnchor];
        bottomAnchor8 = [v75 trailingAnchor];
        v133 = trailingAnchor12;
        v127 = [trailingAnchor12 constraintEqualToAnchor:?];
        v145[2] = v127;
        heightAnchor = [v74 heightAnchor];
        trailingAnchor11 = [heightAnchor constraintGreaterThanOrEqualToConstant:15.0];
        v145[3] = trailingAnchor11;
        bottomAnchor9 = [v74 bottomAnchor];
        topAnchor10 = [v75 topAnchor];
        v118 = bottomAnchor9;
        leadingAnchor16 = [bottomAnchor9 constraintEqualToAnchor:topAnchor10 constant:-5.0];
        v145[4] = leadingAnchor16;
        leadingAnchor12 = [v75 leadingAnchor];
        leadingAnchor13 = [v77 leadingAnchor];
        trailingAnchor16 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13 constant:20.0];
        v145[5] = trailingAnchor16;
        bottomAnchor10 = [v75 bottomAnchor];
        bottomAnchor11 = [v77 bottomAnchor];
        v60 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
        v145[6] = v60;
        trailingAnchor13 = [v75 trailingAnchor];
        trailingAnchor14 = [v77 trailingAnchor];
        v63 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14 constant:-20.0];
        v145[7] = v63;
        v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:8];
        v55 = v82;
        [v82 addObjectsFromArray:v64];

        v47 = v77;
        topAnchor7 = leadingAnchor11;

        leadingAnchor9 = topAnchor9;
        leadingAnchor8 = topAnchor8;

        topAnchor6 = leadingAnchor10;
        v56 = v75;
        v49 = v110;
      }

      else
      {
        leadingAnchor14 = [v75 leadingAnchor];
        leadingAnchor15 = [v77 leadingAnchor];
        v111 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15 constant:20.0];
        v144[0] = v111;
        topAnchor11 = [v75 topAnchor];
        topAnchor12 = [v77 topAnchor];
        v136 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
        v144[1] = v136;
        trailingAnchor15 = [v75 trailingAnchor];
        bottomAnchor8 = [v77 trailingAnchor];
        v133 = trailingAnchor15;
        v127 = [trailingAnchor15 constraintEqualToAnchor:-20.0 constant:?];
        v144[2] = v127;
        v57 = v74;
        topAnchor13 = [v74 topAnchor];
        trailingAnchor11 = [v75 bottomAnchor];
        heightAnchor = topAnchor13;
        v118 = [topAnchor13 constraintEqualToAnchor:5.0 constant:?];
        v144[3] = v118;
        topAnchor10 = [v74 leadingAnchor];
        leadingAnchor16 = [v77 leadingAnchor];
        leadingAnchor12 = [topAnchor10 constraintEqualToAnchor:leadingAnchor16];
        v144[4] = leadingAnchor12;
        leadingAnchor13 = [v74 trailingAnchor];
        trailingAnchor16 = [v77 trailingAnchor];
        bottomAnchor10 = [leadingAnchor13 constraintEqualToAnchor:trailingAnchor16];
        v144[5] = bottomAnchor10;
        bottomAnchor12 = [v74 bottomAnchor];
        bottomAnchor13 = [v77 bottomAnchor];
        v69 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13];
        v144[6] = v69;
        heightAnchor2 = [v74 heightAnchor];
        v71 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:15.0];
        v144[7] = v71;
        v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:8];
        v55 = v82;
        [v82 addObjectsFromArray:v72];

        v49 = v111;
        leadingAnchor9 = leadingAnchor15;

        v47 = v77;
        topAnchor7 = topAnchor12;

        leadingAnchor8 = leadingAnchor14;
        topAnchor6 = topAnchor11;
        v56 = v75;
      }
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v55];
    [(TVRUIStackViewController *)v81 setHostingViews:v80];
    [(TVRUIStackViewController *)v81 setContainerView:v47];
    [(TVRUIStackViewController *)v81 setContentView:v56];
    [(TVRUIStackViewController *)v81 setPageControl:v76];
    [(TVRUIStackViewController *)v81 setTitleLabel:v57];
    [(TVRUIStackViewController *)v81 _commitSelectedViewControllerIndex:0];
  }
}

- (void)_configurePanGesture
{
  v4 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__panRecognizerDidFire_];
  [v4 _setCanPanVertically:1];
  [v4 _setCanPanHorizontally:0];
  view = [(TVRUIStackViewController *)self view];
  [view addGestureRecognizer:v4];
}

- (void)_panRecognizerDidFire:(id)fire
{
  fireCopy = fire;
  state = [fireCopy state];
  view = [(TVRUIStackViewController *)self view];
  [fireCopy translationInView:view];
  v8 = v7;
  v10 = v9;

  view2 = [(TVRUIStackViewController *)self view];
  [fireCopy velocityInView:view2];
  v13 = v12;
  v15 = v14;

  selectedViewControllerIndex = [(TVRUIStackViewController *)self selectedViewControllerIndex];
  if (state == 2)
  {
    if (_panRecognizerDidFire____recognizerCommitted)
    {
      return;
    }

    [(TVRUIStackViewController *)self _updateHostingViewTransformsForIndex:selectedViewControllerIndex translation:v8, v10];
    v17 = [(TVRUIStackViewController *)self _shouldCommitToFinalPositionForIndex:selectedViewControllerIndex translation:v8, v10];
    _panRecognizerDidFire____recognizerCommitted = v17;
    if (!v17)
    {
      return;
    }
  }

  else
  {
    if (state == 1)
    {
      _panRecognizerDidFire____recognizerCommitted = 0;

      [(TVRUIStackViewController *)self _prepareHostingViewTransformsForIndex:selectedViewControllerIndex];
      return;
    }

    if (_panRecognizerDidFire____recognizerCommitted)
    {
      return;
    }
  }

  selectedViewControllerIndex2 = [(TVRUIStackViewController *)self selectedViewControllerIndex];

  [(TVRUIStackViewController *)self _commitToFinalPositionForIndex:selectedViewControllerIndex2 translation:v8 velocity:v10, v13, v15];
}

- (unint64_t)_indexAboveIndex:(unint64_t)index
{
  hostingViews = [(TVRUIStackViewController *)self hostingViews];
  if ([hostingViews count] < 2)
  {

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(TVRUIStackViewController *)self _hostingViewIndexIsValid:index];

  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (index)
  {
    return index - 1;
  }

  hostingViews2 = [(TVRUIStackViewController *)self hostingViews];
  v7 = [hostingViews2 count] - 1;

  return v7;
}

- (unint64_t)_indexBelowIndex:(unint64_t)index
{
  hostingViews = [(TVRUIStackViewController *)self hostingViews];
  if ([hostingViews count] < 2)
  {

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(TVRUIStackViewController *)self _hostingViewIndexIsValid:index];

  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  hostingViews2 = [(TVRUIStackViewController *)self hostingViews];
  v8 = [hostingViews2 count];

  if (index + 1 == v8)
  {
    return 0;
  }

  else
  {
    return index + 1;
  }
}

- (id)_hostingViewAboveIndex:(unint64_t)index
{
  v4 = [(TVRUIStackViewController *)self _indexAboveIndex:index];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    hostingViews = [(TVRUIStackViewController *)self hostingViews];
    v5 = [hostingViews objectAtIndexedSubscript:v6];
  }

  return v5;
}

- (id)_hostingViewBelowIndex:(unint64_t)index
{
  v4 = [(TVRUIStackViewController *)self _indexBelowIndex:index];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    hostingViews = [(TVRUIStackViewController *)self hostingViews];
    v5 = [hostingViews objectAtIndexedSubscript:v6];
  }

  return v5;
}

- (unint64_t)_indexForViewController:(id)controller
{
  controllerCopy = controller;
  viewControllers = [(TVRUIStackViewController *)self viewControllers];
  v6 = [viewControllers indexOfObjectIdenticalTo:controllerCopy];

  return v6;
}

- (CGAffineTransform)_transformWithMultiplier:(SEL)multiplier
{
  view = [(TVRUIStackViewController *)self view];
  [view bounds];
  Height = CGRectGetHeight(v13);

  v8 = Height * a4;
  v9 = fabs(a4);
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeTranslation(&v12, 0.0, v8);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v11 = v12;
  return CGAffineTransformScale(retstr, &v11, v9 * -0.15 + 1.0, v9 * -0.15 + 1.0);
}

- (void)_prepareHostingViewTransformsForIndex:(unint64_t)index
{
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    v5 = [(TVRUIStackViewController *)self _hostingViewAboveIndex:index];
    [(TVRUIStackViewController *)self _transformWithMultiplier:-1.0];
    v12 = v15;
    v13 = v16;
    v14 = v17;
    [v5 setTransform:&v12];
    view = [(TVRUIStackViewController *)self view];
    [view bringSubviewToFront:v5];

    v7 = [(TVRUIStackViewController *)self _hostingViewBelowIndex:index];
    [(TVRUIStackViewController *)self _transformWithMultiplier:1.0];
    v12 = v9;
    v13 = v10;
    v14 = v11;
    [v7 setTransform:&v12];
    view2 = [(TVRUIStackViewController *)self view];
    [view2 bringSubviewToFront:v7];
  }
}

- (void)_updateHostingViewTransformsForIndex:(unint64_t)index translation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    hostingViews = [(TVRUIStackViewController *)self hostingViews];
    v9 = [hostingViews objectAtIndexedSubscript:index];

    [(TVRUIStackViewController *)self _multiplierForTranslation:x, y];
    v11 = v10;
    [(TVRUIStackViewController *)self _transformWithMultiplier:?];
    v20 = v23;
    v21 = v24;
    v22 = v25;
    [v9 setTransform:&v20];
    if (y <= 0.0)
    {
      v12 = [(TVRUIStackViewController *)self _hostingViewBelowIndex:index];
      [(TVRUIStackViewController *)self _transformWithMultiplier:v11 + 1.0];
      v20 = v14;
      v21 = v15;
      v13 = v16;
    }

    else
    {
      v12 = [(TVRUIStackViewController *)self _hostingViewAboveIndex:index];
      [(TVRUIStackViewController *)self _transformWithMultiplier:v11 + -1.0];
      v20 = v17;
      v21 = v18;
      v13 = v19;
    }

    v22 = v13;
    [v12 setTransform:&v20];
  }
}

- (BOOL)_hostingViewIndexIsValid:(unint64_t)valid
{
  hostingViews = [(TVRUIStackViewController *)self hostingViews];
  v5 = [hostingViews count];
  v7 = valid == 0x7FFFFFFFFFFFFFFFLL || v5 > valid;

  return v7;
}

- (id)_hostingViewForIndex:(unint64_t)index
{
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    hostingViews = [(TVRUIStackViewController *)self hostingViews];
    v6 = [hostingViews objectAtIndexedSubscript:index];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_commitToFinalPositionForIndex:(unint64_t)index translation:(CGPoint)translation velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v7 = translation.y;
  v8 = translation.x;
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    v11 = [(TVRUIStackViewController *)self _finalIndexForIndex:index translation:v8 velocity:v7, x, y];
    v12 = fabs(y);
    if (v12 > 1000.0)
    {
      v12 = 1000.0;
    }

    v13 = v12 / 1000.0 * -0.2 + 0.3;

    [(TVRUIStackViewController *)self _animateToFinalIndex:v11 fromIndex:index duration:v13];
  }
}

- (void)_animateToFinalIndex:(unint64_t)index fromIndex:(unint64_t)fromIndex duration:(double)duration
{
  v9 = index == fromIndex;
  v10 = [(TVRUIStackViewController *)self _isIndex:fromIndex directlyAboveIndex:index];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__TVRUIStackViewController__animateToFinalIndex_fromIndex_duration___block_invoke;
  aBlock[3] = &unk_279D89050;
  aBlock[4] = self;
  aBlock[5] = index;
  v15 = v10;
  v16 = v9;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (index == fromIndex || duration <= 0.0)
  {
    (*(v11 + 2))(v11);
    [(TVRUIStackViewController *)self _commitSelectedViewControllerIndex:index];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__TVRUIStackViewController__animateToFinalIndex_fromIndex_duration___block_invoke_2;
    v13[3] = &unk_279D89078;
    v13[4] = self;
    v13[5] = index;
    [MEMORY[0x277D75D18] animateWithDuration:v11 animations:v13 completion:duration];
  }
}

void __68__TVRUIStackViewController__animateToFinalIndex_fromIndex_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hostingViews];
  v3 = [v2 objectAtIndexedSubscript:*(a1 + 40)];

  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v15 = *MEMORY[0x277CBF2C0];
  v16 = v4;
  v17 = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform:&v15];
  if (*(a1 + 48) == 1 && *(a1 + 49) != 1)
  {
    goto LABEL_8;
  }

  v5 = [*(a1 + 32) _hostingViewAboveIndex:*(a1 + 40)];
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 _transformWithMultiplier:-1.0];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v15 = v12;
  v16 = v13;
  v17 = v14;
  [v5 setTransform:&v15];

  if ((*(a1 + 48) & 1) != 0 || *(a1 + 49) == 1)
  {
LABEL_8:
    v7 = [*(a1 + 32) _hostingViewBelowIndex:*(a1 + 40)];
    v8 = *(a1 + 32);
    if (v8)
    {
      [v8 _transformWithMultiplier:1.0];
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
    }

    v15 = v9;
    v16 = v10;
    v17 = v11;
    [v7 setTransform:{&v15, v9, v10, v11}];
  }
}

- (void)_transitionToFinalIndex:(unint64_t)index duration:(double)duration
{
  selectedViewControllerIndex = [(TVRUIStackViewController *)self selectedViewControllerIndex];
  if (selectedViewControllerIndex != index)
  {
    v8 = selectedViewControllerIndex;
    v9 = [(TVRUIStackViewController *)self _hostingViewForIndex:index];
    if (v9)
    {
      v10 = [(TVRUIStackViewController *)self _hostingViewForIndex:v8];
      if (v10)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __61__TVRUIStackViewController__transitionToFinalIndex_duration___block_invoke;
        aBlock[3] = &unk_279D890A0;
        aBlock[4] = self;
        aBlock[5] = v8;
        aBlock[6] = index;
        v11 = _Block_copy(aBlock);
        if (v8 >= index)
        {
          v12 = -1.0;
        }

        else
        {
          v12 = 1.0;
        }

        if (v8 >= index)
        {
          v13 = 1.0;
        }

        else
        {
          v13 = -1.0;
        }

        [(TVRUIStackViewController *)self _transformWithMultiplier:v12];
        *v25 = *&v25[7];
        *&v25[2] = *&v25[9];
        *&v25[4] = *&v25[11];
        [v9 setTransform:v25];
        v11[2](v11, 1);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __61__TVRUIStackViewController__transitionToFinalIndex_duration___block_invoke_2;
        v20[3] = &unk_279D890C8;
        v21 = v10;
        selfCopy = self;
        v24 = v13;
        v23 = v9;
        v14 = _Block_copy(v20);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __61__TVRUIStackViewController__transitionToFinalIndex_duration___block_invoke_3;
        v17[3] = &unk_279D890F0;
        v15 = v11;
        v17[4] = self;
        v18 = v15;
        indexCopy = index;
        v16 = _Block_copy(v17);
        if (duration <= 0.0)
        {
          v14[2](v14);
          v16[2](v16, 1);
        }

        else
        {
          [MEMORY[0x277D75D18] animateWithDuration:v14 animations:v16 completion:duration];
        }
      }
    }
  }
}

void __61__TVRUIStackViewController__transitionToFinalIndex_duration___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) hostingViews];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [*(a1 + 32) hostingViews];
      v8 = [v7 objectAtIndexedSubscript:v6];

      v9 = a2 && v6 != *(a1 + 40) && v6 != *(a1 + 48);
      [v8 setHidden:v9];

      ++v6;
      v10 = [*(a1 + 32) hostingViews];
      v11 = [v10 count];
    }

    while (v6 < v11);
  }
}

uint64_t __61__TVRUIStackViewController__transitionToFinalIndex_duration___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 _transformWithMultiplier:*(a1 + 56)];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  v3 = *(a1 + 32);
  v7 = v10;
  v8 = v11;
  v9 = v12;
  [v3 setTransform:&v7];
  v4 = *(a1 + 48);
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v7 = *MEMORY[0x277CBF2C0];
  v8 = v5;
  v9 = *(MEMORY[0x277CBF2C0] + 32);
  return [v4 setTransform:&v7];
}

uint64_t __61__TVRUIStackViewController__transitionToFinalIndex_duration___block_invoke_3(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[4];
  v3 = a1[6];

  return [v2 _commitSelectedViewControllerIndex:v3];
}

- (void)_commitSelectedViewControllerIndex:(unint64_t)index
{
  [(TVRUIStackViewController *)self setSelectedViewControllerIndex:?];
  pageControl = [(TVRUIStackViewController *)self pageControl];
  [pageControl setCurrentPage:index];

  hostingViews = [(TVRUIStackViewController *)self hostingViews];
  v7 = [hostingViews count];

  if (v7)
  {
    v8 = 0;
    do
    {
      if (index != v8)
      {
        hostingViews2 = [(TVRUIStackViewController *)self hostingViews];
        v10 = [hostingViews2 objectAtIndexedSubscript:v8];

        [(TVRUIStackViewController *)self _transformWithMultiplier:-1.0];
        v15[0] = v15[3];
        v15[1] = v15[4];
        v15[2] = v15[5];
        [v10 setTransform:v15];
      }

      ++v8;
      hostingViews3 = [(TVRUIStackViewController *)self hostingViews];
      v12 = [hostingViews3 count];
    }

    while (v8 < v12);
  }

  v13 = [(TVRUIStackViewController *)self _titleForHostingViewIndex:index];
  titleLabel = [(TVRUIStackViewController *)self titleLabel];
  [titleLabel setText:v13];

  [(TVRUIStackViewController *)self _updateViewControllerAppearanceForSelectedViewControllerIndex:index];
}

- (void)_updateViewControllerAppearanceForSelectedViewControllerIndex:(unint64_t)index
{
  viewControllers = [(TVRUIStackViewController *)self viewControllers];
  v6 = [viewControllers count];

  if (v6)
  {
    v7 = 0;
    do
    {
      viewControllers2 = [(TVRUIStackViewController *)self viewControllers];
      v9 = [viewControllers2 objectAtIndexedSubscript:v7];

      _appearState = [v9 _appearState];
      if ((_appearState - 1) > 1)
      {
        if (_appearState != 3 && _appearState || index != v7)
        {
          goto LABEL_10;
        }
      }

      else if (index == v7)
      {
        goto LABEL_10;
      }

      [v9 beginAppearanceTransition:index == v7 animated:0];
      [v9 endAppearanceTransition];
LABEL_10:

      ++v7;
      viewControllers3 = [(TVRUIStackViewController *)self viewControllers];
      v12 = [viewControllers3 count];
    }

    while (v7 < v12);
  }
}

- (double)_multiplierForTranslation:(CGPoint)translation
{
  y = translation.y;
  view = [(TVRUIStackViewController *)self view];
  [view bounds];
  Height = CGRectGetHeight(v7);

  return y / Height;
}

- (unint64_t)_finalIndexForIndex:(unint64_t)index translation:(CGPoint)translation velocity:(CGPoint)velocity
{
  y = velocity.y;
  [(TVRUIStackViewController *)self _multiplierForTranslation:translation.x, translation.y, velocity.x];
  if (fabs(y) <= 100.0 && fabs(v8) <= 0.4)
  {
    return index;
  }

  if (v8 >= 0.0)
  {

    return [(TVRUIStackViewController *)self _indexAboveIndex:index];
  }

  else
  {

    return [(TVRUIStackViewController *)self _indexBelowIndex:index];
  }
}

- (BOOL)_isIndex:(unint64_t)index directlyAboveIndex:(unint64_t)aboveIndex
{
  if (index == aboveIndex)
  {
    return 0;
  }

  if (index)
  {
    return index - 1 == aboveIndex;
  }

  hostingViews = [(TVRUIStackViewController *)self hostingViews];
  v4 = [hostingViews count] - 1 == aboveIndex;

  return v4;
}

- (BOOL)_isIndex:(unint64_t)index directlyBelowIndex:(unint64_t)belowIndex
{
  if (index == belowIndex)
  {
    return 0;
  }

  hostingViews = [(TVRUIStackViewController *)self hostingViews];
  v9 = [hostingViews count] - 1;

  if (v9 != index)
  {
    return index + 1 == belowIndex;
  }

  hostingViews2 = [(TVRUIStackViewController *)self hostingViews];
  v4 = [hostingViews2 count] - 1 == belowIndex;

  return v4;
}

- (id)_titleForHostingViewIndex:(unint64_t)index
{
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    viewControllers = [(TVRUIStackViewController *)self viewControllers];
    v6 = [viewControllers objectAtIndexedSubscript:index];

    title = [v6 title];
  }

  else
  {
    title = 0;
  }

  return title;
}

@end