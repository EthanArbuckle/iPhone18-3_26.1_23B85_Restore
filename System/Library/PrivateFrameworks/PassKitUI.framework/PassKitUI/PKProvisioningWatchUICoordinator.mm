@interface PKProvisioningWatchUICoordinator
- (PKProvisioningWatchUICoordinator)initWithSetupContext:(int64_t)a3 provisioningController:(id)a4 credential:(id)a5;
- (id)_initWithCoordinator:(id)a3;
- (id)initManualEntryCoordinatorWithSetupContext:(int64_t)a3 provisioningController:(id)a4 skipRequirements:(BOOL)a5;
@end

@implementation PKProvisioningWatchUICoordinator

- (PKProvisioningWatchUICoordinator)initWithSetupContext:(int64_t)a3 provisioningController:(id)a4 credential:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[_PKProvisioningWatchUICoordinator alloc] initWithSetupContext:a3 provisioningController:v9 credential:v8];

  v11 = [(PKProvisioningWatchUICoordinator *)self _initWithCoordinator:v10];
  return v11;
}

- (id)initManualEntryCoordinatorWithSetupContext:(int64_t)a3 provisioningController:(id)a4 skipRequirements:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [[_PKProvisioningWatchUICoordinator alloc] initWithManualEntrySetupContext:a3 provisioningController:v8 skipRequirements:v5];

  v10 = [(PKProvisioningWatchUICoordinator *)self _initWithCoordinator:v9];
  return v10;
}

- (id)_initWithCoordinator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKProvisioningWatchUICoordinator;
  v6 = [(PKProvisioningWatchUICoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coordinator, a3);
  }

  return v7;
}

@end