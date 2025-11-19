@interface SBMenuBarHeaderContainerView
- (SBMenuBarHeaderContainerView)initWithMenuHeaderViews:(id)a3 contentHeight:(double)a4;
- (double)contentWidth;
- (void)appendOverflowMenuView:(id)a3 fittingMaximumContentWidth:(double)a4;
- (void)prependMenuView:(id)a3;
@end

@implementation SBMenuBarHeaderContainerView

- (SBMenuBarHeaderContainerView)initWithMenuHeaderViews:(id)a3 contentHeight:(double)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v42.receiver = self;
  v42.super_class = SBMenuBarHeaderContainerView;
  v7 = [(SBMenuBarHeaderContainerView *)&v42 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v7)
  {
    v37 = v6;
    v8 = [v6 mutableCopy];
    menuHeaderViews = v7->_menuHeaderViews;
    v7->_menuHeaderViews = v8;

    v10 = [MEMORY[0x277CBEB18] array];
    trailingConstraints = v7->_trailingConstraints;
    v7->_trailingConstraints = v10;

    v7->_contentHeight = a4;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = v7->_menuHeaderViews;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(SBMenuBarHeaderContainerView *)v7 addSubview:*(*(&v38 + 1) + 8 * i)];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v14);
    }

    v17 = [MEMORY[0x277CBEB18] array];
    v18 = [(SBMenuBarHeaderContainerView *)v7 heightAnchor];
    v19 = [v18 constraintEqualToConstant:v7->_contentHeight];
    [v19 setActive:1];

    if ([(NSMutableArray *)v7->_menuHeaderViews count])
    {
      for (j = 0; j < [(NSMutableArray *)v7->_menuHeaderViews count]; ++j)
      {
        v21 = [(NSMutableArray *)v7->_menuHeaderViews objectAtIndex:j];
        if (j)
        {
          v22 = [(NSMutableArray *)v7->_menuHeaderViews objectAtIndex:j - 1];

          v23 = v22 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (j >= [(NSMutableArray *)v7->_menuHeaderViews count]- 1)
        {
          v24 = 0;
          if (v23)
          {
LABEL_18:
            v26 = [v21 leadingAnchor];
            v27 = [(SBMenuBarHeaderContainerView *)v7 leadingAnchor];
            v25 = [v26 constraintEqualToAnchor:v27];

            goto LABEL_19;
          }
        }

        else
        {
          v24 = [(NSMutableArray *)v7->_menuHeaderViews objectAtIndex:j + 1];
          if (v23)
          {
            goto LABEL_18;
          }
        }

        v25 = 0;
LABEL_19:
        v28 = [v21 trailingAnchor];
        if (v24)
        {
          [v24 leadingAnchor];
        }

        else
        {
          [(SBMenuBarHeaderContainerView *)v7 trailingAnchor];
        }
        v29 = ;
        v30 = [v28 constraintEqualToAnchor:v29];

        v31 = [v21 centerYAnchor];
        v32 = [(SBMenuBarHeaderContainerView *)v7 centerYAnchor];
        v33 = [v31 constraintEqualToAnchor:v32];
        [v17 addObject:v33];

        v34 = [v21 heightAnchor];
        v35 = [v34 constraintEqualToConstant:v7->_contentHeight];
        [v17 addObject:v35];

        if (v25)
        {
          [v17 addObject:v25];
          objc_storeStrong(&v7->_leadingEdgeConstraint, v25);
        }

        [v17 addObject:v30];
        [(NSMutableArray *)v7->_trailingConstraints addObject:v30];
      }
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v17];

    v6 = v37;
  }

  return v7;
}

- (double)contentWidth
{
  v2 = [(NSMutableArray *)self->_menuHeaderViews bs_reduce:&unk_28336F270 block:&__block_literal_global_121];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

uint64_t __44__SBMenuBarHeaderContainerView_contentWidth__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 doubleValue];
  v7 = v6;
  [v5 bounds];
  v9 = v8;

  return [v4 numberWithDouble:v7 + v9];
}

