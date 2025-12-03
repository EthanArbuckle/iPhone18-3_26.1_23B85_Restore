@interface StagingReport
+ (id)failed;
+ (id)terminated;
+ (id)timedOut;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  StagingReport.encode(with:)(coderCopy);
}

@end