@interface _UIKeyShortcutHUDMenu
+ (_UIKeyShortcutHUDMenu)menuWithUIMenu:(id)a3 children:(id)a4;
- (BOOL)isEmpty;
- (_UIKeyShortcutHUDMenu)init;
- (_UIKeyShortcutHUDMenu)initWithCoder:(id)a3;
- (id)menuByReplacingChildren:(id)a3;
- (void)_acceptMenuVisit:(id)a3 shortcutVisit:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIKeyShortcutHUDMenu

+ (_UIKeyShortcutHUDMenu)menuWithUIMenu:(id)a3 children:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
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

        v14 = [*(*(&v20 + 1) + 8 * i) uiMenuElement];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [v6 menuByReplacingChildren:v8];

  v19.receiver = a1;
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
  v2 = [(_UIKeyShortcutHUDMenu *)self children];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)menuByReplacingChildren:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyShortcutHUDMenu *)self uiMenu];
  v6 = [_UIKeyShortcutHUDMenu menuWithUIMenu:v5 children:v4];

  return v6;
}

- (void)_acceptMenuVisit:(id)a3 shortcutVisit:(id)a4
{
  if (a3)
  {
    (*(a3 + 2))(a3, self);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDMenu;
  v4 = a3;
  [(_UIKeyShortcutHUDMenuElement *)&v6 encodeWithCoder:v4];
  v5 = [(_UIKeyShortcutHUDMenu *)self children:v6.receiver];
  [v4 encodeObject:v5 forKey:@"children"];
}

- (_UIKeyShortcutHUDMenu)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIKeyShortcutHUDMenu;
  v5 = [(_UIKeyShortcutHUDMenuElement *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"children"];
    children = v5->_children;
    v5->_children = v10;
  }

  return v5;
}

@end