@interface UIPreviewMenuItem
+ (id)_itemWithTitle:(id)a3 color:(id)a4 image:(id)a5 handler:(id)a6;
+ (id)_itemWithTitle:(id)a3 style:(int64_t)a4 image:(id)a5 handler:(id)a6;
+ (id)itemWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
+ (id)itemWithTitle:(id)a3 style:(int64_t)a4 items:(id)a5;
+ (id)itemWithViewControllerPreviewAction:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation UIPreviewMenuItem

+ (id)itemWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(a1);
  [v10 setStyle:a4];
  [v10 setTitle:v9];

  [v10 setHandler:v8];

  return v10;
}

+ (id)itemWithTitle:(id)a3 style:(int64_t)a4 items:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(a1);
  [v10 setStyle:a4];
  [v10 setTitle:v9];

  [v10 _setSubitems:v8];

  return v10;
}

+ (id)_itemWithTitle:(id)a3 style:(int64_t)a4 image:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc_init(a1);
  [v13 setStyle:a4];
  [v13 setTitle:v12];

  [v13 setHandler:v10];
  [v13 setImage:v11];

  return v13;
}

+ (id)_itemWithTitle:(id)a3 color:(id)a4 image:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(a1);
  [v14 setTitle:v13];

  [v14 setStyle:0];
  [v14 setHandler:v10];

  [v14 _setColor:v12];
  [v14 setImage:v11];

  return v14;
}

+ (id)itemWithViewControllerPreviewAction:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__UIPreviewMenuItem_itemWithViewControllerPreviewAction___block_invoke;
  v9[3] = &unk_1E71034E0;
  v10 = v4;
  v6 = v4;
  v7 = [a1 itemWithTitle:v5 style:0 handler:v9];

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

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    if (a3 == 2)
    {
      v5 = +[UIColor systemRedColor];
      [(UIPreviewMenuItem *)self _setColor:?];
    }

    else
    {
      [(UIPreviewMenuItem *)self _setColor:0];
      if (a3 != 1)
      {
        return;
      }

      v5 = _UIImageWithName(@"UIPreviewMenuItemCheckmark.png");
      [(UIPreviewMenuItem *)self setImage:?];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UIPreviewMenuItem *)self title];
  [v4 setTitle:v5];

  [v4 setStyle:{-[UIPreviewMenuItem style](self, "style")}];
  v6 = [(UIPreviewMenuItem *)self handler];
  [v4 setHandler:v6];

  v7 = [(UIPreviewMenuItem *)self identifier];
  [v4 setIdentifier:v7];

  v8 = [(UIPreviewMenuItem *)self _color];
  [v4 _setColor:v8];

  v9 = [(UIPreviewMenuItem *)self _subitems];
  [v4 _setSubitems:v9];

  return v4;
}

@end