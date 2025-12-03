@interface _TVTextFieldViewController
- (UITextField)textField;
- (void)_updateKeyboardWithUserText;
- (void)_updateUserText;
- (void)_updateViewLayout;
- (void)dealloc;
- (void)loadView;
- (void)searchBarDidChangeText:(id)text;
- (void)textDidChangeForKeyboard:(id)keyboard;
- (void)updateWithViewElement:(id)element;
@end

@implementation _TVTextFieldViewController

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateKeyboardWithUserText object:0];
  v3.receiver = self;
  v3.super_class = _TVTextFieldViewController;
  [(_TVTextFieldViewController *)&v3 dealloc];
}

- (void)updateWithViewElement:(id)element
{
  elementCopy = element;
  objc_storeStrong(&self->_viewElement, element);
  keyboard = [(IKTextFieldElement *)self->_viewElement keyboard];
  [keyboard setDelegate:self];

  if ([(_TVTextFieldViewController *)self isViewLoaded])
  {
    [(_TVTextFieldViewController *)self _updateViewLayout];
    [(_TVTextFieldViewController *)self _updateUserText];
  }
}

- (UITextField)textField
{
  if ([(_TVTextFieldViewController *)self isViewLoaded])
  {
    view = [(_TVTextFieldViewController *)self view];
    textField = [view textField];
  }

  else
  {
    textField = 0;
  }

  return textField;
}

- (void)textDidChangeForKeyboard:(id)keyboard
{
  if ([(_TVTextFieldViewController *)self isViewLoaded])
  {

    [(_TVTextFieldViewController *)self _updateUserText];
  }
}

- (void)loadView
{
  v3 = [_TVSearchBar alloc];
  v4 = [(_TVSearchBar *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_TVSearchBar *)v4 setDelegate:self];
  [(_TVTextFieldViewController *)self setView:v4];
  [(_TVTextFieldViewController *)self _updateViewLayout];
  [(_TVTextFieldViewController *)self _updateUserText];
}

- (void)searchBarDidChangeText:(id)text
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateKeyboardWithUserText object:0];

  [(_TVTextFieldViewController *)self performSelector:sel__updateKeyboardWithUserText withObject:0 afterDelay:0.2];
}

- (void)_updateViewLayout
{
  viewElement = [(_TVTextFieldViewController *)self viewElement];
  view = [(_TVTextFieldViewController *)self view];
  textField = [view textField];
  tv_attributedString = [viewElement tv_attributedString];
  tv_textAttributes = [viewElement tv_textAttributes];
  v7 = [tv_textAttributes mutableCopy];

  style = [viewElement style];
  tv_highlightColor = [style tv_highlightColor];
  color = [tv_highlightColor color];

  if (color)
  {
    [v7 setObject:color forKey:*MEMORY[0x277D740C0]];
  }

  [textField setAttributedPlaceholder:tv_attributedString];
  [textField setDefaultTextAttributes:v7];
  attributes = [viewElement attributes];
  v12 = [attributes objectForKey:@"activityIndicator"];
  bOOLValue = [v12 BOOLValue];

  activityIndicatorView = [view activityIndicatorView];
  v15 = activityIndicatorView;
  if (bOOLValue)
  {
    [activityIndicatorView startAnimating];
  }

  else
  {
    [activityIndicatorView stopAnimating];
  }

  view2 = [(_TVTextFieldViewController *)self view];
  viewElement2 = [(_TVTextFieldViewController *)self viewElement];
  [view2 transferLayoutStylesFromElement:viewElement2];
}

- (void)_updateUserText
{
  viewElement = [(_TVTextFieldViewController *)self viewElement];
  textField = [(_TVTextFieldViewController *)self textField];
  keyboard = [viewElement keyboard];
  text = [keyboard text];
  [textField setText:text];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateKeyboardWithUserText object:0];
}

- (void)_updateKeyboardWithUserText
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateKeyboardWithUserText object:0];
  textField = [(_TVTextFieldViewController *)self textField];
  viewElement = [(_TVTextFieldViewController *)self viewElement];
  keyboard = [viewElement keyboard];
  text = [textField text];
  [keyboard setText:text];
}

@end