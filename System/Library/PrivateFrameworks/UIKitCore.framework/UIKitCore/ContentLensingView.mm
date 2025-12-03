@interface ContentLensingView
- (_TtC5UIKit18ContentLensingView)initWithCoder:(id)coder;
- (_TtC5UIKit18ContentLensingView)initWithFrame:(CGRect)frame;
- (void)_addTrackedElementFor:(id)for with:(id)with;
- (void)_removeTrackedElementFor:(id)for;
@end

@implementation ContentLensingView

- (void)_addTrackedElementFor:(id)for with:(id)with
{
  forCopy = for;
  withCopy = with;
  selfCopy = self;
  sub_188C4FA84(forCopy);
}

- (_TtC5UIKit18ContentLensingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC5UIKit18ContentLensingView_portals;
  *(&self->super.super.super.super.isa + v8) = sub_188C4FD60(MEMORY[0x1E69E7CC0]);
  v10.receiver = self;
  v10.super_class = type metadata accessor for ContentLensingView();
  return [(_UIMaterialDefinitionView *)&v10 initWithFrame:x, y, width, height];
}

- (void)_removeTrackedElementFor:(id)for
{
  v5 = OBJC_IVAR____TtC5UIKit18ContentLensingView_portals;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  forCopy = for;
  selfCopy = self;

  v9 = sub_18903AD20(forCopy, v6);

  if (v9)
  {
    [(UIView *)v9 removeFromSuperview];
    swift_beginAccess();
    v10 = sub_1891E9C1C(forCopy);
    swift_endAccess();

    v11.receiver = selfCopy;
    v11.super_class = type metadata accessor for ContentLensingView();
    [(UIView *)&v11 _removeTrackedElementFor:forCopy];

    forCopy = selfCopy;
    selfCopy = v9;
  }
}

- (_TtC5UIKit18ContentLensingView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC5UIKit18ContentLensingView_portals;
  coderCopy = coder;
  *(&self->super.super.super.super.isa + v4) = sub_188C4FD60(MEMORY[0x1E69E7CC0]);
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContentLensingView();
  v6 = [(_UIMaterialDefinitionView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end