@interface SUDelayedNavigationItem
- (BOOL)leftItemsSupplementBackButton;
- (SUDelayedNavigationItem)initWithNavigationItem:(id)a3;
- (id)backButtonTitle;
- (id)leftBarButtonItem;
- (id)leftBarButtonItems;
- (id)navigationBar;
- (id)rightBarButtonItem;
- (id)rightBarButtonItems;
- (id)title;
- (id)titleView;
- (void)_prepareButtonItemForDisplay:(id)a3;
- (void)_scheduleCommit;
- (void)commitDelayedChanges;
- (void)dealloc;
- (void)setBackButtonTitle:(id)a3;
- (void)setHidesBackButton:(BOOL)a3;
- (void)setLeftBarButtonItem:(id)a3 animated:(BOOL)a4;
- (void)setLeftBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)setLeftItemsSupplementBackButton:(BOOL)a3;
- (void)setRightBarButtonItem:(id)a3 animated:(BOOL)a4;
- (void)setRightBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)setTitle:(id)a3;
- (void)setTitleView:(id)a3;
- (void)setTitleView:(id)a3 animated:(BOOL)a4;
@end

@implementation SUDelayedNavigationItem

- (SUDelayedNavigationItem)initWithNavigationItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUDelayedNavigationItem;
  v6 = [(SUDelayedNavigationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedNavigationItem, a3);
  }

  return v7;
}

- (void)dealloc
{
  delayedBackButtonTitle = self->_delayedBackButtonTitle;
  self->_delayedBackButtonTitle = 0;

  delayedLeftBarButtonItems = self->_delayedLeftBarButtonItems;
  self->_delayedLeftBarButtonItems = 0;

  delayedLeftItemsSupplementBackButton = self->_delayedLeftItemsSupplementBackButton;
  self->_delayedLeftItemsSupplementBackButton = 0;

  delayedRightBarButtonItems = self->_delayedRightBarButtonItems;
  self->_delayedRightBarButtonItems = 0;

  delayedTitle = self->_delayedTitle;
  self->_delayedTitle = 0;

  delayedTitleView = self->_delayedTitleView;
  self->_delayedTitleView = 0;

  wrappedNavigationItem = self->_wrappedNavigationItem;
  self->_wrappedNavigationItem = 0;

  v10.receiver = self;
  v10.super_class = SUDelayedNavigationItem;
  [(SUDelayedNavigationItem *)&v10 dealloc];
}

- (void)commitDelayedChanges
{
  v48 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  v3 = [MEMORY[0x1E69DD258] transitionSafePerformer:self->_wrappedNavigationItem];
  [v3 setHidesBackButton:self->_delayedBackButtonHidden];
  delayedBackButtonTitle = self->_delayedBackButtonTitle;
  if (delayedBackButtonTitle)
  {
    v5 = [MEMORY[0x1E695DFB0] null];

    if (delayedBackButtonTitle == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = self->_delayedBackButtonTitle;
    }

    [v3 setBackButtonTitle:v6];
    v7 = self->_delayedBackButtonTitle;
    self->_delayedBackButtonTitle = 0;
  }

  delayedLeftItemsSupplementBackButton = self->_delayedLeftItemsSupplementBackButton;
  if (delayedLeftItemsSupplementBackButton)
  {
    [v3 setLeftItemsSupplementBackButton:{-[NSNumber BOOLValue](delayedLeftItemsSupplementBackButton, "BOOLValue")}];
    v9 = self->_delayedLeftItemsSupplementBackButton;
    self->_delayedLeftItemsSupplementBackButton = 0;
  }

  delayedLeftBarButtonItems = self->_delayedLeftBarButtonItems;
  if (delayedLeftBarButtonItems)
  {
    v11 = [MEMORY[0x1E695DFB0] null];

    if (delayedLeftBarButtonItems == v11)
    {
      v18 = v3;
      v17 = 0;
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v12 = self->_delayedLeftBarButtonItems;
      v13 = [v12 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v43;
        do
        {
          v16 = 0;
          do
          {
            if (*v43 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [(SUDelayedNavigationItem *)self _prepareButtonItemForDisplay:*(*(&v42 + 1) + 8 * v16++)];
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v14);
      }

      v17 = self->_delayedLeftBarButtonItems;
      v18 = v3;
    }

    [v18 setLeftBarButtonItems:v17];
    v19 = self->_delayedLeftBarButtonItems;
    self->_delayedLeftBarButtonItems = 0;
  }

  delayedRightBarButtonItems = self->_delayedRightBarButtonItems;
  if (delayedRightBarButtonItems)
  {
    v21 = [MEMORY[0x1E695DFB0] null];

    if (delayedRightBarButtonItems == v21)
    {
      v27 = 0;
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = self->_delayedRightBarButtonItems;
      v23 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        do
        {
          v26 = 0;
          do
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [(SUDelayedNavigationItem *)self _prepareButtonItemForDisplay:*(*(&v38 + 1) + 8 * v26++), v38];
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v24);
      }

      v27 = self->_delayedRightBarButtonItems;
    }

    [v3 setRightBarButtonItems:{v27, v38}];
    v28 = self->_delayedRightBarButtonItems;
    self->_delayedRightBarButtonItems = 0;
  }

  delayedTitle = self->_delayedTitle;
  if (delayedTitle)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
    if (delayedTitle == v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = self->_delayedTitle;
    }

    [v3 setTitle:v31];

    v32 = self->_delayedTitle;
    self->_delayedTitle = 0;
  }

  delayedTitleView = self->_delayedTitleView;
  if (delayedTitleView)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
    if (delayedTitleView == v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = self->_delayedTitleView;
    }

    v36 = v35;

    if ([v36 conformsToProtocol:&unk_1F423BE40])
    {
      [v36 setDeferringInterfaceUpdates:0];
    }

    [v3 setTitleView:v36];
    v37 = self->_delayedTitleView;
    self->_delayedTitleView = 0;
  }
}

