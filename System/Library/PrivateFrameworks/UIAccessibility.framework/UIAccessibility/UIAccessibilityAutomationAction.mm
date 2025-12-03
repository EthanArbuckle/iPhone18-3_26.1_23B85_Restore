@interface UIAccessibilityAutomationAction
- (SEL)selector;
- (UIAccessibilityAutomationAction)initWithIdentifier:(id)identifier selector:(SEL)selector;
@end

@implementation UIAccessibilityAutomationAction

- (UIAccessibilityAutomationAction)initWithIdentifier:(id)identifier selector:(SEL)selector
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = UIAccessibilityAutomationAction;
  v7 = [(UIAccessibilityAutomationAction *)&v12 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v7->_selector = selectorCopy;
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