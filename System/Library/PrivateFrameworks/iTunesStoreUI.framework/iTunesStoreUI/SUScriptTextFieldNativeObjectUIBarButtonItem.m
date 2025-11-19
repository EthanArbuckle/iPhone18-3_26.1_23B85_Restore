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
- (void)_setNativeObjectDelegate:(id)a3;
- (void)destroyNativeObject;
- (void)setAutocapitalizationType:(int64_t)a3;
- (void)setAutocorrectionType:(int64_t)a3;
- (void)setKeyboardType:(int64_t)a3;
- (void)setPlaceholder:(id)a3;
- (void)setValue:(id)a3;
- (void)setWidth:(double)a3;
- (void)setupNativeObject;
@end

@implementation SUScriptTextFieldNativeObjectUIBarButtonItem

- (id)_textField
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 customView];
}

- (int64_t)autocapitalizationType
{
  v2 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [v2 autocapitalizationType];
}

- (int64_t)autocorrectionType
{
  v2 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [v2 autocorrectionType];
}

- (BOOL)becomeFirstResponder
{
  v2 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [v2 becomeFirstResponder];
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
  v2 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [v2 keyboardType];
}

- (id)_nativeObjectDelegate
{
  v2 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [v2 delegate];
}

- (id)placeholder
{
  v2 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [v2 placeholder];
}

- (BOOL)resignFirstResponder
{
  v2 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [v2 resignFirstResponder];
}

- (void)setAutocapitalizationType:(int64_t)a3
{
  v4 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  [v4 setAutocapitalizationType:a3];
}

- (void)setAutocorrectionType:(int64_t)a3
{
  v4 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  [v4 setAutocorrectionType:a3];
}

- (void)setKeyboardType:(int64_t)a3
{
  v4 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  [v4 setKeyboardType:a3];
}

- (void)_setNativeObjectDelegate:(id)a3
{
  v4 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  [v4 setDelegate:a3];
}

- (void)setPlaceholder:(id)a3
{
  v4 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  [v4 setPlaceholder:a3];
}

- (void)setupNativeObject
{
  v3 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];
  [v3 addTarget:self action:sel__textDidChange_ forControlEvents:0x20000];
  [v3 addTarget:self action:sel__textDidEndEditingOnExit_ forControlEvents:0x80000];
  v4.receiver = self;
  v4.super_class = SUScriptTextFieldNativeObjectUIBarButtonItem;
  [(SUScriptTextFieldNativeObject *)&v4 setupNativeObject];
}

- (void)setValue:(id)a3
{
  [-[SUScriptTextFieldNativeObjectUIBarButtonItem _textField](self "_textField")];

  [(SUScriptTextFieldNativeObject *)self _sendScriptDidChange];
}

- (void)setWidth:(double)a3
{
  v4 = [(SUScriptNativeObject *)self object];

  [v4 setWidth:a3];
}

- (id)value
{
  v2 = [(SUScriptTextFieldNativeObjectUIBarButtonItem *)self _textField];

  return [v2 text];
}

- (double)width
{
  v2 = [(SUScriptNativeObject *)self object];

  [v2 width];
  return result;
}

@end