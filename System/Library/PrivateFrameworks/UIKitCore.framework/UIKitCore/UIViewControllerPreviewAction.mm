@interface UIViewControllerPreviewAction
+ (id)actionWithTitle:(id)title handler:(id)handler;
- (id)_initWithTitle:(id)title handler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIViewControllerPreviewAction

- (id)_initWithTitle:(id)title handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = UIViewControllerPreviewAction;
  v8 = [(UIViewControllerPreviewAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(UIViewControllerPreviewAction *)v8 setTitle:titleCopy];
    [(UIViewControllerPreviewAction *)v9 setHandler:handlerCopy];
  }

  return v9;
}

+ (id)actionWithTitle:(id)title handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v7 = [[UIViewControllerPreviewAction alloc] _initWithTitle:titleCopy handler:handlerCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(UIViewControllerPreviewAction *)self title];
  [v4 setTitle:title];

  handler = [(UIViewControllerPreviewAction *)self handler];
  [v4 setHandler:handler];

  return v4;
}

@end