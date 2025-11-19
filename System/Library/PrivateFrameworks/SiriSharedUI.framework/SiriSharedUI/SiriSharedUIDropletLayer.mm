@interface SiriSharedUIDropletLayer
- (_TtC12SiriSharedUI24SiriSharedUIDropletLayer)init;
- (_TtC12SiriSharedUI24SiriSharedUIDropletLayer)initWithCoder:(id)a3;
- (_TtC12SiriSharedUI24SiriSharedUIDropletLayer)initWithLayer:(id)a3;
@end

@implementation SiriSharedUIDropletLayer

- (_TtC12SiriSharedUI24SiriSharedUIDropletLayer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriSharedUIDropletLayer();
  return [(SiriSharedUIDropletLayer *)&v3 init];
}

- (_TtC12SiriSharedUI24SiriSharedUIDropletLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_21E4DD338();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0Tm(v8, v8[3]);
  v4 = sub_21E4DD508();
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriSharedUIDropletLayer();
  v5 = [(SiriSharedUIDropletLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

- (_TtC12SiriSharedUI24SiriSharedUIDropletLayer)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriSharedUIDropletLayer();
  v4 = a3;
  v5 = [(SiriSharedUIDropletLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end