@interface AmbientNoMatchUIView
- (CGSize)intrinsicContentSize;
- (_TtC11ShazamKitUI20AmbientNoMatchUIView)initWithCoder:(id)a3;
- (_TtC11ShazamKitUI20AmbientNoMatchUIView)initWithFrame:(CGRect)a3;
@end

@implementation AmbientNoMatchUIView

- (_TtC11ShazamKitUI20AmbientNoMatchUIView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC11ShazamKitUI20AmbientNoMatchUIView_titleLabel;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AmbientNoMatchUIView *)&v12 initWithFrame:x, y, width, height];
  sub_265F97C20();

  return v10;
}

- (_TtC11ShazamKitUI20AmbientNoMatchUIView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC11ShazamKitUI20AmbientNoMatchUIView_titleLabel;
  v7 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v8 = a3;
  *(&self->super.super.super.isa + v6) = [v7 initWithFrame_];
  v13.receiver = self;
  v13.super_class = ObjectType;
  v9 = [(AmbientNoMatchUIView *)&v13 initWithCoder:v8];
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
  v2 = self;
  v3 = [(AmbientNoMatchUIView *)v2 superview];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
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