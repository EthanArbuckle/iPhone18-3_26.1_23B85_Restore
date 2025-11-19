@interface SUNavigationMenu
- (SUNavigationMenu)initWithDictionary:(id)a3;
- (id)_newMenuItemsFromArray:(id)a3;
- (id)_newNavigationButtonsFromArray:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)navigationButtonForLocation:(id)a3;
- (void)_loadFromDictionary:(id)a3;
- (void)dealloc;
@end

@implementation SUNavigationMenu

- (SUNavigationMenu)initWithDictionary:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUNavigationMenu;
  v4 = [(SUNavigationMenu *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_initialSelectedIndex = -1;
    [(SUNavigationMenu *)v4 _loadFromDictionary:a3];
    if (![(NSArray *)v5->_menuItems count]|| ![(NSString *)v5->_closedTitle length]&& ![(NSString *)v5->_openTitle length])
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUNavigationMenu;
  [(SUNavigationMenu *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[1] = [(NSString *)self->_cancelTitle copyWithZone:a3];
  v5[2] = [(NSString *)self->_closedTitle copyWithZone:a3];
  v5[3] = self->_initialSelectedIndex;
  v5[4] = self->_location;
  v5[5] = [(NSArray *)self->_menuItems copyWithZone:a3];
  v5[6] = [(NSArray *)self->_navigationButtons copyWithZone:a3];
  v5[7] = [(NSString *)self->_openTitle copyWithZone:a3];
  return v5;
}

- (id)navigationButtonForLocation:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  navigationButtons = self->_navigationButtons;
  v5 = [(NSArray *)navigationButtons countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(navigationButtons);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "buttonLocation")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)navigationButtons countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

- (void)_loadFromDictionary:(id)a3
{
  v5 = [a3 objectForKey:@"cancel-text"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_cancelTitle = v5;
  }

  v6 = [a3 objectForKey:@"button-title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_closedTitle = v6;
  }

  v7 = [a3 objectForKey:@"selected-index"];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 intValue];
  }

  else
  {
    v8 = -1;
  }

  self->_initialSelectedIndex = v8;
  v9 = [a3 objectForKey:@"location"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_location = [(SUNavigationMenu *)self _locationForString:v9];
  }

  v10 = [a3 objectForKey:@"items"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_menuItems = [(SUNavigationMenu *)self _newMenuItemsFromArray:v10];
  }

  v11 = [a3 objectForKey:@"navigation-buttons"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_navigationButtons = [(SUNavigationMenu *)self _newNavigationButtonsFromArray:v11];
  }

  v12 = [a3 objectForKey:@"nav-controller-title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_openTitle = v12;
  }
}

- (id)_newMenuItemsFromArray:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [[SUNavigationMenuItem alloc] initWithDictionary:*(*(&v13 + 1) + 8 * v8)];
        if (v9)
        {
          v10 = v9;
          v11 = [(SUNavigationMenuItem *)v9 contentRating];
          if (![(SUItemContentRating *)v11 isRestricted]|| ![(SUItemContentRating *)v11 shouldHideWhenRestricted])
          {
            [v4 addObject:v10];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if (![v4 count])
  {

    return 0;
  }

  return v4;
}

- (id)_newNavigationButtonsFromArray:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [[SUProtocolButton alloc] initWithButtonDictionary:v9];
          if (v10)
          {
            v11 = v10;
            [v4 addObject:v10];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

@end