@interface STConcreteCoreDataTransformer
- (STConcreteCoreDataTransformer)initWithOrganizationControllerConfigurationAdapter:(id)adapter deviceInformationPrimitives:(id)primitives persistentContainer:(id)container;
- (id)communicationConfigurationForLocalUser;
- (id)communicationConfigurationForUserID:(id)d;
- (id)configurationChangeForCoreDataChange:(id)change error:(id *)error;
- (id)configurationChangeForRelatedConfigurationChange:(id)change;
- (id)configurationChangesOfType:(int64_t)type userID:(id)d;
- (id)deviceStateChangeForCoreDataChanges:(id)changes error:(id *)error;
- (id)deviceStateChangeForLocalDevice;
- (id)downtimeConfigurationForUserID:(id)d;
- (id)handleConfigurationChange:(id)change;
- (id)handleDeviceStateChange:(id)change;
- (id)handleOnDemandDowntimeToggleForUserID:(id)d;
- (id)handleSetupConfiguration:(id)configuration;
- (id)setupConfigurationFromSettingsConfigurationChange:(id)change familyProvider:(id)provider;
- (id)updateDatabaseWithFamilyMembers:(id)members;
@end

@implementation STConcreteCoreDataTransformer

- (id)communicationConfigurationForLocalUser
{
  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v3 = [STConfigurationCoreDataTransformerComponent communicationConfigurationForLocalUserFromPersistentContainer:persistentContainer];

  return v3;
}

- (STConcreteCoreDataTransformer)initWithOrganizationControllerConfigurationAdapter:(id)adapter deviceInformationPrimitives:(id)primitives persistentContainer:(id)container
{
  adapterCopy = adapter;
  primitivesCopy = primitives;
  containerCopy = container;
  v18.receiver = self;
  v18.super_class = STConcreteCoreDataTransformer;
  v11 = [(STConcreteCoreDataTransformer *)&v18 init];
  organizationControllerConfigurationAdapter = v11->_organizationControllerConfigurationAdapter;
  v11->_organizationControllerConfigurationAdapter = adapterCopy;
  v13 = adapterCopy;

  deviceInformationPrimitives = v11->_deviceInformationPrimitives;
  v11->_deviceInformationPrimitives = primitivesCopy;
  v15 = primitivesCopy;

  persistentContainer = v11->_persistentContainer;
  v11->_persistentContainer = containerCopy;

  return v11;
}

- (id)configurationChangeForCoreDataChange:(id)change error:(id *)error
{
  changeCopy = change;
  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v8 = [STConfigurationCoreDataTransformerComponent configurationChangeForCoreDataChange:changeCopy container:persistentContainer error:error];

  return v8;
}

- (id)configurationChangeForRelatedConfigurationChange:(id)change
{
  changeCopy = change;
  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v6 = [STConfigurationCoreDataTransformerComponent configurationChangeForRelatedConfigurationChange:changeCopy container:persistentContainer];

  return v6;
}

- (id)configurationChangesOfType:(int64_t)type userID:(id)d
{
  dCopy = d;
  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v8 = [STConfigurationCoreDataTransformerComponent configurationChangesOfType:type userID:dCopy containter:persistentContainer];

  return v8;
}

- (id)communicationConfigurationForUserID:(id)d
{
  dCopy = d;
  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v6 = [STConfigurationCoreDataTransformerComponent communicationConfigurationForUserID:dCopy container:persistentContainer];

  return v6;
}

- (id)downtimeConfigurationForUserID:(id)d
{
  dCopy = d;
  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v6 = [STConfigurationCoreDataTransformerComponent downtimeConfigurationForUserID:dCopy container:persistentContainer];

  return v6;
}

- (id)setupConfigurationFromSettingsConfigurationChange:(id)change familyProvider:(id)provider
{
  providerCopy = provider;
  changeCopy = change;
  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v9 = [STConfigurationCoreDataTransformerComponent setupConfigurationFromSettingsConfigurationChange:changeCopy familyProvider:providerCopy container:persistentContainer];

  return v9;
}

- (id)handleConfigurationChange:(id)change
{
  changeCopy = change;
  v5 = +[STLog coreDataTransformer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = changeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling configuration change: %@", &v9, 0xCu);
  }

  organizationControllerConfigurationAdapter = [(STConcreteCoreDataTransformer *)self organizationControllerConfigurationAdapter];
  v7 = [organizationControllerConfigurationAdapter handleConfigurationChange:changeCopy];

  return v7;
}

- (id)handleSetupConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = +[STLog coreDataTransformer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling setup configuration: %@", &v9, 0xCu);
  }

  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v7 = [STConfigurationCoreDataTransformerComponent handleSetupConfiguration:configurationCopy persistentContainter:persistentContainer];

  return v7;
}

- (id)handleOnDemandDowntimeToggleForUserID:(id)d
{
  dCopy = d;
  v5 = +[STLog coreDataTransformer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling the on demand downtime toggle for userID: %{public}@", &v9, 0xCu);
  }

  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v7 = [STConfigurationCoreDataTransformerComponent handleOnDemandDowntimeToggleForUserID:dCopy persistentContainer:persistentContainer];

  return v7;
}

- (id)deviceStateChangeForCoreDataChanges:(id)changes error:(id *)error
{
  changesCopy = changes;
  deviceInformationPrimitives = [(STConcreteCoreDataTransformer *)self deviceInformationPrimitives];
  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v9 = [STDeviceStateCoreDataTransformerComponent deviceStateChangeForCoreDataChanges:changesCopy deviceInformationPrimitives:deviceInformationPrimitives container:persistentContainer error:error];

  return v9;
}

- (id)deviceStateChangeForLocalDevice
{
  deviceInformationPrimitives = [(STConcreteCoreDataTransformer *)self deviceInformationPrimitives];
  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v5 = [STDeviceStateCoreDataTransformerComponent deviceStateChangeForLocalDeviceUsingDeviceInformationPrimitives:deviceInformationPrimitives persistentContainer:persistentContainer];

  return v5;
}

- (id)handleDeviceStateChange:(id)change
{
  changeCopy = change;
  deviceInformationPrimitives = [(STConcreteCoreDataTransformer *)self deviceInformationPrimitives];
  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v7 = [STDeviceStateCoreDataTransformerComponent handleDeviceStateChange:changeCopy deviceInformationPrimitives:deviceInformationPrimitives container:persistentContainer];

  return v7;
}

- (id)updateDatabaseWithFamilyMembers:(id)members
{
  membersCopy = members;
  persistentContainer = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v6 = [STFamilyInformationCoreDataTransformerComponent persistFamilyInformationFromFamilyMembers:membersCopy container:persistentContainer];

  return v6;
}

@end