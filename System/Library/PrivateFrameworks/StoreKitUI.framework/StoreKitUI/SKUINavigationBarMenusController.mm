@interface SKUINavigationBarMenusController
- (SKUINavigationBarMenusController)initWithMenuViewElements:(id)elements;
- (id)_menuViewElementForView:(id)view;
- (id)view;
- (void)_destroyPopover;
- (void)_menuButtonAction:(id)action;
- (void)dealloc;
- (void)menuPopover:(id)popover didSelectMenuItemAtIndex:(int64_t)index;
- (void)menuPopover:(id)popover willRepositionToRect:(CGRect *)rect inView:(id *)view;
- (void)reloadSectionViews;
- (void)willAppearInNavigationBar;
@end

@implementation SKUINavigationBarMenusController

- (SKUINavigationBarMenusController)initWithMenuViewElements:(id)elements
{
  elementsCopy = elements;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUINavigationBarMenusController initWithMenuViewElements:];
  }

  v9.receiver = self;
  v9.super_class = SKUINavigationBarMenusController;
  v5 = [(SKUINavigationBarMenusController *)&v9 init];
  if (v5)
  {
    v6 = [elementsCopy copy];
    menuViewElements = v5->_menuViewElements;
    v5->_menuViewElements = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(SKUINavigationBarMenusView *)self->_menusView setButtonTarget:0 action:0];
  [(SKUIMenuPopoverController *)self->_popoverController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUINavigationBarMenusController;
  [(SKUINavigationBarSectionController *)&v3 dealloc];
}

- (void)reloadSectionViews
{
  context = [(SKUINavigationBarSectionController *)self context];
  [context maximumNavigationBarWidth];
  v5 = v4;

  menusView = self->_menusView;
  menuViewElements = self->_menuViewElements;
  viewLayoutContext = [(SKUINavigationBarSectionController *)self viewLayoutContext];
  [(SKUINavigationBarMenusView *)menusView reloadWithMenus:menuViewElements width:v5 context:viewLayoutContext];

  v9.receiver = self;
  v9.super_class = SKUINavigationBarMenusController;
  [(SKUINavigationBarSectionController *)&v9 reloadSectionViews];
}

- (id)view
{
  menusView = self->_menusView;
  if (!menusView)
  {
    v4 = objc_alloc_init(SKUINavigationBarMenusView);
    v5 = self->_menusView;
    self->_menusView = v4;

    v6 = self->_menusView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SKUIViewReuseView *)v6 setBackgroundColor:clearColor];

    [(SKUINavigationBarMenusView *)self->_menusView setButtonTarget:self action:sel__menuButtonAction_];
    [(SKUINavigationBarMenusView *)self->_menusView setContentInset:1.0, 20.0, 0.0, 20.0];
    menusView = self->_menusView;
  }

  return menusView;
}

- (void)willAppearInNavigationBar
{
  viewLayoutContext = [(SKUINavigationBarSectionController *)self viewLayoutContext];
  context = [(SKUINavigationBarSectionController *)self context];
  [context maximumNavigationBarWidth];
  v6 = v5;

  [SKUINavigationBarMenusView requestLayoutWithMenus:self->_menuViewElements width:v6 context:viewLayoutContext];
  v7.receiver = self;
  v7.super_class = SKUINavigationBarMenusController;
  [(SKUINavigationBarSectionController *)&v7 willAppearInNavigationBar];
}

- (void)menuPopover:(id)popover didSelectMenuItemAtIndex:(int64_t)index
{
  v6 = [(SKUINavigationBarMenusController *)self _menuViewElementForView:self->_focusedMenuButton];
  [v6 dispatchEventOfType:2 forItemAtIndex:index];
  [(SKUINavigationBarMenusController *)self _destroyPopover];
}

- (void)menuPopover:(id)popover willRepositionToRect:(CGRect *)rect inView:(id *)view
{
  [(UIControl *)self->_focusedMenuButton frame:popover];
  rect->origin.x = v6;
  rect->origin.y = v7;
  rect->size.width = v8;
  rect->size.height = v9;
}

- (void)_menuButtonAction:(id)action
{
  actionCopy = action;
  popoverController = self->_popoverController;
  if (popoverController)
  {
    [(SKUIMenuPopoverController *)popoverController setDelegate:0];
    [(SKUIMenuPopoverController *)self->_popoverController dismissAnimated:1];
    focusedMenuButton = self->_focusedMenuButton;
    self->_focusedMenuButton = 0;

    v7 = self->_popoverController;
    self->_popoverController = 0;
  }

  v8 = [(SKUINavigationBarMenusController *)self _menuViewElementForView:actionCopy];
  if (v8)
  {
    objc_storeStrong(&self->_focusedMenuButton, action);
    v9 = [SKUIMenuPopoverController alloc];
    menuItemTitles = [v8 menuItemTitles];
    v11 = -[SKUIMenuPopoverController initWithMenuTitles:selectedIndex:](v9, "initWithMenuTitles:selectedIndex:", menuItemTitles, [v8 selectedItemIndex]);
    v12 = self->_popoverController;
    self->_popoverController = v11;

    [(SKUIMenuPopoverController *)self->_popoverController setDelegate:self];
    v13 = self->_popoverController;
    [(UIControl *)self->_focusedMenuButton frame];
    [(SKUIMenuPopoverController *)v13 presentFromRect:self->_menusView inView:15 permittedArrowDirections:1 animated:?];
  }
}

- (void)_destroyPopover
{
  [(SKUIMenuPopoverController *)self->_popoverController setDelegate:0];
  focusedMenuButton = self->_focusedMenuButton;
  self->_focusedMenuButton = 0;

  popoverController = self->_popoverController;
  self->_popoverController = 0;
}

- (id)_menuViewElementForView:(id)view
{
  menusView = self->_menusView;
  viewCopy = view;
  allExistingViews = [(SKUIViewReuseView *)menusView allExistingViews];
  v7 = [allExistingViews indexOfObjectIdenticalTo:viewCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSArray *)self->_menuViewElements objectAtIndex:v7];
  }

  return v8;
}

- (void)initWithMenuViewElements:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINavigationBarMenusController initWithMenuViewElements:]";
}

@end