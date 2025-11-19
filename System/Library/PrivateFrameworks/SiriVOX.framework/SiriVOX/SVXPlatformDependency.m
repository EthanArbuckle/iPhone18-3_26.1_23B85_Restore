@interface SVXPlatformDependency
- (SVXPlatformDependency)initWithAudioPowerUpdateListener:(id)a3;
- (SVXPlatformDependency)initWithAudioStreamingListener:(id)a3;
- (SVXPlatformDependency)initWithClientAudioSystemService:(id)a3;
- (SVXPlatformDependency)initWithServiceCommandHandler:(id)a3;
- (SVXPlatformDependency)initWithSessionActivityListener:(id)a3;
- (SVXPlatformDependency)initWithSiriModesManager:(id)a3;
- (SVXPlatformDependency)initWithSpeechSynthesisListener:(id)a3;
@end

@implementation SVXPlatformDependency

- (SVXPlatformDependency)initWithClientAudioSystemService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 7;
    objc_storeStrong(&v6->_clientAudioSystemService, a3);
  }

  return v7;
}

- (SVXPlatformDependency)initWithSpeechSynthesisListener:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 6;
    objc_storeStrong(&v6->_speechSynthesisListener, a3);
  }

  return v7;
}

- (SVXPlatformDependency)initWithAudioStreamingListener:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 5;
    objc_storeStrong(&v6->_audioStreamingListener, a3);
  }

  return v7;
}

- (SVXPlatformDependency)initWithSiriModesManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 4;
    objc_storeStrong(&v6->_siriModesManager, a3);
  }

  return v7;
}

- (SVXPlatformDependency)initWithAudioPowerUpdateListener:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 3;
    objc_storeStrong(&v6->_audioPowerUpdateListener, a3);
  }

  return v7;
}

- (SVXPlatformDependency)initWithSessionActivityListener:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_activityListener, a3);
  }

  return v7;
}

- (SVXPlatformDependency)initWithServiceCommandHandler:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXPlatformDependency;
  v6 = [(SVXPlatformDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_serviceCommandHandler, a3);
  }

  return v7;
}

@end