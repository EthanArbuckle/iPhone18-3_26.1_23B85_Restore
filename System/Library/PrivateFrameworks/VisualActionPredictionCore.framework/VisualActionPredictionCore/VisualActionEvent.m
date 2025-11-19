@interface VisualActionEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (_TtC26VisualActionPredictionCore17VisualActionEvent)init;
- (id)serialize;
- (unsigned)dataVersion;
- (void)setDataVersion:(unsigned int)a3;
@end

@implementation VisualActionEvent

- (unsigned)dataVersion
{
  v3 = OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDataVersion:(unsigned int)a3
{
  v5 = OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v4 = a3;
  v5 = sub_22634EE3C();
  v7 = v6;

  v8 = _s26VisualActionPredictionCore0aB5EventC5event4with11dataVersionACXDSg10Foundation4DataV_s6UInt32VtFZ_0(v5, v7);
  sub_2262D611C(v5, v7);

  return v8;
}

- (id)serialize
{
  v2 = self;
  v3 = VisualActionEvent.serialize()();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_22634EE2C();
    sub_2262D66C4(v3, v5);
    v6 = v7;
  }

  return v6;
}

- (_TtC26VisualActionPredictionCore17VisualActionEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end