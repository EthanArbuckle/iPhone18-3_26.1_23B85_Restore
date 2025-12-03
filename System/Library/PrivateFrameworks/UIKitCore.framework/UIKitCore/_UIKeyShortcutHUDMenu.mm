@interface _UIKeyShortcutHUDMenu
+ (_UIKeyShortcutHUDMenu)menuWithUIMenu:(id)menu children:(id)children;
- (BOOL)isEmpty;
- (_UIKeyShortcutHUDMenu)init;
- (_UIKeyShortcutHUDMenu)initWithCoder:(id)coder;
- (id)menuByReplacingChildren:(id)children;
- (void)_acceptMenuVisit:(id)visit shortcutVisit:(id)shortcutVisit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIKeyShortcutHUDMenu

+ (_UIKeyShortcutHUDMenu)menuWithUIMenu:(id)menu children:(id)children
{
  v25 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  childrenCopy = children;
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = childrenCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        uiMenuElement = [*(*(&v20 + 1) + 8 * i) uiMenuElement];
        [array addObject:uiMenuElement];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [menuCopy menuByReplacingChildren:array];

  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS____UIKeyShortcutHUDMenu;
  v16 = objc_msgSendSuper2(&v19, sel_elementWithUIMenuElement_, v15);
  v17 = v16[2];
  v16[2] = v9;

  return v16;
}

- (_UIKeyShortcutHUDMenu)init
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDMenu;
  v2 = [(_UIKeyShortcutHUDMenu *)&v6 init];
  v3 = v2;
  if (v2)
  {
    children = v2->_children;
    v2->_children = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (BOOL)isEmpty
{
  children = [(_UIKeyShortcutHUDMenu *)self children];
  v3 = [children count] == 0;

  return v3;
}

- (id)menuByReplacingChildren:(id)children
{
  childrenCopy = children;
  uiMenu = [(_UIKeyShortcutHUDMenu *)self uiMenu];
  v6 = [_UIKeyShortcutHUDMenu menuWithUIMenu:uiMenu children:childrenCopy];

  return v6;
}

- (void)_acceptMenuVisit:(id)visit shortcutVisit:(id)shortcutVisit
{
  if (visit)
  {
    (*(visit + 2))(visit, self);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDMenu;
  coderCopy = coder;
  [(_UIKeyShortcutHUDMenuElement *)&v6 encodeWithCoder:coderCopy];
  v5 = [(_UIKeyShortcutHUDMenu *)self children:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"children"];
}

- (_UIKeyShortcutHUDMenu)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _UIKeyShortcutHUDMenu;
  v5 = [(_UIKeyShortcutHUDMenuElement *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"children"];
    children = v5->_children;
    v5->_children = v10;
  }

  return v5;
}

@end