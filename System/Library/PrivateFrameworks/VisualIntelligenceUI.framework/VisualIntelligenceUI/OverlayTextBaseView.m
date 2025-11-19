@interface OverlayTextBaseView
- (_TtC20VisualIntelligenceUIP33_69C2ECA755A01C48F94FAC639B45B91519OverlayTextBaseView)initWithCoder:(id)a3;
- (_TtC20VisualIntelligenceUIP33_69C2ECA755A01C48F94FAC639B45B91519OverlayTextBaseView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation OverlayTextBaseView

- (_TtC20VisualIntelligenceUIP33_69C2ECA755A01C48F94FAC639B45B91519OverlayTextBaseView)initWithCoder:(id)a3
{
  result = sub_21E1429C4();
  __break(1u);
  return result;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_21E0A358C();
  sub_21E0A35D8(&unk_27CEACB60, sub_21E0A358C);
  sub_21E1424B4();
  v6 = a4;
  v7 = self;
  v8 = sub_21E1424A4();

  v9.receiver = v7;
  v9.super_class = type metadata accessor for OverlayTextBaseView();
  [(OverlayTextBaseView *)&v9 touchesEnded:v8 withEvent:v6];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_21E0A255C(a4, x, y);

  return v10;
}

- (_TtC20VisualIntelligenceUIP33_69C2ECA755A01C48F94FAC639B45B91519OverlayTextBaseView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end