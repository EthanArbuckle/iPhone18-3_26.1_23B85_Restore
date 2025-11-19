@interface ScalableImageView
- (int64_t)contentMode;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)a3;
@end

@implementation ScalableImageView

- (int64_t)contentMode
{
  v2 = self;
  v3 = sub_1D817F844();

  return v3;
}

- (void)setContentMode:(int64_t)a3
{
  v4 = self;
  sub_1D817F8B0(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D817FBFC();
}

@end