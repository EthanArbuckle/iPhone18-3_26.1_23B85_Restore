@interface SiriSharedUIDropletView
+ (Class)layerClass;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC12SiriSharedUI23SiriSharedUIDropletView)init;
- (_TtC12SiriSharedUI23SiriSharedUIDropletView)initWithCoder:(id)a3;
- (_TtC12SiriSharedUI23SiriSharedUIDropletView)initWithFrame:(CGRect)a3;
@end

@implementation SiriSharedUIDropletView

+ (Class)layerClass
{
  type metadata accessor for SiriSharedUIDropletLayer();

  return swift_getObjCClassFromMetadata();
}

- (_TtC12SiriSharedUI23SiriSharedUIDropletView)init
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SiriSharedUIDropletView();
  v2 = [(SiriSharedUIDropletView *)&v5 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v3 = [(SiriSharedUIDropletView *)v2 layer];
  type metadata accessor for SiriSharedUIDropletLayer();
  swift_dynamicCastClassUnconditional();
  sub_21E4AB7CC();

  return v2;
}

- (_TtC12SiriSharedUI23SiriSharedUIDropletView)initWithCoder:(id)a3
{
  result = sub_21E4DD468();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  LOBYTE(v4) = sub_21E47F760(v4, x, y);

  return v4 & 1;
}

- (_TtC12SiriSharedUI23SiriSharedUIDropletView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end