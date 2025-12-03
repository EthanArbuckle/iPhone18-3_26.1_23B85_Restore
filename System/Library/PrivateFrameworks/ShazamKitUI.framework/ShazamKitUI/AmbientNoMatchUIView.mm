@interface AmbientNoMatchUIView
- (CGSize)intrinsicContentSize;
- (_TtC11ShazamKitUI20AmbientNoMatchUIView)initWithCoder:(id)coder;
- (_TtC11ShazamKitUI20AmbientNoMatchUIView)initWithFrame:(CGRect)frame;
@end

@implementation AmbientNoMatchUIView

- (_TtC11ShazamKitUI20AmbientNoMatchUIView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC11ShazamKitUI20AmbientNoMatchUIView_titleLabel;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(AmbientNoMatchUIView *)&v12 initWithFrame:x, y, width, height];
  sub_265F97C20();

  return height;
}

- (_TtC11ShazamKitUI20AmbientNoMatchUIView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC11ShazamKitUI20AmbientNoMatchUIView_titleLabel;
  v7 = objc_allocWithZone(MEMORY[0x277D756B8]);
  coderCopy = coder;
  *(&self->super.super.super.isa + v6) = [v7 initWithFrame_];
  v13.receiver = self;
  v13.super_class = ObjectType;
  v9 = [(AmbientNoMatchUIView *)&v13 initWithCoder:coderCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_265F97C20();
  }

  return v10;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  superview = [(AmbientNoMatchUIView *)selfCopy superview];
  if (superview)
  {
    v4 = superview;
    [superview bounds];
    v6 = v5;
    v8 = v7;
  }

  else
  {

    v6 = 0.0;
    v8 = 0.0;
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end