- (id)backButtonTitle
{
  delayedBackButtonTitle = self->_delayedBackButtonTitle;
  if (delayedBackButtonTitle)
  {
    v4 = [MEMORY[0x1E695DFB0] null];

    if (delayedBackButtonTitle == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = self->_delayedBackButtonTitle;
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      v5 = [(SUNavigationItem *)wrappedNavigationItem backButtonTitle];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      v5 = [(SUDelayedNavigationItem *)&v8 backButtonTitle];
    }
  }

  return v5;
}

- (id)leftBarButtonItem
{
  delayedLeftBarButtonItems = self->_delayedLeftBarButtonItems;
  if (delayedLeftBarButtonItems)
  {
    v4 = [MEMORY[0x1E695DFB0] null];

    if (delayedLeftBarButtonItems == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = [self->_delayedLeftBarButtonItems count];
      if (v5)
      {
        v5 = [self->_delayedLeftBarButtonItems objectAtIndex:0];
      }
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      v5 = [(SUNavigationItem *)wrappedNavigationItem leftBarButtonItem];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      v5 = [(SUDelayedNavigationItem *)&v8 leftBarButtonItem];
    }
  }

  return v5;
}

- (id)leftBarButtonItems
{
  delayedLeftBarButtonItems = self->_delayedLeftBarButtonItems;
  if (delayedLeftBarButtonItems)
  {
    v4 = [MEMORY[0x1E695DFB0] null];

    if (delayedLeftBarButtonItems == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = [self->_delayedLeftBarButtonItems copy];
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      v5 = [(SUNavigationItem *)wrappedNavigationItem leftBarButtonItems];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      v5 = [(SUDelayedNavigationItem *)&v8 leftBarButtonItems];
    }
  }

  return v5;
}

- (BOOL)leftItemsSupplementBackButton
{
  if (self->_delayedLeftItemsSupplementBackButton)
  {
    delayedLeftItemsSupplementBackButton = self->_delayedLeftItemsSupplementBackButton;

    return [(NSNumber *)delayedLeftItemsSupplementBackButton BOOLValue];
  }

  else if (self->_wrappedNavigationItem)
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;

    return [(SUNavigationItem *)wrappedNavigationItem leftItemsSupplementBackButton];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v7.receiver = self;
    v7.super_class = SUDelayedNavigationItem;
    return [(SUDelayedNavigationItem *)&v7 leftItemsSupplementBackButton];
  }
}

- (id)navigationBar
{
  v8.receiver = self;
  v8.super_class = SUDelayedNavigationItem;
  v3 = [(SUDelayedNavigationItem *)&v8 navigationBar];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SUNavigationItem *)self->_wrappedNavigationItem navigationBar];
  }

  v6 = v5;

  return v6;
}

- (id)rightBarButtonItem
{
  delayedRightBarButtonItems = self->_delayedRightBarButtonItems;
  if (delayedRightBarButtonItems)
  {
    v4 = [MEMORY[0x1E695DFB0] null];

    if (delayedRightBarButtonItems == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = [self->_delayedRightBarButtonItems count];
      if (v5)
      {
        v5 = [self->_delayedRightBarButtonItems lastObject];
      }
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      v5 = [(SUNavigationItem *)wrappedNavigationItem rightBarButtonItem];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      v5 = [(SUDelayedNavigationItem *)&v8 rightBarButtonItem];
    }
  }

  return v5;
}

