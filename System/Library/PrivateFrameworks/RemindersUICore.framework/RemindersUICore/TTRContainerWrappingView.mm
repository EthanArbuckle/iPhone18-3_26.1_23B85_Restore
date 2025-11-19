@interface TTRContainerWrappingView
- (CGSize)calculateArrangedSizeFittingSize:(CGSize)a3;
- (_TtC15RemindersUICore24TTRContainerWrappingView)initWithArrangedSubviews:(id)a3;
- (void)layoutArrangedSubviewsInBounds:(CGRect)a3;
@end

@implementation TTRContainerWrappingView

- (CGSize)calculateArrangedSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_21DA32E0C(0.0, 0.0, width, height);
  TTRWrappingArrangement.computeLayout()(&v8);

  sub_21D6BA6FC(&v8);
  v6 = v8.usedRect.size.width;
  v7 = v8.usedRect.size.height;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutArrangedSubviewsInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_21DA32A74(x, y, width, height);
}

- (_TtC15RemindersUICore24TTRContainerWrappingView)initWithArrangedSubviews:(id)a3
{
  if (a3)
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