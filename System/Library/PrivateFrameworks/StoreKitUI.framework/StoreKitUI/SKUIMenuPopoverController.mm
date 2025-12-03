@interface SKUIMenuPopoverController
- (SKUIMenuPopoverController)initWithMenuTitles:(id)titles;
- (SKUIMenuPopoverController)initWithMenuTitles:(id)titles selectedIndex:(int64_t)index;
- (SKUIMenuPopoverDelegate)delegate;
- (void)_destroyPopoverController;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated;
- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index;
- (void)popoverController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)presentFromRect:(CGRect)rect inView:(id)view permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated;
@end

@implementation SKUIMenuPopoverController

- (SKUIMenuPopoverController)initWithMenuTitles:(id)titles
{
  titlesCopy = titles;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuPopoverController initWithMenuTitles:];
  }

  v5 = [(SKUIMenuPopoverController *)self initWithMenuTitles:titlesCopy selectedIndex:-1];

  return v5;
}

- (SKUIMenuPopoverController)initWithMenuTitles:(id)titles selectedIndex:(int64_t)index
{
  titlesCopy = titles;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuPopoverController initWithMenuTitles:selectedIndex:];
  }

  v11.receiver = self;
  v11.super_class = SKUIMenuPopoverController;
  v7 = [(SKUIMenuPopoverController *)&v11 init];
  if (v7)
  {
    v8 = [[SKUIMenuViewController alloc] initWithMenuTitles:titlesCopy];
    menuViewController = v7->_menuViewController;
    v7->_menuViewController = v8;

    [(SKUIMenuViewController *)v7->_menuViewController setDelegate:v7];
    [(SKUIMenuViewController *)v7->_menuViewController setIndexOfCheckedTitle:index];
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

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = self->_popoverController;
  [(SKUIMenuPopoverController *)self _destroyPopoverController];
  [(UIPopoverController *)v5 dismissPopoverAnimated:animatedCopy];
}

- (void)presentFromRect:(CGRect)rect inView:(id)view permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated
{
  if (!self->_popoverController)
  {
    animatedCopy = animated;
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    viewCopy = view;
    menuTitles = [(SKUIMenuPopoverController *)self menuTitles];
    v15 = ([menuTitles count] * 45.0);

    [(SKUIMenuViewController *)self->_menuViewController setPreferredContentSize:320.0, v15];
    v16 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self->_menuViewController];
    popoverController = self->_popoverController;
    self->_popoverController = v16;

    [(UIPopoverController *)self->_popoverController setDelegate:self];
    [(UIPopoverController *)self->_popoverController setPopoverContentSize:320.0, v15];
    [(UIPopoverController *)self->_popoverController presentPopoverFromRect:viewCopy inView:directions permittedArrowDirections:animatedCopy animated:x, y, width, height];
  }
}

- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 menuPopover:self didSelectMenuItemAtIndex:index];
  }

  [(SKUIMenuPopoverController *)self dismissAnimated:1];
}

- (void)popoverControllerDidDismissPopover:(id)popover
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

- (void)popoverController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 menuPopover:self willRepositionToRect:rect inView:view];
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