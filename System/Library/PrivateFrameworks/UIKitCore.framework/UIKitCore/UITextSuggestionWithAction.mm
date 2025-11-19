@interface UITextSuggestionWithAction
- (SEL)action;
- (void)performActionWihSender:(id)a3;
- (void)setAction:(SEL)a3;
@end

@implementation UITextSuggestionWithAction

- (void)performActionWihSender:(id)a3
{
  v4 = [(UITextSuggestionWithAction *)self target];
  if (v4)
  {
    v8 = v4;
    if ([(UITextSuggestionWithAction *)self action])
    {
      v5 = [(UITextSuggestionWithAction *)self target];
      [(UITextSuggestionWithAction *)self action];
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v8 = [(UITextSuggestionWithAction *)self target];
      v7 = [(UITextSuggestionWithAction *)self action];
      if (dyld_program_sdk_at_least())
      {
        [v8 v7];
      }

      else
      {
        [v8 performSelector:v7 withObject:self];
      }
    }

    v4 = v8;
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

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

@end