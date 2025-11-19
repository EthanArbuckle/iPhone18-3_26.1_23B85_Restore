@interface VSTwoFactorEntryTextField
- (VSTwoFactorEntryTextField)init;
@end

@implementation VSTwoFactorEntryTextField

- (VSTwoFactorEntryTextField)init
{
  v6.receiver = self;
  v6.super_class = VSTwoFactorEntryTextField;
  v2 = [(VSTwoFactorEntryTextField *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_autoShowKeyboard = 1;
    text = v2->_text;
    v2->_expectedLength = 0;
    v2->_text = &stru_2880B8BB0;
  }

  return v3;
}

@end