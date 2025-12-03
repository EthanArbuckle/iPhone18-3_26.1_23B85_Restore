@interface _UITabBarPlatterView.ContentView
- (_TtCC5UIKit20_UITabBarPlatterViewP33_022AA364308030F4627162921FD6D31A11ContentView)initWithCoder:(id)coder;
- (_TtCC5UIKit20_UITabBarPlatterViewP33_022AA364308030F4627162921FD6D31A11ContentView)initWithFrame:(CGRect)frame;
@end

@implementation _UITabBarPlatterView.ContentView

- (_TtCC5UIKit20_UITabBarPlatterViewP33_022AA364308030F4627162921FD6D31A11ContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UITabBarPlatterView.ContentView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit20_UITabBarPlatterViewP33_022AA364308030F4627162921FD6D31A11ContentView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UITabBarPlatterView.ContentView();
  coderCopy = coder;
  v5 = [(UIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end