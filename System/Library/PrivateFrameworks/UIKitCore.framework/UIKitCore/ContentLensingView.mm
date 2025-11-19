@interface ContentLensingView
- (_TtC5UIKit18ContentLensingView)initWithCoder:(id)a3;
- (_TtC5UIKit18ContentLensingView)initWithFrame:(CGRect)a3;
- (void)_addTrackedElementFor:(id)a3 with:(id)a4;
- (void)_removeTrackedElementFor:(id)a3;
@end

@implementation ContentLensingView

- (void)_addTrackedElementFor:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_188C4FA84(v6);
}

- (_TtC5UIKit18ContentLensingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC5UIKit18ContentLensingView_portals;
  *(&self->super.super.super.super.isa + v8) = sub_188C4FD60(MEMORY[0x1E69E7CC0]);
  v10.receiver = self;
  v10.super_class = type metadata accessor for ContentLensingView();
  return [(_UIMaterialDefinitionView *)&v10 initWithFrame:x, y, width, height];
}

- (void)_removeTrackedElementFor:(id)a3
{
  v5 = OBJC_IVAR____TtC5UIKit18ContentLensingView_portals;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  v7 = a3;
  v8 = self;

  v9 = sub_18903AD20(v7, v6);

  if (v9)
  {
    [(UIView *)v9 removeFromSuperview];
    swift_beginAccess();
    v10 = sub_1891E9C1C(v7);
    swift_endAccess();

    v11.receiver = v8;
    v11.super_class = type metadata accessor for ContentLensingView();
    [(UIView *)&v11 _removeTrackedElementFor:v7];

    v7 = v8;
    v8 = v9;
  }
}

- (_TtC5UIKit18ContentLensingView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC5UIKit18ContentLensingView_portals;
  v5 = a3;
  *(&self->super.super.super.super.isa + v4) = sub_188C4FD60(MEMORY[0x1E69E7CC0]);
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContentLensingView();
  v6 = [(_UIMaterialDefinitionView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end