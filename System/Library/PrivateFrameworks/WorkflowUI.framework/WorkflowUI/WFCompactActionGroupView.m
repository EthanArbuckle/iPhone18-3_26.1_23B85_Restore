@interface WFCompactActionGroupView
- (WFCompactActionGroupView)initWithActions:(id)a3 appearanceProvider:(id)a4;
- (void)layoutSubviews;
- (void)setAppearanceProvider:(id)a3;
- (void)tintColorDidChange;
@end

@implementation WFCompactActionGroupView

- (void)setAppearanceProvider:(id)a3
{
  objc_storeStrong(&self->_appearanceProvider, a3);
  v5 = a3;
  [v5 configureActionGroupView:self];
}

- (void)tintColorDidChange
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(WFCompactActionGroupView *)self actions];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 dialogButton];
        v10 = [v9 style];

        if (!v10)
        {
          v11 = [(WFCompactActionGroupView *)self tintColor];
          v12 = [v8 uiButton];
          [v12 setBackgroundColor:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(WFCompactActionGroupView *)self actions];
  v4 = [v3 count];

  if (v4 == 2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(WFCompactActionGroupView *)self actions];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v18 + 1) + 8 * i) uiButton];
          v12 = [v11 titleLabel];
          [v12 intrinsicContentSize];
          v14 = v13 + 4.0;
          [(WFCompactActionGroupView *)self frame];
          v16 = v14 < v15 * 0.5 + -22.5;

          v9 &= v16;
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
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

- (WFCompactActionGroupView)initWithActions:(id)a3 appearanceProvider:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v51.receiver = self;
  v51.super_class = WFCompactActionGroupView;
  v8 = [(WFCompactActionGroupView *)&v51 init];
  v9 = v8;
  if (v8)
  {
    v40 = v7;
    [(WFCompactActionGroupView *)v8 setAppearanceProvider:v7];
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v41 = v6;
    v11 = v6;
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
          v17 = [v16 dialogButton];
          v18 = [v17 style];

          if (v18 == 1)
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
          v27 = [(WFCompactActionGroupView *)v9 appearanceProvider];
          [v26 setAppearanceProvider:v27];

          v28 = [v26 uiButton];
          [(WFCompactActionGroupView *)v9 addArrangedSubview:v28];
          v29 = [(WFCompactActionGroupView *)v9 traitCollection];
          v30 = [v29 preferredContentSizeCategory];

          v31 = [v28 heightAnchor];
          if (v30 >= v24)
          {
            v34 = [v28 titleLabel];
            v35 = [v34 heightAnchor];
            v36 = [v31 constraintEqualToAnchor:v35 constant:25.0];
            [v36 setActive:1];
          }

          else
          {
            v32 = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
            v33 = 50.0;
            if (v32)
            {
              v33 = 54.0;
            }

            v34 = [v31 constraintEqualToConstant:v33];
            [v34 setActive:1];
          }
        }

        v22 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v22);
    }

    v37 = v9;
    v7 = v40;
    v6 = v41;
  }

  return v9;
}

@end