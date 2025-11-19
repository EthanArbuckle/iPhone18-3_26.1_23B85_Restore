@interface StagingReport
+ (id)failed;
+ (id)terminated;
+ (id)timedOut;
- (void)encodeWithCoder:(id)a3;
@end

@implementation StagingReport

+ (id)failed
{
  swift_getObjCClassMetadata();
  v2 = sub_1D988C884();

  return v2;
}

+ (id)timedOut
{
  swift_getObjCClassMetadata();
  v2 = sub_1D988C8EC();

  return v2;
}

+ (id)terminated
{
  swift_getObjCClassMetadata();
  v2 = sub_1D988C954();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  StagingReport.encode(with:)(v4);
}

@end