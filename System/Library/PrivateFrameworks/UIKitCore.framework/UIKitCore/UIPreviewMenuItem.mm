@interface UIPreviewMenuItem
+ (id)_itemWithTitle:(id)title color:(id)color image:(id)image handler:(id)handler;
+ (id)_itemWithTitle:(id)title style:(int64_t)style image:(id)image handler:(id)handler;
+ (id)itemWithTitle:(id)title style:(int64_t)style handler:(id)handler;
+ (id)itemWithTitle:(id)title style:(int64_t)style items:(id)items;
+ (id)itemWithViewControllerPreviewAction:(id)action;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setStyle:(int64_t)style;
@end

@implementation UIPreviewMenuItem

+ (id)itemWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v10 = objc_alloc_init(self);
  [v10 setStyle:style];
  [v10 setTitle:titleCopy];

  [v10 setHandler:handlerCopy];

  return v10;
}

+ (id)itemWithTitle:(id)title style:(int64_t)style items:(id)items
{
  itemsCopy = items;
  titleCopy = title;
  v10 = objc_alloc_init(self);
  [v10 setStyle:style];
  [v10 setTitle:titleCopy];

  [v10 _setSubitems:itemsCopy];

  return v10;
}

+ (id)_itemWithTitle:(id)title style:(int64_t)style image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  titleCopy = title;
  v13 = objc_alloc_init(self);
  [v13 setStyle:style];
  [v13 setTitle:titleCopy];

  [v13 setHandler:handlerCopy];
  [v13 setImage:imageCopy];

  return v13;
}

+ (id)_itemWithTitle:(id)title color:(id)color image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  colorCopy = color;
  titleCopy = title;
  v14 = objc_alloc_init(self);
  [v14 setTitle:titleCopy];

  [v14 setStyle:0];
  [v14 setHandler:handlerCopy];

  [v14 _setColor:colorCopy];
  [v14 setImage:imageCopy];

  return v14;
}

+ (id)itemWithViewControllerPreviewAction:(id)action
{
  actionCopy = action;
  title = [actionCopy title];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__UIPreviewMenuItem_itemWithViewControllerPreviewAction___block_invoke;
  v9[3] = &unk_1E71034E0;
  v10 = actionCopy;
  v6 = actionCopy;
  v7 = [self itemWithTitle:title style:0 handler:v9];

  return v7;
}

void __57__UIPreviewMenuItem_itemWithViewControllerPreviewAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [*(a1 + 32) handler];

  if (v4)
  {
    v5 = [*(a1 + 32) handler];
    (v5)[2](v5, *(a1 + 32), v6);
  }
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    if (style == 2)
    {
      v5 = +[UIColor systemRedColor];
      [(UIPreviewMenuItem *)self _setColor:?];
    }

    else
    {
      [(UIPreviewMenuItem *)self _setColor:0];
      if (style != 1)
      {
        return;
      }

      v5 = _UIImageWithName(@"UIPreviewMenuItemCheckmark.png");
      [(UIPreviewMenuItem *)self setImage:?];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(UIPreviewMenuItem *)self title];
  [v4 setTitle:title];

  [v4 setStyle:{-[UIPreviewMenuItem style](self, "style")}];
  handler = [(UIPreviewMenuItem *)self handler];
  [v4 setHandler:handler];

  identifier = [(UIPreviewMenuItem *)self identifier];
  [v4 setIdentifier:identifier];

  _color = [(UIPreviewMenuItem *)self _color];
  [v4 _setColor:_color];

  _subitems = [(UIPreviewMenuItem *)self _subitems];
  [v4 _setSubitems:_subitems];

  return v4;
}

@end