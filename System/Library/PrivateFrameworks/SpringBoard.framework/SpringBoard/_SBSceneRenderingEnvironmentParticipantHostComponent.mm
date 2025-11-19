@interface _SBSceneRenderingEnvironmentParticipantHostComponent
- (void)_setParticipant:(id)a3;
- (void)scene:(id)a3 willUpdateSettings:(id)a4;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)setScene:(id)a3;
@end

@implementation _SBSceneRenderingEnvironmentParticipantHostComponent

- (void)setScene:(id)a3
{
  v11.receiver = self;
  v11.super_class = _SBSceneRenderingEnvironmentParticipantHostComponent;
  v5 = a3;
  [(FBSSceneComponent *)&v11 setScene:v5];
  v6 = [SBApp sceneRenderingEnvironmentManager];
  if (!v6)
  {
    [(_SBSceneRenderingEnvironmentParticipantHostComponent *)a2 setScene:?];
  }

  v7 = [v5 loggingIdentifier];
  v8 = [v5 settings];

  v9 = [v8 displayConfiguration];
  v10 = [v6 registerParticipantForSceneWithIdentifier:v7 displayConfiguration:v9];
  [(_SBSceneRenderingEnvironmentParticipantHostComponent *)self _setParticipant:v10];
}

- (void)scene:(id)a3 willUpdateSettings:(id)a4
{
  v6 = a4;
  v7 = [v6 settings];
  v15 = [v7 displayConfiguration];

  v8 = [v6 previousSettings];

  v9 = [v8 displayConfiguration];

  v10 = v15;
  if (v15 != v9)
  {
    v11 = [SBApp sceneRenderingEnvironmentManager];
    if (!v11)
    {
      [_SBSceneRenderingEnvironmentParticipantHostComponent scene:a2 willUpdateSettings:self];
    }

    v12 = [(FBSSceneComponent *)self hostScene];
    v13 = [v12 loggingIdentifier];
    v14 = [v11 registerParticipantForSceneWithIdentifier:v13 displayConfiguration:v15];
    [(_SBSceneRenderingEnvironmentParticipantHostComponent *)self _setParticipant:v14];

    v10 = v15;
  }
}

- (void)_setParticipant:(id)a3
{
  v5 = a3;
  participant = self->_participant;
  if (participant != v5)
  {
    v10 = v5;
    [(SBSceneRenderingEnvironmentParticipant *)participant invalidate];
    objc_storeStrong(&self->_participant, a3);
    v7 = [(FBSSceneComponent *)self hostScene];
    v8 = [v7 renderingEnvironment];
    v9 = [(SBSceneRenderingEnvironmentParticipant *)v10 renderingEnvironmentIdentifier];
    [v8 setSystemDisplayIdentifier:v9];

    v5 = v10;
  }
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  [(SBSceneRenderingEnvironmentParticipant *)self->_participant invalidate:a3];
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