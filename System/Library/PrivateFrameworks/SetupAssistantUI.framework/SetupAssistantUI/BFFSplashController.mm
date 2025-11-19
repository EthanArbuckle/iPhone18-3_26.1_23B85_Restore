@interface BFFSplashController
- (BFFPaneHeaderView)headerView;
- (BFFSplashController)init;
- (UIEdgeInsets)additionalInsets;
- (id)_createButtonWithTitle:(id)a3 style:(int64_t)a4;
- (id)buttonAtIndex:(unint64_t)a3;
- (void)_buttonPressed:(id)a3;
- (void)_updateButtonFonts;
- (void)_updateTrayVisibility;
- (void)addButtonWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5;
- (void)loadView;
- (void)removeAllButtons;
- (void)scrollViewDidScroll:(id)a3;
- (void)setAdditionalInsets:(UIEdgeInsets)a3;
- (void)setBleedColor:(id)a3;
- (void)setButtonsEnabled:(BOOL)a3;
- (void)setContentView:(id)a3;
- (void)setContentViewPosition:(int64_t)a3;
- (void)setDetailText:(id)a3;
- (void)setIcon:(id)a3;
- (void)setLinkText:(id)a3 action:(id)a4;
- (void)setScrollingDisabled:(BOOL)a3;
- (void)setTint:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitle:(id)a3 forButtonAtIndex:(unint64_t)a4 action:(id)a5;
- (void)updateBleedColor;
- (void)updateBleedViewLayout;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BFFSplashController

- (BFFSplashController)init
{
  v8.receiver = self;
  v8.super_class = BFFSplashController;
  v2 = [(BFFSplashController *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] systemBlueColor];
    [(BFFSplashController *)v2 setTint:v3];

    v4 = objc_opt_new();
    buttons = v2->_buttons;
    v2->_buttons = v4;

    v2->_contentViewPosition = 1;
    v6 = *(MEMORY[0x277D768C8] + 16);
    *&v2->_additionalInsets.top = *MEMORY[0x277D768C8];
    *&v2->_additionalInsets.bottom = v6;
  }

  return v2;
}

- (void)setIcon:(id)a3
{
  v10 = a3;
  v4 = [(BFFSplashController *)self tint];
  if (v4)
  {
    v5 = v4;
    v6 = [(BFFSplashController *)self disableIconTint];

    if (!v6)
    {
      v7 = [(BFFSplashController *)self tint];
      v8 = [v10 _flatImageWithColor:v7];

      v10 = v8;
    }
  }

  v9 = [(BFFSplashController *)self headerView];
  [v9 setIcon:v10];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(BFFSplashController *)self headerView];
  [v5 setTitleText:v4];
}

- (void)setDetailText:(id)a3
{
  v4 = a3;
  v6 = [(BFFSplashController *)self headerView];
  v5 = [v6 detailTextLabel];
  [v5 setText:v4];
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(UIScrollView *)self->_scrollView addSubview:self->_contentView];
    v7 = [(BFFSplashController *)self view];
    [v7 setNeedsLayout];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setContentViewPosition:(int64_t)a3
{
  if (self->_contentViewPosition != a3)
  {
    self->_contentViewPosition = a3;
    v4 = [(BFFSplashController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)setAdditionalInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_additionalInsets.top), vceqq_f64(v4, *&self->_additionalInsets.bottom)))) & 1) == 0)
  {
    self->_additionalInsets = a3;
    v5 = [(BFFSplashController *)self view];
    [v5 setNeedsLayout];
  }
}

- (void)addButtonWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5
{
  v8 = a5;
  v9 = [(BFFSplashController *)self _createButtonWithTitle:a3 style:a4];
  [v9 setAction:v8];

  [(NSMutableArray *)self->_buttons addObject:v9];
}

- (void)removeAllButtons
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_buttons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) button];
        [v8 removeFromSuperview];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_buttons removeAllObjects];
}

- (void)setTitle:(id)a3 forButtonAtIndex:(unint64_t)a4 action:(id)a5
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(BFFSplashController *)self addButtonWithTitle:a3 style:v5 action:a5];
}

- (id)buttonAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_buttons count]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:a3];
    v6 = [v5 button];
  }

  return v6;
}

- (void)setLinkText:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BFFSplashController *)self headerView];
  [v8 setLinkText:v7 handler:v6];
}

