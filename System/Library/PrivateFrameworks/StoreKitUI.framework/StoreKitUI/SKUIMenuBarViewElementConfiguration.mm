@interface SKUIMenuBarViewElementConfiguration
- (SKUIMenuBarViewElementConfigurationDelegate)delegate;
- (SKUIMenuItemViewElement)selectedMenuItemViewElement;
- (_SKUIMenuBarViewElementConfigurationReloadDelegate)_reloadDelegate;
- (id)_initWithMenuBarDocument:(id)document;
- (id)documentForEntityUniqueIdentifier:(id)identifier;
- (id)documentForMenuItemAtIndex:(unint64_t)index;
- (id)documentOptionsForEntityUniqueIdentifier:(id)identifier;
- (id)documentOptionsForMenuItemAtIndex:(unint64_t)index;
- (unint64_t)indexOfMenuItemViewElement:(id)element;
- (unint64_t)numberOfMenuItems;
- (void)_ensureDataLoaded;
- (void)_reloadWithMenuBarStyle:(int64_t)style menuItemViewElements:(id)elements scrollEnabled:(BOOL)enabled;
- (void)contentWillAppearForMenuItemAtIndex:(unint64_t)index withEntityValueProvider:(id)provider clientContext:(id)context;
- (void)menuBarDocument:(id)document didReplaceDocumentForEntityWithUniqueIdentifier:(id)identifier;
- (void)menuBarDocument:(id)document didReplaceDocumentForMenuItem:(id)item;
- (void)menuBarDocument:(id)document didSelectMenuItem:(id)item animated:(BOOL)animated;
@end

@implementation SKUIMenuBarViewElementConfiguration

- (id)_initWithMenuBarDocument:(id)document
{
  documentCopy = document;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuBarViewElementConfiguration _initWithMenuBarDocument:];
  }

  v11.receiver = self;
  v11.super_class = SKUIMenuBarViewElementConfiguration;
  v6 = [(SKUIMenuBarViewElementConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_menuBarDocument, document);
    [(IKAppMenuBarDocument *)v7->_menuBarDocument setDelegate:v7];
    selectedMenuItem = [(IKAppMenuBarDocument *)v7->_menuBarDocument selectedMenuItem];
    selectedMenuItemViewElement = v7->_selectedMenuItemViewElement;
    v7->_selectedMenuItemViewElement = selectedMenuItem;

    v7->_needsReload = 1;
  }

  return v7;
}

- (void)menuBarDocument:(id)document didReplaceDocumentForEntityWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(SKUIMenuBarViewElementConfiguration *)self _ensureDataLoaded];
  delegate = [(SKUIMenuBarViewElementConfiguration *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate menuBarViewElementConfiguration:self didReplaceDocumentForEntityUniqueIdentifier:identifierCopy];
  }
}

- (void)menuBarDocument:(id)document didReplaceDocumentForMenuItem:(id)item
{
  itemCopy = item;
  [(SKUIMenuBarViewElementConfiguration *)self _ensureDataLoaded];
  v6 = [(NSArray *)self->_menuItemViewElements indexOfObject:itemCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    delegate = [(SKUIMenuBarViewElementConfiguration *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate menuBarViewElementConfiguration:self didReplaceDocumentForMenuItemAtIndex:v6];
    }
  }
}

- (void)menuBarDocument:(id)document didSelectMenuItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  [(SKUIMenuBarViewElementConfiguration *)self _ensureDataLoaded];
  if ([(NSArray *)self->_menuItemViewElements containsObject:itemCopy])
  {
    objc_storeStrong(&self->_selectedMenuItemViewElement, item);
    delegate = [(SKUIMenuBarViewElementConfiguration *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate menuBarViewElementConfiguration:self selectMenuItemViewElement:self->_selectedMenuItemViewElement animated:animatedCopy];
    }
  }
}

- (unint64_t)numberOfMenuItems
{
  [(SKUIMenuBarViewElementConfiguration *)self _ensureDataLoaded];
  if (!self->_menuBarStyle)
  {
    return 0;
  }

  menuItemViewElements = self->_menuItemViewElements;

  return [(NSArray *)menuItemViewElements count];
}

