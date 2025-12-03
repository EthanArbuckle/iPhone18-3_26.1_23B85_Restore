@interface MetricMessage
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (NSString)description;
@end

@implementation MetricMessage

- (NSString)description
{
  selfCopy = self;
  sub_231C996A4();

  v3 = sub_231CA7CB8();

  return v3;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = sub_231CA7AA8();
  v8 = v7;

  swift_getObjCClassMetadata();
  v9 = sub_231C99D90(v6, v8, version);
  sub_231C9ABEC(v6, v8);

  return v9;
}

@end