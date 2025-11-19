@interface ErrorView
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)a3;
- (void)setAccessibilityLabel:(id)a3;
@end

@implementation ErrorView

- (void)layoutSubviews
{
  v2 = self;
  ErrorView.layoutSubviews()();
}

- (NSString)accessibilityLabel
{
  v2 = self;
  ErrorView.accessibilityLabel.getter();
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
  ErrorView.accessibilityLabel.setter();
}

- (void)setAccessibilityElements:(id)a3
{
  if (a3)
  {
    v4 = sub_1D8191314();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  ErrorView.accessibilityElements.setter(v4);
}

@end