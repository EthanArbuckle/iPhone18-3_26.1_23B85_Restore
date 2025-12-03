@interface ErrorView
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)elements;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation ErrorView

- (void)layoutSubviews
{
  selfCopy = self;
  ErrorView.layoutSubviews()();
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
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

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_1D8190F14();
  }

  selfCopy = self;
  ErrorView.accessibilityLabel.setter();
}

- (void)setAccessibilityElements:(id)elements
{
  if (elements)
  {
    v4 = sub_1D8191314();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  ErrorView.accessibilityElements.setter(v4);
}

@end