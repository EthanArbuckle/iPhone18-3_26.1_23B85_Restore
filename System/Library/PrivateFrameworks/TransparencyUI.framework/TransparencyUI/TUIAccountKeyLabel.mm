@interface TUIAccountKeyLabel
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)copy:(id)a3;
@end

@implementation TUIAccountKeyLabel

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (NSSelectorFromString(&cfstr_Define.isa) == a3 || sel_delete_ == a3)
  {
    v8 = 0;
  }

  else if (sel_copy_ == a3)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TUIAccountKeyLabel;
    v8 = [(TUIAccountKeyLabel *)&v10 canPerformAction:a3 withSender:v6];
  }

  return v8;
}

- (void)copy:(id)a3
{
  v5 = [MEMORY[0x277D75810] generalPasteboard];
  v4 = [(TUIAccountKeyLabel *)self text];
  [v5 setString:v4];
}

@end