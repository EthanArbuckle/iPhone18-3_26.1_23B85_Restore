@interface STTableCell
- (STTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (UIViewController)parentViewController;
- (void)layoutSubviews;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation STTableCell

- (STTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v61[12] = *MEMORY[0x277D85DE8];
  v60.receiver = self;
  v60.super_class = STTableCell;
  v5 = [(PSTableCell *)&v60 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = objc_opt_new();
    childViewControllers = v5->_childViewControllers;
    v5->_childViewControllers = v6;

    textLabel = [(STTableCell *)v5 textLabel];
    [textLabel setText:@" "];
    [textLabel setHidden:1];
    valueLabel = [(PSTableCell *)v5 valueLabel];
    [valueLabel setHidden:1];

    effectiveUserInterfaceLayoutDirection = [(STTableCell *)v5 effectiveUserInterfaceLayoutDirection];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      [(STTableCell *)v5 setNeedsLayout];
      [(STTableCell *)v5 layoutIfNeeded];
    }

    contentView = [(STTableCell *)v5 contentView];
    v11 = objc_opt_new();
    [contentView addLayoutGuide:v11];
    v12 = objc_opt_new();
    [contentView addLayoutGuide:v12];
    v13 = objc_opt_new();
    contentLayoutGuide = v5->_contentLayoutGuide;
    v5->_contentLayoutGuide = v13;

    [contentView addLayoutGuide:v5->_contentLayoutGuide];
    topAnchor = [(UILayoutGuide *)v5->_contentLayoutGuide topAnchor];
    topAnchor2 = [contentView topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v61[0] = v52;
    bottomAnchor = [(UILayoutGuide *)v5->_contentLayoutGuide bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v61[1] = v49;
    topAnchor3 = [v11 topAnchor];
    topAnchor4 = [(UILayoutGuide *)v5->_contentLayoutGuide topAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v61[2] = v46;
    bottomAnchor3 = [v11 bottomAnchor];
    bottomAnchor4 = [(UILayoutGuide *)v5->_contentLayoutGuide bottomAnchor];
    v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v61[3] = v43;
    leadingAnchor = [v11 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v61[4] = v40;
    trailingAnchor = [v11 trailingAnchor];
    leadingAnchor3 = [(UILayoutGuide *)v5->_contentLayoutGuide leadingAnchor];
    v37 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
    v61[5] = v37;
    topAnchor5 = [v12 topAnchor];
    topAnchor6 = [(UILayoutGuide *)v5->_contentLayoutGuide topAnchor];
    v33 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v61[6] = v33;
    bottomAnchor5 = [v12 bottomAnchor];
    bottomAnchor6 = [(UILayoutGuide *)v5->_contentLayoutGuide bottomAnchor];
    v30 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v61[7] = v30;
    leadingAnchor4 = [v12 leadingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)v5->_contentLayoutGuide trailingAnchor];
    v27 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2];
    v61[8] = v27;
    trailingAnchor3 = [v12 trailingAnchor];
    v58 = contentView;
    trailingAnchor4 = [contentView trailingAnchor];
    v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v61[9] = v17;
    trailingAnchor5 = [v11 trailingAnchor];
    v59 = textLabel;
    leadingAnchor5 = [textLabel leadingAnchor];
    v20 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor5];
    v61[10] = v20;
    v57 = v11;
    widthAnchor = [v11 widthAnchor];
    v56 = v12;
    widthAnchor2 = [v12 widthAnchor];
    v23 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v61[11] = v23;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:12];

    if (effectiveUserInterfaceLayoutDirection == 1)
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
  rtlContentLayoutGuideConstraints = [(STTableCell *)self rtlContentLayoutGuideConstraints];
  if (rtlContentLayoutGuideConstraints)
  {
    if ([(STTableCell *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      superview = [(STTableCell *)self superview];

      if (superview)
      {
        [MEMORY[0x277CCAAD0] activateConstraints:rtlContentLayoutGuideConstraints];
        [(STTableCell *)self setRtlContentLayoutGuideConstraints:0];
      }
    }
  }

  v5.receiver = self;
  v5.super_class = STTableCell;
  [(PSTableCell *)&v5 layoutSubviews];
}

- (void)willMoveToSuperview:(id)superview
{
  v29 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = STTableCell;
  [(STTableCell *)&v26 willMoveToSuperview:?];
  parentViewController = [(STTableCell *)self parentViewController];
  if (parentViewController)
  {
    superview = [(STTableCell *)self superview];

    if (superview && !superview)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      childViewControllers = [(STTableCell *)self childViewControllers];
      v8 = [childViewControllers countByEnumeratingWithState:&v22 objects:v28 count:16];
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
              objc_enumerationMutation(childViewControllers);
            }

            v12 = *(*(&v22 + 1) + 8 * i);
            [parentViewController addChildViewController:v12];
            [v12 didMoveToParentViewController:parentViewController];
          }

          v9 = [childViewControllers countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v9);
      }

LABEL_21:

      goto LABEL_22;
    }

    if (!superview && superview)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      childViewControllers = [(STTableCell *)self childViewControllers];
      v13 = [childViewControllers countByEnumeratingWithState:&v18 objects:v27 count:16];
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
              objc_enumerationMutation(childViewControllers);
            }

            v17 = *(*(&v18 + 1) + 8 * j);
            [v17 willMoveToParentViewController:0];
            [v17 removeFromParentViewController];
          }

          v14 = [childViewControllers countByEnumeratingWithState:&v18 objects:v27 count:16];
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