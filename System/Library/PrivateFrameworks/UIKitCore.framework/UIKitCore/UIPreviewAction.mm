@interface UIPreviewAction
+ (UIPreviewAction)actionWithTitle:(NSString *)title style:(UIPreviewActionStyle)style handler:(void *)handler;
+ (id)_actionWithPreviewMenuItem:(id)item;
+ (id)_actionWithTitle:(id)title color:(id)color image:(id)image handler:(id)handler;
+ (id)_actionWithTitle:(id)title style:(int64_t)style color:(id)color image:(id)image handler:(id)handler;
+ (id)_actionWithTitle:(id)title style:(int64_t)style image:(id)image handler:(id)handler;
- (id)_effectiveColor;
- (id)_effectiveImage;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIPreviewAction

+ (UIPreviewAction)actionWithTitle:(NSString *)title style:(UIPreviewActionStyle)style handler:(void *)handler
{
  v8 = handler;
  v9 = title;
  v10 = objc_alloc_init(self);
  [v10 setTitle:v9];

  [v10 setStyle:style];
  [v10 setHandler:v8];

  return v10;
}

+ (id)_actionWithTitle:(id)title style:(int64_t)style image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  titleCopy = title;
  v13 = objc_alloc_init(self);
  [v13 setTitle:titleCopy];

  [v13 setStyle:style];
  [v13 setHandler:handlerCopy];

  [v13 setImage:imageCopy];

  return v13;
}

+ (id)_actionWithTitle:(id)title color:(id)color image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  colorCopy = color;
  titleCopy = title;
  v14 = objc_alloc_init(self);
  [v14 setTitle:titleCopy];

  [v14 setStyle:0];
  [v14 _setColor:colorCopy];

  [v14 setImage:imageCopy];
  [v14 setHandler:handlerCopy];

  return v14;
}

+ (id)_actionWithTitle:(id)title style:(int64_t)style color:(id)color image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  colorCopy = color;
  titleCopy = title;
  v16 = objc_alloc_init(self);
  [v16 setTitle:titleCopy];

  [v16 setStyle:style];
  [v16 _setColor:colorCopy];

  [v16 setImage:imageCopy];
  [v16 setHandler:handlerCopy];

  return v16;
}

- (id)_effectiveColor
{
  _color = [(UIPreviewAction *)self _color];
  if (!_color)
  {
    if ([(UIPreviewAction *)self style]== 2)
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
  image = [(UIPreviewAction *)self image];
  if (!image)
  {
    if ([(UIPreviewAction *)self style]== 1)
    {
      image = [objc_opt_class() _checkmarkImage];
    }

    else
    {
      image = 0;
    }
  }

  return image;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(UIPreviewAction *)self title];
  [v4 setTitle:title];

  [v4 setStyle:{-[UIPreviewAction style](self, "style")}];
  handler = [(UIPreviewAction *)self handler];
  [v4 setHandler:handler];

  identifier = [(UIPreviewAction *)self identifier];
  [v4 setIdentifier:identifier];

  _color = [(UIPreviewAction *)self _color];
  [v4 _setColor:_color];

  image = [(UIPreviewAction *)self image];
  [v4 setImage:image];

  return v4;
}

+ (id)_actionWithPreviewMenuItem:(id)item
{
  itemCopy = item;
  title = [itemCopy title];
  style = [itemCopy style];
  _color = [itemCopy _color];
  image = [itemCopy image];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__UIPreviewAction__actionWithPreviewMenuItem___block_invoke;
  v12[3] = &unk_1E7103470;
  v13 = itemCopy;
  v9 = itemCopy;
  v10 = [self _actionWithTitle:title style:style color:_color image:image handler:v12];

  return v10;
}

void __46__UIPreviewAction__actionWithPreviewMenuItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [*(a1 + 32) handler];

  if (v4)
  {
    v5 = [*(a1 + 32) handler];
    (v5)[2](v5, *(a1 + 32), v6);
  }
}

@end