@interface SBSSKExternalDisplayServiceParticipantSceneClientComponent
- (BOOL)isActive;
- (BOOL)isExtendedDisplayCapable;
- (FBSDisplayConfiguration)displayConfiguration;
- (void)invalidate;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)setScene:(id)scene;
@end

@implementation SBSSKExternalDisplayServiceParticipantSceneClientComponent

- (void)setScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = SBSSKExternalDisplayServiceParticipantSceneClientComponent;
  [(FBSSceneComponent *)&v5 setScene:scene];
  sskExternalDisplayService = [SBApp sskExternalDisplayService];
  [sskExternalDisplayService didConnectParticipant:self];
}

- (void)invalidate
{
  sskExternalDisplayService = [SBApp sskExternalDisplayService];
  [sskExternalDisplayService willDisconnectParticipant:self];

  v4.receiver = self;
  v4.super_class = SBSSKExternalDisplayServiceParticipantSceneClientComponent;
  [(FBSSceneComponent *)&v4 invalidate];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  previousSettings = [settingsCopy previousSettings];
  displayConfiguration = [previousSettings displayConfiguration];
  settings = [settingsCopy settings];

  displayConfiguration2 = [settings displayConfiguration];
  [displayConfiguration isEqual:displayConfiguration2];
}

- (FBSDisplayConfiguration)displayConfiguration
{
  clientScene = [(FBSSceneComponent *)self clientScene];
  settings = [clientScene settings];
  displayConfiguration = [settings displayConfiguration];

  return displayConfiguration;
}

- (BOOL)isActive
{
  clientScene = [(FBSSceneComponent *)self clientScene];
  sSKDisplayEndpoint = [clientScene SSKDisplayEndpoint];
  hasControlOfDisplay = [sSKDisplayEndpoint hasControlOfDisplay];

  return hasControlOfDisplay;
}

- (BOOL)isExtendedDisplayCapable
{
  displayConfiguration = [(SBSSKExternalDisplayServiceParticipantSceneClientComponent *)self displayConfiguration];
  v3 = +[SBDefaults localDefaults];
  externalDisplayDefaults = [v3 externalDisplayDefaults];

  LOBYTE(v3) = [externalDisplayDefaults displaySupportsExtendedDisplayMode:displayConfiguration];
  return v3;
}

@end