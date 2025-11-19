@interface TVRUIStackViewController
- (BOOL)_hostingViewIndexIsValid:(unint64_t)a3;
- (BOOL)_isIndex:(unint64_t)a3 directlyAboveIndex:(unint64_t)a4;
- (BOOL)_isIndex:(unint64_t)a3 directlyBelowIndex:(unint64_t)a4;
- (CGAffineTransform)_transformWithMultiplier:(SEL)a3;
- (TVRUIStackViewController)initWithViewControllers:(id)a3;
- (double)_multiplierForTranslation:(CGPoint)a3;
- (id)_hostingViewAboveIndex:(unint64_t)a3;
- (id)_hostingViewBelowIndex:(unint64_t)a3;
- (id)_hostingViewForIndex:(unint64_t)a3;
- (id)_titleForHostingViewIndex:(unint64_t)a3;
- (unint64_t)_finalIndexForIndex:(unint64_t)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5;
- (unint64_t)_indexAboveIndex:(unint64_t)a3;
- (unint64_t)_indexBelowIndex:(unint64_t)a3;
- (unint64_t)_indexForViewController:(id)a3;
- (void)_animateToFinalIndex:(unint64_t)a3 fromIndex:(unint64_t)a4 duration:(double)a5;
- (void)_commitSelectedViewControllerIndex:(unint64_t)a3;
- (void)_commitToFinalPositionForIndex:(unint64_t)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5;
- (void)_configureHierarchy;
- (void)_configurePanGesture;
- (void)_panRecognizerDidFire:(id)a3;
- (void)_prepareHostingViewTransformsForIndex:(unint64_t)a3;
- (void)_transitionToFinalIndex:(unint64_t)a3 duration:(double)a4;
- (void)_updateHostingViewTransformsForIndex:(unint64_t)a3 translation:(CGPoint)a4;
- (void)_updateViewControllerAppearanceForSelectedViewControllerIndex:(unint64_t)a3;
- (void)selectViewControllerIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation TVRUIStackViewController

- (TVRUIStackViewController)initWithViewControllers:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TVRUIStackViewController;
  v5 = [(TVRUIStackViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_viewControllers, v7);
    v8 = [v4 count];
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

- (void)selectViewControllerIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    v7 = 0.0;
    if (v4)
    {
      v7 = 0.25;
    }

    [(TVRUIStackViewController *)self _transitionToFinalIndex:a3 duration:v7];
  }
}

