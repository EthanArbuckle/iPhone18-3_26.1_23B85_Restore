@interface SUNavigationItem
- (UIBarButtonItem)secondaryLeftBarButtonItem;
- (void)setLeftBarButtonItem:(id)item;
- (void)setLeftBarButtonItem:(id)item animated:(BOOL)animated;
- (void)setLeftBarButtonItems:(id)items;
- (void)setLeftBarButtonItems:(id)items animated:(BOOL)animated;
- (void)setSecondaryLeftBarButtonItem:(id)item animated:(BOOL)animated;
@end

@implementation SUNavigationItem

- (UIBarButtonItem)secondaryLeftBarButtonItem
{
  leftBarButtonItems = [(SUNavigationItem *)self leftBarButtonItems];
  result = [leftBarButtonItems count];
  if (result)
  {

    return [leftBarButtonItems objectAtIndex:0];
  }

  return result;
}

- (void)setSecondaryLeftBarButtonItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  [(SUNavigationItem *)self setLeftItemsSupplementBackButton:1];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{item, 0}];

  [(SUNavigationItem *)self setLeftBarButtonItems:v7 animated:animatedCopy];
}

- (void)setLeftBarButtonItem:(id)item
{
  [(SUNavigationItem *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SUNavigationItemDelegate *)[(SUNavigationItem *)self delegate] navigationItem:self willChangeLeftItem:[(SUNavigationItem *)self leftBarButtonItem] toNewItem:item];
    if (v5)
    {
      [(SUNavigationItem *)&v10 setLeftBarButtonItem:v5, selfCopy, v8, v9.receiver, v9.super_class, self, SUNavigationItem];
      return;
    }

    v9.receiver = self;
    v9.super_class = SUNavigationItem;
    v6 = &v9;
  }

  else
  {
    selfCopy = self;
    v8 = SUNavigationItem;
    v6 = &selfCopy;
  }

  [(objc_super *)v6 setLeftBarButtonItem:item, selfCopy, v8, v9.receiver, v9.super_class, v10.receiver, v10.super_class];
}

- (void)setLeftBarButtonItems:(id)items
{
  [(SUNavigationItem *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SUNavigationItemDelegate *)[(SUNavigationItem *)self delegate] navigationItem:self willChangeLeftItems:[(SUNavigationItem *)self leftBarButtonItems] toNewItems:items];
    if (v5)
    {
      v6 = v5;
      if ([v5 count])
      {
        [(SUNavigationItem *)&v11 setLeftBarButtonItems:v6, selfCopy, v9, v10.receiver, v10.super_class, self, SUNavigationItem];
        return;
      }
    }

    v10.receiver = self;
    v10.super_class = SUNavigationItem;
    v7 = &v10;
  }

  else
  {
    selfCopy = self;
    v9 = SUNavigationItem;
    v7 = &selfCopy;
  }

  [(objc_super *)v7 setLeftBarButtonItems:items, selfCopy, v9, v10.receiver, v10.super_class, v11.receiver, v11.super_class];
}

- (void)setLeftBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  [(SUNavigationItem *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(SUNavigationItemDelegate *)[(SUNavigationItem *)self delegate] navigationItem:self willChangeLeftItems:[(SUNavigationItem *)self leftBarButtonItems] toNewItems:items];
    if (v7)
    {
      v8 = v7;
      if ([v7 count])
      {
        [(SUNavigationItem *)&v13 setLeftBarButtonItems:v8 animated:animatedCopy, selfCopy, v11, v12.receiver, v12.super_class, self, SUNavigationItem];
        return;
      }
    }

    v12.receiver = self;
    v12.super_class = SUNavigationItem;
    v9 = &v12;
  }

  else
  {
    selfCopy = self;
    v11 = SUNavigationItem;
    v9 = &selfCopy;
  }

  [(objc_super *)v9 setLeftBarButtonItems:items animated:animatedCopy, selfCopy, v11, v12.receiver, v12.super_class, v13.receiver, v13.super_class];
}

- (void)setLeftBarButtonItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  [(SUNavigationItem *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(SUNavigationItemDelegate *)[(SUNavigationItem *)self delegate] navigationItem:self willChangeLeftItem:[(SUNavigationItem *)self leftBarButtonItem] toNewItem:item];
    if (v7)
    {
      [(SUNavigationItem *)&v12 setLeftBarButtonItem:v7 animated:animatedCopy, selfCopy, v10, v11.receiver, v11.super_class, self, SUNavigationItem];
      return;
    }

    v11.receiver = self;
    v11.super_class = SUNavigationItem;
    v8 = &v11;
  }

  else
  {
    selfCopy = self;
    v10 = SUNavigationItem;
    v8 = &selfCopy;
  }

  [(objc_super *)v8 setLeftBarButtonItem:item animated:animatedCopy, selfCopy, v10, v11.receiver, v11.super_class, v12.receiver, v12.super_class];
}

@end