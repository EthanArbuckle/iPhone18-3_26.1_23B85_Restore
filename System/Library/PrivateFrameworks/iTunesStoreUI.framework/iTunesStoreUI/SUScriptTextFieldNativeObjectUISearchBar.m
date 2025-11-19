@interface SUScriptTextFieldNativeObjectUISearchBar
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (id)_nativeObjectDelegate;
- (id)placeholder;
- (id)value;
- (int64_t)autocapitalizationType;
- (int64_t)autocorrectionType;
- (int64_t)keyboardType;
- (void)_setNativeObjectDelegate:(id)a3;
- (void)setAutocapitalizationType:(int64_t)a3;
- (void)setAutocorrectionType:(int64_t)a3;
- (void)setKeyboardType:(int64_t)a3;
- (void)setPlaceholder:(id)a3;
- (void)setValue:(id)a3;
- (void)setWidth:(double)a3;
@end

@implementation SUScriptTextFieldNativeObjectUISearchBar

- (int64_t)autocapitalizationType
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 autocapitalizationType];
}

- (int64_t)autocorrectionType
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 autocorrectionType];
}

- (BOOL)becomeFirstResponder
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 becomeFirstResponder];
}

- (int64_t)keyboardType
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 keyboardType];
}

- (id)_nativeObjectDelegate
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 delegate];
}

- (id)placeholder
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 placeholder];
}

- (BOOL)resignFirstResponder
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 resignFirstResponder];
}

- (void)setAutocapitalizationType:(int64_t)a3
{
  v4 = [(SUScriptNativeObject *)self object];

  [v4 setAutocapitalizationType:a3];
}

- (void)setAutocorrectionType:(int64_t)a3
{
  v4 = [(SUScriptNativeObject *)self object];

  [v4 setAutocorrectionType:a3];
}

- (void)setKeyboardType:(int64_t)a3
{
  v4 = [(SUScriptNativeObject *)self object];

  [v4 setKeyboardType:a3];
}

- (void)_setNativeObjectDelegate:(id)a3
{
  v4 = [(SUScriptNativeObject *)self object];

  [v4 setDelegate:a3];
}

- (void)setPlaceholder:(id)a3
{
  v4 = [(SUScriptNativeObject *)self object];

  [v4 setPlaceholder:a3];
}

- (void)setValue:(id)a3
{
  [-[SUScriptNativeObject object](self "object")];

  [(SUScriptTextFieldNativeObject *)self _sendScriptDidChange];
}

- (void)setWidth:(double)a3
{
  v3 = [(SUScriptNativeObject *)self object];
  [v3 frame];
  [v3 setFrame:?];
  v4 = [v3 superview];

  [v4 setNeedsLayout];
}

- (id)value
{
  v2 = [(SUScriptNativeObject *)self object];

  return [v2 text];
}

@end