- (void)_configureHierarchy
{
  v2 = self;
  v149 = *MEMORY[0x277D85DE8];
  v3 = [(TVRUIStackViewController *)self viewControllers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(TVRUIStackViewController *)v2 hasNoTitle];
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setClipsToBounds:1];
    v7 = [(TVRUIStackViewController *)v2 view];
    [v7 addSubview:v6];

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
    v11 = [(TVRUIStackViewController *)v2 viewControllers];
    v76 = v10;
    [v10 setNumberOfPages:{objc_msgSend(v11, "count")}];

    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    [v12 setFont:v13];

    v14 = [MEMORY[0x277D75348] lightTextColor];
    [v12 setTextColor:v14];

    LODWORD(v15) = 1148846080;
    [v12 setContentHuggingPriority:1 forAxis:v15];
    if ([(TVRUIStackViewController *)v2 titleOnTop])
    {
      v16 = 4;
    }

    else
    {
      v16 = 1;
    }

    [v12 setTextAlignment:v16];
    v73 = v5;
    if (!v5)
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
    obj = [(TVRUIStackViewController *)v2 viewControllers];
    v83 = [obj countByEnumeratingWithState:&v139 objects:v148 count:16];
    v81 = v2;
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
          [v18 willMoveToParentViewController:v2];
          v19 = objc_alloc_init(MEMORY[0x277D75D18]);
          [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v19 setClipsToBounds:1];
          [v19 _setContinuousCornerRadius:22.0];
          v20 = [v19 layer];
          [v20 setBorderWidth:1.0];

          v21 = [MEMORY[0x277D75348] colorWithWhite:0.175 alpha:1.0];
          v22 = [v21 CGColor];
          v23 = [v19 layer];
          [v23 setBorderColor:v22];

          v24 = [(TVRUIStackViewController *)v2 stackBackgroundColor];
          [v19 setBackgroundColor:v24];

          v25 = [v18 view];
          [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v19 addSubview:v25];
          [v8 addSubview:v19];
          [(TVRUIStackViewController *)v2 addChildViewController:v18];
          [v18 didMoveToParentViewController:v2];
          v134 = [v25 leadingAnchor];
          v131 = [v19 leadingAnchor];
          v128 = [v134 constraintEqualToAnchor:v131];
          v147[0] = v128;
          v122 = [v25 trailingAnchor];
          v119 = [v19 trailingAnchor];
          v116 = [v122 constraintEqualToAnchor:v119];
          v147[1] = v116;
          v125 = v25;
          v112 = [v25 topAnchor];
          v108 = [v19 topAnchor];
          v104 = [v112 constraintEqualToAnchor:v108];
          v147[2] = v104;
          v100 = [v25 bottomAnchor];
          v96 = [v19 bottomAnchor];
          v94 = [v100 constraintEqualToAnchor:v96];
          v147[3] = v94;
          v92 = [v19 leadingAnchor];
          v90 = [v8 leadingAnchor];
          v88 = [v92 constraintEqualToAnchor:v90];
          v147[4] = v88;
          v86 = [v19 trailingAnchor];
          v84 = [v8 trailingAnchor];
          v26 = [v86 constraintEqualToAnchor:v84];
          v147[5] = v26;
          v27 = [v19 topAnchor];
          [v8 topAnchor];
          v29 = v28 = v8;
          v30 = [v27 constraintEqualToAnchor:v29];
          v147[6] = v30;
          v31 = [v19 bottomAnchor];
          v32 = [v28 bottomAnchor];
          v33 = [v31 constraintEqualToAnchor:v32];
          v147[7] = v33;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:8];
          [v82 addObjectsFromArray:v34];

          v8 = v28;
          v2 = v81;

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

    v35 = [(TVRUIStackViewController *)v2 view];
    v135 = [v77 leadingAnchor];
    v132 = [v35 leadingAnchor];
    v129 = [v135 constraintEqualToAnchor:v132];
    v146[0] = v129;
    v126 = [v77 trailingAnchor];
    v123 = [v35 trailingAnchor];
    v120 = [v126 constraintEqualToAnchor:v123];
    v146[1] = v120;
    v117 = [v77 topAnchor];
    v113 = [v35 topAnchor];
    v109 = [v117 constraintEqualToAnchor:v113];
    v146[2] = v109;
    v105 = [v77 bottomAnchor];
    v138 = v35;
    v101 = [v35 bottomAnchor];
    v97 = [v105 constraintEqualToAnchor:v101];
    v146[3] = v97;
    v36 = [v76 leadingAnchor];
    v37 = [v8 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    v146[4] = v38;
    v39 = [v76 centerYAnchor];
    v40 = [v8 centerYAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v146[5] = v41;
    v42 = [v76 trailingAnchor];
    v43 = [v77 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v146[6] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:7];
    [v82 addObjectsFromArray:v45];

    if (v73)
    {
      v46 = [v75 leadingAnchor];
      v47 = v77;
      v48 = [v77 leadingAnchor];
      v49 = [v46 constraintEqualToAnchor:v48 constant:20.0];
      v143[0] = v49;
      v50 = [v75 topAnchor];
      v51 = [v77 topAnchor];
      v136 = [v50 constraintEqualToAnchor:v51];
      v143[1] = v136;
      v52 = [v75 bottomAnchor];
      v130 = [v77 bottomAnchor];
      v133 = v52;
      v127 = [v52 constraintEqualToAnchor:?];
      v143[2] = v127;
      v53 = [v75 trailingAnchor];
      v121 = [v77 trailingAnchor];
      v124 = v53;
      v118 = [v53 constraintEqualToAnchor:-20.0 constant:?];
      v143[3] = v118;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:4];
      v55 = v82;
      [v82 addObjectsFromArray:v54];
      v56 = v75;
      v57 = v74;
    }

    else
    {
      if ([(TVRUIStackViewController *)v81 titleOnTop])
      {
        v57 = v74;
        v114 = [v74 topAnchor];
        v106 = [v77 topAnchor];
        v110 = [v114 constraintEqualToAnchor:v106];
        v145[0] = v110;
        v102 = [v74 leadingAnchor];
        v98 = [v75 leadingAnchor];
        v136 = [v102 constraintEqualToAnchor:v98 constant:10.0];
        v145[1] = v136;
        v58 = [v74 trailingAnchor];
        v130 = [v75 trailingAnchor];
        v133 = v58;
        v127 = [v58 constraintEqualToAnchor:?];
        v145[2] = v127;
        v124 = [v74 heightAnchor];
        v121 = [v124 constraintGreaterThanOrEqualToConstant:15.0];
        v145[3] = v121;
        v59 = [v74 bottomAnchor];
        v54 = [v75 topAnchor];
        v118 = v59;
        v95 = [v59 constraintEqualToAnchor:v54 constant:-5.0];
        v145[4] = v95;
        v93 = [v75 leadingAnchor];
        v91 = [v77 leadingAnchor];
        v89 = [v93 constraintEqualToAnchor:v91 constant:20.0];
        v145[5] = v89;
        v87 = [v75 bottomAnchor];
        v85 = [v77 bottomAnchor];
        v60 = [v87 constraintEqualToAnchor:v85];
        v145[6] = v60;
        v61 = [v75 trailingAnchor];
        v62 = [v77 trailingAnchor];
        v63 = [v61 constraintEqualToAnchor:v62 constant:-20.0];
        v145[7] = v63;
        v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:8];
        v55 = v82;
        [v82 addObjectsFromArray:v64];

        v47 = v77;
        v51 = v98;

        v48 = v106;
        v46 = v114;

        v50 = v102;
        v56 = v75;
        v49 = v110;
      }

      else
      {
        v115 = [v75 leadingAnchor];
        v107 = [v77 leadingAnchor];
        v111 = [v115 constraintEqualToAnchor:v107 constant:20.0];
        v144[0] = v111;
        v103 = [v75 topAnchor];
        v99 = [v77 topAnchor];
        v136 = [v103 constraintEqualToAnchor:v99];
        v144[1] = v136;
        v65 = [v75 trailingAnchor];
        v130 = [v77 trailingAnchor];
        v133 = v65;
        v127 = [v65 constraintEqualToAnchor:-20.0 constant:?];
        v144[2] = v127;
        v57 = v74;
        v66 = [v74 topAnchor];
        v121 = [v75 bottomAnchor];
        v124 = v66;
        v118 = [v66 constraintEqualToAnchor:5.0 constant:?];
        v144[3] = v118;
        v54 = [v74 leadingAnchor];
        v95 = [v77 leadingAnchor];
        v93 = [v54 constraintEqualToAnchor:v95];
        v144[4] = v93;
        v91 = [v74 trailingAnchor];
        v89 = [v77 trailingAnchor];
        v87 = [v91 constraintEqualToAnchor:v89];
        v144[5] = v87;
        v67 = [v74 bottomAnchor];
        v68 = [v77 bottomAnchor];
        v69 = [v67 constraintEqualToAnchor:v68];
        v144[6] = v69;
        v70 = [v74 heightAnchor];
        v71 = [v70 constraintGreaterThanOrEqualToConstant:15.0];
        v144[7] = v71;
        v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:8];
        v55 = v82;
        [v82 addObjectsFromArray:v72];

        v49 = v111;
        v48 = v107;

        v47 = v77;
        v51 = v99;

        v46 = v115;
        v50 = v103;
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
  v3 = [(TVRUIStackViewController *)self view];
  [v3 addGestureRecognizer:v4];
}

