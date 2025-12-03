@interface TTRContainerWrappingView
- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size;
- (_TtC15RemindersUICore24TTRContainerWrappingView)initWithArrangedSubviews:(id)subviews;
- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds;
@end

@implementation TTRContainerWrappingView

- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_21DA32E0C(0.0, 0.0, width, height);
  TTRWrappingArrangement.computeLayout()(&v8);

  sub_21D6BA6FC(&v8);
  v6 = v8.usedRect.size.width;
  v7 = v8.usedRect.size.height;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  sub_21DA32A74(x, y, width, height);
}

- (_TtC15RemindersUICore24TTRContainerWrappingView)initWithArrangedSubviews:(id)subviews
{
  if (subviews)
  {
    sub_21D114EC8();
    v3 = sub_21DBFA5EC();
  }

  else
  {
    v3 = 0;
  }

  return TTRContainerWrappingView.init(arrangedSubviews:)(v3);
}

@end