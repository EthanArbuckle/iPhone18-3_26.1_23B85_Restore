@interface VSTwoFactorEntryButton
- (VSTwoFactorEntryButton)init;
@end

@implementation VSTwoFactorEntryButton

- (VSTwoFactorEntryButton)init
{
  v6.receiver = self;
  v6.super_class = VSTwoFactorEntryButton;
  v2 = [(VSTwoFactorEntryButton *)&v6 init];
  v3 = v2;
  if (v2)
  {
    text = v2->_text;
    v2->_text = &stru_2880B8BB0;

    objc_storeStrong(&v3->_type, @"default");
  }

  return v3;
}

@end