@interface REImmediateTrainingScheduler
- (void)performTask:(id)task;
@end

@implementation REImmediateTrainingScheduler

- (void)performTask:(id)task
{
  if (task)
  {
    (*(task + 2))(task);
  }
}

@end