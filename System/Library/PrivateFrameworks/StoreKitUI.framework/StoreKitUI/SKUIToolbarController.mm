@interface SKUIToolbarController
- (BOOL)toolbarButtonsController:(id)a3 shouldDispatchEventForButton:(id)a4;
- (SKUIToolbarController)initWithToolbarViewElement:(id)a3;
- (SKUIToolbarControllerDelegate)delegate;
- (id)_barButtonItemWithButtonElement:(id)a3;
- (id)_barButtonItemWithElement:(id)a3;
- (void)dealloc;
- (void)detachFromNavigationController:(id)a3;
- (void)updateToolbarForNavigationController:(id)a3;
@end

@implementation SKUIToolbarController

- (SKUIToolbarController)initWithToolbarViewElement:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIToolbarController initWithToolbarViewElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUIToolbarController;
  v6 = [(SKUIToolbarController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(SKUIToolbarButtonsController *)self->_buttonsController disconnectAllButtons];
  v3.receiver = self;
  v3.super_class = SKUIToolbarController;
  [(SKUIToolbarController *)&v3 dealloc];
}

- (void)updateToolbarForNavigationController:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  viewElement = self->_viewElement;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __62__SKUIToolbarController_updateToolbarForNavigationController___block_invoke;
  v14 = &unk_2781FA478;
  v15 = self;
  v8 = v6;
  v16 = v8;
  [(SKUIViewElement *)viewElement enumerateChildrenUsingBlock:&v11];
  toolbarItems = self->_toolbarItems;
  self->_toolbarItems = v8;
  v10 = v8;

  [v5 setToolbarHidden:{-[NSArray count](v10, "count", v11, v12, v13, v14, v15) == 0}];
}

void __62__SKUIToolbarController_updateToolbarForNavigationController___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (SKUIIKViewElementTypeIsButton([v4 elementType]))
  {
    v3 = [*(a1 + 32) _barButtonItemWithElement:v4];
    if (v3)
    {
      [*(a1 + 40) addObject:v3];
    }
  }

  else
  {
    NSLog(&cfstr_UnexpectedElem.isa);
  }
}

- (void)detachFromNavigationController:(id)a3
{
  buttonsController = self->_buttonsController;
  v7 = a3;
  [(SKUIToolbarButtonsController *)buttonsController disconnectAllButtons];
  v5 = self->_buttonsController;
  self->_buttonsController = 0;

  toolbarItems = self->_toolbarItems;
  self->_toolbarItems = 0;

  [v7 setToolbarHidden:1];
}

- (BOOL)toolbarButtonsController:(id)a3 shouldDispatchEventForButton:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v7 = WeakRetained, v8 = objc_loadWeakRetained(&self->_delegate), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [v10 toolbarController:self shouldDispatchEventForButton:v5];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)_barButtonItemWithElement:(id)a3
{
  v4 = a3;
  if (SKUIIKViewElementTypeIsButton([v4 elementType]))
  {
    v5 = [(SKUIToolbarController *)self _barButtonItemWithButtonElement:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_barButtonItemWithButtonElement:(id)a3
{
  v4 = a3;
  buttonsController = self->_buttonsController;
  if (!buttonsController)
  {
    v6 = [[SKUIToolbarButtonsController alloc] initWithToolbarViewElement:self->_viewElement];
    v7 = self->_buttonsController;
    self->_buttonsController = v6;

    buttonsController = self->_buttonsController;
  }

  v8 = [(SKUIToolbarButtonsController *)buttonsController addButtonItemWithButtonViewElement:v4];

  return v8;
}

- (SKUIToolbarControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithToolbarViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIToolbarController initWithToolbarViewElement:]";
}

@end