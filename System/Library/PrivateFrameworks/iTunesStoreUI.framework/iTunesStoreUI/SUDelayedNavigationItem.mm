@interface SUDelayedNavigationItem
- (BOOL)leftItemsSupplementBackButton;
- (SUDelayedNavigationItem)initWithNavigationItem:(id)item;
- (id)backButtonTitle;
- (id)leftBarButtonItem;
- (id)leftBarButtonItems;
- (id)navigationBar;
- (id)rightBarButtonItem;
- (id)rightBarButtonItems;
- (id)title;
- (id)titleView;
- (void)_prepareButtonItemForDisplay:(id)display;
- (void)_scheduleCommit;
- (void)commitDelayedChanges;
- (void)dealloc;
- (void)setBackButtonTitle:(id)title;
- (void)setHidesBackButton:(BOOL)button;
- (void)setLeftBarButtonItem:(id)item animated:(BOOL)animated;
- (void)setLeftBarButtonItems:(id)items animated:(BOOL)animated;
- (void)setLeftItemsSupplementBackButton:(BOOL)button;
- (void)setRightBarButtonItem:(id)item animated:(BOOL)animated;
- (void)setRightBarButtonItems:(id)items animated:(BOOL)animated;
- (void)setTitle:(id)title;
- (void)setTitleView:(id)view;
- (void)setTitleView:(id)view animated:(BOOL)animated;
@end

@implementation SUDelayedNavigationItem

- (SUDelayedNavigationItem)initWithNavigationItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = SUDelayedNavigationItem;
  v6 = [(SUDelayedNavigationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedNavigationItem, item);
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
    null = [MEMORY[0x1E695DFB0] null];

    if (delayedBackButtonTitle == null)
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
    null2 = [MEMORY[0x1E695DFB0] null];

    if (delayedLeftBarButtonItems == null2)
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
    null3 = [MEMORY[0x1E695DFB0] null];

    if (delayedRightBarButtonItems == null3)
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
    null4 = [MEMORY[0x1E695DFB0] null];
    if (delayedTitle == null4)
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
    null5 = [MEMORY[0x1E695DFB0] null];
    if (delayedTitleView == null5)
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
    null = [MEMORY[0x1E695DFB0] null];

    if (delayedBackButtonTitle == null)
    {
      backButtonTitle = 0;
    }

    else
    {
      backButtonTitle = self->_delayedBackButtonTitle;
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      backButtonTitle = [(SUNavigationItem *)wrappedNavigationItem backButtonTitle];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      backButtonTitle = [(SUDelayedNavigationItem *)&v8 backButtonTitle];
    }
  }

  return backButtonTitle;
}

- (id)leftBarButtonItem
{
  delayedLeftBarButtonItems = self->_delayedLeftBarButtonItems;
  if (delayedLeftBarButtonItems)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (delayedLeftBarButtonItems == null)
    {
      leftBarButtonItem = 0;
    }

    else
    {
      leftBarButtonItem = [self->_delayedLeftBarButtonItems count];
      if (leftBarButtonItem)
      {
        leftBarButtonItem = [self->_delayedLeftBarButtonItems objectAtIndex:0];
      }
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      leftBarButtonItem = [(SUNavigationItem *)wrappedNavigationItem leftBarButtonItem];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      leftBarButtonItem = [(SUDelayedNavigationItem *)&v8 leftBarButtonItem];
    }
  }

  return leftBarButtonItem;
}

- (id)leftBarButtonItems
{
  delayedLeftBarButtonItems = self->_delayedLeftBarButtonItems;
  if (delayedLeftBarButtonItems)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (delayedLeftBarButtonItems == null)
    {
      leftBarButtonItems = 0;
    }

    else
    {
      leftBarButtonItems = [self->_delayedLeftBarButtonItems copy];
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      leftBarButtonItems = [(SUNavigationItem *)wrappedNavigationItem leftBarButtonItems];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      leftBarButtonItems = [(SUDelayedNavigationItem *)&v8 leftBarButtonItems];
    }
  }

  return leftBarButtonItems;
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
  navigationBar = [(SUDelayedNavigationItem *)&v8 navigationBar];
  v4 = navigationBar;
  if (navigationBar)
  {
    navigationBar2 = navigationBar;
  }

  else
  {
    navigationBar2 = [(SUNavigationItem *)self->_wrappedNavigationItem navigationBar];
  }

  v6 = navigationBar2;

  return v6;
}

- (id)rightBarButtonItem
{
  delayedRightBarButtonItems = self->_delayedRightBarButtonItems;
  if (delayedRightBarButtonItems)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (delayedRightBarButtonItems == null)
    {
      lastObject = 0;
    }

    else
    {
      lastObject = [self->_delayedRightBarButtonItems count];
      if (lastObject)
      {
        lastObject = [self->_delayedRightBarButtonItems lastObject];
      }
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      lastObject = [(SUNavigationItem *)wrappedNavigationItem rightBarButtonItem];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      lastObject = [(SUDelayedNavigationItem *)&v8 rightBarButtonItem];
    }
  }

  return lastObject;
}

