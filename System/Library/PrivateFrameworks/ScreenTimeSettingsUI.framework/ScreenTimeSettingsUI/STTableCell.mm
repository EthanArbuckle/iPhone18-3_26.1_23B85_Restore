@interface STTableCell
- (STTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (UIViewController)parentViewController;
- (void)layoutSubviews;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation STTableCell

- (STTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v61[12] = *MEMORY[0x277D85DE8];
  v60.receiver = self;
  v60.super_class = STTableCell;
  v5 = [(PSTableCell *)&v60 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = objc_opt_new();
    childViewControllers = v5->_childViewControllers;
    v5->_childViewControllers = v6;

    v8 = [(STTableCell *)v5 textLabel];
    [v8 setText:@" "];
    [v8 setHidden:1];
    v9 = [(PSTableCell *)v5 valueLabel];
    [v9 setHidden:1];

    v55 = [(STTableCell *)v5 effectiveUserInterfaceLayoutDirection];
    if (v55 == 1)
    {
      [(STTableCell *)v5 setNeedsLayout];
      [(STTableCell *)v5 layoutIfNeeded];
    }

    v10 = [(STTableCell *)v5 contentView];
    v11 = objc_opt_new();
    [v10 addLayoutGuide:v11];
    v12 = objc_opt_new();
    [v10 addLayoutGuide:v12];
    v13 = objc_opt_new();
    contentLayoutGuide = v5->_contentLayoutGuide;
    v5->_contentLayoutGuide = v13;

    [v10 addLayoutGuide:v5->_contentLayoutGuide];
    v54 = [(UILayoutGuide *)v5->_contentLayoutGuide topAnchor];
    v53 = [v10 topAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v61[0] = v52;
    v51 = [(UILayoutGuide *)v5->_contentLayoutGuide bottomAnchor];
    v50 = [v10 bottomAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v61[1] = v49;
    v48 = [v11 topAnchor];
    v47 = [(UILayoutGuide *)v5->_contentLayoutGuide topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v61[2] = v46;
    v45 = [v11 bottomAnchor];
    v44 = [(UILayoutGuide *)v5->_contentLayoutGuide bottomAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v61[3] = v43;
    v42 = [v11 leadingAnchor];
    v41 = [v10 leadingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v61[4] = v40;
    v39 = [v11 trailingAnchor];
    v38 = [(UILayoutGuide *)v5->_contentLayoutGuide leadingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v61[5] = v37;
    v35 = [v12 topAnchor];
    v34 = [(UILayoutGuide *)v5->_contentLayoutGuide topAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v61[6] = v33;
    v32 = [v12 bottomAnchor];
    v31 = [(UILayoutGuide *)v5->_contentLayoutGuide bottomAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v61[7] = v30;
    v29 = [v12 leadingAnchor];
    v28 = [(UILayoutGuide *)v5->_contentLayoutGuide trailingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v61[8] = v27;
    v15 = [v12 trailingAnchor];
    v58 = v10;
    v16 = [v10 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v61[9] = v17;
    v18 = [v11 trailingAnchor];
    v59 = v8;
    v19 = [v8 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v61[10] = v20;
    v57 = v11;
    v21 = [v11 widthAnchor];
    v56 = v12;
    v22 = [v12 widthAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v61[11] = v23;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:12];

    if (v55 == 1)
    {
      v24 = v36;
      rtlContentLayoutGuideConstraints = v5->_rtlContentLayoutGuideConstraints;
      v5->_rtlContentLayoutGuideConstraints = v24;
    }

    else
    {
      [MEMORY[0x277CCAAD0] activateConstraints:v36];
      rtlContentLayoutGuideConstraints = v5->_rtlContentLayoutGuideConstraints;
      v5->_rtlContentLayoutGuideConstraints = 0;
    }
  }

  return v5;
}

- (void)layoutSubviews
{
  v3 = [(STTableCell *)self rtlContentLayoutGuideConstraints];
  if (v3)
  {
    if ([(STTableCell *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      v4 = [(STTableCell *)self superview];

      if (v4)
      {
        [MEMORY[0x277CCAAD0] activateConstraints:v3];
        [(STTableCell *)self setRtlContentLayoutGuideConstraints:0];
      }
    }
  }

  v5.receiver = self;
  v5.super_class = STTableCell;
  [(PSTableCell *)&v5 layoutSubviews];
}

- (void)willMoveToSuperview:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = STTableCell;
  [(STTableCell *)&v26 willMoveToSuperview:?];
  v5 = [(STTableCell *)self parentViewController];
  if (v5)
  {
    v6 = [(STTableCell *)self superview];

    if (a3 && !v6)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = [(STTableCell *)self childViewControllers];
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v22 + 1) + 8 * i);
            [v5 addChildViewController:v12];
            [v12 didMoveToParentViewController:v5];
          }

          v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v9);
      }

LABEL_21:

      goto LABEL_22;
    }

    if (!a3 && v6)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [(STTableCell *)self childViewControllers];
      v13 = [v7 countByEnumeratingWithState:&v18 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v19;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(v7);
            }

            v17 = *(*(&v18 + 1) + 8 * j);
            [v17 willMoveToParentViewController:0];
            [v17 removeFromParentViewController];
          }

          v14 = [v7 countByEnumeratingWithState:&v18 objects:v27 count:16];
        }

        while (v14);
      }

      goto LABEL_21;
    }
  }

LABEL_22:
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end