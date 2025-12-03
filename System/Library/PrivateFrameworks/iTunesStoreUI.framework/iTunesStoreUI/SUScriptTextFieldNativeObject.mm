@interface SUScriptTextFieldNativeObject
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (void)_sendScriptDidChange;
- (void)_textDidChange:(id)change;
- (void)_textDidEndEditingOnExit:(id)exit;
- (void)dealloc;
- (void)destroyNativeObject;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)setupNativeObject;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation SUScriptTextFieldNativeObject

- (void)dealloc
{
  [(SUScriptTextFieldDelegate *)self->_textFieldDelegate removeDelegate:self];

  v3.receiver = self;
  v3.super_class = SUScriptTextFieldNativeObject;
  [(SUScriptTextFieldNativeObject *)&v3 dealloc];
}

- (void)destroyNativeObject
{
  [(SUScriptTextFieldDelegate *)self->_textFieldDelegate removeDelegate:self];
  if (![(SUScriptTextFieldDelegate *)self->_textFieldDelegate numberOfDelegates]&& [(SUScriptTextFieldNativeObject *)self _nativeObjectDelegate]== self->_textFieldDelegate)
  {
    [(SUScriptTextFieldNativeObject *)self _setNativeObjectDelegate:0];
  }

  self->_textFieldDelegate = 0;
  v3.receiver = self;
  v3.super_class = SUScriptTextFieldNativeObject;
  [(SUScriptNativeObject *)&v3 destroyNativeObject];
}

- (void)setupNativeObject
{
  [(SUScriptTextFieldDelegate *)self->_textFieldDelegate removeDelegate:self];

  self->_textFieldDelegate = 0;
  _nativeObjectDelegate = [(SUScriptTextFieldNativeObject *)self _nativeObjectDelegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = _nativeObjectDelegate;
  }

  else
  {
    v4 = objc_alloc_init(SUScriptTextFieldDelegate);
  }

  self->_textFieldDelegate = v4;
  [(SUScriptTextFieldDelegate *)v4 addDelegate:self];
  [(SUScriptTextFieldNativeObject *)self _setNativeObjectDelegate:self->_textFieldDelegate];
  v5.receiver = self;
  v5.super_class = SUScriptTextFieldNativeObject;
  [(SUScriptNativeObject *)&v5 setupNativeObject];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v4 = [(SUScriptNativeObject *)self scriptObject:bar];

  [(SUScriptObject *)v4 dispatchEvent:0 forName:@"change"];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"submit"];
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  return [(SUScriptObject *)scriptObject canBecomeFirstResponder];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"focus"];
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"blur"];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"focus"];
}

- (void)textFieldDidEndEditing:(id)editing
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"blur"];
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  return [(SUScriptObject *)scriptObject canBecomeFirstResponder];
}

- (void)_textDidChange:(id)change
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"change"];
}

- (void)_textDidEndEditingOnExit:(id)exit
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"submit"];
}

- (void)_sendScriptDidChange
{
  if (objc_opt_respondsToSelector())
  {
    textFieldDelegate = self->_textFieldDelegate;
    object = [(SUScriptNativeObject *)self object];

    [(SUScriptTextFieldDelegate *)textFieldDelegate scriptDidChangeTextForField:object];
  }
}

@end