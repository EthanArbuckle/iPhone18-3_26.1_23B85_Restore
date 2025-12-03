@interface WorkoutSafetyCheckIn
- (void)onMessagesAppInstalled;
- (void)onMessagesAppUninstalled;
@end

@implementation WorkoutSafetyCheckIn

- (void)onMessagesAppInstalled
{
  selfCopy = self;
  WorkoutSafetyCheckIn.onMessagesAppInstalled()();
}

- (void)onMessagesAppUninstalled
{
  selfCopy = self;
  WorkoutSafetyCheckIn.onMessagesAppUninstalled()();
}

@end