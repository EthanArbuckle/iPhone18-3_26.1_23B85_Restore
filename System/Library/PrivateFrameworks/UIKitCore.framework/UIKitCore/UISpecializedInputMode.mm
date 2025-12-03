@interface UISpecializedInputMode
- (UISpecializedInputMode)initWithIdentifier:(id)identifier;
- (id)hardwareLayout;
- (void)clearViewControllerClass;
- (void)dealloc;
@end

@implementation UISpecializedInputMode

- (UISpecializedInputMode)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = UISpecializedInputMode;
  v5 = [(UISpecializedInputMode *)&v8 init];
  v6 = v5;
  if (identifierCopy && v5)
  {
    [(UIKeyboardInputMode *)v5 setIdentifier:identifierCopy];
    [(UIKeyboardInputMode *)v6 setNormalizedIdentifier:identifierCopy];
    [(UIKeyboardInputMode *)v6 setLanguageWithRegion:identifierCopy];
    [(UIKeyboardInputMode *)v6 setPrimaryLanguage:identifierCopy];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)clearViewControllerClass
{
  viewControllerClass = self->_viewControllerClass;
  self->_viewControllerClass = 0;
}

- (void)dealloc
{
  viewControllerClass = self->_viewControllerClass;
  self->_viewControllerClass = 0;

  v4.receiver = self;
  v4.super_class = UISpecializedInputMode;
  [(UIKeyboardInputMode *)&v4 dealloc];
}

- (id)hardwareLayout
{
  identifier = [(UIKeyboardInputMode *)self identifier];
  v4 = [identifier isEqualToString:@"autofillsignup"];

  if (v4)
  {
    hardwareLayout = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UISpecializedInputMode;
    hardwareLayout = [(UIKeyboardInputMode *)&v7 hardwareLayout];
  }

  return hardwareLayout;
}

@end