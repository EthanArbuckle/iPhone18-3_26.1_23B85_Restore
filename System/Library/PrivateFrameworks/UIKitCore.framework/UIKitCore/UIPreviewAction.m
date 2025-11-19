@interface UIPreviewAction
+ (UIPreviewAction)actionWithTitle:(NSString *)title style:(UIPreviewActionStyle)style handler:(void *)handler;
+ (id)_actionWithPreviewMenuItem:(id)a3;
+ (id)_actionWithTitle:(id)a3 color:(id)a4 image:(id)a5 handler:(id)a6;
+ (id)_actionWithTitle:(id)a3 style:(int64_t)a4 color:(id)a5 image:(id)a6 handler:(id)a7;
+ (id)_actionWithTitle:(id)a3 style:(int64_t)a4 image:(id)a5 handler:(id)a6;
- (id)_effectiveColor;
- (id)_effectiveImage;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIPreviewAction

+ (UIPreviewAction)actionWithTitle:(NSString *)title style:(UIPreviewActionStyle)style handler:(void *)handler
{
  v8 = handler;
  v9 = title;
  v10 = objc_alloc_init(a1);
  [v10 setTitle:v9];

  [v10 setStyle:style];
  [v10 setHandler:v8];

  return v10;
}

+ (id)_actionWithTitle:(id)a3 style:(int64_t)a4 image:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc_init(a1);
  [v13 setTitle:v12];

  [v13 setStyle:a4];
  [v13 setHandler:v10];

  [v13 setImage:v11];

  return v13;
}

+ (id)_actionWithTitle:(id)a3 color:(id)a4 image:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(a1);
  [v14 setTitle:v13];

  [v14 setStyle:0];
  [v14 _setColor:v12];

  [v14 setImage:v11];
  [v14 setHandler:v10];

  return v14;
}

+ (id)_actionWithTitle:(id)a3 style:(int64_t)a4 color:(id)a5 image:(id)a6 handler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = objc_alloc_init(a1);
  [v16 setTitle:v15];

  [v16 setStyle:a4];
  [v16 _setColor:v14];

  [v16 setImage:v13];
  [v16 setHandler:v12];

  return v16;
}

- (id)_effectiveColor
{
  v3 = [(UIPreviewAction *)self _color];
  if (!v3)
  {
    if ([(UIPreviewAction *)self style]== 2)
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
  v3 = [(UIPreviewAction *)self image];
  if (!v3)
  {
    if ([(UIPreviewAction *)self style]== 1)
    {
      v3 = [objc_opt_class() _checkmarkImage];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UIPreviewAction *)self title];
  [v4 setTitle:v5];

  [v4 setStyle:{-[UIPreviewAction style](self, "style")}];
  v6 = [(UIPreviewAction *)self handler];
  [v4 setHandler:v6];

  v7 = [(UIPreviewAction *)self identifier];
  [v4 setIdentifier:v7];

  v8 = [(UIPreviewAction *)self _color];
  [v4 _setColor:v8];

  v9 = [(UIPreviewAction *)self image];
  [v4 setImage:v9];

  return v4;
}

+ (id)_actionWithPreviewMenuItem:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [v4 style];
  v7 = [v4 _color];
  v8 = [v4 image];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__UIPreviewAction__actionWithPreviewMenuItem___block_invoke;
  v12[3] = &unk_1E7103470;
  v13 = v4;
  v9 = v4;
  v10 = [a1 _actionWithTitle:v5 style:v6 color:v7 image:v8 handler:v12];

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