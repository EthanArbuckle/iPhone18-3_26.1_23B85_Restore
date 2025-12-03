@interface STCoreDataDeviceStateStore
- (STCoreDataDeviceStateStore)initWithObserver:(id)observer transformer:(id)transformer reverseTransformer:(id)reverseTransformer;
- (STDeviceStateChangeObserverDelegate)delegate;
- (id)readDeviceStateChangeForLocalDevice;
- (id)writeDeviceStateChange:(id)change;
- (void)observer:(id)observer didObserveCoreDataChanges:(id)changes;
@end

@implementation STCoreDataDeviceStateStore

- (STCoreDataDeviceStateStore)initWithObserver:(id)observer transformer:(id)transformer reverseTransformer:(id)reverseTransformer
{
  observerCopy = observer;
  transformerCopy = transformer;
  reverseTransformerCopy = reverseTransformer;
  v21.receiver = self;
  v21.super_class = STCoreDataDeviceStateStore;
  v11 = [(STCoreDataDeviceStateStore *)&v21 init];
  transformer = v11->_transformer;
  v11->_transformer = transformerCopy;
  v13 = transformerCopy;

  reverseTransformer = v11->_reverseTransformer;
  v11->_reverseTransformer = reverseTransformerCopy;
  v15 = reverseTransformerCopy;

  observer = v11->_observer;
  v11->_observer = observerCopy;
  v17 = observerCopy;

  v18 = v11->_observer;
  deviceStateObservationFiltersByTriggerPredicate = [(STCoreDataDeviceStateTransformer *)v13 deviceStateObservationFiltersByTriggerPredicate];
  [(STCoreDataObserver *)v18 addObservationFiltersByTriggerPredicate:deviceStateObservationFiltersByTriggerPredicate forDelegate:v11];

  return v11;
}

- (id)readDeviceStateChangeForLocalDevice
{
  transformer = [(STCoreDataDeviceStateStore *)self transformer];
  deviceStateChangeForLocalDevice = [transformer deviceStateChangeForLocalDevice];

  return deviceStateChangeForLocalDevice;
}

- (id)writeDeviceStateChange:(id)change
{
  changeCopy = change;
  reverseTransformer = [(STCoreDataDeviceStateStore *)self reverseTransformer];
  v6 = [reverseTransformer handleDeviceStateChange:changeCopy];

  return v6;
}

- (void)observer:(id)observer didObserveCoreDataChanges:(id)changes
{
  changesCopy = changes;
  transformer = [(STCoreDataDeviceStateStore *)self transformer];
  v10 = 0;
  v7 = [transformer deviceStateChangeForCoreDataChanges:changesCopy error:&v10];
  v8 = v10;

  if (v7)
  {
    delegate = [(STCoreDataDeviceStateStore *)self delegate];
    [delegate changeObserver:self didObserveDeviceStateChange:v7];
  }

  else
  {
    delegate = +[STLog coreDataConfigurationStore];
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      sub_100113BDC(changesCopy, v8, delegate);
    }
  }
}

- (STDeviceStateChangeObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end