@interface SVXPlatformDependency
- (SVXPlatformDependency)initWithAudioPowerUpdateListener:(id)listener;
- (SVXPlatformDependency)initWithAudioStreamingListener:(id)listener;
- (SVXPlatformDependency)initWithClientAudioSystemService:(id)service;
- (SVXPlatformDependency)initWithServiceCommandHandler:(id)handler;
- (SVXPlatformDependency)initWithSessionActivityListener:(id)listener;
- (SVXPlatformDependency)initWithSiriModesManager:(id)manager;
- (SVXPlatformDependency)initWithSpeechSynthesisListener:(id)listener;
@end

@implementation SVXPlatformDependency

- (SVXPlatformDependency)initWithClientAudioSystemService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 7;
    objc_storeStrong(&v6->_clientAudioSystemService, service);
  }

  return v7;
}

- (SVXPlatformDependency)initWithSpeechSynthesisListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 6;
    objc_storeStrong(&v6->_speechSynthesisListener, listener);
  }

  return v7;
}

- (SVXPlatformDependency)initWithAudioStreamingListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 5;
    objc_storeStrong(&v6->_audioStreamingListener, listener);
  }

  return v7;
}

- (SVXPlatformDependency)initWithSiriModesManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 4;
    objc_storeStrong(&v6->_siriModesManager, manager);
  }

  return v7;
}

- (SVXPlatformDependency)initWithAudioPowerUpdateListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 3;
    objc_storeStrong(&v6->_audioPowerUpdateListener, listener);
  }

  return v7;
}

- (SVXPlatformDependency)initWithSessionActivityListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_activityListener, listener);
  }

  return v7;
}

- (SVXPlatformDependency)initWithServiceCommandHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_serviceCommandHandler, handler);
  }

  return v7;
}

@end