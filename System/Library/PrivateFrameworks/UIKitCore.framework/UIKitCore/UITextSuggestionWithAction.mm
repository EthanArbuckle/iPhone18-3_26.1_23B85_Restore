@interface UITextSuggestionWithAction
- (SEL)action;
- (void)performActionWihSender:(id)sender;
- (void)setAction:(SEL)action;
@end

@implementation UITextSuggestionWithAction

- (void)performActionWihSender:(id)sender
{
  target = [(UITextSuggestionWithAction *)self target];
  if (target)
  {
    target3 = target;
    if ([(UITextSuggestionWithAction *)self action])
    {
      target2 = [(UITextSuggestionWithAction *)self target];
      [(UITextSuggestionWithAction *)self action];
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      target3 = [(UITextSuggestionWithAction *)self target];
      action = [(UITextSuggestionWithAction *)self action];
      if (dyld_program_sdk_at_least())
      {
        [target3 action];
      }

      else
      {
        [target3 performSelector:action withObject:self];
      }
    }

    target = target3;
  }
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end