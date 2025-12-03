@interface TextViewWrapper.TextView
- (CGSize)intrinsicContentSize;
- (_TtCV17WeatherAppSupportP33_60F1DCCF57C539BA000BCF575D4E662015TextViewWrapper8TextView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation TextViewWrapper.TextView

- (CGSize)intrinsicContentSize
{
  v2 = sub_220CF0B30();
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtCV17WeatherAppSupportP33_60F1DCCF57C539BA000BCF575D4E662015TextViewWrapper8TextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  return sub_220CF0B74(container, x, y, width, height);
}

@end