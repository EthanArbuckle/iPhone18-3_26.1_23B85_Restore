@interface WeatherMapAnnotationBackgroundView
- (double)_cornerRadius;
- (void)_setCornerRadius:(double)a3;
- (void)layoutSubviews;
@end

@implementation WeatherMapAnnotationBackgroundView

- (double)_cornerRadius
{
  v2 = self;
  sub_220F85630();
  v4 = v3;

  return v4;
}

- (void)_setCornerRadius:(double)a3
{
  v4 = self;
  sub_220F85004(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_220F85B08();
}

@end