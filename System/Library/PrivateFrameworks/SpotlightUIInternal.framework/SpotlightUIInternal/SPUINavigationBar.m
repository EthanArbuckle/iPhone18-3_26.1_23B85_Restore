@interface SPUINavigationBar
- (SPUINavigationBar)initWithFrame:(CGRect)a3;
- (void)didAddSubview:(id)a3;
- (void)didMoveToWindow;
- (void)reconfigureNavigationBarForItem:(id)a3;
- (void)setHeader:(id)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBackgroundViewVisibility;
@end

@implementation SPUINavigationBar

- (void)updateBackgroundViewVisibility
{
  v6 = [(SPUINavigationBar *)self topItem];
  v3 = [v6 titleView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [(SPUINavigationBar *)self _backgroundView];
  [v5 setHidden:(isKindOfClass & 1) == 0];
}

- (SPUINavigationBar)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = SPUINavigationBar;
  v3 = [(SPUINavigationBar *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(SPUINavigationBar *)v3 setBackgroundImage:v4 forBarMetrics:0];

    v5 = objc_opt_new();
    [(SPUINavigationBar *)v3 setTopDividerView:v5];

    v6 = [(SPUINavigationBar *)v3 topDividerView];
    [(SPUINavigationBar *)v3 addSubview:v6];

    v7 = [(SPUINavigationBar *)v3 topDividerView];
    [v7 setAlpha:0.0];

    v8 = MEMORY[0x277D4C828];
    v9 = [(SPUINavigationBar *)v3 topDividerView];
    v10 = [v8 baselineAlignBottomView:v3 toTopView:v9];

    v11 = _UISolariumEnabled();
    v12 = MEMORY[0x277D4C828];
    v13 = [(SPUINavigationBar *)v3 topDividerView];
    if (v11)
    {
      [MEMORY[0x277D6F1D8] standardTableCellContentInset];
      v14 = [v12 alignLeadingView:v3 toTrailingView:v13 spacing:?];

      v15 = MEMORY[0x277D4C828];
      v13 = [(SPUINavigationBar *)v3 topDividerView];
      [MEMORY[0x277D6F1D8] standardTableCellContentInset];
      v16 = [v15 alignLeadingView:v13 toTrailingView:v3 spacing:?];
    }

    else
    {
      [v12 constrainViewWidthToContainer:v13];
    }

    v17 = objc_opt_new();
    [(SPUINavigationBar *)v3 _setBackgroundView:v17];

    v18 = [(SPUINavigationBar *)v3 _backgroundView];
    [v18 setAlpha:0.0];

    [(SPUINavigationBar *)v3 _setHidesShadow:1];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SPUINavigationBar;
  [(SPUINavigationBar *)&v9 traitCollectionDidChange:v4];
  v5 = [(SPUINavigationBar *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SPUINavigationBar *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SPUINavigationBar *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SPUINavigationBar;
  [(SPUINavigationBar *)&v3 didMoveToWindow];
  [(SPUINavigationBar *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SPUINavigationBar;
  [(SPUINavigationBar *)&v8 tlk_updateForAppearance:v4];
  if (([MEMORY[0x277D65D28] enableFloatingWindow] & 1) == 0)
  {
    v5 = [v4 secondaryColor];
    [(SPUINavigationBar *)self setTintColor:v5];
    v9 = *MEMORY[0x277D740C0];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(SPUINavigationBar *)self setTitleTextAttributes:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didAddSubview:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SPUINavigationBar;
  [(SPUINavigationBar *)&v33 didAddSubview:v4];
  v5 = [(SPUINavigationBar *)self topItem];
  v6 = [v5 titleView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  v7 = [(SPUINavigationBar *)self _backgroundView];
  if (v7 == v4)
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  v8 = [(SPUINavigationBar *)self _backgroundView];
  v9 = [v8 superview];
  v10 = v9;
  if (v9 == v4)
  {

    goto LABEL_15;
  }

  v11 = [MEMORY[0x277D65D28] enableFloatingWindow];

  if ((v11 & 1) == 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = [(SPUINavigationBar *)self subviews];
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          NSClassFromString(&cfstr_Uinavigationba.isa);
          if (objc_opt_isKindOfClass())
          {
            v5 = v17;
            goto LABEL_19;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_19:

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [v5 subviews];
    v19 = [v6 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v6);
          }

          v23 = *(*(&v25 + 1) + 8 * j);
          v24 = [MEMORY[0x277D6F1A0] bestAppearanceForView:self];
          [v24 enableAppearanceForView:v23];
        }

        v20 = [v6 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v20);
    }

    goto LABEL_16;
  }

LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
}

void __51__SPUINavigationBar_performShowSeparator_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) topDividerView];
  [v3 setAlpha:v2];
}

- (void)setHeader:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_header != v5)
  {
    if ([MEMORY[0x277D65D28] enableFloatingWindow])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [(SPUINavigationBar *)self items];
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v12 + 1) + 8 * v10++) setTitleView:v5];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }

    objc_storeStrong(&self->_header, a3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reconfigureNavigationBarForItem:(id)a3
{
  v6 = a3;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [(SPUINavigationBar *)self showSeparator:1 animated:0];
    v4 = [(SPUINavigationBar *)self header];
    [v6 setTitleView:v4];

    [v6 setTitle:0];
    [v6 setHidesBackButton:1];
    [v6 setBackBarButtonItem:0];
    v5 = MEMORY[0x277CBEBF8];
    [v6 setRightBarButtonItems:MEMORY[0x277CBEBF8]];
    [v6 setLeftBarButtonItems:v5];
  }

  else
  {
    [(SPUINavigationBar *)self showSeparator:0 animated:0];
  }

  [(SPUINavigationBar *)self updateBackgroundViewVisibility];
}

@end