- (void)setTint:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_tint != v5)
  {
    objc_storeStrong(&self->_tint, a3);
    if (![(BFFSplashController *)self disableIconTint])
    {
      v6 = [(BFFSplashController *)self icon];
      v7 = [(BFFSplashController *)self tint];
      v8 = [v6 _flatImageWithColor:v7];

      [(BFFSplashController *)self setIcon:v8];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = self->_buttons;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v15 + 1) + 8 * v13) button];
          [v14 setTintColor:v5];

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)setScrollingDisabled:(BOOL)a3
{
  if (self->_scrollingDisabled != a3)
  {
    v4 = a3;
    self->_scrollingDisabled = a3;
    [(UIScrollView *)self->_scrollView setScrollEnabled:!a3];
    v6 = [(BFFSplashController *)self effectView];
    [v6 setHidden:v4];
  }
}

- (void)setBleedColor:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!self->_bleedView)
  {
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    bleedView = self->_bleedView;
    self->_bleedView = v6;

    v8 = [(BFFSplashController *)self view];
    [v8 addSubview:self->_bleedView];

    v5 = v9;
  }

  if (self->_bleedColor != v5)
  {
    objc_storeStrong(&self->_bleedColor, a3);
    [(UIView *)self->_bleedView setBackgroundColor:v9];
    v5 = v9;
  }
}

- (BFFPaneHeaderView)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = [BFFPaneHeaderView alloc];
    v5 = [(BFFPaneHeaderView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_headerView;
    self->_headerView = v5;

    [(UIScrollView *)self->_scrollView addSubview:self->_headerView];
    headerView = self->_headerView;
  }

  return headerView;
}

- (void)_updateButtonFonts
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_buttons;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = *MEMORY[0x277D76918];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 style] == 2)
        {
          v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
          v10 = [v8 button];
          v11 = [v10 titleLabel];
          [v11 setFont:v9];
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (id)_createButtonWithTitle:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setStyle:a4];
  if (a4 == 1)
  {
    [(BFFSplashController *)self loadViewIfNeeded];
    v8 = +[BFFStyle sharedStyle];
    v9 = [v8 continueButtonWithTitle:v6 inView:self->_buttonTray];
    [v7 setButton:v9];
  }

  else
  {
    v10 = [MEMORY[0x277D75220] buttonWithType:1];
    [v7 setButton:v10];

    v11 = [v7 button];
    v12 = [v11 titleLabel];
    [v12 setAdjustsFontSizeToFitWidth:1];

    [(BFFSplashController *)self _updateButtonFonts];
    buttonTray = self->_buttonTray;
    v8 = [v7 button];
    [(UIView *)buttonTray addSubview:v8];
  }

  v14 = [v7 button];
  [v14 setTintColor:self->_tint];

  v15 = [v7 button];
  [v15 addTarget:self action:sel__buttonPressed_ forControlEvents:0x2000];

  v16 = [v7 button];
  [v16 setTitle:v6 forState:0];

  return v7;
}

- (void)setButtonsEnabled:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_buttons;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) button];
        [v9 setEnabled:v3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = BFFSplashController;
  [(BFFSplashController *)&v19 loadView];
  v3 = [(BFFSplashController *)self view];
  v4 = +[BFFStyle sharedStyle];
  v5 = [v4 backgroundColor];
  [v3 setBackgroundColor:v5];

  v6 = objc_alloc_init(MEMORY[0x277D759D8]);
  scrollView = self->_scrollView;
  self->_scrollView = v6;

  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView addSubview:self->_headerView];
  [(UIScrollView *)self->_scrollView addSubview:self->_contentView];
  v8 = [(BFFSplashController *)self view];
  [v8 addSubview:self->_scrollView];

  v9 = objc_alloc(MEMORY[0x277D75D68]);
  v10 = [MEMORY[0x277D75210] effectWithStyle:1100];
  v11 = [v9 initWithEffect:v10];
  [(BFFSplashController *)self setEffectView:v11];

  v12 = [(BFFSplashController *)self view];
  v13 = [(BFFSplashController *)self effectView];
  [v12 addSubview:v13];

  v14 = objc_alloc_init(MEMORY[0x277D75D18]);
  buttonTray = self->_buttonTray;
  self->_buttonTray = v14;

  v16 = [(BFFSplashController *)self view];
  [v16 addSubview:self->_buttonTray];

  v17 = +[BFFStyle sharedStyle];
  v18 = [(BFFSplashController *)self navigationItem];
  [v17 applyAutomaticScrollToEdgeBehaviorOnNavigationItem:v18];
}

