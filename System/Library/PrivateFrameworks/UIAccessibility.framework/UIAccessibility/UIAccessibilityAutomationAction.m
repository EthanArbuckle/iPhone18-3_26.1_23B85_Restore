@interface UIAccessibilityAutomationAction
- (SEL)selector;
- (UIAccessibilityAutomationAction)initWithIdentifier:(id)a3 selector:(SEL)a4;
@end

@implementation UIAccessibilityAutomationAction

- (UIAccessibilityAutomationAction)initWithIdentifier:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = UIAccessibilityAutomationAction;
  v7 = [(UIAccessibilityAutomationAction *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    v7->_selector = v10;
  }

  return v7;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

@end