@interface REBluetoothDeviceRelevanceProviderManager
+ (id)_features;
- (REBluetoothDeviceRelevanceProviderManager)initWithQueue:(id)a3;
- (id)_valueForProvider:(id)a3 feature:(id)a4;
- (void)_prepareForUpdate;
- (void)pause;
- (void)predictorDidUpdate:(id)a3;
- (void)resume;
@end

@implementation REBluetoothDeviceRelevanceProviderManager

- (REBluetoothDeviceRelevanceProviderManager)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = REBluetoothDeviceRelevanceProviderManager;
  result = [(RERelevanceProviderManager *)&v4 initWithQueue:a3];
  if (result)
  {
    result->_connectedToSpeaker = 0;
    result->_connectedToCar = 0;
  }

  return result;
}

+ (id)_features
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature bluetoothDeviceFeature];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_valueForProvider:(id)a3 feature:(id)a4
{
  v5 = a3;
  if ([v5 connectedToSpeaker] && self->_connectedToSpeaker)
  {
    connectedToCar = 1;
  }

  else if ([v5 connectedToCar])
  {
    connectedToCar = self->_connectedToCar;
  }

  else
  {
    connectedToCar = 0;
  }

  v7 = [REFeatureValue featureValueWithBool:connectedToCar];

  return v7;
}

- (void)resume
{
  v3 = +[(RESingleton *)REBluetoothPredictor];
  [v3 addObserver:self];
}

- (void)pause
{
  v3 = +[(RESingleton *)REBluetoothPredictor];
  [v3 removeObserver:self];
}

- (void)_prepareForUpdate
{
  v3 = +[(RESingleton *)REBluetoothPredictor];
  self->_connectedToCar = [v3 connectedToCar];

  v4 = +[(RESingleton *)REBluetoothPredictor];
  self->_connectedToSpeaker = [v4 connectedToSpeaker];
}

- (void)predictorDidUpdate:(id)a3
{
  v4 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v4];
}

@end