- (void)viewDidLayoutSubviews
{
  v161 = *MEMORY[0x277D85DE8];
  if (BFFIsiPad())
  {
    v3 = 25.0;
  }

  else
  {
    v3 = -8.5;
  }

  v158.receiver = self;
  v158.super_class = BFFSplashController;
  [(BFFSplashController *)&v158 viewDidLayoutSubviews];
  v4 = [(BFFSplashController *)self view];
  [v4 bounds];
  v132 = v6;
  v134 = v5;
  v8 = v7;
  v10 = v9;

  v11 = +[BFFStyle sharedStyle];
  v12 = [(BFFSplashController *)self view];
  v13 = [v12 superview];
  v14 = [(BFFSplashController *)self view];
  v15 = [v14 superview];
  [v15 bounds];
  [v11 horizontalInsetsForContainingInView:v13 width:v16];

  UIEdgeInsetsAdd();
  v18 = v17;
  v147 = v19;
  v20 = v8 - v19;
  [(UIScrollView *)self->_scrollView frame];
  v22 = v21;
  v24 = v23;
  [(UIScrollView *)self->_scrollView frame];
  v173.origin.x = v22;
  v173.origin.y = v24;
  v173.size.width = v8;
  v140 = v10;
  v173.size.height = v10;
  if (!CGRectEqualToRect(v162, v173))
  {
    [(UIScrollView *)self->_scrollView setFrame:v22, v24, v8, v10];
  }

  v25 = v20 - v18;
  v26 = *MEMORY[0x277CBF3A0];
  rect = *(MEMORY[0x277CBF3A0] + 24);
  width = *(MEMORY[0x277CBF3A0] + 16);
  contentView = self->_contentView;
  v142 = *(MEMORY[0x277CBF3A0] + 8);
  MaxY = 0.0;
  if (contentView)
  {
    [(UIView *)contentView sizeThatFits:v25, 1.79769313e308];
    if (v29 * v28 == 0.0)
    {
      v30 = v26;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v31 = [(UIView *)self->_contentView subviews];
      v32 = [v31 countByEnumeratingWithState:&v154 objects:v160 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v155;
        y = v142;
        x = v30;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v155 != v34)
            {
              objc_enumerationMutation(v31);
            }

            [*(*(&v154 + 1) + 8 * i) frame];
            v174.origin.x = v38;
            v174.origin.y = v39;
            v174.size.width = v40;
            v174.size.height = v41;
            v163.origin.x = x;
            v163.origin.y = y;
            v163.size.height = rect;
            v163.size.width = width;
            v164 = CGRectUnion(v163, v174);
            x = v164.origin.x;
            y = v164.origin.y;
            rect = v164.size.height;
            width = v164.size.width;
          }

          v33 = [v31 countByEnumeratingWithState:&v154 objects:v160 count:16];
        }

        while (v33);
      }

      v26 = v30;
    }

    else
    {
      rect = v28;
    }

    v42 = [(BFFSplashController *)self fullWidthContent:v132];
    if (v42)
    {
      v43 = v8;
    }

    else
    {
      v43 = v25;
    }

    if (v42)
    {
      v44 = v26;
    }

    else
    {
      v44 = v147;
    }

    width = v43;
    v141 = v44;
    if (self->_contentViewPosition == 2)
    {
      v45 = [(BFFSplashController *)self headerView];
      v46 = [v45 icon];
      v47 = [(BFFSplashController *)self headerView];
      [v47 setUseMinimumTopPadding:v46 != 0];

      v142 = 0.0;
      v165.origin.y = 0.0;
      v165.origin.x = v44;
      v165.size.width = v43;
      v165.size.height = rect;
      MaxY = CGRectGetMaxY(v165);
      if (BFFIsiPad())
      {
        v48 = [(BFFSplashController *)self headerView];
        [v48 setCustomTopPadding:60.0];
      }
    }
  }

  else
  {
    v141 = *MEMORY[0x277CBF3A0];
  }

  v49 = [(BFFSplashController *)self headerView:v132];
  [v49 heightForWidth:self->_scrollView inView:v8];
  v51 = v50;

  v52 = [(BFFSplashController *)self headerView];
  v138 = v51;
  v139 = v26;
  [v52 setFrame:{v26, MaxY, v8, v51}];

  if ([(NSMutableArray *)self->_buttons count])
  {
    v146 = v25;
    v136 = v8;
    v137 = v3;
    v53 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    [v53 scaledValueForValue:24.0];
    v55 = v54;
    [v53 scaledValueForValue:44.0];
    v144 = v56;
    [v53 scaledValueForValue:36.0];
    v145 = v57;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v58 = self->_buttons;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v150 objects:v159 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v151;
      v62 = v145;
      v63 = v55;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v151 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v65 = *(*(&v150 + 1) + 8 * j);
          v66 = [v65 button];
          [v66 frame];
          v68 = v67;
          v70 = v69;
          if ([v65 style] == 2)
          {
            v71 = [v66 titleLabel];
            [v71 sizeThatFits:{v146, 1.79769313e308}];
            v73 = v72;
            v75 = v74;

            if (v146 >= v73)
            {
              v76 = v73;
            }

            else
            {
              v76 = v146;
            }

            [v66 setFrame:{v68, v70, v76, v75}];
            [v66 layoutSubviews];
            v77 = [v66 titleLabel];
            [v77 _firstLineBaselineOffsetFromBoundsTop];

            v63 = v55 + v62;
            v62 = v144 + v62;
          }

          else
          {
            v78 = +[BFFStyle sharedStyle];
            v79 = [(BFFSplashController *)self view];
            [v78 sizeForContinueButtonInAncestor:v79];
            v81 = v80;
            v83 = v82;

            v166.origin.x = v68;
            v166.origin.y = v63;
            v166.size.width = v81;
            v166.size.height = v83;
            v62 = v145 + CGRectGetMaxY(v166);
            v63 = v63 + v55 + v83;
          }

          UIRoundToViewScale();
          [v66 setFrame:?];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v150 objects:v159 count:16];
      }

      while (v60);
    }

    v84 = 0x280033000uLL;
    [(UIView *)self->_buttonTray frame];
    v86 = v85;
    v87 = [(NSMutableArray *)self->_buttons lastObject];
    v88 = [v87 style];
    v89 = [v87 button];
    [v89 frame];
    v94 = v91;
    if (v88 == 2)
    {
      v95 = [v87 button];
      v96 = [v95 titleLabel];
      [v96 _firstLineBaselineOffsetFromBoundsTop];
      v98 = v94 + v97 + 24.0;
    }

    else
    {
      v98 = CGRectGetMaxY(*&v90) + 44.0;
    }

    v3 = v137;
    v8 = v136;
    v25 = v146;

    v99 = [(BFFSplashController *)self view];
    [v99 safeAreaInsets];
    v101 = v98 + v100;

    [(UIView *)self->_buttonTray setFrame:v86, v140 - v101, v136, v101];
    v102 = [(BFFSplashController *)self effectView];
    [v102 setFrame:{v86, v140 - v101, v136, v101}];
  }

  else
  {
    v53 = [(BFFSplashController *)self effectView];
    [v53 setFrame:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];
    v84 = 0x280033000;
  }

  [(UIScrollView *)self->_scrollView contentInset];
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = *(v84 + 1448);
  [*(&self->super.super.super.isa + v109) frame];
  [(UIScrollView *)self->_scrollView setContentInset:v104, v106, v110, v108];
  if (self->_contentView)
  {
    v112 = rect;
    v111 = width;
    v113 = v141;
    v114 = v142;
    if (self->_contentViewPosition != 1)
    {
      goto LABEL_56;
    }

    if ([(NSMutableArray *)self->_buttons count:v141])
    {
      [*(&self->super.super.super.isa + v109) frame];
      MinY = CGRectGetMinY(v167);
    }

    else
    {
      v168.origin.y = v133;
      v168.origin.x = v135;
      v168.size.width = v8;
      v168.size.height = v140;
      MinY = CGRectGetMaxY(v168);
    }

    v116 = MinY;
    v117 = [(BFFSplashController *)self view];
    [v117 convertRect:self->_scrollView fromView:{v139, MaxY, v8, v138}];
    v118 = v3 + CGRectGetMaxY(v169);

    v119 = v116 - v118;
    v170.origin.x = v139;
    v170.origin.y = MaxY;
    v170.size.width = v8;
    v170.size.height = v138;
    v114 = v3 + CGRectGetMaxY(v170);
    v112 = rect;
    if (rect < v119)
    {
      v120 = (v119 - rect) * 0.5;
      v114 = v114 + floorf(v120);
    }

    v111 = width;
  }

  else
  {
    v112 = rect;
    v111 = width;
    v114 = v142;
  }

  v113 = v141;
