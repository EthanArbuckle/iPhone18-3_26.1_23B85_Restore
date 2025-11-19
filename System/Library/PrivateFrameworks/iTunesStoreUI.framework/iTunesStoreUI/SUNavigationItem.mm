@interface SUNavigationItem
- (UIBarButtonItem)secondaryLeftBarButtonItem;
- (void)setLeftBarButtonItem:(id)a3;
- (void)setLeftBarButtonItem:(id)a3 animated:(BOOL)a4;
- (void)setLeftBarButtonItems:(id)a3;
- (void)setLeftBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)setSecondaryLeftBarButtonItem:(id)a3 animated:(BOOL)a4;
@end

@implementation SUNavigationItem

- (UIBarButtonItem)secondaryLeftBarButtonItem
{
  v2 = [(SUNavigationItem *)self leftBarButtonItems];
  result = [v2 count];
  if (result)
  {

    return [v2 objectAtIndex:0];
  }

  return result;
}

- (void)setSecondaryLeftBarButtonItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(SUNavigationItem *)self setLeftItemsSupplementBackButton:1];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, 0}];

  [(SUNavigationItem *)self setLeftBarButtonItems:v7 animated:v4];
}

- (void)setLeftBarButtonItem:(id)a3
{
  [(SUNavigationItem *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SUNavigationItemDelegate *)[(SUNavigationItem *)self delegate] navigationItem:self willChangeLeftItem:[(SUNavigationItem *)self leftBarButtonItem] toNewItem:a3];
    if (v5)
    {
      [(SUNavigationItem *)&v10 setLeftBarButtonItem:v5, v7, v8, v9.receiver, v9.super_class, self, SUNavigationItem];
      return;
    }

    v9.receiver = self;
    v9.super_class = SUNavigationItem;
    v6 = &v9;
  }

  else
  {
    v7 = self;
    v8 = SUNavigationItem;
    v6 = &v7;
  }

  [(objc_super *)v6 setLeftBarButtonItem:a3, v7, v8, v9.receiver, v9.super_class, v10.receiver, v10.super_class];
}

- (void)setLeftBarButtonItems:(id)a3
{
  [(SUNavigationItem *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SUNavigationItemDelegate *)[(SUNavigationItem *)self delegate] navigationItem:self willChangeLeftItems:[(SUNavigationItem *)self leftBarButtonItems] toNewItems:a3];
    if (v5)
    {
      v6 = v5;
      if ([v5 count])
      {
        [(SUNavigationItem *)&v11 setLeftBarButtonItems:v6, v8, v9, v10.receiver, v10.super_class, self, SUNavigationItem];
        return;
      }
    }

    v10.receiver = self;
    v10.super_class = SUNavigationItem;
    v7 = &v10;
  }

  else
  {
    v8 = self;
    v9 = SUNavigationItem;
    v7 = &v8;
  }

  [(objc_super *)v7 setLeftBarButtonItems:a3, v8, v9, v10.receiver, v10.super_class, v11.receiver, v11.super_class];
}

- (void)setLeftBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(SUNavigationItem *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(SUNavigationItemDelegate *)[(SUNavigationItem *)self delegate] navigationItem:self willChangeLeftItems:[(SUNavigationItem *)self leftBarButtonItems] toNewItems:a3];
    if (v7)
    {
      v8 = v7;
      if ([v7 count])
      {
        [(SUNavigationItem *)&v13 setLeftBarButtonItems:v8 animated:v4, v10, v11, v12.receiver, v12.super_class, self, SUNavigationItem];
        return;
      }
    }

    v12.receiver = self;
    v12.super_class = SUNavigationItem;
    v9 = &v12;
  }

  else
  {
    v10 = self;
    v11 = SUNavigationItem;
    v9 = &v10;
  }

  [(objc_super *)v9 setLeftBarButtonItems:a3 animated:v4, v10, v11, v12.receiver, v12.super_class, v13.receiver, v13.super_class];
}

- (void)setLeftBarButtonItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(SUNavigationItem *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(SUNavigationItemDelegate *)[(SUNavigationItem *)self delegate] navigationItem:self willChangeLeftItem:[(SUNavigationItem *)self leftBarButtonItem] toNewItem:a3];
    if (v7)
    {
      [(SUNavigationItem *)&v12 setLeftBarButtonItem:v7 animated:v4, v9, v10, v11.receiver, v11.super_class, self, SUNavigationItem];
      return;
    }

    v11.receiver = self;
    v11.super_class = SUNavigationItem;
    v8 = &v11;
  }

  else
  {
    v9 = self;
    v10 = SUNavigationItem;
    v8 = &v9;
  }

  [(objc_super *)v8 setLeftBarButtonItem:a3 animated:v4, v9, v10, v11.receiver, v11.super_class, v12.receiver, v12.super_class];
}

@end