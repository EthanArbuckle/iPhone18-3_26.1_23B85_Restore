@interface BiometricMatchOperationPearl
- (BiometricMatchOperationPearl)init;
- (void)activateCameraIndicator;
- (void)dealloc;
@end

@implementation BiometricMatchOperationPearl

- (BiometricMatchOperationPearl)init
{
  v3.receiver = self;
  v3.super_class = BiometricMatchOperationPearl;
  result = [(BiometricMatchOperation *)&v3 init];
  if (result)
  {
    result->_preAugmentationCheckIdentity.userID = -1;
  }

  return result;
}

- (void)dealloc
{
  if (self->_cameraIndicatorActivated)
  {
    v3 = +[SecureCameraIndicator sharedInstance];
    [v3 deactivate];

    self->_cameraIndicatorActivated = 0;
  }

  v4.receiver = self;
  v4.super_class = BiometricMatchOperationPearl;
  [(BiometricMatchOperationPearl *)&v4 dealloc];
}

- (void)activateCameraIndicator
{
  v3 = +[SecureCameraIndicator sharedInstance];
  [v3 activate];

  self->_cameraIndicatorActivated = 1;
}

@end