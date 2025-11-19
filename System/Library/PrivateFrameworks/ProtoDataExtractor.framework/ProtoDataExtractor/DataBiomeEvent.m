@interface DataBiomeEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (_TtC18ProtoDataExtractor14DataBiomeEvent)init;
- (id)serialize;
@end

@implementation DataBiomeEvent

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = sub_260F49328();
  v8 = v7;

  v9 = type metadata accessor for DataBiomeEvent();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC18ProtoDataExtractor14DataBiomeEvent_dataVersion] = a4;
  v11 = &v10[OBJC_IVAR____TtC18ProtoDataExtractor14DataBiomeEvent_data];
  *v11 = v6;
  v11[1] = v8;
  v14.receiver = v10;
  v14.super_class = v9;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

- (id)serialize
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18ProtoDataExtractor14DataBiomeEvent_data);
  v3 = *(&self->dataVersion + OBJC_IVAR____TtC18ProtoDataExtractor14DataBiomeEvent_data);
  sub_260F28238(v2, v3);
  v4 = sub_260F49308();
  sub_260F281D0(v2, v3);

  return v4;
}

- (_TtC18ProtoDataExtractor14DataBiomeEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end