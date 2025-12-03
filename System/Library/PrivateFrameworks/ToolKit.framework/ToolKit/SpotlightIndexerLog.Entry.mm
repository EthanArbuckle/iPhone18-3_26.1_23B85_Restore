@interface SpotlightIndexerLog.Entry
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (id)serialize;
@end

@implementation SpotlightIndexerLog.Entry

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = sub_1C9061F3C();
  v8 = v7;

  swift_getObjCClassMetadata();
  v9 = sub_1C8E20FBC(v6, v8, version);
  sub_1C8CE7B78(v6, v8);

  return v9;
}

- (id)serialize
{
  selfCopy = self;
  v3 = sub_1C8E21164();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1C9061EFC();
    sub_1C8CE7BD0(v3, v5);
  }

  return v6;
}

@end