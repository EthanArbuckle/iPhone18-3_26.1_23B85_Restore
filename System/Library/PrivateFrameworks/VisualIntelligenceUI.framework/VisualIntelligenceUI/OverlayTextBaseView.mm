@interface OverlayTextBaseView
- (_TtC20VisualIntelligenceUIP33_69C2ECA755A01C48F94FAC639B45B91519OverlayTextBaseView)initWithCoder:(id)coder;
- (_TtC20VisualIntelligenceUIP33_69C2ECA755A01C48F94FAC639B45B91519OverlayTextBaseView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation OverlayTextBaseView

- (_TtC20VisualIntelligenceUIP33_69C2ECA755A01C48F94FAC639B45B91519OverlayTextBaseView)initWithCoder:(id)coder
{
  result = sub_21E1429C4();
  __break(1u);
  return result;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_21E0A358C();
  sub_21E0A35D8(&unk_27CEACB60, sub_21E0A358C);
  sub_21E1424B4();
  eventCopy = event;
  selfCopy = self;
  v8 = sub_21E1424A4();

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for OverlayTextBaseView();
  [(OverlayTextBaseView *)&v9 touchesEnded:v8 withEvent:eventCopy];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_21E0A255C(event, x, y);

  return v10;
}

- (_TtC20VisualIntelligenceUIP33_69C2ECA755A01C48F94FAC639B45B91519OverlayTextBaseView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end