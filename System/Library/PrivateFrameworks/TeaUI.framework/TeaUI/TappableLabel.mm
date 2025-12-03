@interface TappableLabel
- (NSString)accessibilityLabel;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation TappableLabel

- (NSString)accessibilityLabel
{
  selfCopy = self;
  TappableLabel.accessibilityLabel.getter();
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
    sub_1D8190F14();
  }

  selfCopy = self;
  TappableLabel.accessibilityLabel.setter();
}

@end