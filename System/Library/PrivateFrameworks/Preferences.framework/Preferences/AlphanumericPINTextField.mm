@interface AlphanumericPINTextField
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
@end

@implementation AlphanumericPINTextField

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v5.receiver = self;
  v5.super_class = AlphanumericPINTextField;
  return (sel_paste_ != action) & [(AlphanumericPINTextField *)&v5 canPerformAction:action withSender:sender];
}

@end