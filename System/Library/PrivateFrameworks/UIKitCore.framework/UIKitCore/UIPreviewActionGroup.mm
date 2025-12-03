@interface UIPreviewActionGroup
+ (UIPreviewActionGroup)actionGroupWithTitle:(NSString *)title style:(UIPreviewActionStyle)style actions:(NSArray *)actions;
+ (id)_actionGroupWithPreviewMenuItemWithSubactions:(id)subactions;
+ (id)_actionGroupWithTitle:(id)title style:(int64_t)style color:(id)color actions:(id)actions;
- (id)_effectiveColor;
- (id)_effectiveImage;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIPreviewActionGroup

+ (UIPreviewActionGroup)actionGroupWithTitle:(NSString *)title style:(UIPreviewActionStyle)style actions:(NSArray *)actions
{
  v8 = actions;
  v9 = title;
  v10 = objc_alloc_init(self);
  [v10 setTitle:v9];

  [v10 setStyle:style];
  [v10 _setActions:v8];

  return v10;
}

+ (id)_actionGroupWithTitle:(id)title style:(int64_t)style color:(id)color actions:(id)actions
{
  actionsCopy = actions;
  colorCopy = color;
  titleCopy = title;
  v13 = objc_alloc_init(self);
  [v13 setTitle:titleCopy];

  [v13 setStyle:style];
  [v13 _setColor:colorCopy];

  [v13 _setActions:actionsCopy];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(UIPreviewActionGroup *)self title];
  [v4 setTitle:title];

  [v4 setStyle:{-[UIPreviewActionGroup style](self, "style")}];
  identifier = [(UIPreviewActionGroup *)self identifier];
  [v4 setIdentifier:identifier];

  _color = [(UIPreviewActionGroup *)self _color];
  [v4 _setColor:_color];

  _actions = [(UIPreviewActionGroup *)self _actions];
  [v4 _setActions:_actions];

  image = [(UIPreviewActionGroup *)self image];
  [v4 setImage:image];

  return v4;
}

- (id)_effectiveColor
{
  _color = [(UIPreviewActionGroup *)self _color];
  if (!_color)
  {
    if ([(UIPreviewActionGroup *)self style]== 2)
    {
      _color = +[UIColor systemRedColor];
    }

    else
    {
      _color = 0;
    }
  }

  return _color;
}

- (id)_effectiveImage
{
  image = [(UIPreviewActionGroup *)self image];
  if (!image)
  {
    if ([(UIPreviewActionGroup *)self style]== 1)
    {
      image = +[UIPreviewAction _checkmarkImage];
    }

    else
    {
      image = 0;
    }
  }

  return image;
}

+ (id)_actionGroupWithPreviewMenuItemWithSubactions:(id)subactions
{
  v28 = *MEMORY[0x1E69E9840];
  subactionsCopy = subactions;
  v5 = objc_alloc_init(self);
  title = [subactionsCopy title];
  [v5 setTitle:title];

  [v5 setStyle:{objc_msgSend(subactionsCopy, "style")}];
  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = subactionsCopy;
  _subitems = [subactionsCopy _subitems];
  v9 = [_subitems countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(_subitems);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        _subitems2 = [v13 _subitems];
        if (_subitems2 && (v15 = _subitems2, [v13 _subitems], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v15, v17))
        {
          v18 = [UIPreviewActionGroup _actionGroupWithPreviewMenuItemWithSubactions:v13];
        }

        else
        {
          v18 = [UIPreviewAction _actionWithPreviewMenuItem:v13];
        }

        v19 = v18;
        [array addObject:v18];
      }

      v10 = [_subitems countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  [v5 _setActions:v20];

  return v5;
}

@end