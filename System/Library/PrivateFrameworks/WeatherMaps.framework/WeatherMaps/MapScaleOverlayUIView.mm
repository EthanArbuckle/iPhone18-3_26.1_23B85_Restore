@interface MapScaleOverlayUIView
- (CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleInvertColorsStatusDidChangeWithNotification:(id)notification;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
@end

@implementation MapScaleOverlayUIView

- (CGRect)bounds
{
  selfCopy = self;
  sub_220F75DDC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  sub_220F75E8C(x, y, width, height);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_220F76C2C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_220F753C4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)handleInvertColorsStatusDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_220F77164();
}

@end