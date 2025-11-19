@interface RTAuthorizedLocationDatabaseInitializationMetrics
- (RTAuthorizedLocationDatabaseInitializationMetrics)init;
@end

@implementation RTAuthorizedLocationDatabaseInitializationMetrics

- (RTAuthorizedLocationDatabaseInitializationMetrics)init
{
  v3.receiver = self;
  v3.super_class = RTAuthorizedLocationDatabaseInitializationMetrics;
  result = [(RTAuthorizedLocationDatabaseInitializationMetrics *)&v3 init];
  if (result)
  {
    *&result->_eraseInstallInitializationAttemptCount = -1;
    *&result->_numberOfVisitsRegisteredDuringEraseInstallInitialization = -1;
  }

  return result;
}

@end