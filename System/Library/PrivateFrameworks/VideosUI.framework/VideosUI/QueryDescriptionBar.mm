@interface QueryDescriptionBar
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)singlePressWithGesture:(id)gesture;
@end

@implementation QueryDescriptionBar

- (void)singlePressWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_1E3EFA5B8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1E3EFB57C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E3EFBB44();
}

@end