LABEL_56:
  [(UIView *)self->_contentView setFrame:v113, v114, v111, v112];
  v121 = [(BFFSplashController *)self headerView];
  [v121 frame];
  v122 = CGRectGetMaxY(v171);

  [(UIView *)self->_contentView frame];
  v123 = CGRectGetMaxY(v172);
  if (v122 >= v123)
  {
    v124 = v122;
  }

  else
  {
    v124 = v123;
  }

  [(UIScrollView *)self->_scrollView setContentSize:v25, v124];
  [(UIScrollView *)self->_scrollView scrollIndicatorInsets];
  v126 = v125;
  v128 = v127;
  v130 = v129;
  [*(&self->super.super.super.isa + v109) frame];
  [(UIScrollView *)self->_scrollView setScrollIndicatorInsets:v126, v128, v131, v130];
  [(BFFSplashController *)self _updateTrayVisibility];
  [(BFFSplashController *)self updateBleedViewLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BFFSplashController;
  [(BFFSplashController *)&v4 viewWillAppear:a3];
  [(BFFSplashController *)self updateBleedColor];
}

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = BFFSplashController;
  [(BFFSplashController *)&v11 viewDidAppear:a3];
  [(UIScrollView *)self->_scrollView contentInset];
  v5 = v4;
  v7 = v6;
  [(UIScrollView *)self->_scrollView contentSize];
  v9 = v8;
  [(UIScrollView *)self->_scrollView frame];
  if (v9 > v10 - v7 - v5)
  {
    [(UIScrollView *)self->_scrollView flashScrollIndicators];
  }

  [(BFFSplashController *)self updateBleedColor];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BFFSplashController;
  [(BFFSplashController *)&v7 viewWillDisappear:a3];
  v4 = [(BFFSplashController *)self bleedColor];

  if (v4)
  {
    v5 = +[BFFStyle sharedStyle];
    v6 = [(BFFSplashController *)self navigationController];
    [v5 applyThemeToNavigationController:v6];
  }
}

