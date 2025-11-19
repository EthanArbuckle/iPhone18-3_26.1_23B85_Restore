@interface MetricMessage
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (NSString)description;
@end

@implementation MetricMessage

- (NSString)description
{
  v2 = self;
  sub_231C996A4();

  v3 = sub_231CA7CB8();

  return v3;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = sub_231CA7AA8();
  v8 = v7;

  swift_getObjCClassMetadata();
  v9 = sub_231C99D90(v6, v8, a4);
  sub_231C9ABEC(v6, v8);

  return v9;
}

@end