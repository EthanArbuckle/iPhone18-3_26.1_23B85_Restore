@interface RawPayload
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (_TtC12PoirotBlocks10RawPayload)init;
- (_TtC12PoirotBlocks10RawPayload)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (id)serialize;
@end

@implementation RawPayload

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  dataCopy = data;
  v7 = sub_21B20C6B8();
  v9 = v8;

  v10 = objc_allocWithZone(ObjCClassMetadata);
  *&v10[OBJC_IVAR____TtC12PoirotBlocks10RawPayload_dataVersion] = 1;
  v11 = &v10[OBJC_IVAR____TtC12PoirotBlocks10RawPayload_data];
  *v11 = v7;
  v11[1] = v9;
  v14.receiver = v10;
  v14.super_class = ObjCClassMetadata;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

- (id)serialize
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC12PoirotBlocks10RawPayload_data);
  v3 = *(&self->super.__validators + OBJC_IVAR____TtC12PoirotBlocks10RawPayload_data);
  sub_21B17CEA8(v2, v3);
  v4 = sub_21B20C698();
  sub_21B17DAF8(v2, v3);

  return v4;
}

- (_TtC12PoirotBlocks10RawPayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12PoirotBlocks10RawPayload)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end