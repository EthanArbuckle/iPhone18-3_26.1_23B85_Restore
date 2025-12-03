@interface SUScriptNativeUIButton
+ (id)objectWithDefaultButtonForScriptButton:(id)button;
- (UIEdgeInsets)imageInsets;
- (id)image;
- (id)title;
- (int64_t)tag;
- (void)connectButtonAction;
- (void)destroyNativeObject;
- (void)disconnectButtonAction;
- (void)setImage:(id)image;
- (void)setImageInsets:(UIEdgeInsets)insets;
- (void)setTag:(int64_t)tag;
- (void)setTitle:(id)title;
- (void)setupNativeObject;
@end

@implementation SUScriptNativeUIButton

- (id)image
{
  object = [(SUScriptNativeObject *)self object];

  return [object imageForState:0];
}

- (UIEdgeInsets)imageInsets
{
  object = [(SUScriptNativeObject *)self object];

  [object imageEdgeInsets];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setImage:(id)image
{
  object = [(SUScriptNativeObject *)self object];

  [object setImage:image forState:0];
}

- (void)setImageInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  object = [(SUScriptNativeObject *)self object];

  [object setImageEdgeInsets:{top, left, bottom, right}];
}

- (void)setTag:(int64_t)tag
{
  object = [(SUScriptNativeObject *)self object];

  [object setTag:tag];
}

- (void)setTitle:(id)title
{
  object = [(SUScriptNativeObject *)self object];

  [object setTitle:title forState:0];
}

- (int64_t)tag
{
  object = [(SUScriptNativeObject *)self object];

  return [object tag];
}

- (id)title
{
  object = [(SUScriptNativeObject *)self object];

  return [object titleForState:0];
}

+ (id)objectWithDefaultButtonForScriptButton:(id)button
{
  v4 = [button copyObjectForScriptFromPoolWithClass:objc_opt_class()];
  v5 = [self objectWithNativeObject:v4];

  return v5;
}

- (void)connectButtonAction
{
  object = [(SUScriptNativeObject *)self object];

  [object addTarget:self action:sel_buttonAction_ forControlEvents:64];
}

- (void)destroyNativeObject
{
  [(SUScriptNativeUIButton *)self disconnectButtonAction];
  v3.receiver = self;
  v3.super_class = SUScriptNativeUIButton;
  [(SUScriptNativeObject *)&v3 destroyNativeObject];
}

- (void)disconnectButtonAction
{
  object = [(SUScriptNativeObject *)self object];

  [object removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
}

- (void)setupNativeObject
{
  [(SUScriptNativeUIButton *)self connectButtonAction];
  v3.receiver = self;
  v3.super_class = SUScriptNativeUIButton;
  [(SUScriptNativeObject *)&v3 setupNativeObject];
}

@end