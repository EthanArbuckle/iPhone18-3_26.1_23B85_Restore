@interface EmptyStateView
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)elements;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation EmptyStateView

- (void)layoutSubviews
{
  selfCopy = self;
  EmptyStateView.layoutSubviews()();
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  EmptyStateView.accessibilityLabel.getter();
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
  EmptyStateView.accessibilityLabel.setter();
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
  EmptyStateView.accessibilityElements.setter(v4);
}

@end