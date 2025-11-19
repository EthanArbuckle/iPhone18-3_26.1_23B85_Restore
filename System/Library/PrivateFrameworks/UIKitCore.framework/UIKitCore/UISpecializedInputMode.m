@interface UISpecializedInputMode
- (UISpecializedInputMode)initWithIdentifier:(id)a3;
- (id)hardwareLayout;
- (void)clearViewControllerClass;
- (void)dealloc;
@end

@implementation UISpecializedInputMode

- (UISpecializedInputMode)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UISpecializedInputMode;
  v5 = [(UISpecializedInputMode *)&v8 init];
  v6 = v5;
  if (v4 && v5)
  {
    [(UIKeyboardInputMode *)v5 setIdentifier:v4];
    [(UIKeyboardInputMode *)v6 setNormalizedIdentifier:v4];
    [(UIKeyboardInputMode *)v6 setLanguageWithRegion:v4];
    [(UIKeyboardInputMode *)v6 setPrimaryLanguage:v4];
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
  v3 = [(UIKeyboardInputMode *)self identifier];
  v4 = [v3 isEqualToString:@"autofillsignup"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UISpecializedInputMode;
    v5 = [(UIKeyboardInputMode *)&v7 hardwareLayout];
  }

  return v5;
}

@end