- (SKUIMenuItemViewElement)selectedMenuItemViewElement
{
  if (self->_selectedMenuItemViewElement)
  {
    [(SKUIMenuBarViewElementConfiguration *)self _ensureDataLoaded];
    if ([(NSArray *)self->_menuItemViewElements containsObject:self->_selectedMenuItemViewElement])
    {
      selectedMenuItemViewElement = self->_selectedMenuItemViewElement;
    }

    else
    {
      selectedMenuItemViewElement = 0;
    }

    v5 = selectedMenuItemViewElement;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)documentForEntityUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(SKUIMenuBarViewElementConfiguration *)self _ensureDataLoaded];
  v5 = [(IKAppMenuBarDocument *)self->_menuBarDocument documentForEntityUniqueIdentifier:identifierCopy];

  return v5;
}

- (id)documentForMenuItemAtIndex:(unint64_t)index
{
  [(SKUIMenuBarViewElementConfiguration *)self _ensureDataLoaded];
  v5 = [(NSArray *)self->_menuItemViewElements objectAtIndex:index];
  v6 = [(IKAppMenuBarDocument *)self->_menuBarDocument documentForMenuItem:v5];

  return v6;
}

- (id)documentOptionsForEntityUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(SKUIMenuBarViewElementConfiguration *)self _ensureDataLoaded];
  v5 = [(IKAppMenuBarDocument *)self->_menuBarDocument documentOptionsForEntityUniqueIdentifier:identifierCopy];

  return v5;
}

- (id)documentOptionsForMenuItemAtIndex:(unint64_t)index
{
  [(SKUIMenuBarViewElementConfiguration *)self _ensureDataLoaded];
  v5 = [(NSArray *)self->_menuItemViewElements objectAtIndex:index];
  v6 = [(IKAppMenuBarDocument *)self->_menuBarDocument documentOptionsForMenuItem:v5];

  return v6;
}

- (unint64_t)indexOfMenuItemViewElement:(id)element
{
  elementCopy = element;
  if (elementCopy && ([(SKUIMenuBarViewElementConfiguration *)self _ensureDataLoaded], (menuItemViewElements = self->_menuItemViewElements) != 0))
  {
    v6 = [(NSArray *)menuItemViewElements indexOfObject:elementCopy];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)contentWillAppearForMenuItemAtIndex:(unint64_t)index withEntityValueProvider:(id)provider clientContext:(id)context
{
  v20[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  contextCopy = context;
  [(SKUIMenuBarViewElementConfiguration *)self _ensureDataLoaded];
  v10 = [(NSArray *)self->_menuItemViewElements objectAtIndex:index];
  menuBarDocument = self->_menuBarDocument;
  if (providerCopy)
  {
    entityUniqueIdentifier = [providerCopy entityUniqueIdentifier];
    v13 = [(IKAppMenuBarDocument *)menuBarDocument documentForEntityUniqueIdentifier:entityUniqueIdentifier];

    if (!v13)
    {
      v14 = objc_alloc(MEMORY[0x277D1B0A8]);
      _scriptAppContext = [contextCopy _scriptAppContext];
      v16 = [v14 initWithAppContext:_scriptAppContext];

      if (v16)
      {
        [v16 setEntityValueProvider:providerCopy];
        v19 = @"entityValueProvider";
        v20[0] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v18 = [(IKAppMenuBarDocument *)menuBarDocument documentForMenuItem:v10];
    if (!v18)
    {
      v17 = 0;
LABEL_10:
      [v10 dispatchEventOfType:17 canBubble:1 isCancelable:0 extraInfo:v17 completionBlock:0];

      v13 = 0;
      goto LABEL_11;
    }

    v13 = v18;
  }

LABEL_11:
}

- (void)_ensureDataLoaded
{
  if (self->_needsReload)
  {
    WeakRetained = objc_loadWeakRetained(&self->_reloadDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained _menuBarViewElementConfigurationRequestsReload:self];
      self->_needsReload = 0;
    }
  }
}

- (void)_reloadWithMenuBarStyle:(int64_t)style menuItemViewElements:(id)elements scrollEnabled:(BOOL)enabled
{
  self->_menuBarStyle = style;
  v7 = [elements copy];
  menuItemViewElements = self->_menuItemViewElements;
  self->_menuItemViewElements = v7;

  self->_scrollEnabled = enabled;
}

- (SKUIMenuBarViewElementConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_SKUIMenuBarViewElementConfigurationReloadDelegate)_reloadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reloadDelegate);

  return WeakRetained;
}

- (void)_initWithMenuBarDocument:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuBarViewElementConfiguration _initWithMenuBarDocument:]";
}

@end