- (id)rightBarButtonItems
{
  delayedRightBarButtonItems = self->_delayedRightBarButtonItems;
  if (delayedRightBarButtonItems)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (delayedRightBarButtonItems == null)
    {
      rightBarButtonItems = 0;
    }

    else
    {
      rightBarButtonItems = [self->_delayedRightBarButtonItems copy];
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      rightBarButtonItems = [(SUNavigationItem *)wrappedNavigationItem rightBarButtonItems];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      rightBarButtonItems = [(SUDelayedNavigationItem *)&v8 rightBarButtonItems];
    }
  }

  return rightBarButtonItems;
}

- (void)setBackButtonTitle:(id)title
{
  titleCopy = title;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    v4 = titleCopy;
    if (titleCopy)
    {
      if (self->_delayedBackButtonTitle == titleCopy)
      {
        goto LABEL_9;
      }

      v5 = [titleCopy copy];
      delayedBackButtonTitle = self->_delayedBackButtonTitle;
      self->_delayedBackButtonTitle = v5;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      v9 = self->_delayedBackButtonTitle;
      self->_delayedBackButtonTitle = null;
    }

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setBackButtonTitle:titleCopy];
    v7 = self->_delayedBackButtonTitle;
    self->_delayedBackButtonTitle = 0;
  }

  v4 = titleCopy;
LABEL_9:
}

- (void)setHidesBackButton:(BOOL)button
{
  buttonCopy = button;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    if (self->_delayedBackButtonHidden != buttonCopy)
    {
      self->_delayedBackButtonHidden = buttonCopy;

      [(SUDelayedNavigationItem *)self _scheduleCommit];
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;

    [(SUNavigationItem *)wrappedNavigationItem setHidesBackButton:buttonCopy];
  }
}

- (void)setLeftBarButtonItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    if (itemCopy)
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
        [v9 replaceObjectAtIndex:0 withObject:itemCopy];
      }

      else
      {
        [v9 addObject:itemCopy];
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
        null = [MEMORY[0x1E695DFB0] null];
        v12 = self->_delayedLeftBarButtonItems;
        self->_delayedLeftBarButtonItems = null;
      }
    }

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setLeftBarButtonItem:itemCopy animated:animatedCopy];
    v10 = self->_delayedLeftBarButtonItems;
    self->_delayedLeftBarButtonItems = 0;
  }
}

- (void)setLeftBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  shouldDelayChanges = [(SUDelayedNavigationItem *)self shouldDelayChanges];
  wrappedNavigationItem = self->_wrappedNavigationItem;
  if (shouldDelayChanges)
  {
    leftBarButtonItems = [(SUNavigationItem *)wrappedNavigationItem leftBarButtonItems];
    if (leftBarButtonItems != itemsCopy && ([leftBarButtonItems isEqualToArray:itemsCopy] & 1) == 0)
    {
      if (itemsCopy)
      {
        if (self->_delayedLeftBarButtonItems == itemsCopy)
        {
          goto LABEL_8;
        }

        v9 = [itemsCopy mutableCopy];
        delayedLeftBarButtonItems = self->_delayedLeftBarButtonItems;
        self->_delayedLeftBarButtonItems = v9;
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
        delayedLeftBarButtonItems = self->_delayedLeftBarButtonItems;
        self->_delayedLeftBarButtonItems = null;
      }

      [(SUDelayedNavigationItem *)self _scheduleCommit];
    }
  }

  else
  {
    [(SUNavigationItem *)wrappedNavigationItem setLeftBarButtonItems:itemsCopy animated:animatedCopy];
    leftBarButtonItems = self->_delayedLeftBarButtonItems;
    self->_delayedLeftBarButtonItems = 0;
  }

LABEL_8:
}

- (void)setLeftItemsSupplementBackButton:(BOOL)button
{
  buttonCopy = button;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:buttonCopy];
    delayedLeftItemsSupplementBackButton = self->_delayedLeftItemsSupplementBackButton;
    self->_delayedLeftItemsSupplementBackButton = v5;

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setLeftItemsSupplementBackButton:buttonCopy];
    v7 = self->_delayedLeftItemsSupplementBackButton;
    self->_delayedLeftItemsSupplementBackButton = 0;
  }
}

- (void)setRightBarButtonItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    if (itemCopy)
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
        [v9 replaceObjectAtIndex:0 withObject:itemCopy];
      }

      else
      {
        [v9 addObject:itemCopy];
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
        null = [MEMORY[0x1E695DFB0] null];
        v12 = self->_delayedRightBarButtonItems;
        self->_delayedRightBarButtonItems = null;
      }
    }

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setRightBarButtonItem:itemCopy animated:animatedCopy];
    v10 = self->_delayedRightBarButtonItems;
    self->_delayedRightBarButtonItems = 0;
  }
}

