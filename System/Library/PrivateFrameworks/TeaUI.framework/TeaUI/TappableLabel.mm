@interface TappableLabel
- (NSString)accessibilityLabel;
- (void)setAccessibilityLabel:(id)a3;
@end

@implementation TappableLabel

- (NSString)accessibilityLabel
{
  v2 = self;
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

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v4 = self;
  TappableLabel.accessibilityLabel.setter();
}

@end