- (void)_panRecognizerDidFire:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  v6 = [(TVRUIStackViewController *)self view];
  [v4 translationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(TVRUIStackViewController *)self view];
  [v4 velocityInView:v11];
  v13 = v12;
  v15 = v14;

  v16 = [(TVRUIStackViewController *)self selectedViewControllerIndex];
  if (v5 == 2)
  {
    if (_panRecognizerDidFire____recognizerCommitted)
    {
      return;
    }

    [(TVRUIStackViewController *)self _updateHostingViewTransformsForIndex:v16 translation:v8, v10];
    v17 = [(TVRUIStackViewController *)self _shouldCommitToFinalPositionForIndex:v16 translation:v8, v10];
    _panRecognizerDidFire____recognizerCommitted = v17;
    if (!v17)
    {
      return;
    }
  }

  else
  {
    if (v5 == 1)
    {
      _panRecognizerDidFire____recognizerCommitted = 0;

      [(TVRUIStackViewController *)self _prepareHostingViewTransformsForIndex:v16];
      return;
    }

    if (_panRecognizerDidFire____recognizerCommitted)
    {
      return;
    }
  }

  v18 = [(TVRUIStackViewController *)self selectedViewControllerIndex];

  [(TVRUIStackViewController *)self _commitToFinalPositionForIndex:v18 translation:v8 velocity:v10, v13, v15];
}

