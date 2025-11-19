@interface SBDeviceApplicationScenePlaceholderContentContext
- (SBDeviceApplicationScenePlaceholderContentContext)init;
- (SBDeviceApplicationScenePlaceholderContentContext)initWithActivationSettings:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation SBDeviceApplicationScenePlaceholderContentContext

- (SBDeviceApplicationScenePlaceholderContentContext)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationScenePlaceholderContentContext.m" lineNumber:43 description:@"Initializer unavailable; please use -[SBDeviceApplicationScenePlaceholderContentContext initWithDeviceApplicationSceneHandle:activationSettings:] instead."];

  v6.receiver = self;
  v6.super_class = SBDeviceApplicationScenePlaceholderContentContext;
  return [(SBDeviceApplicationScenePlaceholderContentContext *)&v6 init];
}

- (SBDeviceApplicationScenePlaceholderContentContext)initWithActivationSettings:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SBDeviceApplicationScenePlaceholderContentContext;
  v6 = [(SBDeviceApplicationScenePlaceholderContentContext *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
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

    if ([v5 BOOLForActivationSetting:9])
    {
      v7->_preferredContentType = 1;
    }
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBMutableDeviceApplicationScenePlaceholderContentContext alloc];
  v5 = [(SBDeviceApplicationScenePlaceholderContentContext *)self activationSettings];
  v6 = [(SBDeviceApplicationScenePlaceholderContentContext *)v4 initWithActivationSettings:v5];

  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setLayoutEnvironment:[(SBDeviceApplicationScenePlaceholderContentContext *)self layoutEnvironment]];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setPrefersLiveXIB:[(SBDeviceApplicationScenePlaceholderContentContext *)self prefersLiveXIB]];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setPreferredContentType:[(SBDeviceApplicationScenePlaceholderContentContext *)self preferredContentType]];
  v7 = [(SBDeviceApplicationScenePlaceholderContentContext *)self url];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setUrl:v7];

  v8 = [(SBDeviceApplicationScenePlaceholderContentContext *)self requestedLaunchIdentifier];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setRequestedLaunchIdentifier:v8];

  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setHasOrientationMismatchForClassicApp:[(SBDeviceApplicationScenePlaceholderContentContext *)self hasOrientationMismatchForClassicApp]];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v6 setSizingPolicy:[(SBDeviceApplicationScenePlaceholderContentContext *)self sizingPolicy]];
  return v6;
}

@end