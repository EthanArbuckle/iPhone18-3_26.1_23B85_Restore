@interface SiriSharedUIDropletView
+ (Class)layerClass;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC12SiriSharedUI23SiriSharedUIDropletView)init;
- (_TtC12SiriSharedUI23SiriSharedUIDropletView)initWithCoder:(id)coder;
- (_TtC12SiriSharedUI23SiriSharedUIDropletView)initWithFrame:(CGRect)frame;
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
  layer = [(SiriSharedUIDropletView *)v2 layer];
  type metadata accessor for SiriSharedUIDropletLayer();
  swift_dynamicCastClassUnconditional();
  sub_21E4AB7CC();

  return v2;
}

- (_TtC12SiriSharedUI23SiriSharedUIDropletView)initWithCoder:(id)coder
{
  result = sub_21E4DD468();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  LOBYTE(eventCopy) = sub_21E47F760(eventCopy, x, y);

  return eventCopy & 1;
}

- (_TtC12SiriSharedUI23SiriSharedUIDropletView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end