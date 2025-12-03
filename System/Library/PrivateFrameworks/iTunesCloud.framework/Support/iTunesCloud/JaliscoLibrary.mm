@interface JaliscoLibrary
+ (id)logCategory;
+ (id)oversizeLogCategory;
- (JaliscoLibrary)initWithConfiguration:(id)configuration;
@end

@implementation JaliscoLibrary

- (JaliscoLibrary)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[CloudPendingChangesCoordinator alloc] initWithConfiguration:configurationCopy prefix:@"Jalisco-Media" loggable:objc_opt_class()];
  v8.receiver = self;
  v8.super_class = JaliscoLibrary;
  v6 = [(CloudLibrary *)&v8 _initWithConfiguration:configurationCopy pendingChangesCoordinator:v5];

  return v6;
}

+ (id)oversizeLogCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync_Oversize");

  return v2;
}

+ (id)logCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");

  return v2;
}

@end