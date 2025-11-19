@interface STConcreteCoreDataTransformer
- (STConcreteCoreDataTransformer)initWithOrganizationControllerConfigurationAdapter:(id)a3 deviceInformationPrimitives:(id)a4 persistentContainer:(id)a5;
- (id)communicationConfigurationForLocalUser;
- (id)communicationConfigurationForUserID:(id)a3;
- (id)configurationChangeForCoreDataChange:(id)a3 error:(id *)a4;
- (id)configurationChangeForRelatedConfigurationChange:(id)a3;
- (id)configurationChangesOfType:(int64_t)a3 userID:(id)a4;
- (id)deviceStateChangeForCoreDataChanges:(id)a3 error:(id *)a4;
- (id)deviceStateChangeForLocalDevice;
- (id)downtimeConfigurationForUserID:(id)a3;
- (id)handleConfigurationChange:(id)a3;
- (id)handleDeviceStateChange:(id)a3;
- (id)handleOnDemandDowntimeToggleForUserID:(id)a3;
- (id)handleSetupConfiguration:(id)a3;
- (id)setupConfigurationFromSettingsConfigurationChange:(id)a3 familyProvider:(id)a4;
- (id)updateDatabaseWithFamilyMembers:(id)a3;
@end

@implementation STConcreteCoreDataTransformer

- (id)communicationConfigurationForLocalUser
{
  v2 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v3 = [STConfigurationCoreDataTransformerComponent communicationConfigurationForLocalUserFromPersistentContainer:v2];

  return v3;
}

- (STConcreteCoreDataTransformer)initWithOrganizationControllerConfigurationAdapter:(id)a3 deviceInformationPrimitives:(id)a4 persistentContainer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = STConcreteCoreDataTransformer;
  v11 = [(STConcreteCoreDataTransformer *)&v18 init];
  organizationControllerConfigurationAdapter = v11->_organizationControllerConfigurationAdapter;
  v11->_organizationControllerConfigurationAdapter = v8;
  v13 = v8;

  deviceInformationPrimitives = v11->_deviceInformationPrimitives;
  v11->_deviceInformationPrimitives = v9;
  v15 = v9;

  persistentContainer = v11->_persistentContainer;
  v11->_persistentContainer = v10;

  return v11;
}

- (id)configurationChangeForCoreDataChange:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v8 = [STConfigurationCoreDataTransformerComponent configurationChangeForCoreDataChange:v6 container:v7 error:a4];

  return v8;
}

- (id)configurationChangeForRelatedConfigurationChange:(id)a3
{
  v4 = a3;
  v5 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v6 = [STConfigurationCoreDataTransformerComponent configurationChangeForRelatedConfigurationChange:v4 container:v5];

  return v6;
}

- (id)configurationChangesOfType:(int64_t)a3 userID:(id)a4
{
  v6 = a4;
  v7 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v8 = [STConfigurationCoreDataTransformerComponent configurationChangesOfType:a3 userID:v6 containter:v7];

  return v8;
}

- (id)communicationConfigurationForUserID:(id)a3
{
  v4 = a3;
  v5 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v6 = [STConfigurationCoreDataTransformerComponent communicationConfigurationForUserID:v4 container:v5];

  return v6;
}

- (id)downtimeConfigurationForUserID:(id)a3
{
  v4 = a3;
  v5 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v6 = [STConfigurationCoreDataTransformerComponent downtimeConfigurationForUserID:v4 container:v5];

  return v6;
}

- (id)setupConfigurationFromSettingsConfigurationChange:(id)a3 familyProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v9 = [STConfigurationCoreDataTransformerComponent setupConfigurationFromSettingsConfigurationChange:v7 familyProvider:v6 container:v8];

  return v9;
}

- (id)handleConfigurationChange:(id)a3
{
  v4 = a3;
  v5 = +[STLog coreDataTransformer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling configuration change: %@", &v9, 0xCu);
  }

  v6 = [(STConcreteCoreDataTransformer *)self organizationControllerConfigurationAdapter];
  v7 = [v6 handleConfigurationChange:v4];

  return v7;
}

- (id)handleSetupConfiguration:(id)a3
{
  v4 = a3;
  v5 = +[STLog coreDataTransformer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling setup configuration: %@", &v9, 0xCu);
  }

  v6 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v7 = [STConfigurationCoreDataTransformerComponent handleSetupConfiguration:v4 persistentContainter:v6];

  return v7;
}

- (id)handleOnDemandDowntimeToggleForUserID:(id)a3
{
  v4 = a3;
  v5 = +[STLog coreDataTransformer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling the on demand downtime toggle for userID: %{public}@", &v9, 0xCu);
  }

  v6 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v7 = [STConfigurationCoreDataTransformerComponent handleOnDemandDowntimeToggleForUserID:v4 persistentContainer:v6];

  return v7;
}

- (id)deviceStateChangeForCoreDataChanges:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(STConcreteCoreDataTransformer *)self deviceInformationPrimitives];
  v8 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v9 = [STDeviceStateCoreDataTransformerComponent deviceStateChangeForCoreDataChanges:v6 deviceInformationPrimitives:v7 container:v8 error:a4];

  return v9;
}

- (id)deviceStateChangeForLocalDevice
{
  v3 = [(STConcreteCoreDataTransformer *)self deviceInformationPrimitives];
  v4 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v5 = [STDeviceStateCoreDataTransformerComponent deviceStateChangeForLocalDeviceUsingDeviceInformationPrimitives:v3 persistentContainer:v4];

  return v5;
}

- (id)handleDeviceStateChange:(id)a3
{
  v4 = a3;
  v5 = [(STConcreteCoreDataTransformer *)self deviceInformationPrimitives];
  v6 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v7 = [STDeviceStateCoreDataTransformerComponent handleDeviceStateChange:v4 deviceInformationPrimitives:v5 container:v6];

  return v7;
}

- (id)updateDatabaseWithFamilyMembers:(id)a3
{
  v4 = a3;
  v5 = [(STConcreteCoreDataTransformer *)self persistentContainer];
  v6 = [STFamilyInformationCoreDataTransformerComponent persistFamilyInformationFromFamilyMembers:v4 container:v5];

  return v6;
}

@end