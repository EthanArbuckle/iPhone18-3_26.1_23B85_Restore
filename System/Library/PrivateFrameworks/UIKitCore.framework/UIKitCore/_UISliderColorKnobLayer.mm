@interface _UISliderColorKnobLayer
- (_TtC5UIKit23_UISliderColorKnobLayer)initWithCoder:(id)coder;
- (_TtC5UIKit23_UISliderColorKnobLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation _UISliderColorKnobLayer

- (_TtC5UIKit23_UISliderColorKnobLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC5UIKit23_UISliderColorKnobLayer_maskLayer;
  *(&self->super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v5 = sub_18A4A86A8();
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UISliderColorKnobLayer();
  v6 = [(_UISliderColorKnobLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return v6;
}

- (_TtC5UIKit23_UISliderColorKnobLayer)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC5UIKit23_UISliderColorKnobLayer_maskLayer;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)layoutSublayers
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for _UISliderColorKnobLayer();
  v2 = v6.receiver;
  [(_UISliderColorKnobLayer *)&v6 layoutSublayers];
  v3 = OBJC_IVAR____TtC5UIKit23_UISliderColorKnobLayer_maskLayer;
  v4 = *&v2[OBJC_IVAR____TtC5UIKit23_UISliderColorKnobLayer_maskLayer];
  [v2 bounds];
  [v4 setFrame_];
  v5 = *&v2[v3];
  [v2 cornerRadius];
  [v5 setCornerRadius_];
}

@end