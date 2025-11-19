@interface WFRunnerPrewarmManager
+ (WFRunnerPrewarmManager)sharedManager;
- (WFRunnerConnection)connection;
- (void)prewarmRunnerWithHostIfNecessary:(id)a3;
- (void)reset;
- (void)setConnection:(id)a3;
@end

@implementation WFRunnerPrewarmManager

+ (WFRunnerPrewarmManager)sharedManager
{
  v2 = static RunnerPrewarmManager.shared.getter();

  return v2;
}

- (WFRunnerConnection)connection
{
  v2 = RunnerPrewarmManager.connection.getter();

  return v2;
}

- (void)reset
{
  v2 = self;
  sub_1B1DF9964();
}

- (void)setConnection:(id)a3
{
  v5 = a3;
  v6 = self;
  RunnerPrewarmManager.connection.setter(a3);
}

- (void)prewarmRunnerWithHostIfNecessary:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B1E08548(a3);
  swift_unknownObjectRelease();
}

@end