- (unint64_t)_indexAboveIndex:(unint64_t)a3
{
  v5 = [(TVRUIStackViewController *)self hostingViews];
  if ([v5 count] < 2)
  {

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(TVRUIStackViewController *)self _hostingViewIndexIsValid:a3];

  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a3)
  {
    return a3 - 1;
  }

  v9 = [(TVRUIStackViewController *)self hostingViews];
  v7 = [v9 count] - 1;

  return v7;
}

- (unint64_t)_indexBelowIndex:(unint64_t)a3
{
  v5 = [(TVRUIStackViewController *)self hostingViews];
  if ([v5 count] < 2)
  {

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(TVRUIStackViewController *)self _hostingViewIndexIsValid:a3];

  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [(TVRUIStackViewController *)self hostingViews];
  v8 = [v7 count];

  if (a3 + 1 == v8)
  {
    return 0;
  }

  else
  {
    return a3 + 1;
  }
}

- (id)_hostingViewAboveIndex:(unint64_t)a3
{
  v4 = [(TVRUIStackViewController *)self _indexAboveIndex:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(TVRUIStackViewController *)self hostingViews];
    v5 = [v7 objectAtIndexedSubscript:v6];
  }

  return v5;
}

- (id)_hostingViewBelowIndex:(unint64_t)a3
{
  v4 = [(TVRUIStackViewController *)self _indexBelowIndex:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(TVRUIStackViewController *)self hostingViews];
    v5 = [v7 objectAtIndexedSubscript:v6];
  }

  return v5;
}

- (unint64_t)_indexForViewController:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIStackViewController *)self viewControllers];
  v6 = [v5 indexOfObjectIdenticalTo:v4];

  return v6;
}

- (CGAffineTransform)_transformWithMultiplier:(SEL)a3
{
  v6 = [(TVRUIStackViewController *)self view];
  [v6 bounds];
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

- (void)_prepareHostingViewTransformsForIndex:(unint64_t)a3
{
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    v5 = [(TVRUIStackViewController *)self _hostingViewAboveIndex:a3];
    [(TVRUIStackViewController *)self _transformWithMultiplier:-1.0];
    v12 = v15;
    v13 = v16;
    v14 = v17;
    [v5 setTransform:&v12];
    v6 = [(TVRUIStackViewController *)self view];
    [v6 bringSubviewToFront:v5];

    v7 = [(TVRUIStackViewController *)self _hostingViewBelowIndex:a3];
    [(TVRUIStackViewController *)self _transformWithMultiplier:1.0];
    v12 = v9;
    v13 = v10;
    v14 = v11;
    [v7 setTransform:&v12];
    v8 = [(TVRUIStackViewController *)self view];
    [v8 bringSubviewToFront:v7];
  }
}

