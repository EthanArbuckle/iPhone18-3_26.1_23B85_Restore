@interface SagaLibrary
+ (id)logCategory;
+ (id)oversizeLogCategory;
- (SagaLibrary)initWithConfiguration:(id)configuration;
- (id)_userIdentity;
@end

@implementation SagaLibrary

- (id)_userIdentity
{
  v5.receiver = self;
  v5.super_class = SagaLibrary;
  configuration = [(CloudLibrary *)&v5 configuration];
  userIdentity = [configuration userIdentity];

  return userIdentity;
}

- (SagaLibrary)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[CloudPendingChangesCoordinator alloc] initWithConfiguration:configurationCopy prefix:@"Saga" loggable:objc_opt_class()];
  v8.receiver = self;
  v8.super_class = SagaLibrary;
  v6 = [(CloudLibrary *)&v8 _initWithConfiguration:configurationCopy pendingChangesCoordinator:v5];

  return v6;
}

+ (id)oversizeLogCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");

  return v2;
}

+ (id)logCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");

  return v2;
}

@end