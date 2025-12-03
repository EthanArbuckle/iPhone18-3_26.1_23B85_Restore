@interface SUScriptNativeUIBarButtonItem
+ (id)objectWithDefaultButtonForScriptButton:(id)button;
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
- (void)hideConfirmationAnimated:(BOOL)animated;
- (void)setImage:(id)image;
- (void)setImageInsets:(UIEdgeInsets)insets;
- (void)setLoading:(BOOL)loading;
- (void)setStyleFromString:(id)string;
- (void)setTag:(int64_t)tag;
- (void)setTitle:(id)title;
- (void)setupNativeObject;
- (void)showConfirmationWithTitle:(id)title animated:(BOOL)animated;
@end

@implementation SUScriptNativeUIBarButtonItem

- (id)image
{
  object = [(SUScriptNativeObject *)self object];

  return [object image];
}

- (UIEdgeInsets)imageInsets
{
  object = [(SUScriptNativeObject *)self object];

  [object imageInsets];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setImage:(id)image
{
  object = [(SUScriptNativeObject *)self object];

  [object setImage:image];
}

- (void)setImageInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  object = [(SUScriptNativeObject *)self object];

  [object setImageInsets:{top, left, bottom, right}];
}

- (void)setTag:(int64_t)tag
{
  object = [(SUScriptNativeObject *)self object];

  [object setTag:tag];
}

- (void)setTitle:(id)title
{
  object = [(SUScriptNativeObject *)self object];

  [object setTitle:title];
}

- (int64_t)tag
{
  object = [(SUScriptNativeObject *)self object];

  return [object tag];
}

- (id)title
{
  object = [(SUScriptNativeObject *)self object];

  return [object title];
}

+ (id)objectWithDefaultButtonForScriptButton:(id)button
{
  _systemItemString = [button _systemItemString];
  if (_systemItemString)
  {
    v6 = _systemItemString;
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
  v12 = objc_alloc_init(self);
  [v12 setScriptObject:button];
  [v12 setObject:v11];

  return v12;
}

- (void)connectButtonAction
{
  if ([(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] _action])
  {
    object = [(SUScriptNativeObject *)self object];
    v4 = SUButtonActionPopFromBarButtonItem(object);
    [object setAction:sel_buttonAction_];
    [object setTarget:self];
    if ([v4 isActivated])
    {

      [(SUScriptButtonNativeObject *)self buttonAction:object];
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
  object = [(SUScriptNativeObject *)self object];
  if ([object target] == self)
  {

    [object setTarget:0];
  }
}

- (void)hideConfirmationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  object = [(SUScriptNativeObject *)self object];
  appearance = [(SUClientInterface *)[(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] clientInterface] appearance];

  [object hideConfirmationWithAppearance:appearance animated:animatedCopy];
}

- (BOOL)isLoading
{
  object = [(SUScriptNativeObject *)self object];

  return [object isLoading];
}

- (BOOL)isShowingConfirmation
{
  object = [(SUScriptNativeObject *)self object];

  return [object isShowingConfirmation];
}

- (void)setLoading:(BOOL)loading
{
  loadingCopy = loading;
  object = [(SUScriptNativeObject *)self object];

  [object setLoading:loadingCopy];
}

- (void)setStyleFromString:(id)string
{
  object = [(SUScriptNativeObject *)self object];
  v6 = &off_1E8165720;
  v7 = 4;
  while (![*v6 isEqualToString:string])
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
  [object setStyle:v8];
  self->_isBackButton = [string isEqualToString:@"back"];
}

- (void)setupNativeObject
{
  [(SUScriptNativeUIBarButtonItem *)self connectButtonAction];
  v3.receiver = self;
  v3.super_class = SUScriptNativeUIBarButtonItem;
  [(SUScriptNativeObject *)&v3 setupNativeObject];
}

- (void)showConfirmationWithTitle:(id)title animated:(BOOL)animated
{
  animatedCopy = animated;
  object = [(SUScriptNativeObject *)self object];
  appearance = [(SUClientInterface *)[(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] clientInterface] appearance];

  [object showConfirmationWithTitle:title appearance:appearance animated:animatedCopy];
}

- (id)styleString
{
  if (self->_isBackButton)
  {
    return @"back";
  }

  object = [-[SUScriptNativeObject object](self object];
  v6 = &off_1E8165720;
  v7 = 4;
  while (*(v6 - 1) != object)
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