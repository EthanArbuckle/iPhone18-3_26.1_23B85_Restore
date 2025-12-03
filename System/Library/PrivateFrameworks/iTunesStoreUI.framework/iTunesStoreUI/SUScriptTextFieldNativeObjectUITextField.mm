@interface SUScriptTextFieldNativeObjectUITextField
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (id)_nativeObjectDelegate;
- (id)value;
- (int64_t)autocapitalizationType;
- (int64_t)autocorrectionType;
- (int64_t)keyboardType;
- (void)_setNativeObjectDelegate:(id)delegate;
- (void)destroyNativeObject;
- (void)setAutocapitalizationType:(int64_t)type;
- (void)setAutocorrectionType:(int64_t)type;
- (void)setKeyboardType:(int64_t)type;
- (void)setPlaceholder:(id)placeholder;
- (void)setValue:(id)value;
- (void)setWidth:(double)width;
- (void)setupNativeObject;
@end

@implementation SUScriptTextFieldNativeObjectUITextField

- (int64_t)autocapitalizationType
{
  object = [(SUScriptNativeObject *)self object];

  return [object autocapitalizationType];
}

- (int64_t)autocorrectionType
{
  object = [(SUScriptNativeObject *)self object];

  return [object autocorrectionType];
}

- (BOOL)becomeFirstResponder
{
  object = [(SUScriptNativeObject *)self object];

  return [object becomeFirstResponder];
}

- (void)destroyNativeObject
{
  [-[SUScriptNativeObject object](self "object")];
  v3.receiver = self;
  v3.super_class = SUScriptTextFieldNativeObjectUITextField;
  [(SUScriptTextFieldNativeObject *)&v3 destroyNativeObject];
}

- (int64_t)keyboardType
{
  object = [(SUScriptNativeObject *)self object];

  return [object keyboardType];
}

- (id)_nativeObjectDelegate
{
  object = [(SUScriptNativeObject *)self object];

  return [object delegate];
}

- (BOOL)resignFirstResponder
{
  object = [(SUScriptNativeObject *)self object];

  return [object resignFirstResponder];
}

- (void)setAutocapitalizationType:(int64_t)type
{
  object = [(SUScriptNativeObject *)self object];

  [object setAutocapitalizationType:type];
}

- (void)setAutocorrectionType:(int64_t)type
{
  object = [(SUScriptNativeObject *)self object];

  [object setAutocorrectionType:type];
}

- (void)setKeyboardType:(int64_t)type
{
  object = [(SUScriptNativeObject *)self object];

  [object setKeyboardType:type];
}

- (void)_setNativeObjectDelegate:(id)delegate
{
  object = [(SUScriptNativeObject *)self object];

  [object setDelegate:delegate];
}

- (void)setPlaceholder:(id)placeholder
{
  object = [(SUScriptNativeObject *)self object];

  [object setPlaceholder:placeholder];
}

- (void)setupNativeObject
{
  object = [(SUScriptNativeObject *)self object];
  [object addTarget:self action:sel__textDidChange_ forControlEvents:0x20000];
  [object addTarget:self action:sel__textDidEndEditingOnExit_ forControlEvents:0x80000];
  v4.receiver = self;
  v4.super_class = SUScriptTextFieldNativeObjectUITextField;
  [(SUScriptTextFieldNativeObject *)&v4 setupNativeObject];
}

- (void)setValue:(id)value
{
  [-[SUScriptNativeObject object](self "object")];

  [(SUScriptTextFieldNativeObject *)self _sendScriptDidChange];
}

- (void)setWidth:(double)width
{
  object = [(SUScriptNativeObject *)self object];
  [object frame];
  [object setFrame:?];
  superview = [object superview];

  [superview setNeedsLayout];
}

- (id)value
{
  object = [(SUScriptNativeObject *)self object];

  return [object text];
}

@end