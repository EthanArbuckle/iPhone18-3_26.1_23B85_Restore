@interface STCoreDataDeviceStateStore
- (STCoreDataDeviceStateStore)initWithObserver:(id)a3 transformer:(id)a4 reverseTransformer:(id)a5;
- (STDeviceStateChangeObserverDelegate)delegate;
- (id)readDeviceStateChangeForLocalDevice;
- (id)writeDeviceStateChange:(id)a3;
- (void)observer:(id)a3 didObserveCoreDataChanges:(id)a4;
@end

@implementation STCoreDataDeviceStateStore

- (STCoreDataDeviceStateStore)initWithObserver:(id)a3 transformer:(id)a4 reverseTransformer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = STCoreDataDeviceStateStore;
  v11 = [(STCoreDataDeviceStateStore *)&v21 init];
  transformer = v11->_transformer;
  v11->_transformer = v9;
  v13 = v9;

  reverseTransformer = v11->_reverseTransformer;
  v11->_reverseTransformer = v10;
  v15 = v10;

  observer = v11->_observer;
  v11->_observer = v8;
  v17 = v8;

  v18 = v11->_observer;
  v19 = [(STCoreDataDeviceStateTransformer *)v13 deviceStateObservationFiltersByTriggerPredicate];
  [(STCoreDataObserver *)v18 addObservationFiltersByTriggerPredicate:v19 forDelegate:v11];

  return v11;
}

- (id)readDeviceStateChangeForLocalDevice
{
  v2 = [(STCoreDataDeviceStateStore *)self transformer];
  v3 = [v2 deviceStateChangeForLocalDevice];

  return v3;
}

- (id)writeDeviceStateChange:(id)a3
{
  v4 = a3;
  v5 = [(STCoreDataDeviceStateStore *)self reverseTransformer];
  v6 = [v5 handleDeviceStateChange:v4];

  return v6;
}

- (void)observer:(id)a3 didObserveCoreDataChanges:(id)a4
{
  v5 = a4;
  v6 = [(STCoreDataDeviceStateStore *)self transformer];
  v10 = 0;
  v7 = [v6 deviceStateChangeForCoreDataChanges:v5 error:&v10];
  v8 = v10;

  if (v7)
  {
    v9 = [(STCoreDataDeviceStateStore *)self delegate];
    [v9 changeObserver:self didObserveDeviceStateChange:v7];
  }

  else
  {
    v9 = +[STLog coreDataConfigurationStore];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100113BDC(v5, v8, v9);
    }
  }
}

- (STDeviceStateChangeObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end