@interface WFCompactActionGroupView
- (WFCompactActionGroupView)initWithActions:(id)actions appearanceProvider:(id)provider;
- (void)layoutSubviews;
- (void)setAppearanceProvider:(id)provider;
- (void)tintColorDidChange;
@end

@implementation WFCompactActionGroupView

- (void)setAppearanceProvider:(id)provider
{
  objc_storeStrong(&self->_appearanceProvider, provider);
  providerCopy = provider;
  [providerCopy configureActionGroupView:self];
}

- (void)tintColorDidChange
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  actions = [(WFCompactActionGroupView *)self actions];
  v4 = [actions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        dialogButton = [v8 dialogButton];
        style = [dialogButton style];

        if (!style)
        {
          tintColor = [(WFCompactActionGroupView *)self tintColor];
          uiButton = [v8 uiButton];
          [uiButton setBackgroundColor:tintColor];
        }
      }

      v5 = [actions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)layoutSubviews
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = WFCompactActionGroupView;
  [(WFCompactActionGroupView *)&v22 layoutSubviews];
  actions = [(WFCompactActionGroupView *)self actions];
  v4 = [actions count];

  if (v4 == 2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    actions2 = [(WFCompactActionGroupView *)self actions];
    v6 = [actions2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(actions2);
          }

          uiButton = [*(*(&v18 + 1) + 8 * i) uiButton];
          titleLabel = [uiButton titleLabel];
          [titleLabel intrinsicContentSize];
          v14 = v13 + 4.0;
          [(WFCompactActionGroupView *)self frame];
          v16 = v14 < v15 * 0.5 + -22.5;

          v9 &= v16;
        }

        v7 = [actions2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v7);

      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v17 = 0;
    goto LABEL_13;
  }

LABEL_10:
  v17 = 1;
LABEL_13:
  [(WFCompactActionGroupView *)self setAxis:v17];
}

- (WFCompactActionGroupView)initWithActions:(id)actions appearanceProvider:(id)provider
{
  v54 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  providerCopy = provider;
  v51.receiver = self;
  v51.super_class = WFCompactActionGroupView;
  v8 = [(WFCompactActionGroupView *)&v51 init];
  v9 = v8;
  if (v8)
  {
    v40 = providerCopy;
    [(WFCompactActionGroupView *)v8 setAppearanceProvider:providerCopy];
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(actionsCopy, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v41 = actionsCopy;
    v11 = actionsCopy;
    v12 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v48;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v48 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v47 + 1) + 8 * i);
          dialogButton = [v16 dialogButton];
          style = [dialogButton style];

          if (style == 1)
          {
            [v10 insertObject:v16 atIndex:0];
          }

          else
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v13);
    }

    v39 = v10;
    v19 = [v10 copy];
    actions = v9->_actions;
    v9->_actions = v19;

    [(WFCompactActionGroupView *)v9 setAutoresizingMask:18];
    [(WFCompactActionGroupView *)v9 setSpacing:12.0];
    [(WFCompactActionGroupView *)v9 setLayoutMargins:15.0, 15.0, 15.0, 15.0];
    [(WFCompactActionGroupView *)v9 setDistribution:1];
    [(WFCompactActionGroupView *)v9 setLayoutMarginsRelativeArrangement:1];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [(WFCompactActionGroupView *)v9 actions];
    v21 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v44;
      v24 = *MEMORY[0x277D76818];
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v43 + 1) + 8 * j);
          appearanceProvider = [(WFCompactActionGroupView *)v9 appearanceProvider];
          [v26 setAppearanceProvider:appearanceProvider];

          uiButton = [v26 uiButton];
          [(WFCompactActionGroupView *)v9 addArrangedSubview:uiButton];
          traitCollection = [(WFCompactActionGroupView *)v9 traitCollection];
          preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

          heightAnchor = [uiButton heightAnchor];
          if (preferredContentSizeCategory >= v24)
          {
            titleLabel = [uiButton titleLabel];
            heightAnchor2 = [titleLabel heightAnchor];
            v36 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:25.0];
            [v36 setActive:1];
          }

          else
          {
            universalPreviewsEnabled = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
            v33 = 50.0;
            if (universalPreviewsEnabled)
            {
              v33 = 54.0;
            }

            titleLabel = [heightAnchor constraintEqualToConstant:v33];
            [titleLabel setActive:1];
          }
        }

        v22 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v22);
    }

    v37 = v9;
    providerCopy = v40;
    actionsCopy = v41;
  }

  return v9;
}

@end