@interface BlockBarButtonItem
- (NSString)accessibilityLabel;
- (void)barButtonItemPressedWithSender:(id)a3;
- (void)setAccessibilityLabel:(id)a3;
@end

@implementation BlockBarButtonItem

- (void)barButtonItemPressedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D806ABF8();
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_1D806AD4C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1D8190EE4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    v4 = sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1D806AE6C(v4, v6);
}

@end