@interface SUNativeScriptMenuViewController
- (BOOL)isMenuItemEnabledAtIndex:(int64_t)a3;
- (id)copyScriptViewController;
- (id)titleOfMenuItemAtIndex:(int64_t)a3;
- (void)dealloc;
- (void)performActionForMenuItemAtIndex:(int64_t)a3;
- (void)setMenuItems:(id)a3;
@end

@implementation SUNativeScriptMenuViewController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUNativeScriptMenuViewController;
  [(SUMenuViewController *)&v3 dealloc];
}

- (void)setMenuItems:(id)a3
{
  menuItems = self->_menuItems;
  if (menuItems != a3)
  {

    self->_menuItems = a3;

    [(SUMenuViewController *)self reload];
  }
}

- (id)copyScriptViewController
{
  v3 = objc_alloc_init(SUScriptMenuViewController);
  [(SUScriptViewController *)v3 setNativeViewController:self];
  return v3;
}

- (BOOL)isMenuItemEnabledAtIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_menuItems objectAtIndex:a3];

  return [v3 enabled];
}

- (void)performActionForMenuItemAtIndex:(int64_t)a3
{
  if (self->_action)
  {
    v4 = [(NSArray *)self->_menuItems objectAtIndex:a3];
    action = self->_action;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

    [(SUScriptFunction *)action callWithArguments:v6];
  }

  else
  {

    [(UIViewController *)self dismissAnimated:1];
  }
}

- (id)titleOfMenuItemAtIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_menuItems objectAtIndex:a3];

  return [v3 title];
}

@end