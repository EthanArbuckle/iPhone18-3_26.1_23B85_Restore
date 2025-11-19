@interface TRDeviceSetupFinishAction
- (TRDeviceSetupFinishAction)init;
@end

@implementation TRDeviceSetupFinishAction

- (TRDeviceSetupFinishAction)init
{
  v3.receiver = self;
  v3.super_class = TRDeviceSetupFinishAction;
  return [(TRDeviceSetupAction *)&v3 _initWithActionType:@"finish" parameters:0];
}

@end