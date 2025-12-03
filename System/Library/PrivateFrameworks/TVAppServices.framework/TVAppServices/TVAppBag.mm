@interface TVAppBag
+ (TVAppBag)app;
- (TVAppBag)init;
- (void)prewarm;
@end

@implementation TVAppBag

+ (TVAppBag)app
{
  if (qword_280BBB718 != -1)
  {
    swift_once();
  }

  v3 = qword_280BBB720;

  return v3;
}

- (void)prewarm
{
  selfCopy = self;
  TVAppBag.prewarm()();
}

- (TVAppBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end