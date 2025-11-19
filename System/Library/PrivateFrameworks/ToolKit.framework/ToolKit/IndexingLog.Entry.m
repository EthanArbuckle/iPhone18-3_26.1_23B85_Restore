@interface IndexingLog.Entry
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (id)serialize;
@end

@implementation IndexingLog.Entry

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = sub_1C9061F3C();
  v8 = v7;

  swift_getObjCClassMetadata();
  v9 = sub_1C8CE893C(v6, v8, a4);
  sub_1C8CE7B78(v6, v8);

  return v9;
}

- (id)serialize
{
  v2 = self;
  v3 = sub_1C8CE8BB0();
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