@interface WeatherVFXView._VFXView
- (_TtCV9WeatherUI14WeatherVFXViewP33_101D7DA744F6F695065549099A4FF6838_VFXView)initWithFrame:(CGRect)frame options:(id)options;
- (void)layoutSubviews;
@end

@implementation WeatherVFXView._VFXView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1BCA6FC80();
}

- (_TtCV9WeatherUI14WeatherVFXViewP33_101D7DA744F6F695065549099A4FF6838_VFXView)initWithFrame:(CGRect)frame options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (options)
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