- (void)setRightBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  shouldDelayChanges = [(SUDelayedNavigationItem *)self shouldDelayChanges];
  wrappedNavigationItem = self->_wrappedNavigationItem;
  if (shouldDelayChanges)
  {
    rightBarButtonItems = [(SUNavigationItem *)wrappedNavigationItem rightBarButtonItems];
    if (rightBarButtonItems != itemsCopy && ([rightBarButtonItems isEqualToArray:itemsCopy] & 1) == 0)
    {
      if (itemsCopy)
      {
        if (self->_delayedRightBarButtonItems == itemsCopy)
        {
          goto LABEL_8;
        }

        v9 = [itemsCopy mutableCopy];
        delayedRightBarButtonItems = self->_delayedRightBarButtonItems;
        self->_delayedRightBarButtonItems = v9;
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
        delayedRightBarButtonItems = self->_delayedRightBarButtonItems;
        self->_delayedRightBarButtonItems = null;
      }

      [(SUDelayedNavigationItem *)self _scheduleCommit];
    }
  }

  else
  {
    [(SUNavigationItem *)wrappedNavigationItem setRightBarButtonItems:itemsCopy animated:animatedCopy];
    rightBarButtonItems = self->_delayedRightBarButtonItems;
    self->_delayedRightBarButtonItems = 0;
  }

LABEL_8:
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    v4 = titleCopy;
    if (self->_delayedTitle == titleCopy)
    {
      goto LABEL_9;
    }

    if (titleCopy)
    {
      null = [titleCopy copy];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    delayedTitle = self->_delayedTitle;
    self->_delayedTitle = null;

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setTitle:titleCopy];
    v6 = self->_delayedTitle;
    self->_delayedTitle = 0;
  }

  v4 = titleCopy;
LABEL_9:
}

- (void)setTitleView:(id)view
{
  viewCopy = view;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    v4 = viewCopy;
    if (viewCopy)
    {
      if (self->_delayedTitleView == viewCopy)
      {
        goto LABEL_9;
      }

      v5 = viewCopy;
      delayedTitleView = self->_delayedTitleView;
      self->_delayedTitleView = v5;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      delayedTitleView = self->_delayedTitleView;
      self->_delayedTitleView = null;
    }

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(SUNavigationItem *)self->_wrappedNavigationItem setTitleView:viewCopy];
    v7 = self->_delayedTitleView;
    self->_delayedTitleView = 0;
  }

  v4 = viewCopy;
LABEL_9:
}

- (void)setTitleView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if ([(SUDelayedNavigationItem *)self shouldDelayChanges])
  {
    v6 = viewCopy;
    if (viewCopy)
    {
      if (self->_delayedTitleView == viewCopy)
      {
        goto LABEL_9;
      }

      v7 = viewCopy;
      delayedTitleView = self->_delayedTitleView;
      self->_delayedTitleView = v7;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      delayedTitleView = self->_delayedTitleView;
      self->_delayedTitleView = null;
    }

    [(SUDelayedNavigationItem *)self _scheduleCommit];
  }

  else
  {
    [(UINavigationItem *)self->_wrappedNavigationItem setTitleView:viewCopy animated:animatedCopy];
    v9 = self->_delayedTitleView;
    self->_delayedTitleView = 0;
  }

  v6 = viewCopy;
LABEL_9:
}

- (id)title
{
  delayedTitle = self->_delayedTitle;
  if (delayedTitle)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (delayedTitle == null)
    {
      title = 0;
    }

    else
    {
      title = self->_delayedTitle;
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      title = [(SUNavigationItem *)wrappedNavigationItem title];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      title = [(SUDelayedNavigationItem *)&v8 title];
    }
  }

  return title;
}

- (id)titleView
{
  delayedTitleView = self->_delayedTitleView;
  if (delayedTitleView)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (delayedTitleView == null)
    {
      titleView = 0;
    }

    else
    {
      titleView = self->_delayedTitleView;
    }
  }

  else
  {
    wrappedNavigationItem = self->_wrappedNavigationItem;
    if (wrappedNavigationItem)
    {
      titleView = [(SUNavigationItem *)wrappedNavigationItem titleView];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = SUDelayedNavigationItem;
      titleView = [(SUDelayedNavigationItem *)&v8 titleView];
    }
  }

  return titleView;
}

- (void)_prepareButtonItemForDisplay:(id)display
{
  customView = [display customView];
  if ([customView conformsToProtocol:&unk_1F423BE40])
  {
    [customView setDeferringInterfaceUpdates:0];
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