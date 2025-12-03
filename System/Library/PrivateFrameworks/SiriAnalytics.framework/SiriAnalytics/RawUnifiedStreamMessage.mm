@interface RawUnifiedStreamMessage
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (id)serialize;
@end

@implementation RawUnifiedStreamMessage

- (id)serialize
{
  selfCopy = self;
  v3 = RawUnifiedStreamMessage.serialize()();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1D992AD74();
    sub_1D9866358(v3, v5);
  }

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = sub_1D992AD84();
  v8 = v7;

  swift_getObjCClassMetadata();
  v9 = static RawUnifiedStreamMessage.event(with:dataVersion:)(v6, v8, version);
  sub_1D987106C(v6, v8);

  return v9;
}

@end