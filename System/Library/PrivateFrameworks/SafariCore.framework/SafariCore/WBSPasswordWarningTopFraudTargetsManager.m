@interface WBSPasswordWarningTopFraudTargetsManager
- (WBSPasswordWarningTopFraudTargetsManager)init;
- (void)dealloc;
@end

@implementation WBSPasswordWarningTopFraudTargetsManager

- (WBSPasswordWarningTopFraudTargetsManager)init
{
  v3 = [MEMORY[0x1E696AAE8] safari_safariCoreBundle];
  v4 = [v3 URLForResource:@"WBSPasswordWarningTopFraudTargets" withExtension:@"plist"];

  v5 = [(WBSPasswordWarningTopFraudTargetsManager *)self _initWithBuiltinListURL:v4 shouldAttemptToUpdateConfiguration:1];
  return v5;
}

- (void)dealloc
{
  [(WBSRemotelyUpdatableDataController *)self->_remotelyUpdatableDataController prepareForTermination];
  v3.receiver = self;
  v3.super_class = WBSPasswordWarningTopFraudTargetsManager;
  [(WBSPasswordWarningTopFraudTargetsManager *)&v3 dealloc];
}

@end