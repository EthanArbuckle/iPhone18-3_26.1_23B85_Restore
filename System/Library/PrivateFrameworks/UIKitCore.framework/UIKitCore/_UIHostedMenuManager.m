@interface _UIHostedMenuManager
- (id)_menuForIdentifier:(id)a3 menu:(id)a4;
- (id)_menuLeafForIdentifier:(id)a3 menu:(id)a4;
- (id)menuForIdentifier:(id)a3;
- (id)menuLeafForIdentifier:(id)a3;
@end

@implementation _UIHostedMenuManager

- (id)menuLeafForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_UIHostedMenuManager *)self _menuLeafForIdentifier:v4 menu:self->_displayedMenu];
  if (!v5)
  {
    v5 = [(_UIHostedMenuManager *)self _menuLeafForIdentifier:v4 menu:self->_rootMenu];
  }

  return v5;
}

- (id)menuForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_UIHostedMenuManager *)self _menuForIdentifier:v4 menu:self->_displayedMenu];
  if (!v5)
  {
    v5 = [(_UIHostedMenuManager *)self _menuForIdentifier:v4 menu:self->_rootMenu];
  }

  return v5;
}

- (id)_menuLeafForIdentifier:(id)a3 menu:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [a4 children];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 _isLeaf] && (objc_msgSend(v12, "_internalIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", v6), v13, v14))
          {
            v15 = v12;
          }

          else
          {
            if ([v12 _isLeaf])
            {
              continue;
            }

            v15 = [(_UIHostedMenuManager *)self _menuLeafForIdentifier:v6 menu:v12];
          }

          v16 = v15;
          if (v15)
          {
            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)_menuForIdentifier:(id)a3 menu:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 _internalIdentifier];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    v10 = v7;
  }

  else if (v7)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v7 children];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if (([v16 _isLeaf] & 1) == 0)
          {
            v17 = [(_UIHostedMenuManager *)self _menuForIdentifier:v6 menu:v16];
            if (v17)
            {
              v10 = v17;
              goto LABEL_16;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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