@interface SUScriptTextFieldNativeObjectUIBarButtonItem
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (double)width;
- (id)_nativeObjectDelegate;
- (id)_textField;
- (id)placeholder;
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

@implementation SUScriptTextFieldNativeObjectUIBarButtonItem

- (id)_textField
{
  object = [(SUScriptNativeObject *)self object];

  return [object customView];
}

- (int64_t)autocapitalizationType
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [_textField autocapitalizationType];
}

- (int64_t)autocorrectionType
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [_textField autocorrectionType];
}

- (BOOL)becomeFirstResponder
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [_textField becomeFirstResponder];
}

- (void)destroyNativeObject
{
  [-[SUScriptTextFieldNativeObjectUIBarButtonItem _textField](self "_textField")];
  v3.receiver = self;
  v3.super_class = SUScriptTextFieldNativeObjectUIBarButtonItem;
  [(SUScriptTextFieldNativeObject *)&v3 destroyNativeObject];
}

- (int64_t)keyboardType
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [_textField keyboardType];
}

- (id)_nativeObjectDelegate
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [_textField delegate];
}

- (id)placeholder
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [_textField placeholder];
}

- (BOOL)resignFirstResponder
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [_textField resignFirstResponder];
}

- (void)setAutocapitalizationType:(int64_t)type
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  [_textField setAutocapitalizationType:type];
}

- (void)setAutocorrectionType:(int64_t)type
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  [_textField setAutocorrectionType:type];
}

- (void)setKeyboardType:(int64_t)type
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  [_textField setKeyboardType:type];
}

- (void)_setNativeObjectDelegate:(id)delegate
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  [_textField setDelegate:delegate];
}

- (void)setPlaceholder:(id)placeholder
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  [_textField setPlaceholder:placeholder];
}

- (void)setupNativeObject
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];
  [_textField addTarget:self action:sel__textDidChange_ forControlEvents:0x20000];
  [_textField addTarget:self action:sel__textDidEndEditingOnExit_ forControlEvents:0x80000];
  v4.receiver = self;
  v4.super_class = SUScriptTextFieldNativeObjectUIBarButtonItem;
  [(SUScriptTextFieldNativeObject *)&v4 setupNativeObject];
}

- (void)setValue:(id)value
{
  [-[SUScriptTextFieldNativeObjectUIBarButtonItem _textField](self "_textField")];

  [(SUScriptTextFieldNativeObject *)self _sendScriptDidChange];
}

- (void)setWidth:(double)width
{
  object = [(SUScriptNativeObject *)self object];

  [object setWidth:width];
}

- (id)value
{
  _textField = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [_textField text];
}

- (double)width
{
  object = [(SUScriptNativeObject *)self object];

  [object width];
  return result;
}

@end