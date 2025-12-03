@interface SUScriptTextFieldNativeObjectUISearchBar
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (id)_nativeObjectDelegate;
- (id)placeholder;
- (id)value;
- (int64_t)autocapitalizationType;
- (int64_t)autocorrectionType;
- (int64_t)keyboardType;
- (void)_setNativeObjectDelegate:(id)delegate;
- (void)setAutocapitalizationType:(int64_t)type;
- (void)setAutocorrectionType:(int64_t)type;
- (void)setKeyboardType:(int64_t)type;
- (void)setPlaceholder:(id)placeholder;
- (void)setValue:(id)value;
- (void)setWidth:(double)width;
@end

@implementation SUScriptTextFieldNativeObjectUISearchBar

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

- (id)placeholder
{
  object = [(SUScriptNativeObject *)self object];

  return [object placeholder];
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