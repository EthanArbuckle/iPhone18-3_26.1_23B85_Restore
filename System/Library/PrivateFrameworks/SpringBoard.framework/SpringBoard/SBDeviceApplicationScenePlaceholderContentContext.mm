@interface SBDeviceApplicationScenePlaceholderContentContext
- (SBDeviceApplicationScenePlaceholderContentContext)init;
- (SBDeviceApplicationScenePlaceholderContentContext)initWithActivationSettings:(id)settings;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SBDeviceApplicationScenePlaceholderContentContext

- (SBDeviceApplicationScenePlaceholderContentContext)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationScenePlaceholderContentContext.m" lineNumber:43 description:@"Initializer unavailable; please use -[SBDeviceApplicationScenePlaceholderContentContext initWithDeviceApplicationSceneHandle:activationSettings:] instead."];

  v6.receiver = self;
  v6.super_class = SBDeviceApplicationScenePlaceholderContentContext;
  return [(SBDeviceApplicationScenePlaceholderContentContext *)&v6 init];
}

- (SBDeviceApplicationScenePlaceholderContentContext)initWithActivationSettings:(id)settings
{
  settingsCopy = settings;
  v13.receiver = self;
  v13.super_class = SBDeviceApplicationScenePlaceholderContentContext;
  v6 = [(SBDeviceApplicationScenePlaceholderContentContext *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
    v8 = [(SBActivationSettings *)v7->_settings objectForActivationSetting:5];
    url = v7->_url;
    v7->_url = v8;

    v10 = [(SBActivationSettings *)v7->_settings objectForActivationSetting:17];
    requestedLaunchIdentifier = v7->_requestedLaunchIdentifier;
    v7->_requestedLaunchIdentifier = v10;

    if (v7->_requestedLaunchIdentifier || [(SBActivationSettings *)v7->_settings BOOLForActivationSetting:41]|| [(SBActivationSettings *)v7->_settings BOOLForActivationSetting:53])
    {
      v7->_preferredContentType = 2;
    }

    if ([settingsCopy BOOLForActivationSetting:9])
    {
      v7->_preferredContentType = 1;
    }
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBMutableDeviceApplicationScenePlaceholderContentContext alloc];
  activationSettings = [(SBDeviceApplicationScenePlaceholderContentContext *)self activationSettings];
  v6 = [(SBDeviceApplicationScenePlaceholderContentContext *)v4 initWithActivationSettings:activationSettings];

  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setLayoutEnvironment:[(SBDeviceApplicationScenePlaceholderContentContext *)self layoutEnvironment]];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setPrefersLiveXIB:[(SBDeviceApplicationScenePlaceholderContentContext *)self prefersLiveXIB]];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setPreferredContentType:[(SBDeviceApplicationScenePlaceholderContentContext *)self preferredContentType]];
  v7 = [(SBDeviceApplicationScenePlaceholderContentContext *)self url];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setUrl:v7];

  requestedLaunchIdentifier = [(SBDeviceApplicationScenePlaceholderContentContext *)self requestedLaunchIdentifier];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setRequestedLaunchIdentifier:requestedLaunchIdentifier];

  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setHasOrientationMismatchForClassicApp:[(SBDeviceApplicationScenePlaceholderContentContext *)self hasOrientationMismatchForClassicApp]];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setSizingPolicy:[(SBDeviceApplicationScenePlaceholderContentContext *)self sizingPolicy]];
  return v6;
}

@end