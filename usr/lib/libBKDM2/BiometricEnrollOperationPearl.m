@interface BiometricEnrollOperationPearl
- (BiometricEnrollOperationPearl)init;
- (void)activateCameraIndicator;
- (void)dealloc;
@end

@implementation BiometricEnrollOperationPearl

- (BiometricEnrollOperationPearl)init
{
  v3.receiver = self;
  v3.super_class = BiometricEnrollOperationPearl;
  result = [(BiometricEnrollOperation *)&v3 init];
  if (result)
  {
    *&result->_cameraIndicatorActivated = 0;
    *(&result->super._processedFlags + 1) = -1;
  }

  return result;
}

- (void)dealloc
{
  if (self->_augmentedIdentity.uuid[12] == 1)
  {
    v3 = +[SecureCameraIndicator sharedInstance];
    [v3 deactivate];

    self->_augmentedIdentity.uuid[12] = 0;
  }

  v4.receiver = self;
  v4.super_class = BiometricEnrollOperationPearl;
  [(BiometricEnrollOperationPearl *)&v4 dealloc];
}

- (void)activateCameraIndicator
{
  v3 = +[SecureCameraIndicator sharedInstance];
  [v3 activate];

  self->_augmentedIdentity.uuid[12] = 1;
}

@end