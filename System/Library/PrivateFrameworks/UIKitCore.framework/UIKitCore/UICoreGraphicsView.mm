@interface UICoreGraphicsView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtC5UIKit18UICoreGraphicsView)initWithCoder:(id)coder;
- (_TtC5UIKit18UICoreGraphicsView)initWithFrame:(CGRect)frame;
@end

@implementation UICoreGraphicsView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  layer = [(UIView *)selfCopy layer];
  hasBeenCommitted = [(CALayer *)layer hasBeenCommitted];

  if (hasBeenCommitted)
  {
    v10.receiver = selfCopy;
    v10.super_class = type metadata accessor for UICoreGraphicsView();
    v8 = [(UIView *)&v10 _shouldAnimatePropertyWithKey:keyCopy];

    return v8;
  }

  else
  {

    return 0;
  }
}

- (_TtC5UIKit18UICoreGraphicsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UICoreGraphicsView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5UIKit18UICoreGraphicsView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UICoreGraphicsView();
  coderCopy = coder;
  v5 = [(UIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end