- (void)prependMenuView:(id)a3
{
  v22[4] = *MEMORY[0x277D85DE8];
  menuHeaderViews = self->_menuHeaderViews;
  v5 = a3;
  v6 = [(NSMutableArray *)menuHeaderViews firstObject];
  [(NSMutableArray *)self->_menuHeaderViews insertObject:v5 atIndex:0];
  [(SBMenuBarHeaderContainerView *)self addSubview:v5];
  [(NSLayoutConstraint *)self->_leadingEdgeConstraint setActive:0];
  v7 = [v5 leadingAnchor];
  v8 = [(SBMenuBarHeaderContainerView *)self leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  leadingEdgeConstraint = self->_leadingEdgeConstraint;
  self->_leadingEdgeConstraint = v9;

  v11 = [v5 trailingAnchor];
  v12 = [v6 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  [(NSMutableArray *)self->_trailingConstraints insertObject:v13 atIndex:0];
  v14 = MEMORY[0x277CCAAD0];
  v15 = [v5 centerYAnchor];
  v16 = [(SBMenuBarHeaderContainerView *)self centerYAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v22[0] = v17;
  v18 = [v5 heightAnchor];

  v19 = [v18 constraintEqualToConstant:self->_contentHeight];
  v20 = self->_leadingEdgeConstraint;
  v22[1] = v19;
  v22[2] = v20;
  v22[3] = v13;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [v14 activateConstraints:v21];
}

- (void)appendOverflowMenuView:(id)a3 fittingMaximumContentWidth:(double)a4
{
  v42[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(SBMenuBarHeaderContainerView *)self contentWidth];
  v8 = v7;
  [v6 bounds];
  v10 = v8 + v9;
  v41 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  while (v10 > a4)
  {
    if (![(NSMutableArray *)self->_menuHeaderViews count])
    {
      break;
    }

    v12 = [(NSMutableArray *)self->_menuHeaderViews lastObject];
    v13 = objc_opt_class();
    v14 = v12;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (!v16)
    {
      [SBMenuBarHeaderContainerView appendOverflowMenuView:a2 fittingMaximumContentWidth:self];
    }

    [(NSMutableArray *)self->_menuHeaderViews removeLastObject];
    v17 = [(NSMutableArray *)self->_trailingConstraints lastObject];
    [v11 addObject:v17];

    [(NSMutableArray *)self->_trailingConstraints removeLastObject];
    if ([v16 type] == 2)
    {
      v18 = [v16 overflowMenus];
      [v41 addObjectsFromArray:v18];
    }

    else
    {
      v18 = [v16 mainMenu];
      [v41 insertObject:v18 atIndex:0];
    }

    [v16 removeFromSuperview];
    [v16 bounds];
    v10 = v10 - v19;
  }

  v20 = [(NSMutableArray *)self->_menuHeaderViews lastObject];
  [(NSMutableArray *)self->_menuHeaderViews addObject:v6];
  [(SBMenuBarHeaderContainerView *)self addSubview:v6];
  if ([(NSMutableArray *)self->_trailingConstraints count])
  {
    v21 = [(NSMutableArray *)self->_trailingConstraints lastObject];
    [v11 addObject:v21];

    [(NSMutableArray *)self->_trailingConstraints removeLastObject];
  }

  v22 = MEMORY[0x277CBEB18];
  v23 = [v6 trailingAnchor];
  v24 = [(SBMenuBarHeaderContainerView *)self trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v26 = [v22 arrayWithObject:v25];

  if (v20)
  {
    v27 = [v20 trailingAnchor];
    v28 = [v6 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v26 addObject:v29];
  }

  [(NSMutableArray *)self->_trailingConstraints addObjectsFromArray:v26];
  v40 = v20;
  v30 = MEMORY[0x277CCAAD0];
  v31 = [v6 centerYAnchor];
  v32 = [(SBMenuBarHeaderContainerView *)self centerYAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  v42[0] = v33;
  [v6 heightAnchor];
  v34 = v38 = v6;
  v35 = [v34 constraintEqualToConstant:self->_contentHeight];
  v42[1] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v37 = [v26 arrayByAddingObjectsFromArray:v36];
  [v30 activateConstraints:v37];

  [MEMORY[0x277CCAAD0] deactivateConstraints:v11];
  [v38 setOverflowMenus:v41];
}

- (void)appendOverflowMenuView:(uint64_t)a1 fittingMaximumContentWidth:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMenuBarHeaderContainerView.m" lineNumber:96 description:@"We should only be dealing with app menu views when overflowing menu content"];
}

@end