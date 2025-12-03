@interface PKProvisioningWatchUICoordinator
- (PKProvisioningWatchUICoordinator)initWithSetupContext:(int64_t)context provisioningController:(id)controller credential:(id)credential;
- (id)_initWithCoordinator:(id)coordinator;
- (id)initManualEntryCoordinatorWithSetupContext:(int64_t)context provisioningController:(id)controller skipRequirements:(BOOL)requirements;
@end

@implementation PKProvisioningWatchUICoordinator

- (PKProvisioningWatchUICoordinator)initWithSetupContext:(int64_t)context provisioningController:(id)controller credential:(id)credential
{
  credentialCopy = credential;
  controllerCopy = controller;
  v10 = [[_PKProvisioningWatchUICoordinator alloc] initWithSetupContext:context provisioningController:controllerCopy credential:credentialCopy];

  v11 = [(PKProvisioningWatchUICoordinator *)self _initWithCoordinator:v10];
  return v11;
}

- (id)initManualEntryCoordinatorWithSetupContext:(int64_t)context provisioningController:(id)controller skipRequirements:(BOOL)requirements
{
  requirementsCopy = requirements;
  controllerCopy = controller;
  v9 = [[_PKProvisioningWatchUICoordinator alloc] initWithManualEntrySetupContext:context provisioningController:controllerCopy skipRequirements:requirementsCopy];

  v10 = [(PKProvisioningWatchUICoordinator *)self _initWithCoordinator:v9];
  return v10;
}

- (id)_initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = PKProvisioningWatchUICoordinator;
  v6 = [(PKProvisioningWatchUICoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coordinator, coordinator);
  }

  return v7;
}

@end