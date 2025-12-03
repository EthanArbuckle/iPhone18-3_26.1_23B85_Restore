@interface SBMenuBarHeaderContainerView
- (SBMenuBarHeaderContainerView)initWithMenuHeaderViews:(id)views contentHeight:(double)height;
- (double)contentWidth;
- (void)appendOverflowMenuView:(id)view fittingMaximumContentWidth:(double)width;
- (void)prependMenuView:(id)view;
@end

@implementation SBMenuBarHeaderContainerView

- (SBMenuBarHeaderContainerView)initWithMenuHeaderViews:(id)views contentHeight:(double)height
{
  v44 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v42.receiver = self;
  v42.super_class = SBMenuBarHeaderContainerView;
  v7 = [(SBMenuBarHeaderContainerView *)&v42 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v7)
  {
    v37 = viewsCopy;
    v8 = [viewsCopy mutableCopy];
    menuHeaderViews = v7->_menuHeaderViews;
    v7->_menuHeaderViews = v8;

    array = [MEMORY[0x277CBEB18] array];
    trailingConstraints = v7->_trailingConstraints;
    v7->_trailingConstraints = array;

    v7->_contentHeight = height;
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

    array2 = [MEMORY[0x277CBEB18] array];
    heightAnchor = [(SBMenuBarHeaderContainerView *)v7 heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:v7->_contentHeight];
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
            leadingAnchor = [v21 leadingAnchor];
            leadingAnchor2 = [(SBMenuBarHeaderContainerView *)v7 leadingAnchor];
            v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

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
        trailingAnchor = [v21 trailingAnchor];
        if (v24)
        {
          [v24 leadingAnchor];
        }

        else
        {
          [(SBMenuBarHeaderContainerView *)v7 trailingAnchor];
        }
        v29 = ;
        v30 = [trailingAnchor constraintEqualToAnchor:v29];

        centerYAnchor = [v21 centerYAnchor];
        centerYAnchor2 = [(SBMenuBarHeaderContainerView *)v7 centerYAnchor];
        v33 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        [array2 addObject:v33];

        heightAnchor2 = [v21 heightAnchor];
        v35 = [heightAnchor2 constraintEqualToConstant:v7->_contentHeight];
        [array2 addObject:v35];

        if (v25)
        {
          [array2 addObject:v25];
          objc_storeStrong(&v7->_leadingEdgeConstraint, v25);
        }

        [array2 addObject:v30];
        [(NSMutableArray *)v7->_trailingConstraints addObject:v30];
      }
    }

    [MEMORY[0x277CCAAD0] activateConstraints:array2];

    viewsCopy = v37;
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

- (void)prependMenuView:(id)view
{
  v22[4] = *MEMORY[0x277D85DE8];
  menuHeaderViews = self->_menuHeaderViews;
  viewCopy = view;
  firstObject = [(NSMutableArray *)menuHeaderViews firstObject];
  [(NSMutableArray *)self->_menuHeaderViews insertObject:viewCopy atIndex:0];
  [(SBMenuBarHeaderContainerView *)self addSubview:viewCopy];
  [(NSLayoutConstraint *)self->_leadingEdgeConstraint setActive:0];
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [(SBMenuBarHeaderContainerView *)self leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  leadingEdgeConstraint = self->_leadingEdgeConstraint;
  self->_leadingEdgeConstraint = v9;

  trailingAnchor = [viewCopy trailingAnchor];
  leadingAnchor3 = [firstObject leadingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];

  [(NSMutableArray *)self->_trailingConstraints insertObject:v13 atIndex:0];
  v14 = MEMORY[0x277CCAAD0];
  centerYAnchor = [viewCopy centerYAnchor];
  centerYAnchor2 = [(SBMenuBarHeaderContainerView *)self centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v22[0] = v17;
  heightAnchor = [viewCopy heightAnchor];

  v19 = [heightAnchor constraintEqualToConstant:self->_contentHeight];
  v20 = self->_leadingEdgeConstraint;
  v22[1] = v19;
  v22[2] = v20;
  v22[3] = v13;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [v14 activateConstraints:v21];
}

- (void)appendOverflowMenuView:(id)view fittingMaximumContentWidth:(double)width
{
  v42[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [(SBMenuBarHeaderContainerView *)self contentWidth];
  v8 = v7;
  [viewCopy bounds];
  v10 = v8 + v9;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  while (v10 > width)
  {
    if (![(NSMutableArray *)self->_menuHeaderViews count])
    {
      break;
    }

    lastObject = [(NSMutableArray *)self->_menuHeaderViews lastObject];
    v13 = objc_opt_class();
    v14 = lastObject;
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
    lastObject2 = [(NSMutableArray *)self->_trailingConstraints lastObject];
    [array2 addObject:lastObject2];

    [(NSMutableArray *)self->_trailingConstraints removeLastObject];
    if ([v16 type] == 2)
    {
      overflowMenus = [v16 overflowMenus];
      [array addObjectsFromArray:overflowMenus];
    }

    else
    {
      overflowMenus = [v16 mainMenu];
      [array insertObject:overflowMenus atIndex:0];
    }

    [v16 removeFromSuperview];
    [v16 bounds];
    v10 = v10 - v19;
  }

  lastObject3 = [(NSMutableArray *)self->_menuHeaderViews lastObject];
  [(NSMutableArray *)self->_menuHeaderViews addObject:viewCopy];
  [(SBMenuBarHeaderContainerView *)self addSubview:viewCopy];
  if ([(NSMutableArray *)self->_trailingConstraints count])
  {
    lastObject4 = [(NSMutableArray *)self->_trailingConstraints lastObject];
    [array2 addObject:lastObject4];

    [(NSMutableArray *)self->_trailingConstraints removeLastObject];
  }

  v22 = MEMORY[0x277CBEB18];
  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [(SBMenuBarHeaderContainerView *)self trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26 = [v22 arrayWithObject:v25];

  if (lastObject3)
  {
    trailingAnchor3 = [lastObject3 trailingAnchor];
    leadingAnchor = [viewCopy leadingAnchor];
    v29 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor];
    [v26 addObject:v29];
  }

  [(NSMutableArray *)self->_trailingConstraints addObjectsFromArray:v26];
  v40 = lastObject3;
  v30 = MEMORY[0x277CCAAD0];
  centerYAnchor = [viewCopy centerYAnchor];
  centerYAnchor2 = [(SBMenuBarHeaderContainerView *)self centerYAnchor];
  v33 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v42[0] = v33;
  [viewCopy heightAnchor];
  v34 = v38 = viewCopy;
  v35 = [v34 constraintEqualToConstant:self->_contentHeight];
  v42[1] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v37 = [v26 arrayByAddingObjectsFromArray:v36];
  [v30 activateConstraints:v37];

  [MEMORY[0x277CCAAD0] deactivateConstraints:array2];
  [v38 setOverflowMenus:array];
}

- (void)appendOverflowMenuView:(uint64_t)a1 fittingMaximumContentWidth:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMenuBarHeaderContainerView.m" lineNumber:96 description:@"We should only be dealing with app menu views when overflowing menu content"];
}

@end