@interface _UIHostedMenuManager
- (id)_menuForIdentifier:(id)identifier menu:(id)menu;
- (id)_menuLeafForIdentifier:(id)identifier menu:(id)menu;
- (id)menuForIdentifier:(id)identifier;
- (id)menuLeafForIdentifier:(id)identifier;
@end

@implementation _UIHostedMenuManager

- (id)menuLeafForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(_UIHostedMenuManager *)self _menuLeafForIdentifier:identifierCopy menu:self->_displayedMenu];
  if (!v5)
  {
    v5 = [(_UIHostedMenuManager *)self _menuLeafForIdentifier:identifierCopy menu:self->_rootMenu];
  }

  return v5;
}

- (id)menuForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(_UIHostedMenuManager *)self _menuForIdentifier:identifierCopy menu:self->_displayedMenu];
  if (!v5)
  {
    v5 = [(_UIHostedMenuManager *)self _menuForIdentifier:identifierCopy menu:self->_rootMenu];
  }

  return v5;
}

- (id)_menuLeafForIdentifier:(id)identifier menu:(id)menu
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (menu)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    children = [menu children];
    v8 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(children);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 _isLeaf] && (objc_msgSend(v12, "_internalIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", identifierCopy), v13, v14))
          {
            v15 = v12;
          }

          else
          {
            if ([v12 _isLeaf])
            {
              continue;
            }

            v15 = [(_UIHostedMenuManager *)self _menuLeafForIdentifier:identifierCopy menu:v12];
          }

          v16 = v15;
          if (v15)
          {
            goto LABEL_16;
          }
        }

        v9 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v16 = 0;
LABEL_16:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_menuForIdentifier:(id)identifier menu:(id)menu
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  menuCopy = menu;
  _internalIdentifier = [menuCopy _internalIdentifier];
  v9 = [_internalIdentifier isEqualToString:identifierCopy];

  if (v9)
  {
    v10 = menuCopy;
  }

  else if (menuCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    children = [menuCopy children];
    v12 = [children countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(children);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if (([v16 _isLeaf] & 1) == 0)
          {
            v17 = [(_UIHostedMenuManager *)self _menuForIdentifier:identifierCopy menu:v16];
            if (v17)
            {
              v10 = v17;
              goto LABEL_16;
            }
          }
        }

        v13 = [children countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_16:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end