- (void)_updateHostingViewTransformsForIndex:(unint64_t)a3 translation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    v8 = [(TVRUIStackViewController *)self hostingViews];
    v9 = [v8 objectAtIndexedSubscript:a3];

    [(TVRUIStackViewController *)self _multiplierForTranslation:x, y];
    v11 = v10;
    [(TVRUIStackViewController *)self _transformWithMultiplier:?];
    v20 = v23;
    v21 = v24;
    v22 = v25;
    [v9 setTransform:&v20];
    if (y <= 0.0)
    {
      v12 = [(TVRUIStackViewController *)self _hostingViewBelowIndex:a3];
      [(TVRUIStackViewController *)self _transformWithMultiplier:v11 + 1.0];
      v20 = v14;
      v21 = v15;
      v13 = v16;
    }

    else
    {
      v12 = [(TVRUIStackViewController *)self _hostingViewAboveIndex:a3];
      [(TVRUIStackViewController *)self _transformWithMultiplier:v11 + -1.0];
      v20 = v17;
      v21 = v18;
      v13 = v19;
    }

    v22 = v13;
    [v12 setTransform:&v20];
  }
}

- (BOOL)_hostingViewIndexIsValid:(unint64_t)a3
{
  v4 = [(TVRUIStackViewController *)self hostingViews];
  v5 = [v4 count];
  v7 = a3 == 0x7FFFFFFFFFFFFFFFLL || v5 > a3;

  return v7;
}

- (id)_hostingViewForIndex:(unint64_t)a3
{
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    v5 = [(TVRUIStackViewController *)self hostingViews];
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_commitToFinalPositionForIndex:(unint64_t)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    v11 = [(TVRUIStackViewController *)self _finalIndexForIndex:a3 translation:v8 velocity:v7, x, y];
    v12 = fabs(y);
    if (v12 > 1000.0)
    {
      v12 = 1000.0;
    }

    v13 = v12 / 1000.0 * -0.2 + 0.3;

    [(TVRUIStackViewController *)self _animateToFinalIndex:v11 fromIndex:a3 duration:v13];
  }
}

