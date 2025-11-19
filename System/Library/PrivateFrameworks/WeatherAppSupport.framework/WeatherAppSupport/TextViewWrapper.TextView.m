@interface TextViewWrapper.TextView
- (CGSize)intrinsicContentSize;
- (_TtCV17WeatherAppSupportP33_60F1DCCF57C539BA000BCF575D4E662015TextViewWrapper8TextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation TextViewWrapper.TextView

- (CGSize)intrinsicContentSize
{
  v2 = sub_220CF0B30();
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtCV17WeatherAppSupportP33_60F1DCCF57C539BA000BCF575D4E662015TextViewWrapper8TextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  return sub_220CF0B74(a4, x, y, width, height);
}

@end