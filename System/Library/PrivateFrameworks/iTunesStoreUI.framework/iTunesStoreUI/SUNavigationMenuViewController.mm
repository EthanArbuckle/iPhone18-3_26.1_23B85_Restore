@interface SUNavigationMenuViewController
- (SUNavigationMenuViewController)initWithNavigationMenu:(id)menu;
- (id)titleOfMenuItemAtIndex:(int64_t)index;
- (int64_t)numberOfMenuItems;
- (void)_cancelAction:(id)action;
- (void)_protocolButtonAction:(id)action;
- (void)dealloc;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUNavigationMenuViewController

- (SUNavigationMenuViewController)initWithNavigationMenu:(id)menu
{
  v7.receiver = self;
  v7.super_class = SUNavigationMenuViewController;
  v4 = [(SUMenuViewController *)&v7 init];
  if (v4)
  {
    menuCopy = menu;
    v4->_navigationMenu = menuCopy;
    [(SUMenuViewController *)v4 setSelectedIndex:[(SUNavigationMenu *)menuCopy initialSelectedIndex]];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUNavigationMenuViewController;
  [(SUMenuViewController *)&v3 dealloc];
}

- (int64_t)numberOfMenuItems
{
  menuItems = [(SUNavigationMenu *)self->_navigationMenu menuItems];

  return [(NSArray *)menuItems count];
}

- (id)titleOfMenuItemAtIndex:(int64_t)index
{
  v3 = [(NSArray *)[(SUNavigationMenu *)self->_navigationMenu menuItems] objectAtIndex:index];

  return [v3 title];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  appearance = [(SUClientInterface *)[(SUViewController *)self clientInterface] appearance];
  navigationItem = [(SUViewController *)self navigationItem];
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] != 1)
  {
    cancelTitle = [(SUNavigationMenu *)self->_navigationMenu cancelTitle];
    if (![(NSString *)cancelTitle length])
    {
      cancelTitle = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"CANCEL", &stru_1F41B3660, 0}];
    }

    v8 = [[SUBarButtonItem alloc] initWithTitle:cancelTitle style:0 target:self action:sel__cancelAction_];
    [(SUUIAppearance *)appearance styleBarButtonItem:v8];
    [(SUNavigationItem *)navigationItem setLeftBarButtonItem:v8];
  }

  openTitle = [(SUNavigationMenu *)self->_navigationMenu openTitle];
  if (!openTitle)
  {
    openTitle = [(SUNavigationMenu *)self->_navigationMenu closedTitle];
  }

  [(SUViewController *)self setTitle:openTitle];
  v10 = [(SUNavigationMenu *)self->_navigationMenu navigationButtonForLocation:@"left"];
  v11 = [(SUNavigationMenu *)self->_navigationMenu navigationButtonForLocation:@"right"];
  if (v10)
  {
    if ([(SUNavigationItem *)navigationItem leftBarButtonItem])
    {
      if (!v11)
      {
        v11 = v10;
      }

      goto LABEL_14;
    }

    v12 = -[SUBarButtonItem initWithTitle:style:target:action:]([SUBarButtonItem alloc], "initWithTitle:style:target:action:", [v10 buttonTitle], 0, self, sel__protocolButtonAction_);
    [(SUUIAppearance *)appearance styleBarButtonItem:v12];
    [(SUNavigationItem *)navigationItem setLeftBarButtonItem:v12];
  }

  if (v11)
  {
LABEL_14:
    v13 = -[SUBarButtonItem initWithTitle:style:target:action:]([SUBarButtonItem alloc], "initWithTitle:style:target:action:", [v11 buttonTitle], 0, self, sel__protocolButtonAction_);
    [(SUUIAppearance *)appearance styleBarButtonItem:v13];
    [(SUNavigationItem *)navigationItem setRightBarButtonItem:v13];
  }

  v14.receiver = self;
  v14.super_class = SUNavigationMenuViewController;
  [(SUViewController *)&v14 viewWillAppear:appearCopy];
}

- (void)_cancelAction:(id)action
{
  if (![(SUMenuViewController *)self _sendDidCancel])
  {

    [(UIViewController *)self dismissAnimated:1];
  }
}

- (void)_protocolButtonAction:(id)action
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return;
  }

  leftBarButtonItem = [(SUNavigationItem *)[(SUViewController *)self navigationItem] leftBarButtonItem];
  navigationMenu = self->_navigationMenu;
  if (leftBarButtonItem == action)
  {
    goto LABEL_5;
  }

  v7 = [(SUNavigationMenu *)navigationMenu navigationButtonForLocation:@"right"];
  if (!v7)
  {
    navigationMenu = self->_navigationMenu;
LABEL_5:
    v7 = [(SUNavigationMenu *)navigationMenu navigationButtonForLocation:@"left"];
    if (!v7)
    {
      return;
    }
  }

  [(SUMenuViewControllerDelegate *)self->super._delegate menuViewController:self didTapButton:v7];
  selfCopy = self;

  v9 = selfCopy;
}

@end