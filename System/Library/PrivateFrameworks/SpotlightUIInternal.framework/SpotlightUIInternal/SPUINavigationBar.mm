@interface SPUINavigationBar
- (SPUINavigationBar)initWithFrame:(CGRect)frame;
- (void)didAddSubview:(id)subview;
- (void)didMoveToWindow;
- (void)reconfigureNavigationBarForItem:(id)item;
- (void)setHeader:(id)header;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBackgroundViewVisibility;
@end

@implementation SPUINavigationBar

- (void)updateBackgroundViewVisibility
{
  topItem = [(SPUINavigationBar *)self topItem];
  titleView = [topItem titleView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _backgroundView = [(SPUINavigationBar *)self _backgroundView];
  [_backgroundView setHidden:(isKindOfClass & 1) == 0];
}

- (SPUINavigationBar)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = SPUINavigationBar;
  v3 = [(SPUINavigationBar *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(SPUINavigationBar *)v3 setBackgroundImage:v4 forBarMetrics:0];

    v5 = objc_opt_new();
    [(SPUINavigationBar *)v3 setTopDividerView:v5];

    topDividerView = [(SPUINavigationBar *)v3 topDividerView];
    [(SPUINavigationBar *)v3 addSubview:topDividerView];

    topDividerView2 = [(SPUINavigationBar *)v3 topDividerView];
    [topDividerView2 setAlpha:0.0];

    v8 = MEMORY[0x277D4C828];
    topDividerView3 = [(SPUINavigationBar *)v3 topDividerView];
    v10 = [v8 baselineAlignBottomView:v3 toTopView:topDividerView3];

    v11 = _UISolariumEnabled();
    v12 = MEMORY[0x277D4C828];
    topDividerView4 = [(SPUINavigationBar *)v3 topDividerView];
    if (v11)
    {
      [MEMORY[0x277D6F1D8] standardTableCellContentInset];
      v14 = [v12 alignLeadingView:v3 toTrailingView:topDividerView4 spacing:?];

      v15 = MEMORY[0x277D4C828];
      topDividerView4 = [(SPUINavigationBar *)v3 topDividerView];
      [MEMORY[0x277D6F1D8] standardTableCellContentInset];
      v16 = [v15 alignLeadingView:topDividerView4 toTrailingView:v3 spacing:?];
    }

    else
    {
      [v12 constrainViewWidthToContainer:topDividerView4];
    }

    v17 = objc_opt_new();
    [(SPUINavigationBar *)v3 _setBackgroundView:v17];

    _backgroundView = [(SPUINavigationBar *)v3 _backgroundView];
    [_backgroundView setAlpha:0.0];

    [(SPUINavigationBar *)v3 _setHidesShadow:1];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SPUINavigationBar;
  [(SPUINavigationBar *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SPUINavigationBar *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SPUINavigationBar *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SPUINavigationBar *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
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

- (void)tlk_updateForAppearance:(id)appearance
{
  v10[1] = *MEMORY[0x277D85DE8];
  appearanceCopy = appearance;
  v8.receiver = self;
  v8.super_class = SPUINavigationBar;
  [(SPUINavigationBar *)&v8 tlk_updateForAppearance:appearanceCopy];
  if (([MEMORY[0x277D65D28] enableFloatingWindow] & 1) == 0)
  {
    secondaryColor = [appearanceCopy secondaryColor];
    [(SPUINavigationBar *)self setTintColor:secondaryColor];
    v9 = *MEMORY[0x277D740C0];
    v10[0] = secondaryColor;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(SPUINavigationBar *)self setTitleTextAttributes:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didAddSubview:(id)subview
{
  v36 = *MEMORY[0x277D85DE8];
  subviewCopy = subview;
  v33.receiver = self;
  v33.super_class = SPUINavigationBar;
  [(SPUINavigationBar *)&v33 didAddSubview:subviewCopy];
  topItem = [(SPUINavigationBar *)self topItem];
  titleView = [topItem titleView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  _backgroundView = [(SPUINavigationBar *)self _backgroundView];
  if (_backgroundView == subviewCopy)
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  _backgroundView2 = [(SPUINavigationBar *)self _backgroundView];
  superview = [_backgroundView2 superview];
  v10 = superview;
  if (superview == subviewCopy)
  {

    goto LABEL_15;
  }

  enableFloatingWindow = [MEMORY[0x277D65D28] enableFloatingWindow];

  if ((enableFloatingWindow & 1) == 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    subviews = [(SPUINavigationBar *)self subviews];
    v13 = [subviews countByEnumeratingWithState:&v29 objects:v35 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          NSClassFromString(&cfstr_Uinavigationba.isa);
          if (objc_opt_isKindOfClass())
          {
            topItem = v17;
            goto LABEL_19;
          }
        }

        v14 = [subviews countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    topItem = 0;
LABEL_19:

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    titleView = [topItem subviews];
    v19 = [titleView countByEnumeratingWithState:&v25 objects:v34 count:16];
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
            objc_enumerationMutation(titleView);
          }

          v23 = *(*(&v25 + 1) + 8 * j);
          v24 = [MEMORY[0x277D6F1A0] bestAppearanceForView:self];
          [v24 enableAppearanceForView:v23];
        }

        v20 = [titleView countByEnumeratingWithState:&v25 objects:v34 count:16];
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

- (void)setHeader:(id)header
{
  v17 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  if (self->_header != headerCopy)
  {
    if ([MEMORY[0x277D65D28] enableFloatingWindow])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      items = [(SPUINavigationBar *)self items];
      v7 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
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
              objc_enumerationMutation(items);
            }

            [*(*(&v12 + 1) + 8 * v10++) setTitleView:headerCopy];
          }

          while (v8 != v10);
          v8 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }

    objc_storeStrong(&self->_header, header);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reconfigureNavigationBarForItem:(id)item
{
  itemCopy = item;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [(SPUINavigationBar *)self showSeparator:1 animated:0];
    header = [(SPUINavigationBar *)self header];
    [itemCopy setTitleView:header];

    [itemCopy setTitle:0];
    [itemCopy setHidesBackButton:1];
    [itemCopy setBackBarButtonItem:0];
    v5 = MEMORY[0x277CBEBF8];
    [itemCopy setRightBarButtonItems:MEMORY[0x277CBEBF8]];
    [itemCopy setLeftBarButtonItems:v5];
  }

  else
  {
    [(SPUINavigationBar *)self showSeparator:0 animated:0];
  }

  [(SPUINavigationBar *)self updateBackgroundViewVisibility];
}

@end