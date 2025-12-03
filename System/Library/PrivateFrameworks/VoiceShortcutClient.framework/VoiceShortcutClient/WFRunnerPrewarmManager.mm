@interface WFRunnerPrewarmManager
+ (WFRunnerPrewarmManager)sharedManager;
- (WFRunnerConnection)connection;
- (void)prewarmRunnerWithHostIfNecessary:(id)necessary;
- (void)reset;
- (void)setConnection:(id)connection;
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
  selfCopy = self;
  sub_1B1DF9964();
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  RunnerPrewarmManager.connection.setter(connection);
}

- (void)prewarmRunnerWithHostIfNecessary:(id)necessary
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B1E08548(necessary);
  swift_unknownObjectRelease();
}

@end