- (void)_animateToFinalIndex:(unint64_t)a3 fromIndex:(unint64_t)a4 duration:(double)a5
{
  v9 = a3 == a4;
  v10 = [(TVRUIStackViewController *)self _isIndex:a4 directlyAboveIndex:a3];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__TVRUIStackViewController__animateToFinalIndex_fromIndex_duration___block_invoke;
  aBlock[3] = &unk_279D89050;
  aBlock[4] = self;
  aBlock[5] = a3;
  v15 = v10;
  v16 = v9;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (a3 == a4 || a5 <= 0.0)
  {
    (*(v11 + 2))(v11);
    [(TVRUIStackViewController *)self _commitSelectedViewControllerIndex:a3];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__TVRUIStackViewController__animateToFinalIndex_fromIndex_duration___block_invoke_2;
    v13[3] = &unk_279D89078;
    v13[4] = self;
    v13[5] = a3;
    [MEMORY[0x277D75D18] animateWithDuration:v11 animations:v13 completion:a5];
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

- (void)_transitionToFinalIndex:(unint64_t)a3 duration:(double)a4
{
  v7 = [(TVRUIStackViewController *)self selectedViewControllerIndex];
  if (v7 != a3)
  {
    v8 = v7;
    v9 = [(TVRUIStackViewController *)self _hostingViewForIndex:a3];
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
        aBlock[6] = a3;
        v11 = _Block_copy(aBlock);
        if (v8 >= a3)
        {
          v12 = -1.0;
        }

        else
        {
          v12 = 1.0;
        }

        if (v8 >= a3)
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
        v22 = self;
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
        v19 = a3;
        v16 = _Block_copy(v17);
        if (a4 <= 0.0)
        {
          v14[2](v14);
          v16[2](v16, 1);
        }

        else
        {
          [MEMORY[0x277D75D18] animateWithDuration:v14 animations:v16 completion:a4];
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

- (void)_commitSelectedViewControllerIndex:(unint64_t)a3
{
  [(TVRUIStackViewController *)self setSelectedViewControllerIndex:?];
  v5 = [(TVRUIStackViewController *)self pageControl];
  [v5 setCurrentPage:a3];

  v6 = [(TVRUIStackViewController *)self hostingViews];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    do
    {
      if (a3 != v8)
      {
        v9 = [(TVRUIStackViewController *)self hostingViews];
        v10 = [v9 objectAtIndexedSubscript:v8];

        [(TVRUIStackViewController *)self _transformWithMultiplier:-1.0];
        v15[0] = v15[3];
        v15[1] = v15[4];
        v15[2] = v15[5];
        [v10 setTransform:v15];
      }

      ++v8;
      v11 = [(TVRUIStackViewController *)self hostingViews];
      v12 = [v11 count];
    }

    while (v8 < v12);
  }

  v13 = [(TVRUIStackViewController *)self _titleForHostingViewIndex:a3];
  v14 = [(TVRUIStackViewController *)self titleLabel];
  [v14 setText:v13];

  [(TVRUIStackViewController *)self _updateViewControllerAppearanceForSelectedViewControllerIndex:a3];
}

- (void)_updateViewControllerAppearanceForSelectedViewControllerIndex:(unint64_t)a3
{
  v5 = [(TVRUIStackViewController *)self viewControllers];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(TVRUIStackViewController *)self viewControllers];
      v9 = [v8 objectAtIndexedSubscript:v7];

      v10 = [v9 _appearState];
      if ((v10 - 1) > 1)
      {
        if (v10 != 3 && v10 || a3 != v7)
        {
          goto LABEL_10;
        }
      }

      else if (a3 == v7)
      {
        goto LABEL_10;
      }

      [v9 beginAppearanceTransition:a3 == v7 animated:0];
      [v9 endAppearanceTransition];
LABEL_10:

      ++v7;
      v11 = [(TVRUIStackViewController *)self viewControllers];
      v12 = [v11 count];
    }

    while (v7 < v12);
  }
}

- (double)_multiplierForTranslation:(CGPoint)a3
{
  y = a3.y;
  v4 = [(TVRUIStackViewController *)self view];
  [v4 bounds];
  Height = CGRectGetHeight(v7);

  return y / Height;
}

- (unint64_t)_finalIndexForIndex:(unint64_t)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  [(TVRUIStackViewController *)self _multiplierForTranslation:a4.x, a4.y, a5.x];
  if (fabs(y) <= 100.0 && fabs(v8) <= 0.4)
  {
    return a3;
  }

  if (v8 >= 0.0)
  {

    return [(TVRUIStackViewController *)self _indexAboveIndex:a3];
  }

  else
  {

    return [(TVRUIStackViewController *)self _indexBelowIndex:a3];
  }
}

- (BOOL)_isIndex:(unint64_t)a3 directlyAboveIndex:(unint64_t)a4
{
  if (a3 == a4)
  {
    return 0;
  }

  if (a3)
  {
    return a3 - 1 == a4;
  }

  v6 = [(TVRUIStackViewController *)self hostingViews];
  v4 = [v6 count] - 1 == a4;

  return v4;
}

- (BOOL)_isIndex:(unint64_t)a3 directlyBelowIndex:(unint64_t)a4
{
  if (a3 == a4)
  {
    return 0;
  }

  v8 = [(TVRUIStackViewController *)self hostingViews];
  v9 = [v8 count] - 1;

  if (v9 != a3)
  {
    return a3 + 1 == a4;
  }

  v10 = [(TVRUIStackViewController *)self hostingViews];
  v4 = [v10 count] - 1 == a4;

  return v4;
}

- (id)_titleForHostingViewIndex:(unint64_t)a3
{
  if ([(TVRUIStackViewController *)self _hostingViewIndexIsValid:?])
  {
    v5 = [(TVRUIStackViewController *)self viewControllers];
    v6 = [v5 objectAtIndexedSubscript:a3];

    v7 = [v6 title];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end