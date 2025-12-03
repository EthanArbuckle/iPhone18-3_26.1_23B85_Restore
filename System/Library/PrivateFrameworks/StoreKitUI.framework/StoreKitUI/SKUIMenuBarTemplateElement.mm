@interface SKUIMenuBarTemplateElement
- (SKUIMenuBarViewElement)menuBar;
- (SKUINavigationBarViewElement)navigationBarElement;
- (id)_menuBarChildOfElement:(id)element;
- (void)menuBar;
- (void)navigationBarElement;
@end

@implementation SKUIMenuBarTemplateElement

- (SKUIMenuBarViewElement)menuBar
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuBarTemplateElement menuBar];
  }

  v3 = [(SKUIMenuBarTemplateElement *)self _menuBarChildOfElement:self];
  if (!v3)
  {
    navigationBarElement = [(SKUIMenuBarTemplateElement *)self navigationBarElement];
    v3 = [(SKUIMenuBarTemplateElement *)self _menuBarChildOfElement:navigationBarElement];
  }

  return v3;
}

- (id)_menuBarChildOfElement:(id)element
{
  v14 = *MEMORY[0x277D85DE8];
  [element children];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 conformsToProtocol:{&unk_282934AE8, v9}])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (SKUINavigationBarViewElement)navigationBarElement
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuBarTemplateElement navigationBarElement];
  }

  v3 = [(SKUIViewElement *)self firstChildForElementType:74];

  return v3;
}

- (void)menuBar
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuBarTemplateElement menuBar]";
}

- (void)navigationBarElement
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuBarTemplateElement navigationBarElement]";
}

@end