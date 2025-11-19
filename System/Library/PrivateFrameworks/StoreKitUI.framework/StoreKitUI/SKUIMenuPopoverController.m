@interface SKUIMenuPopoverController
- (SKUIMenuPopoverController)initWithMenuTitles:(id)a3;
- (SKUIMenuPopoverController)initWithMenuTitles:(id)a3 selectedIndex:(int64_t)a4;
- (SKUIMenuPopoverDelegate)delegate;
- (void)_destroyPopoverController;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3;
- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4;
- (void)popoverController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)presentFromRect:(CGRect)a3 inView:(id)a4 permittedArrowDirections:(unint64_t)a5 animated:(BOOL)a6;
@end

@implementation SKUIMenuPopoverController

- (SKUIMenuPopoverController)initWithMenuTitles:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuPopoverController initWithMenuTitles:];
  }

  v5 = [(SKUIMenuPopoverController *)self initWithMenuTitles:v4 selectedIndex:-1];

  return v5;
}

- (SKUIMenuPopoverController)initWithMenuTitles:(id)a3 selectedIndex:(int64_t)a4
{
  v6 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuPopoverController initWithMenuTitles:selectedIndex:];
  }

  v11.receiver = self;
  v11.super_class = SKUIMenuPopoverController;
  v7 = [(SKUIMenuPopoverController *)&v11 init];
  if (v7)
  {
    v8 = [[SKUIMenuViewController alloc] initWithMenuTitles:v6];
    menuViewController = v7->_menuViewController;
    v7->_menuViewController = v8;

    [(SKUIMenuViewController *)v7->_menuViewController setDelegate:v7];
    [(SKUIMenuViewController *)v7->_menuViewController setIndexOfCheckedTitle:a4];
  }

  return v7;
}

- (void)dealloc
{
  [(SKUIMenuViewController *)self->_menuViewController setDelegate:0];
  [(UIPopoverController *)self->_popoverController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIMenuPopoverController;
  [(SKUIMenuPopoverController *)&v3 dealloc];
}

- (void)dismissAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self->_popoverController;
  [(SKUIMenuPopoverController *)self _destroyPopoverController];
  [(UIPopoverController *)v5 dismissPopoverAnimated:v3];
}

- (void)presentFromRect:(CGRect)a3 inView:(id)a4 permittedArrowDirections:(unint64_t)a5 animated:(BOOL)a6
{
  if (!self->_popoverController)
  {
    v7 = a6;
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v18 = a4;
    v14 = [(SKUIMenuPopoverController *)self menuTitles];
    v15 = ([v14 count] * 45.0);

    [(SKUIMenuViewController *)self->_menuViewController setPreferredContentSize:320.0, v15];
    v16 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self->_menuViewController];
    popoverController = self->_popoverController;
    self->_popoverController = v16;

    [(UIPopoverController *)self->_popoverController setDelegate:self];
    [(UIPopoverController *)self->_popoverController setPopoverContentSize:320.0, v15];
    [(UIPopoverController *)self->_popoverController presentPopoverFromRect:v18 inView:a5 permittedArrowDirections:v7 animated:x, y, width, height];
  }
}

- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 menuPopover:self didSelectMenuItemAtIndex:a4];
  }

  [(SKUIMenuPopoverController *)self dismissAnimated:1];
}

- (void)popoverControllerDidDismissPopover:(id)a3
{
  [(SKUIMenuPopoverController *)self _destroyPopoverController];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 menuPopoverDidCancel:self];
  }
}

- (void)popoverController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 menuPopover:self willRepositionToRect:a4 inView:a5];
  }
}

- (void)_destroyPopoverController
{
  [(SKUIMenuViewController *)self->_menuViewController setDelegate:0];
  menuViewController = self->_menuViewController;
  self->_menuViewController = 0;

  [(UIPopoverController *)self->_popoverController setDelegate:0];
  popoverController = self->_popoverController;
  self->_popoverController = 0;
}

- (SKUIMenuPopoverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithMenuTitles:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuPopoverController initWithMenuTitles:]";
}

- (void)initWithMenuTitles:selectedIndex:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuPopoverController initWithMenuTitles:selectedIndex:]";
}

@end