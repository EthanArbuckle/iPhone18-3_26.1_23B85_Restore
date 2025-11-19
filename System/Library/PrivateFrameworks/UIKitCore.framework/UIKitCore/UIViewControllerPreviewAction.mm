@interface UIViewControllerPreviewAction
+ (id)actionWithTitle:(id)a3 handler:(id)a4;
- (id)_initWithTitle:(id)a3 handler:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIViewControllerPreviewAction

- (id)_initWithTitle:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UIViewControllerPreviewAction;
  v8 = [(UIViewControllerPreviewAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(UIViewControllerPreviewAction *)v8 setTitle:v6];
    [(UIViewControllerPreviewAction *)v9 setHandler:v7];
  }

  return v9;
}

+ (id)actionWithTitle:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[UIViewControllerPreviewAction alloc] _initWithTitle:v6 handler:v5];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UIViewControllerPreviewAction *)self title];
  [v4 setTitle:v5];

  v6 = [(UIViewControllerPreviewAction *)self handler];
  [v4 setHandler:v6];

  return v4;
}

@end