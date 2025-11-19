@interface SBSSKExternalDisplayServiceParticipantSceneClientComponent
- (BOOL)isActive;
- (BOOL)isExtendedDisplayCapable;
- (FBSDisplayConfiguration)displayConfiguration;
- (void)invalidate;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)setScene:(id)a3;
@end

@implementation SBSSKExternalDisplayServiceParticipantSceneClientComponent

- (void)setScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBSSKExternalDisplayServiceParticipantSceneClientComponent;
  [(FBSSceneComponent *)&v5 setScene:a3];
  v4 = [SBApp sskExternalDisplayService];
  [v4 didConnectParticipant:self];
}

- (void)invalidate
{
  v3 = [SBApp sskExternalDisplayService];
  [v3 willDisconnectParticipant:self];

  v4.receiver = self;
  v4.super_class = SBSSKExternalDisplayServiceParticipantSceneClientComponent;
  [(FBSSceneComponent *)&v4 invalidate];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v4 = a4;
  v8 = [v4 previousSettings];
  v5 = [v8 displayConfiguration];
  v6 = [v4 settings];

  v7 = [v6 displayConfiguration];
  [v5 isEqual:v7];
}

- (FBSDisplayConfiguration)displayConfiguration
{
  v2 = [(FBSSceneComponent *)self clientScene];
  v3 = [v2 settings];
  v4 = [v3 displayConfiguration];

  return v4;
}

- (BOOL)isActive
{
  v2 = [(FBSSceneComponent *)self clientScene];
  v3 = [v2 SSKDisplayEndpoint];
  v4 = [v3 hasControlOfDisplay];

  return v4;
}

- (BOOL)isExtendedDisplayCapable
{
  v2 = [(SBSSKExternalDisplayServiceParticipantSceneClientComponent *)self displayConfiguration];
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 externalDisplayDefaults];

  LOBYTE(v3) = [v4 displaySupportsExtendedDisplayMode:v2];
  return v3;
}

@end