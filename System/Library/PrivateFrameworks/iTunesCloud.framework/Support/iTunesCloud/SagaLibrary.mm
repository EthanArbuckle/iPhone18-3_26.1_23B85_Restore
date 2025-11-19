@interface SagaLibrary
+ (id)logCategory;
+ (id)oversizeLogCategory;
- (SagaLibrary)initWithConfiguration:(id)a3;
- (id)_userIdentity;
@end

@implementation SagaLibrary

- (id)_userIdentity
{
  v5.receiver = self;
  v5.super_class = SagaLibrary;
  v2 = [(CloudLibrary *)&v5 configuration];
  v3 = [v2 userIdentity];

  return v3;
}

- (SagaLibrary)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[CloudPendingChangesCoordinator alloc] initWithConfiguration:v4 prefix:@"Saga" loggable:objc_opt_class()];
  v8.receiver = self;
  v8.super_class = SagaLibrary;
  v6 = [(CloudLibrary *)&v8 _initWithConfiguration:v4 pendingChangesCoordinator:v5];

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