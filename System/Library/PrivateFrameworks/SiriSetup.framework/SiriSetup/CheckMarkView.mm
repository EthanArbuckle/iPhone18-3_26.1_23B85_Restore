@interface CheckMarkView
- (CGSize)intrinsicContentSize;
- (_TtC9SiriSetup13CheckMarkView)initWithFrame:(CGRect)frame;
@end

@implementation CheckMarkView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_26901C4BC();
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC9SiriSetup13CheckMarkView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SiriSetup13CheckMarkView_colorLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SiriSetup13CheckMarkView_checkMaskLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SiriSetup13CheckMarkView_xMaskLayer) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CheckMarkView();
  return [(CheckMarkView *)&v8 initWithFrame:x, y, width, height];
}

@end