@interface SUNativeScriptMenuViewController
- (BOOL)isMenuItemEnabledAtIndex:(int64_t)index;
- (id)copyScriptViewController;
- (id)titleOfMenuItemAtIndex:(int64_t)index;
- (void)dealloc;
- (void)performActionForMenuItemAtIndex:(int64_t)index;
- (void)setMenuItems:(id)items;
@end

@implementation SUNativeScriptMenuViewController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUNativeScriptMenuViewController;
  [(SUMenuViewController *)&v3 dealloc];
}

- (void)setMenuItems:(id)items
{
  menuItems = self->_menuItems;
  if (menuItems != items)
  {

    self->_menuItems = items;

    [(SUMenuViewController *)self reload];
  }
}

- (id)copyScriptViewController
{
  v3 = objc_alloc_init(SUScriptMenuViewController);
  [(SUScriptViewController *)v3 setNativeViewController:self];
  return v3;
}

- (BOOL)isMenuItemEnabledAtIndex:(int64_t)index
{
  v3 = [(NSArray *)self->_menuItems objectAtIndex:index];

  return [v3 enabled];
}

- (void)performActionForMenuItemAtIndex:(int64_t)index
{
  if (self->_action)
  {
    v4 = [(NSArray *)self->_menuItems objectAtIndex:index];
    action = self->_action;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

    [(SUScriptFunction *)action callWithArguments:v6];
  }

  else
  {

    [(UIViewController *)self dismissAnimated:1];
  }
}

- (id)titleOfMenuItemAtIndex:(int64_t)index
{
  v3 = [(NSArray *)self->_menuItems objectAtIndex:index];

  return [v3 title];
}

@end