@interface TUIAccountKeyLabel
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)copy:(id)copy;
@end

@implementation TUIAccountKeyLabel

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (NSSelectorFromString(&cfstr_Define.isa) == action || sel_delete_ == action)
  {
    v8 = 0;
  }

  else if (sel_copy_ == action)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TUIAccountKeyLabel;
    v8 = [(TUIAccountKeyLabel *)&v10 canPerformAction:action withSender:senderCopy];
  }

  return v8;
}

- (void)copy:(id)copy
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  text = [(TUIAccountKeyLabel *)self text];
  [generalPasteboard setString:text];
}

@end