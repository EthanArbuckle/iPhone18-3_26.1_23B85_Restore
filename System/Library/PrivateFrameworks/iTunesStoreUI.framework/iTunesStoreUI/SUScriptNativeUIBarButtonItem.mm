@interface SUScriptNativeUIBarButtonItem
+ (id)objectWithDefaultButtonForScriptButton:(id)a3;
- (BOOL)isLoading;
- (BOOL)isShowingConfirmation;
- (UIEdgeInsets)imageInsets;
- (id)image;
- (id)styleString;
- (id)systemItemString;
- (id)title;
- (int64_t)tag;
- (void)connectButtonAction;
- (void)destroyNativeObject;
- (void)disconnectButtonAction;
- (void)hideConfirmationAnimated:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageInsets:(UIEdgeInsets)a3;
- (void)setLoading:(BOOL)a3;
- (void)setStyleFromString:(id)a3;
- (void)setTag:(int64_t)a3;
- (void)setTitle:(id)a3;
- (void)setupNativeObject;
- (void)showConfirmationWithTitle:(id)a3 animated:(BOOL)a4;
@end

@implementation SUScriptNativeUIBarButtonItem

- (id)image
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 image];
}

- (UIEdgeInsets)imageInsets
{
  v2 = [(SUScriptNativeObject *)self object];

  [v2 imageInsets];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setImage:(id)a3
{
  v4 = [(SUScriptNativeObject *)self object];

  [v4 setImage:a3];
}

- (void)setImageInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(SUScriptNativeObject *)self object];

  [v7 setImageInsets:{top, left, bottom, right}];
}

- (void)setTag:(int64_t)a3
{
  v4 = [(SUScriptNativeObject *)self object];

  [v4 setTag:a3];
}

- (void)setTitle:(id)a3
{
  v4 = [(SUScriptNativeObject *)self object];

  [v4 setTitle:a3];
}

- (int64_t)tag
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 tag];
}

- (id)title
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 title];
}

+ (id)objectWithDefaultButtonForScriptButton:(id)a3
{
  v5 = [a3 _systemItemString];
  if (v5)
  {
    v6 = v5;
    v7 = &off_1E81655A0;
    v8 = 24;
    while (![*v7 isEqualToString:v6])
    {
      v7 += 2;
      if (!--v8)
      {
        v9 = 0;
        goto LABEL_8;
      }
    }

    v9 = *(v7 - 1);
LABEL_8:
    v10 = [[SUBarButtonItem alloc] initWithBarButtonSystemItem:v9 target:0 action:0];
  }

  else
  {
    v10 = objc_alloc_init(SUBarButtonItem);
  }

  v11 = v10;
  v12 = objc_alloc_init(a1);
  [v12 setScriptObject:a3];
  [v12 setObject:v11];

  return v12;
}

- (void)connectButtonAction
{
  if ([(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] _action])
  {
    v3 = [(SUScriptNativeObject *)self object];
    v4 = SUButtonActionPopFromBarButtonItem(v3);
    [v3 setAction:sel_buttonAction_];
    [v3 setTarget:self];
    if ([v4 isActivated])
    {

      [(SUScriptButtonNativeObject *)self buttonAction:v3];
    }
  }
}

- (void)destroyNativeObject
{
  [(SUScriptNativeUIBarButtonItem *)self disconnectButtonAction];
  v3.receiver = self;
  v3.super_class = SUScriptNativeUIBarButtonItem;
  [(SUScriptNativeObject *)&v3 destroyNativeObject];
}

- (void)disconnectButtonAction
{
  v3 = [(SUScriptNativeObject *)self object];
  if ([v3 target] == self)
  {

    [v3 setTarget:0];
  }
}

- (void)hideConfirmationAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUScriptNativeObject *)self object];
  v6 = [(SUClientInterface *)[(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] clientInterface] appearance];

  [v5 hideConfirmationWithAppearance:v6 animated:v3];
}

- (BOOL)isLoading
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 isLoading];
}

- (BOOL)isShowingConfirmation
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 isShowingConfirmation];
}

- (void)setLoading:(BOOL)a3
{
  v3 = a3;
  v4 = [(SUScriptNativeObject *)self object];

  [v4 setLoading:v3];
}

- (void)setStyleFromString:(id)a3
{
  v5 = [(SUScriptNativeObject *)self object];
  v6 = &off_1E8165720;
  v7 = 4;
  while (![*v6 isEqualToString:a3])
  {
    v6 += 2;
    if (!--v7)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v8 = *(v6 - 1);
LABEL_6:
  [v5 setStyle:v8];
  self->_isBackButton = [a3 isEqualToString:@"back"];
}

- (void)setupNativeObject
{
  [(SUScriptNativeUIBarButtonItem *)self connectButtonAction];
  v3.receiver = self;
  v3.super_class = SUScriptNativeUIBarButtonItem;
  [(SUScriptNativeObject *)&v3 setupNativeObject];
}

- (void)showConfirmationWithTitle:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(SUScriptNativeObject *)self object];
  v8 = [(SUClientInterface *)[(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] clientInterface] appearance];

  [v7 showConfirmationWithTitle:a3 appearance:v8 animated:v4];
}

- (id)styleString
{
  if (self->_isBackButton)
  {
    return @"back";
  }

  v5 = [-[SUScriptNativeObject object](self object];
  v6 = &off_1E8165720;
  v7 = 4;
  while (*(v6 - 1) != v5)
  {
    v6 += 2;
    if (!--v7)
    {
      return 0;
    }
  }

  return *v6;
}

- (id)systemItemString
{
  v2 = [-[SUScriptNativeObject object](self "object")];
  v3 = &off_1E81655A0;
  v4 = 24;
  while (*(v3 - 1) != v2)
  {
    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  return *v3;
}

@end