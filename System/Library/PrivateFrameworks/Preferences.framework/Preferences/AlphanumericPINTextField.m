@interface AlphanumericPINTextField
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
@end

@implementation AlphanumericPINTextField

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v5.receiver = self;
  v5.super_class = AlphanumericPINTextField;
  return (sel_paste_ != a3) & [(AlphanumericPINTextField *)&v5 canPerformAction:a3 withSender:a4];
}

@end