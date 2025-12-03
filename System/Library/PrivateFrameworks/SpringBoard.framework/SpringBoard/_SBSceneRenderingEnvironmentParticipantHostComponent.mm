@interface _SBSceneRenderingEnvironmentParticipantHostComponent
- (void)_setParticipant:(id)participant;
- (void)scene:(id)scene willUpdateSettings:(id)settings;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setScene:(id)scene;
@end

@implementation _SBSceneRenderingEnvironmentParticipantHostComponent

- (void)setScene:(id)scene
{
  v11.receiver = self;
  v11.super_class = _SBSceneRenderingEnvironmentParticipantHostComponent;
  sceneCopy = scene;
  [(FBSSceneComponent *)&v11 setScene:sceneCopy];
  sceneRenderingEnvironmentManager = [SBApp sceneRenderingEnvironmentManager];
  if (!sceneRenderingEnvironmentManager)
  {
    [(_SBSceneRenderingEnvironmentParticipantHostComponent *)a2 setScene:?];
  }

  loggingIdentifier = [sceneCopy loggingIdentifier];
  settings = [sceneCopy settings];

  displayConfiguration = [settings displayConfiguration];
  v10 = [sceneRenderingEnvironmentManager registerParticipantForSceneWithIdentifier:loggingIdentifier displayConfiguration:displayConfiguration];
  [(_SBSceneRenderingEnvironmentParticipantHostComponent *)self _setParticipant:v10];
}

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  settingsCopy = settings;
  settings = [settingsCopy settings];
  displayConfiguration = [settings displayConfiguration];

  previousSettings = [settingsCopy previousSettings];

  displayConfiguration2 = [previousSettings displayConfiguration];

  v10 = displayConfiguration;
  if (displayConfiguration != displayConfiguration2)
  {
    sceneRenderingEnvironmentManager = [SBApp sceneRenderingEnvironmentManager];
    if (!sceneRenderingEnvironmentManager)
    {
      [_SBSceneRenderingEnvironmentParticipantHostComponent scene:a2 willUpdateSettings:self];
    }

    hostScene = [(FBSSceneComponent *)self hostScene];
    loggingIdentifier = [hostScene loggingIdentifier];
    v14 = [sceneRenderingEnvironmentManager registerParticipantForSceneWithIdentifier:loggingIdentifier displayConfiguration:displayConfiguration];
    [(_SBSceneRenderingEnvironmentParticipantHostComponent *)self _setParticipant:v14];

    v10 = displayConfiguration;
  }
}

- (void)_setParticipant:(id)participant
{
  participantCopy = participant;
  participant = self->_participant;
  if (participant != participantCopy)
  {
    v10 = participantCopy;
    [(SBSceneRenderingEnvironmentParticipant *)participant invalidate];
    objc_storeStrong(&self->_participant, participant);
    hostScene = [(FBSSceneComponent *)self hostScene];
    renderingEnvironment = [hostScene renderingEnvironment];
    renderingEnvironmentIdentifier = [(SBSceneRenderingEnvironmentParticipant *)v10 renderingEnvironmentIdentifier];
    [renderingEnvironment setSystemDisplayIdentifier:renderingEnvironmentIdentifier];

    participantCopy = v10;
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  [(SBSceneRenderingEnvironmentParticipant *)self->_participant invalidate:invalidate];
  participant = self->_participant;
  self->_participant = 0;
}

- (void)setScene:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneRenderingEnvironmentParticipantSceneExtension.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"manager"}];
}

- (void)scene:(uint64_t)a1 willUpdateSettings:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneRenderingEnvironmentParticipantSceneExtension.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"manager"}];
}

@end