@interface BlockBarButtonItem
- (NSString)accessibilityLabel;
- (void)barButtonItemPressedWithSender:(id)sender;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation BlockBarButtonItem

- (void)barButtonItemPressedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D806ABF8();
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
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

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    v4 = sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1D806AE6C(v4, v6);
}

@end