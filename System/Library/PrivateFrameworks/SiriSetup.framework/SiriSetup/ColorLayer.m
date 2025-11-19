@interface ColorLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (_TtC9SiriSetup10ColorLayer)init;
- (_TtC9SiriSetup10ColorLayer)initWithLayer:(id)a3;
- (id)actionForKey:(id)a3;
- (void)display;
@end

@implementation ColorLayer

- (_TtC9SiriSetup10ColorLayer)init
{
  v3 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerRedColor;
  *(&self->super.super.super.isa + v3) = CGColorCreateGenericRGB(0.96875, 0.25390625, 0.36328125, 1.0);
  v4 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBlueColor;
  *(&self->super.super.super.isa + v4) = CGColorCreateGenericRGB(0.15625, 0.52734375, 0.9921875, 1.0);
  v5 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBackgroundColor;
  *(&self->super.super.super.isa + v5) = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  v7.receiver = self;
  v7.super_class = type metadata accessor for ColorLayer();
  return [(ColorLayer *)&v7 init];
}

- (_TtC9SiriSetup10ColorLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_269057C04();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerRedColor;
  *(&self->super.super.super.isa + v4) = CGColorCreateGenericRGB(0.96875, 0.25390625, 0.36328125, 1.0);
  v5 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBlueColor;
  *(&self->super.super.super.isa + v5) = CGColorCreateGenericRGB(0.15625, 0.52734375, 0.9921875, 1.0);
  v6 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBackgroundColor;
  *(&self->super.super.super.isa + v6) = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v7 = sub_269057DD4();
  v10.receiver = self;
  v10.super_class = type metadata accessor for ColorLayer();
  v8 = [(ColorLayer *)&v10 initWithLayer:v7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v8;
}

+ (BOOL)needsDisplayForKey:(id)a3
{
  v4 = sub_269057954();
  v6 = v5;
  swift_getObjCClassMetadata();
  if (v4 == 0x6573616870 && v6 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v8 = sub_269057DE4();
    v9 = a3;

    if (v8)
    {

      return 1;
    }

    else
    {
      v11.receiver = swift_getObjCClassFromMetadata();
      v11.super_class = &OBJC_METACLASS____TtC9SiriSetup10ColorLayer;
      v10 = objc_msgSendSuper2(&v11, sel_needsDisplayForKey_, v9);

      return v10;
    }
  }
}

- (void)display
{
  v2 = self;
  sub_269053AA8();
}

- (id)actionForKey:(id)a3
{
  v4 = sub_269057954();
  v6 = v5;
  v7 = self;
  v8 = sub_269054038(v4, v6);

  return v8;
}

@end