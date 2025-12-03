@interface SKUIToolbarButtonsController
- (SKUIToolbarButtonsController)initWithToolbarViewElement:(id)element;
- (id)addButtonItemWithButtonViewElement:(id)element;
- (void)_buttonAction:(id)action;
- (void)_updateButtonItem:(id)item withButtonViewElement:(id)element;
- (void)disconnectAllButtons;
@end

@implementation SKUIToolbarButtonsController

- (SKUIToolbarButtonsController)initWithToolbarViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIToolbarButtonsController initWithToolbarViewElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUIToolbarButtonsController;
  v6 = [(SKUIToolbarButtonsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_toolbarElement, element);
  }

  return v7;
}

- (id)addButtonItemWithButtonViewElement:(id)element
{
  elementCopy = element;
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v5 setAction:sel__buttonAction_];
  [v5 setTarget:self];
  [(SKUIToolbarButtonsController *)self _updateButtonItem:v5 withButtonViewElement:elementCopy];
  buttonItemElements = self->_buttonItemElements;
  if (!buttonItemElements)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:512 capacity:0];
    v8 = self->_buttonItemElements;
    self->_buttonItemElements = v7;

    buttonItemElements = self->_buttonItemElements;
  }

  [(NSMapTable *)buttonItemElements setObject:elementCopy forKey:v5];

  return v5;
}

- (void)disconnectAllButtons
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_buttonItemElements;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setTarget:{0, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_buttonItemElements removeAllObjects];
}

- (void)_buttonAction:(id)action
{
  v3 = [(NSMapTable *)self->_buttonItemElements objectForKey:action];
  [v3 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)_updateButtonItem:(id)item withButtonViewElement:(id)element
{
  itemCopy = item;
  elementCopy = element;
  [itemCopy setEnabled:{objc_msgSend(elementCopy, "isEnabled")}];
  [itemCopy setStyle:{2 * (objc_msgSend(elementCopy, "buttonViewType") == 8)}];
  buttonImage = [elementCopy buttonImage];
  if (buttonImage)
  {
    NSLog(&cfstr_ToolbarButtons.isa);
  }

  else
  {
    buttonText = [elementCopy buttonText];
    string = [buttonText string];
    [itemCopy setTitle:string];
  }
}

- (void)initWithToolbarViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIToolbarButtonsController initWithToolbarViewElement:]";
}

@end