@interface UIPreviewActionGroup
+ (UIPreviewActionGroup)actionGroupWithTitle:(NSString *)title style:(UIPreviewActionStyle)style actions:(NSArray *)actions;
+ (id)_actionGroupWithPreviewMenuItemWithSubactions:(id)a3;
+ (id)_actionGroupWithTitle:(id)a3 style:(int64_t)a4 color:(id)a5 actions:(id)a6;
- (id)_effectiveColor;
- (id)_effectiveImage;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIPreviewActionGroup

+ (UIPreviewActionGroup)actionGroupWithTitle:(NSString *)title style:(UIPreviewActionStyle)style actions:(NSArray *)actions
{
  v8 = actions;
  v9 = title;
  v10 = objc_alloc_init(a1);
  [v10 setTitle:v9];

  [v10 setStyle:style];
  [v10 _setActions:v8];

  return v10;
}

+ (id)_actionGroupWithTitle:(id)a3 style:(int64_t)a4 color:(id)a5 actions:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc_init(a1);
  [v13 setTitle:v12];

  [v13 setStyle:a4];
  [v13 _setColor:v11];

  [v13 _setActions:v10];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UIPreviewActionGroup *)self title];
  [v4 setTitle:v5];

  [v4 setStyle:{-[UIPreviewActionGroup style](self, "style")}];
  v6 = [(UIPreviewActionGroup *)self identifier];
  [v4 setIdentifier:v6];

  v7 = [(UIPreviewActionGroup *)self _color];
  [v4 _setColor:v7];

  v8 = [(UIPreviewActionGroup *)self _actions];
  [v4 _setActions:v8];

  v9 = [(UIPreviewActionGroup *)self image];
  [v4 setImage:v9];

  return v4;
}

- (id)_effectiveColor
{
  v3 = [(UIPreviewActionGroup *)self _color];
  if (!v3)
  {
    if ([(UIPreviewActionGroup *)self style]== 2)
    {
      v3 = +[UIColor systemRedColor];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_effectiveImage
{
  v3 = [(UIPreviewActionGroup *)self image];
  if (!v3)
  {
    if ([(UIPreviewActionGroup *)self style]== 1)
    {
      v3 = +[UIPreviewAction _checkmarkImage];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (id)_actionGroupWithPreviewMenuItemWithSubactions:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 title];
  [v5 setTitle:v6];

  [v5 setStyle:{objc_msgSend(v4, "style")}];
  v7 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = v4;
  v8 = [v4 _subitems];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 _subitems];
        if (v14 && (v15 = v14, [v13 _subitems], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v15, v17))
        {
          v18 = [UIPreviewActionGroup _actionGroupWithPreviewMenuItemWithSubactions:v13];
        }

        else
        {
          v18 = [UIPreviewAction _actionWithPreviewMenuItem:v13];
        }

        v19 = v18;
        [v7 addObject:v18];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];
  [v5 _setActions:v20];

  return v5;
}

@end