- (void)updateBleedColor
{
  v3 = [(BFFSplashController *)self bleedColor];

  if (v3)
  {
    v4 = [(BFFSplashController *)self navigationController];
    v5 = [v4 navigationBar];
    v6 = objc_alloc_init(MEMORY[0x277D755B8]);
    [v5 setBackgroundImage:v6 forBarMetrics:0];

    v7 = [(BFFSplashController *)self navigationController];
    v8 = [v7 navigationBar];
    [v8 setTranslucent:1];

    v9 = [MEMORY[0x277D75348] clearColor];
    v10 = [(BFFSplashController *)self navigationController];
    v11 = [v10 navigationBar];
    [v11 setBarTintColor:v9];

    v14 = [MEMORY[0x277D75348] clearColor];
    v12 = [(BFFSplashController *)self navigationController];
    v13 = [v12 navigationBar];
    [v13 setBackgroundColor:v14];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  [(BFFSplashController *)self _updateTrayVisibility];

  [(BFFSplashController *)self updateBleedViewLayout];
}

- (void)updateBleedViewLayout
{
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v4 = v3;
  [(UIScrollView *)self->_scrollView contentOffset];
  if (v5 < -v4)
  {
    [(UIScrollView *)self->_scrollView contentOffset];
  }

  v6 = [(BFFSplashController *)self view];
  [v6 frame];
  [(UIView *)self->_bleedView setFrame:0.0, 0.0];
}

- (void)_updateTrayVisibility
{
  scrollView = self->_scrollView;
  [(UIView *)self->_buttonTray bounds];
  [(UIScrollView *)scrollView convertRect:self->_buttonTray fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(BFFSplashController *)self contentViewPosition];
  v13 = &OBJC_IVAR___BFFSplashController__contentView;
  if (v12 == 2)
  {
    v13 = &OBJC_IVAR___BFFSplashController__headerView;
  }

  [*(&self->super.super.super.isa + *v13) frame];
  MaxY = CGRectGetMaxY(v18);
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v15 = MaxY <= CGRectGetMinY(v19);
  v16 = [(BFFSplashController *)self effectView];
  [v16 setHidden:v15];
}

- (void)_buttonPressed:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  buttons = self->_buttons;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__BFFSplashController__buttonPressed___block_invoke;
  v10[3] = &unk_279BB4C30;
  v6 = v4;
  v11 = v6;
  v7 = [(NSMutableArray *)buttons indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_265AC5000, v8, OS_LOG_TYPE_DEFAULT, "Unknown button %@!", buf, 0xCu);
    }
  }

  else
  {
    v9 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:v7];
    v8 = [v9 action];

    if (v8)
    {
      (*(v8 + 16))(v8);
    }
  }
}

BOOL __38__BFFSplashController__buttonPressed___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 button];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (UIEdgeInsets)additionalInsets
{
  top = self->_additionalInsets.top;
  left = self->_additionalInsets.left;
  bottom = self->_additionalInsets.bottom;
  right = self->_additionalInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end