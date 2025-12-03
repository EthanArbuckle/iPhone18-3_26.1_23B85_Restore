@interface FMPFRingView
+ (Class)layerClass;
- (NSString)description;
- (_TtC10TVRemoteUI12FMPFRingView)initWithCoder:(id)coder;
- (_TtC10TVRemoteUI12FMPFRingView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation FMPFRingView

- (_TtC10TVRemoteUI12FMPFRingView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_style;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = self + v4;
  v6 = qword_2804D9BE8;
  v7 = qword_2804D9BF0;
  *v5 = static FMPFRingViewStyle.default;
  *(v5 + 2) = v6;
  *(v5 + 3) = v7;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScale) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_startAngle) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngle) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for CAShapeLayer);

  return swift_getObjCClassFromMetadata();
}

- (NSString)description
{
  selfCopy = self;
  v3 = FMR1HapticsController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x26D6B1210](v3, v5);

  return v6;
}

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  specialized FMPFRingView.draw(_:)();
}

- (_TtC10TVRemoteUI12FMPFRingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end