- (id)rightBarButtonItems
{
  delayedRightBarButtonItems = self->_delayedRightBarButtonItems;
  if (delayedRightBarButtonItems)
  {
    v4 = [MEMORY[0x1E695DFB0] null];

    if (delayedRightBarButtonItems == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = [self->_delayedRightBarButtonItems copy];
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      v5 = [(SUNavigationItem *)wrappedNavigationItem rightBarButtonItems];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      v5 = [(SUDelayedNavigationItem *)&v8 rightBarButtonItems];
    }
  }

  return v5;
}

- (void)setBackButtonTitle:(id)a3
{
  v10 = a3;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    v4 = v10;
    if (v10)
    {
      if (self->_delayedBackButtonTitle == v10)
      {
        goto LABEL_9;
      }

      v5 = [v10 copy];
      delayedBackButtonTitle = self->_delayedBackButtonTitle;
      self->_delayedBackButtonTitle = v5;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      v9 = self->_delayedBackButtonTitle;
      self->_delayedBackButtonTitle = v8;
    }

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setBackButtonTitle:v10];
    v7 = self->_delayedBackButtonTitle;
    self->_delayedBackButtonTitle = 0;
  }

  v4 = v10;
LABEL_9:
}

- (void)setHidesBackButton:(BOOL)a3
{
  v3 = a3;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    if (self->_delayedBackButtonHidden != v3)
    {
      self->_delayedBackButtonHidden = v3;

      [(SUDelayedNavigationItem *)self _scheduleCommit];
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;

    [(SUNavigationItem *)wrappedNavigationItem setHidesBackButton:v3];
  }
}

- (void)setLeftBarButtonItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        delayedLeftBarButtonItems = self->_delayedLeftBarButtonItems;
        self->_delayedLeftBarButtonItems = v6;
      }

      v8 = [self->_delayedLeftBarButtonItems count];
      v9 = self->_delayedLeftBarButtonItems;
      if (v8)
      {
        [v9 replaceObjectAtIndex:0 withObject:v13];
      }

      else
      {
        [v9 addObject:v13];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([self->_delayedLeftBarButtonItems count])
        {
          [self->_delayedLeftBarButtonItems removeObjectAtIndex:0];
        }
      }

      else
      {
        v11 = [MEMORY[0x1E695DFB0] null];
        v12 = self->_delayedLeftBarButtonItems;
        self->_delayedLeftBarButtonItems = v11;
      }
    }

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setLeftBarButtonItem:v13 animated:v4];
    v10 = self->_delayedLeftBarButtonItems;
    self->_delayedLeftBarButtonItems = 0;
  }
}

- (void)setLeftBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(SUDelayedNavigationItem *)self shouldDelayChanges];
  wrappedNavigationItem = self->_wrappedNavigationItem;
  if (v6)
  {
    v8 = [(SUNavigationItem *)wrappedNavigationItem leftBarButtonItems];
    if (v8 != v12 && ([v8 isEqualToArray:v12] & 1) == 0)
    {
      if (v12)
      {
        if (self->_delayedLeftBarButtonItems == v12)
        {
          goto LABEL_8;
        }

        v9 = [v12 mutableCopy];
        delayedLeftBarButtonItems = self->_delayedLeftBarButtonItems;
        self->_delayedLeftBarButtonItems = v9;
      }

      else
      {
        v11 = [MEMORY[0x1E695DFB0] null];
        delayedLeftBarButtonItems = self->_delayedLeftBarButtonItems;
        self->_delayedLeftBarButtonItems = v11;
      }

      [(SUDelayedNavigationItem *)self _scheduleCommit];
    }
  }

  else
  {
    [(SUNavigationItem *)wrappedNavigationItem setLeftBarButtonItems:v12 animated:v4];
    v8 = self->_delayedLeftBarButtonItems;
    self->_delayedLeftBarButtonItems = 0;
  }

LABEL_8:
}

- (void)setLeftItemsSupplementBackButton:(BOOL)a3
{
  v3 = a3;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v3];
    delayedLeftItemsSupplementBackButton = self->_delayedLeftItemsSupplementBackButton;
    self->_delayedLeftItemsSupplementBackButton = v5;

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setLeftItemsSupplementBackButton:v3];
    v7 = self->_delayedLeftItemsSupplementBackButton;
    self->_delayedLeftItemsSupplementBackButton = 0;
  }
}

- (void)setRightBarButtonItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        delayedRightBarButtonItems = self->_delayedRightBarButtonItems;
        self->_delayedRightBarButtonItems = v6;
      }

      v8 = [self->_delayedRightBarButtonItems count];
      v9 = self->_delayedRightBarButtonItems;
      if (v8)
      {
        [v9 replaceObjectAtIndex:0 withObject:v13];
      }

      else
      {
        [v9 addObject:v13];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([self->_delayedRightBarButtonItems count])
        {
          [self->_delayedRightBarButtonItems removeObjectAtIndex:0];
        }
      }

      else
      {
        v11 = [MEMORY[0x1E695DFB0] null];
        v12 = self->_delayedRightBarButtonItems;
        self->_delayedRightBarButtonItems = v11;
      }
    }

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setRightBarButtonItem:v13 animated:v4];
    v10 = self->_delayedRightBarButtonItems;
    self->_delayedRightBarButtonItems = 0;
  }
}

