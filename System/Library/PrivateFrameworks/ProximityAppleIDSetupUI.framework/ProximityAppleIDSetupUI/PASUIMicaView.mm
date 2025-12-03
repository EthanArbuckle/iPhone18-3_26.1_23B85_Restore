@interface PASUIMicaView
- (_TtC23ProximityAppleIDSetupUI13PASUIMicaView)initWithCoder:(id)coder;
- (_TtC23ProximityAppleIDSetupUI13PASUIMicaView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PASUIMicaView

- (_TtC23ProximityAppleIDSetupUI13PASUIMicaView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ProximityAppleIDSetupUI13PASUIMicaView_micaPlayer) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PASUIMicaView();
  coderCopy = coder;
  v5 = [(PASUIMicaView *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_261131730();
  }

  return v6;
}

- (_TtC23ProximityAppleIDSetupUI13PASUIMicaView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ProximityAppleIDSetupUI13PASUIMicaView_micaPlayer) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PASUIMicaView();
  height = [(PASUIMicaView *)&v9 initWithFrame:x, y, width, height];
  sub_261131730();

  return height;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PASUIMicaView();
  v2 = v6.receiver;
  [(PASUIMicaView *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC23ProximityAppleIDSetupUI13PASUIMicaView_micaPlayer];
  if (v3)
  {
    v4 = v3;
    layer = [v2 layer];
    [v4 moveAndResizeWithinParentLayer:layer usingGravity:*MEMORY[0x277CDA710] animate:0];
  }

  else
  {
    __break(1u);
  }
}

@end