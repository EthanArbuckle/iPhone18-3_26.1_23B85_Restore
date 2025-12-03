@interface TRDeviceSetupCancelAction
- (TRDeviceSetupCancelAction)init;
- (TRDeviceSetupCancelAction)initWithError:(id)error;
@end

@implementation TRDeviceSetupCancelAction

- (TRDeviceSetupCancelAction)init
{
  v3.receiver = self;
  v3.super_class = TRDeviceSetupCancelAction;
  return [(TRDeviceSetupAction *)&v3 _initWithActionType:@"cancel" parameters:0];
}

- (TRDeviceSetupCancelAction)initWithError:(id)error
{
  errorCopy = error;
  v6 = [(TRDeviceSetupCancelAction *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

@end