- (void)setRightBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(SUDelayedNavigationItem *)self shouldDelayChanges];
  wrappedNavigationItem = self->_wrappedNavigationItem;
  if (v6)
  {
    v8 = [(SUNavigationItem *)wrappedNavigationItem rightBarButtonItems];
    if (v8 != v12 && ([v8 isEqualToArray:v12] & 1) == 0)
    {
      if (v12)
      {
        if (self->_delayedRightBarButtonItems == v12)
        {
          goto LABEL_8;
        }

        v9 = [v12 mutableCopy];
        delayedRightBarButtonItems = self->_delayedRightBarButtonItems;
        self->_delayedRightBarButtonItems = v9;
      }

      else
      {
        v11 = [MEMORY[0x1E695DFB0] null];
        delayedRightBarButtonItems = self->_delayedRightBarButtonItems;
        self->_delayedRightBarButtonItems = v11;
      }

      [(SUDelayedNavigationItem *)self _scheduleCommit];
    }
  }

  else
  {
    [(SUNavigationItem *)wrappedNavigationItem setRightBarButtonItems:v12 animated:v4];
    v8 = self->_delayedRightBarButtonItems;
    self->_delayedRightBarButtonItems = 0;
  }

LABEL_8:
}

- (void)setTitle:(id)a3
{
  v8 = a3;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    v4 = v8;
    if (self->_delayedTitle == v8)
    {
      goto LABEL_9;
    }

    if (v8)
    {
      v5 = [v8 copy];
    }

    else
    {
      v5 = [MEMORY[0x1E695DFB0] null];
    }

    delayedTitle = self->_delayedTitle;
    self->_delayedTitle = v5;

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setTitle:v8];
    v6 = self->_delayedTitle;
    self->_delayedTitle = 0;
  }

  v4 = v8;
LABEL_9:
}

- (void)setTitleView:(id)a3
{
  v9 = a3;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    v4 = v9;
    if (v9)
    {
      if (self->_delayedTitleView == v9)
      {
        goto LABEL_9;
      }

      v5 = v9;
      delayedTitleView = self->_delayedTitleView;
      self->_delayedTitleView = v5;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      delayedTitleView = self->_delayedTitleView;
      self->_delayedTitleView = v8;
    }

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setTitleView:v9];
    v7 = self->_delayedTitleView;
    self->_delayedTitleView = 0;
  }

  v4 = v9;
LABEL_9:
}

- (void)setTitleView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    v6 = v11;
    if (v11)
    {
      if (self->_delayedTitleView == v11)
      {
        goto LABEL_9;
      }

      v7 = v11;
      delayedTitleView = self->_delayedTitleView;
      self->_delayedTitleView = v7;
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      delayedTitleView = self->_delayedTitleView;
      self->_delayedTitleView = v10;
    }

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(UINavigationItem *)self->_wrappedNavigationItem setTitleView:v11 animated:v4];
    v9 = self->_delayedTitleView;
    self->_delayedTitleView = 0;
  }

  v6 = v11;
LABEL_9:
}

- (id)title
{
  delayedTitle = self->_delayedTitle;
  if (delayedTitle)
  {
    v4 = [MEMORY[0x1E695DFB0] null];

    if (delayedTitle == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = self->_delayedTitle;
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      v5 = [(SUNavigationItem *)wrappedNavigationItem title];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      v5 = [(SUDelayedNavigationItem *)&v8 title];
    }
  }

  return v5;
}

- (id)titleView
{
  delayedTitleView = self->_delayedTitleView;
  if (delayedTitleView)
  {
    v4 = [MEMORY[0x1E695DFB0] null];

    if (delayedTitleView == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = self->_delayedTitleView;
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      v5 = [(SUNavigationItem *)wrappedNavigationItem titleView];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      v5 = [(SUDelayedNavigationItem *)&v8 titleView];
    }
  }

  return v5;
}

- (void)_prepareButtonItemForDisplay:(id)a3
{
  v3 = [a3 customView];
  if ([v3 conformsToProtocol:&unk_1F423BE40])
  {
    [v3 setDeferringInterfaceUpdates:0];
  }
}

- (void)_scheduleCommit
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_commitDelayedChanges object:0];
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {

    [(SUDelayedNavigationItem *)self performSelector:sel_commitDelayedChanges withObject:0 afterDelay:0.35];
  }

  else
  {

    [(SUDelayedNavigationItem *)self commitDelayedChanges];
  }
}

@end