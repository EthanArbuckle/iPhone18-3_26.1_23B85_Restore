@interface WeatherVFXView._VFXView
- (_TtCV9WeatherUI14WeatherVFXViewP33_101D7DA744F6F695065549099A4FF6838_VFXView)initWithFrame:(CGRect)a3 options:(id)a4;
- (void)layoutSubviews;
@end

@implementation WeatherVFXView._VFXView

- (void)layoutSubviews
{
  v2 = self;
  sub_1BCA6FC80();
}

- (_TtCV9WeatherUI14WeatherVFXViewP33_101D7DA744F6F695065549099A4FF6838_VFXView)initWithFrame:(CGRect)a3 options:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    v8 = sub_1BCE1D110();
  }

  else
  {
    v8 = 0;
  }

  return sub_1BCA6FD58(v8, x, y, width, height);
}

@end