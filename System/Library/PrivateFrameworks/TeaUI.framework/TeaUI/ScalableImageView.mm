@interface ScalableImageView
- (int64_t)contentMode;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)mode;
@end

@implementation ScalableImageView

- (int64_t)contentMode
{
  selfCopy = self;
  v3 = sub_1D817F844();

  return v3;
}

- (void)setContentMode:(int64_t)mode
{
  selfCopy = self;
  sub_1D817F8B0(mode);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D817FBFC();
}

@end