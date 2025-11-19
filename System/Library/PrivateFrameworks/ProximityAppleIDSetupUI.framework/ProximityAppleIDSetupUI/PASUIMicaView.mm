@interface PASUIMicaView
- (_TtC23ProximityAppleIDSetupUI13PASUIMicaView)initWithCoder:(id)a3;
- (_TtC23ProximityAppleIDSetupUI13PASUIMicaView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PASUIMicaView

- (_TtC23ProximityAppleIDSetupUI13PASUIMicaView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ProximityAppleIDSetupUI13PASUIMicaView_micaPlayer) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PASUIMicaView();
  v4 = a3;
  v5 = [(PASUIMicaView *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_261131730();
  }

  return v6;
}

- (_TtC23ProximityAppleIDSetupUI13PASUIMicaView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ProximityAppleIDSetupUI13PASUIMicaView_micaPlayer) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PASUIMicaView();
  v7 = [(PASUIMicaView *)&v9 initWithFrame:x, y, width, height];
  sub_261131730();

  return v7;
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
    v5 = [v2 layer];
    [v4 moveAndResizeWithinParentLayer:v5 usingGravity:*MEMORY[0x277CDA710] animate:0];
  }

  else
  {
    __break(1u);
  }
}

@end